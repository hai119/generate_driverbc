; ModuleID = '../bcout/drivers/acpi/acpica/psutils.llvm.bc'
source_filename = "drivers/acpi/acpica/psutils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, {}* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_name_union = type { i32 }
%union.acpi_parse_value = type { i64 }
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
%struct.acpi_parse_obj_named = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, i8*, i8*, i32, i32 }
%struct.acpi_parse_obj_common = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8 }

@acpi_gbl_ps_node_cache = external dso_local global %struct.kmem_cache*, align 8
@acpi_gbl_ps_node_ext_cache = external dso_local global %struct.kmem_cache*, align 8
@acpi_gbl_current_scope = external dso_local global %union.acpi_parse_object*, align 8
@acpi_gbl_capture_comments = external dso_local global i8, align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %union.acpi_parse_object* @acpi_ps_create_scope_op(i8* %aml) #0 !dbg !24 {
entry:
  %retval = alloca %union.acpi_parse_object*, align 8
  %aml.addr = alloca i8*, align 8
  %scope_op = alloca %union.acpi_parse_object*, align 8
  store i8* %aml, i8** %aml.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %aml.addr, metadata !791, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %scope_op, metadata !793, metadata !DIExpression()), !dbg !794
  %0 = load i8*, i8** %aml.addr, align 8, !dbg !795
  %call = call %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext 16, i8* %0) #6, !dbg !796
  store %union.acpi_parse_object* %call, %union.acpi_parse_object** %scope_op, align 8, !dbg !797
  %1 = load %union.acpi_parse_object*, %union.acpi_parse_object** %scope_op, align 8, !dbg !798
  %tobool = icmp ne %union.acpi_parse_object* %1, null, !dbg !798
  br i1 %tobool, label %if.end, label %if.then, !dbg !800

if.then:                                          ; preds = %entry
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %retval, align 8, !dbg !801
  br label %return, !dbg !801

if.end:                                           ; preds = %entry
  %2 = load %union.acpi_parse_object*, %union.acpi_parse_object** %scope_op, align 8, !dbg !803
  %named = bitcast %union.acpi_parse_object* %2 to %struct.acpi_parse_obj_named*, !dbg !804
  %name = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named, i32 0, i32 12, !dbg !805
  store i32 1600085852, i32* %name, align 4, !dbg !806
  %3 = load %union.acpi_parse_object*, %union.acpi_parse_object** %scope_op, align 8, !dbg !807
  store %union.acpi_parse_object* %3, %union.acpi_parse_object** %retval, align 8, !dbg !808
  br label %return, !dbg !808

return:                                           ; preds = %if.end, %if.then
  %4 = load %union.acpi_parse_object*, %union.acpi_parse_object** %retval, align 8, !dbg !809
  ret %union.acpi_parse_object* %4, !dbg !809
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext %opcode, i8* %aml) #0 !dbg !810 {
entry:
  %opcode.addr = alloca i16, align 2
  %aml.addr = alloca i8*, align 8
  %op = alloca %union.acpi_parse_object*, align 8
  %op_info = alloca %struct.acpi_opcode_info*, align 8
  %flags = alloca i8, align 1
  store i16 %opcode, i16* %opcode.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %opcode.addr, metadata !813, metadata !DIExpression()), !dbg !814
  store i8* %aml, i8** %aml.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %aml.addr, metadata !815, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op, metadata !817, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.declare(metadata %struct.acpi_opcode_info** %op_info, metadata !819, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.declare(metadata i8* %flags, metadata !821, metadata !DIExpression()), !dbg !822
  store i8 1, i8* %flags, align 1, !dbg !822
  %0 = load i16, i16* %opcode.addr, align 2, !dbg !823
  %call = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext %0) #6, !dbg !824
  store %struct.acpi_opcode_info* %call, %struct.acpi_opcode_info** %op_info, align 8, !dbg !825
  %1 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !826
  %flags1 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %1, i32 0, i32 2, !dbg !828
  %2 = load i16, i16* %flags1, align 4, !dbg !828
  %conv = zext i16 %2 to i32, !dbg !826
  %and = and i32 %conv, 32, !dbg !829
  %tobool = icmp ne i32 %and, 0, !dbg !829
  br i1 %tobool, label %if.then, label %if.else, !dbg !830

if.then:                                          ; preds = %entry
  store i8 4, i8* %flags, align 1, !dbg !831
  br label %if.end12, !dbg !833

if.else:                                          ; preds = %entry
  %3 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !834
  %flags2 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %3, i32 0, i32 2, !dbg !836
  %4 = load i16, i16* %flags2, align 4, !dbg !836
  %conv3 = zext i16 %4 to i32, !dbg !834
  %and4 = and i32 %conv3, 64, !dbg !837
  %tobool5 = icmp ne i32 %and4, 0, !dbg !837
  br i1 %tobool5, label %if.then6, label %if.else7, !dbg !838

if.then6:                                         ; preds = %if.else
  store i8 2, i8* %flags, align 1, !dbg !839
  br label %if.end11, !dbg !841

if.else7:                                         ; preds = %if.else
  %5 = load i16, i16* %opcode.addr, align 2, !dbg !842
  %conv8 = zext i16 %5 to i32, !dbg !842
  %cmp = icmp eq i32 %conv8, 51, !dbg !844
  br i1 %cmp, label %if.then10, label %if.end, !dbg !845

if.then10:                                        ; preds = %if.else7
  store i8 8, i8* %flags, align 1, !dbg !846
  br label %if.end, !dbg !848

if.end:                                           ; preds = %if.then10, %if.else7
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then6
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then
  %6 = load i8, i8* %flags, align 1, !dbg !849
  %conv13 = zext i8 %6 to i32, !dbg !849
  %cmp14 = icmp eq i32 %conv13, 1, !dbg !851
  br i1 %cmp14, label %if.then16, label %if.else18, !dbg !852

if.then16:                                        ; preds = %if.end12
  %7 = load %struct.kmem_cache*, %struct.kmem_cache** @acpi_gbl_ps_node_cache, align 8, !dbg !853
  %call17 = call i8* @acpi_os_acquire_object(%struct.kmem_cache* %7) #6, !dbg !855
  %8 = bitcast i8* %call17 to %union.acpi_parse_object*, !dbg !855
  store %union.acpi_parse_object* %8, %union.acpi_parse_object** %op, align 8, !dbg !856
  br label %if.end20, !dbg !857

if.else18:                                        ; preds = %if.end12
  %9 = load %struct.kmem_cache*, %struct.kmem_cache** @acpi_gbl_ps_node_ext_cache, align 8, !dbg !858
  %call19 = call i8* @acpi_os_acquire_object(%struct.kmem_cache* %9) #6, !dbg !860
  %10 = bitcast i8* %call19 to %union.acpi_parse_object*, !dbg !860
  store %union.acpi_parse_object* %10, %union.acpi_parse_object** %op, align 8, !dbg !861
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then16
  %11 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !862
  %tobool21 = icmp ne %union.acpi_parse_object* %11, null, !dbg !862
  br i1 %tobool21, label %if.then22, label %if.end34, !dbg !864

if.then22:                                        ; preds = %if.end20
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !865
  %13 = load i16, i16* %opcode.addr, align 2, !dbg !867
  call void @acpi_ps_init_op(%union.acpi_parse_object* %12, i16 zeroext %13) #6, !dbg !868
  %14 = load i8*, i8** %aml.addr, align 8, !dbg !869
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !870
  %common = bitcast %union.acpi_parse_object* %15 to %struct.acpi_parse_obj_common*, !dbg !871
  %aml23 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 4, !dbg !872
  store i8* %14, i8** %aml23, align 8, !dbg !873
  %16 = load i8, i8* %flags, align 1, !dbg !874
  %17 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !875
  %common24 = bitcast %union.acpi_parse_object* %17 to %struct.acpi_parse_obj_common*, !dbg !876
  %flags25 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common24, i32 0, i32 2, !dbg !877
  store i8 %16, i8* %flags25, align 1, !dbg !878
  %18 = load i16, i16* %opcode.addr, align 2, !dbg !879
  %conv26 = zext i16 %18 to i32, !dbg !879
  %cmp27 = icmp eq i32 %conv26, 16, !dbg !881
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !882

if.then29:                                        ; preds = %if.then22
  %19 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !883
  store %union.acpi_parse_object* %19, %union.acpi_parse_object** @acpi_gbl_current_scope, align 8, !dbg !885
  br label %if.end30, !dbg !886

if.end30:                                         ; preds = %if.then29, %if.then22
  %20 = load i8, i8* @acpi_gbl_capture_comments, align 1, !dbg !887
  %tobool31 = icmp ne i8 %20, 0, !dbg !887
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !889

if.then32:                                        ; preds = %if.end30
  br label %if.end33, !dbg !890

if.end33:                                         ; preds = %if.then32, %if.end30
  br label %if.end34, !dbg !892

if.end34:                                         ; preds = %if.end33, %if.end20
  %21 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !893
  ret %union.acpi_parse_object* %21, !dbg !894
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ps_init_op(%union.acpi_parse_object* %op, i16 zeroext %opcode) #0 !dbg !895 {
entry:
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %opcode.addr = alloca i16, align 2
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !898, metadata !DIExpression()), !dbg !899
  store i16 %opcode, i16* %opcode.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %opcode.addr, metadata !900, metadata !DIExpression()), !dbg !901
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !902
  %common = bitcast %union.acpi_parse_object* %0 to %struct.acpi_parse_obj_common*, !dbg !903
  %descriptor_type = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 1, !dbg !904
  store i8 13, i8* %descriptor_type, align 8, !dbg !905
  %1 = load i16, i16* %opcode.addr, align 2, !dbg !906
  %2 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !907
  %common1 = bitcast %union.acpi_parse_object* %2 to %struct.acpi_parse_obj_common*, !dbg !908
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common1, i32 0, i32 3, !dbg !909
  store i16 %1, i16* %aml_opcode, align 2, !dbg !910
  ret void, !dbg !911
}

