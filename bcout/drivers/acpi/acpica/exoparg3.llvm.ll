; ModuleID = '../bcout/drivers/acpi/acpica/exoparg3.llvm.bc'
source_filename = "drivers/acpi/acpica/exoparg3.c"
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
%struct.acpi_signal_fatal_info = type { i32, i32, i32 }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_string = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32 }
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }

@_acpi_module_name = internal constant [9 x i8] c"exoparg3\00", align 1, !dbg !0
@.str = private unnamed_addr constant [21 x i8] c"Executed External Op\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Unknown AML opcode 0x%X\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_opcode_3A_0T_0R(%struct.acpi_walk_state* %walk_state) #0 !dbg !40 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %operand = alloca %union.acpi_operand_object**, align 8
  %fatal = alloca %struct.acpi_signal_fatal_info*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !803, metadata !DIExpression()), !dbg !804
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %operand, metadata !805, metadata !DIExpression()), !dbg !806
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !807
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 28, !dbg !808
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !807
  store %union.acpi_operand_object** %arrayidx, %union.acpi_operand_object*** %operand, align 8, !dbg !806
  call void @llvm.dbg.declare(metadata %struct.acpi_signal_fatal_info** %fatal, metadata !809, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.declare(metadata i32* %status, metadata !818, metadata !DIExpression()), !dbg !819
  store i32 0, i32* %status, align 4, !dbg !819
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !820
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %1, i32 0, i32 3, !dbg !821
  %2 = load i16, i16* %opcode, align 2, !dbg !821
  %conv = zext i16 %2 to i32, !dbg !820
  switch i32 %conv, label %sw.default [
    i32 23346, label %sw.bb
    i32 21, label %sw.bb12
  ], !dbg !822

sw.bb:                                            ; preds = %entry
  %call = call i8* @acpi_os_allocate(i64 12) #9, !dbg !823
  %3 = bitcast i8* %call to %struct.acpi_signal_fatal_info*, !dbg !823
  store %struct.acpi_signal_fatal_info* %3, %struct.acpi_signal_fatal_info** %fatal, align 8, !dbg !825
  %4 = load %struct.acpi_signal_fatal_info*, %struct.acpi_signal_fatal_info** %fatal, align 8, !dbg !826
  %tobool = icmp ne %struct.acpi_signal_fatal_info* %4, null, !dbg !826
  br i1 %tobool, label %if.then, label %if.end, !dbg !828

if.then:                                          ; preds = %sw.bb
  %5 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !829
  %arrayidx1 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %5, i64 0, !dbg !829
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx1, align 8, !dbg !829
  %integer = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_integer*, !dbg !831
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !832
  %7 = load i64, i64* %value, align 8, !dbg !832
  %conv2 = trunc i64 %7 to i32, !dbg !833
  %8 = load %struct.acpi_signal_fatal_info*, %struct.acpi_signal_fatal_info** %fatal, align 8, !dbg !834
  %type = getelementptr inbounds %struct.acpi_signal_fatal_info, %struct.acpi_signal_fatal_info* %8, i32 0, i32 0, !dbg !835
  store i32 %conv2, i32* %type, align 4, !dbg !836
  %9 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !837
  %arrayidx3 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %9, i64 1, !dbg !837
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx3, align 8, !dbg !837
  %integer4 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_integer*, !dbg !838
  %value5 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer4, i32 0, i32 6, !dbg !839
  %11 = load i64, i64* %value5, align 8, !dbg !839
  %conv6 = trunc i64 %11 to i32, !dbg !840
  %12 = load %struct.acpi_signal_fatal_info*, %struct.acpi_signal_fatal_info** %fatal, align 8, !dbg !841
  %code = getelementptr inbounds %struct.acpi_signal_fatal_info, %struct.acpi_signal_fatal_info* %12, i32 0, i32 1, !dbg !842
  store i32 %conv6, i32* %code, align 4, !dbg !843
  %13 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !844
  %arrayidx7 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %13, i64 2, !dbg !844
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx7, align 8, !dbg !844
  %integer8 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_integer*, !dbg !845
  %value9 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer8, i32 0, i32 6, !dbg !846
  %15 = load i64, i64* %value9, align 8, !dbg !846
  %conv10 = trunc i64 %15 to i32, !dbg !847
  %16 = load %struct.acpi_signal_fatal_info*, %struct.acpi_signal_fatal_info** %fatal, align 8, !dbg !848
  %argument = getelementptr inbounds %struct.acpi_signal_fatal_info, %struct.acpi_signal_fatal_info* %16, i32 0, i32 2, !dbg !849
  store i32 %conv10, i32* %argument, align 4, !dbg !850
  br label %if.end, !dbg !851

if.end:                                           ; preds = %if.then, %sw.bb
  %17 = load %struct.acpi_signal_fatal_info*, %struct.acpi_signal_fatal_info** %fatal, align 8, !dbg !852
  %18 = bitcast %struct.acpi_signal_fatal_info* %17 to i8*, !dbg !852
  %call11 = call i32 @acpi_os_signal(i32 0, i8* %18) #9, !dbg !853
  store i32 %call11, i32* %status, align 4, !dbg !854
  %19 = load %struct.acpi_signal_fatal_info*, %struct.acpi_signal_fatal_info** %fatal, align 8, !dbg !855
  %20 = bitcast %struct.acpi_signal_fatal_info* %19 to i8*, !dbg !855
  call void @acpi_os_free(i8* %20) #9, !dbg !855
  br label %cleanup, !dbg !856

sw.bb12:                                          ; preds = %entry
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0)) #9, !dbg !857
  store i32 0, i32* %status, align 4, !dbg !858
  br label %cleanup, !dbg !859

sw.default:                                       ; preds = %entry
  %21 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !860
  %opcode13 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %21, i32 0, i32 3, !dbg !860
  %22 = load i16, i16* %opcode13, align 2, !dbg !860
  %conv14 = zext i16 %22 to i32, !dbg !860
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %conv14) #9, !dbg !860
  store i32 12289, i32* %status, align 4, !dbg !861
  br label %cleanup, !dbg !862

cleanup:                                          ; preds = %sw.default, %sw.bb12, %if.end
  call void @llvm.dbg.label(metadata !863), !dbg !864
  %23 = load i32, i32* %status, align 4, !dbg !865
  ret i32 %23, !dbg !865
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate(i64 %size) #0 !dbg !866 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !870, metadata !DIExpression()), !dbg !881
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !889, metadata !DIExpression()), !dbg !890
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !891, metadata !DIExpression()), !dbg !892
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !893, metadata !DIExpression()), !dbg !894
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !895, metadata !DIExpression()), !dbg !899
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !901, metadata !DIExpression()), !dbg !905
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !907, metadata !DIExpression()), !dbg !911
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !916, metadata !DIExpression()), !dbg !917
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !918, metadata !DIExpression()), !dbg !919
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !920, metadata !DIExpression()), !dbg !921
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !922, metadata !DIExpression()), !dbg !923
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !924, metadata !DIExpression()), !dbg !925
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !926, metadata !DIExpression()), !dbg !927
  %flags.addr.i11 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i11, metadata !928, metadata !DIExpression()), !dbg !929
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !930, metadata !DIExpression()), !dbg !931
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !932, metadata !DIExpression()), !dbg !938
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !942, metadata !DIExpression()), !dbg !943
  %0 = load i64, i64* %size.addr, align 8, !dbg !944
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !945, metadata !DIExpression()), !dbg !946
  br label %do.body, !dbg !946

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !947, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !951, metadata !DIExpression()), !dbg !950
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !950
  %conv = zext i1 %cmp to i32, !dbg !950
  store i32 1, i32* %tmp, align 4, !dbg !950
  %1 = load i32, i32* %tmp, align 4, !dbg !950
  %call = call i64 @arch_local_save_flags() #9, !dbg !952
  store i64 %call, i64* %_flags, align 8, !dbg !952
  br label %do.end, !dbg !952

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !953, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !956, metadata !DIExpression()), !dbg !955
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !955
  %conv6 = zext i1 %cmp5 to i32, !dbg !955
  store i32 1, i32* %tmp7, align 4, !dbg !955
  %2 = load i32, i32* %tmp7, align 4, !dbg !955
  %3 = load i64, i64* %_flags, align 8, !dbg !957
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !958
  %and.i = and i64 %4, 512, !dbg !959
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !960
  %lnot.i = xor i1 %tobool.i, true, !dbg !960
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !960
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !957
  %5 = load i32, i32* %tmp8, align 4, !dbg !957
  store i32 %5, i32* %tmp1, align 4, !dbg !952
  %6 = load i32, i32* %tmp1, align 4, !dbg !946
  %tobool = icmp ne i32 %6, 0, !dbg !961
  %7 = zext i1 %tobool to i64, !dbg !961
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !961
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %cond, i32* %flags.addr.i11, align 4
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !962
  %9 = call i1 @llvm.is.constant.i64(i64 %8) #8, !dbg !963
  br i1 %9, label %if.then.i, label %if.end9.i, !dbg !964

if.then.i:                                        ; preds = %do.end
  %10 = load i64, i64* %size.addr.i, align 8, !dbg !965
  %cmp.i = icmp ugt i64 %10, 8192, !dbg !966
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !967

if.then1.i:                                       ; preds = %if.then.i
  %11 = load i64, i64* %size.addr.i, align 8, !dbg !968
  %12 = load i32, i32* %flags.addr.i11, align 4, !dbg !969
  store i64 %11, i64* %size.addr.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i, align 4
  %13 = load i64, i64* %size.addr.i.i, align 8, !dbg !970
  %call.i.i = call i32 @get_order(i64 %13) #10, !dbg !971
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !925
  %14 = load i64, i64* %size.addr.i.i, align 8, !dbg !972
  %15 = load i32, i32* %flags.addr.i.i, align 4, !dbg !973
  %16 = load i32, i32* %order.i.i, align 4, !dbg !974
  store i64 %14, i64* %size.addr.i.i.i, align 8
  store i32 %15, i32* %flags.addr.i.i.i, align 4
  store i32 %16, i32* %order.addr.i.i.i, align 4
  %17 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !975
  %18 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !976
  %19 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !977
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %17, i32 %18, i32 %19) #11, !dbg !978
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !978
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !978
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !978
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !978
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !979
  br label %kmalloc.exit, !dbg !979

if.end.i:                                         ; preds = %if.then.i
  %20 = load i64, i64* %size.addr.i, align 8, !dbg !980
  store i64 %20, i64* %size.addr.i11.i, align 8
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !981
  %tobool.i.i = icmp ne i64 %21, 0, !dbg !981
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !983

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !984
  br label %kmalloc_index.exit.i, !dbg !984

if.end.i.i:                                       ; preds = %if.end.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !985
  %cmp.i.i = icmp ule i64 %22, 8, !dbg !987
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !988

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !989
  br label %kmalloc_index.exit.i, !dbg !989

if.end2.i.i:                                      ; preds = %if.end.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !990
  %cmp3.i.i = icmp ugt i64 %23, 64, !dbg !992
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !993

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !994
  %cmp4.i.i = icmp ule i64 %24, 96, !dbg !995
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !996

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !997
  br label %kmalloc_index.exit.i, !dbg !997

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !998
  %cmp7.i.i = icmp ugt i64 %25, 128, !dbg !1000
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1001

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1002
  %cmp9.i.i = icmp ule i64 %26, 192, !dbg !1003
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1004

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1005
  br label %kmalloc_index.exit.i, !dbg !1005

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1006
  %cmp12.i.i = icmp ule i64 %27, 8, !dbg !1008
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1009

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1010
  br label %kmalloc_index.exit.i, !dbg !1010

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1011
  %cmp15.i.i = icmp ule i64 %28, 16, !dbg !1013
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1014

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1015
  br label %kmalloc_index.exit.i, !dbg !1015

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1016
  %cmp18.i.i = icmp ule i64 %29, 32, !dbg !1018
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1019

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1020
  br label %kmalloc_index.exit.i, !dbg !1020

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1021
  %cmp21.i.i = icmp ule i64 %30, 64, !dbg !1023
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1024

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1025
  br label %kmalloc_index.exit.i, !dbg !1025

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1026
  %cmp24.i.i = icmp ule i64 %31, 128, !dbg !1028
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1029

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1030
  br label %kmalloc_index.exit.i, !dbg !1030

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1031
  %cmp27.i.i = icmp ule i64 %32, 256, !dbg !1033
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1034

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1035
  br label %kmalloc_index.exit.i, !dbg !1035

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1036
  %cmp30.i.i = icmp ule i64 %33, 512, !dbg !1038
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1039

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1040
  br label %kmalloc_index.exit.i, !dbg !1040

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1041
  %cmp33.i.i = icmp ule i64 %34, 1024, !dbg !1043
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1044

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1045
  br label %kmalloc_index.exit.i, !dbg !1045

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1046
  %cmp36.i.i = icmp ule i64 %35, 2048, !dbg !1048
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1049

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1050
  br label %kmalloc_index.exit.i, !dbg !1050

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1051
  %cmp39.i.i = icmp ule i64 %36, 4096, !dbg !1053
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1054

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1055
  br label %kmalloc_index.exit.i, !dbg !1055

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1056
  %cmp42.i.i = icmp ule i64 %37, 8192, !dbg !1058
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1059

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1060
  br label %kmalloc_index.exit.i, !dbg !1060

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1061
  %cmp45.i.i = icmp ule i64 %38, 16384, !dbg !1063
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1064

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1065
  br label %kmalloc_index.exit.i, !dbg !1065

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1066
  %cmp48.i.i = icmp ule i64 %39, 32768, !dbg !1068
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1069

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1070
  br label %kmalloc_index.exit.i, !dbg !1070

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1071
  %cmp51.i.i = icmp ule i64 %40, 65536, !dbg !1073
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1074

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1075
  br label %kmalloc_index.exit.i, !dbg !1075

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1076
  %cmp54.i.i = icmp ule i64 %41, 131072, !dbg !1078
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1079

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1080
  br label %kmalloc_index.exit.i, !dbg !1080

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1081
  %cmp57.i.i = icmp ule i64 %42, 262144, !dbg !1083
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1084

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1085
  br label %kmalloc_index.exit.i, !dbg !1085

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1086
  %cmp60.i.i = icmp ule i64 %43, 524288, !dbg !1088
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1089

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1090
  br label %kmalloc_index.exit.i, !dbg !1090

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1091
  %cmp63.i.i = icmp ule i64 %44, 1048576, !dbg !1093
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1094

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1095
  br label %kmalloc_index.exit.i, !dbg !1095

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1096
  %cmp66.i.i = icmp ule i64 %45, 2097152, !dbg !1098
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1099

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1100
  br label %kmalloc_index.exit.i, !dbg !1100

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1101
  %cmp69.i.i = icmp ule i64 %46, 4194304, !dbg !1103
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1104

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1105
  br label %kmalloc_index.exit.i, !dbg !1105

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1106
  %cmp72.i.i = icmp ule i64 %47, 8388608, !dbg !1108
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1109

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1110
  br label %kmalloc_index.exit.i, !dbg !1110

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1111
  %cmp75.i.i = icmp ule i64 %48, 16777216, !dbg !1113
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1114

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1115
  br label %kmalloc_index.exit.i, !dbg !1115

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1116
  %cmp78.i.i = icmp ule i64 %49, 33554432, !dbg !1118
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1119

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1120
  br label %kmalloc_index.exit.i, !dbg !1120

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1121
  %cmp81.i.i = icmp ule i64 %50, 67108864, !dbg !1123
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1124

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1125
  br label %kmalloc_index.exit.i, !dbg !1125

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !1126, !srcloc !1129
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #8, !dbg !1130, !srcloc !1133
  unreachable, !dbg !1134

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %51 = load i32, i32* %retval.i.i, align 4, !dbg !1135
  store i32 %51, i32* %index.i, align 4, !dbg !1136
  %52 = load i32, i32* %index.i, align 4, !dbg !1137
  %tobool.i12 = icmp ne i32 %52, 0, !dbg !1137
  br i1 %tobool.i12, label %if.end4.i, label %if.then3.i, !dbg !1139

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1140
  br label %kmalloc.exit, !dbg !1140

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %53 = load i32, i32* %flags.addr.i11, align 4, !dbg !1141
  store i32 %53, i32* %flags.addr.i13.i, align 4
  %54 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1142
  %and.i.i = and i32 %54, 17, !dbg !1142
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1142
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1142
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1142
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1142
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1144

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1145
  br label %kmalloc_type.exit.i, !dbg !1145

if.end.i16.i:                                     ; preds = %if.end4.i
  %55 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1146
  %and2.i.i = and i32 %55, 1, !dbg !1147
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1146
  %56 = zext i1 %tobool3.i.i to i64, !dbg !1146
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1146
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1148
  br label %kmalloc_type.exit.i, !dbg !1148

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %57 = load i32, i32* %retval.i12.i, align 4, !dbg !1149
  %idxprom.i = zext i32 %57 to i64, !dbg !1150
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1150
  %58 = load i32, i32* %index.i, align 4, !dbg !1151
  %idxprom6.i = zext i32 %58 to i64, !dbg !1150
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1150
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1150
  %60 = load i32, i32* %flags.addr.i11, align 4, !dbg !1152
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !1153
  store %struct.kmem_cache* %59, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %60, i32* %flags.addr.i17.i, align 4
  store i64 %61, i64* %size.addr.i18.i, align 8
  %62 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1154
  %63 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1155
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %62, i32 %63) #11, !dbg !1156
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1156
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1156
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1156
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !1156
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !894
  %64 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1157
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !1158
  %66 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1159
  %67 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1160
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %64, i8* %65, i64 %66, i32 %67) #11, !dbg !1161
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1162
  %68 = load i8*, i8** %ret.i.i, align 8, !dbg !1163
  store i8* %68, i8** %retval.i, align 8, !dbg !1164
  br label %kmalloc.exit, !dbg !1164

if.end9.i:                                        ; preds = %do.end
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !1165
  %70 = load i32, i32* %flags.addr.i11, align 4, !dbg !1166
  %call10.i = call noalias i8* @__kmalloc(i64 %69, i32 %70) #11, !dbg !1167
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1167
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1167
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1167
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !1167
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1168
  br label %kmalloc.exit, !dbg !1168

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %71 = load i8*, i8** %retval.i, align 8, !dbg !1169
  ret i8* %71, !dbg !1170
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_signal(i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1171 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1174, metadata !DIExpression()), !dbg !1175
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1176
  call void @kfree(i8* %0) #9, !dbg !1177
  ret void, !dbg !1178
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_opcode_3A_1T_1R(%struct.acpi_walk_state* %walk_state) #0 !dbg !1179 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %operand = alloca %union.acpi_operand_object**, align 8
  %return_desc = alloca %union.acpi_operand_object*, align 8
  %buffer = alloca i8*, align 8
  %status = alloca i32, align 4
  %index = alloca i64, align 8
  %length = alloca i64, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1180, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %operand, metadata !1182, metadata !DIExpression()), !dbg !1183
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1184
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 28, !dbg !1185
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !1184
  store %union.acpi_operand_object** %arrayidx, %union.acpi_operand_object*** %operand, align 8, !dbg !1183
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_desc, metadata !1186, metadata !DIExpression()), !dbg !1187
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %return_desc, align 8, !dbg !1187
  call void @llvm.dbg.declare(metadata i8** %buffer, metadata !1188, metadata !DIExpression()), !dbg !1189
  store i8* null, i8** %buffer, align 8, !dbg !1189
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1190, metadata !DIExpression()), !dbg !1191
  store i32 0, i32* %status, align 4, !dbg !1191
  call void @llvm.dbg.declare(metadata i64* %index, metadata !1192, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.declare(metadata i64* %length, metadata !1194, metadata !DIExpression()), !dbg !1195
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1196
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %1, i32 0, i32 3, !dbg !1197
  %2 = load i16, i16* %opcode, align 2, !dbg !1197
  %conv = zext i16 %2 to i32, !dbg !1196
  switch i32 %conv, label %sw.default57 [
    i32 158, label %sw.bb
  ], !dbg !1198

sw.bb:                                            ; preds = %entry
  %3 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1199
  %arrayidx1 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %3, i64 0, !dbg !1199
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx1, align 8, !dbg !1199
  %common = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_common*, !dbg !1199
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1199
  %5 = load i8, i8* %type, align 1, !dbg !1199
  %conv2 = zext i8 %5 to i32, !dbg !1199
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 144, i32 128, i32 %conv2) #9, !dbg !1199
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %return_desc, align 8, !dbg !1201
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1202
  %tobool = icmp ne %union.acpi_operand_object* %6, null, !dbg !1202
  br i1 %tobool, label %if.end, label %if.then, !dbg !1204

if.then:                                          ; preds = %sw.bb
  store i32 4, i32* %status, align 4, !dbg !1205
  br label %cleanup, !dbg !1207

if.end:                                           ; preds = %sw.bb
  %7 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1208
  %arrayidx3 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %7, i64 1, !dbg !1208
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx3, align 8, !dbg !1208
  %integer = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_integer*, !dbg !1209
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1210
  %9 = load i64, i64* %value, align 8, !dbg !1210
  store i64 %9, i64* %index, align 8, !dbg !1211
  %10 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1212
  %arrayidx4 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %10, i64 2, !dbg !1212
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx4, align 8, !dbg !1212
  %integer5 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_integer*, !dbg !1213
  %value6 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer5, i32 0, i32 6, !dbg !1214
  %12 = load i64, i64* %value6, align 8, !dbg !1214
  store i64 %12, i64* %length, align 8, !dbg !1215
  %13 = load i64, i64* %index, align 8, !dbg !1216
  %14 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1218
  %arrayidx7 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %14, i64 0, !dbg !1218
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx7, align 8, !dbg !1218
  %string = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_string*, !dbg !1219
  %length8 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 6, !dbg !1220
  %16 = load i32, i32* %length8, align 8, !dbg !1220
  %conv9 = zext i32 %16 to i64, !dbg !1218
  %cmp = icmp uge i64 %13, %conv9, !dbg !1221
  br i1 %cmp, label %if.then11, label %if.else, !dbg !1222

