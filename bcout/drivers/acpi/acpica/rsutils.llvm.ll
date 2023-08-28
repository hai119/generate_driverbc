; ModuleID = '../bcout/drivers/acpi/acpica/rsutils.llvm.bc'
source_filename = "drivers/acpi/acpica/rsutils.c"
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
%union.aml_resource = type { i32, [52 x i8] }
%struct.aml_resource_small_header = type { i8 }
%struct.aml_resource_large_header = type <{ i8, i16 }>
%struct.acpi_resource_source = type <{ i8, i16, i8* }>
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
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
%union.acpi_name_union = type { i32 }
%struct.acpi_buffer = type { i64, i8* }
%struct.acpi_evaluate_info = type { %struct.acpi_namespace_node*, i8*, %union.acpi_operand_object**, %struct.acpi_namespace_node*, %union.acpi_operand_object*, i8*, %union.acpi_predefined_info*, %union.acpi_operand_object*, %union.acpi_operand_object*, i32, i32, i16, i16, i8, i8, i8 }
%union.acpi_predefined_info = type { %struct.acpi_name_info }
%struct.acpi_name_info = type <{ [4 x i8], i16, i8 }>
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }

@.str = private unnamed_addr constant [5 x i8] c"_PRT\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_CRS\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_PRS\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_AEI\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"_SRS\00", align 1
@_acpi_module_name = internal constant [8 x i8] c"rsutils\00", align 1, !dbg !0
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @acpi_rs_decode_bitmask(i16 zeroext %mask, i8* %list) #0 !dbg !806 {
entry:
  %mask.addr = alloca i16, align 2
  %list.addr = alloca i8*, align 8
  %i = alloca i8, align 1
  %bit_count = alloca i8, align 1
  store i16 %mask, i16* %mask.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %mask.addr, metadata !810, metadata !DIExpression()), !dbg !811
  store i8* %list, i8** %list.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %list.addr, metadata !812, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.declare(metadata i8* %i, metadata !814, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.declare(metadata i8* %bit_count, metadata !816, metadata !DIExpression()), !dbg !817
  store i8 0, i8* %i, align 1, !dbg !818
  store i8 0, i8* %bit_count, align 1, !dbg !820
  br label %for.cond, !dbg !821

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, i16* %mask.addr, align 2, !dbg !822
  %tobool = icmp ne i16 %0, 0, !dbg !824
  br i1 %tobool, label %for.body, label %for.end, !dbg !824

for.body:                                         ; preds = %for.cond
  %1 = load i16, i16* %mask.addr, align 2, !dbg !825
  %conv = zext i16 %1 to i32, !dbg !825
  %and = and i32 %conv, 1, !dbg !828
  %tobool1 = icmp ne i32 %and, 0, !dbg !828
  br i1 %tobool1, label %if.then, label %if.end, !dbg !829

if.then:                                          ; preds = %for.body
  %2 = load i8, i8* %i, align 1, !dbg !830
  %3 = load i8*, i8** %list.addr, align 8, !dbg !832
  %4 = load i8, i8* %bit_count, align 1, !dbg !833
  %idxprom = zext i8 %4 to i64, !dbg !832
  %arrayidx = getelementptr i8, i8* %3, i64 %idxprom, !dbg !832
  store i8 %2, i8* %arrayidx, align 1, !dbg !834
  %5 = load i8, i8* %bit_count, align 1, !dbg !835
  %inc = add i8 %5, 1, !dbg !835
  store i8 %inc, i8* %bit_count, align 1, !dbg !835
  br label %if.end, !dbg !836

if.end:                                           ; preds = %if.then, %for.body
  %6 = load i16, i16* %mask.addr, align 2, !dbg !837
  %conv2 = zext i16 %6 to i32, !dbg !837
  %shr = ashr i32 %conv2, 1, !dbg !837
  %conv3 = trunc i32 %shr to i16, !dbg !837
  store i16 %conv3, i16* %mask.addr, align 2, !dbg !837
  br label %for.inc, !dbg !838

for.inc:                                          ; preds = %if.end
  %7 = load i8, i8* %i, align 1, !dbg !839
  %inc4 = add i8 %7, 1, !dbg !839
  store i8 %inc4, i8* %i, align 1, !dbg !839
  br label %for.cond, !dbg !840, !llvm.loop !841

for.end:                                          ; preds = %for.cond
  %8 = load i8, i8* %bit_count, align 1, !dbg !843
  ret i8 %8, !dbg !844
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i16 @acpi_rs_encode_bitmask(i8* %list, i8 zeroext %count) #0 !dbg !845 {
entry:
  %list.addr = alloca i8*, align 8
  %count.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %mask = alloca i16, align 2
  store i8* %list, i8** %list.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %list.addr, metadata !848, metadata !DIExpression()), !dbg !849
  store i8 %count, i8* %count.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %count.addr, metadata !850, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.declare(metadata i32* %i, metadata !852, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.declare(metadata i16* %mask, metadata !854, metadata !DIExpression()), !dbg !855
  store i32 0, i32* %i, align 4, !dbg !856
  store i16 0, i16* %mask, align 2, !dbg !858
  br label %for.cond, !dbg !859

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !860
  %1 = load i8, i8* %count.addr, align 1, !dbg !862
  %conv = zext i8 %1 to i32, !dbg !862
  %cmp = icmp ult i32 %0, %conv, !dbg !863
  br i1 %cmp, label %for.body, label %for.end, !dbg !864

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %list.addr, align 8, !dbg !865
  %3 = load i32, i32* %i, align 4, !dbg !867
  %idxprom = zext i32 %3 to i64, !dbg !865
  %arrayidx = getelementptr i8, i8* %2, i64 %idxprom, !dbg !865
  %4 = load i8, i8* %arrayidx, align 1, !dbg !865
  %conv2 = zext i8 %4 to i32, !dbg !865
  %shl = shl i32 1, %conv2, !dbg !868
  %5 = load i16, i16* %mask, align 2, !dbg !869
  %conv3 = zext i16 %5 to i32, !dbg !869
  %or = or i32 %conv3, %shl, !dbg !869
  %conv4 = trunc i32 %or to i16, !dbg !869
  store i16 %conv4, i16* %mask, align 2, !dbg !869
  br label %for.inc, !dbg !870

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !871
  %inc = add i32 %6, 1, !dbg !871
  store i32 %inc, i32* %i, align 4, !dbg !871
  br label %for.cond, !dbg !872, !llvm.loop !873

for.end:                                          ; preds = %for.cond
  %7 = load i16, i16* %mask, align 2, !dbg !875
  ret i16 %7, !dbg !876
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_rs_move_data(i8* %destination, i8* %source, i16 zeroext %item_count, i8 zeroext %move_type) #0 !dbg !877 {
entry:
  %destination.addr = alloca i8*, align 8
  %source.addr = alloca i8*, align 8
  %item_count.addr = alloca i16, align 2
  %move_type.addr = alloca i8, align 1
  %i = alloca i32, align 4
  store i8* %destination, i8** %destination.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %destination.addr, metadata !880, metadata !DIExpression()), !dbg !881
  store i8* %source, i8** %source.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %source.addr, metadata !882, metadata !DIExpression()), !dbg !883
  store i16 %item_count, i16* %item_count.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %item_count.addr, metadata !884, metadata !DIExpression()), !dbg !885
  store i8 %move_type, i8* %move_type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %move_type.addr, metadata !886, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.declare(metadata i32* %i, metadata !888, metadata !DIExpression()), !dbg !889
  store i32 0, i32* %i, align 4, !dbg !890
  br label %for.cond, !dbg !892

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !893
  %1 = load i16, i16* %item_count.addr, align 2, !dbg !895
  %conv = zext i16 %1 to i32, !dbg !895
  %cmp = icmp ult i32 %0, %conv, !dbg !896
  br i1 %cmp, label %for.body, label %for.end, !dbg !897

for.body:                                         ; preds = %for.cond
  %2 = load i8, i8* %move_type.addr, align 1, !dbg !898
  %conv2 = zext i8 %2 to i32, !dbg !898
  switch i32 %conv2, label %sw.default [
    i32 25, label %sw.bb
    i32 22, label %sw.bb
    i32 24, label %sw.bb
    i32 23, label %sw.bb
    i32 26, label %sw.bb4
    i32 21, label %sw.bb4
    i32 27, label %sw.bb7
    i32 28, label %sw.bb12
  ], !dbg !900

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body
  %3 = load i8*, i8** %destination.addr, align 8, !dbg !901
  %4 = load i8*, i8** %source.addr, align 8, !dbg !903
  %5 = load i16, i16* %item_count.addr, align 2, !dbg !904
  %conv3 = zext i16 %5 to i64, !dbg !904
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %4, i64 %conv3, i1 false), !dbg !905
  br label %for.end, !dbg !906

sw.bb4:                                           ; preds = %for.body, %for.body
  %6 = load i8*, i8** %source.addr, align 8, !dbg !907
  %7 = bitcast i8* %6 to i16*, !dbg !907
  %8 = load i32, i32* %i, align 4, !dbg !907
  %idxprom = zext i32 %8 to i64, !dbg !907
  %arrayidx = getelementptr i16, i16* %7, i64 %idxprom, !dbg !907
  %9 = bitcast i16* %arrayidx to i8*, !dbg !907
  %10 = bitcast i8* %9 to i16*, !dbg !907
  %11 = load i16, i16* %10, align 2, !dbg !907
  %12 = load i8*, i8** %destination.addr, align 8, !dbg !907
  %13 = bitcast i8* %12 to i16*, !dbg !907
  %14 = load i32, i32* %i, align 4, !dbg !907
  %idxprom5 = zext i32 %14 to i64, !dbg !907
  %arrayidx6 = getelementptr i16, i16* %13, i64 %idxprom5, !dbg !907
  %15 = bitcast i16* %arrayidx6 to i8*, !dbg !907
  %16 = bitcast i8* %15 to i16*, !dbg !907
  store i16 %11, i16* %16, align 2, !dbg !907
  br label %sw.epilog, !dbg !908

sw.bb7:                                           ; preds = %for.body
  %17 = load i8*, i8** %source.addr, align 8, !dbg !909
  %18 = bitcast i8* %17 to i32*, !dbg !909
  %19 = load i32, i32* %i, align 4, !dbg !909
  %idxprom8 = zext i32 %19 to i64, !dbg !909
  %arrayidx9 = getelementptr i32, i32* %18, i64 %idxprom8, !dbg !909
  %20 = bitcast i32* %arrayidx9 to i8*, !dbg !909
  %21 = bitcast i8* %20 to i32*, !dbg !909
  %22 = load i32, i32* %21, align 4, !dbg !909
  %23 = load i8*, i8** %destination.addr, align 8, !dbg !909
  %24 = bitcast i8* %23 to i32*, !dbg !909
  %25 = load i32, i32* %i, align 4, !dbg !909
  %idxprom10 = zext i32 %25 to i64, !dbg !909
  %arrayidx11 = getelementptr i32, i32* %24, i64 %idxprom10, !dbg !909
  %26 = bitcast i32* %arrayidx11 to i8*, !dbg !909
  %27 = bitcast i8* %26 to i32*, !dbg !909
  store i32 %22, i32* %27, align 4, !dbg !909
  br label %sw.epilog, !dbg !910

sw.bb12:                                          ; preds = %for.body
  %28 = load i8*, i8** %source.addr, align 8, !dbg !911
  %29 = bitcast i8* %28 to i64*, !dbg !911
  %30 = load i32, i32* %i, align 4, !dbg !911
  %idxprom13 = zext i32 %30 to i64, !dbg !911
  %arrayidx14 = getelementptr i64, i64* %29, i64 %idxprom13, !dbg !911
  %31 = bitcast i64* %arrayidx14 to i8*, !dbg !911
  %32 = bitcast i8* %31 to i64*, !dbg !911
  %33 = load i64, i64* %32, align 8, !dbg !911
  %34 = load i8*, i8** %destination.addr, align 8, !dbg !911
  %35 = bitcast i8* %34 to i64*, !dbg !911
  %36 = load i32, i32* %i, align 4, !dbg !911
  %idxprom15 = zext i32 %36 to i64, !dbg !911
  %arrayidx16 = getelementptr i64, i64* %35, i64 %idxprom15, !dbg !911
  %37 = bitcast i64* %arrayidx16 to i8*, !dbg !911
  %38 = bitcast i8* %37 to i64*, !dbg !911
  store i64 %33, i64* %38, align 8, !dbg !911
  br label %sw.epilog, !dbg !912

sw.default:                                       ; preds = %for.body
  br label %for.end, !dbg !913

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb7, %sw.bb4
  br label %for.inc, !dbg !914

for.inc:                                          ; preds = %sw.epilog
  %39 = load i32, i32* %i, align 4, !dbg !915
  %inc = add i32 %39, 1, !dbg !915
  store i32 %inc, i32* %i, align 4, !dbg !915
  br label %for.cond, !dbg !916, !llvm.loop !917

for.end:                                          ; preds = %sw.bb, %sw.default, %for.cond
  ret void, !dbg !919
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_rs_set_resource_length(i32 %total_length, %union.aml_resource* %aml) #0 !dbg !920 {
entry:
  %total_length.addr = alloca i32, align 4
  %aml.addr = alloca %union.aml_resource*, align 8
  %resource_length = alloca i16, align 2
  store i32 %total_length, i32* %total_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %total_length.addr, metadata !1252, metadata !DIExpression()), !dbg !1253
  store %union.aml_resource* %aml, %union.aml_resource** %aml.addr, align 8
  call void @llvm.dbg.declare(metadata %union.aml_resource** %aml.addr, metadata !1254, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.declare(metadata i16* %resource_length, metadata !1256, metadata !DIExpression()), !dbg !1257
  %0 = load i32, i32* %total_length.addr, align 4, !dbg !1258
  %1 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1259
  %2 = bitcast %union.aml_resource* %1 to i8*, !dbg !1259
  %call = call zeroext i8 @acpi_ut_get_resource_header_length(i8* %2) #9, !dbg !1260
  %conv = zext i8 %call to i32, !dbg !1260
  %sub = sub i32 %0, %conv, !dbg !1261
  %conv1 = trunc i32 %sub to i16, !dbg !1262
  store i16 %conv1, i16* %resource_length, align 2, !dbg !1263
  %3 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1264
  %small_header = bitcast %union.aml_resource* %3 to %struct.aml_resource_small_header*, !dbg !1266
  %descriptor_type = getelementptr inbounds %struct.aml_resource_small_header, %struct.aml_resource_small_header* %small_header, i32 0, i32 0, !dbg !1267
  %4 = load i8, i8* %descriptor_type, align 4, !dbg !1267
  %conv2 = zext i8 %4 to i32, !dbg !1264
  %and = and i32 %conv2, 128, !dbg !1268
  %tobool = icmp ne i32 %and, 0, !dbg !1268
  br i1 %tobool, label %if.then, label %if.else, !dbg !1269

if.then:                                          ; preds = %entry
  %5 = bitcast i16* %resource_length to i8*, !dbg !1270
  %6 = bitcast i8* %5 to i16*, !dbg !1270
  %7 = load i16, i16* %6, align 2, !dbg !1270
  %8 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1270
  %large_header = bitcast %union.aml_resource* %8 to %struct.aml_resource_large_header*, !dbg !1270
  %resource_length3 = getelementptr inbounds %struct.aml_resource_large_header, %struct.aml_resource_large_header* %large_header, i32 0, i32 1, !dbg !1270
  %9 = bitcast i16* %resource_length3 to i8*, !dbg !1270
  %10 = bitcast i8* %9 to i16*, !dbg !1270
  store i16 %7, i16* %10, align 2, !dbg !1270
  br label %if.end, !dbg !1272

if.else:                                          ; preds = %entry
  %11 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1273
  %small_header4 = bitcast %union.aml_resource* %11 to %struct.aml_resource_small_header*, !dbg !1275
  %descriptor_type5 = getelementptr inbounds %struct.aml_resource_small_header, %struct.aml_resource_small_header* %small_header4, i32 0, i32 0, !dbg !1276
  %12 = load i8, i8* %descriptor_type5, align 4, !dbg !1276
  %conv6 = zext i8 %12 to i32, !dbg !1273
  %and7 = and i32 %conv6, -8, !dbg !1277
  %13 = load i16, i16* %resource_length, align 2, !dbg !1278
  %conv8 = zext i16 %13 to i32, !dbg !1278
  %or = or i32 %and7, %conv8, !dbg !1279
  %conv9 = trunc i32 %or to i8, !dbg !1280
  %14 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1281
  %small_header10 = bitcast %union.aml_resource* %14 to %struct.aml_resource_small_header*, !dbg !1282
  %descriptor_type11 = getelementptr inbounds %struct.aml_resource_small_header, %struct.aml_resource_small_header* %small_header10, i32 0, i32 0, !dbg !1283
  store i8 %conv9, i8* %descriptor_type11, align 4, !dbg !1284
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1285
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ut_get_resource_header_length(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_rs_set_resource_header(i8 zeroext %descriptor_type, i32 %total_length, %union.aml_resource* %aml) #0 !dbg !1286 {
entry:
  %descriptor_type.addr = alloca i8, align 1
  %total_length.addr = alloca i32, align 4
  %aml.addr = alloca %union.aml_resource*, align 8
  store i8 %descriptor_type, i8* %descriptor_type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %descriptor_type.addr, metadata !1289, metadata !DIExpression()), !dbg !1290
  store i32 %total_length, i32* %total_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %total_length.addr, metadata !1291, metadata !DIExpression()), !dbg !1292
  store %union.aml_resource* %aml, %union.aml_resource** %aml.addr, align 8
  call void @llvm.dbg.declare(metadata %union.aml_resource** %aml.addr, metadata !1293, metadata !DIExpression()), !dbg !1294
  %0 = load i8, i8* %descriptor_type.addr, align 1, !dbg !1295
  %1 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1296
  %small_header = bitcast %union.aml_resource* %1 to %struct.aml_resource_small_header*, !dbg !1297
  %descriptor_type1 = getelementptr inbounds %struct.aml_resource_small_header, %struct.aml_resource_small_header* %small_header, i32 0, i32 0, !dbg !1298
  store i8 %0, i8* %descriptor_type1, align 4, !dbg !1299
  %2 = load i32, i32* %total_length.addr, align 4, !dbg !1300
  %3 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1301
  call void @acpi_rs_set_resource_length(i32 %2, %union.aml_resource* %3) #9, !dbg !1302
  ret void, !dbg !1303
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i16 @acpi_rs_get_resource_source(i16 zeroext %resource_length, i16 zeroext %minimum_length, %struct.acpi_resource_source* %resource_source, %union.aml_resource* %aml, i8* %string_ptr) #0 !dbg !1304 {
entry:
  %retval = alloca i16, align 2
  %resource_length.addr = alloca i16, align 2
  %minimum_length.addr = alloca i16, align 2
  %resource_source.addr = alloca %struct.acpi_resource_source*, align 8
  %aml.addr = alloca %union.aml_resource*, align 8
  %string_ptr.addr = alloca i8*, align 8
  %total_length = alloca i32, align 4
  %aml_resource_source = alloca i8*, align 8
  store i16 %resource_length, i16* %resource_length.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %resource_length.addr, metadata !1313, metadata !DIExpression()), !dbg !1314
  store i16 %minimum_length, i16* %minimum_length.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %minimum_length.addr, metadata !1315, metadata !DIExpression()), !dbg !1316
  store %struct.acpi_resource_source* %resource_source, %struct.acpi_resource_source** %resource_source.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_source** %resource_source.addr, metadata !1317, metadata !DIExpression()), !dbg !1318
  store %union.aml_resource* %aml, %union.aml_resource** %aml.addr, align 8
  call void @llvm.dbg.declare(metadata %union.aml_resource** %aml.addr, metadata !1319, metadata !DIExpression()), !dbg !1320
  store i8* %string_ptr, i8** %string_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %string_ptr.addr, metadata !1321, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.declare(metadata i32* %total_length, metadata !1323, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.declare(metadata i8** %aml_resource_source, metadata !1325, metadata !DIExpression()), !dbg !1326
  %0 = load i16, i16* %resource_length.addr, align 2, !dbg !1327
  %conv = zext i16 %0 to i64, !dbg !1327
  %add = add i64 %conv, 3, !dbg !1328
  %conv1 = trunc i64 %add to i32, !dbg !1327
  store i32 %conv1, i32* %total_length, align 4, !dbg !1329
  %1 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1330
  %2 = bitcast %union.aml_resource* %1 to i8*, !dbg !1330
  %3 = load i16, i16* %minimum_length.addr, align 2, !dbg !1330
  %conv2 = zext i16 %3 to i64, !dbg !1330
  %add.ptr = getelementptr i8, i8* %2, i64 %conv2, !dbg !1330
  store i8* %add.ptr, i8** %aml_resource_source, align 8, !dbg !1331
  %4 = load i32, i32* %total_length, align 4, !dbg !1332
  %5 = load i16, i16* %minimum_length.addr, align 2, !dbg !1334
  %conv3 = zext i16 %5 to i32, !dbg !1334
  %add4 = add i32 %conv3, 1, !dbg !1335
  %cmp = icmp ugt i32 %4, %add4, !dbg !1336
  br i1 %cmp, label %if.then, label %if.end22, !dbg !1337

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %aml_resource_source, align 8, !dbg !1338
  %arrayidx = getelementptr i8, i8* %6, i64 0, !dbg !1338
  %7 = load i8, i8* %arrayidx, align 1, !dbg !1338
  %8 = load %struct.acpi_resource_source*, %struct.acpi_resource_source** %resource_source.addr, align 8, !dbg !1340
  %index = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %8, i32 0, i32 0, !dbg !1341
  store i8 %7, i8* %index, align 1, !dbg !1342
  %9 = load i8*, i8** %string_ptr.addr, align 8, !dbg !1343
  %10 = load %struct.acpi_resource_source*, %struct.acpi_resource_source** %resource_source.addr, align 8, !dbg !1344
  %string_ptr6 = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %10, i32 0, i32 2, !dbg !1345
  store i8* %9, i8** %string_ptr6, align 1, !dbg !1346
  %11 = load i8*, i8** %string_ptr.addr, align 8, !dbg !1347
  %tobool = icmp ne i8* %11, null, !dbg !1347
  br i1 %tobool, label %if.end, label %if.then7, !dbg !1349

if.then7:                                         ; preds = %if.then
  %12 = load %struct.acpi_resource_source*, %struct.acpi_resource_source** %resource_source.addr, align 8, !dbg !1350
  %13 = bitcast %struct.acpi_resource_source* %12 to i8*, !dbg !1350
  %add.ptr8 = getelementptr i8, i8* %13, i64 11, !dbg !1350
  %14 = load %struct.acpi_resource_source*, %struct.acpi_resource_source** %resource_source.addr, align 8, !dbg !1352
  %string_ptr9 = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %14, i32 0, i32 2, !dbg !1353
  store i8* %add.ptr8, i8** %string_ptr9, align 1, !dbg !1354
  br label %if.end, !dbg !1355

if.end:                                           ; preds = %if.then7, %if.then
  %15 = load i8*, i8** %aml_resource_source, align 8, !dbg !1356
  %arrayidx10 = getelementptr i8, i8* %15, i64 1, !dbg !1356
  %call = call i64 @strlen(i8* %arrayidx10) #9, !dbg !1357
  %conv11 = trunc i64 %call to i32, !dbg !1358
  %add12 = add i32 %conv11, 1, !dbg !1359
  store i32 %add12, i32* %total_length, align 4, !dbg !1360
  %16 = load i32, i32* %total_length, align 4, !dbg !1361
  %conv13 = zext i32 %16 to i64, !dbg !1361
  %add14 = add i64 %conv13, 7, !dbg !1361
  %and = and i64 %add14, -8, !dbg !1361
  %conv15 = trunc i64 %and to i32, !dbg !1362
  store i32 %conv15, i32* %total_length, align 4, !dbg !1363
  %17 = load %struct.acpi_resource_source*, %struct.acpi_resource_source** %resource_source.addr, align 8, !dbg !1364
  %string_ptr16 = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %17, i32 0, i32 2, !dbg !1365
  %18 = load i8*, i8** %string_ptr16, align 1, !dbg !1365
  %19 = load i32, i32* %total_length, align 4, !dbg !1366
  %conv17 = zext i32 %19 to i64, !dbg !1366
  call void @llvm.memset.p0i8.i64(i8* align 1 %18, i8 0, i64 %conv17, i1 false), !dbg !1367
  %20 = load %struct.acpi_resource_source*, %struct.acpi_resource_source** %resource_source.addr, align 8, !dbg !1368
  %string_ptr18 = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %20, i32 0, i32 2, !dbg !1369
  %21 = load i8*, i8** %string_ptr18, align 1, !dbg !1369
  %22 = load i8*, i8** %aml_resource_source, align 8, !dbg !1370
  %arrayidx19 = getelementptr i8, i8* %22, i64 1, !dbg !1370
  %call20 = call zeroext i16 @acpi_rs_strcpy(i8* %21, i8* %arrayidx19) #9, !dbg !1371
  %23 = load %struct.acpi_resource_source*, %struct.acpi_resource_source** %resource_source.addr, align 8, !dbg !1372
  %string_length = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %23, i32 0, i32 1, !dbg !1373
  store i16 %call20, i16* %string_length, align 1, !dbg !1374
  %24 = load i32, i32* %total_length, align 4, !dbg !1375
  %conv21 = trunc i32 %24 to i16, !dbg !1376
  store i16 %conv21, i16* %retval, align 2, !dbg !1377
  br label %return, !dbg !1377

if.end22:                                         ; preds = %entry
  %25 = load %struct.acpi_resource_source*, %struct.acpi_resource_source** %resource_source.addr, align 8, !dbg !1378
  %index23 = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %25, i32 0, i32 0, !dbg !1379
  store i8 0, i8* %index23, align 1, !dbg !1380
  %26 = load %struct.acpi_resource_source*, %struct.acpi_resource_source** %resource_source.addr, align 8, !dbg !1381
  %string_length24 = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %26, i32 0, i32 1, !dbg !1382
  store i16 0, i16* %string_length24, align 1, !dbg !1383
  %27 = load %struct.acpi_resource_source*, %struct.acpi_resource_source** %resource_source.addr, align 8, !dbg !1384
  %string_ptr25 = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %27, i32 0, i32 2, !dbg !1385
  store i8* null, i8** %string_ptr25, align 1, !dbg !1386
  store i16 0, i16* %retval, align 2, !dbg !1387
  br label %return, !dbg !1387

return:                                           ; preds = %if.end22, %if.end
  %28 = load i16, i16* %retval, align 2, !dbg !1388
  ret i16 %28, !dbg !1388
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @acpi_rs_strcpy(i8* %destination, i8* %source) #0 !dbg !1389 {
entry:
  %destination.addr = alloca i8*, align 8
  %source.addr = alloca i8*, align 8
  %i = alloca i16, align 2
  store i8* %destination, i8** %destination.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %destination.addr, metadata !1392, metadata !DIExpression()), !dbg !1393
  store i8* %source, i8** %source.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %source.addr, metadata !1394, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.declare(metadata i16* %i, metadata !1396, metadata !DIExpression()), !dbg !1397
  store i16 0, i16* %i, align 2, !dbg !1398
  br label %for.cond, !dbg !1400

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %source.addr, align 8, !dbg !1401
  %1 = load i16, i16* %i, align 2, !dbg !1403
  %idxprom = zext i16 %1 to i64, !dbg !1401
  %arrayidx = getelementptr i8, i8* %0, i64 %idxprom, !dbg !1401
  %2 = load i8, i8* %arrayidx, align 1, !dbg !1401
  %tobool = icmp ne i8 %2, 0, !dbg !1404
  br i1 %tobool, label %for.body, label %for.end, !dbg !1404

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %source.addr, align 8, !dbg !1405
  %4 = load i16, i16* %i, align 2, !dbg !1407
  %idxprom1 = zext i16 %4 to i64, !dbg !1405
  %arrayidx2 = getelementptr i8, i8* %3, i64 %idxprom1, !dbg !1405
  %5 = load i8, i8* %arrayidx2, align 1, !dbg !1405
  %6 = load i8*, i8** %destination.addr, align 8, !dbg !1408
  %7 = load i16, i16* %i, align 2, !dbg !1409
  %idxprom3 = zext i16 %7 to i64, !dbg !1408
  %arrayidx4 = getelementptr i8, i8* %6, i64 %idxprom3, !dbg !1408
  store i8 %5, i8* %arrayidx4, align 1, !dbg !1410
  br label %for.inc, !dbg !1411