; Function Attrs: noredzone
declare dso_local %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_acquire_object(%struct.kmem_cache* %cache) #0 !dbg !912 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !919, metadata !DIExpression()), !dbg !925
  %cache.addr = alloca %struct.kmem_cache*, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store %struct.kmem_cache* %cache, %struct.kmem_cache** %cache.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %cache.addr, metadata !929, metadata !DIExpression()), !dbg !930
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** %cache.addr, align 8, !dbg !931
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !932, metadata !DIExpression()), !dbg !933
  br label %do.body, !dbg !933

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !934, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !938, metadata !DIExpression()), !dbg !937
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !937
  %conv = zext i1 %cmp to i32, !dbg !937
  store i32 1, i32* %tmp, align 4, !dbg !937
  %1 = load i32, i32* %tmp, align 4, !dbg !937
  %call = call i64 @arch_local_save_flags() #6, !dbg !939
  store i64 %call, i64* %_flags, align 8, !dbg !939
  br label %do.end, !dbg !939

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !940, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !943, metadata !DIExpression()), !dbg !942
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !942
  %conv6 = zext i1 %cmp5 to i32, !dbg !942
  store i32 1, i32* %tmp7, align 4, !dbg !942
  %2 = load i32, i32* %tmp7, align 4, !dbg !942
  %3 = load i64, i64* %_flags, align 8, !dbg !944
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !945
  %and.i = and i64 %4, 512, !dbg !946
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !947
  %lnot.i = xor i1 %tobool.i, true, !dbg !947
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !947
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !944
  %5 = load i32, i32* %tmp8, align 4, !dbg !944
  store i32 %5, i32* %tmp1, align 4, !dbg !939
  %6 = load i32, i32* %tmp1, align 4, !dbg !933
  %tobool = icmp ne i32 %6, 0, !dbg !948
  %7 = zext i1 %tobool to i64, !dbg !948
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !948
  %call10 = call i8* @kmem_cache_zalloc(%struct.kmem_cache* %0, i32 %cond) #6, !dbg !949
  ret i8* %call10, !dbg !950
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ps_free_op(%union.acpi_parse_object* %op) #0 !dbg !951 {
entry:
  %op.addr = alloca %union.acpi_parse_object*, align 8
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !954, metadata !DIExpression()), !dbg !955
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !956
  %common = bitcast %union.acpi_parse_object* %0 to %struct.acpi_parse_obj_common*, !dbg !958
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 3, !dbg !959
  %1 = load i16, i16* %aml_opcode, align 2, !dbg !959
  %conv = zext i16 %1 to i32, !dbg !956
  %cmp = icmp eq i32 %conv, 54, !dbg !960
  br i1 %cmp, label %if.then, label %if.end, !dbg !961

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !962

if.end:                                           ; preds = %if.then, %entry
  %2 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !964
  %common2 = bitcast %union.acpi_parse_object* %2 to %struct.acpi_parse_obj_common*, !dbg !966
  %flags = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common2, i32 0, i32 2, !dbg !967
  %3 = load i8, i8* %flags, align 1, !dbg !967
  %conv3 = zext i8 %3 to i32, !dbg !964
  %and = and i32 %conv3, 1, !dbg !968
  %tobool = icmp ne i32 %and, 0, !dbg !968
  br i1 %tobool, label %if.then4, label %if.else, !dbg !969

if.then4:                                         ; preds = %if.end
  %4 = load %struct.kmem_cache*, %struct.kmem_cache** @acpi_gbl_ps_node_cache, align 8, !dbg !970
  %5 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !972
  %6 = bitcast %union.acpi_parse_object* %5 to i8*, !dbg !972
  %call = call i32 @acpi_os_release_object(%struct.kmem_cache* %4, i8* %6) #6, !dbg !973
  br label %if.end6, !dbg !974

if.else:                                          ; preds = %if.end
  %7 = load %struct.kmem_cache*, %struct.kmem_cache** @acpi_gbl_ps_node_ext_cache, align 8, !dbg !975
  %8 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !977
  %9 = bitcast %union.acpi_parse_object* %8 to i8*, !dbg !977
  %call5 = call i32 @acpi_os_release_object(%struct.kmem_cache* %7, i8* %9) #6, !dbg !978
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  ret void, !dbg !979
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_release_object(%struct.kmem_cache*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @acpi_ps_is_leading_char(i32 %c) #0 !dbg !980 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !983, metadata !DIExpression()), !dbg !984
  %0 = load i32, i32* %c.addr, align 4, !dbg !985
  %cmp = icmp eq i32 %0, 95, !dbg !986
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !987

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !988
  %cmp1 = icmp uge i32 %1, 65, !dbg !989
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !990

land.rhs:                                         ; preds = %lor.rhs
  %2 = load i32, i32* %c.addr, align 4, !dbg !991
  %cmp2 = icmp ule i32 %2, 90, !dbg !992
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %3 = phi i1 [ false, %lor.rhs ], [ %cmp2, %land.rhs ], !dbg !993
  br label %lor.end, !dbg !987

lor.end:                                          ; preds = %land.end, %entry
  %4 = phi i1 [ true, %entry ], [ %3, %land.end ]
  %lor.ext = zext i1 %4 to i32, !dbg !987
  %conv = trunc i32 %lor.ext to i8, !dbg !994
  ret i8 %conv, !dbg !995
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ps_get_name(%union.acpi_parse_object* %op) #0 !dbg !996 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %union.acpi_parse_object*, align 8
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !999, metadata !DIExpression()), !dbg !1000
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1001
  %common = bitcast %union.acpi_parse_object* %0 to %struct.acpi_parse_obj_common*, !dbg !1003
  %flags = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 2, !dbg !1004
  %1 = load i8, i8* %flags, align 1, !dbg !1004
  %conv = zext i8 %1 to i32, !dbg !1001
  %and = and i32 %conv, 1, !dbg !1005
  %tobool = icmp ne i32 %and, 0, !dbg !1005
  br i1 %tobool, label %if.then, label %if.end, !dbg !1006

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1007
  br label %return, !dbg !1007

if.end:                                           ; preds = %entry
  %2 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1009
  %named = bitcast %union.acpi_parse_object* %2 to %struct.acpi_parse_obj_named*, !dbg !1010
  %name = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named, i32 0, i32 12, !dbg !1011
  %3 = load i32, i32* %name, align 4, !dbg !1011
  store i32 %3, i32* %retval, align 4, !dbg !1012
  br label %return, !dbg !1012

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !1013
  ret i32 %4, !dbg !1013
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ps_set_name(%union.acpi_parse_object* %op, i32 %name) #0 !dbg !1014 {
entry:
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %name.addr = alloca i32, align 4
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !1017, metadata !DIExpression()), !dbg !1018
  store i32 %name, i32* %name.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %name.addr, metadata !1019, metadata !DIExpression()), !dbg !1020
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1021
  %common = bitcast %union.acpi_parse_object* %0 to %struct.acpi_parse_obj_common*, !dbg !1023
  %flags = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 2, !dbg !1024
  %1 = load i8, i8* %flags, align 1, !dbg !1024
  %conv = zext i8 %1 to i32, !dbg !1021
  %and = and i32 %conv, 1, !dbg !1025
  %tobool = icmp ne i32 %and, 0, !dbg !1025
  br i1 %tobool, label %if.then, label %if.end, !dbg !1026