if.then11:                                        ; preds = %if.end
  store i64 0, i64* %length, align 8, !dbg !1223
  br label %if.end24, !dbg !1225

if.else:                                          ; preds = %if.end
  %17 = load i64, i64* %index, align 8, !dbg !1226
  %18 = load i64, i64* %length, align 8, !dbg !1228
  %add = add i64 %17, %18, !dbg !1229
  %19 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1230
  %arrayidx12 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %19, i64 0, !dbg !1230
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx12, align 8, !dbg !1230
  %string13 = bitcast %union.acpi_operand_object* %20 to %struct.acpi_object_string*, !dbg !1231
  %length14 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string13, i32 0, i32 6, !dbg !1232
  %21 = load i32, i32* %length14, align 8, !dbg !1232
  %conv15 = zext i32 %21 to i64, !dbg !1230
  %cmp16 = icmp ugt i64 %add, %conv15, !dbg !1233
  br i1 %cmp16, label %if.then18, label %if.end23, !dbg !1234

if.then18:                                        ; preds = %if.else
  %22 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1235
  %arrayidx19 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %22, i64 0, !dbg !1235
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx19, align 8, !dbg !1235
  %string20 = bitcast %union.acpi_operand_object* %23 to %struct.acpi_object_string*, !dbg !1237
  %length21 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string20, i32 0, i32 6, !dbg !1238
  %24 = load i32, i32* %length21, align 8, !dbg !1238
  %conv22 = zext i32 %24 to i64, !dbg !1239
  %25 = load i64, i64* %index, align 8, !dbg !1240
  %sub = sub i64 %conv22, %25, !dbg !1241
  store i64 %sub, i64* %length, align 8, !dbg !1242
  br label %if.end23, !dbg !1243

if.end23:                                         ; preds = %if.then18, %if.else
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then11
  %26 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1244
  %arrayidx25 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %26, i64 0, !dbg !1244
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx25, align 8, !dbg !1244
  %common26 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_common*, !dbg !1245
  %type27 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common26, i32 0, i32 2, !dbg !1246
  %28 = load i8, i8* %type27, align 1, !dbg !1246
  %conv28 = zext i8 %28 to i32, !dbg !1247
  switch i32 %conv28, label %sw.default [
    i32 2, label %sw.bb29
    i32 3, label %sw.bb35
  ], !dbg !1248

sw.bb29:                                          ; preds = %if.end24
  %29 = load i64, i64* %length, align 8, !dbg !1249
  %add30 = add i64 %29, 1, !dbg !1249
  %call31 = call i8* @acpi_os_allocate_zeroed(i64 %add30) #9, !dbg !1249
  store i8* %call31, i8** %buffer, align 8, !dbg !1251
  %30 = load i8*, i8** %buffer, align 8, !dbg !1252
  %tobool32 = icmp ne i8* %30, null, !dbg !1252
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !1254

if.then33:                                        ; preds = %sw.bb29
  store i32 4, i32* %status, align 4, !dbg !1255
  br label %cleanup, !dbg !1257

if.end34:                                         ; preds = %sw.bb29
  br label %sw.epilog, !dbg !1258

sw.bb35:                                          ; preds = %if.end24
  %31 = load i64, i64* %length, align 8, !dbg !1259
  %cmp36 = icmp ugt i64 %31, 0, !dbg !1261
  br i1 %cmp36, label %if.then38, label %if.end43, !dbg !1262

if.then38:                                        ; preds = %sw.bb35
  %32 = load i64, i64* %length, align 8, !dbg !1263
  %call39 = call i8* @acpi_os_allocate_zeroed(i64 %32) #9, !dbg !1263
  store i8* %call39, i8** %buffer, align 8, !dbg !1265
  %33 = load i8*, i8** %buffer, align 8, !dbg !1266
  %tobool40 = icmp ne i8* %33, null, !dbg !1266
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !1268

if.then41:                                        ; preds = %if.then38
  store i32 4, i32* %status, align 4, !dbg !1269
  br label %cleanup, !dbg !1271

if.end42:                                         ; preds = %if.then38
  br label %if.end43, !dbg !1272

if.end43:                                         ; preds = %if.end42, %sw.bb35
  br label %sw.epilog, !dbg !1273

sw.default:                                       ; preds = %if.end24
  store i32 12291, i32* %status, align 4, !dbg !1274
  br label %cleanup, !dbg !1275

sw.epilog:                                        ; preds = %if.end43, %if.end34
  %34 = load i8*, i8** %buffer, align 8, !dbg !1276
  %tobool44 = icmp ne i8* %34, null, !dbg !1276
  br i1 %tobool44, label %if.then45, label %if.end48, !dbg !1278

if.then45:                                        ; preds = %sw.epilog
  %35 = load i8*, i8** %buffer, align 8, !dbg !1279
  %36 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1281
  %arrayidx46 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %36, i64 0, !dbg !1281
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx46, align 8, !dbg !1281
  %string47 = bitcast %union.acpi_operand_object* %37 to %struct.acpi_object_string*, !dbg !1282
  %pointer = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string47, i32 0, i32 5, !dbg !1283
  %38 = load i8*, i8** %pointer, align 8, !dbg !1283
  %39 = load i64, i64* %index, align 8, !dbg !1284
  %add.ptr = getelementptr i8, i8* %38, i64 %39, !dbg !1285
  %40 = load i64, i64* %length, align 8, !dbg !1286
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %35, i8* align 1 %add.ptr, i64 %40, i1 false), !dbg !1287
  br label %if.end48, !dbg !1288

if.end48:                                         ; preds = %if.then45, %sw.epilog
  %41 = load i8*, i8** %buffer, align 8, !dbg !1289
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1290
  %string49 = bitcast %union.acpi_operand_object* %42 to %struct.acpi_object_string*, !dbg !1291
  %pointer50 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string49, i32 0, i32 5, !dbg !1292
  store i8* %41, i8** %pointer50, align 8, !dbg !1293
  %43 = load i64, i64* %length, align 8, !dbg !1294
  %conv51 = trunc i64 %43 to i32, !dbg !1295
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1296
  %string52 = bitcast %union.acpi_operand_object* %44 to %struct.acpi_object_string*, !dbg !1297
  %length53 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string52, i32 0, i32 6, !dbg !1298
  store i32 %conv51, i32* %length53, align 8, !dbg !1299
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1300
  %buffer54 = bitcast %union.acpi_operand_object* %45 to %struct.acpi_object_buffer*, !dbg !1301
  %flags = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer54, i32 0, i32 4, !dbg !1302
  %46 = load i8, i8* %flags, align 4, !dbg !1303
  %conv55 = zext i8 %46 to i32, !dbg !1303
  %or = or i32 %conv55, 4, !dbg !1303
  %conv56 = trunc i32 %or to i8, !dbg !1303
  store i8 %conv56, i8* %flags, align 4, !dbg !1303
  br label %sw.epilog60, !dbg !1304

sw.default57:                                     ; preds = %entry
  %47 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1305
  %opcode58 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %47, i32 0, i32 3, !dbg !1305
  %48 = load i16, i16* %opcode58, align 2, !dbg !1305
  %conv59 = zext i16 %48 to i32, !dbg !1305
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 227, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %conv59) #9, !dbg !1305
  store i32 12289, i32* %status, align 4, !dbg !1306
  br label %cleanup, !dbg !1307

sw.epilog60:                                      ; preds = %if.end48
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1308
  %50 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1309
  %arrayidx61 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %50, i64 3, !dbg !1309
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx61, align 8, !dbg !1309
  %52 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1310
  %call62 = call i32 @acpi_ex_store(%union.acpi_operand_object* %49, %union.acpi_operand_object* %51, %struct.acpi_walk_state* %52) #9, !dbg !1311
  store i32 %call62, i32* %status, align 4, !dbg !1312
  br label %cleanup, !dbg !1313

cleanup:                                          ; preds = %sw.epilog60, %sw.default57, %sw.default, %if.then41, %if.then33, %if.then
  call void @llvm.dbg.label(metadata !1314), !dbg !1315
  %53 = load i32, i32* %status, align 4, !dbg !1316
  %tobool63 = icmp ne i32 %53, 0, !dbg !1316
  br i1 %tobool63, label %if.then65, label %lor.lhs.false, !dbg !1318

lor.lhs.false:                                    ; preds = %cleanup
  %54 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1319
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %54, i32 0, i32 43, !dbg !1320
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %result_obj, align 8, !dbg !1320
  %tobool64 = icmp ne %union.acpi_operand_object* %55, null, !dbg !1319
  br i1 %tobool64, label %if.then65, label %if.else67, !dbg !1321

if.then65:                                        ; preds = %lor.lhs.false, %cleanup
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1322
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %56) #9, !dbg !1324
  %57 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1325
  %result_obj66 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %57, i32 0, i32 43, !dbg !1326
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %result_obj66, align 8, !dbg !1327
  br label %if.end69, !dbg !1328

if.else67:                                        ; preds = %lor.lhs.false
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1329
  %59 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1331
  %result_obj68 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %59, i32 0, i32 43, !dbg !1332
  store %union.acpi_operand_object* %58, %union.acpi_operand_object** %result_obj68, align 8, !dbg !1333
  br label %if.end69