for.inc:                                          ; preds = %for.body
  %8 = load i16, i16* %i, align 2, !dbg !1412
  %inc = add i16 %8, 1, !dbg !1412
  store i16 %inc, i16* %i, align 2, !dbg !1412
  br label %for.cond, !dbg !1413, !llvm.loop !1414

for.end:                                          ; preds = %for.cond
  %9 = load i8*, i8** %destination.addr, align 8, !dbg !1416
  %10 = load i16, i16* %i, align 2, !dbg !1417
  %idxprom5 = zext i16 %10 to i64, !dbg !1416
  %arrayidx6 = getelementptr i8, i8* %9, i64 %idxprom5, !dbg !1416
  store i8 0, i8* %arrayidx6, align 1, !dbg !1418
  %11 = load i16, i16* %i, align 2, !dbg !1419
  %conv = zext i16 %11 to i32, !dbg !1419
  %add = add i32 %conv, 1, !dbg !1420
  %conv7 = trunc i32 %add to i16, !dbg !1421
  ret i16 %conv7, !dbg !1422
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_rs_set_resource_source(%union.aml_resource* %aml, i16 zeroext %minimum_length, %struct.acpi_resource_source* %resource_source) #0 !dbg !1423 {
entry:
  %aml.addr = alloca %union.aml_resource*, align 8
  %minimum_length.addr = alloca i16, align 2
  %resource_source.addr = alloca %struct.acpi_resource_source*, align 8
  %aml_resource_source = alloca i8*, align 8
  %descriptor_length = alloca i32, align 4
  store %union.aml_resource* %aml, %union.aml_resource** %aml.addr, align 8
  call void @llvm.dbg.declare(metadata %union.aml_resource** %aml.addr, metadata !1426, metadata !DIExpression()), !dbg !1427
  store i16 %minimum_length, i16* %minimum_length.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %minimum_length.addr, metadata !1428, metadata !DIExpression()), !dbg !1429
  store %struct.acpi_resource_source* %resource_source, %struct.acpi_resource_source** %resource_source.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_source** %resource_source.addr, metadata !1430, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.declare(metadata i8** %aml_resource_source, metadata !1432, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.declare(metadata i32* %descriptor_length, metadata !1434, metadata !DIExpression()), !dbg !1435
  %0 = load i16, i16* %minimum_length.addr, align 2, !dbg !1436
  %conv = zext i16 %0 to i32, !dbg !1436
  store i32 %conv, i32* %descriptor_length, align 4, !dbg !1437
  %1 = load %struct.acpi_resource_source*, %struct.acpi_resource_source** %resource_source.addr, align 8, !dbg !1438
  %string_length = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %1, i32 0, i32 1, !dbg !1440
  %2 = load i16, i16* %string_length, align 1, !dbg !1440
  %tobool = icmp ne i16 %2, 0, !dbg !1438
  br i1 %tobool, label %if.then, label %if.end, !dbg !1441

if.then:                                          ; preds = %entry
  %3 = load %union.aml_resource*, %union.aml_resource** %aml.addr, align 8, !dbg !1442
  %4 = bitcast %union.aml_resource* %3 to i8*, !dbg !1442
  %5 = load i16, i16* %minimum_length.addr, align 2, !dbg !1442
  %conv1 = zext i16 %5 to i64, !dbg !1442
  %add.ptr = getelementptr i8, i8* %4, i64 %conv1, !dbg !1442
  store i8* %add.ptr, i8** %aml_resource_source, align 8, !dbg !1444
  %6 = load %struct.acpi_resource_source*, %struct.acpi_resource_source** %resource_source.addr, align 8, !dbg !1445
  %index = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %6, i32 0, i32 0, !dbg !1446
  %7 = load i8, i8* %index, align 1, !dbg !1446
  %8 = load i8*, i8** %aml_resource_source, align 8, !dbg !1447
  %arrayidx = getelementptr i8, i8* %8, i64 0, !dbg !1447
  store i8 %7, i8* %arrayidx, align 1, !dbg !1448
  %9 = load i8*, i8** %aml_resource_source, align 8, !dbg !1449
  %arrayidx2 = getelementptr i8, i8* %9, i64 1, !dbg !1449
  %10 = load %struct.acpi_resource_source*, %struct.acpi_resource_source** %resource_source.addr, align 8, !dbg !1450
  %string_ptr = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %10, i32 0, i32 2, !dbg !1451
  %11 = load i8*, i8** %string_ptr, align 1, !dbg !1451
  %call = call i8* @strcpy(i8* %arrayidx2, i8* %11) #9, !dbg !1452
  %12 = load %struct.acpi_resource_source*, %struct.acpi_resource_source** %resource_source.addr, align 8, !dbg !1453
  %string_length3 = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %12, i32 0, i32 1, !dbg !1454
  %13 = load i16, i16* %string_length3, align 1, !dbg !1454
  %conv4 = zext i16 %13 to i32, !dbg !1455
  %add = add i32 %conv4, 1, !dbg !1456
  %14 = load i32, i32* %descriptor_length, align 4, !dbg !1457
  %add5 = add i32 %14, %add, !dbg !1457
  store i32 %add5, i32* %descriptor_length, align 4, !dbg !1457
  br label %if.end, !dbg !1458

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, i32* %descriptor_length, align 4, !dbg !1459
  ret i32 %15, !dbg !1460
}

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_rs_get_prt_method_data(%struct.acpi_namespace_node* %node, %struct.acpi_buffer* %ret_buffer) #0 !dbg !1461 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %ret_buffer.addr = alloca %struct.acpi_buffer*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !1469, metadata !DIExpression()), !dbg !1470
  store %struct.acpi_buffer* %ret_buffer, %struct.acpi_buffer** %ret_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %ret_buffer.addr, metadata !1471, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1473, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1475, metadata !DIExpression()), !dbg !1476
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1477
  %call = call i32 @acpi_ut_evaluate_object(%struct.acpi_namespace_node* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 8, %union.acpi_operand_object** %obj_desc) #9, !dbg !1478
  store i32 %call, i32* %status, align 4, !dbg !1479
  %1 = load i32, i32* %status, align 4, !dbg !1480
  %tobool = icmp ne i32 %1, 0, !dbg !1480
  br i1 %tobool, label %if.then, label %if.end, !dbg !1482

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !1483
  store i32 %2, i32* %retval, align 4, !dbg !1483
  br label %return, !dbg !1483

if.end:                                           ; preds = %entry
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1485
  %4 = load %struct.acpi_buffer*, %struct.acpi_buffer** %ret_buffer.addr, align 8, !dbg !1486
  %call1 = call i32 @acpi_rs_create_pci_routing_table(%union.acpi_operand_object* %3, %struct.acpi_buffer* %4) #9, !dbg !1487
  store i32 %call1, i32* %status, align 4, !dbg !1488
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1489
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %5) #9, !dbg !1490
  %6 = load i32, i32* %status, align 4, !dbg !1491
  store i32 %6, i32* %retval, align 4, !dbg !1491
  br label %return, !dbg !1491

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !1492
  ret i32 %7, !dbg !1492
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_evaluate_object(%struct.acpi_namespace_node*, i8*, i32, %union.acpi_operand_object**) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_rs_create_pci_routing_table(%union.acpi_operand_object*, %struct.acpi_buffer*) #3

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_rs_get_crs_method_data(%struct.acpi_namespace_node* %node, %struct.acpi_buffer* %ret_buffer) #0 !dbg !1493 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %ret_buffer.addr = alloca %struct.acpi_buffer*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !1494, metadata !DIExpression()), !dbg !1495
  store %struct.acpi_buffer* %ret_buffer, %struct.acpi_buffer** %ret_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %ret_buffer.addr, metadata !1496, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1498, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1500, metadata !DIExpression()), !dbg !1501
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1502
  %call = call i32 @acpi_ut_evaluate_object(%struct.acpi_namespace_node* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4, %union.acpi_operand_object** %obj_desc) #9, !dbg !1503
  store i32 %call, i32* %status, align 4, !dbg !1504
  %1 = load i32, i32* %status, align 4, !dbg !1505
  %tobool = icmp ne i32 %1, 0, !dbg !1505
  br i1 %tobool, label %if.then, label %if.end, !dbg !1507

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !1508
  store i32 %2, i32* %retval, align 4, !dbg !1508
  br label %return, !dbg !1508

if.end:                                           ; preds = %entry
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1510
  %4 = load %struct.acpi_buffer*, %struct.acpi_buffer** %ret_buffer.addr, align 8, !dbg !1511
  %call1 = call i32 @acpi_rs_create_resource_list(%union.acpi_operand_object* %3, %struct.acpi_buffer* %4) #9, !dbg !1512
  store i32 %call1, i32* %status, align 4, !dbg !1513
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1514
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %5) #9, !dbg !1515
  %6 = load i32, i32* %status, align 4, !dbg !1516
  store i32 %6, i32* %retval, align 4, !dbg !1516
  br label %return, !dbg !1516

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !1517
  ret i32 %7, !dbg !1517
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_rs_create_resource_list(%union.acpi_operand_object*, %struct.acpi_buffer*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_rs_get_prs_method_data(%struct.acpi_namespace_node* %node, %struct.acpi_buffer* %ret_buffer) #0 !dbg !1518 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %ret_buffer.addr = alloca %struct.acpi_buffer*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !1519, metadata !DIExpression()), !dbg !1520
  store %struct.acpi_buffer* %ret_buffer, %struct.acpi_buffer** %ret_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %ret_buffer.addr, metadata !1521, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1523, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1525, metadata !DIExpression()), !dbg !1526
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1527
  %call = call i32 @acpi_ut_evaluate_object(%struct.acpi_namespace_node* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4, %union.acpi_operand_object** %obj_desc) #9, !dbg !1528
  store i32 %call, i32* %status, align 4, !dbg !1529
  %1 = load i32, i32* %status, align 4, !dbg !1530
  %tobool = icmp ne i32 %1, 0, !dbg !1530
  br i1 %tobool, label %if.then, label %if.end, !dbg !1532

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !1533
  store i32 %2, i32* %retval, align 4, !dbg !1533
  br label %return, !dbg !1533

if.end:                                           ; preds = %entry
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1535
  %4 = load %struct.acpi_buffer*, %struct.acpi_buffer** %ret_buffer.addr, align 8, !dbg !1536
  %call1 = call i32 @acpi_rs_create_resource_list(%union.acpi_operand_object* %3, %struct.acpi_buffer* %4) #9, !dbg !1537
  store i32 %call1, i32* %status, align 4, !dbg !1538
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1539
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %5) #9, !dbg !1540
  %6 = load i32, i32* %status, align 4, !dbg !1541
  store i32 %6, i32* %retval, align 4, !dbg !1541
  br label %return, !dbg !1541

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !1542
  ret i32 %7, !dbg !1542
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_rs_get_aei_method_data(%struct.acpi_namespace_node* %node, %struct.acpi_buffer* %ret_buffer) #0 !dbg !1543 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %ret_buffer.addr = alloca %struct.acpi_buffer*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !1544, metadata !DIExpression()), !dbg !1545
  store %struct.acpi_buffer* %ret_buffer, %struct.acpi_buffer** %ret_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %ret_buffer.addr, metadata !1546, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1548, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1550, metadata !DIExpression()), !dbg !1551
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1552
  %call = call i32 @acpi_ut_evaluate_object(%struct.acpi_namespace_node* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4, %union.acpi_operand_object** %obj_desc) #9, !dbg !1553
  store i32 %call, i32* %status, align 4, !dbg !1554
  %1 = load i32, i32* %status, align 4, !dbg !1555
  %tobool = icmp ne i32 %1, 0, !dbg !1555
  br i1 %tobool, label %if.then, label %if.end, !dbg !1557

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !1558
  store i32 %2, i32* %retval, align 4, !dbg !1558
  br label %return, !dbg !1558

if.end:                                           ; preds = %entry
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1560
  %4 = load %struct.acpi_buffer*, %struct.acpi_buffer** %ret_buffer.addr, align 8, !dbg !1561
  %call1 = call i32 @acpi_rs_create_resource_list(%union.acpi_operand_object* %3, %struct.acpi_buffer* %4) #9, !dbg !1562
  store i32 %call1, i32* %status, align 4, !dbg !1563
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1564
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %5) #9, !dbg !1565
  %6 = load i32, i32* %status, align 4, !dbg !1566
  store i32 %6, i32* %retval, align 4, !dbg !1566
  br label %return, !dbg !1566

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !1567
  ret i32 %7, !dbg !1567
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_rs_get_method_data(i8* %handle, i8* %path, %struct.acpi_buffer* %ret_buffer) #0 !dbg !1568 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %path.addr = alloca i8*, align 8
  %ret_buffer.addr = alloca %struct.acpi_buffer*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !1572, metadata !DIExpression()), !dbg !1573
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !1574, metadata !DIExpression()), !dbg !1575
  store %struct.acpi_buffer* %ret_buffer, %struct.acpi_buffer** %ret_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %ret_buffer.addr, metadata !1576, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1578, metadata !DIExpression()), !dbg !1579
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1580, metadata !DIExpression()), !dbg !1581
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !1582
  %1 = bitcast i8* %0 to %struct.acpi_namespace_node*, !dbg !1582
  %2 = load i8*, i8** %path.addr, align 8, !dbg !1583
  %call = call i32 @acpi_ut_evaluate_object(%struct.acpi_namespace_node* %1, i8* %2, i32 4, %union.acpi_operand_object** %obj_desc) #9, !dbg !1584
  store i32 %call, i32* %status, align 4, !dbg !1585
  %3 = load i32, i32* %status, align 4, !dbg !1586
  %tobool = icmp ne i32 %3, 0, !dbg !1586
  br i1 %tobool, label %if.then, label %if.end, !dbg !1588

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %status, align 4, !dbg !1589
  store i32 %4, i32* %retval, align 4, !dbg !1589
  br label %return, !dbg !1589

if.end:                                           ; preds = %entry
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1591
  %6 = load %struct.acpi_buffer*, %struct.acpi_buffer** %ret_buffer.addr, align 8, !dbg !1592
  %call1 = call i32 @acpi_rs_create_resource_list(%union.acpi_operand_object* %5, %struct.acpi_buffer* %6) #9, !dbg !1593
  store i32 %call1, i32* %status, align 4, !dbg !1594
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1595
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %7) #9, !dbg !1596
  %8 = load i32, i32* %status, align 4, !dbg !1597
  store i32 %8, i32* %retval, align 4, !dbg !1597
  br label %return, !dbg !1597

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !1598
  ret i32 %9, !dbg !1598
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_rs_set_srs_method_data(%struct.acpi_namespace_node* %node, %struct.acpi_buffer* %in_buffer) #0 !dbg !1599 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %in_buffer.addr = alloca %struct.acpi_buffer*, align 8
  %info = alloca %struct.acpi_evaluate_info*, align 8
  %args = alloca [2 x %union.acpi_operand_object*], align 16
  %status = alloca i32, align 4
  %buffer = alloca %struct.acpi_buffer, align 8
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !1600, metadata !DIExpression()), !dbg !1601
  store %struct.acpi_buffer* %in_buffer, %struct.acpi_buffer** %in_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %in_buffer.addr, metadata !1602, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info, metadata !1604, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.declare(metadata [2 x %union.acpi_operand_object*]* %args, metadata !1670, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1672, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !1674, metadata !DIExpression()), !dbg !1675
  %call = call i8* @acpi_os_allocate_zeroed(i64 88) #9, !dbg !1676
  %0 = bitcast i8* %call to %struct.acpi_evaluate_info*, !dbg !1676
  store %struct.acpi_evaluate_info* %0, %struct.acpi_evaluate_info** %info, align 8, !dbg !1677
  %1 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1678
  %tobool = icmp ne %struct.acpi_evaluate_info* %1, null, !dbg !1678
  br i1 %tobool, label %if.end, label %if.then, !dbg !1680

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !1681
  br label %return, !dbg !1681

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1683
  %3 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1684
  %prefix_node = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %3, i32 0, i32 0, !dbg !1685
  store %struct.acpi_namespace_node* %2, %struct.acpi_namespace_node** %prefix_node, align 8, !dbg !1686
  %4 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1687
  %relative_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %4, i32 0, i32 1, !dbg !1688
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %relative_pathname, align 8, !dbg !1689
  %arraydecay = getelementptr inbounds [2 x %union.acpi_operand_object*], [2 x %union.acpi_operand_object*]* %args, i64 0, i64 0, !dbg !1690
  %5 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1691
  %parameters = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %5, i32 0, i32 2, !dbg !1692
  store %union.acpi_operand_object** %arraydecay, %union.acpi_operand_object*** %parameters, align 8, !dbg !1693
  %6 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1694
  %flags = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %6, i32 0, i32 15, !dbg !1695
  store i8 1, i8* %flags, align 2, !dbg !1696
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 0, !dbg !1697
  store i64 -2, i64* %length, align 8, !dbg !1698
  %7 = load %struct.acpi_buffer*, %struct.acpi_buffer** %in_buffer.addr, align 8, !dbg !1699
  %call1 = call i32 @acpi_rs_create_aml_resources(%struct.acpi_buffer* %7, %struct.acpi_buffer* %buffer) #9, !dbg !1700
  store i32 %call1, i32* %status, align 4, !dbg !1701
  %8 = load i32, i32* %status, align 4, !dbg !1702
  %tobool2 = icmp ne i32 %8, 0, !dbg !1702
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1704

if.then3:                                         ; preds = %if.end
  br label %cleanup, !dbg !1705

if.end4:                                          ; preds = %if.end
  %call5 = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 728, i32 256, i32 3) #9, !dbg !1707
  %arrayidx = getelementptr [2 x %union.acpi_operand_object*], [2 x %union.acpi_operand_object*]* %args, i64 0, i64 0, !dbg !1708
  store %union.acpi_operand_object* %call5, %union.acpi_operand_object** %arrayidx, align 16, !dbg !1709
  %arrayidx6 = getelementptr [2 x %union.acpi_operand_object*], [2 x %union.acpi_operand_object*]* %args, i64 0, i64 0, !dbg !1710
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx6, align 16, !dbg !1710
  %tobool7 = icmp ne %union.acpi_operand_object* %9, null, !dbg !1710
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !1712

if.then8:                                         ; preds = %if.end4
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !1713
  %10 = load i8*, i8** %pointer, align 8, !dbg !1713
  call void @acpi_os_free(i8* %10) #9, !dbg !1713
  store i32 4, i32* %status, align 4, !dbg !1715
  br label %cleanup, !dbg !1716

if.end9:                                          ; preds = %if.end4
  %length10 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 0, !dbg !1717
  %11 = load i64, i64* %length10, align 8, !dbg !1717
  %conv = trunc i64 %11 to i32, !dbg !1718
  %arrayidx11 = getelementptr [2 x %union.acpi_operand_object*], [2 x %union.acpi_operand_object*]* %args, i64 0, i64 0, !dbg !1719
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx11, align 16, !dbg !1719
  %buffer12 = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_buffer*, !dbg !1720
  %length13 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer12, i32 0, i32 6, !dbg !1721
  store i32 %conv, i32* %length13, align 8, !dbg !1722
  %pointer14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !1723
  %13 = load i8*, i8** %pointer14, align 8, !dbg !1723
  %arrayidx15 = getelementptr [2 x %union.acpi_operand_object*], [2 x %union.acpi_operand_object*]* %args, i64 0, i64 0, !dbg !1724
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx15, align 16, !dbg !1724
  %buffer16 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_buffer*, !dbg !1725
  %pointer17 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer16, i32 0, i32 5, !dbg !1726
  store i8* %13, i8** %pointer17, align 8, !dbg !1727
  %arrayidx18 = getelementptr [2 x %union.acpi_operand_object*], [2 x %union.acpi_operand_object*]* %args, i64 0, i64 0, !dbg !1728
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx18, align 16, !dbg !1728
  %common = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_common*, !dbg !1729
  %flags19 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 4, !dbg !1730
  store i8 4, i8* %flags19, align 4, !dbg !1731
  %arrayidx20 = getelementptr [2 x %union.acpi_operand_object*], [2 x %union.acpi_operand_object*]* %args, i64 0, i64 1, !dbg !1732
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %arrayidx20, align 8, !dbg !1733
  %16 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1734
  %call21 = call i32 @acpi_ns_evaluate(%struct.acpi_evaluate_info* %16) #9, !dbg !1735
  store i32 %call21, i32* %status, align 4, !dbg !1736
  %arrayidx22 = getelementptr [2 x %union.acpi_operand_object*], [2 x %union.acpi_operand_object*]* %args, i64 0, i64 0, !dbg !1737
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx22, align 16, !dbg !1737
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %17) #9, !dbg !1738
  br label %cleanup, !dbg !1738

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then3
  call void @llvm.dbg.label(metadata !1739), !dbg !1740
  %18 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1741
  %19 = bitcast %struct.acpi_evaluate_info* %18 to i8*, !dbg !1741
  call void @acpi_os_free(i8* %19) #9, !dbg !1741
  %20 = load i32, i32* %status, align 4, !dbg !1742
  store i32 %20, i32* %retval, align 4, !dbg !1742
  br label %return, !dbg !1742