if.then:                                          ; preds = %entry
  br label %return, !dbg !1027

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %name.addr, align 4, !dbg !1029
  %3 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1030
  %named = bitcast %union.acpi_parse_object* %3 to %struct.acpi_parse_obj_named*, !dbg !1031
  %name1 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named, i32 0, i32 12, !dbg !1032
  store i32 %2, i32* %name1, align 4, !dbg !1033
  br label %return, !dbg !1034

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1034
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmem_cache_zalloc(%struct.kmem_cache* %k, i32 %flags) #0 !dbg !1035 {
entry:
  %k.addr = alloca %struct.kmem_cache*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %k, %struct.kmem_cache** %k.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %k.addr, metadata !1039, metadata !DIExpression()), !dbg !1040
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1041, metadata !DIExpression()), !dbg !1042
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** %k.addr, align 8, !dbg !1043
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1044
  %or = or i32 %1, 256, !dbg !1045
  %call = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %0, i32 %or) #6, !dbg !1046
  %ptrint = ptrtoint i8* %call to i64, !dbg !1046
  %maskedptr = and i64 %ptrint, 7, !dbg !1046
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !1046
  call void @llvm.assume(i1 %maskcond), !dbg !1046
  ret i8* %call, !dbg !1047
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1048 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1052, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1055, metadata !DIExpression()), !dbg !1054
  %0 = load i64, i64* %__edi, align 8, !dbg !1054
  store i64 %0, i64* %__edi, align 8, !dbg !1054
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1056, metadata !DIExpression()), !dbg !1054
  %1 = load i64, i64* %__esi, align 8, !dbg !1054
  store i64 %1, i64* %__esi, align 8, !dbg !1054
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1057, metadata !DIExpression()), !dbg !1054
  %2 = load i64, i64* %__edx, align 8, !dbg !1054
  store i64 %2, i64* %__edx, align 8, !dbg !1054
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1058, metadata !DIExpression()), !dbg !1054
  %3 = load i64, i64* %__ecx, align 8, !dbg !1054
  store i64 %3, i64* %__ecx, align 8, !dbg !1054
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1059, metadata !DIExpression()), !dbg !1054
  %4 = load i64, i64* %__eax, align 8, !dbg !1054
  store i64 %4, i64* %__eax, align 8, !dbg !1054
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1054
  %6 = call i64 @llvm.read_register.i64(metadata !18), !dbg !1060
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #5, !dbg !1060, !srcloc !1063
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1060
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1060
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1060
  call void @llvm.write_register.i64(metadata !18, i64 %asmresult1), !dbg !1060
  %8 = load i64, i64* %__eax, align 8, !dbg !1060
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1064, metadata !DIExpression()), !dbg !1066
  store i64 -1, i64* %__mask, align 8, !dbg !1066
  %9 = load i64, i64* %__mask, align 8, !dbg !1066
  store i64 %9, i64* %tmp, align 8, !dbg !1066
  %10 = load i64, i64* %tmp, align 8, !dbg !1066
  %and = and i64 %8, %10, !dbg !1060
  store i64 %and, i64* %__ret, align 8, !dbg !1060
  %11 = load i64, i64* %__ret, align 8, !dbg !1054
  store i64 %11, i64* %tmp2, align 8, !dbg !1067
  %12 = load i64, i64* %tmp2, align 8, !dbg !1054
  ret i64 %12, !dbg !1068
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #3

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!18}
!llvm.module.flags = !{!19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/psutils.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{}
!3 = !{!4, !9, !12, !15, !17}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !5, line: 19, baseType: !6)
!5 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !7, line: 24, baseType: !8)
!7 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !5, line: 21, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !7, line: 27, baseType: !11)
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !5, line: 17, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !7, line: 21, baseType: !14)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !16, line: 148, baseType: !11)
!16 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!17 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!18 = !{!"rsp"}
!19 = !{i32 7, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"Code Model", i32 2}
!23 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!24 = distinct !DISubprogram(name: "acpi_ps_create_scope_op", scope: !1, file: !1, line: 30, type: !25, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!25 = !DISubroutineType(types: !26)
!26 = !{!27, !39}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !29, line: 875, size: 1600, elements: !30)
!29 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!30 = !{!31, !734, !750}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !28, file: !29, line: 876, baseType: !32, size: 448)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !29, line: 828, size: 448, elements: !33)
!33 = !{!34, !35, !36, !37, !38, !40, !41, !724, !733}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !32, file: !29, line: 829, baseType: !27, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !32, file: !29, line: 829, baseType: !12, size: 8, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !32, file: !29, line: 829, baseType: !12, size: 8, offset: 72)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !32, file: !29, line: 829, baseType: !4, size: 16, offset: 80)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !32, file: !29, line: 829, baseType: !39, size: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !32, file: !29, line: 829, baseType: !27, size: 64, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !32, file: !29, line: 829, baseType: !42, size: 64, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !29, line: 133, size: 384, elements: !44)
!44 = !{!45, !708, !709, !710, !711, !720, !721, !722, !723}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !43, file: !29, line: 134, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !48, line: 367, size: 576, elements: !49)
!48 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!49 = !{!50, !58, !74, !86, !99, !113, !123, !359, !376, !391, !404, !482, !494, !508, !518, !536, !558, !577, !596, !615, !628, !654, !671, !684, !698, !707}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !47, file: !48, line: 368, baseType: !51, size: 128)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !48, line: 73, size: 128, elements: !52)
!52 = !{!53, !54, !55, !56, !57}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !51, file: !48, line: 74, baseType: !46, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !51, file: !48, line: 74, baseType: !12, size: 8, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !51, file: !48, line: 74, baseType: !12, size: 8, offset: 72)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !51, file: !48, line: 74, baseType: !4, size: 16, offset: 80)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !51, file: !48, line: 74, baseType: !12, size: 8, offset: 96)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !47, file: !48, line: 369, baseType: !59, size: 192)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !48, line: 76, size: 192, elements: !60)
!60 = !{!61, !62, !63, !64, !65, !66, !70}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !59, file: !48, line: 77, baseType: !46, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !59, file: !48, line: 77, baseType: !12, size: 8, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !59, file: !48, line: 77, baseType: !12, size: 8, offset: 72)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !59, file: !48, line: 77, baseType: !4, size: 16, offset: 80)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !59, file: !48, line: 77, baseType: !12, size: 8, offset: 96)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !59, file: !48, line: 77, baseType: !67, size: 24, offset: 104)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 24, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 3)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !59, file: !48, line: 78, baseType: !71, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !5, line: 23, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !7, line: 31, baseType: !73)
!73 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !47, file: !48, line: 370, baseType: !75, size: 256)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !48, line: 93, size: 256, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !85}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !75, file: !48, line: 94, baseType: !46, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !75, file: !48, line: 94, baseType: !12, size: 8, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !48, line: 94, baseType: !12, size: 8, offset: 72)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !75, file: !48, line: 94, baseType: !4, size: 16, offset: 80)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !48, line: 94, baseType: !12, size: 8, offset: 96)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !75, file: !48, line: 94, baseType: !83, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !75, file: !48, line: 94, baseType: !9, size: 32, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !47, file: !48, line: 371, baseType: !87, size: 384)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !48, line: 97, size: 384, elements: !88)
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !87, file: !48, line: 98, baseType: !46, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !87, file: !48, line: 98, baseType: !12, size: 8, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !87, file: !48, line: 98, baseType: !12, size: 8, offset: 72)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !87, file: !48, line: 98, baseType: !4, size: 16, offset: 80)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !87, file: !48, line: 98, baseType: !12, size: 8, offset: 96)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !87, file: !48, line: 98, baseType: !39, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !87, file: !48, line: 98, baseType: !9, size: 32, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !87, file: !48, line: 99, baseType: !9, size: 32, offset: 224)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !87, file: !48, line: 100, baseType: !39, size: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !87, file: !48, line: 101, baseType: !42, size: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !47, file: !48, line: 372, baseType: !100, size: 384)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !48, line: 104, size: 384, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107, !108, !110, !111, !112}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !100, file: !48, line: 105, baseType: !46, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !100, file: !48, line: 105, baseType: !12, size: 8, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !100, file: !48, line: 105, baseType: !12, size: 8, offset: 72)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !100, file: !48, line: 105, baseType: !4, size: 16, offset: 80)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !48, line: 105, baseType: !12, size: 8, offset: 96)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !100, file: !48, line: 105, baseType: !42, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !100, file: !48, line: 106, baseType: !109, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !100, file: !48, line: 107, baseType: !39, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !100, file: !48, line: 108, baseType: !9, size: 32, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !100, file: !48, line: 109, baseType: !9, size: 32, offset: 352)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !47, file: !48, line: 373, baseType: !114, size: 192)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !48, line: 118, size: 192, elements: !115)
!115 = !{!116, !117, !118, !119, !120, !121}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !114, file: !48, line: 119, baseType: !46, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !114, file: !48, line: 119, baseType: !12, size: 8, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !114, file: !48, line: 119, baseType: !12, size: 8, offset: 72)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !114, file: !48, line: 119, baseType: !4, size: 16, offset: 80)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !114, file: !48, line: 119, baseType: !12, size: 8, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !114, file: !48, line: 119, baseType: !122, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !47, file: !48, line: 374, baseType: !124, size: 448)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !48, line: 143, size: 448, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !356, !357, !358}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !124, file: !48, line: 144, baseType: !46, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !124, file: !48, line: 144, baseType: !12, size: 8, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !124, file: !48, line: 144, baseType: !12, size: 8, offset: 72)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !124, file: !48, line: 144, baseType: !4, size: 16, offset: 80)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !124, file: !48, line: 144, baseType: !12, size: 8, offset: 96)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !124, file: !48, line: 144, baseType: !12, size: 8, offset: 104)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !124, file: !48, line: 145, baseType: !12, size: 8, offset: 112)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !124, file: !48, line: 146, baseType: !12, size: 8, offset: 120)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !124, file: !48, line: 147, baseType: !46, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !124, file: !48, line: 148, baseType: !46, size: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !124, file: !48, line: 149, baseType: !39, size: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !124, file: !48, line: 153, baseType: !138, size: 64, offset: 320)
!138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !124, file: !48, line: 150, size: 64, elements: !139)
!139 = !{!140, !355}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !138, file: !48, line: 151, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !29, line: 248, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!145, !147}
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !146, line: 421, baseType: !9)
!146 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !149, line: 37, size: 9024, elements: !150)
!149 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !301, !302, !303, !304, !305, !309, !311, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !338, !339, !340, !341, !342, !343, !344, !345, !347, !353}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !148, file: !149, line: 38, baseType: !147, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !148, file: !149, line: 39, baseType: !12, size: 8, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !148, file: !149, line: 40, baseType: !12, size: 8, offset: 72)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !148, file: !149, line: 41, baseType: !4, size: 16, offset: 80)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !148, file: !149, line: 42, baseType: !12, size: 8, offset: 96)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !148, file: !149, line: 43, baseType: !12, size: 8, offset: 104)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !148, file: !149, line: 44, baseType: !12, size: 8, offset: 112)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !148, file: !149, line: 45, baseType: !159, size: 16, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !146, line: 445, baseType: !4)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !148, file: !149, line: 46, baseType: !12, size: 8, offset: 144)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !148, file: !149, line: 47, baseType: !12, size: 8, offset: 152)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !148, file: !149, line: 48, baseType: !12, size: 8, offset: 160)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !148, file: !149, line: 49, baseType: !12, size: 8, offset: 168)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !148, file: !149, line: 50, baseType: !12, size: 8, offset: 176)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !148, file: !149, line: 51, baseType: !12, size: 8, offset: 184)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !148, file: !149, line: 52, baseType: !12, size: 8, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !148, file: !149, line: 53, baseType: !12, size: 8, offset: 200)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !148, file: !149, line: 54, baseType: !39, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !148, file: !149, line: 55, baseType: !9, size: 32, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !148, file: !149, line: 56, baseType: !9, size: 32, offset: 352)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !148, file: !149, line: 57, baseType: !9, size: 32, offset: 384)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !148, file: !149, line: 58, baseType: !9, size: 32, offset: 416)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !148, file: !149, line: 60, baseType: !174, size: 640, offset: 448)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !29, line: 893, size: 640, elements: !175)
!175 = !{!176, !177, !178, !179, !180, !181, !182, !183, !299, !300}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !174, file: !29, line: 894, baseType: !39, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !174, file: !29, line: 895, baseType: !39, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !174, file: !29, line: 896, baseType: !39, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !174, file: !29, line: 897, baseType: !39, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !174, file: !29, line: 898, baseType: !39, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !174, file: !29, line: 899, baseType: !27, size: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !174, file: !29, line: 900, baseType: !42, size: 64, offset: 384)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !174, file: !29, line: 901, baseType: !184, size: 64, offset: 448)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !29, line: 663, size: 640, elements: !186)
!186 = !{!187, !195, !208, !217, !226, !239, !253, !265, !277}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !185, file: !29, line: 664, baseType: !188, size: 128)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !29, line: 567, size: 128, elements: !189)
!189 = !{!190, !191, !192, !193, !194}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !29, line: 568, baseType: !122, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !188, file: !29, line: 568, baseType: !12, size: 8, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !188, file: !29, line: 568, baseType: !12, size: 8, offset: 72)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !188, file: !29, line: 568, baseType: !4, size: 16, offset: 80)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !188, file: !29, line: 568, baseType: !4, size: 16, offset: 96)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !185, file: !29, line: 665, baseType: !196, size: 384)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !29, line: 593, size: 384, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204, !205, !206, !207}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !196, file: !29, line: 594, baseType: !122, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !196, file: !29, line: 594, baseType: !12, size: 8, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !196, file: !29, line: 594, baseType: !12, size: 8, offset: 72)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !196, file: !29, line: 594, baseType: !4, size: 16, offset: 80)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !196, file: !29, line: 594, baseType: !4, size: 16, offset: 96)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !196, file: !29, line: 594, baseType: !4, size: 16, offset: 112)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !196, file: !29, line: 595, baseType: !27, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !196, file: !29, line: 596, baseType: !39, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !196, file: !29, line: 597, baseType: !39, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !196, file: !29, line: 598, baseType: !71, size: 64, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !185, file: !29, line: 666, baseType: !209, size: 192)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !29, line: 573, size: 192, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !209, file: !29, line: 574, baseType: !122, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !209, file: !29, line: 574, baseType: !12, size: 8, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !209, file: !29, line: 574, baseType: !12, size: 8, offset: 72)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !209, file: !29, line: 574, baseType: !4, size: 16, offset: 80)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !209, file: !29, line: 574, baseType: !4, size: 16, offset: 96)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !209, file: !29, line: 574, baseType: !46, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !185, file: !29, line: 667, baseType: !218, size: 192)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !29, line: 604, size: 192, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !218, file: !29, line: 605, baseType: !122, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !218, file: !29, line: 605, baseType: !12, size: 8, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !218, file: !29, line: 605, baseType: !12, size: 8, offset: 72)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !218, file: !29, line: 605, baseType: !4, size: 16, offset: 80)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !218, file: !29, line: 605, baseType: !4, size: 16, offset: 96)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !218, file: !29, line: 605, baseType: !42, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !185, file: !29, line: 668, baseType: !227, size: 448)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !29, line: 608, size: 448, elements: !228)
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !237, !238}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !227, file: !29, line: 609, baseType: !122, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !227, file: !29, line: 609, baseType: !12, size: 8, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !227, file: !29, line: 609, baseType: !12, size: 8, offset: 72)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !227, file: !29, line: 609, baseType: !4, size: 16, offset: 80)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !227, file: !29, line: 609, baseType: !4, size: 16, offset: 96)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !227, file: !29, line: 609, baseType: !9, size: 32, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !227, file: !29, line: 610, baseType: !27, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !227, file: !29, line: 611, baseType: !39, size: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !227, file: !29, line: 612, baseType: !39, size: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !227, file: !29, line: 613, baseType: !9, size: 32, offset: 384)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !185, file: !29, line: 669, baseType: !240, size: 512)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !29, line: 580, size: 512, elements: !241)
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !240, file: !29, line: 581, baseType: !122, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !240, file: !29, line: 581, baseType: !12, size: 8, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !240, file: !29, line: 581, baseType: !12, size: 8, offset: 72)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !240, file: !29, line: 581, baseType: !4, size: 16, offset: 80)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !240, file: !29, line: 581, baseType: !4, size: 16, offset: 96)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !240, file: !29, line: 581, baseType: !9, size: 32, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !240, file: !29, line: 582, baseType: !46, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !240, file: !29, line: 583, baseType: !46, size: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !240, file: !29, line: 584, baseType: !147, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !240, file: !29, line: 585, baseType: !122, size: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !240, file: !29, line: 586, baseType: !9, size: 32, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !185, file: !29, line: 670, baseType: !254, size: 320)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !29, line: 620, size: 320, elements: !255)
!255 = !{!256, !257, !258, !259, !260, !261, !262, !263, !264}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !254, file: !29, line: 621, baseType: !122, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !254, file: !29, line: 621, baseType: !12, size: 8, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !254, file: !29, line: 621, baseType: !12, size: 8, offset: 72)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !254, file: !29, line: 621, baseType: !4, size: 16, offset: 80)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !254, file: !29, line: 621, baseType: !4, size: 16, offset: 96)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !254, file: !29, line: 621, baseType: !12, size: 8, offset: 112)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !254, file: !29, line: 622, baseType: !147, size: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !254, file: !29, line: 623, baseType: !46, size: 64, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !254, file: !29, line: 624, baseType: !71, size: 64, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !185, file: !29, line: 671, baseType: !266, size: 640)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !29, line: 631, size: 640, elements: !267)
!267 = !{!268, !269, !270, !271, !272, !273}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !266, file: !29, line: 632, baseType: !122, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !266, file: !29, line: 632, baseType: !12, size: 8, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !29, line: 632, baseType: !12, size: 8, offset: 72)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !266, file: !29, line: 632, baseType: !4, size: 16, offset: 80)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !266, file: !29, line: 632, baseType: !4, size: 16, offset: 96)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !266, file: !29, line: 633, baseType: !274, size: 512, offset: 128)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 512, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 8)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !185, file: !29, line: 672, baseType: !278, size: 320)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !29, line: 654, size: 320, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !29, line: 655, baseType: !122, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !278, file: !29, line: 655, baseType: !12, size: 8, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !29, line: 655, baseType: !12, size: 8, offset: 72)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !278, file: !29, line: 655, baseType: !4, size: 16, offset: 80)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !278, file: !29, line: 655, baseType: !4, size: 16, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !278, file: !29, line: 655, baseType: !12, size: 8, offset: 112)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !278, file: !29, line: 656, baseType: !42, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !278, file: !29, line: 657, baseType: !46, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !278, file: !29, line: 658, baseType: !289, size: 64, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !29, line: 645, size: 128, elements: !291)
!291 = !{!292, !298}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !290, file: !29, line: 646, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !146, line: 1052, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !297, !9, !122}
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !146, line: 424, baseType: !122)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !290, file: !29, line: 647, baseType: !122, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !174, file: !29, line: 902, baseType: !27, size: 64, offset: 512)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !174, file: !29, line: 903, baseType: !9, size: 32, offset: 576)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !148, file: !149, line: 61, baseType: !9, size: 32, offset: 1088)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !148, file: !149, line: 62, baseType: !9, size: 32, offset: 1120)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !148, file: !149, line: 63, baseType: !4, size: 16, offset: 1152)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !148, file: !149, line: 64, baseType: !12, size: 8, offset: 1168)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !148, file: !149, line: 66, baseType: !306, size: 2688, offset: 1216)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 2688, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 7)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !148, file: !149, line: 67, baseType: !310, size: 3072, offset: 3904)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 3072, elements: !275)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !148, file: !149, line: 68, baseType: !312, size: 576, offset: 6976)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 576, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 9)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !148, file: !149, line: 69, baseType: !109, size: 64, offset: 7552)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !148, file: !149, line: 71, baseType: !39, size: 64, offset: 7616)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !148, file: !149, line: 72, baseType: !109, size: 64, offset: 7680)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !148, file: !149, line: 73, baseType: !184, size: 64, offset: 7744)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !148, file: !149, line: 74, baseType: !42, size: 64, offset: 7808)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !148, file: !149, line: 75, baseType: !46, size: 64, offset: 7872)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !148, file: !149, line: 76, baseType: !42, size: 64, offset: 7936)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !148, file: !149, line: 77, baseType: !27, size: 64, offset: 8000)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !148, file: !149, line: 78, baseType: !46, size: 64, offset: 8064)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !148, file: !149, line: 79, baseType: !42, size: 64, offset: 8128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !148, file: !149, line: 80, baseType: !83, size: 64, offset: 8192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !148, file: !149, line: 81, baseType: !27, size: 64, offset: 8256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !148, file: !149, line: 82, baseType: !328, size: 64, offset: 8320)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !29, line: 702, size: 128, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !330, file: !29, line: 706, baseType: !9, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !330, file: !29, line: 707, baseType: !9, size: 32, offset: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !330, file: !29, line: 708, baseType: !4, size: 16, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !330, file: !29, line: 709, baseType: !12, size: 8, offset: 80)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !330, file: !29, line: 710, baseType: !12, size: 8, offset: 88)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !330, file: !29, line: 711, baseType: !12, size: 8, offset: 96)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !148, file: !149, line: 83, baseType: !27, size: 64, offset: 8384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !148, file: !149, line: 84, baseType: !46, size: 64, offset: 8448)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !148, file: !149, line: 85, baseType: !184, size: 64, offset: 8512)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !148, file: !149, line: 86, baseType: !46, size: 64, offset: 8576)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !148, file: !149, line: 87, baseType: !184, size: 64, offset: 8640)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !148, file: !149, line: 88, baseType: !27, size: 64, offset: 8704)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !148, file: !149, line: 89, baseType: !27, size: 64, offset: 8768)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !148, file: !149, line: 90, baseType: !346, size: 64, offset: 8832)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !148, file: !149, line: 91, baseType: !348, size: 64, offset: 8896)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !29, line: 637, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!145, !147, !352}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !148, file: !149, line: 92, baseType: !354, size: 64, offset: 8960)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !29, line: 641, baseType: !142)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !138, file: !48, line: 152, baseType: !46, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !124, file: !48, line: 155, baseType: !9, size: 32, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !124, file: !48, line: 156, baseType: !159, size: 16, offset: 416)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !124, file: !48, line: 157, baseType: !12, size: 8, offset: 432)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !47, file: !48, line: 375, baseType: !360, size: 576)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !48, line: 122, size: 576, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !360, file: !48, line: 123, baseType: !46, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !360, file: !48, line: 123, baseType: !12, size: 8, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !360, file: !48, line: 123, baseType: !12, size: 8, offset: 72)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !360, file: !48, line: 123, baseType: !4, size: 16, offset: 80)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !360, file: !48, line: 123, baseType: !12, size: 8, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !360, file: !48, line: 123, baseType: !12, size: 8, offset: 104)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !360, file: !48, line: 124, baseType: !4, size: 16, offset: 112)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !360, file: !48, line: 125, baseType: !122, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !360, file: !48, line: 126, baseType: !71, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !360, file: !48, line: 127, baseType: !346, size: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !360, file: !48, line: 128, baseType: !46, size: 64, offset: 320)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !48, line: 129, baseType: !46, size: 64, offset: 384)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !360, file: !48, line: 130, baseType: !42, size: 64, offset: 448)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !360, file: !48, line: 131, baseType: !12, size: 8, offset: 512)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !47, file: !48, line: 376, baseType: !377, size: 448)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !48, line: 134, size: 448, elements: !378)
!378 = !{!379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !390}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !377, file: !48, line: 135, baseType: !46, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !377, file: !48, line: 135, baseType: !12, size: 8, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !377, file: !48, line: 135, baseType: !12, size: 8, offset: 72)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !377, file: !48, line: 135, baseType: !4, size: 16, offset: 80)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !377, file: !48, line: 135, baseType: !12, size: 8, offset: 96)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !377, file: !48, line: 135, baseType: !12, size: 8, offset: 104)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !377, file: !48, line: 136, baseType: !42, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !377, file: !48, line: 137, baseType: !46, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !48, line: 138, baseType: !46, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !377, file: !48, line: 139, baseType: !389, size: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !146, line: 129, baseType: !71)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !377, file: !48, line: 140, baseType: !9, size: 32, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !47, file: !48, line: 377, baseType: !392, size: 320)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !48, line: 184, size: 320, elements: !393)
!393 = !{!394, !395, !396, !397, !398, !399, !403}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !392, file: !48, line: 185, baseType: !46, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !392, file: !48, line: 185, baseType: !12, size: 8, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !392, file: !48, line: 185, baseType: !12, size: 8, offset: 72)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !392, file: !48, line: 185, baseType: !4, size: 16, offset: 80)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !392, file: !48, line: 185, baseType: !12, size: 8, offset: 96)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !392, file: !48, line: 185, baseType: !400, size: 128, offset: 128)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 128, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 2)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !392, file: !48, line: 185, baseType: !46, size: 64, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !47, file: !48, line: 378, baseType: !405, size: 384)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !48, line: 187, size: 384, elements: !406)
!406 = !{!407, !408, !409, !410, !411, !412, !413, !414}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !405, file: !48, line: 188, baseType: !46, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !405, file: !48, line: 188, baseType: !12, size: 8, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !405, file: !48, line: 188, baseType: !12, size: 8, offset: 72)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !405, file: !48, line: 188, baseType: !4, size: 16, offset: 80)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !405, file: !48, line: 188, baseType: !12, size: 8, offset: 96)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !405, file: !48, line: 189, baseType: !400, size: 128, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !405, file: !48, line: 189, baseType: !46, size: 64, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !405, file: !48, line: 189, baseType: !415, size: 64, offset: 320)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !29, line: 480, size: 576, elements: !417)
!417 = !{!418, !419, !420, !421, !429, !444, !476, !477, !478, !479, !480, !481}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !416, file: !29, line: 481, baseType: !42, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !416, file: !29, line: 482, baseType: !415, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !416, file: !29, line: 483, baseType: !415, size: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !416, file: !29, line: 484, baseType: !422, size: 64, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !29, line: 497, size: 256, elements: !424)
!424 = !{!425, !426, !427, !428}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !423, file: !29, line: 498, baseType: !422, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !423, file: !29, line: 499, baseType: !422, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !423, file: !29, line: 500, baseType: !415, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !423, file: !29, line: 501, baseType: !9, size: 32, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !416, file: !29, line: 485, baseType: !430, size: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !29, line: 466, size: 320, elements: !432)
!432 = !{!433, !438, !439, !440, !441, !442, !443}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !431, file: !29, line: 467, baseType: !434, size: 128)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !29, line: 459, size: 128, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !434, file: !29, line: 460, baseType: !12, size: 8)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !434, file: !29, line: 461, baseType: !71, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !431, file: !29, line: 468, baseType: !434, size: 128, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !431, file: !29, line: 469, baseType: !4, size: 16, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !431, file: !29, line: 470, baseType: !12, size: 8, offset: 272)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !431, file: !29, line: 471, baseType: !12, size: 8, offset: 280)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !431, file: !29, line: 472, baseType: !12, size: 8, offset: 288)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !431, file: !29, line: 473, baseType: !12, size: 8, offset: 296)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !416, file: !29, line: 486, baseType: !445, size: 64, offset: 320)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !29, line: 448, size: 192, elements: !447)
!447 = !{!448, !471, !472, !473, !474, !475}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !446, file: !29, line: 449, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !29, line: 438, size: 64, elements: !450)
!450 = !{!451, !452, !465}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !449, file: !29, line: 439, baseType: !42, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !449, file: !29, line: 440, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !29, line: 419, size: 256, elements: !455)
!455 = !{!456, !461, !462, !463, !464}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !454, file: !29, line: 420, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !146, line: 1049, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!9, !297, !9, !122}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !454, file: !29, line: 421, baseType: !122, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !454, file: !29, line: 422, baseType: !42, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !454, file: !29, line: 423, baseType: !12, size: 8, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !454, file: !29, line: 424, baseType: !12, size: 8, offset: 200)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !449, file: !29, line: 441, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !29, line: 429, size: 128, elements: !468)
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !467, file: !29, line: 430, baseType: !42, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !467, file: !29, line: 431, baseType: !466, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !446, file: !29, line: 450, baseType: !430, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !446, file: !29, line: 451, baseType: !12, size: 8, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !446, file: !29, line: 452, baseType: !12, size: 8, offset: 136)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !446, file: !29, line: 453, baseType: !12, size: 8, offset: 144)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !446, file: !29, line: 454, baseType: !12, size: 8, offset: 152)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !416, file: !29, line: 487, baseType: !71, size: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !416, file: !29, line: 488, baseType: !9, size: 32, offset: 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !416, file: !29, line: 489, baseType: !4, size: 16, offset: 480)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !416, file: !29, line: 490, baseType: !4, size: 16, offset: 496)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !416, file: !29, line: 491, baseType: !12, size: 8, offset: 512)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !416, file: !29, line: 492, baseType: !12, size: 8, offset: 520)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !47, file: !48, line: 379, baseType: !483, size: 384)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !48, line: 192, size: 384, elements: !484)
!484 = !{!485, !486, !487, !488, !489, !490, !491, !492, !493}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !483, file: !48, line: 193, baseType: !46, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !483, file: !48, line: 193, baseType: !12, size: 8, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !483, file: !48, line: 193, baseType: !12, size: 8, offset: 72)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !483, file: !48, line: 193, baseType: !4, size: 16, offset: 80)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !483, file: !48, line: 193, baseType: !12, size: 8, offset: 96)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !483, file: !48, line: 193, baseType: !400, size: 128, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !483, file: !48, line: 193, baseType: !46, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !483, file: !48, line: 193, baseType: !9, size: 32, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !483, file: !48, line: 194, baseType: !9, size: 32, offset: 352)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !47, file: !48, line: 380, baseType: !495, size: 384)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !48, line: 197, size: 384, elements: !496)
!496 = !{!497, !498, !499, !500, !501, !502, !503, !504, !505, !506}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !495, file: !48, line: 198, baseType: !46, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !495, file: !48, line: 198, baseType: !12, size: 8, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !495, file: !48, line: 198, baseType: !12, size: 8, offset: 72)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !495, file: !48, line: 198, baseType: !4, size: 16, offset: 80)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !495, file: !48, line: 198, baseType: !12, size: 8, offset: 96)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !495, file: !48, line: 200, baseType: !12, size: 8, offset: 104)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !495, file: !48, line: 201, baseType: !12, size: 8, offset: 112)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !495, file: !48, line: 202, baseType: !400, size: 128, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !495, file: !48, line: 202, baseType: !46, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !495, file: !48, line: 202, baseType: !507, size: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !146, line: 128, baseType: !71)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !47, file: !48, line: 381, baseType: !509, size: 320)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !48, line: 205, size: 320, elements: !510)
!510 = !{!511, !512, !513, !514, !515, !516, !517}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !509, file: !48, line: 206, baseType: !46, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !509, file: !48, line: 206, baseType: !12, size: 8, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !509, file: !48, line: 206, baseType: !12, size: 8, offset: 72)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !509, file: !48, line: 206, baseType: !4, size: 16, offset: 80)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !509, file: !48, line: 206, baseType: !12, size: 8, offset: 96)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !509, file: !48, line: 206, baseType: !400, size: 128, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !509, file: !48, line: 206, baseType: !46, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !47, file: !48, line: 382, baseType: !519, size: 384)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !48, line: 233, size: 384, elements: !520)
!520 = !{!521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !519, file: !48, line: 234, baseType: !46, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !519, file: !48, line: 234, baseType: !12, size: 8, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !519, file: !48, line: 234, baseType: !12, size: 8, offset: 72)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !519, file: !48, line: 234, baseType: !4, size: 16, offset: 80)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !519, file: !48, line: 234, baseType: !12, size: 8, offset: 96)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !519, file: !48, line: 234, baseType: !12, size: 8, offset: 104)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !519, file: !48, line: 234, baseType: !12, size: 8, offset: 112)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !519, file: !48, line: 234, baseType: !12, size: 8, offset: 120)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !519, file: !48, line: 234, baseType: !42, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !519, file: !48, line: 234, baseType: !9, size: 32, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !519, file: !48, line: 234, baseType: !9, size: 32, offset: 224)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !519, file: !48, line: 234, baseType: !9, size: 32, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !519, file: !48, line: 234, baseType: !12, size: 8, offset: 288)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !519, file: !48, line: 234, baseType: !12, size: 8, offset: 296)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !519, file: !48, line: 234, baseType: !46, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !47, file: !48, line: 383, baseType: !537, size: 576)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !48, line: 237, size: 576, elements: !538)
!538 = !{!539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !537, file: !48, line: 238, baseType: !46, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !537, file: !48, line: 238, baseType: !12, size: 8, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !537, file: !48, line: 238, baseType: !12, size: 8, offset: 72)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !537, file: !48, line: 238, baseType: !4, size: 16, offset: 80)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !537, file: !48, line: 238, baseType: !12, size: 8, offset: 96)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !537, file: !48, line: 238, baseType: !12, size: 8, offset: 104)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !537, file: !48, line: 238, baseType: !12, size: 8, offset: 112)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !537, file: !48, line: 238, baseType: !12, size: 8, offset: 120)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !537, file: !48, line: 238, baseType: !42, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !537, file: !48, line: 238, baseType: !9, size: 32, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !537, file: !48, line: 238, baseType: !9, size: 32, offset: 224)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !537, file: !48, line: 238, baseType: !9, size: 32, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !537, file: !48, line: 238, baseType: !12, size: 8, offset: 288)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !537, file: !48, line: 238, baseType: !12, size: 8, offset: 296)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !537, file: !48, line: 238, baseType: !4, size: 16, offset: 304)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !537, file: !48, line: 239, baseType: !46, size: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !537, file: !48, line: 240, baseType: !39, size: 64, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !537, file: !48, line: 241, baseType: !4, size: 16, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !537, file: !48, line: 242, baseType: !39, size: 64, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !47, file: !48, line: 384, baseType: !559, size: 384)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !48, line: 262, size: 384, elements: !560)
!560 = !{!561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !559, file: !48, line: 263, baseType: !46, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !559, file: !48, line: 263, baseType: !12, size: 8, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !559, file: !48, line: 263, baseType: !12, size: 8, offset: 72)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !559, file: !48, line: 263, baseType: !4, size: 16, offset: 80)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !559, file: !48, line: 263, baseType: !12, size: 8, offset: 96)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !559, file: !48, line: 263, baseType: !12, size: 8, offset: 104)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !559, file: !48, line: 263, baseType: !12, size: 8, offset: 112)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !559, file: !48, line: 263, baseType: !12, size: 8, offset: 120)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !559, file: !48, line: 263, baseType: !42, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !559, file: !48, line: 263, baseType: !9, size: 32, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !559, file: !48, line: 263, baseType: !9, size: 32, offset: 224)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !559, file: !48, line: 263, baseType: !9, size: 32, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !559, file: !48, line: 263, baseType: !12, size: 8, offset: 288)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !559, file: !48, line: 263, baseType: !12, size: 8, offset: 296)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !559, file: !48, line: 263, baseType: !12, size: 8, offset: 304)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !559, file: !48, line: 264, baseType: !46, size: 64, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !47, file: !48, line: 385, baseType: !578, size: 448)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !48, line: 245, size: 448, elements: !579)
!579 = !{!580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !578, file: !48, line: 246, baseType: !46, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !578, file: !48, line: 246, baseType: !12, size: 8, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !578, file: !48, line: 246, baseType: !12, size: 8, offset: 72)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !578, file: !48, line: 246, baseType: !4, size: 16, offset: 80)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !578, file: !48, line: 246, baseType: !12, size: 8, offset: 96)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !578, file: !48, line: 246, baseType: !12, size: 8, offset: 104)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !578, file: !48, line: 246, baseType: !12, size: 8, offset: 112)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !578, file: !48, line: 246, baseType: !12, size: 8, offset: 120)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !578, file: !48, line: 246, baseType: !42, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !578, file: !48, line: 246, baseType: !9, size: 32, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !578, file: !48, line: 246, baseType: !9, size: 32, offset: 224)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !578, file: !48, line: 246, baseType: !9, size: 32, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !578, file: !48, line: 246, baseType: !12, size: 8, offset: 288)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !578, file: !48, line: 246, baseType: !12, size: 8, offset: 296)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !578, file: !48, line: 246, baseType: !46, size: 64, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !578, file: !48, line: 247, baseType: !46, size: 64, offset: 384)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !47, file: !48, line: 386, baseType: !597, size: 448)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !48, line: 250, size: 448, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !597, file: !48, line: 251, baseType: !46, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !597, file: !48, line: 251, baseType: !12, size: 8, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !597, file: !48, line: 251, baseType: !12, size: 8, offset: 72)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !597, file: !48, line: 251, baseType: !4, size: 16, offset: 80)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !597, file: !48, line: 251, baseType: !12, size: 8, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !597, file: !48, line: 251, baseType: !12, size: 8, offset: 104)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !597, file: !48, line: 251, baseType: !12, size: 8, offset: 112)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !597, file: !48, line: 251, baseType: !12, size: 8, offset: 120)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !597, file: !48, line: 251, baseType: !42, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !597, file: !48, line: 251, baseType: !9, size: 32, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !597, file: !48, line: 251, baseType: !9, size: 32, offset: 224)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !597, file: !48, line: 251, baseType: !9, size: 32, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !597, file: !48, line: 251, baseType: !12, size: 8, offset: 288)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !597, file: !48, line: 251, baseType: !12, size: 8, offset: 296)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !597, file: !48, line: 256, baseType: !46, size: 64, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !597, file: !48, line: 257, baseType: !46, size: 64, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !47, file: !48, line: 387, baseType: !616, size: 512)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !48, line: 273, size: 512, elements: !617)
!617 = !{!618, !619, !620, !621, !622, !623, !624, !625, !626, !627}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !616, file: !48, line: 274, baseType: !46, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !616, file: !48, line: 274, baseType: !12, size: 8, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !616, file: !48, line: 274, baseType: !12, size: 8, offset: 72)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !616, file: !48, line: 274, baseType: !4, size: 16, offset: 80)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !616, file: !48, line: 274, baseType: !12, size: 8, offset: 96)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !616, file: !48, line: 274, baseType: !42, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !616, file: !48, line: 275, baseType: !9, size: 32, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !616, file: !48, line: 276, baseType: !293, size: 64, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !616, file: !48, line: 277, baseType: !122, size: 64, offset: 320)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !616, file: !48, line: 278, baseType: !400, size: 128, offset: 384)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !47, file: !48, line: 388, baseType: !629, size: 512)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !48, line: 281, size: 512, elements: !630)
!630 = !{!631, !632, !633, !634, !635, !636, !637, !638, !644, !645, !646, !652, !653}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !629, file: !48, line: 282, baseType: !46, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !629, file: !48, line: 282, baseType: !12, size: 8, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !629, file: !48, line: 282, baseType: !12, size: 8, offset: 72)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !629, file: !48, line: 282, baseType: !4, size: 16, offset: 80)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !629, file: !48, line: 282, baseType: !12, size: 8, offset: 96)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !629, file: !48, line: 282, baseType: !12, size: 8, offset: 104)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !629, file: !48, line: 283, baseType: !12, size: 8, offset: 112)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !629, file: !48, line: 284, baseType: !639, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !146, line: 1084, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!145, !9, !389, !9, !643, !122, !122}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !629, file: !48, line: 285, baseType: !42, size: 64, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !629, file: !48, line: 286, baseType: !122, size: 64, offset: 256)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !629, file: !48, line: 287, baseType: !647, size: 64, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !146, line: 1102, baseType: !648)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!145, !297, !9, !122, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !629, file: !48, line: 288, baseType: !46, size: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !629, file: !48, line: 289, baseType: !46, size: 64, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !47, file: !48, line: 389, baseType: !655, size: 512)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !48, line: 307, size: 512, elements: !656)
!656 = !{!657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !655, file: !48, line: 308, baseType: !46, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !655, file: !48, line: 308, baseType: !12, size: 8, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !655, file: !48, line: 308, baseType: !12, size: 8, offset: 72)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !655, file: !48, line: 308, baseType: !4, size: 16, offset: 80)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !655, file: !48, line: 308, baseType: !12, size: 8, offset: 96)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !655, file: !48, line: 308, baseType: !12, size: 8, offset: 104)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !655, file: !48, line: 309, baseType: !12, size: 8, offset: 112)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !655, file: !48, line: 310, baseType: !12, size: 8, offset: 120)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !655, file: !48, line: 311, baseType: !122, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !655, file: !48, line: 312, baseType: !42, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !655, file: !48, line: 313, baseType: !109, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !655, file: !48, line: 314, baseType: !39, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !655, file: !48, line: 315, baseType: !39, size: 64, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !655, file: !48, line: 316, baseType: !9, size: 32, offset: 448)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !47, file: !48, line: 390, baseType: !672, size: 448)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !48, line: 340, size: 448, elements: !673)
!673 = !{!674, !675, !676, !677, !678, !679, !680, !681, !682, !683}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !672, file: !48, line: 341, baseType: !46, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !672, file: !48, line: 341, baseType: !12, size: 8, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !672, file: !48, line: 341, baseType: !12, size: 8, offset: 72)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !672, file: !48, line: 341, baseType: !4, size: 16, offset: 80)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !672, file: !48, line: 341, baseType: !12, size: 8, offset: 96)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !672, file: !48, line: 341, baseType: !42, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !672, file: !48, line: 342, baseType: !42, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !672, file: !48, line: 343, baseType: !122, size: 64, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !672, file: !48, line: 344, baseType: !39, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !672, file: !48, line: 345, baseType: !9, size: 32, offset: 384)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !47, file: !48, line: 391, baseType: !685, size: 256)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !48, line: 350, size: 256, elements: !686)
!686 = !{!687, !688, !689, !690, !691, !692, !697}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !685, file: !48, line: 351, baseType: !46, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !685, file: !48, line: 351, baseType: !12, size: 8, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !685, file: !48, line: 351, baseType: !12, size: 8, offset: 72)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !685, file: !48, line: 351, baseType: !4, size: 16, offset: 80)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !685, file: !48, line: 351, baseType: !12, size: 8, offset: 96)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !685, file: !48, line: 351, baseType: !693, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !146, line: 1055, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !297, !122}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !685, file: !48, line: 352, baseType: !122, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !47, file: !48, line: 392, baseType: !699, size: 192)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !48, line: 357, size: 192, elements: !700)
!700 = !{!701, !702, !703, !704, !705, !706}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !699, file: !48, line: 358, baseType: !46, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !699, file: !48, line: 358, baseType: !12, size: 8, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !699, file: !48, line: 358, baseType: !12, size: 8, offset: 72)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !699, file: !48, line: 358, baseType: !4, size: 16, offset: 80)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !699, file: !48, line: 358, baseType: !12, size: 8, offset: 96)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !699, file: !48, line: 358, baseType: !46, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !47, file: !48, line: 399, baseType: !43, size: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !43, file: !29, line: 135, baseType: !12, size: 8, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !43, file: !29, line: 136, baseType: !12, size: 8, offset: 72)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !43, file: !29, line: 137, baseType: !4, size: 16, offset: 80)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !43, file: !29, line: 138, baseType: !712, size: 32, offset: 96)
!712 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !713, line: 327, size: 32, elements: !714)
!713 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !712, file: !713, line: 328, baseType: !9, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !712, file: !713, line: 329, baseType: !717, size: 32)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 32, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 4)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !43, file: !29, line: 139, baseType: !42, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !43, file: !29, line: 140, baseType: !42, size: 64, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !43, file: !29, line: 141, baseType: !42, size: 64, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !43, file: !29, line: 142, baseType: !159, size: 16, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !32, file: !29, line: 829, baseType: !725, size: 64, offset: 320)
!725 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !29, line: 716, size: 64, elements: !726)
!726 = !{!727, !728, !729, !730, !731, !732}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !725, file: !29, line: 717, baseType: !71, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !725, file: !29, line: 718, baseType: !9, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !725, file: !29, line: 719, baseType: !83, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !725, file: !29, line: 720, baseType: !39, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !725, file: !29, line: 721, baseType: !83, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !725, file: !29, line: 722, baseType: !27, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !32, file: !29, line: 829, baseType: !12, size: 8, offset: 384)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !28, file: !29, line: 877, baseType: !735, size: 640)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !29, line: 835, size: 640, elements: !736)
!736 = !{!737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !735, file: !29, line: 836, baseType: !27, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !735, file: !29, line: 836, baseType: !12, size: 8, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !735, file: !29, line: 836, baseType: !12, size: 8, offset: 72)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !735, file: !29, line: 836, baseType: !4, size: 16, offset: 80)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !735, file: !29, line: 836, baseType: !39, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !735, file: !29, line: 836, baseType: !27, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !735, file: !29, line: 836, baseType: !42, size: 64, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !735, file: !29, line: 836, baseType: !725, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !735, file: !29, line: 836, baseType: !12, size: 8, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !735, file: !29, line: 836, baseType: !83, size: 64, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !735, file: !29, line: 837, baseType: !39, size: 64, offset: 512)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !735, file: !29, line: 838, baseType: !9, size: 32, offset: 576)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !735, file: !29, line: 839, baseType: !9, size: 32, offset: 608)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !28, file: !29, line: 878, baseType: !751, size: 1600)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !29, line: 846, size: 1600, elements: !752)
!752 = !{!753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !751, file: !29, line: 847, baseType: !27, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !751, file: !29, line: 847, baseType: !12, size: 8, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !751, file: !29, line: 847, baseType: !12, size: 8, offset: 72)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !751, file: !29, line: 847, baseType: !4, size: 16, offset: 80)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !751, file: !29, line: 847, baseType: !39, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !751, file: !29, line: 847, baseType: !27, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !751, file: !29, line: 847, baseType: !42, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !751, file: !29, line: 847, baseType: !725, size: 64, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !751, file: !29, line: 847, baseType: !12, size: 8, offset: 384)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !751, file: !29, line: 847, baseType: !27, size: 64, offset: 448)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !751, file: !29, line: 848, baseType: !27, size: 64, offset: 512)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !751, file: !29, line: 849, baseType: !83, size: 64, offset: 576)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !751, file: !29, line: 850, baseType: !12, size: 8, offset: 640)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !751, file: !29, line: 851, baseType: !83, size: 64, offset: 704)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !751, file: !29, line: 852, baseType: !83, size: 64, offset: 768)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !751, file: !29, line: 853, baseType: !83, size: 64, offset: 832)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !751, file: !29, line: 854, baseType: !717, size: 32, offset: 896)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !751, file: !29, line: 855, baseType: !9, size: 32, offset: 928)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !751, file: !29, line: 856, baseType: !9, size: 32, offset: 960)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !751, file: !29, line: 857, baseType: !9, size: 32, offset: 992)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !751, file: !29, line: 858, baseType: !9, size: 32, offset: 1024)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !751, file: !29, line: 859, baseType: !9, size: 32, offset: 1056)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !751, file: !29, line: 860, baseType: !9, size: 32, offset: 1088)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !751, file: !29, line: 861, baseType: !9, size: 32, offset: 1120)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !751, file: !29, line: 862, baseType: !9, size: 32, offset: 1152)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !751, file: !29, line: 863, baseType: !9, size: 32, offset: 1184)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !751, file: !29, line: 864, baseType: !9, size: 32, offset: 1216)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !751, file: !29, line: 865, baseType: !9, size: 32, offset: 1248)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !751, file: !29, line: 866, baseType: !9, size: 32, offset: 1280)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !751, file: !29, line: 867, baseType: !9, size: 32, offset: 1312)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !751, file: !29, line: 868, baseType: !4, size: 16, offset: 1344)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !751, file: !29, line: 869, baseType: !12, size: 8, offset: 1360)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !751, file: !29, line: 870, baseType: !12, size: 8, offset: 1368)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !751, file: !29, line: 871, baseType: !12, size: 8, offset: 1376)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !751, file: !29, line: 872, baseType: !788, size: 160, offset: 1384)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 160, elements: !789)
!789 = !{!790}
!790 = !DISubrange(count: 20)
!791 = !DILocalVariable(name: "aml", arg: 1, scope: !24, file: !1, line: 30, type: !39)
!792 = !DILocation(line: 30, column: 54, scope: !24)
!793 = !DILocalVariable(name: "scope_op", scope: !24, file: !1, line: 32, type: !27)
!794 = !DILocation(line: 32, column: 27, scope: !24)
!795 = !DILocation(line: 34, column: 44, scope: !24)
!796 = !DILocation(line: 34, column: 13, scope: !24)
!797 = !DILocation(line: 34, column: 11, scope: !24)
!798 = !DILocation(line: 35, column: 7, scope: !799)
!799 = distinct !DILexicalBlock(scope: !24, file: !1, line: 35, column: 6)
!800 = !DILocation(line: 35, column: 6, scope: !24)
!801 = !DILocation(line: 36, column: 3, scope: !802)
!802 = distinct !DILexicalBlock(scope: !799, file: !1, line: 35, column: 17)
!803 = !DILocation(line: 39, column: 2, scope: !24)
!804 = !DILocation(line: 39, column: 12, scope: !24)
!805 = !DILocation(line: 39, column: 18, scope: !24)
!806 = !DILocation(line: 39, column: 23, scope: !24)
!807 = !DILocation(line: 40, column: 10, scope: !24)
!808 = !DILocation(line: 40, column: 2, scope: !24)
!809 = !DILocation(line: 41, column: 1, scope: !24)
!810 = distinct !DISubprogram(name: "acpi_ps_alloc_op", scope: !1, file: !1, line: 85, type: !811, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!811 = !DISubroutineType(types: !812)
!812 = !{!27, !4, !39}
!813 = !DILocalVariable(name: "opcode", arg: 1, scope: !810, file: !1, line: 85, type: !4)
!814 = !DILocation(line: 85, column: 47, scope: !810)
!815 = !DILocalVariable(name: "aml", arg: 2, scope: !810, file: !1, line: 85, type: !39)
!816 = !DILocation(line: 85, column: 59, scope: !810)
!817 = !DILocalVariable(name: "op", scope: !810, file: !1, line: 87, type: !27)
!818 = !DILocation(line: 87, column: 27, scope: !810)
!819 = !DILocalVariable(name: "op_info", scope: !810, file: !1, line: 88, type: !328)
!820 = !DILocation(line: 88, column: 33, scope: !810)
!821 = !DILocalVariable(name: "flags", scope: !810, file: !1, line: 89, type: !12)
!822 = !DILocation(line: 89, column: 5, scope: !810)
!823 = !DILocation(line: 93, column: 36, scope: !810)
!824 = !DILocation(line: 93, column: 12, scope: !810)
!825 = !DILocation(line: 93, column: 10, scope: !810)
!826 = !DILocation(line: 97, column: 6, scope: !827)
!827 = distinct !DILexicalBlock(scope: !810, file: !1, line: 97, column: 6)
!828 = !DILocation(line: 97, column: 15, scope: !827)
!829 = !DILocation(line: 97, column: 21, scope: !827)
!830 = !DILocation(line: 97, column: 6, scope: !810)
!831 = !DILocation(line: 98, column: 9, scope: !832)
!832 = distinct !DILexicalBlock(scope: !827, file: !1, line: 97, column: 34)
!833 = !DILocation(line: 99, column: 2, scope: !832)
!834 = !DILocation(line: 99, column: 13, scope: !835)
!835 = distinct !DILexicalBlock(scope: !827, file: !1, line: 99, column: 13)
!836 = !DILocation(line: 99, column: 22, scope: !835)
!837 = !DILocation(line: 99, column: 28, scope: !835)
!838 = !DILocation(line: 99, column: 13, scope: !827)
!839 = !DILocation(line: 100, column: 9, scope: !840)
!840 = distinct !DILexicalBlock(scope: !835, file: !1, line: 99, column: 41)
!841 = !DILocation(line: 101, column: 2, scope: !840)
!842 = !DILocation(line: 101, column: 13, scope: !843)
!843 = distinct !DILexicalBlock(scope: !835, file: !1, line: 101, column: 13)
!844 = !DILocation(line: 101, column: 20, scope: !843)
!845 = !DILocation(line: 101, column: 13, scope: !835)
!846 = !DILocation(line: 102, column: 9, scope: !847)
!847 = distinct !DILexicalBlock(scope: !843, file: !1, line: 101, column: 44)
!848 = !DILocation(line: 103, column: 2, scope: !847)
!849 = !DILocation(line: 107, column: 6, scope: !850)
!850 = distinct !DILexicalBlock(scope: !810, file: !1, line: 107, column: 6)
!851 = !DILocation(line: 107, column: 12, scope: !850)
!852 = !DILocation(line: 107, column: 6, scope: !810)
!853 = !DILocation(line: 111, column: 31, scope: !854)
!854 = distinct !DILexicalBlock(scope: !850, file: !1, line: 107, column: 37)
!855 = !DILocation(line: 111, column: 8, scope: !854)
!856 = !DILocation(line: 111, column: 6, scope: !854)
!857 = !DILocation(line: 112, column: 2, scope: !854)
!858 = !DILocation(line: 115, column: 31, scope: !859)
!859 = distinct !DILexicalBlock(scope: !850, file: !1, line: 112, column: 9)
!860 = !DILocation(line: 115, column: 8, scope: !859)
!861 = !DILocation(line: 115, column: 6, scope: !859)
!862 = !DILocation(line: 120, column: 6, scope: !863)
!863 = distinct !DILexicalBlock(scope: !810, file: !1, line: 120, column: 6)
!864 = !DILocation(line: 120, column: 6, scope: !810)
!865 = !DILocation(line: 121, column: 19, scope: !866)
!866 = distinct !DILexicalBlock(scope: !863, file: !1, line: 120, column: 10)
!867 = !DILocation(line: 121, column: 23, scope: !866)
!868 = !DILocation(line: 121, column: 3, scope: !866)
!869 = !DILocation(line: 122, column: 20, scope: !866)
!870 = !DILocation(line: 122, column: 3, scope: !866)
!871 = !DILocation(line: 122, column: 7, scope: !866)
!872 = !DILocation(line: 122, column: 14, scope: !866)
!873 = !DILocation(line: 122, column: 18, scope: !866)
!874 = !DILocation(line: 123, column: 22, scope: !866)
!875 = !DILocation(line: 123, column: 3, scope: !866)
!876 = !DILocation(line: 123, column: 7, scope: !866)
!877 = !DILocation(line: 123, column: 14, scope: !866)
!878 = !DILocation(line: 123, column: 20, scope: !866)
!879 = !DILocation(line: 126, column: 7, scope: !880)
!880 = distinct !DILexicalBlock(scope: !866, file: !1, line: 126, column: 7)
!881 = !DILocation(line: 126, column: 14, scope: !880)
!882 = !DILocation(line: 126, column: 7, scope: !866)
!883 = !DILocation(line: 127, column: 29, scope: !884)
!884 = distinct !DILexicalBlock(scope: !880, file: !1, line: 126, column: 31)
!885 = !DILocation(line: 127, column: 27, scope: !884)
!886 = !DILocation(line: 128, column: 3, scope: !884)
!887 = !DILocation(line: 130, column: 7, scope: !888)
!888 = distinct !DILexicalBlock(scope: !866, file: !1, line: 130, column: 7)
!889 = !DILocation(line: 130, column: 7, scope: !866)
!890 = !DILocation(line: 132, column: 3, scope: !891)
!891 = distinct !DILexicalBlock(scope: !888, file: !1, line: 130, column: 34)
!892 = !DILocation(line: 133, column: 2, scope: !866)
!893 = !DILocation(line: 135, column: 10, scope: !810)
!894 = !DILocation(line: 135, column: 2, scope: !810)
!895 = distinct !DISubprogram(name: "acpi_ps_init_op", scope: !1, file: !1, line: 56, type: !896, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!896 = !DISubroutineType(types: !897)
!897 = !{null, !27, !4}
!898 = !DILocalVariable(name: "op", arg: 1, scope: !895, file: !1, line: 56, type: !27)
!899 = !DILocation(line: 56, column: 47, scope: !895)
!900 = !DILocalVariable(name: "opcode", arg: 2, scope: !895, file: !1, line: 56, type: !4)
!901 = !DILocation(line: 56, column: 55, scope: !895)
!902 = !DILocation(line: 60, column: 2, scope: !895)
!903 = !DILocation(line: 60, column: 6, scope: !895)
!904 = !DILocation(line: 60, column: 13, scope: !895)
!905 = !DILocation(line: 60, column: 29, scope: !895)
!906 = !DILocation(line: 61, column: 26, scope: !895)
!907 = !DILocation(line: 61, column: 2, scope: !895)
!908 = !DILocation(line: 61, column: 6, scope: !895)
!909 = !DILocation(line: 61, column: 13, scope: !895)
!910 = !DILocation(line: 61, column: 24, scope: !895)
!911 = !DILocation(line: 68, column: 1, scope: !895)
!912 = distinct !DISubprogram(name: "acpi_os_acquire_object", scope: !913, file: !913, line: 65, type: !914, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!913 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!914 = !DISubroutineType(types: !915)
!915 = !{!122, !916}
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !918, line: 117, flags: DIFlagFwdDecl)
!918 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!919 = !DILocalVariable(name: "flags", arg: 1, scope: !920, file: !921, line: 162, type: !17)
!920 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !921, file: !921, line: 162, type: !922, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!921 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!922 = !DISubroutineType(types: !923)
!923 = !{!924, !17}
!924 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!925 = !DILocation(line: 162, column: 67, scope: !920, inlinedAt: !926)
!926 = distinct !DILocation(line: 68, column: 6, scope: !927)
!927 = distinct !DILexicalBlock(scope: !928, file: !913, line: 68, column: 6)
!928 = distinct !DILexicalBlock(scope: !912, file: !913, line: 68, column: 6)
!929 = !DILocalVariable(name: "cache", arg: 1, scope: !912, file: !913, line: 65, type: !916)
!930 = !DILocation(line: 65, column: 59, scope: !912)
!931 = !DILocation(line: 67, column: 27, scope: !912)
!932 = !DILocalVariable(name: "_flags", scope: !928, file: !913, line: 68, type: !17)
!933 = !DILocation(line: 68, column: 6, scope: !928)
!934 = !DILocalVariable(name: "__dummy", scope: !935, file: !913, line: 68, type: !17)
!935 = distinct !DILexicalBlock(scope: !936, file: !913, line: 68, column: 6)
!936 = distinct !DILexicalBlock(scope: !928, file: !913, line: 68, column: 6)
!937 = !DILocation(line: 68, column: 6, scope: !935)
!938 = !DILocalVariable(name: "__dummy2", scope: !935, file: !913, line: 68, type: !17)
!939 = !DILocation(line: 68, column: 6, scope: !936)
!940 = !DILocalVariable(name: "__dummy", scope: !941, file: !913, line: 68, type: !17)
!941 = distinct !DILexicalBlock(scope: !927, file: !913, line: 68, column: 6)
!942 = !DILocation(line: 68, column: 6, scope: !941)
!943 = !DILocalVariable(name: "__dummy2", scope: !941, file: !913, line: 68, type: !17)
!944 = !DILocation(line: 68, column: 6, scope: !927)
!945 = !DILocation(line: 164, column: 11, scope: !920, inlinedAt: !926)
!946 = !DILocation(line: 164, column: 17, scope: !920, inlinedAt: !926)
!947 = !DILocation(line: 164, column: 9, scope: !920, inlinedAt: !926)
!948 = !DILocation(line: 68, column: 6, scope: !912)
!949 = !DILocation(line: 67, column: 9, scope: !912)
!950 = !DILocation(line: 67, column: 2, scope: !912)
!951 = distinct !DISubprogram(name: "acpi_ps_free_op", scope: !1, file: !1, line: 151, type: !952, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!952 = !DISubroutineType(types: !953)
!953 = !{null, !27}
!954 = !DILocalVariable(name: "op", arg: 1, scope: !951, file: !1, line: 151, type: !27)
!955 = !DILocation(line: 151, column: 47, scope: !951)
!956 = !DILocation(line: 156, column: 6, scope: !957)
!957 = distinct !DILexicalBlock(scope: !951, file: !1, line: 156, column: 6)
!958 = !DILocation(line: 156, column: 10, scope: !957)
!959 = !DILocation(line: 156, column: 17, scope: !957)
!960 = !DILocation(line: 156, column: 28, scope: !957)
!961 = !DILocation(line: 156, column: 6, scope: !951)
!962 = !DILocation(line: 159, column: 2, scope: !963)
!963 = distinct !DILexicalBlock(scope: !957, file: !1, line: 156, column: 56)
!964 = !DILocation(line: 161, column: 6, scope: !965)
!965 = distinct !DILexicalBlock(scope: !951, file: !1, line: 161, column: 6)
!966 = !DILocation(line: 161, column: 10, scope: !965)
!967 = !DILocation(line: 161, column: 17, scope: !965)
!968 = !DILocation(line: 161, column: 23, scope: !965)
!969 = !DILocation(line: 161, column: 6, scope: !951)
!970 = !DILocation(line: 162, column: 32, scope: !971)
!971 = distinct !DILexicalBlock(scope: !965, file: !1, line: 161, column: 47)
!972 = !DILocation(line: 162, column: 56, scope: !971)
!973 = !DILocation(line: 162, column: 9, scope: !971)
!974 = !DILocation(line: 163, column: 2, scope: !971)
!975 = !DILocation(line: 164, column: 32, scope: !976)
!976 = distinct !DILexicalBlock(scope: !965, file: !1, line: 163, column: 9)
!977 = !DILocation(line: 164, column: 60, scope: !976)
!978 = !DILocation(line: 164, column: 9, scope: !976)
!979 = !DILocation(line: 166, column: 1, scope: !951)
!980 = distinct !DISubprogram(name: "acpi_ps_is_leading_char", scope: !1, file: !1, line: 179, type: !981, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!981 = !DISubroutineType(types: !982)
!982 = !{!12, !9}
!983 = !DILocalVariable(name: "c", arg: 1, scope: !980, file: !1, line: 179, type: !9)
!984 = !DILocation(line: 179, column: 32, scope: !980)
!985 = !DILocation(line: 181, column: 16, scope: !980)
!986 = !DILocation(line: 181, column: 18, scope: !980)
!987 = !DILocation(line: 181, column: 25, scope: !980)
!988 = !DILocation(line: 181, column: 29, scope: !980)
!989 = !DILocation(line: 181, column: 31, scope: !980)
!990 = !DILocation(line: 181, column: 38, scope: !980)
!991 = !DILocation(line: 181, column: 41, scope: !980)
!992 = !DILocation(line: 181, column: 43, scope: !980)
!993 = !DILocation(line: 0, scope: !980)
!994 = !DILocation(line: 181, column: 10, scope: !980)
!995 = !DILocation(line: 181, column: 2, scope: !980)
!996 = distinct !DISubprogram(name: "acpi_ps_get_name", scope: !1, file: !1, line: 187, type: !997, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!997 = !DISubroutineType(types: !998)
!998 = !{!9, !27}
!999 = !DILocalVariable(name: "op", arg: 1, scope: !996, file: !1, line: 187, type: !27)
!1000 = !DILocation(line: 187, column: 48, scope: !996)
!1001 = !DILocation(line: 192, column: 6, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !996, file: !1, line: 192, column: 6)
!1003 = !DILocation(line: 192, column: 10, scope: !1002)
!1004 = !DILocation(line: 192, column: 17, scope: !1002)
!1005 = !DILocation(line: 192, column: 23, scope: !1002)
!1006 = !DILocation(line: 192, column: 6, scope: !996)
!1007 = !DILocation(line: 193, column: 3, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 192, column: 47)
!1009 = !DILocation(line: 198, column: 10, scope: !996)
!1010 = !DILocation(line: 198, column: 14, scope: !996)
!1011 = !DILocation(line: 198, column: 20, scope: !996)
!1012 = !DILocation(line: 198, column: 2, scope: !996)
!1013 = !DILocation(line: 199, column: 1, scope: !996)
!1014 = distinct !DISubprogram(name: "acpi_ps_set_name", scope: !1, file: !1, line: 204, type: !1015, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !27, !9}
!1017 = !DILocalVariable(name: "op", arg: 1, scope: !1014, file: !1, line: 204, type: !27)
!1018 = !DILocation(line: 204, column: 48, scope: !1014)
!1019 = !DILocalVariable(name: "name", arg: 2, scope: !1014, file: !1, line: 204, type: !9)
!1020 = !DILocation(line: 204, column: 56, scope: !1014)
!1021 = !DILocation(line: 209, column: 6, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1014, file: !1, line: 209, column: 6)
!1023 = !DILocation(line: 209, column: 10, scope: !1022)
!1024 = !DILocation(line: 209, column: 17, scope: !1022)
!1025 = !DILocation(line: 209, column: 23, scope: !1022)
!1026 = !DILocation(line: 209, column: 6, scope: !1014)
!1027 = !DILocation(line: 210, column: 3, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 209, column: 47)
!1029 = !DILocation(line: 213, column: 19, scope: !1014)
!1030 = !DILocation(line: 213, column: 2, scope: !1014)
!1031 = !DILocation(line: 213, column: 6, scope: !1014)
!1032 = !DILocation(line: 213, column: 12, scope: !1014)
!1033 = !DILocation(line: 213, column: 17, scope: !1014)
!1034 = !DILocation(line: 214, column: 1, scope: !1014)
!1035 = distinct !DISubprogram(name: "kmem_cache_zalloc", scope: !1036, file: !1036, line: 652, type: !1037, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1036 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!122, !916, !15}
!1039 = !DILocalVariable(name: "k", arg: 1, scope: !1035, file: !1036, line: 652, type: !916)
!1040 = !DILocation(line: 652, column: 58, scope: !1035)
!1041 = !DILocalVariable(name: "flags", arg: 2, scope: !1035, file: !1036, line: 652, type: !15)
!1042 = !DILocation(line: 652, column: 67, scope: !1035)
!1043 = !DILocation(line: 654, column: 26, scope: !1035)
!1044 = !DILocation(line: 654, column: 29, scope: !1035)
!1045 = !DILocation(line: 654, column: 35, scope: !1035)
!1046 = !DILocation(line: 654, column: 9, scope: !1035)
!1047 = !DILocation(line: 654, column: 2, scope: !1035)
!1048 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1049, file: !1049, line: 646, type: !1050, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1049 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!17}
!1052 = !DILocalVariable(name: "__ret", scope: !1053, file: !1049, line: 648, type: !17)
!1053 = distinct !DILexicalBlock(scope: !1048, file: !1049, line: 648, column: 9)
!1054 = !DILocation(line: 648, column: 9, scope: !1053)
!1055 = !DILocalVariable(name: "__edi", scope: !1053, file: !1049, line: 648, type: !17)
!1056 = !DILocalVariable(name: "__esi", scope: !1053, file: !1049, line: 648, type: !17)
!1057 = !DILocalVariable(name: "__edx", scope: !1053, file: !1049, line: 648, type: !17)
!1058 = !DILocalVariable(name: "__ecx", scope: !1053, file: !1049, line: 648, type: !17)
!1059 = !DILocalVariable(name: "__eax", scope: !1053, file: !1049, line: 648, type: !17)
!1060 = !DILocation(line: 648, column: 9, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !1049, line: 648, column: 9)
!1062 = distinct !DILexicalBlock(scope: !1053, file: !1049, line: 648, column: 9)
!1063 = !{i32 -2145788241, i32 -2145785926, i32 -2145785692, i32 -2145785641, i32 -2145785613, i32 -2145785588, i32 -2145785904, i32 -2145785891, i32 -2145785453, i32 -2145785334, i32 -2145785799, i32 -2145785772, i32 -2145785744, i32 -2145785714}
!1064 = !DILocalVariable(name: "__mask", scope: !1065, file: !1049, line: 648, type: !17)
!1065 = distinct !DILexicalBlock(scope: !1061, file: !1049, line: 648, column: 9)
!1066 = !DILocation(line: 648, column: 9, scope: !1065)
!1067 = !DILocation(line: 648, column: 9, scope: !1062)
!1068 = !DILocation(line: 648, column: 2, scope: !1048)