if.end69:                                         ; preds = %if.else67, %if.then65
  %60 = load i32, i32* %status, align 4, !dbg !1334
  ret i32 %60, !dbg !1334
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8*, i32, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !1335 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !932, metadata !DIExpression()), !dbg !1336
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1340, metadata !DIExpression()), !dbg !1341
  %0 = load i64, i64* %size.addr, align 8, !dbg !1342
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1343, metadata !DIExpression()), !dbg !1344
  br label %do.body, !dbg !1344

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1345, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1349, metadata !DIExpression()), !dbg !1348
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1348
  %conv = zext i1 %cmp to i32, !dbg !1348
  store i32 1, i32* %tmp, align 4, !dbg !1348
  %1 = load i32, i32* %tmp, align 4, !dbg !1348
  %call = call i64 @arch_local_save_flags() #9, !dbg !1350
  store i64 %call, i64* %_flags, align 8, !dbg !1350
  br label %do.end, !dbg !1350

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1351, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1354, metadata !DIExpression()), !dbg !1353
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1353
  %conv6 = zext i1 %cmp5 to i32, !dbg !1353
  store i32 1, i32* %tmp7, align 4, !dbg !1353
  %2 = load i32, i32* %tmp7, align 4, !dbg !1353
  %3 = load i64, i64* %_flags, align 8, !dbg !1355
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1356
  %and.i = and i64 %4, 512, !dbg !1357
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1358
  %lnot.i = xor i1 %tobool.i, true, !dbg !1358
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1358
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1355
  %5 = load i32, i32* %tmp8, align 4, !dbg !1355
  store i32 %5, i32* %tmp1, align 4, !dbg !1350
  %6 = load i32, i32* %tmp1, align 4, !dbg !1344
  %tobool = icmp ne i32 %6, 0, !dbg !1359
  %7 = zext i1 %tobool to i64, !dbg !1359
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1359
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #9, !dbg !1360
  ret i8* %call10, !dbg !1361
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_store(%union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1362 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1366, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1369, metadata !DIExpression()), !dbg !1368
  %0 = load i64, i64* %__edi, align 8, !dbg !1368
  store i64 %0, i64* %__edi, align 8, !dbg !1368
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1370, metadata !DIExpression()), !dbg !1368
  %1 = load i64, i64* %__esi, align 8, !dbg !1368
  store i64 %1, i64* %__esi, align 8, !dbg !1368
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1371, metadata !DIExpression()), !dbg !1368
  %2 = load i64, i64* %__edx, align 8, !dbg !1368
  store i64 %2, i64* %__edx, align 8, !dbg !1368
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1372, metadata !DIExpression()), !dbg !1368
  %3 = load i64, i64* %__ecx, align 8, !dbg !1368
  store i64 %3, i64* %__ecx, align 8, !dbg !1368
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1373, metadata !DIExpression()), !dbg !1368
  %4 = load i64, i64* %__eax, align 8, !dbg !1368
  store i64 %4, i64* %__eax, align 8, !dbg !1368
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1368
  %6 = call i64 @llvm.read_register.i64(metadata !34), !dbg !1374
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !1374, !srcloc !1377
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1374
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1374
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1374
  call void @llvm.write_register.i64(metadata !34, i64 %asmresult1), !dbg !1374
  %8 = load i64, i64* %__eax, align 8, !dbg !1374
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1378, metadata !DIExpression()), !dbg !1380
  store i64 -1, i64* %__mask, align 8, !dbg !1380
  %9 = load i64, i64* %__mask, align 8, !dbg !1380
  store i64 %9, i64* %tmp, align 8, !dbg !1380
  %10 = load i64, i64* %tmp, align 8, !dbg !1380
  %and = and i64 %8, %10, !dbg !1374
  store i64 %and, i64* %__ret, align 8, !dbg !1374
  %11 = load i64, i64* %__ret, align 8, !dbg !1368
  store i64 %11, i64* %tmp2, align 8, !dbg !1381
  %12 = load i64, i64* %tmp2, align 8, !dbg !1368
  ret i64 %12, !dbg !1382
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !1383 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1385, metadata !DIExpression()), !dbg !1390
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1392, metadata !DIExpression()), !dbg !1393
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1394, metadata !DIExpression()), !dbg !1395
  %0 = load i64, i64* %size.addr, align 8, !dbg !1396
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1398
  br i1 %1, label %if.then, label %if.end447, !dbg !1399

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1400
  %tobool = icmp ne i64 %2, 0, !dbg !1400
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1403

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1404
  br label %return, !dbg !1404

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1405
  %cmp = icmp ult i64 %3, 4096, !dbg !1407
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1408

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1409
  br label %return, !dbg !1409

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub = sub i64 %4, 1, !dbg !1410
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1410
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1410

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub4 = sub i64 %6, 1, !dbg !1410
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1410
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1410

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub6 = sub i64 %8, 1, !dbg !1410
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1410
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1410

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1410

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub9 = sub i64 %9, 1, !dbg !1410
  %and = and i64 %sub9, -9223372036854775808, !dbg !1410
  %tobool10 = icmp ne i64 %and, 0, !dbg !1410
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1410

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1410

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub13 = sub i64 %10, 1, !dbg !1410
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1410
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1410
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1410

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1410

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub18 = sub i64 %11, 1, !dbg !1410
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1410
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1410
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1410

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1410

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub23 = sub i64 %12, 1, !dbg !1410
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1410
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1410
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1410

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1410

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub28 = sub i64 %13, 1, !dbg !1410
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1410
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1410
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1410

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1410

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub33 = sub i64 %14, 1, !dbg !1410
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1410
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1410
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1410

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1410

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub38 = sub i64 %15, 1, !dbg !1410
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1410
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1410
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1410

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1410

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub43 = sub i64 %16, 1, !dbg !1410
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1410
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1410
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1410

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1410

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub48 = sub i64 %17, 1, !dbg !1410
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1410
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1410
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1410

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1410

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub53 = sub i64 %18, 1, !dbg !1410
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1410
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1410
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1410

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1410

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub58 = sub i64 %19, 1, !dbg !1410
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1410
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1410
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1410

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1410

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub63 = sub i64 %20, 1, !dbg !1410
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1410
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1410
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1410

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1410

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub68 = sub i64 %21, 1, !dbg !1410
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1410
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1410
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1410

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1410

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub73 = sub i64 %22, 1, !dbg !1410
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1410
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1410
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1410

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1410

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub78 = sub i64 %23, 1, !dbg !1410
  %and79 = and i64 %sub78, 562949953421312, !dbg !1410
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1410
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1410

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1410

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub83 = sub i64 %24, 1, !dbg !1410
  %and84 = and i64 %sub83, 281474976710656, !dbg !1410
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1410
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1410

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1410

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub88 = sub i64 %25, 1, !dbg !1410
  %and89 = and i64 %sub88, 140737488355328, !dbg !1410
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1410
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1410

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1410

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub93 = sub i64 %26, 1, !dbg !1410
  %and94 = and i64 %sub93, 70368744177664, !dbg !1410
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1410
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1410

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1410

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub98 = sub i64 %27, 1, !dbg !1410
  %and99 = and i64 %sub98, 35184372088832, !dbg !1410
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1410
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1410

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1410

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub103 = sub i64 %28, 1, !dbg !1410
  %and104 = and i64 %sub103, 17592186044416, !dbg !1410
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1410
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1410

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1410

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub108 = sub i64 %29, 1, !dbg !1410
  %and109 = and i64 %sub108, 8796093022208, !dbg !1410
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1410
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1410

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1410

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub113 = sub i64 %30, 1, !dbg !1410
  %and114 = and i64 %sub113, 4398046511104, !dbg !1410
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1410
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1410

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1410

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub118 = sub i64 %31, 1, !dbg !1410
  %and119 = and i64 %sub118, 2199023255552, !dbg !1410
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1410
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1410

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1410

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub123 = sub i64 %32, 1, !dbg !1410
  %and124 = and i64 %sub123, 1099511627776, !dbg !1410
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1410
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1410

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1410

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub128 = sub i64 %33, 1, !dbg !1410
  %and129 = and i64 %sub128, 549755813888, !dbg !1410
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1410
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1410

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1410

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub133 = sub i64 %34, 1, !dbg !1410
  %and134 = and i64 %sub133, 274877906944, !dbg !1410
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1410
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1410

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1410

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub138 = sub i64 %35, 1, !dbg !1410
  %and139 = and i64 %sub138, 137438953472, !dbg !1410
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1410
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1410

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1410

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub143 = sub i64 %36, 1, !dbg !1410
  %and144 = and i64 %sub143, 68719476736, !dbg !1410
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1410
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1410

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1410

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub148 = sub i64 %37, 1, !dbg !1410
  %and149 = and i64 %sub148, 34359738368, !dbg !1410
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1410
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1410

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1410

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub153 = sub i64 %38, 1, !dbg !1410
  %and154 = and i64 %sub153, 17179869184, !dbg !1410
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1410
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1410

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1410

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub158 = sub i64 %39, 1, !dbg !1410
  %and159 = and i64 %sub158, 8589934592, !dbg !1410
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1410
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1410

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1410

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub163 = sub i64 %40, 1, !dbg !1410
  %and164 = and i64 %sub163, 4294967296, !dbg !1410
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1410
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1410

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1410

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub168 = sub i64 %41, 1, !dbg !1410
  %and169 = and i64 %sub168, 2147483648, !dbg !1410
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1410
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1410

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1410

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub173 = sub i64 %42, 1, !dbg !1410
  %and174 = and i64 %sub173, 1073741824, !dbg !1410
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1410
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1410

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1410

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub178 = sub i64 %43, 1, !dbg !1410
  %and179 = and i64 %sub178, 536870912, !dbg !1410
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1410
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1410

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1410

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub183 = sub i64 %44, 1, !dbg !1410
  %and184 = and i64 %sub183, 268435456, !dbg !1410
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1410
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1410

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1410

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub188 = sub i64 %45, 1, !dbg !1410
  %and189 = and i64 %sub188, 134217728, !dbg !1410
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1410
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1410

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1410

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub193 = sub i64 %46, 1, !dbg !1410
  %and194 = and i64 %sub193, 67108864, !dbg !1410
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1410
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1410

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1410

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub198 = sub i64 %47, 1, !dbg !1410
  %and199 = and i64 %sub198, 33554432, !dbg !1410
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1410
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1410

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1410

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub203 = sub i64 %48, 1, !dbg !1410
  %and204 = and i64 %sub203, 16777216, !dbg !1410
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1410
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1410

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1410

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub208 = sub i64 %49, 1, !dbg !1410
  %and209 = and i64 %sub208, 8388608, !dbg !1410
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1410
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1410

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1410

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub213 = sub i64 %50, 1, !dbg !1410
  %and214 = and i64 %sub213, 4194304, !dbg !1410
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1410
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1410

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1410

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub218 = sub i64 %51, 1, !dbg !1410
  %and219 = and i64 %sub218, 2097152, !dbg !1410
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1410
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1410

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1410

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub223 = sub i64 %52, 1, !dbg !1410
  %and224 = and i64 %sub223, 1048576, !dbg !1410
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1410
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1410

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1410

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub228 = sub i64 %53, 1, !dbg !1410
  %and229 = and i64 %sub228, 524288, !dbg !1410
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1410
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1410

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1410

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub233 = sub i64 %54, 1, !dbg !1410
  %and234 = and i64 %sub233, 262144, !dbg !1410
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1410
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1410

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1410

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub238 = sub i64 %55, 1, !dbg !1410
  %and239 = and i64 %sub238, 131072, !dbg !1410
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1410
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1410

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1410

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub243 = sub i64 %56, 1, !dbg !1410
  %and244 = and i64 %sub243, 65536, !dbg !1410
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1410
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1410

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1410

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub248 = sub i64 %57, 1, !dbg !1410
  %and249 = and i64 %sub248, 32768, !dbg !1410
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1410
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1410

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1410

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub253 = sub i64 %58, 1, !dbg !1410
  %and254 = and i64 %sub253, 16384, !dbg !1410
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1410
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1410

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1410

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub258 = sub i64 %59, 1, !dbg !1410
  %and259 = and i64 %sub258, 8192, !dbg !1410
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1410
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1410

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1410

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub263 = sub i64 %60, 1, !dbg !1410
  %and264 = and i64 %sub263, 4096, !dbg !1410
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1410
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1410

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1410

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub268 = sub i64 %61, 1, !dbg !1410
  %and269 = and i64 %sub268, 2048, !dbg !1410
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1410
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1410

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1410

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub273 = sub i64 %62, 1, !dbg !1410
  %and274 = and i64 %sub273, 1024, !dbg !1410
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1410
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1410

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1410

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub278 = sub i64 %63, 1, !dbg !1410
  %and279 = and i64 %sub278, 512, !dbg !1410
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1410
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1410

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1410

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub283 = sub i64 %64, 1, !dbg !1410
  %and284 = and i64 %sub283, 256, !dbg !1410
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1410
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1410

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1410

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub288 = sub i64 %65, 1, !dbg !1410
  %and289 = and i64 %sub288, 128, !dbg !1410
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1410
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1410

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1410

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub293 = sub i64 %66, 1, !dbg !1410
  %and294 = and i64 %sub293, 64, !dbg !1410
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1410
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1410

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1410

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub298 = sub i64 %67, 1, !dbg !1410
  %and299 = and i64 %sub298, 32, !dbg !1410
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1410
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1410

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1410

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub303 = sub i64 %68, 1, !dbg !1410
  %and304 = and i64 %sub303, 16, !dbg !1410
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1410
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1410

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1410

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub308 = sub i64 %69, 1, !dbg !1410
  %and309 = and i64 %sub308, 8, !dbg !1410
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1410
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1410

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1410

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub313 = sub i64 %70, 1, !dbg !1410
  %and314 = and i64 %sub313, 4, !dbg !1410
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1410
  %71 = zext i1 %tobool315 to i64, !dbg !1410
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1410
  br label %cond.end, !dbg !1410

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1410
  br label %cond.end317, !dbg !1410

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1410
  br label %cond.end319, !dbg !1410

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1410
  br label %cond.end321, !dbg !1410

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1410
  br label %cond.end323, !dbg !1410

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1410
  br label %cond.end325, !dbg !1410

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1410
  br label %cond.end327, !dbg !1410

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1410
  br label %cond.end329, !dbg !1410

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1410
  br label %cond.end331, !dbg !1410

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1410
  br label %cond.end333, !dbg !1410

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1410
  br label %cond.end335, !dbg !1410

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1410
  br label %cond.end337, !dbg !1410

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1410
  br label %cond.end339, !dbg !1410

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1410
  br label %cond.end341, !dbg !1410

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1410
  br label %cond.end343, !dbg !1410

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1410
  br label %cond.end345, !dbg !1410

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1410
  br label %cond.end347, !dbg !1410

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1410
  br label %cond.end349, !dbg !1410

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1410
  br label %cond.end351, !dbg !1410

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1410
  br label %cond.end353, !dbg !1410

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1410
  br label %cond.end355, !dbg !1410

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1410
  br label %cond.end357, !dbg !1410

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1410
  br label %cond.end359, !dbg !1410

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1410
  br label %cond.end361, !dbg !1410

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1410
  br label %cond.end363, !dbg !1410

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1410
  br label %cond.end365, !dbg !1410

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1410
  br label %cond.end367, !dbg !1410

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1410
  br label %cond.end369, !dbg !1410

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1410
  br label %cond.end371, !dbg !1410

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1410
  br label %cond.end373, !dbg !1410

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1410
  br label %cond.end375, !dbg !1410

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1410
  br label %cond.end377, !dbg !1410

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1410
  br label %cond.end379, !dbg !1410

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1410
  br label %cond.end381, !dbg !1410

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1410
  br label %cond.end383, !dbg !1410

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1410
  br label %cond.end385, !dbg !1410

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1410
  br label %cond.end387, !dbg !1410

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1410
  br label %cond.end389, !dbg !1410

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1410
  br label %cond.end391, !dbg !1410

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1410
  br label %cond.end393, !dbg !1410

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1410
  br label %cond.end395, !dbg !1410

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1410
  br label %cond.end397, !dbg !1410

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1410
  br label %cond.end399, !dbg !1410

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1410
  br label %cond.end401, !dbg !1410

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1410
  br label %cond.end403, !dbg !1410

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1410
  br label %cond.end405, !dbg !1410

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1410
  br label %cond.end407, !dbg !1410

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1410
  br label %cond.end409, !dbg !1410

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1410
  br label %cond.end411, !dbg !1410

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1410
  br label %cond.end413, !dbg !1410

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1410
  br label %cond.end415, !dbg !1410

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1410
  br label %cond.end417, !dbg !1410

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1410
  br label %cond.end419, !dbg !1410

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1410
  br label %cond.end421, !dbg !1410

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1410
  br label %cond.end423, !dbg !1410

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1410
  br label %cond.end425, !dbg !1410

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1410
  br label %cond.end427, !dbg !1410

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1410
  br label %cond.end429, !dbg !1410

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1410
  br label %cond.end431, !dbg !1410

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1410
  br label %cond.end433, !dbg !1410

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1410
  br label %cond.end435, !dbg !1410

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1410
  br label %cond.end437, !dbg !1410

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1410
  br label %cond.end440, !dbg !1410

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1410

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1410
  br label %cond.end444, !dbg !1410

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1410
  %sub443 = sub i64 %72, 1, !dbg !1410
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !1410
  br label %cond.end444, !dbg !1410

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1410
  %sub446 = sub i32 %cond445, 12, !dbg !1411
  %add = add i32 %sub446, 1, !dbg !1412
  store i32 %add, i32* %retval, align 4, !dbg !1413
  br label %return, !dbg !1413

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1414
  %dec = add i64 %73, -1, !dbg !1414
  store i64 %dec, i64* %size.addr, align 8, !dbg !1414
  %74 = load i64, i64* %size.addr, align 8, !dbg !1415
  %shr = lshr i64 %74, 12, !dbg !1415
  store i64 %shr, i64* %size.addr, align 8, !dbg !1415
  %75 = load i64, i64* %size.addr, align 8, !dbg !1416
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1393
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1417
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1418
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !1417, !srcloc !1419
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1417
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1420
  %add.i = add i32 %79, 1, !dbg !1421
  store i32 %add.i, i32* %retval, align 4, !dbg !1422
  br label %return, !dbg !1422

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1423
  ret i32 %80, !dbg !1423
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !1424 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1385, metadata !DIExpression()), !dbg !1428
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1392, metadata !DIExpression()), !dbg !1430
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1431, metadata !DIExpression()), !dbg !1432
  %0 = load i64, i64* %n.addr, align 8, !dbg !1433
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1430
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1434
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1435
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !1434, !srcloc !1419
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1434
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1436
  %add.i = add i32 %4, 1, !dbg !1437
  %sub = sub i32 %add.i, 1, !dbg !1438
  ret i32 %sub, !dbg !1439
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1440 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1446, metadata !DIExpression()), !dbg !1447
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1448, metadata !DIExpression()), !dbg !1449
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1450, metadata !DIExpression()), !dbg !1451
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1452, metadata !DIExpression()), !dbg !1453
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1454
  ret i8* %0, !dbg !1455
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1456 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !870, metadata !DIExpression()), !dbg !1457
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !889, metadata !DIExpression()), !dbg !1460
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !891, metadata !DIExpression()), !dbg !1461
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !893, metadata !DIExpression()), !dbg !1462
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !895, metadata !DIExpression()), !dbg !1463
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !901, metadata !DIExpression()), !dbg !1465
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !907, metadata !DIExpression()), !dbg !1467
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !916, metadata !DIExpression()), !dbg !1470
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !918, metadata !DIExpression()), !dbg !1471
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !920, metadata !DIExpression()), !dbg !1472
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !922, metadata !DIExpression()), !dbg !1473
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !924, metadata !DIExpression()), !dbg !1474
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !926, metadata !DIExpression()), !dbg !1475
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !928, metadata !DIExpression()), !dbg !1476
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !930, metadata !DIExpression()), !dbg !1477
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1478, metadata !DIExpression()), !dbg !1479
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1480, metadata !DIExpression()), !dbg !1481
  %0 = load i64, i64* %size.addr, align 8, !dbg !1482
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1483
  %or = or i32 %1, 256, !dbg !1484
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1485
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !1486
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1487

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1488
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1489
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1490

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1491
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1492
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1493
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !1494
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1474
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1495
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1496
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1497
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1498
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1499
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1500
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !1501
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1501
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1501
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1501
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !1501
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1502
  br label %kmalloc.exit, !dbg !1502

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1503
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1504
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1504
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1505

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1506
  br label %kmalloc_index.exit.i, !dbg !1506

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1507
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1508
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1509

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1510
  br label %kmalloc_index.exit.i, !dbg !1510

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1511
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1512
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1513

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1514
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1515
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1516

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1517
  br label %kmalloc_index.exit.i, !dbg !1517

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1518
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1519
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1520

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1521
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1522
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1523

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1524
  br label %kmalloc_index.exit.i, !dbg !1524

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1525
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1526
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1527

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1528
  br label %kmalloc_index.exit.i, !dbg !1528

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1529
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1530
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1531

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1532
  br label %kmalloc_index.exit.i, !dbg !1532

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1533
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1534
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1535

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1536
  br label %kmalloc_index.exit.i, !dbg !1536

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1537
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1538
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1539

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1540
  br label %kmalloc_index.exit.i, !dbg !1540

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1541
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1542
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1543

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1544
  br label %kmalloc_index.exit.i, !dbg !1544

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1545
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1546
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1547

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1548
  br label %kmalloc_index.exit.i, !dbg !1548

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1549
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1550
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1551

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1552
  br label %kmalloc_index.exit.i, !dbg !1552

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1553
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1554
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1555

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1556
  br label %kmalloc_index.exit.i, !dbg !1556

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1557
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1558
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1559

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1560
  br label %kmalloc_index.exit.i, !dbg !1560

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1561
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1562
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1563

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1564
  br label %kmalloc_index.exit.i, !dbg !1564

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1565
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1566
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1567

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1568
  br label %kmalloc_index.exit.i, !dbg !1568

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1569
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1570
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1571

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1572
  br label %kmalloc_index.exit.i, !dbg !1572

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1573
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1574
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1575

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1576
  br label %kmalloc_index.exit.i, !dbg !1576

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1577
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1578
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1579

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1580
  br label %kmalloc_index.exit.i, !dbg !1580

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1581
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1582
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1583

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1584
  br label %kmalloc_index.exit.i, !dbg !1584

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1585
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1586
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1587

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1588
  br label %kmalloc_index.exit.i, !dbg !1588

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1589
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1590
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1591

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1592
  br label %kmalloc_index.exit.i, !dbg !1592

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1593
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1594
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1595

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1596
  br label %kmalloc_index.exit.i, !dbg !1596

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1597
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1598
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1599

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1600
  br label %kmalloc_index.exit.i, !dbg !1600

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1601
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1602
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1603

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1604
  br label %kmalloc_index.exit.i, !dbg !1604

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1605
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1606
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1607

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1608
  br label %kmalloc_index.exit.i, !dbg !1608

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1609
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1610
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1611

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1612
  br label %kmalloc_index.exit.i, !dbg !1612

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1613
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1614
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1615

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1616
  br label %kmalloc_index.exit.i, !dbg !1616

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1617
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1618
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1619

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1620
  br label %kmalloc_index.exit.i, !dbg !1620

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !1621, !srcloc !1129
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #8, !dbg !1622, !srcloc !1133
  unreachable, !dbg !1623

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1624
  store i32 %45, i32* %index.i, align 4, !dbg !1625
  %46 = load i32, i32* %index.i, align 4, !dbg !1626
  %tobool.i = icmp ne i32 %46, 0, !dbg !1626
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1627

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1628
  br label %kmalloc.exit, !dbg !1628

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1629
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1630
  %and.i.i = and i32 %48, 17, !dbg !1630
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1630
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1630
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1630
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1630
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1631

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1632
  br label %kmalloc_type.exit.i, !dbg !1632

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1633
  %and2.i.i = and i32 %49, 1, !dbg !1634
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1633
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1633
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1633
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1635
  br label %kmalloc_type.exit.i, !dbg !1635

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1636
  %idxprom.i = zext i32 %51 to i64, !dbg !1637
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1637
  %52 = load i32, i32* %index.i, align 4, !dbg !1638
  %idxprom6.i = zext i32 %52 to i64, !dbg !1637
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1637
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1637
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1639
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1640
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1641
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1642
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !1643
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1643
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1643
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1643
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !1643
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1462
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1644
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1645
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1646
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1647
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !1648
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1649
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1650
  store i8* %62, i8** %retval.i, align 8, !dbg !1651
  br label %kmalloc.exit, !dbg !1651

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1652
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1653
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !1654
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1654
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1654
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1654
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !1654
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1655
  br label %kmalloc.exit, !dbg !1655

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1656
  ret i8* %65, !dbg !1657
}

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
!llvm.named.register.rsp = !{!34}
!llvm.module.flags = !{!35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !29, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !28, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exoparg3.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !20, !16, !24, !26, !27}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !15, line: 421, baseType: !16)
!15 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !17, line: 21, baseType: !18)
!17 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !19, line: 27, baseType: !7)
!19 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !15, line: 127, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !17, line: 23, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !19, line: 31, baseType: !23)
!23 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !25, line: 148, baseType: !7)
!25 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !{!0}
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 72, elements: !32)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !{!33}
!33 = !DISubrange(count: 9)
!34 = !{!"rsp"}
!35 = !{i32 7, !"Dwarf Version", i32 4}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"Code Model", i32 2}
!39 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!40 = distinct !DISubprogram(name: "acpi_ex_opcode_3A_0T_0R", scope: !3, file: !3, line: 51, type: !41, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !802)
!41 = !DISubroutineType(types: !42)
!42 = !{!14, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !45, line: 37, size: 9024, elements: !46)
!45 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!46 = !{!47, !48, !52, !53, !57, !58, !59, !60, !62, !63, !64, !65, !66, !67, !68, !69, !70, !72, !73, !74, !75, !76, !751, !752, !753, !754, !755, !759, !761, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !786, !787, !788, !789, !790, !791, !792, !793, !794, !800}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !44, file: !45, line: 38, baseType: !43, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !44, file: !45, line: 39, baseType: !49, size: 8, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !17, line: 17, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !19, line: 21, baseType: !51)
!51 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !44, file: !45, line: 40, baseType: !49, size: 8, offset: 72)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !44, file: !45, line: 41, baseType: !54, size: 16, offset: 80)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !17, line: 19, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !19, line: 24, baseType: !56)
!56 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !44, file: !45, line: 42, baseType: !49, size: 8, offset: 96)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !44, file: !45, line: 43, baseType: !49, size: 8, offset: 104)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !44, file: !45, line: 44, baseType: !49, size: 8, offset: 112)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !44, file: !45, line: 45, baseType: !61, size: 16, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !15, line: 445, baseType: !54)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !44, file: !45, line: 46, baseType: !49, size: 8, offset: 144)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !44, file: !45, line: 47, baseType: !49, size: 8, offset: 152)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !44, file: !45, line: 48, baseType: !49, size: 8, offset: 160)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !44, file: !45, line: 49, baseType: !49, size: 8, offset: 168)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !44, file: !45, line: 50, baseType: !49, size: 8, offset: 176)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !44, file: !45, line: 51, baseType: !49, size: 8, offset: 184)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !44, file: !45, line: 52, baseType: !49, size: 8, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !44, file: !45, line: 53, baseType: !49, size: 8, offset: 200)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !44, file: !45, line: 54, baseType: !71, size: 64, offset: 256)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !44, file: !45, line: 55, baseType: !16, size: 32, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !44, file: !45, line: 56, baseType: !16, size: 32, offset: 352)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !44, file: !45, line: 57, baseType: !16, size: 32, offset: 384)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !44, file: !45, line: 58, baseType: !16, size: 32, offset: 416)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !44, file: !45, line: 60, baseType: !77, size: 640, offset: 448)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !78, line: 893, size: 640, elements: !79)
!78 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!79 = !{!80, !81, !82, !83, !84, !85, !648, !649, !749, !750}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !77, file: !78, line: 894, baseType: !71, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !77, file: !78, line: 895, baseType: !71, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !77, file: !78, line: 896, baseType: !71, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !77, file: !78, line: 897, baseType: !71, size: 64, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !77, file: !78, line: 898, baseType: !71, size: 64, offset: 256)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !77, file: !78, line: 899, baseType: !86, size: 64, offset: 320)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !78, line: 875, size: 1600, elements: !88)
!88 = !{!89, !591, !607}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !87, file: !78, line: 876, baseType: !90, size: 448)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !78, line: 828, size: 448, elements: !91)
!91 = !{!92, !93, !94, !95, !96, !97, !98, !581, !590}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !90, file: !78, line: 829, baseType: !86, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !90, file: !78, line: 829, baseType: !49, size: 8, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !90, file: !78, line: 829, baseType: !49, size: 8, offset: 72)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !90, file: !78, line: 829, baseType: !54, size: 16, offset: 80)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !90, file: !78, line: 829, baseType: !71, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !90, file: !78, line: 829, baseType: !86, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !90, file: !78, line: 829, baseType: !99, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !78, line: 133, size: 384, elements: !101)
!101 = !{!102, !565, !566, !567, !568, !577, !578, !579, !580}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !100, file: !78, line: 134, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !105, line: 367, size: 576, elements: !106)
!105 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!106 = !{!107, !115, !128, !139, !152, !166, !175, !199, !228, !243, !256, !335, !347, !361, !371, !389, !411, !430, !449, !468, !485, !511, !528, !541, !555, !564}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !104, file: !105, line: 368, baseType: !108, size: 128)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !105, line: 73, size: 128, elements: !109)
!109 = !{!110, !111, !112, !113, !114}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !108, file: !105, line: 74, baseType: !103, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !108, file: !105, line: 74, baseType: !49, size: 8, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !108, file: !105, line: 74, baseType: !49, size: 8, offset: 72)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !108, file: !105, line: 74, baseType: !54, size: 16, offset: 80)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !108, file: !105, line: 74, baseType: !49, size: 8, offset: 96)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !104, file: !105, line: 369, baseType: !116, size: 192)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !105, line: 76, size: 192, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !127}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !116, file: !105, line: 77, baseType: !103, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !116, file: !105, line: 77, baseType: !49, size: 8, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !105, line: 77, baseType: !49, size: 8, offset: 72)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !116, file: !105, line: 77, baseType: !54, size: 16, offset: 80)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !105, line: 77, baseType: !49, size: 8, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !116, file: !105, line: 77, baseType: !124, size: 24, offset: 104)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 24, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 3)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !116, file: !105, line: 78, baseType: !21, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !104, file: !105, line: 370, baseType: !129, size: 256)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !105, line: 93, size: 256, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136, !138}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !129, file: !105, line: 94, baseType: !103, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !129, file: !105, line: 94, baseType: !49, size: 8, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !129, file: !105, line: 94, baseType: !49, size: 8, offset: 72)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !129, file: !105, line: 94, baseType: !54, size: 16, offset: 80)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !105, line: 94, baseType: !49, size: 8, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !129, file: !105, line: 94, baseType: !137, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !129, file: !105, line: 94, baseType: !16, size: 32, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !104, file: !105, line: 371, baseType: !140, size: 384)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !105, line: 97, size: 384, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !140, file: !105, line: 98, baseType: !103, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !140, file: !105, line: 98, baseType: !49, size: 8, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !140, file: !105, line: 98, baseType: !49, size: 8, offset: 72)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !140, file: !105, line: 98, baseType: !54, size: 16, offset: 80)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !140, file: !105, line: 98, baseType: !49, size: 8, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !140, file: !105, line: 98, baseType: !71, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !140, file: !105, line: 98, baseType: !16, size: 32, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !140, file: !105, line: 99, baseType: !16, size: 32, offset: 224)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !140, file: !105, line: 100, baseType: !71, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !140, file: !105, line: 101, baseType: !99, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !104, file: !105, line: 372, baseType: !153, size: 384)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !105, line: 104, size: 384, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !163, !164, !165}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !153, file: !105, line: 105, baseType: !103, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !153, file: !105, line: 105, baseType: !49, size: 8, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !153, file: !105, line: 105, baseType: !49, size: 8, offset: 72)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !153, file: !105, line: 105, baseType: !54, size: 16, offset: 80)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !105, line: 105, baseType: !49, size: 8, offset: 96)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !153, file: !105, line: 105, baseType: !99, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !153, file: !105, line: 106, baseType: !162, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !153, file: !105, line: 107, baseType: !71, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !153, file: !105, line: 108, baseType: !16, size: 32, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !153, file: !105, line: 109, baseType: !16, size: 32, offset: 352)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !104, file: !105, line: 373, baseType: !167, size: 192)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !105, line: 118, size: 192, elements: !168)
!168 = !{!169, !170, !171, !172, !173, !174}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !167, file: !105, line: 119, baseType: !103, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !167, file: !105, line: 119, baseType: !49, size: 8, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !167, file: !105, line: 119, baseType: !49, size: 8, offset: 72)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !167, file: !105, line: 119, baseType: !54, size: 16, offset: 80)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !167, file: !105, line: 119, baseType: !49, size: 8, offset: 96)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !167, file: !105, line: 119, baseType: !26, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !104, file: !105, line: 374, baseType: !176, size: 448)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !105, line: 143, size: 448, elements: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !196, !197, !198}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !176, file: !105, line: 144, baseType: !103, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !176, file: !105, line: 144, baseType: !49, size: 8, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !176, file: !105, line: 144, baseType: !49, size: 8, offset: 72)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !176, file: !105, line: 144, baseType: !54, size: 16, offset: 80)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !176, file: !105, line: 144, baseType: !49, size: 8, offset: 96)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !176, file: !105, line: 144, baseType: !49, size: 8, offset: 104)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !176, file: !105, line: 145, baseType: !49, size: 8, offset: 112)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !176, file: !105, line: 146, baseType: !49, size: 8, offset: 120)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !176, file: !105, line: 147, baseType: !103, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !176, file: !105, line: 148, baseType: !103, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !176, file: !105, line: 149, baseType: !71, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !176, file: !105, line: 153, baseType: !190, size: 64, offset: 320)
!190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !176, file: !105, line: 150, size: 64, elements: !191)
!191 = !{!192, !195}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !190, file: !105, line: 151, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !78, line: 248, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !190, file: !105, line: 152, baseType: !103, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !176, file: !105, line: 155, baseType: !16, size: 32, offset: 384)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !176, file: !105, line: 156, baseType: !61, size: 16, offset: 416)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !176, file: !105, line: 157, baseType: !49, size: 8, offset: 432)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !104, file: !105, line: 375, baseType: !200, size: 576)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !105, line: 122, size: 576, elements: !201)
!201 = !{!202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !224, !225, !226, !227}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !200, file: !105, line: 123, baseType: !103, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !200, file: !105, line: 123, baseType: !49, size: 8, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !200, file: !105, line: 123, baseType: !49, size: 8, offset: 72)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !200, file: !105, line: 123, baseType: !54, size: 16, offset: 80)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !200, file: !105, line: 123, baseType: !49, size: 8, offset: 96)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !200, file: !105, line: 123, baseType: !49, size: 8, offset: 104)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !200, file: !105, line: 124, baseType: !54, size: 16, offset: 112)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !200, file: !105, line: 125, baseType: !26, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !200, file: !105, line: 126, baseType: !21, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !200, file: !105, line: 127, baseType: !212, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !78, line: 620, size: 320, elements: !214)
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222, !223}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !213, file: !78, line: 621, baseType: !26, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !213, file: !78, line: 621, baseType: !49, size: 8, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !213, file: !78, line: 621, baseType: !49, size: 8, offset: 72)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !213, file: !78, line: 621, baseType: !54, size: 16, offset: 80)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !213, file: !78, line: 621, baseType: !54, size: 16, offset: 96)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !213, file: !78, line: 621, baseType: !49, size: 8, offset: 112)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !213, file: !78, line: 622, baseType: !43, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !213, file: !78, line: 623, baseType: !103, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !213, file: !78, line: 624, baseType: !21, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !200, file: !105, line: 128, baseType: !103, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !200, file: !105, line: 129, baseType: !103, size: 64, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !200, file: !105, line: 130, baseType: !99, size: 64, offset: 448)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !200, file: !105, line: 131, baseType: !49, size: 8, offset: 512)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !104, file: !105, line: 376, baseType: !229, size: 448)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !105, line: 134, size: 448, elements: !230)
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !242}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !229, file: !105, line: 135, baseType: !103, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !229, file: !105, line: 135, baseType: !49, size: 8, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !229, file: !105, line: 135, baseType: !49, size: 8, offset: 72)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !229, file: !105, line: 135, baseType: !54, size: 16, offset: 80)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !229, file: !105, line: 135, baseType: !49, size: 8, offset: 96)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !229, file: !105, line: 135, baseType: !49, size: 8, offset: 104)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !229, file: !105, line: 136, baseType: !99, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !229, file: !105, line: 137, baseType: !103, size: 64, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !229, file: !105, line: 138, baseType: !103, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !229, file: !105, line: 139, baseType: !241, size: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !15, line: 129, baseType: !21)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !229, file: !105, line: 140, baseType: !16, size: 32, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !104, file: !105, line: 377, baseType: !244, size: 320)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !105, line: 184, size: 320, elements: !245)
!245 = !{!246, !247, !248, !249, !250, !251, !255}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !244, file: !105, line: 185, baseType: !103, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !244, file: !105, line: 185, baseType: !49, size: 8, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !244, file: !105, line: 185, baseType: !49, size: 8, offset: 72)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !244, file: !105, line: 185, baseType: !54, size: 16, offset: 80)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !244, file: !105, line: 185, baseType: !49, size: 8, offset: 96)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !244, file: !105, line: 185, baseType: !252, size: 128, offset: 128)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 128, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 2)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !244, file: !105, line: 185, baseType: !103, size: 64, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !104, file: !105, line: 378, baseType: !257, size: 384)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !105, line: 187, size: 384, elements: !258)
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !257, file: !105, line: 188, baseType: !103, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !257, file: !105, line: 188, baseType: !49, size: 8, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !257, file: !105, line: 188, baseType: !49, size: 8, offset: 72)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !257, file: !105, line: 188, baseType: !54, size: 16, offset: 80)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !257, file: !105, line: 188, baseType: !49, size: 8, offset: 96)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !257, file: !105, line: 189, baseType: !252, size: 128, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !257, file: !105, line: 189, baseType: !103, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !257, file: !105, line: 189, baseType: !267, size: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !78, line: 480, size: 576, elements: !269)
!269 = !{!270, !271, !272, !273, !281, !296, !329, !330, !331, !332, !333, !334}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !268, file: !78, line: 481, baseType: !99, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !268, file: !78, line: 482, baseType: !267, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !78, line: 483, baseType: !267, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !268, file: !78, line: 484, baseType: !274, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !78, line: 497, size: 256, elements: !276)
!276 = !{!277, !278, !279, !280}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !275, file: !78, line: 498, baseType: !274, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !275, file: !78, line: 499, baseType: !274, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !275, file: !78, line: 500, baseType: !267, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !275, file: !78, line: 501, baseType: !16, size: 32, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !268, file: !78, line: 485, baseType: !282, size: 64, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !78, line: 466, size: 320, elements: !284)
!284 = !{!285, !290, !291, !292, !293, !294, !295}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !283, file: !78, line: 467, baseType: !286, size: 128)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !78, line: 459, size: 128, elements: !287)
!287 = !{!288, !289}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !286, file: !78, line: 460, baseType: !49, size: 8)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !286, file: !78, line: 461, baseType: !21, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !283, file: !78, line: 468, baseType: !286, size: 128, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !283, file: !78, line: 469, baseType: !54, size: 16, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !283, file: !78, line: 470, baseType: !49, size: 8, offset: 272)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !283, file: !78, line: 471, baseType: !49, size: 8, offset: 280)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !283, file: !78, line: 472, baseType: !49, size: 8, offset: 288)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !283, file: !78, line: 473, baseType: !49, size: 8, offset: 296)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !268, file: !78, line: 486, baseType: !297, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !78, line: 448, size: 192, elements: !299)
!299 = !{!300, !324, !325, !326, !327, !328}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !298, file: !78, line: 449, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !78, line: 438, size: 64, elements: !302)
!302 = !{!303, !304, !318}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !301, file: !78, line: 439, baseType: !99, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !301, file: !78, line: 440, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !78, line: 419, size: 256, elements: !307)
!307 = !{!308, !314, !315, !316, !317}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !306, file: !78, line: 420, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !15, line: 1049, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!16, !313, !16, !26}
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !15, line: 424, baseType: !26)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !306, file: !78, line: 421, baseType: !26, size: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !306, file: !78, line: 422, baseType: !99, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !306, file: !78, line: 423, baseType: !49, size: 8, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !306, file: !78, line: 424, baseType: !49, size: 8, offset: 200)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !301, file: !78, line: 441, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !78, line: 429, size: 128, elements: !321)
!321 = !{!322, !323}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !320, file: !78, line: 430, baseType: !99, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !78, line: 431, baseType: !319, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !298, file: !78, line: 450, baseType: !282, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !298, file: !78, line: 451, baseType: !49, size: 8, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !298, file: !78, line: 452, baseType: !49, size: 8, offset: 136)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !298, file: !78, line: 453, baseType: !49, size: 8, offset: 144)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !298, file: !78, line: 454, baseType: !49, size: 8, offset: 152)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !268, file: !78, line: 487, baseType: !21, size: 64, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !268, file: !78, line: 488, baseType: !16, size: 32, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !268, file: !78, line: 489, baseType: !54, size: 16, offset: 480)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !268, file: !78, line: 490, baseType: !54, size: 16, offset: 496)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !268, file: !78, line: 491, baseType: !49, size: 8, offset: 512)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !268, file: !78, line: 492, baseType: !49, size: 8, offset: 520)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !104, file: !105, line: 379, baseType: !336, size: 384)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !105, line: 192, size: 384, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !336, file: !105, line: 193, baseType: !103, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !336, file: !105, line: 193, baseType: !49, size: 8, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !336, file: !105, line: 193, baseType: !49, size: 8, offset: 72)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !336, file: !105, line: 193, baseType: !54, size: 16, offset: 80)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !105, line: 193, baseType: !49, size: 8, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !336, file: !105, line: 193, baseType: !252, size: 128, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !336, file: !105, line: 193, baseType: !103, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !336, file: !105, line: 193, baseType: !16, size: 32, offset: 320)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !336, file: !105, line: 194, baseType: !16, size: 32, offset: 352)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !104, file: !105, line: 380, baseType: !348, size: 384)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !105, line: 197, size: 384, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !358, !359}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !348, file: !105, line: 198, baseType: !103, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !348, file: !105, line: 198, baseType: !49, size: 8, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !348, file: !105, line: 198, baseType: !49, size: 8, offset: 72)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !348, file: !105, line: 198, baseType: !54, size: 16, offset: 80)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !105, line: 198, baseType: !49, size: 8, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !348, file: !105, line: 200, baseType: !49, size: 8, offset: 104)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !348, file: !105, line: 201, baseType: !49, size: 8, offset: 112)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !348, file: !105, line: 202, baseType: !252, size: 128, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !348, file: !105, line: 202, baseType: !103, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !348, file: !105, line: 202, baseType: !360, size: 64, offset: 320)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !15, line: 128, baseType: !21)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !104, file: !105, line: 381, baseType: !362, size: 320)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !105, line: 205, size: 320, elements: !363)
!363 = !{!364, !365, !366, !367, !368, !369, !370}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !362, file: !105, line: 206, baseType: !103, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !362, file: !105, line: 206, baseType: !49, size: 8, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !362, file: !105, line: 206, baseType: !49, size: 8, offset: 72)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !362, file: !105, line: 206, baseType: !54, size: 16, offset: 80)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !362, file: !105, line: 206, baseType: !49, size: 8, offset: 96)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !362, file: !105, line: 206, baseType: !252, size: 128, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !362, file: !105, line: 206, baseType: !103, size: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !104, file: !105, line: 382, baseType: !372, size: 384)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !105, line: 233, size: 384, elements: !373)
!373 = !{!374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !372, file: !105, line: 234, baseType: !103, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !372, file: !105, line: 234, baseType: !49, size: 8, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !372, file: !105, line: 234, baseType: !49, size: 8, offset: 72)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !372, file: !105, line: 234, baseType: !54, size: 16, offset: 80)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !372, file: !105, line: 234, baseType: !49, size: 8, offset: 96)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !372, file: !105, line: 234, baseType: !49, size: 8, offset: 104)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !372, file: !105, line: 234, baseType: !49, size: 8, offset: 112)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !372, file: !105, line: 234, baseType: !49, size: 8, offset: 120)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !372, file: !105, line: 234, baseType: !99, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !372, file: !105, line: 234, baseType: !16, size: 32, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !372, file: !105, line: 234, baseType: !16, size: 32, offset: 224)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !372, file: !105, line: 234, baseType: !16, size: 32, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !372, file: !105, line: 234, baseType: !49, size: 8, offset: 288)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !372, file: !105, line: 234, baseType: !49, size: 8, offset: 296)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !372, file: !105, line: 234, baseType: !103, size: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !104, file: !105, line: 383, baseType: !390, size: 576)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !105, line: 237, size: 576, elements: !391)
!391 = !{!392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !390, file: !105, line: 238, baseType: !103, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !390, file: !105, line: 238, baseType: !49, size: 8, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !390, file: !105, line: 238, baseType: !49, size: 8, offset: 72)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !390, file: !105, line: 238, baseType: !54, size: 16, offset: 80)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !390, file: !105, line: 238, baseType: !49, size: 8, offset: 96)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !390, file: !105, line: 238, baseType: !49, size: 8, offset: 104)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !390, file: !105, line: 238, baseType: !49, size: 8, offset: 112)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !390, file: !105, line: 238, baseType: !49, size: 8, offset: 120)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !390, file: !105, line: 238, baseType: !99, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !390, file: !105, line: 238, baseType: !16, size: 32, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !390, file: !105, line: 238, baseType: !16, size: 32, offset: 224)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !390, file: !105, line: 238, baseType: !16, size: 32, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !390, file: !105, line: 238, baseType: !49, size: 8, offset: 288)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !390, file: !105, line: 238, baseType: !49, size: 8, offset: 296)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !390, file: !105, line: 238, baseType: !54, size: 16, offset: 304)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !390, file: !105, line: 239, baseType: !103, size: 64, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !390, file: !105, line: 240, baseType: !71, size: 64, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !390, file: !105, line: 241, baseType: !54, size: 16, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !390, file: !105, line: 242, baseType: !71, size: 64, offset: 512)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !104, file: !105, line: 384, baseType: !412, size: 384)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !105, line: 262, size: 384, elements: !413)
!413 = !{!414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !412, file: !105, line: 263, baseType: !103, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !412, file: !105, line: 263, baseType: !49, size: 8, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !412, file: !105, line: 263, baseType: !49, size: 8, offset: 72)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !412, file: !105, line: 263, baseType: !54, size: 16, offset: 80)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !412, file: !105, line: 263, baseType: !49, size: 8, offset: 96)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !412, file: !105, line: 263, baseType: !49, size: 8, offset: 104)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !412, file: !105, line: 263, baseType: !49, size: 8, offset: 112)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !412, file: !105, line: 263, baseType: !49, size: 8, offset: 120)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !412, file: !105, line: 263, baseType: !99, size: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !412, file: !105, line: 263, baseType: !16, size: 32, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !412, file: !105, line: 263, baseType: !16, size: 32, offset: 224)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !412, file: !105, line: 263, baseType: !16, size: 32, offset: 256)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !412, file: !105, line: 263, baseType: !49, size: 8, offset: 288)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !412, file: !105, line: 263, baseType: !49, size: 8, offset: 296)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !412, file: !105, line: 263, baseType: !49, size: 8, offset: 304)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !412, file: !105, line: 264, baseType: !103, size: 64, offset: 320)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !104, file: !105, line: 385, baseType: !431, size: 448)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !105, line: 245, size: 448, elements: !432)
!432 = !{!433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !431, file: !105, line: 246, baseType: !103, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !431, file: !105, line: 246, baseType: !49, size: 8, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !431, file: !105, line: 246, baseType: !49, size: 8, offset: 72)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !431, file: !105, line: 246, baseType: !54, size: 16, offset: 80)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !431, file: !105, line: 246, baseType: !49, size: 8, offset: 96)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !431, file: !105, line: 246, baseType: !49, size: 8, offset: 104)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !431, file: !105, line: 246, baseType: !49, size: 8, offset: 112)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !431, file: !105, line: 246, baseType: !49, size: 8, offset: 120)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !431, file: !105, line: 246, baseType: !99, size: 64, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !431, file: !105, line: 246, baseType: !16, size: 32, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !431, file: !105, line: 246, baseType: !16, size: 32, offset: 224)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !431, file: !105, line: 246, baseType: !16, size: 32, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !431, file: !105, line: 246, baseType: !49, size: 8, offset: 288)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !431, file: !105, line: 246, baseType: !49, size: 8, offset: 296)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !431, file: !105, line: 246, baseType: !103, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !431, file: !105, line: 247, baseType: !103, size: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !104, file: !105, line: 386, baseType: !450, size: 448)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !105, line: 250, size: 448, elements: !451)
!451 = !{!452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !450, file: !105, line: 251, baseType: !103, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !450, file: !105, line: 251, baseType: !49, size: 8, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !450, file: !105, line: 251, baseType: !49, size: 8, offset: 72)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !450, file: !105, line: 251, baseType: !54, size: 16, offset: 80)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !450, file: !105, line: 251, baseType: !49, size: 8, offset: 96)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !450, file: !105, line: 251, baseType: !49, size: 8, offset: 104)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !450, file: !105, line: 251, baseType: !49, size: 8, offset: 112)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !450, file: !105, line: 251, baseType: !49, size: 8, offset: 120)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !450, file: !105, line: 251, baseType: !99, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !450, file: !105, line: 251, baseType: !16, size: 32, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !450, file: !105, line: 251, baseType: !16, size: 32, offset: 224)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !450, file: !105, line: 251, baseType: !16, size: 32, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !450, file: !105, line: 251, baseType: !49, size: 8, offset: 288)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !450, file: !105, line: 251, baseType: !49, size: 8, offset: 296)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !450, file: !105, line: 256, baseType: !103, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !450, file: !105, line: 257, baseType: !103, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !104, file: !105, line: 387, baseType: !469, size: 512)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !105, line: 273, size: 512, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478, !483, !484}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !469, file: !105, line: 274, baseType: !103, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !469, file: !105, line: 274, baseType: !49, size: 8, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !469, file: !105, line: 274, baseType: !49, size: 8, offset: 72)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !469, file: !105, line: 274, baseType: !54, size: 16, offset: 80)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !105, line: 274, baseType: !49, size: 8, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !469, file: !105, line: 274, baseType: !99, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !469, file: !105, line: 275, baseType: !16, size: 32, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !469, file: !105, line: 276, baseType: !479, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !15, line: 1052, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !313, !16, !26}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !469, file: !105, line: 277, baseType: !26, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !469, file: !105, line: 278, baseType: !252, size: 128, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !104, file: !105, line: 388, baseType: !486, size: 512)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !105, line: 281, size: 512, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495, !501, !502, !503, !509, !510}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !486, file: !105, line: 282, baseType: !103, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !486, file: !105, line: 282, baseType: !49, size: 8, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !486, file: !105, line: 282, baseType: !49, size: 8, offset: 72)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !486, file: !105, line: 282, baseType: !54, size: 16, offset: 80)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !486, file: !105, line: 282, baseType: !49, size: 8, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !486, file: !105, line: 282, baseType: !49, size: 8, offset: 104)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !486, file: !105, line: 283, baseType: !49, size: 8, offset: 112)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !486, file: !105, line: 284, baseType: !496, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !15, line: 1084, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!14, !16, !241, !16, !500, !26, !26}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !486, file: !105, line: 285, baseType: !99, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !486, file: !105, line: 286, baseType: !26, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !486, file: !105, line: 287, baseType: !504, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !15, line: 1102, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!14, !313, !16, !26, !508}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !486, file: !105, line: 288, baseType: !103, size: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !486, file: !105, line: 289, baseType: !103, size: 64, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !104, file: !105, line: 389, baseType: !512, size: 512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !105, line: 307, size: 512, elements: !513)
!513 = !{!514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !512, file: !105, line: 308, baseType: !103, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !512, file: !105, line: 308, baseType: !49, size: 8, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !512, file: !105, line: 308, baseType: !49, size: 8, offset: 72)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !512, file: !105, line: 308, baseType: !54, size: 16, offset: 80)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !512, file: !105, line: 308, baseType: !49, size: 8, offset: 96)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !512, file: !105, line: 308, baseType: !49, size: 8, offset: 104)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !512, file: !105, line: 309, baseType: !49, size: 8, offset: 112)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !512, file: !105, line: 310, baseType: !49, size: 8, offset: 120)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !512, file: !105, line: 311, baseType: !26, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !512, file: !105, line: 312, baseType: !99, size: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !512, file: !105, line: 313, baseType: !162, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !512, file: !105, line: 314, baseType: !71, size: 64, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !512, file: !105, line: 315, baseType: !71, size: 64, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !512, file: !105, line: 316, baseType: !16, size: 32, offset: 448)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !104, file: !105, line: 390, baseType: !529, size: 448)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !105, line: 340, size: 448, elements: !530)
!530 = !{!531, !532, !533, !534, !535, !536, !537, !538, !539, !540}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !529, file: !105, line: 341, baseType: !103, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !529, file: !105, line: 341, baseType: !49, size: 8, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !529, file: !105, line: 341, baseType: !49, size: 8, offset: 72)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !529, file: !105, line: 341, baseType: !54, size: 16, offset: 80)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !529, file: !105, line: 341, baseType: !49, size: 8, offset: 96)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !529, file: !105, line: 341, baseType: !99, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !529, file: !105, line: 342, baseType: !99, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !529, file: !105, line: 343, baseType: !26, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !529, file: !105, line: 344, baseType: !71, size: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !529, file: !105, line: 345, baseType: !16, size: 32, offset: 384)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !104, file: !105, line: 391, baseType: !542, size: 256)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !105, line: 350, size: 256, elements: !543)
!543 = !{!544, !545, !546, !547, !548, !549, !554}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !542, file: !105, line: 351, baseType: !103, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !542, file: !105, line: 351, baseType: !49, size: 8, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !542, file: !105, line: 351, baseType: !49, size: 8, offset: 72)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !542, file: !105, line: 351, baseType: !54, size: 16, offset: 80)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !542, file: !105, line: 351, baseType: !49, size: 8, offset: 96)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !542, file: !105, line: 351, baseType: !550, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !15, line: 1055, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !313, !26}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !542, file: !105, line: 352, baseType: !26, size: 64, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !104, file: !105, line: 392, baseType: !556, size: 192)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !105, line: 357, size: 192, elements: !557)
!557 = !{!558, !559, !560, !561, !562, !563}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !556, file: !105, line: 358, baseType: !103, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !556, file: !105, line: 358, baseType: !49, size: 8, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !556, file: !105, line: 358, baseType: !49, size: 8, offset: 72)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !556, file: !105, line: 358, baseType: !54, size: 16, offset: 80)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !556, file: !105, line: 358, baseType: !49, size: 8, offset: 96)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !556, file: !105, line: 358, baseType: !103, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !104, file: !105, line: 399, baseType: !100, size: 384)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !100, file: !78, line: 135, baseType: !49, size: 8, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !100, file: !78, line: 136, baseType: !49, size: 8, offset: 72)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !78, line: 137, baseType: !54, size: 16, offset: 80)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !100, file: !78, line: 138, baseType: !569, size: 32, offset: 96)
!569 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !570, line: 327, size: 32, elements: !571)
!570 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!571 = !{!572, !573}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !569, file: !570, line: 328, baseType: !16, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !569, file: !570, line: 329, baseType: !574, size: 32)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !575)
!575 = !{!576}
!576 = !DISubrange(count: 4)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !100, file: !78, line: 139, baseType: !99, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !100, file: !78, line: 140, baseType: !99, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !100, file: !78, line: 141, baseType: !99, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !100, file: !78, line: 142, baseType: !61, size: 16, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !90, file: !78, line: 829, baseType: !582, size: 64, offset: 320)
!582 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !78, line: 716, size: 64, elements: !583)
!583 = !{!584, !585, !586, !587, !588, !589}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !582, file: !78, line: 717, baseType: !21, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !582, file: !78, line: 718, baseType: !16, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !582, file: !78, line: 719, baseType: !137, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !582, file: !78, line: 720, baseType: !71, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !582, file: !78, line: 721, baseType: !137, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !582, file: !78, line: 722, baseType: !86, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !90, file: !78, line: 829, baseType: !49, size: 8, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !87, file: !78, line: 877, baseType: !592, size: 640)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !78, line: 835, size: 640, elements: !593)
!593 = !{!594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !592, file: !78, line: 836, baseType: !86, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !592, file: !78, line: 836, baseType: !49, size: 8, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !592, file: !78, line: 836, baseType: !49, size: 8, offset: 72)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !592, file: !78, line: 836, baseType: !54, size: 16, offset: 80)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !592, file: !78, line: 836, baseType: !71, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !592, file: !78, line: 836, baseType: !86, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !592, file: !78, line: 836, baseType: !99, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !592, file: !78, line: 836, baseType: !582, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !592, file: !78, line: 836, baseType: !49, size: 8, offset: 384)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !592, file: !78, line: 836, baseType: !137, size: 64, offset: 448)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !592, file: !78, line: 837, baseType: !71, size: 64, offset: 512)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !592, file: !78, line: 838, baseType: !16, size: 32, offset: 576)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !592, file: !78, line: 839, baseType: !16, size: 32, offset: 608)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !87, file: !78, line: 878, baseType: !608, size: 1600)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !78, line: 846, size: 1600, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !608, file: !78, line: 847, baseType: !86, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !608, file: !78, line: 847, baseType: !49, size: 8, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !608, file: !78, line: 847, baseType: !49, size: 8, offset: 72)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !608, file: !78, line: 847, baseType: !54, size: 16, offset: 80)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !608, file: !78, line: 847, baseType: !71, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !608, file: !78, line: 847, baseType: !86, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !608, file: !78, line: 847, baseType: !99, size: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !608, file: !78, line: 847, baseType: !582, size: 64, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !608, file: !78, line: 847, baseType: !49, size: 8, offset: 384)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !608, file: !78, line: 847, baseType: !86, size: 64, offset: 448)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !608, file: !78, line: 848, baseType: !86, size: 64, offset: 512)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !608, file: !78, line: 849, baseType: !137, size: 64, offset: 576)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !608, file: !78, line: 850, baseType: !49, size: 8, offset: 640)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !608, file: !78, line: 851, baseType: !137, size: 64, offset: 704)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !608, file: !78, line: 852, baseType: !137, size: 64, offset: 768)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !608, file: !78, line: 853, baseType: !137, size: 64, offset: 832)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !608, file: !78, line: 854, baseType: !574, size: 32, offset: 896)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !608, file: !78, line: 855, baseType: !16, size: 32, offset: 928)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !608, file: !78, line: 856, baseType: !16, size: 32, offset: 960)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !608, file: !78, line: 857, baseType: !16, size: 32, offset: 992)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !608, file: !78, line: 858, baseType: !16, size: 32, offset: 1024)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !608, file: !78, line: 859, baseType: !16, size: 32, offset: 1056)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !608, file: !78, line: 860, baseType: !16, size: 32, offset: 1088)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !608, file: !78, line: 861, baseType: !16, size: 32, offset: 1120)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !608, file: !78, line: 862, baseType: !16, size: 32, offset: 1152)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !608, file: !78, line: 863, baseType: !16, size: 32, offset: 1184)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !608, file: !78, line: 864, baseType: !16, size: 32, offset: 1216)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !608, file: !78, line: 865, baseType: !16, size: 32, offset: 1248)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !608, file: !78, line: 866, baseType: !16, size: 32, offset: 1280)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !608, file: !78, line: 867, baseType: !16, size: 32, offset: 1312)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !608, file: !78, line: 868, baseType: !54, size: 16, offset: 1344)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !608, file: !78, line: 869, baseType: !49, size: 8, offset: 1360)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !608, file: !78, line: 870, baseType: !49, size: 8, offset: 1368)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !608, file: !78, line: 871, baseType: !49, size: 8, offset: 1376)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !608, file: !78, line: 872, baseType: !645, size: 160, offset: 1384)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, elements: !646)
!646 = !{!647}
!647 = !DISubrange(count: 20)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !77, file: !78, line: 900, baseType: !99, size: 64, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !77, file: !78, line: 901, baseType: !650, size: 64, offset: 448)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !78, line: 663, size: 640, elements: !652)
!652 = !{!653, !661, !674, !683, !692, !705, !719, !720, !732}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !651, file: !78, line: 664, baseType: !654, size: 128)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !78, line: 567, size: 128, elements: !655)
!655 = !{!656, !657, !658, !659, !660}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !654, file: !78, line: 568, baseType: !26, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !654, file: !78, line: 568, baseType: !49, size: 8, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !654, file: !78, line: 568, baseType: !49, size: 8, offset: 72)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !654, file: !78, line: 568, baseType: !54, size: 16, offset: 80)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !654, file: !78, line: 568, baseType: !54, size: 16, offset: 96)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !651, file: !78, line: 665, baseType: !662, size: 384)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !78, line: 593, size: 384, elements: !663)
!663 = !{!664, !665, !666, !667, !668, !669, !670, !671, !672, !673}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !662, file: !78, line: 594, baseType: !26, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !662, file: !78, line: 594, baseType: !49, size: 8, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !662, file: !78, line: 594, baseType: !49, size: 8, offset: 72)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !662, file: !78, line: 594, baseType: !54, size: 16, offset: 80)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !662, file: !78, line: 594, baseType: !54, size: 16, offset: 96)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !662, file: !78, line: 594, baseType: !54, size: 16, offset: 112)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !662, file: !78, line: 595, baseType: !86, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !662, file: !78, line: 596, baseType: !71, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !662, file: !78, line: 597, baseType: !71, size: 64, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !662, file: !78, line: 598, baseType: !21, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !651, file: !78, line: 666, baseType: !675, size: 192)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !78, line: 573, size: 192, elements: !676)
!676 = !{!677, !678, !679, !680, !681, !682}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !675, file: !78, line: 574, baseType: !26, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !675, file: !78, line: 574, baseType: !49, size: 8, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !675, file: !78, line: 574, baseType: !49, size: 8, offset: 72)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !675, file: !78, line: 574, baseType: !54, size: 16, offset: 80)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !675, file: !78, line: 574, baseType: !54, size: 16, offset: 96)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !675, file: !78, line: 574, baseType: !103, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !651, file: !78, line: 667, baseType: !684, size: 192)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !78, line: 604, size: 192, elements: !685)
!685 = !{!686, !687, !688, !689, !690, !691}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !684, file: !78, line: 605, baseType: !26, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !684, file: !78, line: 605, baseType: !49, size: 8, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !684, file: !78, line: 605, baseType: !49, size: 8, offset: 72)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !684, file: !78, line: 605, baseType: !54, size: 16, offset: 80)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !684, file: !78, line: 605, baseType: !54, size: 16, offset: 96)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !684, file: !78, line: 605, baseType: !99, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !651, file: !78, line: 668, baseType: !693, size: 448)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !78, line: 608, size: 448, elements: !694)
!694 = !{!695, !696, !697, !698, !699, !700, !701, !702, !703, !704}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !693, file: !78, line: 609, baseType: !26, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !693, file: !78, line: 609, baseType: !49, size: 8, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !693, file: !78, line: 609, baseType: !49, size: 8, offset: 72)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !693, file: !78, line: 609, baseType: !54, size: 16, offset: 80)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !693, file: !78, line: 609, baseType: !54, size: 16, offset: 96)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !693, file: !78, line: 609, baseType: !16, size: 32, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !693, file: !78, line: 610, baseType: !86, size: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !693, file: !78, line: 611, baseType: !71, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !693, file: !78, line: 612, baseType: !71, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !693, file: !78, line: 613, baseType: !16, size: 32, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !651, file: !78, line: 669, baseType: !706, size: 512)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !78, line: 580, size: 512, elements: !707)
!707 = !{!708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !706, file: !78, line: 581, baseType: !26, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !706, file: !78, line: 581, baseType: !49, size: 8, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !706, file: !78, line: 581, baseType: !49, size: 8, offset: 72)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !706, file: !78, line: 581, baseType: !54, size: 16, offset: 80)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !706, file: !78, line: 581, baseType: !54, size: 16, offset: 96)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !706, file: !78, line: 581, baseType: !16, size: 32, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !706, file: !78, line: 582, baseType: !103, size: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !706, file: !78, line: 583, baseType: !103, size: 64, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !706, file: !78, line: 584, baseType: !43, size: 64, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !706, file: !78, line: 585, baseType: !26, size: 64, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !706, file: !78, line: 586, baseType: !16, size: 32, offset: 448)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !651, file: !78, line: 670, baseType: !213, size: 320)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !651, file: !78, line: 671, baseType: !721, size: 640)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !78, line: 631, size: 640, elements: !722)
!722 = !{!723, !724, !725, !726, !727, !728}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !721, file: !78, line: 632, baseType: !26, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !721, file: !78, line: 632, baseType: !49, size: 8, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !721, file: !78, line: 632, baseType: !49, size: 8, offset: 72)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !721, file: !78, line: 632, baseType: !54, size: 16, offset: 80)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !721, file: !78, line: 632, baseType: !54, size: 16, offset: 96)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !721, file: !78, line: 633, baseType: !729, size: 512, offset: 128)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 512, elements: !730)
!730 = !{!731}
!731 = !DISubrange(count: 8)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !651, file: !78, line: 672, baseType: !733, size: 320)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !78, line: 654, size: 320, elements: !734)
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742, !743}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !733, file: !78, line: 655, baseType: !26, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !733, file: !78, line: 655, baseType: !49, size: 8, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !733, file: !78, line: 655, baseType: !49, size: 8, offset: 72)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !733, file: !78, line: 655, baseType: !54, size: 16, offset: 80)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !733, file: !78, line: 655, baseType: !54, size: 16, offset: 96)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !733, file: !78, line: 655, baseType: !49, size: 8, offset: 112)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !733, file: !78, line: 656, baseType: !99, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !733, file: !78, line: 657, baseType: !103, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !733, file: !78, line: 658, baseType: !744, size: 64, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !78, line: 645, size: 128, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !745, file: !78, line: 646, baseType: !479, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !745, file: !78, line: 647, baseType: !26, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !77, file: !78, line: 902, baseType: !86, size: 64, offset: 512)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !77, file: !78, line: 903, baseType: !16, size: 32, offset: 576)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !44, file: !45, line: 61, baseType: !16, size: 32, offset: 1088)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !44, file: !45, line: 62, baseType: !16, size: 32, offset: 1120)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !44, file: !45, line: 63, baseType: !54, size: 16, offset: 1152)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !44, file: !45, line: 64, baseType: !49, size: 8, offset: 1168)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !44, file: !45, line: 66, baseType: !756, size: 2688, offset: 1216)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 2688, elements: !757)
!757 = !{!758}
!758 = !DISubrange(count: 7)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !44, file: !45, line: 67, baseType: !760, size: 3072, offset: 3904)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 3072, elements: !730)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !44, file: !45, line: 68, baseType: !762, size: 576, offset: 6976)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 576, elements: !32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !44, file: !45, line: 69, baseType: !162, size: 64, offset: 7552)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !44, file: !45, line: 71, baseType: !71, size: 64, offset: 7616)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !44, file: !45, line: 72, baseType: !162, size: 64, offset: 7680)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !44, file: !45, line: 73, baseType: !650, size: 64, offset: 7744)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !44, file: !45, line: 74, baseType: !99, size: 64, offset: 7808)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !44, file: !45, line: 75, baseType: !103, size: 64, offset: 7872)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !44, file: !45, line: 76, baseType: !99, size: 64, offset: 7936)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !44, file: !45, line: 77, baseType: !86, size: 64, offset: 8000)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !44, file: !45, line: 78, baseType: !103, size: 64, offset: 8064)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !44, file: !45, line: 79, baseType: !99, size: 64, offset: 8128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !44, file: !45, line: 80, baseType: !137, size: 64, offset: 8192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !44, file: !45, line: 81, baseType: !86, size: 64, offset: 8256)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !44, file: !45, line: 82, baseType: !776, size: 64, offset: 8320)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !778)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !78, line: 702, size: 128, elements: !779)
!779 = !{!780, !781, !782, !783, !784, !785}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !778, file: !78, line: 706, baseType: !16, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !778, file: !78, line: 707, baseType: !16, size: 32, offset: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !778, file: !78, line: 708, baseType: !54, size: 16, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !778, file: !78, line: 709, baseType: !49, size: 8, offset: 80)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !778, file: !78, line: 710, baseType: !49, size: 8, offset: 88)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !778, file: !78, line: 711, baseType: !49, size: 8, offset: 96)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !44, file: !45, line: 83, baseType: !86, size: 64, offset: 8384)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !44, file: !45, line: 84, baseType: !103, size: 64, offset: 8448)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !44, file: !45, line: 85, baseType: !650, size: 64, offset: 8512)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !44, file: !45, line: 86, baseType: !103, size: 64, offset: 8576)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !44, file: !45, line: 87, baseType: !650, size: 64, offset: 8640)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !44, file: !45, line: 88, baseType: !86, size: 64, offset: 8704)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !44, file: !45, line: 89, baseType: !86, size: 64, offset: 8768)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !44, file: !45, line: 90, baseType: !212, size: 64, offset: 8832)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !44, file: !45, line: 91, baseType: !795, size: 64, offset: 8896)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !78, line: 637, baseType: !796)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!14, !43, !799}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !44, file: !45, line: 92, baseType: !801, size: 64, offset: 8960)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !78, line: 641, baseType: !194)
!802 = !{}
!803 = !DILocalVariable(name: "walk_state", arg: 1, scope: !40, file: !3, line: 51, type: !43)
!804 = !DILocation(line: 51, column: 61, scope: !40)
!805 = !DILocalVariable(name: "operand", scope: !40, file: !3, line: 53, type: !162)
!806 = !DILocation(line: 53, column: 30, scope: !40)
!807 = !DILocation(line: 53, column: 41, scope: !40)
!808 = !DILocation(line: 53, column: 53, scope: !40)
!809 = !DILocalVariable(name: "fatal", scope: !40, file: !3, line: 54, type: !810)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_signal_fatal_info", file: !812, line: 38, size: 96, elements: !813)
!812 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/lizy2001/genbc/linux")
!813 = !{!814, !815, !816}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !811, file: !812, line: 39, baseType: !16, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !811, file: !812, line: 40, baseType: !16, size: 32, offset: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "argument", scope: !811, file: !812, line: 41, baseType: !16, size: 32, offset: 64)
!817 = !DILocation(line: 54, column: 33, scope: !40)
!818 = !DILocalVariable(name: "status", scope: !40, file: !3, line: 55, type: !14)
!819 = !DILocation(line: 55, column: 14, scope: !40)
!820 = !DILocation(line: 60, column: 10, scope: !40)
!821 = !DILocation(line: 60, column: 22, scope: !40)
!822 = !DILocation(line: 60, column: 2, scope: !40)
!823 = !DILocation(line: 70, column: 11, scope: !824)
!824 = distinct !DILexicalBlock(scope: !40, file: !3, line: 60, column: 30)
!825 = !DILocation(line: 70, column: 9, scope: !824)
!826 = !DILocation(line: 71, column: 7, scope: !827)
!827 = distinct !DILexicalBlock(scope: !824, file: !3, line: 71, column: 7)
!828 = !DILocation(line: 71, column: 7, scope: !824)
!829 = !DILocation(line: 72, column: 24, scope: !830)
!830 = distinct !DILexicalBlock(scope: !827, file: !3, line: 71, column: 14)
!831 = !DILocation(line: 72, column: 36, scope: !830)
!832 = !DILocation(line: 72, column: 44, scope: !830)
!833 = !DILocation(line: 72, column: 18, scope: !830)
!834 = !DILocation(line: 72, column: 4, scope: !830)
!835 = !DILocation(line: 72, column: 11, scope: !830)
!836 = !DILocation(line: 72, column: 16, scope: !830)
!837 = !DILocation(line: 73, column: 24, scope: !830)
!838 = !DILocation(line: 73, column: 36, scope: !830)
!839 = !DILocation(line: 73, column: 44, scope: !830)
!840 = !DILocation(line: 73, column: 18, scope: !830)
!841 = !DILocation(line: 73, column: 4, scope: !830)
!842 = !DILocation(line: 73, column: 11, scope: !830)
!843 = !DILocation(line: 73, column: 16, scope: !830)
!844 = !DILocation(line: 74, column: 28, scope: !830)
!845 = !DILocation(line: 74, column: 40, scope: !830)
!846 = !DILocation(line: 74, column: 48, scope: !830)
!847 = !DILocation(line: 74, column: 22, scope: !830)
!848 = !DILocation(line: 74, column: 4, scope: !830)
!849 = !DILocation(line: 74, column: 11, scope: !830)
!850 = !DILocation(line: 74, column: 20, scope: !830)
!851 = !DILocation(line: 75, column: 3, scope: !830)
!852 = !DILocation(line: 79, column: 46, scope: !824)
!853 = !DILocation(line: 79, column: 12, scope: !824)
!854 = !DILocation(line: 79, column: 10, scope: !824)
!855 = !DILocation(line: 83, column: 3, scope: !824)
!856 = !DILocation(line: 84, column: 3, scope: !824)
!857 = !DILocation(line: 95, column: 3, scope: !824)
!858 = !DILocation(line: 96, column: 10, scope: !824)
!859 = !DILocation(line: 97, column: 3, scope: !824)
!860 = !DILocation(line: 101, column: 3, scope: !824)
!861 = !DILocation(line: 104, column: 10, scope: !824)
!862 = !DILocation(line: 105, column: 3, scope: !824)
!863 = !DILabel(scope: !40, name: "cleanup", file: !3, line: 108)
!864 = !DILocation(line: 108, column: 1, scope: !40)
!865 = !DILocation(line: 110, column: 2, scope: !40)
!866 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !867, file: !867, line: 50, type: !868, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !802)
!867 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!868 = !DISubroutineType(types: !869)
!869 = !{!26, !20}
!870 = !DILocalVariable(name: "s", arg: 1, scope: !871, file: !6, line: 445, type: !874)
!871 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !872, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !802)
!872 = !DISubroutineType(types: !873)
!873 = !{!26, !874, !24, !877}
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !876, line: 117, flags: DIFlagFwdDecl)
!876 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 55, baseType: !878)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !879, line: 72, baseType: !880)
!879 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !879, line: 16, baseType: !27)
!881 = !DILocation(line: 445, column: 72, scope: !871, inlinedAt: !882)
!882 = distinct !DILocation(line: 552, column: 10, scope: !883, inlinedAt: !888)
!883 = distinct !DILexicalBlock(scope: !884, file: !6, line: 540, column: 34)
!884 = distinct !DILexicalBlock(scope: !885, file: !6, line: 540, column: 6)
!885 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !886, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !802)
!886 = !DISubroutineType(types: !887)
!887 = !{!26, !877, !24}
!888 = distinct !DILocation(line: 52, column: 9, scope: !866)
!889 = !DILocalVariable(name: "flags", arg: 2, scope: !871, file: !6, line: 446, type: !24)
!890 = !DILocation(line: 446, column: 9, scope: !871, inlinedAt: !882)
!891 = !DILocalVariable(name: "size", arg: 3, scope: !871, file: !6, line: 446, type: !877)
!892 = !DILocation(line: 446, column: 23, scope: !871, inlinedAt: !882)
!893 = !DILocalVariable(name: "ret", scope: !871, file: !6, line: 448, type: !26)
!894 = !DILocation(line: 448, column: 8, scope: !871, inlinedAt: !882)
!895 = !DILocalVariable(name: "flags", arg: 1, scope: !896, file: !6, line: 318, type: !24)
!896 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !897, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !802)
!897 = !DISubroutineType(types: !898)
!898 = !{!5, !24}
!899 = !DILocation(line: 318, column: 67, scope: !896, inlinedAt: !900)
!900 = distinct !DILocation(line: 553, column: 20, scope: !883, inlinedAt: !888)
!901 = !DILocalVariable(name: "size", arg: 1, scope: !902, file: !6, line: 346, type: !877)
!902 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !903, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !802)
!903 = !DISubroutineType(types: !904)
!904 = !{!7, !877}
!905 = !DILocation(line: 346, column: 58, scope: !902, inlinedAt: !906)
!906 = distinct !DILocation(line: 547, column: 11, scope: !883, inlinedAt: !888)
!907 = !DILocalVariable(name: "size", arg: 1, scope: !908, file: !6, line: 472, type: !877)
!908 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !909, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !802)
!909 = !DISubroutineType(types: !910)
!910 = !{!26, !877, !24, !7}
!911 = !DILocation(line: 472, column: 28, scope: !908, inlinedAt: !912)
!912 = distinct !DILocation(line: 481, column: 9, scope: !913, inlinedAt: !914)
!913 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !886, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !802)
!914 = distinct !DILocation(line: 545, column: 11, scope: !915, inlinedAt: !888)
!915 = distinct !DILexicalBlock(scope: !883, file: !6, line: 544, column: 7)
!916 = !DILocalVariable(name: "flags", arg: 2, scope: !908, file: !6, line: 472, type: !24)
!917 = !DILocation(line: 472, column: 40, scope: !908, inlinedAt: !912)
!918 = !DILocalVariable(name: "order", arg: 3, scope: !908, file: !6, line: 472, type: !7)
!919 = !DILocation(line: 472, column: 60, scope: !908, inlinedAt: !912)
!920 = !DILocalVariable(name: "size", arg: 1, scope: !913, file: !6, line: 478, type: !877)
!921 = !DILocation(line: 478, column: 51, scope: !913, inlinedAt: !914)
!922 = !DILocalVariable(name: "flags", arg: 2, scope: !913, file: !6, line: 478, type: !24)
!923 = !DILocation(line: 478, column: 63, scope: !913, inlinedAt: !914)
!924 = !DILocalVariable(name: "order", scope: !913, file: !6, line: 480, type: !7)
!925 = !DILocation(line: 480, column: 15, scope: !913, inlinedAt: !914)
!926 = !DILocalVariable(name: "size", arg: 1, scope: !885, file: !6, line: 538, type: !877)
!927 = !DILocation(line: 538, column: 45, scope: !885, inlinedAt: !888)
!928 = !DILocalVariable(name: "flags", arg: 2, scope: !885, file: !6, line: 538, type: !24)
!929 = !DILocation(line: 538, column: 57, scope: !885, inlinedAt: !888)
!930 = !DILocalVariable(name: "index", scope: !883, file: !6, line: 542, type: !7)
!931 = !DILocation(line: 542, column: 16, scope: !883, inlinedAt: !888)
!932 = !DILocalVariable(name: "flags", arg: 1, scope: !933, file: !934, line: 162, type: !27)
!933 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !934, file: !934, line: 162, type: !935, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !802)
!934 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!935 = !DISubroutineType(types: !936)
!936 = !{!937, !27}
!937 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!938 = !DILocation(line: 162, column: 67, scope: !933, inlinedAt: !939)
!939 = distinct !DILocation(line: 52, column: 23, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !867, line: 52, column: 23)
!941 = distinct !DILexicalBlock(scope: !866, file: !867, line: 52, column: 23)
!942 = !DILocalVariable(name: "size", arg: 1, scope: !866, file: !867, line: 50, type: !20)
!943 = !DILocation(line: 50, column: 48, scope: !866)
!944 = !DILocation(line: 52, column: 17, scope: !866)
!945 = !DILocalVariable(name: "_flags", scope: !941, file: !867, line: 52, type: !27)
!946 = !DILocation(line: 52, column: 23, scope: !941)
!947 = !DILocalVariable(name: "__dummy", scope: !948, file: !867, line: 52, type: !27)
!948 = distinct !DILexicalBlock(scope: !949, file: !867, line: 52, column: 23)
!949 = distinct !DILexicalBlock(scope: !941, file: !867, line: 52, column: 23)
!950 = !DILocation(line: 52, column: 23, scope: !948)
!951 = !DILocalVariable(name: "__dummy2", scope: !948, file: !867, line: 52, type: !27)
!952 = !DILocation(line: 52, column: 23, scope: !949)
!953 = !DILocalVariable(name: "__dummy", scope: !954, file: !867, line: 52, type: !27)
!954 = distinct !DILexicalBlock(scope: !940, file: !867, line: 52, column: 23)
!955 = !DILocation(line: 52, column: 23, scope: !954)
!956 = !DILocalVariable(name: "__dummy2", scope: !954, file: !867, line: 52, type: !27)
!957 = !DILocation(line: 52, column: 23, scope: !940)
!958 = !DILocation(line: 164, column: 11, scope: !933, inlinedAt: !939)
!959 = !DILocation(line: 164, column: 17, scope: !933, inlinedAt: !939)
!960 = !DILocation(line: 164, column: 9, scope: !933, inlinedAt: !939)
!961 = !DILocation(line: 52, column: 23, scope: !866)
!962 = !DILocation(line: 540, column: 27, scope: !884, inlinedAt: !888)
!963 = !DILocation(line: 540, column: 6, scope: !884, inlinedAt: !888)
!964 = !DILocation(line: 540, column: 6, scope: !885, inlinedAt: !888)
!965 = !DILocation(line: 544, column: 7, scope: !915, inlinedAt: !888)
!966 = !DILocation(line: 544, column: 12, scope: !915, inlinedAt: !888)
!967 = !DILocation(line: 544, column: 7, scope: !883, inlinedAt: !888)
!968 = !DILocation(line: 545, column: 25, scope: !915, inlinedAt: !888)
!969 = !DILocation(line: 545, column: 31, scope: !915, inlinedAt: !888)
!970 = !DILocation(line: 480, column: 33, scope: !913, inlinedAt: !914)
!971 = !DILocation(line: 480, column: 23, scope: !913, inlinedAt: !914)
!972 = !DILocation(line: 481, column: 29, scope: !913, inlinedAt: !914)
!973 = !DILocation(line: 481, column: 35, scope: !913, inlinedAt: !914)
!974 = !DILocation(line: 481, column: 42, scope: !913, inlinedAt: !914)
!975 = !DILocation(line: 474, column: 23, scope: !908, inlinedAt: !912)
!976 = !DILocation(line: 474, column: 29, scope: !908, inlinedAt: !912)
!977 = !DILocation(line: 474, column: 36, scope: !908, inlinedAt: !912)
!978 = !DILocation(line: 474, column: 9, scope: !908, inlinedAt: !912)
!979 = !DILocation(line: 545, column: 4, scope: !915, inlinedAt: !888)
!980 = !DILocation(line: 547, column: 25, scope: !883, inlinedAt: !888)
!981 = !DILocation(line: 348, column: 7, scope: !982, inlinedAt: !906)
!982 = distinct !DILexicalBlock(scope: !902, file: !6, line: 348, column: 6)
!983 = !DILocation(line: 348, column: 6, scope: !902, inlinedAt: !906)
!984 = !DILocation(line: 349, column: 3, scope: !982, inlinedAt: !906)
!985 = !DILocation(line: 351, column: 6, scope: !986, inlinedAt: !906)
!986 = distinct !DILexicalBlock(scope: !902, file: !6, line: 351, column: 6)
!987 = !DILocation(line: 351, column: 11, scope: !986, inlinedAt: !906)
!988 = !DILocation(line: 351, column: 6, scope: !902, inlinedAt: !906)
!989 = !DILocation(line: 352, column: 3, scope: !986, inlinedAt: !906)
!990 = !DILocation(line: 354, column: 32, scope: !991, inlinedAt: !906)
!991 = distinct !DILexicalBlock(scope: !902, file: !6, line: 354, column: 6)
!992 = !DILocation(line: 354, column: 37, scope: !991, inlinedAt: !906)
!993 = !DILocation(line: 354, column: 42, scope: !991, inlinedAt: !906)
!994 = !DILocation(line: 354, column: 45, scope: !991, inlinedAt: !906)
!995 = !DILocation(line: 354, column: 50, scope: !991, inlinedAt: !906)
!996 = !DILocation(line: 354, column: 6, scope: !902, inlinedAt: !906)
!997 = !DILocation(line: 355, column: 3, scope: !991, inlinedAt: !906)
!998 = !DILocation(line: 356, column: 32, scope: !999, inlinedAt: !906)
!999 = distinct !DILexicalBlock(scope: !902, file: !6, line: 356, column: 6)
!1000 = !DILocation(line: 356, column: 37, scope: !999, inlinedAt: !906)
!1001 = !DILocation(line: 356, column: 43, scope: !999, inlinedAt: !906)
!1002 = !DILocation(line: 356, column: 46, scope: !999, inlinedAt: !906)
!1003 = !DILocation(line: 356, column: 51, scope: !999, inlinedAt: !906)
!1004 = !DILocation(line: 356, column: 6, scope: !902, inlinedAt: !906)
!1005 = !DILocation(line: 357, column: 3, scope: !999, inlinedAt: !906)
!1006 = !DILocation(line: 358, column: 6, scope: !1007, inlinedAt: !906)
!1007 = distinct !DILexicalBlock(scope: !902, file: !6, line: 358, column: 6)
!1008 = !DILocation(line: 358, column: 11, scope: !1007, inlinedAt: !906)
!1009 = !DILocation(line: 358, column: 6, scope: !902, inlinedAt: !906)
!1010 = !DILocation(line: 358, column: 26, scope: !1007, inlinedAt: !906)
!1011 = !DILocation(line: 359, column: 6, scope: !1012, inlinedAt: !906)
!1012 = distinct !DILexicalBlock(scope: !902, file: !6, line: 359, column: 6)
!1013 = !DILocation(line: 359, column: 11, scope: !1012, inlinedAt: !906)
!1014 = !DILocation(line: 359, column: 6, scope: !902, inlinedAt: !906)
!1015 = !DILocation(line: 359, column: 26, scope: !1012, inlinedAt: !906)
!1016 = !DILocation(line: 360, column: 6, scope: !1017, inlinedAt: !906)
!1017 = distinct !DILexicalBlock(scope: !902, file: !6, line: 360, column: 6)
!1018 = !DILocation(line: 360, column: 11, scope: !1017, inlinedAt: !906)
!1019 = !DILocation(line: 360, column: 6, scope: !902, inlinedAt: !906)
!1020 = !DILocation(line: 360, column: 26, scope: !1017, inlinedAt: !906)
!1021 = !DILocation(line: 361, column: 6, scope: !1022, inlinedAt: !906)
!1022 = distinct !DILexicalBlock(scope: !902, file: !6, line: 361, column: 6)
!1023 = !DILocation(line: 361, column: 11, scope: !1022, inlinedAt: !906)
!1024 = !DILocation(line: 361, column: 6, scope: !902, inlinedAt: !906)
!1025 = !DILocation(line: 361, column: 26, scope: !1022, inlinedAt: !906)
!1026 = !DILocation(line: 362, column: 6, scope: !1027, inlinedAt: !906)
!1027 = distinct !DILexicalBlock(scope: !902, file: !6, line: 362, column: 6)
!1028 = !DILocation(line: 362, column: 11, scope: !1027, inlinedAt: !906)
!1029 = !DILocation(line: 362, column: 6, scope: !902, inlinedAt: !906)
!1030 = !DILocation(line: 362, column: 26, scope: !1027, inlinedAt: !906)
!1031 = !DILocation(line: 363, column: 6, scope: !1032, inlinedAt: !906)
!1032 = distinct !DILexicalBlock(scope: !902, file: !6, line: 363, column: 6)
!1033 = !DILocation(line: 363, column: 11, scope: !1032, inlinedAt: !906)
!1034 = !DILocation(line: 363, column: 6, scope: !902, inlinedAt: !906)
!1035 = !DILocation(line: 363, column: 26, scope: !1032, inlinedAt: !906)
!1036 = !DILocation(line: 364, column: 6, scope: !1037, inlinedAt: !906)
!1037 = distinct !DILexicalBlock(scope: !902, file: !6, line: 364, column: 6)
!1038 = !DILocation(line: 364, column: 11, scope: !1037, inlinedAt: !906)
!1039 = !DILocation(line: 364, column: 6, scope: !902, inlinedAt: !906)
!1040 = !DILocation(line: 364, column: 26, scope: !1037, inlinedAt: !906)
!1041 = !DILocation(line: 365, column: 6, scope: !1042, inlinedAt: !906)
!1042 = distinct !DILexicalBlock(scope: !902, file: !6, line: 365, column: 6)
!1043 = !DILocation(line: 365, column: 11, scope: !1042, inlinedAt: !906)
!1044 = !DILocation(line: 365, column: 6, scope: !902, inlinedAt: !906)
!1045 = !DILocation(line: 365, column: 26, scope: !1042, inlinedAt: !906)
!1046 = !DILocation(line: 366, column: 6, scope: !1047, inlinedAt: !906)
!1047 = distinct !DILexicalBlock(scope: !902, file: !6, line: 366, column: 6)
!1048 = !DILocation(line: 366, column: 11, scope: !1047, inlinedAt: !906)
!1049 = !DILocation(line: 366, column: 6, scope: !902, inlinedAt: !906)
!1050 = !DILocation(line: 366, column: 26, scope: !1047, inlinedAt: !906)
!1051 = !DILocation(line: 367, column: 6, scope: !1052, inlinedAt: !906)
!1052 = distinct !DILexicalBlock(scope: !902, file: !6, line: 367, column: 6)
!1053 = !DILocation(line: 367, column: 11, scope: !1052, inlinedAt: !906)
!1054 = !DILocation(line: 367, column: 6, scope: !902, inlinedAt: !906)
!1055 = !DILocation(line: 367, column: 26, scope: !1052, inlinedAt: !906)
!1056 = !DILocation(line: 368, column: 6, scope: !1057, inlinedAt: !906)
!1057 = distinct !DILexicalBlock(scope: !902, file: !6, line: 368, column: 6)
!1058 = !DILocation(line: 368, column: 11, scope: !1057, inlinedAt: !906)
!1059 = !DILocation(line: 368, column: 6, scope: !902, inlinedAt: !906)
!1060 = !DILocation(line: 368, column: 26, scope: !1057, inlinedAt: !906)
!1061 = !DILocation(line: 369, column: 6, scope: !1062, inlinedAt: !906)
!1062 = distinct !DILexicalBlock(scope: !902, file: !6, line: 369, column: 6)
!1063 = !DILocation(line: 369, column: 11, scope: !1062, inlinedAt: !906)
!1064 = !DILocation(line: 369, column: 6, scope: !902, inlinedAt: !906)
!1065 = !DILocation(line: 369, column: 26, scope: !1062, inlinedAt: !906)
!1066 = !DILocation(line: 370, column: 6, scope: !1067, inlinedAt: !906)
!1067 = distinct !DILexicalBlock(scope: !902, file: !6, line: 370, column: 6)
!1068 = !DILocation(line: 370, column: 11, scope: !1067, inlinedAt: !906)
!1069 = !DILocation(line: 370, column: 6, scope: !902, inlinedAt: !906)
!1070 = !DILocation(line: 370, column: 26, scope: !1067, inlinedAt: !906)
!1071 = !DILocation(line: 371, column: 6, scope: !1072, inlinedAt: !906)
!1072 = distinct !DILexicalBlock(scope: !902, file: !6, line: 371, column: 6)
!1073 = !DILocation(line: 371, column: 11, scope: !1072, inlinedAt: !906)
!1074 = !DILocation(line: 371, column: 6, scope: !902, inlinedAt: !906)
!1075 = !DILocation(line: 371, column: 26, scope: !1072, inlinedAt: !906)
!1076 = !DILocation(line: 372, column: 6, scope: !1077, inlinedAt: !906)
!1077 = distinct !DILexicalBlock(scope: !902, file: !6, line: 372, column: 6)
!1078 = !DILocation(line: 372, column: 11, scope: !1077, inlinedAt: !906)
!1079 = !DILocation(line: 372, column: 6, scope: !902, inlinedAt: !906)
!1080 = !DILocation(line: 372, column: 26, scope: !1077, inlinedAt: !906)
!1081 = !DILocation(line: 373, column: 6, scope: !1082, inlinedAt: !906)
!1082 = distinct !DILexicalBlock(scope: !902, file: !6, line: 373, column: 6)
!1083 = !DILocation(line: 373, column: 11, scope: !1082, inlinedAt: !906)
!1084 = !DILocation(line: 373, column: 6, scope: !902, inlinedAt: !906)
!1085 = !DILocation(line: 373, column: 26, scope: !1082, inlinedAt: !906)
!1086 = !DILocation(line: 374, column: 6, scope: !1087, inlinedAt: !906)
!1087 = distinct !DILexicalBlock(scope: !902, file: !6, line: 374, column: 6)
!1088 = !DILocation(line: 374, column: 11, scope: !1087, inlinedAt: !906)
!1089 = !DILocation(line: 374, column: 6, scope: !902, inlinedAt: !906)
!1090 = !DILocation(line: 374, column: 26, scope: !1087, inlinedAt: !906)
!1091 = !DILocation(line: 375, column: 6, scope: !1092, inlinedAt: !906)
!1092 = distinct !DILexicalBlock(scope: !902, file: !6, line: 375, column: 6)
!1093 = !DILocation(line: 375, column: 11, scope: !1092, inlinedAt: !906)
!1094 = !DILocation(line: 375, column: 6, scope: !902, inlinedAt: !906)
!1095 = !DILocation(line: 375, column: 27, scope: !1092, inlinedAt: !906)
!1096 = !DILocation(line: 376, column: 6, scope: !1097, inlinedAt: !906)
!1097 = distinct !DILexicalBlock(scope: !902, file: !6, line: 376, column: 6)
!1098 = !DILocation(line: 376, column: 11, scope: !1097, inlinedAt: !906)
!1099 = !DILocation(line: 376, column: 6, scope: !902, inlinedAt: !906)
!1100 = !DILocation(line: 376, column: 32, scope: !1097, inlinedAt: !906)
!1101 = !DILocation(line: 377, column: 6, scope: !1102, inlinedAt: !906)
!1102 = distinct !DILexicalBlock(scope: !902, file: !6, line: 377, column: 6)
!1103 = !DILocation(line: 377, column: 11, scope: !1102, inlinedAt: !906)
!1104 = !DILocation(line: 377, column: 6, scope: !902, inlinedAt: !906)
!1105 = !DILocation(line: 377, column: 32, scope: !1102, inlinedAt: !906)
!1106 = !DILocation(line: 378, column: 6, scope: !1107, inlinedAt: !906)
!1107 = distinct !DILexicalBlock(scope: !902, file: !6, line: 378, column: 6)
!1108 = !DILocation(line: 378, column: 11, scope: !1107, inlinedAt: !906)
!1109 = !DILocation(line: 378, column: 6, scope: !902, inlinedAt: !906)
!1110 = !DILocation(line: 378, column: 32, scope: !1107, inlinedAt: !906)
!1111 = !DILocation(line: 379, column: 6, scope: !1112, inlinedAt: !906)
!1112 = distinct !DILexicalBlock(scope: !902, file: !6, line: 379, column: 6)
!1113 = !DILocation(line: 379, column: 11, scope: !1112, inlinedAt: !906)
!1114 = !DILocation(line: 379, column: 6, scope: !902, inlinedAt: !906)
!1115 = !DILocation(line: 379, column: 33, scope: !1112, inlinedAt: !906)
!1116 = !DILocation(line: 380, column: 6, scope: !1117, inlinedAt: !906)
!1117 = distinct !DILexicalBlock(scope: !902, file: !6, line: 380, column: 6)
!1118 = !DILocation(line: 380, column: 11, scope: !1117, inlinedAt: !906)
!1119 = !DILocation(line: 380, column: 6, scope: !902, inlinedAt: !906)
!1120 = !DILocation(line: 380, column: 33, scope: !1117, inlinedAt: !906)
!1121 = !DILocation(line: 381, column: 6, scope: !1122, inlinedAt: !906)
!1122 = distinct !DILexicalBlock(scope: !902, file: !6, line: 381, column: 6)
!1123 = !DILocation(line: 381, column: 11, scope: !1122, inlinedAt: !906)
!1124 = !DILocation(line: 381, column: 6, scope: !902, inlinedAt: !906)
!1125 = !DILocation(line: 381, column: 33, scope: !1122, inlinedAt: !906)
!1126 = !DILocation(line: 382, column: 2, scope: !1127, inlinedAt: !906)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !6, line: 382, column: 2)
!1128 = distinct !DILexicalBlock(scope: !902, file: !6, line: 382, column: 2)
!1129 = !{i32 -2144113337, i32 -2144113308, i32 -2144113262, i32 -2144113204, i32 -2144113150, i32 -2144113096, i32 -2144113041, i32 -2144113010}
!1130 = !DILocation(line: 382, column: 2, scope: !1131, inlinedAt: !906)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !6, line: 382, column: 2)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !6, line: 382, column: 2)
!1133 = !{i32 -2144112567, i32 -2144112560, i32 -2144112506, i32 -2144112475, i32 -2144112445}
!1134 = !DILocation(line: 382, column: 2, scope: !1132, inlinedAt: !906)
!1135 = !DILocation(line: 386, column: 1, scope: !902, inlinedAt: !906)
!1136 = !DILocation(line: 547, column: 9, scope: !883, inlinedAt: !888)
!1137 = !DILocation(line: 549, column: 8, scope: !1138, inlinedAt: !888)
!1138 = distinct !DILexicalBlock(scope: !883, file: !6, line: 549, column: 7)
!1139 = !DILocation(line: 549, column: 7, scope: !883, inlinedAt: !888)
!1140 = !DILocation(line: 550, column: 4, scope: !1138, inlinedAt: !888)
!1141 = !DILocation(line: 553, column: 33, scope: !883, inlinedAt: !888)
!1142 = !DILocation(line: 325, column: 6, scope: !1143, inlinedAt: !900)
!1143 = distinct !DILexicalBlock(scope: !896, file: !6, line: 325, column: 6)
!1144 = !DILocation(line: 325, column: 6, scope: !896, inlinedAt: !900)
!1145 = !DILocation(line: 326, column: 3, scope: !1143, inlinedAt: !900)
!1146 = !DILocation(line: 332, column: 9, scope: !896, inlinedAt: !900)
!1147 = !DILocation(line: 332, column: 15, scope: !896, inlinedAt: !900)
!1148 = !DILocation(line: 332, column: 2, scope: !896, inlinedAt: !900)
!1149 = !DILocation(line: 336, column: 1, scope: !896, inlinedAt: !900)
!1150 = !DILocation(line: 553, column: 5, scope: !883, inlinedAt: !888)
!1151 = !DILocation(line: 553, column: 41, scope: !883, inlinedAt: !888)
!1152 = !DILocation(line: 554, column: 5, scope: !883, inlinedAt: !888)
!1153 = !DILocation(line: 554, column: 12, scope: !883, inlinedAt: !888)
!1154 = !DILocation(line: 448, column: 31, scope: !871, inlinedAt: !882)
!1155 = !DILocation(line: 448, column: 34, scope: !871, inlinedAt: !882)
!1156 = !DILocation(line: 448, column: 14, scope: !871, inlinedAt: !882)
!1157 = !DILocation(line: 450, column: 22, scope: !871, inlinedAt: !882)
!1158 = !DILocation(line: 450, column: 25, scope: !871, inlinedAt: !882)
!1159 = !DILocation(line: 450, column: 30, scope: !871, inlinedAt: !882)
!1160 = !DILocation(line: 450, column: 36, scope: !871, inlinedAt: !882)
!1161 = !DILocation(line: 450, column: 8, scope: !871, inlinedAt: !882)
!1162 = !DILocation(line: 450, column: 6, scope: !871, inlinedAt: !882)
!1163 = !DILocation(line: 451, column: 9, scope: !871, inlinedAt: !882)
!1164 = !DILocation(line: 552, column: 3, scope: !883, inlinedAt: !888)
!1165 = !DILocation(line: 557, column: 19, scope: !885, inlinedAt: !888)
!1166 = !DILocation(line: 557, column: 25, scope: !885, inlinedAt: !888)
!1167 = !DILocation(line: 557, column: 9, scope: !885, inlinedAt: !888)
!1168 = !DILocation(line: 557, column: 2, scope: !885, inlinedAt: !888)
!1169 = !DILocation(line: 558, column: 1, scope: !885, inlinedAt: !888)
!1170 = !DILocation(line: 52, column: 2, scope: !866)
!1171 = distinct !DISubprogram(name: "acpi_os_free", scope: !867, file: !867, line: 60, type: !1172, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !802)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{null, !26}
!1174 = !DILocalVariable(name: "memory", arg: 1, scope: !1171, file: !867, line: 60, type: !26)
!1175 = !DILocation(line: 60, column: 39, scope: !1171)
!1176 = !DILocation(line: 62, column: 8, scope: !1171)
!1177 = !DILocation(line: 62, column: 2, scope: !1171)
!1178 = !DILocation(line: 63, column: 1, scope: !1171)
!1179 = distinct !DISubprogram(name: "acpi_ex_opcode_3A_1T_1R", scope: !3, file: !3, line: 125, type: !41, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !802)
!1180 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1179, file: !3, line: 125, type: !43)
!1181 = !DILocation(line: 125, column: 61, scope: !1179)
!1182 = !DILocalVariable(name: "operand", scope: !1179, file: !3, line: 127, type: !162)
!1183 = !DILocation(line: 127, column: 30, scope: !1179)
!1184 = !DILocation(line: 127, column: 41, scope: !1179)
!1185 = !DILocation(line: 127, column: 53, scope: !1179)
!1186 = !DILocalVariable(name: "return_desc", scope: !1179, file: !3, line: 128, type: !103)
!1187 = !DILocation(line: 128, column: 29, scope: !1179)
!1188 = !DILocalVariable(name: "buffer", scope: !1179, file: !3, line: 129, type: !137)
!1189 = !DILocation(line: 129, column: 8, scope: !1179)
!1190 = !DILocalVariable(name: "status", scope: !1179, file: !3, line: 130, type: !14)
!1191 = !DILocation(line: 130, column: 14, scope: !1179)
!1192 = !DILocalVariable(name: "index", scope: !1179, file: !3, line: 131, type: !21)
!1193 = !DILocation(line: 131, column: 6, scope: !1179)
!1194 = !DILocalVariable(name: "length", scope: !1179, file: !3, line: 132, type: !20)
!1195 = !DILocation(line: 132, column: 12, scope: !1179)
!1196 = !DILocation(line: 137, column: 10, scope: !1179)
!1197 = !DILocation(line: 137, column: 22, scope: !1179)
!1198 = !DILocation(line: 137, column: 2, scope: !1179)
!1199 = !DILocation(line: 143, column: 17, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 137, column: 30)
!1201 = !DILocation(line: 143, column: 15, scope: !1200)
!1202 = !DILocation(line: 145, column: 8, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 145, column: 7)
!1204 = !DILocation(line: 145, column: 7, scope: !1200)
!1205 = !DILocation(line: 146, column: 11, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 145, column: 21)
!1207 = !DILocation(line: 147, column: 4, scope: !1206)
!1208 = !DILocation(line: 152, column: 11, scope: !1200)
!1209 = !DILocation(line: 152, column: 23, scope: !1200)
!1210 = !DILocation(line: 152, column: 31, scope: !1200)
!1211 = !DILocation(line: 152, column: 9, scope: !1200)
!1212 = !DILocation(line: 153, column: 23, scope: !1200)
!1213 = !DILocation(line: 153, column: 35, scope: !1200)
!1214 = !DILocation(line: 153, column: 43, scope: !1200)
!1215 = !DILocation(line: 153, column: 10, scope: !1200)
!1216 = !DILocation(line: 159, column: 7, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 159, column: 7)
!1218 = !DILocation(line: 159, column: 16, scope: !1217)
!1219 = !DILocation(line: 159, column: 28, scope: !1217)
!1220 = !DILocation(line: 159, column: 35, scope: !1217)
!1221 = !DILocation(line: 159, column: 13, scope: !1217)
!1222 = !DILocation(line: 159, column: 7, scope: !1200)
!1223 = !DILocation(line: 160, column: 11, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 159, column: 43)
!1225 = !DILocation(line: 161, column: 3, scope: !1224)
!1226 = !DILocation(line: 165, column: 13, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 165, column: 12)
!1228 = !DILocation(line: 165, column: 21, scope: !1227)
!1229 = !DILocation(line: 165, column: 19, scope: !1227)
!1230 = !DILocation(line: 165, column: 31, scope: !1227)
!1231 = !DILocation(line: 165, column: 43, scope: !1227)
!1232 = !DILocation(line: 165, column: 50, scope: !1227)
!1233 = !DILocation(line: 165, column: 29, scope: !1227)
!1234 = !DILocation(line: 165, column: 12, scope: !1217)
!1235 = !DILocation(line: 167, column: 19, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 165, column: 58)
!1237 = !DILocation(line: 167, column: 31, scope: !1236)
!1238 = !DILocation(line: 167, column: 38, scope: !1236)
!1239 = !DILocation(line: 167, column: 8, scope: !1236)
!1240 = !DILocation(line: 168, column: 19, scope: !1236)
!1241 = !DILocation(line: 167, column: 45, scope: !1236)
!1242 = !DILocation(line: 166, column: 11, scope: !1236)
!1243 = !DILocation(line: 169, column: 3, scope: !1236)
!1244 = !DILocation(line: 173, column: 12, scope: !1200)
!1245 = !DILocation(line: 173, column: 25, scope: !1200)
!1246 = !DILocation(line: 173, column: 32, scope: !1200)
!1247 = !DILocation(line: 173, column: 11, scope: !1200)
!1248 = !DILocation(line: 173, column: 3, scope: !1200)
!1249 = !DILocation(line: 178, column: 13, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 173, column: 38)
!1251 = !DILocation(line: 178, column: 11, scope: !1250)
!1252 = !DILocation(line: 179, column: 9, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 179, column: 8)
!1254 = !DILocation(line: 179, column: 8, scope: !1250)
!1255 = !DILocation(line: 180, column: 12, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 179, column: 17)
!1257 = !DILocation(line: 181, column: 5, scope: !1256)
!1258 = !DILocation(line: 183, column: 4, scope: !1250)
!1259 = !DILocation(line: 189, column: 8, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 189, column: 8)
!1261 = !DILocation(line: 189, column: 15, scope: !1260)
!1262 = !DILocation(line: 189, column: 8, scope: !1250)
!1263 = !DILocation(line: 193, column: 14, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 189, column: 20)
!1265 = !DILocation(line: 193, column: 12, scope: !1264)
!1266 = !DILocation(line: 194, column: 10, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 194, column: 9)
!1268 = !DILocation(line: 194, column: 9, scope: !1264)
!1269 = !DILocation(line: 195, column: 13, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 194, column: 18)
!1271 = !DILocation(line: 196, column: 6, scope: !1270)
!1272 = !DILocation(line: 198, column: 4, scope: !1264)
!1273 = !DILocation(line: 199, column: 4, scope: !1250)
!1274 = !DILocation(line: 203, column: 11, scope: !1250)
!1275 = !DILocation(line: 204, column: 4, scope: !1250)
!1276 = !DILocation(line: 207, column: 7, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 207, column: 7)
!1278 = !DILocation(line: 207, column: 7, scope: !1200)
!1279 = !DILocation(line: 211, column: 11, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 207, column: 15)
!1281 = !DILocation(line: 212, column: 11, scope: !1280)
!1282 = !DILocation(line: 212, column: 23, scope: !1280)
!1283 = !DILocation(line: 212, column: 30, scope: !1280)
!1284 = !DILocation(line: 212, column: 40, scope: !1280)
!1285 = !DILocation(line: 212, column: 38, scope: !1280)
!1286 = !DILocation(line: 212, column: 47, scope: !1280)
!1287 = !DILocation(line: 211, column: 4, scope: !1280)
!1288 = !DILocation(line: 213, column: 3, scope: !1280)
!1289 = !DILocation(line: 217, column: 33, scope: !1200)
!1290 = !DILocation(line: 217, column: 3, scope: !1200)
!1291 = !DILocation(line: 217, column: 16, scope: !1200)
!1292 = !DILocation(line: 217, column: 23, scope: !1200)
!1293 = !DILocation(line: 217, column: 31, scope: !1200)
!1294 = !DILocation(line: 218, column: 38, scope: !1200)
!1295 = !DILocation(line: 218, column: 32, scope: !1200)
!1296 = !DILocation(line: 218, column: 3, scope: !1200)
!1297 = !DILocation(line: 218, column: 16, scope: !1200)
!1298 = !DILocation(line: 218, column: 23, scope: !1200)
!1299 = !DILocation(line: 218, column: 30, scope: !1200)
!1300 = !DILocation(line: 222, column: 3, scope: !1200)
!1301 = !DILocation(line: 222, column: 16, scope: !1200)
!1302 = !DILocation(line: 222, column: 23, scope: !1200)
!1303 = !DILocation(line: 222, column: 29, scope: !1200)
!1304 = !DILocation(line: 223, column: 3, scope: !1200)
!1305 = !DILocation(line: 227, column: 3, scope: !1200)
!1306 = !DILocation(line: 230, column: 10, scope: !1200)
!1307 = !DILocation(line: 231, column: 3, scope: !1200)
!1308 = !DILocation(line: 236, column: 25, scope: !1179)
!1309 = !DILocation(line: 236, column: 38, scope: !1179)
!1310 = !DILocation(line: 236, column: 50, scope: !1179)
!1311 = !DILocation(line: 236, column: 11, scope: !1179)
!1312 = !DILocation(line: 236, column: 9, scope: !1179)
!1313 = !DILocation(line: 236, column: 2, scope: !1179)
!1314 = !DILabel(scope: !1179, name: "cleanup", file: !3, line: 238)
!1315 = !DILocation(line: 238, column: 1, scope: !1179)
!1316 = !DILocation(line: 242, column: 6, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 242, column: 6)
!1318 = !DILocation(line: 242, column: 27, scope: !1317)
!1319 = !DILocation(line: 242, column: 30, scope: !1317)
!1320 = !DILocation(line: 242, column: 42, scope: !1317)
!1321 = !DILocation(line: 242, column: 6, scope: !1179)
!1322 = !DILocation(line: 243, column: 28, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 242, column: 54)
!1324 = !DILocation(line: 243, column: 3, scope: !1323)
!1325 = !DILocation(line: 244, column: 3, scope: !1323)
!1326 = !DILocation(line: 244, column: 15, scope: !1323)
!1327 = !DILocation(line: 244, column: 26, scope: !1323)
!1328 = !DILocation(line: 245, column: 2, scope: !1323)
!1329 = !DILocation(line: 248, column: 28, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 245, column: 9)
!1331 = !DILocation(line: 248, column: 3, scope: !1330)
!1332 = !DILocation(line: 248, column: 15, scope: !1330)
!1333 = !DILocation(line: 248, column: 26, scope: !1330)
!1334 = !DILocation(line: 251, column: 2, scope: !1179)
!1335 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !867, file: !867, line: 55, type: !868, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !802)
!1336 = !DILocation(line: 162, column: 67, scope: !933, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 57, column: 23, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !867, line: 57, column: 23)
!1339 = distinct !DILexicalBlock(scope: !1335, file: !867, line: 57, column: 23)
!1340 = !DILocalVariable(name: "size", arg: 1, scope: !1335, file: !867, line: 55, type: !20)
!1341 = !DILocation(line: 55, column: 55, scope: !1335)
!1342 = !DILocation(line: 57, column: 17, scope: !1335)
!1343 = !DILocalVariable(name: "_flags", scope: !1339, file: !867, line: 57, type: !27)
!1344 = !DILocation(line: 57, column: 23, scope: !1339)
!1345 = !DILocalVariable(name: "__dummy", scope: !1346, file: !867, line: 57, type: !27)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !867, line: 57, column: 23)
!1347 = distinct !DILexicalBlock(scope: !1339, file: !867, line: 57, column: 23)
!1348 = !DILocation(line: 57, column: 23, scope: !1346)
!1349 = !DILocalVariable(name: "__dummy2", scope: !1346, file: !867, line: 57, type: !27)
!1350 = !DILocation(line: 57, column: 23, scope: !1347)
!1351 = !DILocalVariable(name: "__dummy", scope: !1352, file: !867, line: 57, type: !27)
!1352 = distinct !DILexicalBlock(scope: !1338, file: !867, line: 57, column: 23)
!1353 = !DILocation(line: 57, column: 23, scope: !1352)
!1354 = !DILocalVariable(name: "__dummy2", scope: !1352, file: !867, line: 57, type: !27)
!1355 = !DILocation(line: 57, column: 23, scope: !1338)
!1356 = !DILocation(line: 164, column: 11, scope: !933, inlinedAt: !1337)
!1357 = !DILocation(line: 164, column: 17, scope: !933, inlinedAt: !1337)
!1358 = !DILocation(line: 164, column: 9, scope: !933, inlinedAt: !1337)
!1359 = !DILocation(line: 57, column: 23, scope: !1335)
!1360 = !DILocation(line: 57, column: 9, scope: !1335)
!1361 = !DILocation(line: 57, column: 2, scope: !1335)
!1362 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1363, file: !1363, line: 646, type: !1364, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !802)
!1363 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!27}
!1366 = !DILocalVariable(name: "__ret", scope: !1367, file: !1363, line: 648, type: !27)
!1367 = distinct !DILexicalBlock(scope: !1362, file: !1363, line: 648, column: 9)
!1368 = !DILocation(line: 648, column: 9, scope: !1367)
!1369 = !DILocalVariable(name: "__edi", scope: !1367, file: !1363, line: 648, type: !27)
!1370 = !DILocalVariable(name: "__esi", scope: !1367, file: !1363, line: 648, type: !27)
!1371 = !DILocalVariable(name: "__edx", scope: !1367, file: !1363, line: 648, type: !27)
!1372 = !DILocalVariable(name: "__ecx", scope: !1367, file: !1363, line: 648, type: !27)
!1373 = !DILocalVariable(name: "__eax", scope: !1367, file: !1363, line: 648, type: !27)
!1374 = !DILocation(line: 648, column: 9, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !1363, line: 648, column: 9)
!1376 = distinct !DILexicalBlock(scope: !1367, file: !1363, line: 648, column: 9)
!1377 = !{i32 -2145786943, i32 -2145784628, i32 -2145784394, i32 -2145784343, i32 -2145784315, i32 -2145784290, i32 -2145784606, i32 -2145784593, i32 -2145784155, i32 -2145784036, i32 -2145784501, i32 -2145784474, i32 -2145784446, i32 -2145784416}
!1378 = !DILocalVariable(name: "__mask", scope: !1379, file: !1363, line: 648, type: !27)
!1379 = distinct !DILexicalBlock(scope: !1375, file: !1363, line: 648, column: 9)
!1380 = !DILocation(line: 648, column: 9, scope: !1379)
!1381 = !DILocation(line: 648, column: 9, scope: !1376)
!1382 = !DILocation(line: 648, column: 2, scope: !1362)
!1383 = distinct !DISubprogram(name: "get_order", scope: !1384, file: !1384, line: 29, type: !935, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !802)
!1384 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1385 = !DILocalVariable(name: "x", arg: 1, scope: !1386, file: !1387, line: 366, type: !22)
!1386 = distinct !DISubprogram(name: "fls64", scope: !1387, file: !1387, line: 366, type: !1388, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !802)
!1387 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!937, !22}
!1390 = !DILocation(line: 366, column: 40, scope: !1386, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 46, column: 9, scope: !1383)
!1392 = !DILocalVariable(name: "bitpos", scope: !1386, file: !1387, line: 368, type: !937)
!1393 = !DILocation(line: 368, column: 6, scope: !1386, inlinedAt: !1391)
!1394 = !DILocalVariable(name: "size", arg: 1, scope: !1383, file: !1384, line: 29, type: !27)
!1395 = !DILocation(line: 29, column: 63, scope: !1383)
!1396 = !DILocation(line: 31, column: 27, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1383, file: !1384, line: 31, column: 6)
!1398 = !DILocation(line: 31, column: 6, scope: !1397)
!1399 = !DILocation(line: 31, column: 6, scope: !1383)
!1400 = !DILocation(line: 32, column: 8, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !1384, line: 32, column: 7)
!1402 = distinct !DILexicalBlock(scope: !1397, file: !1384, line: 31, column: 34)
!1403 = !DILocation(line: 32, column: 7, scope: !1402)
!1404 = !DILocation(line: 33, column: 4, scope: !1401)
!1405 = !DILocation(line: 35, column: 7, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1402, file: !1384, line: 35, column: 7)
!1407 = !DILocation(line: 35, column: 12, scope: !1406)
!1408 = !DILocation(line: 35, column: 7, scope: !1402)
!1409 = !DILocation(line: 36, column: 4, scope: !1406)
!1410 = !DILocation(line: 38, column: 10, scope: !1402)
!1411 = !DILocation(line: 38, column: 28, scope: !1402)
!1412 = !DILocation(line: 38, column: 41, scope: !1402)
!1413 = !DILocation(line: 38, column: 3, scope: !1402)
!1414 = !DILocation(line: 41, column: 6, scope: !1383)
!1415 = !DILocation(line: 42, column: 7, scope: !1383)
!1416 = !DILocation(line: 46, column: 15, scope: !1383)
!1417 = !DILocation(line: 374, column: 2, scope: !1386, inlinedAt: !1391)
!1418 = !DILocation(line: 376, column: 14, scope: !1386, inlinedAt: !1391)
!1419 = !{i32 657865}
!1420 = !DILocation(line: 377, column: 9, scope: !1386, inlinedAt: !1391)
!1421 = !DILocation(line: 377, column: 16, scope: !1386, inlinedAt: !1391)
!1422 = !DILocation(line: 46, column: 2, scope: !1383)
!1423 = !DILocation(line: 48, column: 1, scope: !1383)
!1424 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1425, file: !1425, line: 30, type: !1426, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !802)
!1425 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!937, !21}
!1428 = !DILocation(line: 366, column: 40, scope: !1386, inlinedAt: !1429)
!1429 = distinct !DILocation(line: 32, column: 9, scope: !1424)
!1430 = !DILocation(line: 368, column: 6, scope: !1386, inlinedAt: !1429)
!1431 = !DILocalVariable(name: "n", arg: 1, scope: !1424, file: !1425, line: 30, type: !21)
!1432 = !DILocation(line: 30, column: 21, scope: !1424)
!1433 = !DILocation(line: 32, column: 15, scope: !1424)
!1434 = !DILocation(line: 374, column: 2, scope: !1386, inlinedAt: !1429)
!1435 = !DILocation(line: 376, column: 14, scope: !1386, inlinedAt: !1429)
!1436 = !DILocation(line: 377, column: 9, scope: !1386, inlinedAt: !1429)
!1437 = !DILocation(line: 377, column: 16, scope: !1386, inlinedAt: !1429)
!1438 = !DILocation(line: 32, column: 18, scope: !1424)
!1439 = !DILocation(line: 32, column: 2, scope: !1424)
!1440 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1441, file: !1441, line: 137, type: !1442, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !802)
!1441 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!26, !874, !1444, !877, !24}
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1446 = !DILocalVariable(name: "s", arg: 1, scope: !1440, file: !1441, line: 137, type: !874)
!1447 = !DILocation(line: 137, column: 54, scope: !1440)
!1448 = !DILocalVariable(name: "object", arg: 2, scope: !1440, file: !1441, line: 137, type: !1444)
!1449 = !DILocation(line: 137, column: 69, scope: !1440)
!1450 = !DILocalVariable(name: "size", arg: 3, scope: !1440, file: !1441, line: 138, type: !877)
!1451 = !DILocation(line: 138, column: 12, scope: !1440)
!1452 = !DILocalVariable(name: "flags", arg: 4, scope: !1440, file: !1441, line: 138, type: !24)
!1453 = !DILocation(line: 138, column: 24, scope: !1440)
!1454 = !DILocation(line: 140, column: 17, scope: !1440)
!1455 = !DILocation(line: 140, column: 2, scope: !1440)
!1456 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !886, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !802)
!1457 = !DILocation(line: 445, column: 72, scope: !871, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 552, column: 10, scope: !883, inlinedAt: !1459)
!1459 = distinct !DILocation(line: 664, column: 9, scope: !1456)
!1460 = !DILocation(line: 446, column: 9, scope: !871, inlinedAt: !1458)
!1461 = !DILocation(line: 446, column: 23, scope: !871, inlinedAt: !1458)
!1462 = !DILocation(line: 448, column: 8, scope: !871, inlinedAt: !1458)
!1463 = !DILocation(line: 318, column: 67, scope: !896, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 553, column: 20, scope: !883, inlinedAt: !1459)
!1465 = !DILocation(line: 346, column: 58, scope: !902, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 547, column: 11, scope: !883, inlinedAt: !1459)
!1467 = !DILocation(line: 472, column: 28, scope: !908, inlinedAt: !1468)
!1468 = distinct !DILocation(line: 481, column: 9, scope: !913, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 545, column: 11, scope: !915, inlinedAt: !1459)
!1470 = !DILocation(line: 472, column: 40, scope: !908, inlinedAt: !1468)
!1471 = !DILocation(line: 472, column: 60, scope: !908, inlinedAt: !1468)
!1472 = !DILocation(line: 478, column: 51, scope: !913, inlinedAt: !1469)
!1473 = !DILocation(line: 478, column: 63, scope: !913, inlinedAt: !1469)
!1474 = !DILocation(line: 480, column: 15, scope: !913, inlinedAt: !1469)
!1475 = !DILocation(line: 538, column: 45, scope: !885, inlinedAt: !1459)
!1476 = !DILocation(line: 538, column: 57, scope: !885, inlinedAt: !1459)
!1477 = !DILocation(line: 542, column: 16, scope: !883, inlinedAt: !1459)
!1478 = !DILocalVariable(name: "size", arg: 1, scope: !1456, file: !6, line: 662, type: !877)
!1479 = !DILocation(line: 662, column: 36, scope: !1456)
!1480 = !DILocalVariable(name: "flags", arg: 2, scope: !1456, file: !6, line: 662, type: !24)
!1481 = !DILocation(line: 662, column: 48, scope: !1456)
!1482 = !DILocation(line: 664, column: 17, scope: !1456)
!1483 = !DILocation(line: 664, column: 23, scope: !1456)
!1484 = !DILocation(line: 664, column: 29, scope: !1456)
!1485 = !DILocation(line: 540, column: 27, scope: !884, inlinedAt: !1459)
!1486 = !DILocation(line: 540, column: 6, scope: !884, inlinedAt: !1459)
!1487 = !DILocation(line: 540, column: 6, scope: !885, inlinedAt: !1459)
!1488 = !DILocation(line: 544, column: 7, scope: !915, inlinedAt: !1459)
!1489 = !DILocation(line: 544, column: 12, scope: !915, inlinedAt: !1459)
!1490 = !DILocation(line: 544, column: 7, scope: !883, inlinedAt: !1459)
!1491 = !DILocation(line: 545, column: 25, scope: !915, inlinedAt: !1459)
!1492 = !DILocation(line: 545, column: 31, scope: !915, inlinedAt: !1459)
!1493 = !DILocation(line: 480, column: 33, scope: !913, inlinedAt: !1469)
!1494 = !DILocation(line: 480, column: 23, scope: !913, inlinedAt: !1469)
!1495 = !DILocation(line: 481, column: 29, scope: !913, inlinedAt: !1469)
!1496 = !DILocation(line: 481, column: 35, scope: !913, inlinedAt: !1469)
!1497 = !DILocation(line: 481, column: 42, scope: !913, inlinedAt: !1469)
!1498 = !DILocation(line: 474, column: 23, scope: !908, inlinedAt: !1468)
!1499 = !DILocation(line: 474, column: 29, scope: !908, inlinedAt: !1468)
!1500 = !DILocation(line: 474, column: 36, scope: !908, inlinedAt: !1468)
!1501 = !DILocation(line: 474, column: 9, scope: !908, inlinedAt: !1468)
!1502 = !DILocation(line: 545, column: 4, scope: !915, inlinedAt: !1459)
!1503 = !DILocation(line: 547, column: 25, scope: !883, inlinedAt: !1459)
!1504 = !DILocation(line: 348, column: 7, scope: !982, inlinedAt: !1466)
!1505 = !DILocation(line: 348, column: 6, scope: !902, inlinedAt: !1466)
!1506 = !DILocation(line: 349, column: 3, scope: !982, inlinedAt: !1466)
!1507 = !DILocation(line: 351, column: 6, scope: !986, inlinedAt: !1466)
!1508 = !DILocation(line: 351, column: 11, scope: !986, inlinedAt: !1466)
!1509 = !DILocation(line: 351, column: 6, scope: !902, inlinedAt: !1466)
!1510 = !DILocation(line: 352, column: 3, scope: !986, inlinedAt: !1466)
!1511 = !DILocation(line: 354, column: 32, scope: !991, inlinedAt: !1466)
!1512 = !DILocation(line: 354, column: 37, scope: !991, inlinedAt: !1466)
!1513 = !DILocation(line: 354, column: 42, scope: !991, inlinedAt: !1466)
!1514 = !DILocation(line: 354, column: 45, scope: !991, inlinedAt: !1466)
!1515 = !DILocation(line: 354, column: 50, scope: !991, inlinedAt: !1466)
!1516 = !DILocation(line: 354, column: 6, scope: !902, inlinedAt: !1466)
!1517 = !DILocation(line: 355, column: 3, scope: !991, inlinedAt: !1466)
!1518 = !DILocation(line: 356, column: 32, scope: !999, inlinedAt: !1466)
!1519 = !DILocation(line: 356, column: 37, scope: !999, inlinedAt: !1466)
!1520 = !DILocation(line: 356, column: 43, scope: !999, inlinedAt: !1466)
!1521 = !DILocation(line: 356, column: 46, scope: !999, inlinedAt: !1466)
!1522 = !DILocation(line: 356, column: 51, scope: !999, inlinedAt: !1466)
!1523 = !DILocation(line: 356, column: 6, scope: !902, inlinedAt: !1466)
!1524 = !DILocation(line: 357, column: 3, scope: !999, inlinedAt: !1466)
!1525 = !DILocation(line: 358, column: 6, scope: !1007, inlinedAt: !1466)
!1526 = !DILocation(line: 358, column: 11, scope: !1007, inlinedAt: !1466)
!1527 = !DILocation(line: 358, column: 6, scope: !902, inlinedAt: !1466)
!1528 = !DILocation(line: 358, column: 26, scope: !1007, inlinedAt: !1466)
!1529 = !DILocation(line: 359, column: 6, scope: !1012, inlinedAt: !1466)
!1530 = !DILocation(line: 359, column: 11, scope: !1012, inlinedAt: !1466)
!1531 = !DILocation(line: 359, column: 6, scope: !902, inlinedAt: !1466)
!1532 = !DILocation(line: 359, column: 26, scope: !1012, inlinedAt: !1466)
!1533 = !DILocation(line: 360, column: 6, scope: !1017, inlinedAt: !1466)
!1534 = !DILocation(line: 360, column: 11, scope: !1017, inlinedAt: !1466)
!1535 = !DILocation(line: 360, column: 6, scope: !902, inlinedAt: !1466)
!1536 = !DILocation(line: 360, column: 26, scope: !1017, inlinedAt: !1466)
!1537 = !DILocation(line: 361, column: 6, scope: !1022, inlinedAt: !1466)
!1538 = !DILocation(line: 361, column: 11, scope: !1022, inlinedAt: !1466)
!1539 = !DILocation(line: 361, column: 6, scope: !902, inlinedAt: !1466)
!1540 = !DILocation(line: 361, column: 26, scope: !1022, inlinedAt: !1466)
!1541 = !DILocation(line: 362, column: 6, scope: !1027, inlinedAt: !1466)
!1542 = !DILocation(line: 362, column: 11, scope: !1027, inlinedAt: !1466)
!1543 = !DILocation(line: 362, column: 6, scope: !902, inlinedAt: !1466)
!1544 = !DILocation(line: 362, column: 26, scope: !1027, inlinedAt: !1466)
!1545 = !DILocation(line: 363, column: 6, scope: !1032, inlinedAt: !1466)
!1546 = !DILocation(line: 363, column: 11, scope: !1032, inlinedAt: !1466)
!1547 = !DILocation(line: 363, column: 6, scope: !902, inlinedAt: !1466)
!1548 = !DILocation(line: 363, column: 26, scope: !1032, inlinedAt: !1466)
!1549 = !DILocation(line: 364, column: 6, scope: !1037, inlinedAt: !1466)
!1550 = !DILocation(line: 364, column: 11, scope: !1037, inlinedAt: !1466)
!1551 = !DILocation(line: 364, column: 6, scope: !902, inlinedAt: !1466)
!1552 = !DILocation(line: 364, column: 26, scope: !1037, inlinedAt: !1466)
!1553 = !DILocation(line: 365, column: 6, scope: !1042, inlinedAt: !1466)
!1554 = !DILocation(line: 365, column: 11, scope: !1042, inlinedAt: !1466)
!1555 = !DILocation(line: 365, column: 6, scope: !902, inlinedAt: !1466)
!1556 = !DILocation(line: 365, column: 26, scope: !1042, inlinedAt: !1466)
!1557 = !DILocation(line: 366, column: 6, scope: !1047, inlinedAt: !1466)
!1558 = !DILocation(line: 366, column: 11, scope: !1047, inlinedAt: !1466)
!1559 = !DILocation(line: 366, column: 6, scope: !902, inlinedAt: !1466)
!1560 = !DILocation(line: 366, column: 26, scope: !1047, inlinedAt: !1466)
!1561 = !DILocation(line: 367, column: 6, scope: !1052, inlinedAt: !1466)
!1562 = !DILocation(line: 367, column: 11, scope: !1052, inlinedAt: !1466)
!1563 = !DILocation(line: 367, column: 6, scope: !902, inlinedAt: !1466)
!1564 = !DILocation(line: 367, column: 26, scope: !1052, inlinedAt: !1466)
!1565 = !DILocation(line: 368, column: 6, scope: !1057, inlinedAt: !1466)
!1566 = !DILocation(line: 368, column: 11, scope: !1057, inlinedAt: !1466)
!1567 = !DILocation(line: 368, column: 6, scope: !902, inlinedAt: !1466)
!1568 = !DILocation(line: 368, column: 26, scope: !1057, inlinedAt: !1466)
!1569 = !DILocation(line: 369, column: 6, scope: !1062, inlinedAt: !1466)
!1570 = !DILocation(line: 369, column: 11, scope: !1062, inlinedAt: !1466)
!1571 = !DILocation(line: 369, column: 6, scope: !902, inlinedAt: !1466)
!1572 = !DILocation(line: 369, column: 26, scope: !1062, inlinedAt: !1466)
!1573 = !DILocation(line: 370, column: 6, scope: !1067, inlinedAt: !1466)
!1574 = !DILocation(line: 370, column: 11, scope: !1067, inlinedAt: !1466)
!1575 = !DILocation(line: 370, column: 6, scope: !902, inlinedAt: !1466)
!1576 = !DILocation(line: 370, column: 26, scope: !1067, inlinedAt: !1466)
!1577 = !DILocation(line: 371, column: 6, scope: !1072, inlinedAt: !1466)
!1578 = !DILocation(line: 371, column: 11, scope: !1072, inlinedAt: !1466)
!1579 = !DILocation(line: 371, column: 6, scope: !902, inlinedAt: !1466)
!1580 = !DILocation(line: 371, column: 26, scope: !1072, inlinedAt: !1466)
!1581 = !DILocation(line: 372, column: 6, scope: !1077, inlinedAt: !1466)
!1582 = !DILocation(line: 372, column: 11, scope: !1077, inlinedAt: !1466)
!1583 = !DILocation(line: 372, column: 6, scope: !902, inlinedAt: !1466)
!1584 = !DILocation(line: 372, column: 26, scope: !1077, inlinedAt: !1466)
!1585 = !DILocation(line: 373, column: 6, scope: !1082, inlinedAt: !1466)
!1586 = !DILocation(line: 373, column: 11, scope: !1082, inlinedAt: !1466)
!1587 = !DILocation(line: 373, column: 6, scope: !902, inlinedAt: !1466)
!1588 = !DILocation(line: 373, column: 26, scope: !1082, inlinedAt: !1466)
!1589 = !DILocation(line: 374, column: 6, scope: !1087, inlinedAt: !1466)
!1590 = !DILocation(line: 374, column: 11, scope: !1087, inlinedAt: !1466)
!1591 = !DILocation(line: 374, column: 6, scope: !902, inlinedAt: !1466)
!1592 = !DILocation(line: 374, column: 26, scope: !1087, inlinedAt: !1466)
!1593 = !DILocation(line: 375, column: 6, scope: !1092, inlinedAt: !1466)
!1594 = !DILocation(line: 375, column: 11, scope: !1092, inlinedAt: !1466)
!1595 = !DILocation(line: 375, column: 6, scope: !902, inlinedAt: !1466)
!1596 = !DILocation(line: 375, column: 27, scope: !1092, inlinedAt: !1466)
!1597 = !DILocation(line: 376, column: 6, scope: !1097, inlinedAt: !1466)
!1598 = !DILocation(line: 376, column: 11, scope: !1097, inlinedAt: !1466)
!1599 = !DILocation(line: 376, column: 6, scope: !902, inlinedAt: !1466)
!1600 = !DILocation(line: 376, column: 32, scope: !1097, inlinedAt: !1466)
!1601 = !DILocation(line: 377, column: 6, scope: !1102, inlinedAt: !1466)
!1602 = !DILocation(line: 377, column: 11, scope: !1102, inlinedAt: !1466)
!1603 = !DILocation(line: 377, column: 6, scope: !902, inlinedAt: !1466)
!1604 = !DILocation(line: 377, column: 32, scope: !1102, inlinedAt: !1466)
!1605 = !DILocation(line: 378, column: 6, scope: !1107, inlinedAt: !1466)
!1606 = !DILocation(line: 378, column: 11, scope: !1107, inlinedAt: !1466)
!1607 = !DILocation(line: 378, column: 6, scope: !902, inlinedAt: !1466)
!1608 = !DILocation(line: 378, column: 32, scope: !1107, inlinedAt: !1466)
!1609 = !DILocation(line: 379, column: 6, scope: !1112, inlinedAt: !1466)
!1610 = !DILocation(line: 379, column: 11, scope: !1112, inlinedAt: !1466)
!1611 = !DILocation(line: 379, column: 6, scope: !902, inlinedAt: !1466)
!1612 = !DILocation(line: 379, column: 33, scope: !1112, inlinedAt: !1466)
!1613 = !DILocation(line: 380, column: 6, scope: !1117, inlinedAt: !1466)
!1614 = !DILocation(line: 380, column: 11, scope: !1117, inlinedAt: !1466)
!1615 = !DILocation(line: 380, column: 6, scope: !902, inlinedAt: !1466)
!1616 = !DILocation(line: 380, column: 33, scope: !1117, inlinedAt: !1466)
!1617 = !DILocation(line: 381, column: 6, scope: !1122, inlinedAt: !1466)
!1618 = !DILocation(line: 381, column: 11, scope: !1122, inlinedAt: !1466)
!1619 = !DILocation(line: 381, column: 6, scope: !902, inlinedAt: !1466)
!1620 = !DILocation(line: 381, column: 33, scope: !1122, inlinedAt: !1466)
!1621 = !DILocation(line: 382, column: 2, scope: !1127, inlinedAt: !1466)
!1622 = !DILocation(line: 382, column: 2, scope: !1131, inlinedAt: !1466)
!1623 = !DILocation(line: 382, column: 2, scope: !1132, inlinedAt: !1466)
!1624 = !DILocation(line: 386, column: 1, scope: !902, inlinedAt: !1466)
!1625 = !DILocation(line: 547, column: 9, scope: !883, inlinedAt: !1459)
!1626 = !DILocation(line: 549, column: 8, scope: !1138, inlinedAt: !1459)
!1627 = !DILocation(line: 549, column: 7, scope: !883, inlinedAt: !1459)
!1628 = !DILocation(line: 550, column: 4, scope: !1138, inlinedAt: !1459)
!1629 = !DILocation(line: 553, column: 33, scope: !883, inlinedAt: !1459)
!1630 = !DILocation(line: 325, column: 6, scope: !1143, inlinedAt: !1464)
!1631 = !DILocation(line: 325, column: 6, scope: !896, inlinedAt: !1464)
!1632 = !DILocation(line: 326, column: 3, scope: !1143, inlinedAt: !1464)
!1633 = !DILocation(line: 332, column: 9, scope: !896, inlinedAt: !1464)
!1634 = !DILocation(line: 332, column: 15, scope: !896, inlinedAt: !1464)
!1635 = !DILocation(line: 332, column: 2, scope: !896, inlinedAt: !1464)
!1636 = !DILocation(line: 336, column: 1, scope: !896, inlinedAt: !1464)
!1637 = !DILocation(line: 553, column: 5, scope: !883, inlinedAt: !1459)
!1638 = !DILocation(line: 553, column: 41, scope: !883, inlinedAt: !1459)
!1639 = !DILocation(line: 554, column: 5, scope: !883, inlinedAt: !1459)
!1640 = !DILocation(line: 554, column: 12, scope: !883, inlinedAt: !1459)
!1641 = !DILocation(line: 448, column: 31, scope: !871, inlinedAt: !1458)
!1642 = !DILocation(line: 448, column: 34, scope: !871, inlinedAt: !1458)
!1643 = !DILocation(line: 448, column: 14, scope: !871, inlinedAt: !1458)
!1644 = !DILocation(line: 450, column: 22, scope: !871, inlinedAt: !1458)
!1645 = !DILocation(line: 450, column: 25, scope: !871, inlinedAt: !1458)
!1646 = !DILocation(line: 450, column: 30, scope: !871, inlinedAt: !1458)
!1647 = !DILocation(line: 450, column: 36, scope: !871, inlinedAt: !1458)
!1648 = !DILocation(line: 450, column: 8, scope: !871, inlinedAt: !1458)
!1649 = !DILocation(line: 450, column: 6, scope: !871, inlinedAt: !1458)
!1650 = !DILocation(line: 451, column: 9, scope: !871, inlinedAt: !1458)
!1651 = !DILocation(line: 552, column: 3, scope: !883, inlinedAt: !1459)
!1652 = !DILocation(line: 557, column: 19, scope: !885, inlinedAt: !1459)
!1653 = !DILocation(line: 557, column: 25, scope: !885, inlinedAt: !1459)
!1654 = !DILocation(line: 557, column: 9, scope: !885, inlinedAt: !1459)
!1655 = !DILocation(line: 557, column: 2, scope: !885, inlinedAt: !1459)
!1656 = !DILocation(line: 558, column: 1, scope: !885, inlinedAt: !1459)
!1657 = !DILocation(line: 664, column: 2, scope: !1456)