return:                                           ; preds = %cleanup, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !1743
  ret i32 %21, !dbg !1743
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !1744 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1748, metadata !DIExpression()), !dbg !1754
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1758, metadata !DIExpression()), !dbg !1759
  %0 = load i64, i64* %size.addr, align 8, !dbg !1760
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1761, metadata !DIExpression()), !dbg !1762
  br label %do.body, !dbg !1762

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1763, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1767, metadata !DIExpression()), !dbg !1766
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1766
  %conv = zext i1 %cmp to i32, !dbg !1766
  store i32 1, i32* %tmp, align 4, !dbg !1766
  %1 = load i32, i32* %tmp, align 4, !dbg !1766
  %call = call i64 @arch_local_save_flags() #9, !dbg !1768
  store i64 %call, i64* %_flags, align 8, !dbg !1768
  br label %do.end, !dbg !1768

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1769, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1772, metadata !DIExpression()), !dbg !1771
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1771
  %conv6 = zext i1 %cmp5 to i32, !dbg !1771
  store i32 1, i32* %tmp7, align 4, !dbg !1771
  %2 = load i32, i32* %tmp7, align 4, !dbg !1771
  %3 = load i64, i64* %_flags, align 8, !dbg !1773
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1774
  %and.i = and i64 %4, 512, !dbg !1775
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1776
  %lnot.i = xor i1 %tobool.i, true, !dbg !1776
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1776
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1773
  %5 = load i32, i32* %tmp8, align 4, !dbg !1773
  store i32 %5, i32* %tmp1, align 4, !dbg !1768
  %6 = load i32, i32* %tmp1, align 4, !dbg !1762
  %tobool = icmp ne i32 %6, 0, !dbg !1777
  %7 = zext i1 %tobool to i64, !dbg !1777
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1777
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #9, !dbg !1778
  ret i8* %call10, !dbg !1779
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_rs_create_aml_resources(%struct.acpi_buffer*, %struct.acpi_buffer*) #3

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8*, i32, i32, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1780 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1783, metadata !DIExpression()), !dbg !1784
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1785
  call void @kfree(i8* %0) #9, !dbg !1786
  ret void, !dbg !1787
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_evaluate(%struct.acpi_evaluate_info*) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1788 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1795, metadata !DIExpression()), !dbg !1802
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1808, metadata !DIExpression()), !dbg !1809
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1810, metadata !DIExpression()), !dbg !1811
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1812, metadata !DIExpression()), !dbg !1813
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1814, metadata !DIExpression()), !dbg !1818
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1820, metadata !DIExpression()), !dbg !1824
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1826, metadata !DIExpression()), !dbg !1830
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1835, metadata !DIExpression()), !dbg !1836
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1837, metadata !DIExpression()), !dbg !1838
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1839, metadata !DIExpression()), !dbg !1840
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1841, metadata !DIExpression()), !dbg !1842
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1843, metadata !DIExpression()), !dbg !1844
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1845, metadata !DIExpression()), !dbg !1846
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1847, metadata !DIExpression()), !dbg !1848
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1849, metadata !DIExpression()), !dbg !1850
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1851, metadata !DIExpression()), !dbg !1852
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1853, metadata !DIExpression()), !dbg !1854
  %0 = load i64, i64* %size.addr, align 8, !dbg !1855
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1856
  %or = or i32 %1, 256, !dbg !1857
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1858
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !1859
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1860

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1861
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1862
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1863

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1864
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1865
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1866
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !1867
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1844
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1868
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1869
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1870
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1871
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1872
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1873
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !1874
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1874
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1874
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1874
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !1874
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1875
  br label %kmalloc.exit, !dbg !1875

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1876
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1877
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1877
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1879

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1880
  br label %kmalloc_index.exit.i, !dbg !1880

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1881
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1883
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1884

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1885
  br label %kmalloc_index.exit.i, !dbg !1885

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1886
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1888
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1889

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1890
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1891
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1892

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1893
  br label %kmalloc_index.exit.i, !dbg !1893

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1894
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1896
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1897

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1898
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1899
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1900

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1901
  br label %kmalloc_index.exit.i, !dbg !1901

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1902
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1904
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1905

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1906
  br label %kmalloc_index.exit.i, !dbg !1906

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1907
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1909
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1910

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1911
  br label %kmalloc_index.exit.i, !dbg !1911

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1912
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1914
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1915

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1916
  br label %kmalloc_index.exit.i, !dbg !1916

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1917
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1919
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1920

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1921
  br label %kmalloc_index.exit.i, !dbg !1921

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1922
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1924
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1925

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1926
  br label %kmalloc_index.exit.i, !dbg !1926

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1927
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1929
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1930

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1931
  br label %kmalloc_index.exit.i, !dbg !1931

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1932
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1934
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1935

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1936
  br label %kmalloc_index.exit.i, !dbg !1936

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1937
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1939
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1940

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1941
  br label %kmalloc_index.exit.i, !dbg !1941

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1942
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1944
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1945

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1946
  br label %kmalloc_index.exit.i, !dbg !1946

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1947
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1949
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1950

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1951
  br label %kmalloc_index.exit.i, !dbg !1951

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1952
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1954
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1955

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1956
  br label %kmalloc_index.exit.i, !dbg !1956

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1957
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1959
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1960

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1961
  br label %kmalloc_index.exit.i, !dbg !1961

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1962
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1964
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1965

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1966
  br label %kmalloc_index.exit.i, !dbg !1966

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1967
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1969
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1970

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1971
  br label %kmalloc_index.exit.i, !dbg !1971

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1972
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1974
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1975

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1976
  br label %kmalloc_index.exit.i, !dbg !1976

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1977
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1979
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1980

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1981
  br label %kmalloc_index.exit.i, !dbg !1981

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1982
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1984
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1985

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1986
  br label %kmalloc_index.exit.i, !dbg !1986

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1987
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1989
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1990

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1991
  br label %kmalloc_index.exit.i, !dbg !1991

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1992
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1994
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1995

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1996
  br label %kmalloc_index.exit.i, !dbg !1996

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1997
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1999
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2000

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2001
  br label %kmalloc_index.exit.i, !dbg !2001

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2002
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2004
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2005

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2006
  br label %kmalloc_index.exit.i, !dbg !2006

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2007
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2009
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2010

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2011
  br label %kmalloc_index.exit.i, !dbg !2011

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2012
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2014
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2015

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2016
  br label %kmalloc_index.exit.i, !dbg !2016

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2017
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2019
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2020

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2021
  br label %kmalloc_index.exit.i, !dbg !2021

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !2022, !srcloc !2025
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #8, !dbg !2026, !srcloc !2029
  unreachable, !dbg !2030

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2031
  store i32 %45, i32* %index.i, align 4, !dbg !2032
  %46 = load i32, i32* %index.i, align 4, !dbg !2033
  %tobool.i = icmp ne i32 %46, 0, !dbg !2033
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2035

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2036
  br label %kmalloc.exit, !dbg !2036

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2037
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2038
  %and.i.i = and i32 %48, 17, !dbg !2038
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2038
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2038
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2038
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2038
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2040

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2041
  br label %kmalloc_type.exit.i, !dbg !2041

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2042
  %and2.i.i = and i32 %49, 1, !dbg !2043
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2042
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2042
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2042
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2044
  br label %kmalloc_type.exit.i, !dbg !2044

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2045
  %idxprom.i = zext i32 %51 to i64, !dbg !2046
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2046
  %52 = load i32, i32* %index.i, align 4, !dbg !2047
  %idxprom6.i = zext i32 %52 to i64, !dbg !2046
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2046
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2046
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2048
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2049
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2050
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2051
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !2052
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2052
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2052
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2052
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !2052
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1813
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2053
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2054
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2055
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2056
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !2057
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2058
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2059
  store i8* %62, i8** %retval.i, align 8, !dbg !2060
  br label %kmalloc.exit, !dbg !2060

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2061
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2062
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !2063
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2063
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2063
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2063
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !2063
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2064
  br label %kmalloc.exit, !dbg !2064

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2065
  ret i8* %65, !dbg !2066
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !2067 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !2071, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2074, metadata !DIExpression()), !dbg !2073
  %0 = load i64, i64* %__edi, align 8, !dbg !2073
  store i64 %0, i64* %__edi, align 8, !dbg !2073
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2075, metadata !DIExpression()), !dbg !2073
  %1 = load i64, i64* %__esi, align 8, !dbg !2073
  store i64 %1, i64* %__esi, align 8, !dbg !2073
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2076, metadata !DIExpression()), !dbg !2073
  %2 = load i64, i64* %__edx, align 8, !dbg !2073
  store i64 %2, i64* %__edx, align 8, !dbg !2073
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2077, metadata !DIExpression()), !dbg !2073
  %3 = load i64, i64* %__ecx, align 8, !dbg !2073
  store i64 %3, i64* %__ecx, align 8, !dbg !2073
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2078, metadata !DIExpression()), !dbg !2073
  %4 = load i64, i64* %__eax, align 8, !dbg !2073
  store i64 %4, i64* %__eax, align 8, !dbg !2073
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !2073
  %6 = call i64 @llvm.read_register.i64(metadata !800), !dbg !2079
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !2079, !srcloc !2082
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !2079
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !2079
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2079
  call void @llvm.write_register.i64(metadata !800, i64 %asmresult1), !dbg !2079
  %8 = load i64, i64* %__eax, align 8, !dbg !2079
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !2083, metadata !DIExpression()), !dbg !2085
  store i64 -1, i64* %__mask, align 8, !dbg !2085
  %9 = load i64, i64* %__mask, align 8, !dbg !2085
  store i64 %9, i64* %tmp, align 8, !dbg !2085
  %10 = load i64, i64* %tmp, align 8, !dbg !2085
  %and = and i64 %8, %10, !dbg !2079
  store i64 %and, i64* %__ret, align 8, !dbg !2079
  %11 = load i64, i64* %__ret, align 8, !dbg !2073
  store i64 %11, i64* %tmp2, align 8, !dbg !2086
  %12 = load i64, i64* %tmp2, align 8, !dbg !2073
  ret i64 %12, !dbg !2087
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !2088 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2090, metadata !DIExpression()), !dbg !2095
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2097, metadata !DIExpression()), !dbg !2098
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2099, metadata !DIExpression()), !dbg !2100
  %0 = load i64, i64* %size.addr, align 8, !dbg !2101
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2103
  br i1 %1, label %if.then, label %if.end447, !dbg !2104

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2105
  %tobool = icmp ne i64 %2, 0, !dbg !2105
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2108

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !2109
  br label %return, !dbg !2109

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !2110
  %cmp = icmp ult i64 %3, 4096, !dbg !2112
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2113

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2114
  br label %return, !dbg !2114

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub = sub i64 %4, 1, !dbg !2115
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2115
  br i1 %5, label %cond.true, label %cond.false442, !dbg !2115

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub4 = sub i64 %6, 1, !dbg !2115
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !2115
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !2115

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub6 = sub i64 %8, 1, !dbg !2115
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !2115
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !2115

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !2115

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub9 = sub i64 %9, 1, !dbg !2115
  %and = and i64 %sub9, -9223372036854775808, !dbg !2115
  %tobool10 = icmp ne i64 %and, 0, !dbg !2115
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !2115

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !2115

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub13 = sub i64 %10, 1, !dbg !2115
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !2115
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2115
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2115

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !2115

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub18 = sub i64 %11, 1, !dbg !2115
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !2115
  %tobool20 = icmp ne i64 %and19, 0, !dbg !2115
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2115

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !2115

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub23 = sub i64 %12, 1, !dbg !2115
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !2115
  %tobool25 = icmp ne i64 %and24, 0, !dbg !2115
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !2115

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !2115

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub28 = sub i64 %13, 1, !dbg !2115
  %and29 = and i64 %sub28, 576460752303423488, !dbg !2115
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2115
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !2115

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !2115

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub33 = sub i64 %14, 1, !dbg !2115
  %and34 = and i64 %sub33, 288230376151711744, !dbg !2115
  %tobool35 = icmp ne i64 %and34, 0, !dbg !2115
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !2115

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !2115

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub38 = sub i64 %15, 1, !dbg !2115
  %and39 = and i64 %sub38, 144115188075855872, !dbg !2115
  %tobool40 = icmp ne i64 %and39, 0, !dbg !2115
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2115

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !2115

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub43 = sub i64 %16, 1, !dbg !2115
  %and44 = and i64 %sub43, 72057594037927936, !dbg !2115
  %tobool45 = icmp ne i64 %and44, 0, !dbg !2115
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !2115

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !2115

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub48 = sub i64 %17, 1, !dbg !2115
  %and49 = and i64 %sub48, 36028797018963968, !dbg !2115
  %tobool50 = icmp ne i64 %and49, 0, !dbg !2115
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !2115

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !2115

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub53 = sub i64 %18, 1, !dbg !2115
  %and54 = and i64 %sub53, 18014398509481984, !dbg !2115
  %tobool55 = icmp ne i64 %and54, 0, !dbg !2115
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !2115

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !2115

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub58 = sub i64 %19, 1, !dbg !2115
  %and59 = and i64 %sub58, 9007199254740992, !dbg !2115
  %tobool60 = icmp ne i64 %and59, 0, !dbg !2115
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2115

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !2115

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub63 = sub i64 %20, 1, !dbg !2115
  %and64 = and i64 %sub63, 4503599627370496, !dbg !2115
  %tobool65 = icmp ne i64 %and64, 0, !dbg !2115
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !2115

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !2115

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub68 = sub i64 %21, 1, !dbg !2115
  %and69 = and i64 %sub68, 2251799813685248, !dbg !2115
  %tobool70 = icmp ne i64 %and69, 0, !dbg !2115
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !2115

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !2115

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub73 = sub i64 %22, 1, !dbg !2115
  %and74 = and i64 %sub73, 1125899906842624, !dbg !2115
  %tobool75 = icmp ne i64 %and74, 0, !dbg !2115
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !2115

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !2115

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub78 = sub i64 %23, 1, !dbg !2115
  %and79 = and i64 %sub78, 562949953421312, !dbg !2115
  %tobool80 = icmp ne i64 %and79, 0, !dbg !2115
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !2115

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !2115

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub83 = sub i64 %24, 1, !dbg !2115
  %and84 = and i64 %sub83, 281474976710656, !dbg !2115
  %tobool85 = icmp ne i64 %and84, 0, !dbg !2115
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !2115

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !2115

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub88 = sub i64 %25, 1, !dbg !2115
  %and89 = and i64 %sub88, 140737488355328, !dbg !2115
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2115
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !2115

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !2115

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub93 = sub i64 %26, 1, !dbg !2115
  %and94 = and i64 %sub93, 70368744177664, !dbg !2115
  %tobool95 = icmp ne i64 %and94, 0, !dbg !2115
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !2115

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !2115

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub98 = sub i64 %27, 1, !dbg !2115
  %and99 = and i64 %sub98, 35184372088832, !dbg !2115
  %tobool100 = icmp ne i64 %and99, 0, !dbg !2115
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !2115

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !2115

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub103 = sub i64 %28, 1, !dbg !2115
  %and104 = and i64 %sub103, 17592186044416, !dbg !2115
  %tobool105 = icmp ne i64 %and104, 0, !dbg !2115
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !2115

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !2115

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub108 = sub i64 %29, 1, !dbg !2115
  %and109 = and i64 %sub108, 8796093022208, !dbg !2115
  %tobool110 = icmp ne i64 %and109, 0, !dbg !2115
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !2115

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !2115

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub113 = sub i64 %30, 1, !dbg !2115
  %and114 = and i64 %sub113, 4398046511104, !dbg !2115
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2115
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !2115

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !2115

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub118 = sub i64 %31, 1, !dbg !2115
  %and119 = and i64 %sub118, 2199023255552, !dbg !2115
  %tobool120 = icmp ne i64 %and119, 0, !dbg !2115
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !2115

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !2115

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub123 = sub i64 %32, 1, !dbg !2115
  %and124 = and i64 %sub123, 1099511627776, !dbg !2115
  %tobool125 = icmp ne i64 %and124, 0, !dbg !2115
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !2115

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !2115

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub128 = sub i64 %33, 1, !dbg !2115
  %and129 = and i64 %sub128, 549755813888, !dbg !2115
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2115
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !2115

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !2115

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub133 = sub i64 %34, 1, !dbg !2115
  %and134 = and i64 %sub133, 274877906944, !dbg !2115
  %tobool135 = icmp ne i64 %and134, 0, !dbg !2115
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !2115

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !2115

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub138 = sub i64 %35, 1, !dbg !2115
  %and139 = and i64 %sub138, 137438953472, !dbg !2115
  %tobool140 = icmp ne i64 %and139, 0, !dbg !2115
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !2115

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !2115

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub143 = sub i64 %36, 1, !dbg !2115
  %and144 = and i64 %sub143, 68719476736, !dbg !2115
  %tobool145 = icmp ne i64 %and144, 0, !dbg !2115
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !2115

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !2115

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub148 = sub i64 %37, 1, !dbg !2115
  %and149 = and i64 %sub148, 34359738368, !dbg !2115
  %tobool150 = icmp ne i64 %and149, 0, !dbg !2115
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !2115

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !2115

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub153 = sub i64 %38, 1, !dbg !2115
  %and154 = and i64 %sub153, 17179869184, !dbg !2115
  %tobool155 = icmp ne i64 %and154, 0, !dbg !2115
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !2115

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !2115

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub158 = sub i64 %39, 1, !dbg !2115
  %and159 = and i64 %sub158, 8589934592, !dbg !2115
  %tobool160 = icmp ne i64 %and159, 0, !dbg !2115
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !2115

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !2115

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub163 = sub i64 %40, 1, !dbg !2115
  %and164 = and i64 %sub163, 4294967296, !dbg !2115
  %tobool165 = icmp ne i64 %and164, 0, !dbg !2115
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !2115

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !2115

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub168 = sub i64 %41, 1, !dbg !2115
  %and169 = and i64 %sub168, 2147483648, !dbg !2115
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2115
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !2115

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !2115

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub173 = sub i64 %42, 1, !dbg !2115
  %and174 = and i64 %sub173, 1073741824, !dbg !2115
  %tobool175 = icmp ne i64 %and174, 0, !dbg !2115
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !2115

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !2115

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub178 = sub i64 %43, 1, !dbg !2115
  %and179 = and i64 %sub178, 536870912, !dbg !2115
  %tobool180 = icmp ne i64 %and179, 0, !dbg !2115
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !2115

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !2115

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub183 = sub i64 %44, 1, !dbg !2115
  %and184 = and i64 %sub183, 268435456, !dbg !2115
  %tobool185 = icmp ne i64 %and184, 0, !dbg !2115
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !2115

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !2115

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub188 = sub i64 %45, 1, !dbg !2115
  %and189 = and i64 %sub188, 134217728, !dbg !2115
  %tobool190 = icmp ne i64 %and189, 0, !dbg !2115
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !2115

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !2115

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub193 = sub i64 %46, 1, !dbg !2115
  %and194 = and i64 %sub193, 67108864, !dbg !2115
  %tobool195 = icmp ne i64 %and194, 0, !dbg !2115
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !2115

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !2115

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub198 = sub i64 %47, 1, !dbg !2115
  %and199 = and i64 %sub198, 33554432, !dbg !2115
  %tobool200 = icmp ne i64 %and199, 0, !dbg !2115
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !2115

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !2115

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub203 = sub i64 %48, 1, !dbg !2115
  %and204 = and i64 %sub203, 16777216, !dbg !2115
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2115
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !2115

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !2115

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub208 = sub i64 %49, 1, !dbg !2115
  %and209 = and i64 %sub208, 8388608, !dbg !2115
  %tobool210 = icmp ne i64 %and209, 0, !dbg !2115
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !2115

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !2115

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub213 = sub i64 %50, 1, !dbg !2115
  %and214 = and i64 %sub213, 4194304, !dbg !2115
  %tobool215 = icmp ne i64 %and214, 0, !dbg !2115
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !2115

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !2115

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub218 = sub i64 %51, 1, !dbg !2115
  %and219 = and i64 %sub218, 2097152, !dbg !2115
  %tobool220 = icmp ne i64 %and219, 0, !dbg !2115
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !2115

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !2115

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub223 = sub i64 %52, 1, !dbg !2115
  %and224 = and i64 %sub223, 1048576, !dbg !2115
  %tobool225 = icmp ne i64 %and224, 0, !dbg !2115
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !2115

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !2115

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub228 = sub i64 %53, 1, !dbg !2115
  %and229 = and i64 %sub228, 524288, !dbg !2115
  %tobool230 = icmp ne i64 %and229, 0, !dbg !2115
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !2115

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !2115

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub233 = sub i64 %54, 1, !dbg !2115
  %and234 = and i64 %sub233, 262144, !dbg !2115
  %tobool235 = icmp ne i64 %and234, 0, !dbg !2115
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !2115

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !2115

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub238 = sub i64 %55, 1, !dbg !2115
  %and239 = and i64 %sub238, 131072, !dbg !2115
  %tobool240 = icmp ne i64 %and239, 0, !dbg !2115
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !2115

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !2115

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub243 = sub i64 %56, 1, !dbg !2115
  %and244 = and i64 %sub243, 65536, !dbg !2115
  %tobool245 = icmp ne i64 %and244, 0, !dbg !2115
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !2115

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !2115

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub248 = sub i64 %57, 1, !dbg !2115
  %and249 = and i64 %sub248, 32768, !dbg !2115
  %tobool250 = icmp ne i64 %and249, 0, !dbg !2115
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !2115

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !2115

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub253 = sub i64 %58, 1, !dbg !2115
  %and254 = and i64 %sub253, 16384, !dbg !2115
  %tobool255 = icmp ne i64 %and254, 0, !dbg !2115
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !2115

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !2115

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub258 = sub i64 %59, 1, !dbg !2115
  %and259 = and i64 %sub258, 8192, !dbg !2115
  %tobool260 = icmp ne i64 %and259, 0, !dbg !2115
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !2115

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !2115

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub263 = sub i64 %60, 1, !dbg !2115
  %and264 = and i64 %sub263, 4096, !dbg !2115
  %tobool265 = icmp ne i64 %and264, 0, !dbg !2115
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !2115

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !2115

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub268 = sub i64 %61, 1, !dbg !2115
  %and269 = and i64 %sub268, 2048, !dbg !2115
  %tobool270 = icmp ne i64 %and269, 0, !dbg !2115
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !2115

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !2115

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub273 = sub i64 %62, 1, !dbg !2115
  %and274 = and i64 %sub273, 1024, !dbg !2115
  %tobool275 = icmp ne i64 %and274, 0, !dbg !2115
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !2115

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !2115

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub278 = sub i64 %63, 1, !dbg !2115
  %and279 = and i64 %sub278, 512, !dbg !2115
  %tobool280 = icmp ne i64 %and279, 0, !dbg !2115
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !2115

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !2115

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub283 = sub i64 %64, 1, !dbg !2115
  %and284 = and i64 %sub283, 256, !dbg !2115
  %tobool285 = icmp ne i64 %and284, 0, !dbg !2115
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !2115

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !2115

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub288 = sub i64 %65, 1, !dbg !2115
  %and289 = and i64 %sub288, 128, !dbg !2115
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2115
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !2115

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !2115

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub293 = sub i64 %66, 1, !dbg !2115
  %and294 = and i64 %sub293, 64, !dbg !2115
  %tobool295 = icmp ne i64 %and294, 0, !dbg !2115
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !2115

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !2115

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub298 = sub i64 %67, 1, !dbg !2115
  %and299 = and i64 %sub298, 32, !dbg !2115
  %tobool300 = icmp ne i64 %and299, 0, !dbg !2115
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !2115

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !2115

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub303 = sub i64 %68, 1, !dbg !2115
  %and304 = and i64 %sub303, 16, !dbg !2115
  %tobool305 = icmp ne i64 %and304, 0, !dbg !2115
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !2115

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !2115

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub308 = sub i64 %69, 1, !dbg !2115
  %and309 = and i64 %sub308, 8, !dbg !2115
  %tobool310 = icmp ne i64 %and309, 0, !dbg !2115
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !2115

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !2115

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub313 = sub i64 %70, 1, !dbg !2115
  %and314 = and i64 %sub313, 4, !dbg !2115
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2115
  %71 = zext i1 %tobool315 to i64, !dbg !2115
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !2115
  br label %cond.end, !dbg !2115

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !2115
  br label %cond.end317, !dbg !2115

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !2115
  br label %cond.end319, !dbg !2115

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !2115
  br label %cond.end321, !dbg !2115

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !2115
  br label %cond.end323, !dbg !2115

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !2115
  br label %cond.end325, !dbg !2115

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !2115
  br label %cond.end327, !dbg !2115

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !2115
  br label %cond.end329, !dbg !2115

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !2115
  br label %cond.end331, !dbg !2115

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !2115
  br label %cond.end333, !dbg !2115

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !2115
  br label %cond.end335, !dbg !2115

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !2115
  br label %cond.end337, !dbg !2115

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !2115
  br label %cond.end339, !dbg !2115

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !2115
  br label %cond.end341, !dbg !2115

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !2115
  br label %cond.end343, !dbg !2115

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !2115
  br label %cond.end345, !dbg !2115

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !2115
  br label %cond.end347, !dbg !2115

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !2115
  br label %cond.end349, !dbg !2115

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !2115
  br label %cond.end351, !dbg !2115

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !2115
  br label %cond.end353, !dbg !2115

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !2115
  br label %cond.end355, !dbg !2115

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !2115
  br label %cond.end357, !dbg !2115

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !2115
  br label %cond.end359, !dbg !2115

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !2115
  br label %cond.end361, !dbg !2115

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !2115
  br label %cond.end363, !dbg !2115

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !2115
  br label %cond.end365, !dbg !2115

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !2115
  br label %cond.end367, !dbg !2115

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !2115
  br label %cond.end369, !dbg !2115

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !2115
  br label %cond.end371, !dbg !2115

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !2115
  br label %cond.end373, !dbg !2115

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !2115
  br label %cond.end375, !dbg !2115

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !2115
  br label %cond.end377, !dbg !2115

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !2115
  br label %cond.end379, !dbg !2115

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !2115
  br label %cond.end381, !dbg !2115

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !2115
  br label %cond.end383, !dbg !2115

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !2115
  br label %cond.end385, !dbg !2115

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !2115
  br label %cond.end387, !dbg !2115

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !2115
  br label %cond.end389, !dbg !2115

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !2115
  br label %cond.end391, !dbg !2115

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !2115
  br label %cond.end393, !dbg !2115

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !2115
  br label %cond.end395, !dbg !2115

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !2115
  br label %cond.end397, !dbg !2115

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !2115
  br label %cond.end399, !dbg !2115

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !2115
  br label %cond.end401, !dbg !2115

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !2115
  br label %cond.end403, !dbg !2115

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !2115
  br label %cond.end405, !dbg !2115

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !2115
  br label %cond.end407, !dbg !2115

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !2115
  br label %cond.end409, !dbg !2115

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !2115
  br label %cond.end411, !dbg !2115

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !2115
  br label %cond.end413, !dbg !2115

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !2115
  br label %cond.end415, !dbg !2115

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !2115
  br label %cond.end417, !dbg !2115

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !2115
  br label %cond.end419, !dbg !2115

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !2115
  br label %cond.end421, !dbg !2115

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !2115
  br label %cond.end423, !dbg !2115

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !2115
  br label %cond.end425, !dbg !2115

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !2115
  br label %cond.end427, !dbg !2115

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !2115
  br label %cond.end429, !dbg !2115

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !2115
  br label %cond.end431, !dbg !2115

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !2115
  br label %cond.end433, !dbg !2115

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !2115
  br label %cond.end435, !dbg !2115

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !2115
  br label %cond.end437, !dbg !2115

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !2115
  br label %cond.end440, !dbg !2115

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !2115

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !2115
  br label %cond.end444, !dbg !2115

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !2115
  %sub443 = sub i64 %72, 1, !dbg !2115
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !2115
  br label %cond.end444, !dbg !2115

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !2115
  %sub446 = sub i32 %cond445, 12, !dbg !2116
  %add = add i32 %sub446, 1, !dbg !2117
  store i32 %add, i32* %retval, align 4, !dbg !2118
  br label %return, !dbg !2118

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !2119
  %dec = add i64 %73, -1, !dbg !2119
  store i64 %dec, i64* %size.addr, align 8, !dbg !2119
  %74 = load i64, i64* %size.addr, align 8, !dbg !2120
  %shr = lshr i64 %74, 12, !dbg !2120
  store i64 %shr, i64* %size.addr, align 8, !dbg !2120
  %75 = load i64, i64* %size.addr, align 8, !dbg !2121
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2098
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2122
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2123
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !2122, !srcloc !2124
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2122
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2125
  %add.i = add i32 %79, 1, !dbg !2126
  store i32 %add.i, i32* %retval, align 4, !dbg !2127
  br label %return, !dbg !2127

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2128
  ret i32 %80, !dbg !2128
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !2129 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2090, metadata !DIExpression()), !dbg !2133
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2097, metadata !DIExpression()), !dbg !2135
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2136, metadata !DIExpression()), !dbg !2137
  %0 = load i64, i64* %n.addr, align 8, !dbg !2138
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2135
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2139
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2140
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !2139, !srcloc !2124
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2139
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2141
  %add.i = add i32 %4, 1, !dbg !2142
  %sub = sub i32 %add.i, 1, !dbg !2143
  ret i32 %sub, !dbg !2144
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !2145 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2151, metadata !DIExpression()), !dbg !2152
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2153, metadata !DIExpression()), !dbg !2154
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2155, metadata !DIExpression()), !dbg !2156
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2157, metadata !DIExpression()), !dbg !2158
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2159
  ret i8* %0, !dbg !2160
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!800}
!llvm.module.flags = !{!801, !802, !803, !804}
!llvm.ident = !{!805}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 14, type: !798, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !797, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/rsutils.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !20, !21, !24, !28, !30, !33, !34, !36, !37, !22, !39, !137, !15, !794, !796}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !16, line: 19, baseType: !17)
!16 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !18, line: 24, baseType: !19)
!18 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!19 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !16, line: 21, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !18, line: 27, baseType: !7)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !16, line: 23, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !18, line: 31, baseType: !27)
!27 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_rs_length", file: !29, line: 16, baseType: !15)
!29 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/lizy2001/genbc/linux")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !16, line: 17, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !18, line: 21, baseType: !32)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !35, line: 127, baseType: !25)
!35 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_rsdesc_size", file: !29, line: 17, baseType: !22)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !41, line: 133, size: 384, elements: !42)
!41 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!42 = !{!43, !781, !782, !783, !784, !790, !791, !792, !793}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !40, file: !41, line: 134, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !46, line: 367, size: 576, elements: !47)
!46 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!47 = !{!48, !56, !69, !79, !92, !106, !115, !433, !450, !465, !478, !556, !568, !582, !592, !610, !632, !651, !670, !689, !702, !727, !744, !757, !771, !780}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !45, file: !46, line: 368, baseType: !49, size: 128)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !46, line: 73, size: 128, elements: !50)
!50 = !{!51, !52, !53, !54, !55}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !49, file: !46, line: 74, baseType: !44, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !49, file: !46, line: 74, baseType: !30, size: 8, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !49, file: !46, line: 74, baseType: !30, size: 8, offset: 72)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !49, file: !46, line: 74, baseType: !15, size: 16, offset: 80)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !49, file: !46, line: 74, baseType: !30, size: 8, offset: 96)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !45, file: !46, line: 369, baseType: !57, size: 192)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !46, line: 76, size: 192, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !68}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !57, file: !46, line: 77, baseType: !44, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !57, file: !46, line: 77, baseType: !30, size: 8, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !57, file: !46, line: 77, baseType: !30, size: 8, offset: 72)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !57, file: !46, line: 77, baseType: !15, size: 16, offset: 80)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !57, file: !46, line: 77, baseType: !30, size: 8, offset: 96)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !57, file: !46, line: 77, baseType: !65, size: 24, offset: 104)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 24, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 3)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !57, file: !46, line: 78, baseType: !25, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !45, file: !46, line: 370, baseType: !70, size: 256)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !46, line: 93, size: 256, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !78}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !70, file: !46, line: 94, baseType: !44, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !70, file: !46, line: 94, baseType: !30, size: 8, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !46, line: 94, baseType: !30, size: 8, offset: 72)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !70, file: !46, line: 94, baseType: !15, size: 16, offset: 80)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !70, file: !46, line: 94, baseType: !30, size: 8, offset: 96)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !70, file: !46, line: 94, baseType: !37, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !70, file: !46, line: 94, baseType: !22, size: 32, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !45, file: !46, line: 371, baseType: !80, size: 384)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !46, line: 97, size: 384, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !80, file: !46, line: 98, baseType: !44, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !80, file: !46, line: 98, baseType: !30, size: 8, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !46, line: 98, baseType: !30, size: 8, offset: 72)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !80, file: !46, line: 98, baseType: !15, size: 16, offset: 80)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !80, file: !46, line: 98, baseType: !30, size: 8, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !80, file: !46, line: 98, baseType: !33, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !80, file: !46, line: 98, baseType: !22, size: 32, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !80, file: !46, line: 99, baseType: !22, size: 32, offset: 224)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !80, file: !46, line: 100, baseType: !33, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !80, file: !46, line: 101, baseType: !39, size: 64, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !45, file: !46, line: 372, baseType: !93, size: 384)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !46, line: 104, size: 384, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100, !101, !103, !104, !105}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !93, file: !46, line: 105, baseType: !44, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !93, file: !46, line: 105, baseType: !30, size: 8, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !93, file: !46, line: 105, baseType: !30, size: 8, offset: 72)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !93, file: !46, line: 105, baseType: !15, size: 16, offset: 80)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !93, file: !46, line: 105, baseType: !30, size: 8, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !93, file: !46, line: 105, baseType: !39, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !93, file: !46, line: 106, baseType: !102, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !93, file: !46, line: 107, baseType: !33, size: 64, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !93, file: !46, line: 108, baseType: !22, size: 32, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !93, file: !46, line: 109, baseType: !22, size: 32, offset: 352)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !45, file: !46, line: 373, baseType: !107, size: 192)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !46, line: 118, size: 192, elements: !108)
!108 = !{!109, !110, !111, !112, !113, !114}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !107, file: !46, line: 119, baseType: !44, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !107, file: !46, line: 119, baseType: !30, size: 8, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !107, file: !46, line: 119, baseType: !30, size: 8, offset: 72)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !107, file: !46, line: 119, baseType: !15, size: 16, offset: 80)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !107, file: !46, line: 119, baseType: !30, size: 8, offset: 96)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !107, file: !46, line: 119, baseType: !20, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !45, file: !46, line: 374, baseType: !116, size: 448)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !46, line: 143, size: 448, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !430, !431, !432}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !116, file: !46, line: 144, baseType: !44, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !116, file: !46, line: 144, baseType: !30, size: 8, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !46, line: 144, baseType: !30, size: 8, offset: 72)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !116, file: !46, line: 144, baseType: !15, size: 16, offset: 80)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !46, line: 144, baseType: !30, size: 8, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !116, file: !46, line: 144, baseType: !30, size: 8, offset: 104)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !116, file: !46, line: 145, baseType: !30, size: 8, offset: 112)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !116, file: !46, line: 146, baseType: !30, size: 8, offset: 120)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !116, file: !46, line: 147, baseType: !44, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !116, file: !46, line: 148, baseType: !44, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !116, file: !46, line: 149, baseType: !33, size: 64, offset: 256)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !116, file: !46, line: 153, baseType: !130, size: 64, offset: 320)
!130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !116, file: !46, line: 150, size: 64, elements: !131)
!131 = !{!132, !429}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !130, file: !46, line: 151, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !41, line: 248, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!137, !138}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !35, line: 421, baseType: !22)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !140, line: 37, size: 9024, elements: !141)
!140 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !375, !376, !377, !378, !379, !383, !385, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !412, !413, !414, !415, !416, !417, !418, !419, !421, !427}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !139, file: !140, line: 38, baseType: !138, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !139, file: !140, line: 39, baseType: !30, size: 8, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !139, file: !140, line: 40, baseType: !30, size: 8, offset: 72)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !139, file: !140, line: 41, baseType: !15, size: 16, offset: 80)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !139, file: !140, line: 42, baseType: !30, size: 8, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !139, file: !140, line: 43, baseType: !30, size: 8, offset: 104)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !139, file: !140, line: 44, baseType: !30, size: 8, offset: 112)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !139, file: !140, line: 45, baseType: !150, size: 16, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !35, line: 445, baseType: !15)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !139, file: !140, line: 46, baseType: !30, size: 8, offset: 144)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !139, file: !140, line: 47, baseType: !30, size: 8, offset: 152)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !139, file: !140, line: 48, baseType: !30, size: 8, offset: 160)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !139, file: !140, line: 49, baseType: !30, size: 8, offset: 168)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !139, file: !140, line: 50, baseType: !30, size: 8, offset: 176)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !139, file: !140, line: 51, baseType: !30, size: 8, offset: 184)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !139, file: !140, line: 52, baseType: !30, size: 8, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !139, file: !140, line: 53, baseType: !30, size: 8, offset: 200)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !139, file: !140, line: 54, baseType: !33, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !139, file: !140, line: 55, baseType: !22, size: 32, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !139, file: !140, line: 56, baseType: !22, size: 32, offset: 352)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !139, file: !140, line: 57, baseType: !22, size: 32, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !139, file: !140, line: 58, baseType: !22, size: 32, offset: 416)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !139, file: !140, line: 60, baseType: !165, size: 640, offset: 448)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !41, line: 893, size: 640, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !256, !257, !373, !374}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !165, file: !41, line: 894, baseType: !33, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !165, file: !41, line: 895, baseType: !33, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !165, file: !41, line: 896, baseType: !33, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !165, file: !41, line: 897, baseType: !33, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !165, file: !41, line: 898, baseType: !33, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !165, file: !41, line: 899, baseType: !173, size: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !41, line: 875, size: 1600, elements: !175)
!175 = !{!176, !196, !212}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !174, file: !41, line: 876, baseType: !177, size: 448)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !41, line: 828, size: 448, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !195}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !177, file: !41, line: 829, baseType: !173, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !177, file: !41, line: 829, baseType: !30, size: 8, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !177, file: !41, line: 829, baseType: !30, size: 8, offset: 72)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !177, file: !41, line: 829, baseType: !15, size: 16, offset: 80)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !177, file: !41, line: 829, baseType: !33, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !177, file: !41, line: 829, baseType: !173, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !177, file: !41, line: 829, baseType: !39, size: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !177, file: !41, line: 829, baseType: !187, size: 64, offset: 320)
!187 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !41, line: 716, size: 64, elements: !188)
!188 = !{!189, !190, !191, !192, !193, !194}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !187, file: !41, line: 717, baseType: !25, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !187, file: !41, line: 718, baseType: !22, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !187, file: !41, line: 719, baseType: !37, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !187, file: !41, line: 720, baseType: !33, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !187, file: !41, line: 721, baseType: !37, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !187, file: !41, line: 722, baseType: !173, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !177, file: !41, line: 829, baseType: !30, size: 8, offset: 384)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !174, file: !41, line: 877, baseType: !197, size: 640)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !41, line: 835, size: 640, elements: !198)
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !197, file: !41, line: 836, baseType: !173, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !197, file: !41, line: 836, baseType: !30, size: 8, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !197, file: !41, line: 836, baseType: !30, size: 8, offset: 72)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !197, file: !41, line: 836, baseType: !15, size: 16, offset: 80)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !197, file: !41, line: 836, baseType: !33, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !197, file: !41, line: 836, baseType: !173, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !197, file: !41, line: 836, baseType: !39, size: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !197, file: !41, line: 836, baseType: !187, size: 64, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !197, file: !41, line: 836, baseType: !30, size: 8, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !197, file: !41, line: 836, baseType: !37, size: 64, offset: 448)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !197, file: !41, line: 837, baseType: !33, size: 64, offset: 512)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !197, file: !41, line: 838, baseType: !22, size: 32, offset: 576)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !41, line: 839, baseType: !22, size: 32, offset: 608)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !174, file: !41, line: 878, baseType: !213, size: 1600)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !41, line: 846, size: 1600, elements: !214)
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !213, file: !41, line: 847, baseType: !173, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !213, file: !41, line: 847, baseType: !30, size: 8, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !213, file: !41, line: 847, baseType: !30, size: 8, offset: 72)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !213, file: !41, line: 847, baseType: !15, size: 16, offset: 80)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !213, file: !41, line: 847, baseType: !33, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !213, file: !41, line: 847, baseType: !173, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !213, file: !41, line: 847, baseType: !39, size: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !213, file: !41, line: 847, baseType: !187, size: 64, offset: 320)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !213, file: !41, line: 847, baseType: !30, size: 8, offset: 384)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !213, file: !41, line: 847, baseType: !173, size: 64, offset: 448)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !213, file: !41, line: 848, baseType: !173, size: 64, offset: 512)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !213, file: !41, line: 849, baseType: !37, size: 64, offset: 576)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !213, file: !41, line: 850, baseType: !30, size: 8, offset: 640)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !213, file: !41, line: 851, baseType: !37, size: 64, offset: 704)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !213, file: !41, line: 852, baseType: !37, size: 64, offset: 768)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !213, file: !41, line: 853, baseType: !37, size: 64, offset: 832)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !213, file: !41, line: 854, baseType: !232, size: 32, offset: 896)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 4)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !213, file: !41, line: 855, baseType: !22, size: 32, offset: 928)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !213, file: !41, line: 856, baseType: !22, size: 32, offset: 960)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !213, file: !41, line: 857, baseType: !22, size: 32, offset: 992)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !213, file: !41, line: 858, baseType: !22, size: 32, offset: 1024)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !213, file: !41, line: 859, baseType: !22, size: 32, offset: 1056)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !213, file: !41, line: 860, baseType: !22, size: 32, offset: 1088)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !213, file: !41, line: 861, baseType: !22, size: 32, offset: 1120)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !213, file: !41, line: 862, baseType: !22, size: 32, offset: 1152)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !213, file: !41, line: 863, baseType: !22, size: 32, offset: 1184)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !213, file: !41, line: 864, baseType: !22, size: 32, offset: 1216)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !213, file: !41, line: 865, baseType: !22, size: 32, offset: 1248)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !213, file: !41, line: 866, baseType: !22, size: 32, offset: 1280)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !213, file: !41, line: 867, baseType: !22, size: 32, offset: 1312)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !213, file: !41, line: 868, baseType: !15, size: 16, offset: 1344)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !213, file: !41, line: 869, baseType: !30, size: 8, offset: 1360)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !213, file: !41, line: 870, baseType: !30, size: 8, offset: 1368)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !213, file: !41, line: 871, baseType: !30, size: 8, offset: 1376)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !213, file: !41, line: 872, baseType: !253, size: 160, offset: 1384)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 160, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 20)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !165, file: !41, line: 900, baseType: !39, size: 64, offset: 384)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !165, file: !41, line: 901, baseType: !258, size: 64, offset: 448)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !41, line: 663, size: 640, elements: !260)
!260 = !{!261, !269, !282, !291, !300, !313, !327, !339, !351}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !259, file: !41, line: 664, baseType: !262, size: 128)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !41, line: 567, size: 128, elements: !263)
!263 = !{!264, !265, !266, !267, !268}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !262, file: !41, line: 568, baseType: !20, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !262, file: !41, line: 568, baseType: !30, size: 8, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !262, file: !41, line: 568, baseType: !30, size: 8, offset: 72)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !262, file: !41, line: 568, baseType: !15, size: 16, offset: 80)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !262, file: !41, line: 568, baseType: !15, size: 16, offset: 96)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !259, file: !41, line: 665, baseType: !270, size: 384)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !41, line: 593, size: 384, elements: !271)
!271 = !{!272, !273, !274, !275, !276, !277, !278, !279, !280, !281}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !270, file: !41, line: 594, baseType: !20, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !270, file: !41, line: 594, baseType: !30, size: 8, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !270, file: !41, line: 594, baseType: !30, size: 8, offset: 72)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !270, file: !41, line: 594, baseType: !15, size: 16, offset: 80)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !270, file: !41, line: 594, baseType: !15, size: 16, offset: 96)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !270, file: !41, line: 594, baseType: !15, size: 16, offset: 112)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !270, file: !41, line: 595, baseType: !173, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !270, file: !41, line: 596, baseType: !33, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !270, file: !41, line: 597, baseType: !33, size: 64, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !270, file: !41, line: 598, baseType: !25, size: 64, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !259, file: !41, line: 666, baseType: !283, size: 192)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !41, line: 573, size: 192, elements: !284)
!284 = !{!285, !286, !287, !288, !289, !290}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !283, file: !41, line: 574, baseType: !20, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !283, file: !41, line: 574, baseType: !30, size: 8, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !283, file: !41, line: 574, baseType: !30, size: 8, offset: 72)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !283, file: !41, line: 574, baseType: !15, size: 16, offset: 80)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !283, file: !41, line: 574, baseType: !15, size: 16, offset: 96)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !283, file: !41, line: 574, baseType: !44, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !259, file: !41, line: 667, baseType: !292, size: 192)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !41, line: 604, size: 192, elements: !293)
!293 = !{!294, !295, !296, !297, !298, !299}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !292, file: !41, line: 605, baseType: !20, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !292, file: !41, line: 605, baseType: !30, size: 8, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !292, file: !41, line: 605, baseType: !30, size: 8, offset: 72)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !292, file: !41, line: 605, baseType: !15, size: 16, offset: 80)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !292, file: !41, line: 605, baseType: !15, size: 16, offset: 96)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !292, file: !41, line: 605, baseType: !39, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !259, file: !41, line: 668, baseType: !301, size: 448)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !41, line: 608, size: 448, elements: !302)
!302 = !{!303, !304, !305, !306, !307, !308, !309, !310, !311, !312}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !41, line: 609, baseType: !20, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !301, file: !41, line: 609, baseType: !30, size: 8, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !41, line: 609, baseType: !30, size: 8, offset: 72)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !301, file: !41, line: 609, baseType: !15, size: 16, offset: 80)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !301, file: !41, line: 609, baseType: !15, size: 16, offset: 96)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !301, file: !41, line: 609, baseType: !22, size: 32, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !301, file: !41, line: 610, baseType: !173, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !301, file: !41, line: 611, baseType: !33, size: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !301, file: !41, line: 612, baseType: !33, size: 64, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !301, file: !41, line: 613, baseType: !22, size: 32, offset: 384)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !259, file: !41, line: 669, baseType: !314, size: 512)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !41, line: 580, size: 512, elements: !315)
!315 = !{!316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !41, line: 581, baseType: !20, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !314, file: !41, line: 581, baseType: !30, size: 8, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !314, file: !41, line: 581, baseType: !30, size: 8, offset: 72)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !314, file: !41, line: 581, baseType: !15, size: 16, offset: 80)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !314, file: !41, line: 581, baseType: !15, size: 16, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !314, file: !41, line: 581, baseType: !22, size: 32, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !314, file: !41, line: 582, baseType: !44, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !314, file: !41, line: 583, baseType: !44, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !314, file: !41, line: 584, baseType: !138, size: 64, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !314, file: !41, line: 585, baseType: !20, size: 64, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !314, file: !41, line: 586, baseType: !22, size: 32, offset: 448)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !259, file: !41, line: 670, baseType: !328, size: 320)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !41, line: 620, size: 320, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !338}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !328, file: !41, line: 621, baseType: !20, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !328, file: !41, line: 621, baseType: !30, size: 8, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !328, file: !41, line: 621, baseType: !30, size: 8, offset: 72)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !328, file: !41, line: 621, baseType: !15, size: 16, offset: 80)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !328, file: !41, line: 621, baseType: !15, size: 16, offset: 96)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !328, file: !41, line: 621, baseType: !30, size: 8, offset: 112)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !328, file: !41, line: 622, baseType: !138, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !328, file: !41, line: 623, baseType: !44, size: 64, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !328, file: !41, line: 624, baseType: !25, size: 64, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !259, file: !41, line: 671, baseType: !340, size: 640)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !41, line: 631, size: 640, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !340, file: !41, line: 632, baseType: !20, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !340, file: !41, line: 632, baseType: !30, size: 8, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !41, line: 632, baseType: !30, size: 8, offset: 72)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !340, file: !41, line: 632, baseType: !15, size: 16, offset: 80)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !340, file: !41, line: 632, baseType: !15, size: 16, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !340, file: !41, line: 633, baseType: !348, size: 512, offset: 128)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 512, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 8)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !259, file: !41, line: 672, baseType: !352, size: 320)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !41, line: 654, size: 320, elements: !353)
!353 = !{!354, !355, !356, !357, !358, !359, !360, !361, !362}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !352, file: !41, line: 655, baseType: !20, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !352, file: !41, line: 655, baseType: !30, size: 8, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !352, file: !41, line: 655, baseType: !30, size: 8, offset: 72)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !352, file: !41, line: 655, baseType: !15, size: 16, offset: 80)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !352, file: !41, line: 655, baseType: !15, size: 16, offset: 96)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !352, file: !41, line: 655, baseType: !30, size: 8, offset: 112)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !352, file: !41, line: 656, baseType: !39, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !352, file: !41, line: 657, baseType: !44, size: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !352, file: !41, line: 658, baseType: !363, size: 64, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !41, line: 645, size: 128, elements: !365)
!365 = !{!366, !372}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !364, file: !41, line: 646, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !35, line: 1052, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !371, !22, !20}
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !35, line: 424, baseType: !20)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !364, file: !41, line: 647, baseType: !20, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !165, file: !41, line: 902, baseType: !173, size: 64, offset: 512)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !165, file: !41, line: 903, baseType: !22, size: 32, offset: 576)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !139, file: !140, line: 61, baseType: !22, size: 32, offset: 1088)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !139, file: !140, line: 62, baseType: !22, size: 32, offset: 1120)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !139, file: !140, line: 63, baseType: !15, size: 16, offset: 1152)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !139, file: !140, line: 64, baseType: !30, size: 8, offset: 1168)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !139, file: !140, line: 66, baseType: !380, size: 2688, offset: 1216)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2688, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 7)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !139, file: !140, line: 67, baseType: !384, size: 3072, offset: 3904)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 3072, elements: !349)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !139, file: !140, line: 68, baseType: !386, size: 576, offset: 6976)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 576, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 9)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !139, file: !140, line: 69, baseType: !102, size: 64, offset: 7552)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !139, file: !140, line: 71, baseType: !33, size: 64, offset: 7616)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !139, file: !140, line: 72, baseType: !102, size: 64, offset: 7680)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !139, file: !140, line: 73, baseType: !258, size: 64, offset: 7744)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !139, file: !140, line: 74, baseType: !39, size: 64, offset: 7808)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !139, file: !140, line: 75, baseType: !44, size: 64, offset: 7872)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !139, file: !140, line: 76, baseType: !39, size: 64, offset: 7936)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !139, file: !140, line: 77, baseType: !173, size: 64, offset: 8000)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !139, file: !140, line: 78, baseType: !44, size: 64, offset: 8064)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !139, file: !140, line: 79, baseType: !39, size: 64, offset: 8128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !139, file: !140, line: 80, baseType: !37, size: 64, offset: 8192)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !139, file: !140, line: 81, baseType: !173, size: 64, offset: 8256)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !139, file: !140, line: 82, baseType: !402, size: 64, offset: 8320)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !41, line: 702, size: 128, elements: !405)
!405 = !{!406, !407, !408, !409, !410, !411}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !404, file: !41, line: 706, baseType: !22, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !404, file: !41, line: 707, baseType: !22, size: 32, offset: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !404, file: !41, line: 708, baseType: !15, size: 16, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !404, file: !41, line: 709, baseType: !30, size: 8, offset: 80)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !404, file: !41, line: 710, baseType: !30, size: 8, offset: 88)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !404, file: !41, line: 711, baseType: !30, size: 8, offset: 96)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !139, file: !140, line: 83, baseType: !173, size: 64, offset: 8384)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !139, file: !140, line: 84, baseType: !44, size: 64, offset: 8448)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !139, file: !140, line: 85, baseType: !258, size: 64, offset: 8512)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !139, file: !140, line: 86, baseType: !44, size: 64, offset: 8576)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !139, file: !140, line: 87, baseType: !258, size: 64, offset: 8640)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !139, file: !140, line: 88, baseType: !173, size: 64, offset: 8704)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !139, file: !140, line: 89, baseType: !173, size: 64, offset: 8768)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !139, file: !140, line: 90, baseType: !420, size: 64, offset: 8832)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !139, file: !140, line: 91, baseType: !422, size: 64, offset: 8896)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !41, line: 637, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!137, !138, !426}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !139, file: !140, line: 92, baseType: !428, size: 64, offset: 8960)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !41, line: 641, baseType: !134)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !130, file: !46, line: 152, baseType: !44, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !116, file: !46, line: 155, baseType: !22, size: 32, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !116, file: !46, line: 156, baseType: !150, size: 16, offset: 416)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !116, file: !46, line: 157, baseType: !30, size: 8, offset: 432)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !45, file: !46, line: 375, baseType: !434, size: 576)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !46, line: 122, size: 576, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !434, file: !46, line: 123, baseType: !44, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !434, file: !46, line: 123, baseType: !30, size: 8, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !434, file: !46, line: 123, baseType: !30, size: 8, offset: 72)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !434, file: !46, line: 123, baseType: !15, size: 16, offset: 80)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !434, file: !46, line: 123, baseType: !30, size: 8, offset: 96)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !434, file: !46, line: 123, baseType: !30, size: 8, offset: 104)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !434, file: !46, line: 124, baseType: !15, size: 16, offset: 112)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !434, file: !46, line: 125, baseType: !20, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !434, file: !46, line: 126, baseType: !25, size: 64, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !434, file: !46, line: 127, baseType: !420, size: 64, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !434, file: !46, line: 128, baseType: !44, size: 64, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !434, file: !46, line: 129, baseType: !44, size: 64, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !434, file: !46, line: 130, baseType: !39, size: 64, offset: 448)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !434, file: !46, line: 131, baseType: !30, size: 8, offset: 512)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !45, file: !46, line: 376, baseType: !451, size: 448)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !46, line: 134, size: 448, elements: !452)
!452 = !{!453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !464}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !451, file: !46, line: 135, baseType: !44, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !451, file: !46, line: 135, baseType: !30, size: 8, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !451, file: !46, line: 135, baseType: !30, size: 8, offset: 72)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !451, file: !46, line: 135, baseType: !15, size: 16, offset: 80)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !451, file: !46, line: 135, baseType: !30, size: 8, offset: 96)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !451, file: !46, line: 135, baseType: !30, size: 8, offset: 104)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !451, file: !46, line: 136, baseType: !39, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !451, file: !46, line: 137, baseType: !44, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !451, file: !46, line: 138, baseType: !44, size: 64, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !451, file: !46, line: 139, baseType: !463, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !35, line: 129, baseType: !25)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !451, file: !46, line: 140, baseType: !22, size: 32, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !45, file: !46, line: 377, baseType: !466, size: 320)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !46, line: 184, size: 320, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !477}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !466, file: !46, line: 185, baseType: !44, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !466, file: !46, line: 185, baseType: !30, size: 8, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !466, file: !46, line: 185, baseType: !30, size: 8, offset: 72)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !466, file: !46, line: 185, baseType: !15, size: 16, offset: 80)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !46, line: 185, baseType: !30, size: 8, offset: 96)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !466, file: !46, line: 185, baseType: !474, size: 128, offset: 128)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 128, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 2)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !466, file: !46, line: 185, baseType: !44, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !45, file: !46, line: 378, baseType: !479, size: 384)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !46, line: 187, size: 384, elements: !480)
!480 = !{!481, !482, !483, !484, !485, !486, !487, !488}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !479, file: !46, line: 188, baseType: !44, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !479, file: !46, line: 188, baseType: !30, size: 8, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !479, file: !46, line: 188, baseType: !30, size: 8, offset: 72)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !479, file: !46, line: 188, baseType: !15, size: 16, offset: 80)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !479, file: !46, line: 188, baseType: !30, size: 8, offset: 96)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !479, file: !46, line: 189, baseType: !474, size: 128, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !479, file: !46, line: 189, baseType: !44, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !479, file: !46, line: 189, baseType: !489, size: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !41, line: 480, size: 576, elements: !491)
!491 = !{!492, !493, !494, !495, !503, !518, !550, !551, !552, !553, !554, !555}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !490, file: !41, line: 481, baseType: !39, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !490, file: !41, line: 482, baseType: !489, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !490, file: !41, line: 483, baseType: !489, size: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !490, file: !41, line: 484, baseType: !496, size: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !41, line: 497, size: 256, elements: !498)
!498 = !{!499, !500, !501, !502}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !497, file: !41, line: 498, baseType: !496, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !497, file: !41, line: 499, baseType: !496, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !497, file: !41, line: 500, baseType: !489, size: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !497, file: !41, line: 501, baseType: !22, size: 32, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !490, file: !41, line: 485, baseType: !504, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !41, line: 466, size: 320, elements: !506)
!506 = !{!507, !512, !513, !514, !515, !516, !517}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !505, file: !41, line: 467, baseType: !508, size: 128)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !41, line: 459, size: 128, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !508, file: !41, line: 460, baseType: !30, size: 8)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !508, file: !41, line: 461, baseType: !25, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !505, file: !41, line: 468, baseType: !508, size: 128, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !505, file: !41, line: 469, baseType: !15, size: 16, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !505, file: !41, line: 470, baseType: !30, size: 8, offset: 272)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !505, file: !41, line: 471, baseType: !30, size: 8, offset: 280)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !505, file: !41, line: 472, baseType: !30, size: 8, offset: 288)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !505, file: !41, line: 473, baseType: !30, size: 8, offset: 296)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !490, file: !41, line: 486, baseType: !519, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !41, line: 448, size: 192, elements: !521)
!521 = !{!522, !545, !546, !547, !548, !549}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !520, file: !41, line: 449, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !41, line: 438, size: 64, elements: !524)
!524 = !{!525, !526, !539}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !523, file: !41, line: 439, baseType: !39, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !523, file: !41, line: 440, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !41, line: 419, size: 256, elements: !529)
!529 = !{!530, !535, !536, !537, !538}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !528, file: !41, line: 420, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !35, line: 1049, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!22, !371, !22, !20}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !528, file: !41, line: 421, baseType: !20, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !528, file: !41, line: 422, baseType: !39, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !528, file: !41, line: 423, baseType: !30, size: 8, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !528, file: !41, line: 424, baseType: !30, size: 8, offset: 200)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !523, file: !41, line: 441, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !41, line: 429, size: 128, elements: !542)
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !541, file: !41, line: 430, baseType: !39, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !541, file: !41, line: 431, baseType: !540, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !520, file: !41, line: 450, baseType: !504, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !520, file: !41, line: 451, baseType: !30, size: 8, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !520, file: !41, line: 452, baseType: !30, size: 8, offset: 136)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !520, file: !41, line: 453, baseType: !30, size: 8, offset: 144)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !520, file: !41, line: 454, baseType: !30, size: 8, offset: 152)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !490, file: !41, line: 487, baseType: !25, size: 64, offset: 384)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !490, file: !41, line: 488, baseType: !22, size: 32, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !490, file: !41, line: 489, baseType: !15, size: 16, offset: 480)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !490, file: !41, line: 490, baseType: !15, size: 16, offset: 496)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !490, file: !41, line: 491, baseType: !30, size: 8, offset: 512)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !490, file: !41, line: 492, baseType: !30, size: 8, offset: 520)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !45, file: !46, line: 379, baseType: !557, size: 384)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !46, line: 192, size: 384, elements: !558)
!558 = !{!559, !560, !561, !562, !563, !564, !565, !566, !567}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !557, file: !46, line: 193, baseType: !44, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !557, file: !46, line: 193, baseType: !30, size: 8, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !557, file: !46, line: 193, baseType: !30, size: 8, offset: 72)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !557, file: !46, line: 193, baseType: !15, size: 16, offset: 80)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !557, file: !46, line: 193, baseType: !30, size: 8, offset: 96)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !557, file: !46, line: 193, baseType: !474, size: 128, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !557, file: !46, line: 193, baseType: !44, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !557, file: !46, line: 193, baseType: !22, size: 32, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !557, file: !46, line: 194, baseType: !22, size: 32, offset: 352)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !45, file: !46, line: 380, baseType: !569, size: 384)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !46, line: 197, size: 384, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577, !578, !579, !580}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !569, file: !46, line: 198, baseType: !44, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !569, file: !46, line: 198, baseType: !30, size: 8, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !569, file: !46, line: 198, baseType: !30, size: 8, offset: 72)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !569, file: !46, line: 198, baseType: !15, size: 16, offset: 80)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !569, file: !46, line: 198, baseType: !30, size: 8, offset: 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !569, file: !46, line: 200, baseType: !30, size: 8, offset: 104)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !569, file: !46, line: 201, baseType: !30, size: 8, offset: 112)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !569, file: !46, line: 202, baseType: !474, size: 128, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !569, file: !46, line: 202, baseType: !44, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !569, file: !46, line: 202, baseType: !581, size: 64, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !35, line: 128, baseType: !25)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !45, file: !46, line: 381, baseType: !583, size: 320)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !46, line: 205, size: 320, elements: !584)
!584 = !{!585, !586, !587, !588, !589, !590, !591}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !583, file: !46, line: 206, baseType: !44, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !583, file: !46, line: 206, baseType: !30, size: 8, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !583, file: !46, line: 206, baseType: !30, size: 8, offset: 72)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !583, file: !46, line: 206, baseType: !15, size: 16, offset: 80)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !583, file: !46, line: 206, baseType: !30, size: 8, offset: 96)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !583, file: !46, line: 206, baseType: !474, size: 128, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !583, file: !46, line: 206, baseType: !44, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !45, file: !46, line: 382, baseType: !593, size: 384)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !46, line: 233, size: 384, elements: !594)
!594 = !{!595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !593, file: !46, line: 234, baseType: !44, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !593, file: !46, line: 234, baseType: !30, size: 8, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !593, file: !46, line: 234, baseType: !30, size: 8, offset: 72)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !593, file: !46, line: 234, baseType: !15, size: 16, offset: 80)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !593, file: !46, line: 234, baseType: !30, size: 8, offset: 96)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !593, file: !46, line: 234, baseType: !30, size: 8, offset: 104)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !593, file: !46, line: 234, baseType: !30, size: 8, offset: 112)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !593, file: !46, line: 234, baseType: !30, size: 8, offset: 120)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !593, file: !46, line: 234, baseType: !39, size: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !593, file: !46, line: 234, baseType: !22, size: 32, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !593, file: !46, line: 234, baseType: !22, size: 32, offset: 224)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !593, file: !46, line: 234, baseType: !22, size: 32, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !593, file: !46, line: 234, baseType: !30, size: 8, offset: 288)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !593, file: !46, line: 234, baseType: !30, size: 8, offset: 296)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !593, file: !46, line: 234, baseType: !44, size: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !45, file: !46, line: 383, baseType: !611, size: 576)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !46, line: 237, size: 576, elements: !612)
!612 = !{!613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !611, file: !46, line: 238, baseType: !44, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !611, file: !46, line: 238, baseType: !30, size: 8, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !611, file: !46, line: 238, baseType: !30, size: 8, offset: 72)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !611, file: !46, line: 238, baseType: !15, size: 16, offset: 80)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !611, file: !46, line: 238, baseType: !30, size: 8, offset: 96)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !611, file: !46, line: 238, baseType: !30, size: 8, offset: 104)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !611, file: !46, line: 238, baseType: !30, size: 8, offset: 112)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !611, file: !46, line: 238, baseType: !30, size: 8, offset: 120)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !611, file: !46, line: 238, baseType: !39, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !611, file: !46, line: 238, baseType: !22, size: 32, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !611, file: !46, line: 238, baseType: !22, size: 32, offset: 224)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !611, file: !46, line: 238, baseType: !22, size: 32, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !611, file: !46, line: 238, baseType: !30, size: 8, offset: 288)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !611, file: !46, line: 238, baseType: !30, size: 8, offset: 296)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !611, file: !46, line: 238, baseType: !15, size: 16, offset: 304)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !611, file: !46, line: 239, baseType: !44, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !611, file: !46, line: 240, baseType: !33, size: 64, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !611, file: !46, line: 241, baseType: !15, size: 16, offset: 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !611, file: !46, line: 242, baseType: !33, size: 64, offset: 512)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !45, file: !46, line: 384, baseType: !633, size: 384)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !46, line: 262, size: 384, elements: !634)
!634 = !{!635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !633, file: !46, line: 263, baseType: !44, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !633, file: !46, line: 263, baseType: !30, size: 8, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !633, file: !46, line: 263, baseType: !30, size: 8, offset: 72)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !633, file: !46, line: 263, baseType: !15, size: 16, offset: 80)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !46, line: 263, baseType: !30, size: 8, offset: 96)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !633, file: !46, line: 263, baseType: !30, size: 8, offset: 104)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !633, file: !46, line: 263, baseType: !30, size: 8, offset: 112)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !633, file: !46, line: 263, baseType: !30, size: 8, offset: 120)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !633, file: !46, line: 263, baseType: !39, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !633, file: !46, line: 263, baseType: !22, size: 32, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !633, file: !46, line: 263, baseType: !22, size: 32, offset: 224)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !633, file: !46, line: 263, baseType: !22, size: 32, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !633, file: !46, line: 263, baseType: !30, size: 8, offset: 288)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !633, file: !46, line: 263, baseType: !30, size: 8, offset: 296)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !633, file: !46, line: 263, baseType: !30, size: 8, offset: 304)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !633, file: !46, line: 264, baseType: !44, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !45, file: !46, line: 385, baseType: !652, size: 448)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !46, line: 245, size: 448, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !652, file: !46, line: 246, baseType: !44, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !652, file: !46, line: 246, baseType: !30, size: 8, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !652, file: !46, line: 246, baseType: !30, size: 8, offset: 72)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !652, file: !46, line: 246, baseType: !15, size: 16, offset: 80)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !652, file: !46, line: 246, baseType: !30, size: 8, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !652, file: !46, line: 246, baseType: !30, size: 8, offset: 104)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !652, file: !46, line: 246, baseType: !30, size: 8, offset: 112)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !652, file: !46, line: 246, baseType: !30, size: 8, offset: 120)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !652, file: !46, line: 246, baseType: !39, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !652, file: !46, line: 246, baseType: !22, size: 32, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !652, file: !46, line: 246, baseType: !22, size: 32, offset: 224)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !652, file: !46, line: 246, baseType: !22, size: 32, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !652, file: !46, line: 246, baseType: !30, size: 8, offset: 288)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !652, file: !46, line: 246, baseType: !30, size: 8, offset: 296)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !652, file: !46, line: 246, baseType: !44, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !652, file: !46, line: 247, baseType: !44, size: 64, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !45, file: !46, line: 386, baseType: !671, size: 448)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !46, line: 250, size: 448, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !671, file: !46, line: 251, baseType: !44, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !671, file: !46, line: 251, baseType: !30, size: 8, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !46, line: 251, baseType: !30, size: 8, offset: 72)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !671, file: !46, line: 251, baseType: !15, size: 16, offset: 80)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !46, line: 251, baseType: !30, size: 8, offset: 96)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !671, file: !46, line: 251, baseType: !30, size: 8, offset: 104)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !671, file: !46, line: 251, baseType: !30, size: 8, offset: 112)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !671, file: !46, line: 251, baseType: !30, size: 8, offset: 120)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !671, file: !46, line: 251, baseType: !39, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !671, file: !46, line: 251, baseType: !22, size: 32, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !671, file: !46, line: 251, baseType: !22, size: 32, offset: 224)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !671, file: !46, line: 251, baseType: !22, size: 32, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !671, file: !46, line: 251, baseType: !30, size: 8, offset: 288)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !671, file: !46, line: 251, baseType: !30, size: 8, offset: 296)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !671, file: !46, line: 256, baseType: !44, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !671, file: !46, line: 257, baseType: !44, size: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !45, file: !46, line: 387, baseType: !690, size: 512)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !46, line: 273, size: 512, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !690, file: !46, line: 274, baseType: !44, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !690, file: !46, line: 274, baseType: !30, size: 8, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !690, file: !46, line: 274, baseType: !30, size: 8, offset: 72)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !690, file: !46, line: 274, baseType: !15, size: 16, offset: 80)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !46, line: 274, baseType: !30, size: 8, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !690, file: !46, line: 274, baseType: !39, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !690, file: !46, line: 275, baseType: !22, size: 32, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !690, file: !46, line: 276, baseType: !367, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !690, file: !46, line: 277, baseType: !20, size: 64, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !690, file: !46, line: 278, baseType: !474, size: 128, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !45, file: !46, line: 388, baseType: !703, size: 512)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !46, line: 281, size: 512, elements: !704)
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712, !717, !718, !719, !725, !726}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !703, file: !46, line: 282, baseType: !44, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !703, file: !46, line: 282, baseType: !30, size: 8, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !703, file: !46, line: 282, baseType: !30, size: 8, offset: 72)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !703, file: !46, line: 282, baseType: !15, size: 16, offset: 80)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !703, file: !46, line: 282, baseType: !30, size: 8, offset: 96)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !703, file: !46, line: 282, baseType: !30, size: 8, offset: 104)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !703, file: !46, line: 283, baseType: !30, size: 8, offset: 112)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !703, file: !46, line: 284, baseType: !713, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !35, line: 1084, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!137, !22, !463, !22, !24, !20, !20}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !703, file: !46, line: 285, baseType: !39, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !703, file: !46, line: 286, baseType: !20, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !703, file: !46, line: 287, baseType: !720, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !35, line: 1102, baseType: !721)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!137, !371, !22, !20, !724}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !703, file: !46, line: 288, baseType: !44, size: 64, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !703, file: !46, line: 289, baseType: !44, size: 64, offset: 448)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !45, file: !46, line: 389, baseType: !728, size: 512)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !46, line: 307, size: 512, elements: !729)
!729 = !{!730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !728, file: !46, line: 308, baseType: !44, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !728, file: !46, line: 308, baseType: !30, size: 8, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !728, file: !46, line: 308, baseType: !30, size: 8, offset: 72)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !728, file: !46, line: 308, baseType: !15, size: 16, offset: 80)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !728, file: !46, line: 308, baseType: !30, size: 8, offset: 96)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !728, file: !46, line: 308, baseType: !30, size: 8, offset: 104)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !728, file: !46, line: 309, baseType: !30, size: 8, offset: 112)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !728, file: !46, line: 310, baseType: !30, size: 8, offset: 120)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !728, file: !46, line: 311, baseType: !20, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !728, file: !46, line: 312, baseType: !39, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !728, file: !46, line: 313, baseType: !102, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !728, file: !46, line: 314, baseType: !33, size: 64, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !728, file: !46, line: 315, baseType: !33, size: 64, offset: 384)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !728, file: !46, line: 316, baseType: !22, size: 32, offset: 448)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !45, file: !46, line: 390, baseType: !745, size: 448)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !46, line: 340, size: 448, elements: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !755, !756}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !745, file: !46, line: 341, baseType: !44, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !745, file: !46, line: 341, baseType: !30, size: 8, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !745, file: !46, line: 341, baseType: !30, size: 8, offset: 72)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !745, file: !46, line: 341, baseType: !15, size: 16, offset: 80)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !46, line: 341, baseType: !30, size: 8, offset: 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !745, file: !46, line: 341, baseType: !39, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !745, file: !46, line: 342, baseType: !39, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !745, file: !46, line: 343, baseType: !20, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !745, file: !46, line: 344, baseType: !33, size: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !745, file: !46, line: 345, baseType: !22, size: 32, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !45, file: !46, line: 391, baseType: !758, size: 256)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !46, line: 350, size: 256, elements: !759)
!759 = !{!760, !761, !762, !763, !764, !765, !770}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !758, file: !46, line: 351, baseType: !44, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !758, file: !46, line: 351, baseType: !30, size: 8, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !758, file: !46, line: 351, baseType: !30, size: 8, offset: 72)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !758, file: !46, line: 351, baseType: !15, size: 16, offset: 80)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !758, file: !46, line: 351, baseType: !30, size: 8, offset: 96)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !758, file: !46, line: 351, baseType: !766, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !35, line: 1055, baseType: !767)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{null, !371, !20}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !758, file: !46, line: 352, baseType: !20, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !45, file: !46, line: 392, baseType: !772, size: 192)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !46, line: 357, size: 192, elements: !773)
!773 = !{!774, !775, !776, !777, !778, !779}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !772, file: !46, line: 358, baseType: !44, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !772, file: !46, line: 358, baseType: !30, size: 8, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !772, file: !46, line: 358, baseType: !30, size: 8, offset: 72)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !772, file: !46, line: 358, baseType: !15, size: 16, offset: 80)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !772, file: !46, line: 358, baseType: !30, size: 8, offset: 96)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !772, file: !46, line: 358, baseType: !44, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !45, file: !46, line: 399, baseType: !40, size: 384)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !40, file: !41, line: 135, baseType: !30, size: 8, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !40, file: !41, line: 136, baseType: !30, size: 8, offset: 72)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !40, file: !41, line: 137, baseType: !15, size: 16, offset: 80)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !40, file: !41, line: 138, baseType: !785, size: 32, offset: 96)
!785 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !786, line: 327, size: 32, elements: !787)
!786 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !785, file: !786, line: 328, baseType: !22, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !785, file: !786, line: 329, baseType: !232, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !40, file: !41, line: 139, baseType: !39, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !40, file: !41, line: 140, baseType: !39, size: 64, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !40, file: !41, line: 141, baseType: !39, size: 64, offset: 256)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !40, file: !41, line: 142, baseType: !150, size: 16, offset: 320)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !795, line: 148, baseType: !7)
!795 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!796 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!797 = !{!0}
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !799, size: 64, elements: !349)
!799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!800 = !{!"rsp"}
!801 = !{i32 7, !"Dwarf Version", i32 4}
!802 = !{i32 2, !"Debug Info Version", i32 3}
!803 = !{i32 1, !"wchar_size", i32 2}
!804 = !{i32 1, !"Code Model", i32 2}
!805 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!806 = distinct !DISubprogram(name: "acpi_rs_decode_bitmask", scope: !3, file: !3, line: 28, type: !807, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !809)
!807 = !DISubroutineType(types: !808)
!808 = !{!30, !15, !33}
!809 = !{}
!810 = !DILocalVariable(name: "mask", arg: 1, scope: !806, file: !3, line: 28, type: !15)
!811 = !DILocation(line: 28, column: 31, scope: !806)
!812 = !DILocalVariable(name: "list", arg: 2, scope: !806, file: !3, line: 28, type: !33)
!813 = !DILocation(line: 28, column: 42, scope: !806)
!814 = !DILocalVariable(name: "i", scope: !806, file: !3, line: 30, type: !30)
!815 = !DILocation(line: 30, column: 5, scope: !806)
!816 = !DILocalVariable(name: "bit_count", scope: !806, file: !3, line: 31, type: !30)
!817 = !DILocation(line: 31, column: 5, scope: !806)
!818 = !DILocation(line: 37, column: 9, scope: !819)
!819 = distinct !DILexicalBlock(scope: !806, file: !3, line: 37, column: 2)
!820 = !DILocation(line: 37, column: 24, scope: !819)
!821 = !DILocation(line: 37, column: 7, scope: !819)
!822 = !DILocation(line: 37, column: 29, scope: !823)
!823 = distinct !DILexicalBlock(scope: !819, file: !3, line: 37, column: 2)
!824 = !DILocation(line: 37, column: 2, scope: !819)
!825 = !DILocation(line: 38, column: 7, scope: !826)
!826 = distinct !DILexicalBlock(scope: !827, file: !3, line: 38, column: 7)
!827 = distinct !DILexicalBlock(scope: !823, file: !3, line: 37, column: 40)
!828 = !DILocation(line: 38, column: 12, scope: !826)
!829 = !DILocation(line: 38, column: 7, scope: !827)
!830 = !DILocation(line: 39, column: 22, scope: !831)
!831 = distinct !DILexicalBlock(scope: !826, file: !3, line: 38, column: 22)
!832 = !DILocation(line: 39, column: 4, scope: !831)
!833 = !DILocation(line: 39, column: 9, scope: !831)
!834 = !DILocation(line: 39, column: 20, scope: !831)
!835 = !DILocation(line: 40, column: 13, scope: !831)
!836 = !DILocation(line: 41, column: 3, scope: !831)
!837 = !DILocation(line: 43, column: 8, scope: !827)
!838 = !DILocation(line: 44, column: 2, scope: !827)
!839 = !DILocation(line: 37, column: 36, scope: !823)
!840 = !DILocation(line: 37, column: 2, scope: !823)
!841 = distinct !{!841, !824, !842}
!842 = !DILocation(line: 44, column: 2, scope: !819)
!843 = !DILocation(line: 46, column: 10, scope: !806)
!844 = !DILocation(line: 46, column: 2, scope: !806)
!845 = distinct !DISubprogram(name: "acpi_rs_encode_bitmask", scope: !3, file: !3, line: 62, type: !846, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !809)
!846 = !DISubroutineType(types: !847)
!847 = !{!15, !33, !30}
!848 = !DILocalVariable(name: "list", arg: 1, scope: !845, file: !3, line: 62, type: !33)
!849 = !DILocation(line: 62, column: 33, scope: !845)
!850 = !DILocalVariable(name: "count", arg: 2, scope: !845, file: !3, line: 62, type: !30)
!851 = !DILocation(line: 62, column: 42, scope: !845)
!852 = !DILocalVariable(name: "i", scope: !845, file: !3, line: 64, type: !22)
!853 = !DILocation(line: 64, column: 6, scope: !845)
!854 = !DILocalVariable(name: "mask", scope: !845, file: !3, line: 65, type: !15)
!855 = !DILocation(line: 65, column: 6, scope: !845)
!856 = !DILocation(line: 71, column: 9, scope: !857)
!857 = distinct !DILexicalBlock(scope: !845, file: !3, line: 71, column: 2)
!858 = !DILocation(line: 71, column: 19, scope: !857)
!859 = !DILocation(line: 71, column: 7, scope: !857)
!860 = !DILocation(line: 71, column: 24, scope: !861)
!861 = distinct !DILexicalBlock(scope: !857, file: !3, line: 71, column: 2)
!862 = !DILocation(line: 71, column: 28, scope: !861)
!863 = !DILocation(line: 71, column: 26, scope: !861)
!864 = !DILocation(line: 71, column: 2, scope: !857)
!865 = !DILocation(line: 72, column: 19, scope: !866)
!866 = distinct !DILexicalBlock(scope: !861, file: !3, line: 71, column: 40)
!867 = !DILocation(line: 72, column: 24, scope: !866)
!868 = !DILocation(line: 72, column: 16, scope: !866)
!869 = !DILocation(line: 72, column: 8, scope: !866)
!870 = !DILocation(line: 73, column: 2, scope: !866)
!871 = !DILocation(line: 71, column: 36, scope: !861)
!872 = !DILocation(line: 71, column: 2, scope: !861)
!873 = distinct !{!873, !864, !874}
!874 = !DILocation(line: 73, column: 2, scope: !857)
!875 = !DILocation(line: 75, column: 10, scope: !845)
!876 = !DILocation(line: 75, column: 2, scope: !845)
!877 = distinct !DISubprogram(name: "acpi_rs_move_data", scope: !3, file: !3, line: 96, type: !878, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !809)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !20, !20, !15, !30}
!880 = !DILocalVariable(name: "destination", arg: 1, scope: !877, file: !3, line: 96, type: !20)
!881 = !DILocation(line: 96, column: 25, scope: !877)
!882 = !DILocalVariable(name: "source", arg: 2, scope: !877, file: !3, line: 96, type: !20)
!883 = !DILocation(line: 96, column: 44, scope: !877)
!884 = !DILocalVariable(name: "item_count", arg: 3, scope: !877, file: !3, line: 96, type: !15)
!885 = !DILocation(line: 96, column: 56, scope: !877)
!886 = !DILocalVariable(name: "move_type", arg: 4, scope: !877, file: !3, line: 96, type: !30)
!887 = !DILocation(line: 96, column: 71, scope: !877)
!888 = !DILocalVariable(name: "i", scope: !877, file: !3, line: 98, type: !22)
!889 = !DILocation(line: 98, column: 6, scope: !877)
!890 = !DILocation(line: 104, column: 9, scope: !891)
!891 = distinct !DILexicalBlock(scope: !877, file: !3, line: 104, column: 2)
!892 = !DILocation(line: 104, column: 7, scope: !891)
!893 = !DILocation(line: 104, column: 14, scope: !894)
!894 = distinct !DILexicalBlock(scope: !891, file: !3, line: 104, column: 2)
!895 = !DILocation(line: 104, column: 18, scope: !894)
!896 = !DILocation(line: 104, column: 16, scope: !894)
!897 = !DILocation(line: 104, column: 2, scope: !891)
!898 = !DILocation(line: 105, column: 11, scope: !899)
!899 = distinct !DILexicalBlock(scope: !894, file: !3, line: 104, column: 35)
!900 = !DILocation(line: 105, column: 3, scope: !899)
!901 = !DILocation(line: 115, column: 11, scope: !902)
!902 = distinct !DILexicalBlock(scope: !899, file: !3, line: 105, column: 22)
!903 = !DILocation(line: 115, column: 24, scope: !902)
!904 = !DILocation(line: 115, column: 32, scope: !902)
!905 = !DILocation(line: 115, column: 4, scope: !902)
!906 = !DILocation(line: 116, column: 4, scope: !902)
!907 = !DILocation(line: 126, column: 4, scope: !902)
!908 = !DILocation(line: 128, column: 4, scope: !902)
!909 = !DILocation(line: 132, column: 4, scope: !902)
!910 = !DILocation(line: 134, column: 4, scope: !902)
!911 = !DILocation(line: 138, column: 4, scope: !902)
!912 = !DILocation(line: 140, column: 4, scope: !902)
!913 = !DILocation(line: 144, column: 4, scope: !902)
!914 = !DILocation(line: 146, column: 2, scope: !899)
!915 = !DILocation(line: 104, column: 31, scope: !894)
!916 = !DILocation(line: 104, column: 2, scope: !894)
!917 = distinct !{!917, !897, !918}
!918 = !DILocation(line: 146, column: 2, scope: !891)
!919 = !DILocation(line: 147, column: 1, scope: !877)
!920 = distinct !DISubprogram(name: "acpi_rs_set_resource_length", scope: !3, file: !3, line: 167, type: !921, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !809)
!921 = !DISubroutineType(types: !922)
!922 = !{null, !36, !923}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "aml_resource", file: !925, line: 478, size: 448, elements: !926)
!925 = !DIFile(filename: "drivers/acpi/acpica/amlresrc.h", directory: "/home/lizy2001/genbc/linux")
!926 = !{!927, !928, !932, !937, !943, !949, !954, !958, !967, !973, !980, !984, !989, !999, !1009, !1014, !1024, !1032, !1045, !1058, !1071, !1087, !1098, !1115, !1129, !1146, !1163, !1175, !1189, !1203, !1214, !1227, !1241, !1249, !1250, !1251}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !924, file: !925, line: 481, baseType: !30, size: 8)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "small_header", scope: !924, file: !925, line: 482, baseType: !929, size: 8)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_small_header", file: !925, line: 114, size: 8, elements: !930)
!930 = !{!931}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !929, file: !925, line: 115, baseType: !30, size: 8)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "large_header", scope: !924, file: !925, line: 483, baseType: !933, size: 24)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_large_header", file: !925, line: 174, size: 24, elements: !934)
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !933, file: !925, line: 175, baseType: !30, size: 8)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !933, file: !925, line: 175, baseType: !15, size: 16, offset: 8)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !924, file: !925, line: 487, baseType: !938, size: 32)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_irq", file: !925, line: 117, size: 32, elements: !939)
!939 = !{!940, !941, !942}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !938, file: !925, line: 118, baseType: !30, size: 8)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !938, file: !925, line: 118, baseType: !15, size: 16, offset: 8)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !938, file: !925, line: 119, baseType: !30, size: 8, offset: 24)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !924, file: !925, line: 488, baseType: !944, size: 24)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_dma", file: !925, line: 126, size: 24, elements: !945)
!945 = !{!946, !947, !948}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !944, file: !925, line: 127, baseType: !30, size: 8)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "dma_channel_mask", scope: !944, file: !925, line: 127, baseType: !30, size: 8, offset: 8)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !944, file: !925, line: 128, baseType: !30, size: 8, offset: 16)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !924, file: !925, line: 489, baseType: !950, size: 16)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_start_dependent", file: !925, line: 131, size: 16, elements: !951)
!951 = !{!952, !953}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !950, file: !925, line: 132, baseType: !30, size: 8)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !950, file: !925, line: 132, baseType: !30, size: 8, offset: 8)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "end_dpf", scope: !924, file: !925, line: 490, baseType: !955, size: 8)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_end_dependent", file: !925, line: 138, size: 8, elements: !956)
!956 = !{!957}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !955, file: !925, line: 139, baseType: !30, size: 8)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !924, file: !925, line: 491, baseType: !959, size: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_io", file: !925, line: 141, size: 64, elements: !960)
!960 = !{!961, !962, !963, !964, !965, !966}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !959, file: !925, line: 142, baseType: !30, size: 8)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !959, file: !925, line: 142, baseType: !30, size: 8, offset: 8)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !959, file: !925, line: 143, baseType: !15, size: 16, offset: 16)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !959, file: !925, line: 144, baseType: !15, size: 16, offset: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !959, file: !925, line: 145, baseType: !30, size: 8, offset: 48)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !959, file: !925, line: 146, baseType: !30, size: 8, offset: 56)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !924, file: !925, line: 492, baseType: !968, size: 32)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_io", file: !925, line: 149, size: 32, elements: !969)
!969 = !{!970, !971, !972}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !968, file: !925, line: 150, baseType: !30, size: 8)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !968, file: !925, line: 150, baseType: !15, size: 16, offset: 8)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !968, file: !925, line: 151, baseType: !30, size: 8, offset: 24)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !924, file: !925, line: 493, baseType: !974, size: 48)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_dma", file: !925, line: 161, size: 48, elements: !975)
!975 = !{!976, !977, !978, !979}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !974, file: !925, line: 162, baseType: !30, size: 8)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !974, file: !925, line: 162, baseType: !15, size: 16, offset: 8)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !974, file: !925, line: 163, baseType: !15, size: 16, offset: 24)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !974, file: !925, line: 164, baseType: !30, size: 8, offset: 40)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_small", scope: !924, file: !925, line: 494, baseType: !981, size: 8)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_vendor_small", file: !925, line: 154, size: 8, elements: !982)
!982 = !{!983}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !981, file: !925, line: 155, baseType: !30, size: 8)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !924, file: !925, line: 495, baseType: !985, size: 16)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_end_tag", file: !925, line: 157, size: 16, elements: !986)
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !985, file: !925, line: 158, baseType: !30, size: 8)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !985, file: !925, line: 158, baseType: !30, size: 8, offset: 8)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !924, file: !925, line: 499, baseType: !990, size: 96)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_memory24", file: !925, line: 183, size: 96, elements: !991)
!991 = !{!992, !993, !994, !995, !996, !997, !998}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !990, file: !925, line: 184, baseType: !30, size: 8)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !990, file: !925, line: 184, baseType: !15, size: 16, offset: 8)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !990, file: !925, line: 184, baseType: !30, size: 8, offset: 24)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !990, file: !925, line: 185, baseType: !15, size: 16, offset: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !990, file: !925, line: 186, baseType: !15, size: 16, offset: 48)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !990, file: !925, line: 187, baseType: !15, size: 16, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !990, file: !925, line: 188, baseType: !15, size: 16, offset: 80)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !924, file: !925, line: 500, baseType: !1000, size: 120)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_generic_register", file: !925, line: 264, size: 120, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1005, !1006, !1007, !1008}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1000, file: !925, line: 265, baseType: !30, size: 8)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1000, file: !925, line: 265, baseType: !15, size: 16, offset: 8)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "address_space_id", scope: !1000, file: !925, line: 265, baseType: !30, size: 8, offset: 24)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !1000, file: !925, line: 266, baseType: !30, size: 8, offset: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1000, file: !925, line: 267, baseType: !30, size: 8, offset: 40)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !1000, file: !925, line: 268, baseType: !30, size: 8, offset: 48)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1000, file: !925, line: 269, baseType: !25, size: 64, offset: 56)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_large", scope: !924, file: !925, line: 501, baseType: !1010, size: 24)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_vendor_large", file: !925, line: 191, size: 24, elements: !1011)
!1011 = !{!1012, !1013}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1010, file: !925, line: 192, baseType: !30, size: 8)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1010, file: !925, line: 192, baseType: !15, size: 16, offset: 8)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !924, file: !925, line: 502, baseType: !1015, size: 160)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_memory32", file: !925, line: 194, size: 160, elements: !1016)
!1016 = !{!1017, !1018, !1019, !1020, !1021, !1022, !1023}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1015, file: !925, line: 195, baseType: !30, size: 8)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1015, file: !925, line: 195, baseType: !15, size: 16, offset: 8)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1015, file: !925, line: 195, baseType: !30, size: 8, offset: 24)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !1015, file: !925, line: 196, baseType: !22, size: 32, offset: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !1015, file: !925, line: 197, baseType: !22, size: 32, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1015, file: !925, line: 198, baseType: !22, size: 32, offset: 96)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !1015, file: !925, line: 199, baseType: !22, size: 32, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !924, file: !925, line: 503, baseType: !1025, size: 96)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_memory32", file: !925, line: 202, size: 96, elements: !1026)
!1026 = !{!1027, !1028, !1029, !1030, !1031}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1025, file: !925, line: 203, baseType: !30, size: 8)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1025, file: !925, line: 203, baseType: !15, size: 16, offset: 8)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1025, file: !925, line: 203, baseType: !30, size: 8, offset: 24)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1025, file: !925, line: 204, baseType: !22, size: 32, offset: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !1025, file: !925, line: 205, baseType: !22, size: 32, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !924, file: !925, line: 504, baseType: !1033, size: 128)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address16", file: !925, line: 248, size: 128, elements: !1034)
!1034 = !{!1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1033, file: !925, line: 249, baseType: !30, size: 8)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1033, file: !925, line: 249, baseType: !15, size: 16, offset: 8)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !1033, file: !925, line: 250, baseType: !30, size: 8, offset: 24)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1033, file: !925, line: 250, baseType: !30, size: 8, offset: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !1033, file: !925, line: 250, baseType: !30, size: 8, offset: 40)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !1033, file: !925, line: 250, baseType: !15, size: 16, offset: 48)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !1033, file: !925, line: 251, baseType: !15, size: 16, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !1033, file: !925, line: 252, baseType: !15, size: 16, offset: 80)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !1033, file: !925, line: 253, baseType: !15, size: 16, offset: 96)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !1033, file: !925, line: 254, baseType: !15, size: 16, offset: 112)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !924, file: !925, line: 505, baseType: !1046, size: 208)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address32", file: !925, line: 239, size: 208, elements: !1047)
!1047 = !{!1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1046, file: !925, line: 240, baseType: !30, size: 8)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1046, file: !925, line: 240, baseType: !15, size: 16, offset: 8)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !1046, file: !925, line: 241, baseType: !30, size: 8, offset: 24)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1046, file: !925, line: 241, baseType: !30, size: 8, offset: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !1046, file: !925, line: 241, baseType: !30, size: 8, offset: 40)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !1046, file: !925, line: 241, baseType: !22, size: 32, offset: 48)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !1046, file: !925, line: 242, baseType: !22, size: 32, offset: 80)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !1046, file: !925, line: 243, baseType: !22, size: 32, offset: 112)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !1046, file: !925, line: 244, baseType: !22, size: 32, offset: 144)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !1046, file: !925, line: 245, baseType: !22, size: 32, offset: 176)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !924, file: !925, line: 506, baseType: !1059, size: 368)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address64", file: !925, line: 230, size: 368, elements: !1060)
!1060 = !{!1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1059, file: !925, line: 231, baseType: !30, size: 8)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1059, file: !925, line: 231, baseType: !15, size: 16, offset: 8)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !1059, file: !925, line: 232, baseType: !30, size: 8, offset: 24)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1059, file: !925, line: 232, baseType: !30, size: 8, offset: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !1059, file: !925, line: 232, baseType: !30, size: 8, offset: 40)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !1059, file: !925, line: 232, baseType: !25, size: 64, offset: 48)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !1059, file: !925, line: 233, baseType: !25, size: 64, offset: 112)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !1059, file: !925, line: 234, baseType: !25, size: 64, offset: 176)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !1059, file: !925, line: 235, baseType: !25, size: 64, offset: 240)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !1059, file: !925, line: 236, baseType: !25, size: 64, offset: 304)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !924, file: !925, line: 507, baseType: !1072, size: 448)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_extended_address64", file: !925, line: 216, size: 448, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1072, file: !925, line: 217, baseType: !30, size: 8)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1072, file: !925, line: 217, baseType: !15, size: 16, offset: 8)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !1072, file: !925, line: 218, baseType: !30, size: 8, offset: 24)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1072, file: !925, line: 218, baseType: !30, size: 8, offset: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !1072, file: !925, line: 218, baseType: !30, size: 8, offset: 40)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !1072, file: !925, line: 218, baseType: !30, size: 8, offset: 48)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1072, file: !925, line: 219, baseType: !30, size: 8, offset: 56)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !1072, file: !925, line: 220, baseType: !25, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !1072, file: !925, line: 221, baseType: !25, size: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !1072, file: !925, line: 222, baseType: !25, size: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !1072, file: !925, line: 223, baseType: !25, size: 64, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !1072, file: !925, line: 224, baseType: !25, size: 64, offset: 320)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !1072, file: !925, line: 225, baseType: !25, size: 64, offset: 384)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !924, file: !925, line: 508, baseType: !1088, size: 72)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_extended_irq", file: !925, line: 257, size: 72, elements: !1089)
!1089 = !{!1090, !1091, !1092, !1093, !1094}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1088, file: !925, line: 258, baseType: !30, size: 8)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1088, file: !925, line: 258, baseType: !15, size: 16, offset: 8)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1088, file: !925, line: 258, baseType: !30, size: 8, offset: 24)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !1088, file: !925, line: 259, baseType: !30, size: 8, offset: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !1088, file: !925, line: 260, baseType: !1095, size: 32, offset: 40)
!1095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !1096)
!1096 = !{!1097}
!1097 = !DISubrange(count: 1)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !924, file: !925, line: 509, baseType: !1099, size: 184)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_gpio", file: !925, line: 274, size: 184, elements: !1100)
!1100 = !{!1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1099, file: !925, line: 275, baseType: !30, size: 8)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1099, file: !925, line: 275, baseType: !15, size: 16, offset: 8)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1099, file: !925, line: 275, baseType: !30, size: 8, offset: 24)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !1099, file: !925, line: 276, baseType: !30, size: 8, offset: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1099, file: !925, line: 277, baseType: !15, size: 16, offset: 40)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "int_flags", scope: !1099, file: !925, line: 278, baseType: !15, size: 16, offset: 56)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !1099, file: !925, line: 279, baseType: !30, size: 8, offset: 72)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !1099, file: !925, line: 280, baseType: !15, size: 16, offset: 80)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !1099, file: !925, line: 281, baseType: !15, size: 16, offset: 96)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !1099, file: !925, line: 282, baseType: !15, size: 16, offset: 112)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1099, file: !925, line: 283, baseType: !30, size: 8, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !1099, file: !925, line: 284, baseType: !15, size: 16, offset: 136)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !1099, file: !925, line: 285, baseType: !15, size: 16, offset: 152)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !1099, file: !925, line: 286, baseType: !15, size: 16, offset: 168)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !924, file: !925, line: 510, baseType: !1116, size: 144)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_i2c_serialbus", file: !925, line: 325, size: 144, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1116, file: !925, line: 326, baseType: !30, size: 8)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1116, file: !925, line: 326, baseType: !15, size: 16, offset: 8)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1116, file: !925, line: 327, baseType: !30, size: 8, offset: 24)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1116, file: !925, line: 327, baseType: !30, size: 8, offset: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1116, file: !925, line: 327, baseType: !30, size: 8, offset: 40)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1116, file: !925, line: 327, baseType: !30, size: 8, offset: 48)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !1116, file: !925, line: 327, baseType: !15, size: 16, offset: 56)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !1116, file: !925, line: 327, baseType: !30, size: 8, offset: 72)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !1116, file: !925, line: 327, baseType: !15, size: 16, offset: 80)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !1116, file: !925, line: 327, baseType: !22, size: 32, offset: 96)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !1116, file: !925, line: 328, baseType: !15, size: 16, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !924, file: !925, line: 511, baseType: !1130, size: 168)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_spi_serialbus", file: !925, line: 340, size: 168, elements: !1131)
!1131 = !{!1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1130, file: !925, line: 341, baseType: !30, size: 8)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1130, file: !925, line: 341, baseType: !15, size: 16, offset: 8)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1130, file: !925, line: 342, baseType: !30, size: 8, offset: 24)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1130, file: !925, line: 342, baseType: !30, size: 8, offset: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1130, file: !925, line: 342, baseType: !30, size: 8, offset: 40)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1130, file: !925, line: 342, baseType: !30, size: 8, offset: 48)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !1130, file: !925, line: 342, baseType: !15, size: 16, offset: 56)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !1130, file: !925, line: 342, baseType: !30, size: 8, offset: 72)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !1130, file: !925, line: 342, baseType: !15, size: 16, offset: 80)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !1130, file: !925, line: 342, baseType: !22, size: 32, offset: 96)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !1130, file: !925, line: 343, baseType: !30, size: 8, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !1130, file: !925, line: 344, baseType: !30, size: 8, offset: 136)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !1130, file: !925, line: 345, baseType: !30, size: 8, offset: 144)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !1130, file: !925, line: 346, baseType: !15, size: 16, offset: 152)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !924, file: !925, line: 512, baseType: !1147, size: 176)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_uart_serialbus", file: !925, line: 358, size: 176, elements: !1148)
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1147, file: !925, line: 359, baseType: !30, size: 8)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1147, file: !925, line: 359, baseType: !15, size: 16, offset: 8)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1147, file: !925, line: 360, baseType: !30, size: 8, offset: 24)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1147, file: !925, line: 360, baseType: !30, size: 8, offset: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1147, file: !925, line: 360, baseType: !30, size: 8, offset: 40)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1147, file: !925, line: 360, baseType: !30, size: 8, offset: 48)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !1147, file: !925, line: 360, baseType: !15, size: 16, offset: 56)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !1147, file: !925, line: 360, baseType: !30, size: 8, offset: 72)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !1147, file: !925, line: 360, baseType: !15, size: 16, offset: 80)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !1147, file: !925, line: 360, baseType: !22, size: 32, offset: 96)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !1147, file: !925, line: 361, baseType: !15, size: 16, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !1147, file: !925, line: 362, baseType: !15, size: 16, offset: 144)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !1147, file: !925, line: 363, baseType: !30, size: 8, offset: 160)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !1147, file: !925, line: 364, baseType: !30, size: 8, offset: 168)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !924, file: !925, line: 513, baseType: !1164, size: 96)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_common_serialbus", file: !925, line: 322, size: 96, elements: !1165)
!1165 = !{!1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1164, file: !925, line: 323, baseType: !30, size: 8)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1164, file: !925, line: 323, baseType: !15, size: 16, offset: 8)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1164, file: !925, line: 323, baseType: !30, size: 8, offset: 24)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1164, file: !925, line: 323, baseType: !30, size: 8, offset: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1164, file: !925, line: 323, baseType: !30, size: 8, offset: 40)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1164, file: !925, line: 323, baseType: !30, size: 8, offset: 48)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !1164, file: !925, line: 323, baseType: !15, size: 16, offset: 56)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !1164, file: !925, line: 323, baseType: !30, size: 8, offset: 72)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !1164, file: !925, line: 323, baseType: !15, size: 16, offset: 80)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !924, file: !925, line: 514, baseType: !1176, size: 144)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_function", file: !925, line: 376, size: 144, elements: !1177)
!1177 = !{!1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1176, file: !925, line: 377, baseType: !30, size: 8)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1176, file: !925, line: 377, baseType: !15, size: 16, offset: 8)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1176, file: !925, line: 377, baseType: !30, size: 8, offset: 24)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1176, file: !925, line: 378, baseType: !15, size: 16, offset: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !1176, file: !925, line: 379, baseType: !30, size: 8, offset: 48)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !1176, file: !925, line: 380, baseType: !15, size: 16, offset: 56)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !1176, file: !925, line: 381, baseType: !15, size: 16, offset: 72)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1176, file: !925, line: 382, baseType: !30, size: 8, offset: 88)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !1176, file: !925, line: 383, baseType: !15, size: 16, offset: 96)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !1176, file: !925, line: 384, baseType: !15, size: 16, offset: 112)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !1176, file: !925, line: 385, baseType: !15, size: 16, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !924, file: !925, line: 515, baseType: !1190, size: 160)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_config", file: !925, line: 396, size: 160, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1190, file: !925, line: 397, baseType: !30, size: 8)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1190, file: !925, line: 397, baseType: !15, size: 16, offset: 8)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1190, file: !925, line: 397, baseType: !30, size: 8, offset: 24)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1190, file: !925, line: 398, baseType: !15, size: 16, offset: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !1190, file: !925, line: 399, baseType: !30, size: 8, offset: 48)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !1190, file: !925, line: 400, baseType: !22, size: 32, offset: 56)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !1190, file: !925, line: 401, baseType: !15, size: 16, offset: 88)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1190, file: !925, line: 402, baseType: !30, size: 8, offset: 104)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !1190, file: !925, line: 403, baseType: !15, size: 16, offset: 112)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !1190, file: !925, line: 404, baseType: !15, size: 16, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !1190, file: !925, line: 405, baseType: !15, size: 16, offset: 144)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !924, file: !925, line: 516, baseType: !1204, size: 112)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group", file: !925, line: 416, size: 112, elements: !1205)
!1205 = !{!1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1204, file: !925, line: 417, baseType: !30, size: 8)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1204, file: !925, line: 417, baseType: !15, size: 16, offset: 8)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1204, file: !925, line: 417, baseType: !30, size: 8, offset: 24)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1204, file: !925, line: 418, baseType: !15, size: 16, offset: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !1204, file: !925, line: 419, baseType: !15, size: 16, offset: 48)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "label_offset", scope: !1204, file: !925, line: 420, baseType: !15, size: 16, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !1204, file: !925, line: 421, baseType: !15, size: 16, offset: 80)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !1204, file: !925, line: 422, baseType: !15, size: 16, offset: 96)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !924, file: !925, line: 517, baseType: !1215, size: 136)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group_function", file: !925, line: 433, size: 136, elements: !1216)
!1216 = !{!1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1215, file: !925, line: 434, baseType: !30, size: 8)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1215, file: !925, line: 434, baseType: !15, size: 16, offset: 8)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1215, file: !925, line: 434, baseType: !30, size: 8, offset: 24)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1215, file: !925, line: 435, baseType: !15, size: 16, offset: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !1215, file: !925, line: 436, baseType: !15, size: 16, offset: 48)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1215, file: !925, line: 437, baseType: !30, size: 8, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !1215, file: !925, line: 438, baseType: !15, size: 16, offset: 72)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_label_offset", scope: !1215, file: !925, line: 439, baseType: !15, size: 16, offset: 88)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !1215, file: !925, line: 440, baseType: !15, size: 16, offset: 104)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !1215, file: !925, line: 441, baseType: !15, size: 16, offset: 120)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !924, file: !925, line: 518, baseType: !1228, size: 160)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group_config", file: !925, line: 452, size: 160, elements: !1229)
!1229 = !{!1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1228, file: !925, line: 453, baseType: !30, size: 8)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1228, file: !925, line: 453, baseType: !15, size: 16, offset: 8)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1228, file: !925, line: 453, baseType: !30, size: 8, offset: 24)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1228, file: !925, line: 454, baseType: !15, size: 16, offset: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !1228, file: !925, line: 455, baseType: !30, size: 8, offset: 48)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !1228, file: !925, line: 456, baseType: !22, size: 32, offset: 56)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1228, file: !925, line: 457, baseType: !30, size: 8, offset: 88)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !1228, file: !925, line: 458, baseType: !15, size: 16, offset: 96)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_label_offset", scope: !1228, file: !925, line: 459, baseType: !15, size: 16, offset: 112)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !1228, file: !925, line: 460, baseType: !15, size: 16, offset: 128)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !1228, file: !925, line: 461, baseType: !15, size: 16, offset: 144)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !924, file: !925, line: 522, baseType: !1242, size: 48)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address", file: !925, line: 213, size: 48, elements: !1243)
!1243 = !{!1244, !1245, !1246, !1247, !1248}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1242, file: !925, line: 214, baseType: !30, size: 8)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1242, file: !925, line: 214, baseType: !15, size: 16, offset: 8)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !1242, file: !925, line: 214, baseType: !30, size: 8, offset: 24)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1242, file: !925, line: 214, baseType: !30, size: 8, offset: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !1242, file: !925, line: 214, baseType: !30, size: 8, offset: 40)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "dword_item", scope: !924, file: !925, line: 523, baseType: !22, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "word_item", scope: !924, file: !925, line: 524, baseType: !15, size: 16)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "byte_item", scope: !924, file: !925, line: 525, baseType: !30, size: 8)
!1252 = !DILocalVariable(name: "total_length", arg: 1, scope: !920, file: !3, line: 167, type: !36)
!1253 = !DILocation(line: 167, column: 46, scope: !920)
!1254 = !DILocalVariable(name: "aml", arg: 2, scope: !920, file: !3, line: 168, type: !923)
!1255 = !DILocation(line: 168, column: 28, scope: !920)
!1256 = !DILocalVariable(name: "resource_length", scope: !920, file: !3, line: 170, type: !28)
!1257 = !DILocation(line: 170, column: 17, scope: !920)
!1258 = !DILocation(line: 177, column: 7, scope: !920)
!1259 = !DILocation(line: 177, column: 57, scope: !920)
!1260 = !DILocation(line: 177, column: 22, scope: !920)
!1261 = !DILocation(line: 177, column: 20, scope: !920)
!1262 = !DILocation(line: 176, column: 20, scope: !920)
!1263 = !DILocation(line: 176, column: 18, scope: !920)
!1264 = !DILocation(line: 181, column: 6, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !920, file: !3, line: 181, column: 6)
!1266 = !DILocation(line: 181, column: 11, scope: !1265)
!1267 = !DILocation(line: 181, column: 24, scope: !1265)
!1268 = !DILocation(line: 181, column: 40, scope: !1265)
!1269 = !DILocation(line: 181, column: 6, scope: !920)
!1270 = !DILocation(line: 185, column: 3, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 181, column: 68)
!1272 = !DILocation(line: 187, column: 2, scope: !1271)
!1273 = !DILocation(line: 193, column: 9, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 187, column: 9)
!1275 = !DILocation(line: 193, column: 14, scope: !1274)
!1276 = !DILocation(line: 193, column: 27, scope: !1274)
!1277 = !DILocation(line: 193, column: 43, scope: !1274)
!1278 = !DILocation(line: 195, column: 10, scope: !1274)
!1279 = !DILocation(line: 195, column: 8, scope: !1274)
!1280 = !DILocation(line: 192, column: 39, scope: !1274)
!1281 = !DILocation(line: 192, column: 3, scope: !1274)
!1282 = !DILocation(line: 192, column: 8, scope: !1274)
!1283 = !DILocation(line: 192, column: 21, scope: !1274)
!1284 = !DILocation(line: 192, column: 37, scope: !1274)
!1285 = !DILocation(line: 197, column: 1, scope: !920)
!1286 = distinct !DISubprogram(name: "acpi_rs_set_resource_header", scope: !3, file: !3, line: 217, type: !1287, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !809)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{null, !30, !36, !923}
!1289 = !DILocalVariable(name: "descriptor_type", arg: 1, scope: !1286, file: !3, line: 217, type: !30)
!1290 = !DILocation(line: 217, column: 32, scope: !1286)
!1291 = !DILocalVariable(name: "total_length", arg: 2, scope: !1286, file: !3, line: 218, type: !36)
!1292 = !DILocation(line: 218, column: 25, scope: !1286)
!1293 = !DILocalVariable(name: "aml", arg: 3, scope: !1286, file: !3, line: 219, type: !923)
!1294 = !DILocation(line: 219, column: 28, scope: !1286)
!1295 = !DILocation(line: 225, column: 38, scope: !1286)
!1296 = !DILocation(line: 225, column: 2, scope: !1286)
!1297 = !DILocation(line: 225, column: 7, scope: !1286)
!1298 = !DILocation(line: 225, column: 20, scope: !1286)
!1299 = !DILocation(line: 225, column: 36, scope: !1286)
!1300 = !DILocation(line: 229, column: 30, scope: !1286)
!1301 = !DILocation(line: 229, column: 44, scope: !1286)
!1302 = !DILocation(line: 229, column: 2, scope: !1286)
!1303 = !DILocation(line: 230, column: 1, scope: !1286)
!1304 = distinct !DISubprogram(name: "acpi_rs_get_resource_source", scope: !3, file: !3, line: 284, type: !1305, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !809)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!28, !28, !28, !1307, !923, !37}
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !29, line: 263, size: 88, elements: !1309)
!1309 = !{!1310, !1311, !1312}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1308, file: !29, line: 264, baseType: !30, size: 8)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !1308, file: !29, line: 265, baseType: !15, size: 16, offset: 8)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !1308, file: !29, line: 266, baseType: !37, size: 64, offset: 24)
!1313 = !DILocalVariable(name: "resource_length", arg: 1, scope: !1304, file: !3, line: 284, type: !28)
!1314 = !DILocation(line: 284, column: 44, scope: !1304)
!1315 = !DILocalVariable(name: "minimum_length", arg: 2, scope: !1304, file: !3, line: 285, type: !28)
!1316 = !DILocation(line: 285, column: 23, scope: !1304)
!1317 = !DILocalVariable(name: "resource_source", arg: 3, scope: !1304, file: !3, line: 286, type: !1307)
!1318 = !DILocation(line: 286, column: 38, scope: !1304)
!1319 = !DILocalVariable(name: "aml", arg: 4, scope: !1304, file: !3, line: 287, type: !923)
!1320 = !DILocation(line: 287, column: 29, scope: !1304)
!1321 = !DILocalVariable(name: "string_ptr", arg: 5, scope: !1304, file: !3, line: 287, type: !37)
!1322 = !DILocation(line: 287, column: 40, scope: !1304)
!1323 = !DILocalVariable(name: "total_length", scope: !1304, file: !3, line: 289, type: !36)
!1324 = !DILocation(line: 289, column: 19, scope: !1304)
!1325 = !DILocalVariable(name: "aml_resource_source", scope: !1304, file: !3, line: 290, type: !33)
!1326 = !DILocation(line: 290, column: 6, scope: !1304)
!1327 = !DILocation(line: 295, column: 6, scope: !1304)
!1328 = !DILocation(line: 295, column: 22, scope: !1304)
!1329 = !DILocation(line: 294, column: 15, scope: !1304)
!1330 = !DILocation(line: 296, column: 24, scope: !1304)
!1331 = !DILocation(line: 296, column: 22, scope: !1304)
!1332 = !DILocation(line: 305, column: 6, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 305, column: 6)
!1334 = !DILocation(line: 305, column: 40, scope: !1333)
!1335 = !DILocation(line: 305, column: 55, scope: !1333)
!1336 = !DILocation(line: 305, column: 19, scope: !1333)
!1337 = !DILocation(line: 305, column: 6, scope: !1304)
!1338 = !DILocation(line: 309, column: 28, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 305, column: 61)
!1340 = !DILocation(line: 309, column: 3, scope: !1339)
!1341 = !DILocation(line: 309, column: 20, scope: !1339)
!1342 = !DILocation(line: 309, column: 26, scope: !1339)
!1343 = !DILocation(line: 311, column: 33, scope: !1339)
!1344 = !DILocation(line: 311, column: 3, scope: !1339)
!1345 = !DILocation(line: 311, column: 20, scope: !1339)
!1346 = !DILocation(line: 311, column: 31, scope: !1339)
!1347 = !DILocation(line: 312, column: 8, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 312, column: 7)
!1349 = !DILocation(line: 312, column: 7, scope: !1339)
!1350 = !DILocation(line: 318, column: 8, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 312, column: 20)
!1352 = !DILocation(line: 317, column: 4, scope: !1351)
!1353 = !DILocation(line: 317, column: 21, scope: !1351)
!1354 = !DILocation(line: 317, column: 32, scope: !1351)
!1355 = !DILocation(line: 320, column: 3, scope: !1351)
!1356 = !DILocation(line: 330, column: 19, scope: !1339)
!1357 = !DILocation(line: 330, column: 12, scope: !1339)
!1358 = !DILocation(line: 330, column: 7, scope: !1339)
!1359 = !DILocation(line: 330, column: 65, scope: !1339)
!1360 = !DILocation(line: 329, column: 16, scope: !1339)
!1361 = !DILocation(line: 333, column: 23, scope: !1339)
!1362 = !DILocation(line: 333, column: 18, scope: !1339)
!1363 = !DILocation(line: 333, column: 16, scope: !1339)
!1364 = !DILocation(line: 335, column: 10, scope: !1339)
!1365 = !DILocation(line: 335, column: 27, scope: !1339)
!1366 = !DILocation(line: 335, column: 42, scope: !1339)
!1367 = !DILocation(line: 335, column: 3, scope: !1339)
!1368 = !DILocation(line: 340, column: 22, scope: !1339)
!1369 = !DILocation(line: 340, column: 39, scope: !1339)
!1370 = !DILocation(line: 341, column: 8, scope: !1339)
!1371 = !DILocation(line: 340, column: 7, scope: !1339)
!1372 = !DILocation(line: 339, column: 3, scope: !1339)
!1373 = !DILocation(line: 339, column: 20, scope: !1339)
!1374 = !DILocation(line: 339, column: 34, scope: !1339)
!1375 = !DILocation(line: 344, column: 27, scope: !1339)
!1376 = !DILocation(line: 344, column: 11, scope: !1339)
!1377 = !DILocation(line: 344, column: 3, scope: !1339)
!1378 = !DILocation(line: 349, column: 2, scope: !1304)
!1379 = !DILocation(line: 349, column: 19, scope: !1304)
!1380 = !DILocation(line: 349, column: 25, scope: !1304)
!1381 = !DILocation(line: 350, column: 2, scope: !1304)
!1382 = !DILocation(line: 350, column: 19, scope: !1304)
!1383 = !DILocation(line: 350, column: 33, scope: !1304)
!1384 = !DILocation(line: 351, column: 2, scope: !1304)
!1385 = !DILocation(line: 351, column: 19, scope: !1304)
!1386 = !DILocation(line: 351, column: 30, scope: !1304)
!1387 = !DILocation(line: 352, column: 2, scope: !1304)
!1388 = !DILocation(line: 353, column: 1, scope: !1304)
!1389 = distinct !DISubprogram(name: "acpi_rs_strcpy", scope: !3, file: !3, line: 246, type: !1390, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !809)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!15, !37, !37}
!1392 = !DILocalVariable(name: "destination", arg: 1, scope: !1389, file: !3, line: 246, type: !37)
!1393 = !DILocation(line: 246, column: 33, scope: !1389)
!1394 = !DILocalVariable(name: "source", arg: 2, scope: !1389, file: !3, line: 246, type: !37)
!1395 = !DILocation(line: 246, column: 52, scope: !1389)
!1396 = !DILocalVariable(name: "i", scope: !1389, file: !3, line: 248, type: !15)
!1397 = !DILocation(line: 248, column: 6, scope: !1389)
!1398 = !DILocation(line: 252, column: 9, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 252, column: 2)
!1400 = !DILocation(line: 252, column: 7, scope: !1399)
!1401 = !DILocation(line: 252, column: 14, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 252, column: 2)
!1403 = !DILocation(line: 252, column: 21, scope: !1402)
!1404 = !DILocation(line: 252, column: 2, scope: !1399)
!1405 = !DILocation(line: 253, column: 20, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 252, column: 30)
!1407 = !DILocation(line: 253, column: 27, scope: !1406)
!1408 = !DILocation(line: 253, column: 3, scope: !1406)
!1409 = !DILocation(line: 253, column: 15, scope: !1406)
!1410 = !DILocation(line: 253, column: 18, scope: !1406)
!1411 = !DILocation(line: 254, column: 2, scope: !1406)
!1412 = !DILocation(line: 252, column: 26, scope: !1402)
!1413 = !DILocation(line: 252, column: 2, scope: !1402)
!1414 = distinct !{!1414, !1404, !1415}
!1415 = !DILocation(line: 254, column: 2, scope: !1399)
!1416 = !DILocation(line: 256, column: 2, scope: !1389)
!1417 = !DILocation(line: 256, column: 14, scope: !1389)
!1418 = !DILocation(line: 256, column: 17, scope: !1389)
!1419 = !DILocation(line: 260, column: 17, scope: !1389)
!1420 = !DILocation(line: 260, column: 19, scope: !1389)
!1421 = !DILocation(line: 260, column: 10, scope: !1389)
!1422 = !DILocation(line: 260, column: 2, scope: !1389)
!1423 = distinct !DISubprogram(name: "acpi_rs_set_resource_source", scope: !3, file: !3, line: 373, type: !1424, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !809)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!36, !923, !28, !1307}
!1426 = !DILocalVariable(name: "aml", arg: 1, scope: !1423, file: !3, line: 373, type: !923)
!1427 = !DILocation(line: 373, column: 49, scope: !1423)
!1428 = !DILocalVariable(name: "minimum_length", arg: 2, scope: !1423, file: !3, line: 374, type: !28)
!1429 = !DILocation(line: 374, column: 23, scope: !1423)
!1430 = !DILocalVariable(name: "resource_source", arg: 3, scope: !1423, file: !3, line: 375, type: !1307)
!1431 = !DILocation(line: 375, column: 37, scope: !1423)
!1432 = !DILocalVariable(name: "aml_resource_source", scope: !1423, file: !3, line: 377, type: !33)
!1433 = !DILocation(line: 377, column: 6, scope: !1423)
!1434 = !DILocalVariable(name: "descriptor_length", scope: !1423, file: !3, line: 378, type: !36)
!1435 = !DILocation(line: 378, column: 19, scope: !1423)
!1436 = !DILocation(line: 382, column: 22, scope: !1423)
!1437 = !DILocation(line: 382, column: 20, scope: !1423)
!1438 = !DILocation(line: 386, column: 6, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 386, column: 6)
!1440 = !DILocation(line: 386, column: 23, scope: !1439)
!1441 = !DILocation(line: 386, column: 6, scope: !1423)
!1442 = !DILocation(line: 390, column: 25, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 386, column: 38)
!1444 = !DILocation(line: 390, column: 23, scope: !1443)
!1445 = !DILocation(line: 394, column: 33, scope: !1443)
!1446 = !DILocation(line: 394, column: 50, scope: !1443)
!1447 = !DILocation(line: 394, column: 3, scope: !1443)
!1448 = !DILocation(line: 394, column: 26, scope: !1443)
!1449 = !DILocation(line: 398, column: 10, scope: !1443)
!1450 = !DILocation(line: 399, column: 10, scope: !1443)
!1451 = !DILocation(line: 399, column: 27, scope: !1443)
!1452 = !DILocation(line: 398, column: 3, scope: !1443)
!1453 = !DILocation(line: 406, column: 11, scope: !1443)
!1454 = !DILocation(line: 406, column: 28, scope: !1443)
!1455 = !DILocation(line: 405, column: 25, scope: !1443)
!1456 = !DILocation(line: 406, column: 42, scope: !1443)
!1457 = !DILocation(line: 405, column: 21, scope: !1443)
!1458 = !DILocation(line: 407, column: 2, scope: !1443)
!1459 = !DILocation(line: 411, column: 10, scope: !1423)
!1460 = !DILocation(line: 411, column: 2, scope: !1423)
!1461 = distinct !DISubprogram(name: "acpi_rs_get_prt_method_data", scope: !3, file: !3, line: 433, type: !1462, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !809)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!137, !39, !1464}
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !35, line: 969, size: 128, elements: !1466)
!1466 = !{!1467, !1468}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1465, file: !35, line: 970, baseType: !34, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1465, file: !35, line: 971, baseType: !20, size: 64, offset: 64)
!1469 = !DILocalVariable(name: "node", arg: 1, scope: !1461, file: !3, line: 433, type: !39)
!1470 = !DILocation(line: 433, column: 57, scope: !1461)
!1471 = !DILocalVariable(name: "ret_buffer", arg: 2, scope: !1461, file: !3, line: 434, type: !1464)
!1472 = !DILocation(line: 434, column: 28, scope: !1461)
!1473 = !DILocalVariable(name: "obj_desc", scope: !1461, file: !3, line: 436, type: !44)
!1474 = !DILocation(line: 436, column: 29, scope: !1461)
!1475 = !DILocalVariable(name: "status", scope: !1461, file: !3, line: 437, type: !137)
!1476 = !DILocation(line: 437, column: 14, scope: !1461)
!1477 = !DILocation(line: 446, column: 30, scope: !1461)
!1478 = !DILocation(line: 446, column: 6, scope: !1461)
!1479 = !DILocation(line: 445, column: 9, scope: !1461)
!1480 = !DILocation(line: 448, column: 6, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 448, column: 6)
!1482 = !DILocation(line: 448, column: 6, scope: !1461)
!1483 = !DILocation(line: 449, column: 3, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 448, column: 28)
!1485 = !DILocation(line: 456, column: 44, scope: !1461)
!1486 = !DILocation(line: 456, column: 54, scope: !1461)
!1487 = !DILocation(line: 456, column: 11, scope: !1461)
!1488 = !DILocation(line: 456, column: 9, scope: !1461)
!1489 = !DILocation(line: 460, column: 27, scope: !1461)
!1490 = !DILocation(line: 460, column: 2, scope: !1461)
!1491 = !DILocation(line: 461, column: 2, scope: !1461)
!1492 = !DILocation(line: 462, column: 1, scope: !1461)
!1493 = distinct !DISubprogram(name: "acpi_rs_get_crs_method_data", scope: !3, file: !3, line: 483, type: !1462, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !809)
!1494 = !DILocalVariable(name: "node", arg: 1, scope: !1493, file: !3, line: 483, type: !39)
!1495 = !DILocation(line: 483, column: 57, scope: !1493)
!1496 = !DILocalVariable(name: "ret_buffer", arg: 2, scope: !1493, file: !3, line: 484, type: !1464)
!1497 = !DILocation(line: 484, column: 28, scope: !1493)
!1498 = !DILocalVariable(name: "obj_desc", scope: !1493, file: !3, line: 486, type: !44)
!1499 = !DILocation(line: 486, column: 29, scope: !1493)
!1500 = !DILocalVariable(name: "status", scope: !1493, file: !3, line: 487, type: !137)
!1501 = !DILocation(line: 487, column: 14, scope: !1493)
!1502 = !DILocation(line: 496, column: 30, scope: !1493)
!1503 = !DILocation(line: 496, column: 6, scope: !1493)
!1504 = !DILocation(line: 495, column: 9, scope: !1493)
!1505 = !DILocation(line: 498, column: 6, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 498, column: 6)
!1507 = !DILocation(line: 498, column: 6, scope: !1493)
!1508 = !DILocation(line: 499, column: 3, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 498, column: 28)
!1510 = !DILocation(line: 507, column: 40, scope: !1493)
!1511 = !DILocation(line: 507, column: 50, scope: !1493)
!1512 = !DILocation(line: 507, column: 11, scope: !1493)
!1513 = !DILocation(line: 507, column: 9, scope: !1493)
!1514 = !DILocation(line: 511, column: 27, scope: !1493)
!1515 = !DILocation(line: 511, column: 2, scope: !1493)
!1516 = !DILocation(line: 512, column: 2, scope: !1493)
!1517 = !DILocation(line: 513, column: 1, scope: !1493)
!1518 = distinct !DISubprogram(name: "acpi_rs_get_prs_method_data", scope: !3, file: !3, line: 534, type: !1462, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !809)
!1519 = !DILocalVariable(name: "node", arg: 1, scope: !1518, file: !3, line: 534, type: !39)
!1520 = !DILocation(line: 534, column: 57, scope: !1518)
!1521 = !DILocalVariable(name: "ret_buffer", arg: 2, scope: !1518, file: !3, line: 535, type: !1464)
!1522 = !DILocation(line: 535, column: 28, scope: !1518)
!1523 = !DILocalVariable(name: "obj_desc", scope: !1518, file: !3, line: 537, type: !44)
!1524 = !DILocation(line: 537, column: 29, scope: !1518)
!1525 = !DILocalVariable(name: "status", scope: !1518, file: !3, line: 538, type: !137)
!1526 = !DILocation(line: 538, column: 14, scope: !1518)
!1527 = !DILocation(line: 547, column: 30, scope: !1518)
!1528 = !DILocation(line: 547, column: 6, scope: !1518)
!1529 = !DILocation(line: 546, column: 9, scope: !1518)
!1530 = !DILocation(line: 549, column: 6, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 549, column: 6)
!1532 = !DILocation(line: 549, column: 6, scope: !1518)
!1533 = !DILocation(line: 550, column: 3, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 549, column: 28)
!1535 = !DILocation(line: 558, column: 40, scope: !1518)
!1536 = !DILocation(line: 558, column: 50, scope: !1518)
!1537 = !DILocation(line: 558, column: 11, scope: !1518)
!1538 = !DILocation(line: 558, column: 9, scope: !1518)
!1539 = !DILocation(line: 562, column: 27, scope: !1518)
!1540 = !DILocation(line: 562, column: 2, scope: !1518)
!1541 = !DILocation(line: 563, column: 2, scope: !1518)
!1542 = !DILocation(line: 564, column: 1, scope: !1518)
!1543 = distinct !DISubprogram(name: "acpi_rs_get_aei_method_data", scope: !3, file: !3, line: 585, type: !1462, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !809)
!1544 = !DILocalVariable(name: "node", arg: 1, scope: !1543, file: !3, line: 585, type: !39)
!1545 = !DILocation(line: 585, column: 57, scope: !1543)
!1546 = !DILocalVariable(name: "ret_buffer", arg: 2, scope: !1543, file: !3, line: 586, type: !1464)
!1547 = !DILocation(line: 586, column: 28, scope: !1543)
!1548 = !DILocalVariable(name: "obj_desc", scope: !1543, file: !3, line: 588, type: !44)
!1549 = !DILocation(line: 588, column: 29, scope: !1543)
!1550 = !DILocalVariable(name: "status", scope: !1543, file: !3, line: 589, type: !137)
!1551 = !DILocation(line: 589, column: 14, scope: !1543)
!1552 = !DILocation(line: 598, column: 30, scope: !1543)
!1553 = !DILocation(line: 598, column: 6, scope: !1543)
!1554 = !DILocation(line: 597, column: 9, scope: !1543)
!1555 = !DILocation(line: 600, column: 6, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 600, column: 6)
!1557 = !DILocation(line: 600, column: 6, scope: !1543)
!1558 = !DILocation(line: 601, column: 3, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 600, column: 28)
!1560 = !DILocation(line: 609, column: 40, scope: !1543)
!1561 = !DILocation(line: 609, column: 50, scope: !1543)
!1562 = !DILocation(line: 609, column: 11, scope: !1543)
!1563 = !DILocation(line: 609, column: 9, scope: !1543)
!1564 = !DILocation(line: 613, column: 27, scope: !1543)
!1565 = !DILocation(line: 613, column: 2, scope: !1543)
!1566 = !DILocation(line: 614, column: 2, scope: !1543)
!1567 = !DILocation(line: 615, column: 1, scope: !1543)
!1568 = distinct !DISubprogram(name: "acpi_rs_get_method_data", scope: !3, file: !3, line: 637, type: !1569, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !809)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!137, !371, !1571, !1464}
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!1572 = !DILocalVariable(name: "handle", arg: 1, scope: !1568, file: !3, line: 637, type: !371)
!1573 = !DILocation(line: 637, column: 37, scope: !1568)
!1574 = !DILocalVariable(name: "path", arg: 2, scope: !1568, file: !3, line: 638, type: !1571)
!1575 = !DILocation(line: 638, column: 16, scope: !1568)
!1576 = !DILocalVariable(name: "ret_buffer", arg: 3, scope: !1568, file: !3, line: 638, type: !1464)
!1577 = !DILocation(line: 638, column: 42, scope: !1568)
!1578 = !DILocalVariable(name: "obj_desc", scope: !1568, file: !3, line: 640, type: !44)
!1579 = !DILocation(line: 640, column: 29, scope: !1568)
!1580 = !DILocalVariable(name: "status", scope: !1568, file: !3, line: 641, type: !137)
!1581 = !DILocation(line: 641, column: 14, scope: !1568)
!1582 = !DILocation(line: 650, column: 30, scope: !1568)
!1583 = !DILocation(line: 651, column: 47, scope: !1568)
!1584 = !DILocation(line: 650, column: 6, scope: !1568)
!1585 = !DILocation(line: 649, column: 9, scope: !1568)
!1586 = !DILocation(line: 653, column: 6, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 653, column: 6)
!1588 = !DILocation(line: 653, column: 6, scope: !1568)
!1589 = !DILocation(line: 654, column: 3, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 653, column: 28)
!1591 = !DILocation(line: 662, column: 40, scope: !1568)
!1592 = !DILocation(line: 662, column: 50, scope: !1568)
!1593 = !DILocation(line: 662, column: 11, scope: !1568)
!1594 = !DILocation(line: 662, column: 9, scope: !1568)
!1595 = !DILocation(line: 666, column: 27, scope: !1568)
!1596 = !DILocation(line: 666, column: 2, scope: !1568)
!1597 = !DILocation(line: 667, column: 2, scope: !1568)
!1598 = !DILocation(line: 668, column: 1, scope: !1568)
!1599 = distinct !DISubprogram(name: "acpi_rs_set_srs_method_data", scope: !3, file: !3, line: 691, type: !1462, scopeLine: 693, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !809)
!1600 = !DILocalVariable(name: "node", arg: 1, scope: !1599, file: !3, line: 691, type: !39)
!1601 = !DILocation(line: 691, column: 57, scope: !1599)
!1602 = !DILocalVariable(name: "in_buffer", arg: 2, scope: !1599, file: !3, line: 692, type: !1464)
!1603 = !DILocation(line: 692, column: 28, scope: !1599)
!1604 = !DILocalVariable(name: "info", scope: !1599, file: !3, line: 694, type: !1605)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !140, line: 152, size: 704, elements: !1607)
!1607 = !{!1608, !1609, !1610, !1611, !1612, !1613, !1614, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !1606, file: !140, line: 155, baseType: !39, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !1606, file: !140, line: 156, baseType: !1571, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1606, file: !140, line: 157, baseType: !102, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1606, file: !140, line: 159, baseType: !39, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !1606, file: !140, line: 160, baseType: !44, size: 64, offset: 256)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !1606, file: !140, line: 161, baseType: !37, size: 64, offset: 320)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !1606, file: !140, line: 163, baseType: !1615, size: 64, offset: 384)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1617)
!1617 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !41, line: 351, size: 56, elements: !1618)
!1618 = !{!1619, !1625, !1634, !1642, !1651}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1617, file: !41, line: 352, baseType: !1620, size: 56)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !41, line: 295, size: 56, elements: !1621)
!1621 = !{!1622, !1623, !1624}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1620, file: !41, line: 296, baseType: !232, size: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !1620, file: !41, line: 297, baseType: !15, size: 16, offset: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !1620, file: !41, line: 298, baseType: !30, size: 8, offset: 48)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !1617, file: !41, line: 353, baseType: !1626, size: 56)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !41, line: 314, size: 56, elements: !1627)
!1627 = !{!1628, !1629, !1630, !1631, !1632, !1633}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1626, file: !41, line: 315, baseType: !30, size: 8)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1626, file: !41, line: 316, baseType: !30, size: 8, offset: 8)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1626, file: !41, line: 317, baseType: !30, size: 8, offset: 16)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !1626, file: !41, line: 318, baseType: !30, size: 8, offset: 24)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !1626, file: !41, line: 319, baseType: !30, size: 8, offset: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1626, file: !41, line: 320, baseType: !15, size: 16, offset: 40)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !1617, file: !41, line: 354, baseType: !1635, size: 56)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !41, line: 325, size: 56, elements: !1636)
!1636 = !{!1637, !1638, !1639, !1641}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1635, file: !41, line: 326, baseType: !30, size: 8)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1635, file: !41, line: 327, baseType: !30, size: 8, offset: 8)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1635, file: !41, line: 328, baseType: !1640, size: 32, offset: 16)
!1640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !233)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1635, file: !41, line: 329, baseType: !30, size: 8, offset: 48)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !1617, file: !41, line: 355, baseType: !1643, size: 56)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !41, line: 334, size: 56, elements: !1644)
!1644 = !{!1645, !1646, !1647, !1649, !1650}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1643, file: !41, line: 335, baseType: !30, size: 8)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1643, file: !41, line: 336, baseType: !30, size: 8, offset: 8)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1643, file: !41, line: 337, baseType: !1648, size: 16, offset: 16)
!1648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 16, elements: !475)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !1643, file: !41, line: 338, baseType: !30, size: 8, offset: 32)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1643, file: !41, line: 339, baseType: !15, size: 16, offset: 40)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !1617, file: !41, line: 356, baseType: !1652, size: 56)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !41, line: 342, size: 56, elements: !1653)
!1653 = !{!1654, !1655, !1656, !1657, !1658, !1659}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1652, file: !41, line: 343, baseType: !30, size: 8)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1652, file: !41, line: 344, baseType: !30, size: 8, offset: 8)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1652, file: !41, line: 345, baseType: !30, size: 8, offset: 16)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !1652, file: !41, line: 346, baseType: !30, size: 8, offset: 24)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !1652, file: !41, line: 347, baseType: !30, size: 8, offset: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1652, file: !41, line: 348, baseType: !15, size: 16, offset: 40)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !1606, file: !140, line: 164, baseType: !44, size: 64, offset: 448)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !1606, file: !140, line: 165, baseType: !44, size: 64, offset: 512)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !1606, file: !140, line: 167, baseType: !22, size: 32, offset: 576)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !1606, file: !140, line: 168, baseType: !22, size: 32, offset: 608)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1606, file: !140, line: 169, baseType: !15, size: 16, offset: 640)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !1606, file: !140, line: 170, baseType: !15, size: 16, offset: 656)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !1606, file: !140, line: 171, baseType: !30, size: 8, offset: 672)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !1606, file: !140, line: 172, baseType: !30, size: 8, offset: 680)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1606, file: !140, line: 173, baseType: !30, size: 8, offset: 688)
!1669 = !DILocation(line: 694, column: 29, scope: !1599)
!1670 = !DILocalVariable(name: "args", scope: !1599, file: !3, line: 695, type: !474)
!1671 = !DILocation(line: 695, column: 29, scope: !1599)
!1672 = !DILocalVariable(name: "status", scope: !1599, file: !3, line: 696, type: !137)
!1673 = !DILocation(line: 696, column: 14, scope: !1599)
!1674 = !DILocalVariable(name: "buffer", scope: !1599, file: !3, line: 697, type: !1465)
!1675 = !DILocation(line: 697, column: 21, scope: !1599)
!1676 = !DILocation(line: 703, column: 9, scope: !1599)
!1677 = !DILocation(line: 703, column: 7, scope: !1599)
!1678 = !DILocation(line: 704, column: 7, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 704, column: 6)
!1680 = !DILocation(line: 704, column: 6, scope: !1599)
!1681 = !DILocation(line: 705, column: 3, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 704, column: 13)
!1683 = !DILocation(line: 708, column: 22, scope: !1599)
!1684 = !DILocation(line: 708, column: 2, scope: !1599)
!1685 = !DILocation(line: 708, column: 8, scope: !1599)
!1686 = !DILocation(line: 708, column: 20, scope: !1599)
!1687 = !DILocation(line: 709, column: 2, scope: !1599)
!1688 = !DILocation(line: 709, column: 8, scope: !1599)
!1689 = !DILocation(line: 709, column: 26, scope: !1599)
!1690 = !DILocation(line: 710, column: 21, scope: !1599)
!1691 = !DILocation(line: 710, column: 2, scope: !1599)
!1692 = !DILocation(line: 710, column: 8, scope: !1599)
!1693 = !DILocation(line: 710, column: 19, scope: !1599)
!1694 = !DILocation(line: 711, column: 2, scope: !1599)
!1695 = !DILocation(line: 711, column: 8, scope: !1599)
!1696 = !DILocation(line: 711, column: 14, scope: !1599)
!1697 = !DILocation(line: 720, column: 9, scope: !1599)
!1698 = !DILocation(line: 720, column: 16, scope: !1599)
!1699 = !DILocation(line: 721, column: 40, scope: !1599)
!1700 = !DILocation(line: 721, column: 11, scope: !1599)
!1701 = !DILocation(line: 721, column: 9, scope: !1599)
!1702 = !DILocation(line: 722, column: 6, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 722, column: 6)
!1704 = !DILocation(line: 722, column: 6, scope: !1599)
!1705 = !DILocation(line: 723, column: 3, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 722, column: 28)
!1707 = !DILocation(line: 728, column: 12, scope: !1599)
!1708 = !DILocation(line: 728, column: 2, scope: !1599)
!1709 = !DILocation(line: 728, column: 10, scope: !1599)
!1710 = !DILocation(line: 729, column: 7, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 729, column: 6)
!1712 = !DILocation(line: 729, column: 6, scope: !1599)
!1713 = !DILocation(line: 734, column: 3, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 729, column: 16)
!1715 = !DILocation(line: 735, column: 10, scope: !1714)
!1716 = !DILocation(line: 736, column: 3, scope: !1714)
!1717 = !DILocation(line: 739, column: 40, scope: !1599)
!1718 = !DILocation(line: 739, column: 27, scope: !1599)
!1719 = !DILocation(line: 739, column: 2, scope: !1599)
!1720 = !DILocation(line: 739, column: 11, scope: !1599)
!1721 = !DILocation(line: 739, column: 18, scope: !1599)
!1722 = !DILocation(line: 739, column: 25, scope: !1599)
!1723 = !DILocation(line: 740, column: 35, scope: !1599)
!1724 = !DILocation(line: 740, column: 2, scope: !1599)
!1725 = !DILocation(line: 740, column: 11, scope: !1599)
!1726 = !DILocation(line: 740, column: 18, scope: !1599)
!1727 = !DILocation(line: 740, column: 26, scope: !1599)
!1728 = !DILocation(line: 741, column: 2, scope: !1599)
!1729 = !DILocation(line: 741, column: 11, scope: !1599)
!1730 = !DILocation(line: 741, column: 18, scope: !1599)
!1731 = !DILocation(line: 741, column: 24, scope: !1599)
!1732 = !DILocation(line: 742, column: 2, scope: !1599)
!1733 = !DILocation(line: 742, column: 10, scope: !1599)
!1734 = !DILocation(line: 746, column: 28, scope: !1599)
!1735 = !DILocation(line: 746, column: 11, scope: !1599)
!1736 = !DILocation(line: 746, column: 9, scope: !1599)
!1737 = !DILocation(line: 750, column: 27, scope: !1599)
!1738 = !DILocation(line: 750, column: 2, scope: !1599)
!1739 = !DILabel(scope: !1599, name: "cleanup", file: !3, line: 752)
!1740 = !DILocation(line: 752, column: 1, scope: !1599)
!1741 = !DILocation(line: 753, column: 2, scope: !1599)
!1742 = !DILocation(line: 754, column: 2, scope: !1599)
!1743 = !DILocation(line: 755, column: 1, scope: !1599)
!1744 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1745, file: !1745, line: 55, type: !1746, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !809)
!1745 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!20, !34}
!1748 = !DILocalVariable(name: "flags", arg: 1, scope: !1749, file: !1750, line: 162, type: !796)
!1749 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1750, file: !1750, line: 162, type: !1751, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !809)
!1750 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!1753, !796}
!1753 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1754 = !DILocation(line: 162, column: 67, scope: !1749, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 57, column: 23, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !1745, line: 57, column: 23)
!1757 = distinct !DILexicalBlock(scope: !1744, file: !1745, line: 57, column: 23)
!1758 = !DILocalVariable(name: "size", arg: 1, scope: !1744, file: !1745, line: 55, type: !34)
!1759 = !DILocation(line: 55, column: 55, scope: !1744)
!1760 = !DILocation(line: 57, column: 17, scope: !1744)
!1761 = !DILocalVariable(name: "_flags", scope: !1757, file: !1745, line: 57, type: !796)
!1762 = !DILocation(line: 57, column: 23, scope: !1757)
!1763 = !DILocalVariable(name: "__dummy", scope: !1764, file: !1745, line: 57, type: !796)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !1745, line: 57, column: 23)
!1765 = distinct !DILexicalBlock(scope: !1757, file: !1745, line: 57, column: 23)
!1766 = !DILocation(line: 57, column: 23, scope: !1764)
!1767 = !DILocalVariable(name: "__dummy2", scope: !1764, file: !1745, line: 57, type: !796)
!1768 = !DILocation(line: 57, column: 23, scope: !1765)
!1769 = !DILocalVariable(name: "__dummy", scope: !1770, file: !1745, line: 57, type: !796)
!1770 = distinct !DILexicalBlock(scope: !1756, file: !1745, line: 57, column: 23)
!1771 = !DILocation(line: 57, column: 23, scope: !1770)
!1772 = !DILocalVariable(name: "__dummy2", scope: !1770, file: !1745, line: 57, type: !796)
!1773 = !DILocation(line: 57, column: 23, scope: !1756)
!1774 = !DILocation(line: 164, column: 11, scope: !1749, inlinedAt: !1755)
!1775 = !DILocation(line: 164, column: 17, scope: !1749, inlinedAt: !1755)
!1776 = !DILocation(line: 164, column: 9, scope: !1749, inlinedAt: !1755)
!1777 = !DILocation(line: 57, column: 23, scope: !1744)
!1778 = !DILocation(line: 57, column: 9, scope: !1744)
!1779 = !DILocation(line: 57, column: 2, scope: !1744)
!1780 = distinct !DISubprogram(name: "acpi_os_free", scope: !1745, file: !1745, line: 60, type: !1781, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !809)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{null, !20}
!1783 = !DILocalVariable(name: "memory", arg: 1, scope: !1780, file: !1745, line: 60, type: !20)
!1784 = !DILocation(line: 60, column: 39, scope: !1780)
!1785 = !DILocation(line: 62, column: 8, scope: !1780)
!1786 = !DILocation(line: 62, column: 2, scope: !1780)
!1787 = !DILocation(line: 63, column: 1, scope: !1780)
!1788 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !1789, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !809)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!20, !1791, !794}
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !795, line: 55, baseType: !1792)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1793, line: 72, baseType: !1794)
!1793 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1793, line: 16, baseType: !796)
!1795 = !DILocalVariable(name: "s", arg: 1, scope: !1796, file: !6, line: 445, type: !1799)
!1796 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !1797, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !809)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!20, !1799, !794, !1791}
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1801, line: 117, flags: DIFlagFwdDecl)
!1801 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1802 = !DILocation(line: 445, column: 72, scope: !1796, inlinedAt: !1803)
!1803 = distinct !DILocation(line: 552, column: 10, scope: !1804, inlinedAt: !1807)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !6, line: 540, column: 34)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !6, line: 540, column: 6)
!1806 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !1789, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !809)
!1807 = distinct !DILocation(line: 664, column: 9, scope: !1788)
!1808 = !DILocalVariable(name: "flags", arg: 2, scope: !1796, file: !6, line: 446, type: !794)
!1809 = !DILocation(line: 446, column: 9, scope: !1796, inlinedAt: !1803)
!1810 = !DILocalVariable(name: "size", arg: 3, scope: !1796, file: !6, line: 446, type: !1791)
!1811 = !DILocation(line: 446, column: 23, scope: !1796, inlinedAt: !1803)
!1812 = !DILocalVariable(name: "ret", scope: !1796, file: !6, line: 448, type: !20)
!1813 = !DILocation(line: 448, column: 8, scope: !1796, inlinedAt: !1803)
!1814 = !DILocalVariable(name: "flags", arg: 1, scope: !1815, file: !6, line: 318, type: !794)
!1815 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !1816, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !809)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!5, !794}
!1818 = !DILocation(line: 318, column: 67, scope: !1815, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 553, column: 20, scope: !1804, inlinedAt: !1807)
!1820 = !DILocalVariable(name: "size", arg: 1, scope: !1821, file: !6, line: 346, type: !1791)
!1821 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !1822, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !809)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!7, !1791}
!1824 = !DILocation(line: 346, column: 58, scope: !1821, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 547, column: 11, scope: !1804, inlinedAt: !1807)
!1826 = !DILocalVariable(name: "size", arg: 1, scope: !1827, file: !6, line: 472, type: !1791)
!1827 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !1828, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !809)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!20, !1791, !794, !7}
!1830 = !DILocation(line: 472, column: 28, scope: !1827, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 481, column: 9, scope: !1832, inlinedAt: !1833)
!1832 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !1789, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !809)
!1833 = distinct !DILocation(line: 545, column: 11, scope: !1834, inlinedAt: !1807)
!1834 = distinct !DILexicalBlock(scope: !1804, file: !6, line: 544, column: 7)
!1835 = !DILocalVariable(name: "flags", arg: 2, scope: !1827, file: !6, line: 472, type: !794)
!1836 = !DILocation(line: 472, column: 40, scope: !1827, inlinedAt: !1831)
!1837 = !DILocalVariable(name: "order", arg: 3, scope: !1827, file: !6, line: 472, type: !7)
!1838 = !DILocation(line: 472, column: 60, scope: !1827, inlinedAt: !1831)
!1839 = !DILocalVariable(name: "size", arg: 1, scope: !1832, file: !6, line: 478, type: !1791)
!1840 = !DILocation(line: 478, column: 51, scope: !1832, inlinedAt: !1833)
!1841 = !DILocalVariable(name: "flags", arg: 2, scope: !1832, file: !6, line: 478, type: !794)
!1842 = !DILocation(line: 478, column: 63, scope: !1832, inlinedAt: !1833)
!1843 = !DILocalVariable(name: "order", scope: !1832, file: !6, line: 480, type: !7)
!1844 = !DILocation(line: 480, column: 15, scope: !1832, inlinedAt: !1833)
!1845 = !DILocalVariable(name: "size", arg: 1, scope: !1806, file: !6, line: 538, type: !1791)
!1846 = !DILocation(line: 538, column: 45, scope: !1806, inlinedAt: !1807)
!1847 = !DILocalVariable(name: "flags", arg: 2, scope: !1806, file: !6, line: 538, type: !794)
!1848 = !DILocation(line: 538, column: 57, scope: !1806, inlinedAt: !1807)
!1849 = !DILocalVariable(name: "index", scope: !1804, file: !6, line: 542, type: !7)
!1850 = !DILocation(line: 542, column: 16, scope: !1804, inlinedAt: !1807)
!1851 = !DILocalVariable(name: "size", arg: 1, scope: !1788, file: !6, line: 662, type: !1791)
!1852 = !DILocation(line: 662, column: 36, scope: !1788)
!1853 = !DILocalVariable(name: "flags", arg: 2, scope: !1788, file: !6, line: 662, type: !794)
!1854 = !DILocation(line: 662, column: 48, scope: !1788)
!1855 = !DILocation(line: 664, column: 17, scope: !1788)
!1856 = !DILocation(line: 664, column: 23, scope: !1788)
!1857 = !DILocation(line: 664, column: 29, scope: !1788)
!1858 = !DILocation(line: 540, column: 27, scope: !1805, inlinedAt: !1807)
!1859 = !DILocation(line: 540, column: 6, scope: !1805, inlinedAt: !1807)
!1860 = !DILocation(line: 540, column: 6, scope: !1806, inlinedAt: !1807)
!1861 = !DILocation(line: 544, column: 7, scope: !1834, inlinedAt: !1807)
!1862 = !DILocation(line: 544, column: 12, scope: !1834, inlinedAt: !1807)
!1863 = !DILocation(line: 544, column: 7, scope: !1804, inlinedAt: !1807)
!1864 = !DILocation(line: 545, column: 25, scope: !1834, inlinedAt: !1807)
!1865 = !DILocation(line: 545, column: 31, scope: !1834, inlinedAt: !1807)
!1866 = !DILocation(line: 480, column: 33, scope: !1832, inlinedAt: !1833)
!1867 = !DILocation(line: 480, column: 23, scope: !1832, inlinedAt: !1833)
!1868 = !DILocation(line: 481, column: 29, scope: !1832, inlinedAt: !1833)
!1869 = !DILocation(line: 481, column: 35, scope: !1832, inlinedAt: !1833)
!1870 = !DILocation(line: 481, column: 42, scope: !1832, inlinedAt: !1833)
!1871 = !DILocation(line: 474, column: 23, scope: !1827, inlinedAt: !1831)
!1872 = !DILocation(line: 474, column: 29, scope: !1827, inlinedAt: !1831)
!1873 = !DILocation(line: 474, column: 36, scope: !1827, inlinedAt: !1831)
!1874 = !DILocation(line: 474, column: 9, scope: !1827, inlinedAt: !1831)
!1875 = !DILocation(line: 545, column: 4, scope: !1834, inlinedAt: !1807)
!1876 = !DILocation(line: 547, column: 25, scope: !1804, inlinedAt: !1807)
!1877 = !DILocation(line: 348, column: 7, scope: !1878, inlinedAt: !1825)
!1878 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 348, column: 6)
!1879 = !DILocation(line: 348, column: 6, scope: !1821, inlinedAt: !1825)
!1880 = !DILocation(line: 349, column: 3, scope: !1878, inlinedAt: !1825)
!1881 = !DILocation(line: 351, column: 6, scope: !1882, inlinedAt: !1825)
!1882 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 351, column: 6)
!1883 = !DILocation(line: 351, column: 11, scope: !1882, inlinedAt: !1825)
!1884 = !DILocation(line: 351, column: 6, scope: !1821, inlinedAt: !1825)
!1885 = !DILocation(line: 352, column: 3, scope: !1882, inlinedAt: !1825)
!1886 = !DILocation(line: 354, column: 32, scope: !1887, inlinedAt: !1825)
!1887 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 354, column: 6)
!1888 = !DILocation(line: 354, column: 37, scope: !1887, inlinedAt: !1825)
!1889 = !DILocation(line: 354, column: 42, scope: !1887, inlinedAt: !1825)
!1890 = !DILocation(line: 354, column: 45, scope: !1887, inlinedAt: !1825)
!1891 = !DILocation(line: 354, column: 50, scope: !1887, inlinedAt: !1825)
!1892 = !DILocation(line: 354, column: 6, scope: !1821, inlinedAt: !1825)
!1893 = !DILocation(line: 355, column: 3, scope: !1887, inlinedAt: !1825)
!1894 = !DILocation(line: 356, column: 32, scope: !1895, inlinedAt: !1825)
!1895 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 356, column: 6)
!1896 = !DILocation(line: 356, column: 37, scope: !1895, inlinedAt: !1825)
!1897 = !DILocation(line: 356, column: 43, scope: !1895, inlinedAt: !1825)
!1898 = !DILocation(line: 356, column: 46, scope: !1895, inlinedAt: !1825)
!1899 = !DILocation(line: 356, column: 51, scope: !1895, inlinedAt: !1825)
!1900 = !DILocation(line: 356, column: 6, scope: !1821, inlinedAt: !1825)
!1901 = !DILocation(line: 357, column: 3, scope: !1895, inlinedAt: !1825)
!1902 = !DILocation(line: 358, column: 6, scope: !1903, inlinedAt: !1825)
!1903 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 358, column: 6)
!1904 = !DILocation(line: 358, column: 11, scope: !1903, inlinedAt: !1825)
!1905 = !DILocation(line: 358, column: 6, scope: !1821, inlinedAt: !1825)
!1906 = !DILocation(line: 358, column: 26, scope: !1903, inlinedAt: !1825)
!1907 = !DILocation(line: 359, column: 6, scope: !1908, inlinedAt: !1825)
!1908 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 359, column: 6)
!1909 = !DILocation(line: 359, column: 11, scope: !1908, inlinedAt: !1825)
!1910 = !DILocation(line: 359, column: 6, scope: !1821, inlinedAt: !1825)
!1911 = !DILocation(line: 359, column: 26, scope: !1908, inlinedAt: !1825)
!1912 = !DILocation(line: 360, column: 6, scope: !1913, inlinedAt: !1825)
!1913 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 360, column: 6)
!1914 = !DILocation(line: 360, column: 11, scope: !1913, inlinedAt: !1825)
!1915 = !DILocation(line: 360, column: 6, scope: !1821, inlinedAt: !1825)
!1916 = !DILocation(line: 360, column: 26, scope: !1913, inlinedAt: !1825)
!1917 = !DILocation(line: 361, column: 6, scope: !1918, inlinedAt: !1825)
!1918 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 361, column: 6)
!1919 = !DILocation(line: 361, column: 11, scope: !1918, inlinedAt: !1825)
!1920 = !DILocation(line: 361, column: 6, scope: !1821, inlinedAt: !1825)
!1921 = !DILocation(line: 361, column: 26, scope: !1918, inlinedAt: !1825)
!1922 = !DILocation(line: 362, column: 6, scope: !1923, inlinedAt: !1825)
!1923 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 362, column: 6)
!1924 = !DILocation(line: 362, column: 11, scope: !1923, inlinedAt: !1825)
!1925 = !DILocation(line: 362, column: 6, scope: !1821, inlinedAt: !1825)
!1926 = !DILocation(line: 362, column: 26, scope: !1923, inlinedAt: !1825)
!1927 = !DILocation(line: 363, column: 6, scope: !1928, inlinedAt: !1825)
!1928 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 363, column: 6)
!1929 = !DILocation(line: 363, column: 11, scope: !1928, inlinedAt: !1825)
!1930 = !DILocation(line: 363, column: 6, scope: !1821, inlinedAt: !1825)
!1931 = !DILocation(line: 363, column: 26, scope: !1928, inlinedAt: !1825)
!1932 = !DILocation(line: 364, column: 6, scope: !1933, inlinedAt: !1825)
!1933 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 364, column: 6)
!1934 = !DILocation(line: 364, column: 11, scope: !1933, inlinedAt: !1825)
!1935 = !DILocation(line: 364, column: 6, scope: !1821, inlinedAt: !1825)
!1936 = !DILocation(line: 364, column: 26, scope: !1933, inlinedAt: !1825)
!1937 = !DILocation(line: 365, column: 6, scope: !1938, inlinedAt: !1825)
!1938 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 365, column: 6)
!1939 = !DILocation(line: 365, column: 11, scope: !1938, inlinedAt: !1825)
!1940 = !DILocation(line: 365, column: 6, scope: !1821, inlinedAt: !1825)
!1941 = !DILocation(line: 365, column: 26, scope: !1938, inlinedAt: !1825)
!1942 = !DILocation(line: 366, column: 6, scope: !1943, inlinedAt: !1825)
!1943 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 366, column: 6)
!1944 = !DILocation(line: 366, column: 11, scope: !1943, inlinedAt: !1825)
!1945 = !DILocation(line: 366, column: 6, scope: !1821, inlinedAt: !1825)
!1946 = !DILocation(line: 366, column: 26, scope: !1943, inlinedAt: !1825)
!1947 = !DILocation(line: 367, column: 6, scope: !1948, inlinedAt: !1825)
!1948 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 367, column: 6)
!1949 = !DILocation(line: 367, column: 11, scope: !1948, inlinedAt: !1825)
!1950 = !DILocation(line: 367, column: 6, scope: !1821, inlinedAt: !1825)
!1951 = !DILocation(line: 367, column: 26, scope: !1948, inlinedAt: !1825)
!1952 = !DILocation(line: 368, column: 6, scope: !1953, inlinedAt: !1825)
!1953 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 368, column: 6)
!1954 = !DILocation(line: 368, column: 11, scope: !1953, inlinedAt: !1825)
!1955 = !DILocation(line: 368, column: 6, scope: !1821, inlinedAt: !1825)
!1956 = !DILocation(line: 368, column: 26, scope: !1953, inlinedAt: !1825)
!1957 = !DILocation(line: 369, column: 6, scope: !1958, inlinedAt: !1825)
!1958 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 369, column: 6)
!1959 = !DILocation(line: 369, column: 11, scope: !1958, inlinedAt: !1825)
!1960 = !DILocation(line: 369, column: 6, scope: !1821, inlinedAt: !1825)
!1961 = !DILocation(line: 369, column: 26, scope: !1958, inlinedAt: !1825)
!1962 = !DILocation(line: 370, column: 6, scope: !1963, inlinedAt: !1825)
!1963 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 370, column: 6)
!1964 = !DILocation(line: 370, column: 11, scope: !1963, inlinedAt: !1825)
!1965 = !DILocation(line: 370, column: 6, scope: !1821, inlinedAt: !1825)
!1966 = !DILocation(line: 370, column: 26, scope: !1963, inlinedAt: !1825)
!1967 = !DILocation(line: 371, column: 6, scope: !1968, inlinedAt: !1825)
!1968 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 371, column: 6)
!1969 = !DILocation(line: 371, column: 11, scope: !1968, inlinedAt: !1825)
!1970 = !DILocation(line: 371, column: 6, scope: !1821, inlinedAt: !1825)
!1971 = !DILocation(line: 371, column: 26, scope: !1968, inlinedAt: !1825)
!1972 = !DILocation(line: 372, column: 6, scope: !1973, inlinedAt: !1825)
!1973 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 372, column: 6)
!1974 = !DILocation(line: 372, column: 11, scope: !1973, inlinedAt: !1825)
!1975 = !DILocation(line: 372, column: 6, scope: !1821, inlinedAt: !1825)
!1976 = !DILocation(line: 372, column: 26, scope: !1973, inlinedAt: !1825)
!1977 = !DILocation(line: 373, column: 6, scope: !1978, inlinedAt: !1825)
!1978 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 373, column: 6)
!1979 = !DILocation(line: 373, column: 11, scope: !1978, inlinedAt: !1825)
!1980 = !DILocation(line: 373, column: 6, scope: !1821, inlinedAt: !1825)
!1981 = !DILocation(line: 373, column: 26, scope: !1978, inlinedAt: !1825)
!1982 = !DILocation(line: 374, column: 6, scope: !1983, inlinedAt: !1825)
!1983 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 374, column: 6)
!1984 = !DILocation(line: 374, column: 11, scope: !1983, inlinedAt: !1825)
!1985 = !DILocation(line: 374, column: 6, scope: !1821, inlinedAt: !1825)
!1986 = !DILocation(line: 374, column: 26, scope: !1983, inlinedAt: !1825)
!1987 = !DILocation(line: 375, column: 6, scope: !1988, inlinedAt: !1825)
!1988 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 375, column: 6)
!1989 = !DILocation(line: 375, column: 11, scope: !1988, inlinedAt: !1825)
!1990 = !DILocation(line: 375, column: 6, scope: !1821, inlinedAt: !1825)
!1991 = !DILocation(line: 375, column: 27, scope: !1988, inlinedAt: !1825)
!1992 = !DILocation(line: 376, column: 6, scope: !1993, inlinedAt: !1825)
!1993 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 376, column: 6)
!1994 = !DILocation(line: 376, column: 11, scope: !1993, inlinedAt: !1825)
!1995 = !DILocation(line: 376, column: 6, scope: !1821, inlinedAt: !1825)
!1996 = !DILocation(line: 376, column: 32, scope: !1993, inlinedAt: !1825)
!1997 = !DILocation(line: 377, column: 6, scope: !1998, inlinedAt: !1825)
!1998 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 377, column: 6)
!1999 = !DILocation(line: 377, column: 11, scope: !1998, inlinedAt: !1825)
!2000 = !DILocation(line: 377, column: 6, scope: !1821, inlinedAt: !1825)
!2001 = !DILocation(line: 377, column: 32, scope: !1998, inlinedAt: !1825)
!2002 = !DILocation(line: 378, column: 6, scope: !2003, inlinedAt: !1825)
!2003 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 378, column: 6)
!2004 = !DILocation(line: 378, column: 11, scope: !2003, inlinedAt: !1825)
!2005 = !DILocation(line: 378, column: 6, scope: !1821, inlinedAt: !1825)
!2006 = !DILocation(line: 378, column: 32, scope: !2003, inlinedAt: !1825)
!2007 = !DILocation(line: 379, column: 6, scope: !2008, inlinedAt: !1825)
!2008 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 379, column: 6)
!2009 = !DILocation(line: 379, column: 11, scope: !2008, inlinedAt: !1825)
!2010 = !DILocation(line: 379, column: 6, scope: !1821, inlinedAt: !1825)
!2011 = !DILocation(line: 379, column: 33, scope: !2008, inlinedAt: !1825)
!2012 = !DILocation(line: 380, column: 6, scope: !2013, inlinedAt: !1825)
!2013 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 380, column: 6)
!2014 = !DILocation(line: 380, column: 11, scope: !2013, inlinedAt: !1825)
!2015 = !DILocation(line: 380, column: 6, scope: !1821, inlinedAt: !1825)
!2016 = !DILocation(line: 380, column: 33, scope: !2013, inlinedAt: !1825)
!2017 = !DILocation(line: 381, column: 6, scope: !2018, inlinedAt: !1825)
!2018 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 381, column: 6)
!2019 = !DILocation(line: 381, column: 11, scope: !2018, inlinedAt: !1825)
!2020 = !DILocation(line: 381, column: 6, scope: !1821, inlinedAt: !1825)
!2021 = !DILocation(line: 381, column: 33, scope: !2018, inlinedAt: !1825)
!2022 = !DILocation(line: 382, column: 2, scope: !2023, inlinedAt: !1825)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !6, line: 382, column: 2)
!2024 = distinct !DILexicalBlock(scope: !1821, file: !6, line: 382, column: 2)
!2025 = !{i32 -2144098077, i32 -2144098048, i32 -2144098002, i32 -2144097944, i32 -2144097890, i32 -2144097836, i32 -2144097781, i32 -2144097750}
!2026 = !DILocation(line: 382, column: 2, scope: !2027, inlinedAt: !1825)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !6, line: 382, column: 2)
!2028 = distinct !DILexicalBlock(scope: !2024, file: !6, line: 382, column: 2)
!2029 = !{i32 -2144097307, i32 -2144097300, i32 -2144097246, i32 -2144097215, i32 -2144097185}
!2030 = !DILocation(line: 382, column: 2, scope: !2028, inlinedAt: !1825)
!2031 = !DILocation(line: 386, column: 1, scope: !1821, inlinedAt: !1825)
!2032 = !DILocation(line: 547, column: 9, scope: !1804, inlinedAt: !1807)
!2033 = !DILocation(line: 549, column: 8, scope: !2034, inlinedAt: !1807)
!2034 = distinct !DILexicalBlock(scope: !1804, file: !6, line: 549, column: 7)
!2035 = !DILocation(line: 549, column: 7, scope: !1804, inlinedAt: !1807)
!2036 = !DILocation(line: 550, column: 4, scope: !2034, inlinedAt: !1807)
!2037 = !DILocation(line: 553, column: 33, scope: !1804, inlinedAt: !1807)
!2038 = !DILocation(line: 325, column: 6, scope: !2039, inlinedAt: !1819)
!2039 = distinct !DILexicalBlock(scope: !1815, file: !6, line: 325, column: 6)
!2040 = !DILocation(line: 325, column: 6, scope: !1815, inlinedAt: !1819)
!2041 = !DILocation(line: 326, column: 3, scope: !2039, inlinedAt: !1819)
!2042 = !DILocation(line: 332, column: 9, scope: !1815, inlinedAt: !1819)
!2043 = !DILocation(line: 332, column: 15, scope: !1815, inlinedAt: !1819)
!2044 = !DILocation(line: 332, column: 2, scope: !1815, inlinedAt: !1819)
!2045 = !DILocation(line: 336, column: 1, scope: !1815, inlinedAt: !1819)
!2046 = !DILocation(line: 553, column: 5, scope: !1804, inlinedAt: !1807)
!2047 = !DILocation(line: 553, column: 41, scope: !1804, inlinedAt: !1807)
!2048 = !DILocation(line: 554, column: 5, scope: !1804, inlinedAt: !1807)
!2049 = !DILocation(line: 554, column: 12, scope: !1804, inlinedAt: !1807)
!2050 = !DILocation(line: 448, column: 31, scope: !1796, inlinedAt: !1803)
!2051 = !DILocation(line: 448, column: 34, scope: !1796, inlinedAt: !1803)
!2052 = !DILocation(line: 448, column: 14, scope: !1796, inlinedAt: !1803)
!2053 = !DILocation(line: 450, column: 22, scope: !1796, inlinedAt: !1803)
!2054 = !DILocation(line: 450, column: 25, scope: !1796, inlinedAt: !1803)
!2055 = !DILocation(line: 450, column: 30, scope: !1796, inlinedAt: !1803)
!2056 = !DILocation(line: 450, column: 36, scope: !1796, inlinedAt: !1803)
!2057 = !DILocation(line: 450, column: 8, scope: !1796, inlinedAt: !1803)
!2058 = !DILocation(line: 450, column: 6, scope: !1796, inlinedAt: !1803)
!2059 = !DILocation(line: 451, column: 9, scope: !1796, inlinedAt: !1803)
!2060 = !DILocation(line: 552, column: 3, scope: !1804, inlinedAt: !1807)
!2061 = !DILocation(line: 557, column: 19, scope: !1806, inlinedAt: !1807)
!2062 = !DILocation(line: 557, column: 25, scope: !1806, inlinedAt: !1807)
!2063 = !DILocation(line: 557, column: 9, scope: !1806, inlinedAt: !1807)
!2064 = !DILocation(line: 557, column: 2, scope: !1806, inlinedAt: !1807)
!2065 = !DILocation(line: 558, column: 1, scope: !1806, inlinedAt: !1807)
!2066 = !DILocation(line: 664, column: 2, scope: !1788)
!2067 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2068, file: !2068, line: 646, type: !2069, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !809)
!2068 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!796}
!2071 = !DILocalVariable(name: "__ret", scope: !2072, file: !2068, line: 648, type: !796)
!2072 = distinct !DILexicalBlock(scope: !2067, file: !2068, line: 648, column: 9)
!2073 = !DILocation(line: 648, column: 9, scope: !2072)
!2074 = !DILocalVariable(name: "__edi", scope: !2072, file: !2068, line: 648, type: !796)
!2075 = !DILocalVariable(name: "__esi", scope: !2072, file: !2068, line: 648, type: !796)
!2076 = !DILocalVariable(name: "__edx", scope: !2072, file: !2068, line: 648, type: !796)
!2077 = !DILocalVariable(name: "__ecx", scope: !2072, file: !2068, line: 648, type: !796)
!2078 = !DILocalVariable(name: "__eax", scope: !2072, file: !2068, line: 648, type: !796)
!2079 = !DILocation(line: 648, column: 9, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !2068, line: 648, column: 9)
!2081 = distinct !DILexicalBlock(scope: !2072, file: !2068, line: 648, column: 9)
!2082 = !{i32 -2145771683, i32 -2145769368, i32 -2145769134, i32 -2145769083, i32 -2145769055, i32 -2145769030, i32 -2145769346, i32 -2145769333, i32 -2145768895, i32 -2145768776, i32 -2145769241, i32 -2145769214, i32 -2145769186, i32 -2145769156}
!2083 = !DILocalVariable(name: "__mask", scope: !2084, file: !2068, line: 648, type: !796)
!2084 = distinct !DILexicalBlock(scope: !2080, file: !2068, line: 648, column: 9)
!2085 = !DILocation(line: 648, column: 9, scope: !2084)
!2086 = !DILocation(line: 648, column: 9, scope: !2081)
!2087 = !DILocation(line: 648, column: 2, scope: !2067)
!2088 = distinct !DISubprogram(name: "get_order", scope: !2089, file: !2089, line: 29, type: !1751, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !809)
!2089 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2090 = !DILocalVariable(name: "x", arg: 1, scope: !2091, file: !2092, line: 366, type: !26)
!2091 = distinct !DISubprogram(name: "fls64", scope: !2092, file: !2092, line: 366, type: !2093, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !809)
!2092 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!1753, !26}
!2095 = !DILocation(line: 366, column: 40, scope: !2091, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 46, column: 9, scope: !2088)
!2097 = !DILocalVariable(name: "bitpos", scope: !2091, file: !2092, line: 368, type: !1753)
!2098 = !DILocation(line: 368, column: 6, scope: !2091, inlinedAt: !2096)
!2099 = !DILocalVariable(name: "size", arg: 1, scope: !2088, file: !2089, line: 29, type: !796)
!2100 = !DILocation(line: 29, column: 63, scope: !2088)
!2101 = !DILocation(line: 31, column: 27, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2088, file: !2089, line: 31, column: 6)
!2103 = !DILocation(line: 31, column: 6, scope: !2102)
!2104 = !DILocation(line: 31, column: 6, scope: !2088)
!2105 = !DILocation(line: 32, column: 8, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !2089, line: 32, column: 7)
!2107 = distinct !DILexicalBlock(scope: !2102, file: !2089, line: 31, column: 34)
!2108 = !DILocation(line: 32, column: 7, scope: !2107)
!2109 = !DILocation(line: 33, column: 4, scope: !2106)
!2110 = !DILocation(line: 35, column: 7, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2107, file: !2089, line: 35, column: 7)
!2112 = !DILocation(line: 35, column: 12, scope: !2111)
!2113 = !DILocation(line: 35, column: 7, scope: !2107)
!2114 = !DILocation(line: 36, column: 4, scope: !2111)
!2115 = !DILocation(line: 38, column: 10, scope: !2107)
!2116 = !DILocation(line: 38, column: 28, scope: !2107)
!2117 = !DILocation(line: 38, column: 41, scope: !2107)
!2118 = !DILocation(line: 38, column: 3, scope: !2107)
!2119 = !DILocation(line: 41, column: 6, scope: !2088)
!2120 = !DILocation(line: 42, column: 7, scope: !2088)
!2121 = !DILocation(line: 46, column: 15, scope: !2088)
!2122 = !DILocation(line: 374, column: 2, scope: !2091, inlinedAt: !2096)
!2123 = !DILocation(line: 376, column: 14, scope: !2091, inlinedAt: !2096)
!2124 = !{i32 673125}
!2125 = !DILocation(line: 377, column: 9, scope: !2091, inlinedAt: !2096)
!2126 = !DILocation(line: 377, column: 16, scope: !2091, inlinedAt: !2096)
!2127 = !DILocation(line: 46, column: 2, scope: !2088)
!2128 = !DILocation(line: 48, column: 1, scope: !2088)
!2129 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2130, file: !2130, line: 30, type: !2131, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !809)
!2130 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!1753, !25}
!2133 = !DILocation(line: 366, column: 40, scope: !2091, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 32, column: 9, scope: !2129)
!2135 = !DILocation(line: 368, column: 6, scope: !2091, inlinedAt: !2134)
!2136 = !DILocalVariable(name: "n", arg: 1, scope: !2129, file: !2130, line: 30, type: !25)
!2137 = !DILocation(line: 30, column: 21, scope: !2129)
!2138 = !DILocation(line: 32, column: 15, scope: !2129)
!2139 = !DILocation(line: 374, column: 2, scope: !2091, inlinedAt: !2134)
!2140 = !DILocation(line: 376, column: 14, scope: !2091, inlinedAt: !2134)
!2141 = !DILocation(line: 377, column: 9, scope: !2091, inlinedAt: !2134)
!2142 = !DILocation(line: 377, column: 16, scope: !2091, inlinedAt: !2134)
!2143 = !DILocation(line: 32, column: 18, scope: !2129)
!2144 = !DILocation(line: 32, column: 2, scope: !2129)
!2145 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2146, file: !2146, line: 137, type: !2147, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !809)
!2146 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!20, !1799, !2149, !1791, !794}
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2151 = !DILocalVariable(name: "s", arg: 1, scope: !2145, file: !2146, line: 137, type: !1799)
!2152 = !DILocation(line: 137, column: 54, scope: !2145)
!2153 = !DILocalVariable(name: "object", arg: 2, scope: !2145, file: !2146, line: 137, type: !2149)
!2154 = !DILocation(line: 137, column: 69, scope: !2145)
!2155 = !DILocalVariable(name: "size", arg: 3, scope: !2145, file: !2146, line: 138, type: !1791)
!2156 = !DILocation(line: 138, column: 12, scope: !2145)
!2157 = !DILocalVariable(name: "flags", arg: 4, scope: !2145, file: !2146, line: 138, type: !794)
!2158 = !DILocation(line: 138, column: 24, scope: !2145)
!2159 = !DILocation(line: 140, column: 17, scope: !2145)
!2160 = !DILocation(line: 140, column: 2, scope: !2145)
