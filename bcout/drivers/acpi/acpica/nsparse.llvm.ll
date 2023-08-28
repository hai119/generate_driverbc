; ModuleID = '../bcout/drivers/acpi/acpica/nsparse.llvm.bc'
source_filename = "drivers/acpi/acpica/nsparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_evaluate_info = type { %struct.acpi_namespace_node*, i8*, %union.acpi_operand_object**, %struct.acpi_namespace_node*, %union.acpi_operand_object*, i8*, %union.acpi_predefined_info*, %union.acpi_operand_object*, %union.acpi_operand_object*, i32, i32, i16, i16, i8, i8, i8 }
%union.acpi_predefined_info = type { %struct.acpi_name_info }
%struct.acpi_name_info = type <{ [4 x i8], i16, i8 }>
%struct.acpi_object_method = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %union.acpi_operand_object*, %union.acpi_operand_object*, i8*, %union.anon, i32, i16, i8 }
%union.anon = type { i32 (%struct.acpi_walk_state*)* }

@_acpi_module_name = internal constant [8 x i8] c"nsparse\00", align 1, !dbg !0
@.str = private unnamed_addr constant [5 x i8] c"OSDT\00", align 1
@acpi_gbl_root_node = external dso_local global %struct.acpi_namespace_node*, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_execute_table(i32 %table_index, %struct.acpi_namespace_node* %start_node) #0 !dbg !51 {
entry:
  %retval = alloca i32, align 4
  %table_index.addr = alloca i32, align 4
  %start_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  %table = alloca %struct.acpi_table_header*, align 8
  %owner_id = alloca i16, align 2
  %info = alloca %struct.acpi_evaluate_info*, align 8
  %aml_length = alloca i32, align 4
  %aml_start = alloca i8*, align 8
  %method_obj = alloca %union.acpi_operand_object*, align 8
  store i32 %table_index, i32* %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %table_index.addr, metadata !811, metadata !DIExpression()), !dbg !812
  store %struct.acpi_namespace_node* %start_node, %struct.acpi_namespace_node** %start_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %start_node.addr, metadata !813, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.declare(metadata i32* %status, metadata !815, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table, metadata !817, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.declare(metadata i16* %owner_id, metadata !835, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info, metadata !837, metadata !DIExpression()), !dbg !903
  store %struct.acpi_evaluate_info* null, %struct.acpi_evaluate_info** %info, align 8, !dbg !903
  call void @llvm.dbg.declare(metadata i32* %aml_length, metadata !904, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.declare(metadata i8** %aml_start, metadata !906, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %method_obj, metadata !908, metadata !DIExpression()), !dbg !909
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %method_obj, align 8, !dbg !909
  %0 = load i32, i32* %table_index.addr, align 4, !dbg !910
  %call = call i32 @acpi_get_table_by_index(i32 %0, %struct.acpi_table_header** %table) #8, !dbg !911
  store i32 %call, i32* %status, align 4, !dbg !912
  %1 = load i32, i32* %status, align 4, !dbg !913
  %tobool = icmp ne i32 %1, 0, !dbg !913
  br i1 %tobool, label %if.then, label %if.end, !dbg !915

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !916
  store i32 %2, i32* %retval, align 4, !dbg !916
  br label %return, !dbg !916

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !918
  %length = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %3, i32 0, i32 1, !dbg !920
  %4 = load i32, i32* %length, align 1, !dbg !920
  %conv = zext i32 %4 to i64, !dbg !918
  %cmp = icmp ult i64 %conv, 36, !dbg !921
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !922

if.then2:                                         ; preds = %if.end
  store i32 8194, i32* %retval, align 4, !dbg !923
  br label %return, !dbg !923

if.end3:                                          ; preds = %if.end
  %5 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !925
  %6 = bitcast %struct.acpi_table_header* %5 to i8*, !dbg !926
  %add.ptr = getelementptr i8, i8* %6, i64 36, !dbg !927
  store i8* %add.ptr, i8** %aml_start, align 8, !dbg !928
  %7 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !929
  %length4 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %7, i32 0, i32 1, !dbg !930
  %8 = load i32, i32* %length4, align 1, !dbg !930
  %conv5 = zext i32 %8 to i64, !dbg !929
  %sub = sub i64 %conv5, 36, !dbg !931
  %conv6 = trunc i64 %sub to i32, !dbg !929
  store i32 %conv6, i32* %aml_length, align 4, !dbg !932
  %9 = load i32, i32* %table_index.addr, align 4, !dbg !933
  %call7 = call i32 @acpi_tb_get_owner_id(i32 %9, i16* %owner_id) #8, !dbg !934
  store i32 %call7, i32* %status, align 4, !dbg !935
  %10 = load i32, i32* %status, align 4, !dbg !936
  %tobool8 = icmp ne i32 %10, 0, !dbg !936
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !938

if.then9:                                         ; preds = %if.end3
  %11 = load i32, i32* %status, align 4, !dbg !939
  store i32 %11, i32* %retval, align 4, !dbg !939
  br label %return, !dbg !939

if.end10:                                         ; preds = %if.end3
  %call11 = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 77, i32 16, i32 8) #8, !dbg !941
  store %union.acpi_operand_object* %call11, %union.acpi_operand_object** %method_obj, align 8, !dbg !942
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_obj, align 8, !dbg !943
  %tobool12 = icmp ne %union.acpi_operand_object* %12, null, !dbg !943
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !945

if.then13:                                        ; preds = %if.end10
  store i32 4, i32* %retval, align 4, !dbg !946
  br label %return, !dbg !946

if.end14:                                         ; preds = %if.end10
  %call15 = call i8* @acpi_os_allocate_zeroed(i64 88) #8, !dbg !948
  %13 = bitcast i8* %call15 to %struct.acpi_evaluate_info*, !dbg !948
  store %struct.acpi_evaluate_info* %13, %struct.acpi_evaluate_info** %info, align 8, !dbg !949
  %14 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !950
  %tobool16 = icmp ne %struct.acpi_evaluate_info* %14, null, !dbg !950
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !952

if.then17:                                        ; preds = %if.end14
  store i32 4, i32* %status, align 4, !dbg !953
  br label %cleanup, !dbg !955

if.end18:                                         ; preds = %if.end14
  %15 = load i8*, i8** %aml_start, align 8, !dbg !956
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_obj, align 8, !dbg !957
  %method = bitcast %union.acpi_operand_object* %16 to %struct.acpi_object_method*, !dbg !958
  %aml_start19 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method, i32 0, i32 10, !dbg !959
  store i8* %15, i8** %aml_start19, align 8, !dbg !960
  %17 = load i32, i32* %aml_length, align 4, !dbg !961
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_obj, align 8, !dbg !962
  %method20 = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_method*, !dbg !963
  %aml_length21 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method20, i32 0, i32 12, !dbg !964
  store i32 %17, i32* %aml_length21, align 8, !dbg !965
  %19 = load i16, i16* %owner_id, align 2, !dbg !966
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_obj, align 8, !dbg !967
  %method22 = bitcast %union.acpi_operand_object* %20 to %struct.acpi_object_method*, !dbg !968
  %owner_id23 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method22, i32 0, i32 13, !dbg !969
  store i16 %19, i16* %owner_id23, align 4, !dbg !970
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_obj, align 8, !dbg !971
  %method24 = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_method*, !dbg !972
  %info_flags = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method24, i32 0, i32 5, !dbg !973
  %22 = load i8, i8* %info_flags, align 1, !dbg !974
  %conv25 = zext i8 %22 to i32, !dbg !974
  %or = or i32 %conv25, 1, !dbg !974
  %conv26 = trunc i32 %or to i8, !dbg !974
  store i8 %conv26, i8* %info_flags, align 1, !dbg !974
  %23 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !975
  %pass_number = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %23, i32 0, i32 13, !dbg !976
  store i8 3, i8* %pass_number, align 4, !dbg !977
  %24 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %start_node.addr, align 8, !dbg !978
  %25 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !979
  %node = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %25, i32 0, i32 3, !dbg !980
  store %struct.acpi_namespace_node* %24, %struct.acpi_namespace_node** %node, align 8, !dbg !981
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_obj, align 8, !dbg !982
  %27 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !983
  %obj_desc = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %27, i32 0, i32 4, !dbg !984
  store %union.acpi_operand_object* %26, %union.acpi_operand_object** %obj_desc, align 8, !dbg !985
  %28 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !986
  %node27 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %28, i32 0, i32 3, !dbg !987
  %29 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node27, align 8, !dbg !987
  %flags = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %29, i32 0, i32 3, !dbg !988
  %30 = load i16, i16* %flags, align 2, !dbg !988
  %31 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !989
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %31, i32 0, i32 12, !dbg !990
  store i16 %30, i16* %node_flags, align 2, !dbg !991
  %32 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !992
  %node28 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %32, i32 0, i32 3, !dbg !993
  %33 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node28, align 8, !dbg !993
  %call29 = call i8* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node* %33, i8 zeroext 1) #8, !dbg !994
  %34 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !995
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %34, i32 0, i32 5, !dbg !996
  store i8* %call29, i8** %full_pathname, align 8, !dbg !997
  %35 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !998
  %full_pathname30 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %35, i32 0, i32 5, !dbg !1000
  %36 = load i8*, i8** %full_pathname30, align 8, !dbg !1000
  %tobool31 = icmp ne i8* %36, null, !dbg !998
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !1001

if.then32:                                        ; preds = %if.end18
  store i32 4, i32* %status, align 4, !dbg !1002
  br label %cleanup, !dbg !1004

if.end33:                                         ; preds = %if.end18
  %37 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1005
  %call34 = call i32 @acpi_ps_execute_table(%struct.acpi_evaluate_info* %37) #8, !dbg !1006
  store i32 %call34, i32* %status, align 4, !dbg !1007
  br label %cleanup, !dbg !1008

cleanup:                                          ; preds = %if.end33, %if.then32, %if.then17
  call void @llvm.dbg.label(metadata !1009), !dbg !1010
  %38 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1011
  %tobool35 = icmp ne %struct.acpi_evaluate_info* %38, null, !dbg !1011
  br i1 %tobool35, label %if.then36, label %if.end39, !dbg !1013

if.then36:                                        ; preds = %cleanup
  %39 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1014
  %full_pathname37 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %39, i32 0, i32 5, !dbg !1014
  %40 = load i8*, i8** %full_pathname37, align 8, !dbg !1014
  call void @acpi_os_free(i8* %40) #8, !dbg !1014
  %41 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1016
  %full_pathname38 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %41, i32 0, i32 5, !dbg !1017
  store i8* null, i8** %full_pathname38, align 8, !dbg !1018
  br label %if.end39, !dbg !1019

if.end39:                                         ; preds = %if.then36, %cleanup
  %42 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1020
  %43 = bitcast %struct.acpi_evaluate_info* %42 to i8*, !dbg !1020
  call void @acpi_os_free(i8* %43) #8, !dbg !1020
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_obj, align 8, !dbg !1021
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %44) #8, !dbg !1022
  %45 = load i32, i32* %status, align 4, !dbg !1023
  store i32 %45, i32* %retval, align 4, !dbg !1023
  br label %return, !dbg !1023

return:                                           ; preds = %if.end39, %if.then13, %if.then9, %if.then2, %if.then
  %46 = load i32, i32* %retval, align 4, !dbg !1024
  ret i32 %46, !dbg !1024
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_table_by_index(i32, %struct.acpi_table_header**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_get_owner_id(i32, i16*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8*, i32, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !1025 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1029, metadata !DIExpression()), !dbg !1035
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1039, metadata !DIExpression()), !dbg !1040
  %0 = load i64, i64* %size.addr, align 8, !dbg !1041
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1042, metadata !DIExpression()), !dbg !1043
  br label %do.body, !dbg !1043

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1044, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1048, metadata !DIExpression()), !dbg !1047
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1047
  %conv = zext i1 %cmp to i32, !dbg !1047
  store i32 1, i32* %tmp, align 4, !dbg !1047
  %1 = load i32, i32* %tmp, align 4, !dbg !1047
  %call = call i64 @arch_local_save_flags() #8, !dbg !1049
  store i64 %call, i64* %_flags, align 8, !dbg !1049
  br label %do.end, !dbg !1049

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1050, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1053, metadata !DIExpression()), !dbg !1052
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1052
  %conv6 = zext i1 %cmp5 to i32, !dbg !1052
  store i32 1, i32* %tmp7, align 4, !dbg !1052
  %2 = load i32, i32* %tmp7, align 4, !dbg !1052
  %3 = load i64, i64* %_flags, align 8, !dbg !1054
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1055
  %and.i = and i64 %4, 512, !dbg !1056
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1057
  %lnot.i = xor i1 %tobool.i, true, !dbg !1057
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1057
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1054
  %5 = load i32, i32* %tmp8, align 4, !dbg !1054
  store i32 %5, i32* %tmp1, align 4, !dbg !1049
  %6 = load i32, i32* %tmp1, align 4, !dbg !1043
  %tobool = icmp ne i32 %6, 0, !dbg !1058
  %7 = zext i1 %tobool to i64, !dbg !1058
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1058
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #8, !dbg !1059
  ret i8* %call10, !dbg !1060
}

; Function Attrs: noredzone
declare dso_local i8* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node*, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ps_execute_table(%struct.acpi_evaluate_info*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1061 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1064, metadata !DIExpression()), !dbg !1065
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1066
  call void @kfree(i8* %0) #8, !dbg !1067
  ret void, !dbg !1068
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_one_complete_parse(i32 %pass_number, i32 %table_index, %struct.acpi_namespace_node* %start_node) #0 !dbg !1069 {
entry:
  %retval = alloca i32, align 4
  %pass_number.addr = alloca i32, align 4
  %table_index.addr = alloca i32, align 4
  %start_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %parse_root = alloca %union.acpi_parse_object*, align 8
  %status = alloca i32, align 4
  %aml_length = alloca i32, align 4
  %aml_start = alloca i8*, align 8
  %walk_state = alloca %struct.acpi_walk_state*, align 8
  %table = alloca %struct.acpi_table_header*, align 8
  %owner_id = alloca i16, align 2
  store i32 %pass_number, i32* %pass_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pass_number.addr, metadata !1072, metadata !DIExpression()), !dbg !1073
  store i32 %table_index, i32* %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %table_index.addr, metadata !1074, metadata !DIExpression()), !dbg !1075
  store %struct.acpi_namespace_node* %start_node, %struct.acpi_namespace_node** %start_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %start_node.addr, metadata !1076, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %parse_root, metadata !1078, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1080, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.declare(metadata i32* %aml_length, metadata !1082, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.declare(metadata i8** %aml_start, metadata !1084, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state, metadata !1086, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table, metadata !1088, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.declare(metadata i16* %owner_id, metadata !1090, metadata !DIExpression()), !dbg !1091
  %0 = load i32, i32* %table_index.addr, align 4, !dbg !1092
  %call = call i32 @acpi_get_table_by_index(i32 %0, %struct.acpi_table_header** %table) #8, !dbg !1093
  store i32 %call, i32* %status, align 4, !dbg !1094
  %1 = load i32, i32* %status, align 4, !dbg !1095
  %tobool = icmp ne i32 %1, 0, !dbg !1095
  br i1 %tobool, label %if.then, label %if.end, !dbg !1097

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !1098
  store i32 %2, i32* %retval, align 4, !dbg !1098
  br label %return, !dbg !1098

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !1100
  %length = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %3, i32 0, i32 1, !dbg !1102
  %4 = load i32, i32* %length, align 1, !dbg !1102
  %conv = zext i32 %4 to i64, !dbg !1100
  %cmp = icmp ult i64 %conv, 36, !dbg !1103
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1104

if.then2:                                         ; preds = %if.end
  store i32 8194, i32* %retval, align 4, !dbg !1105
  br label %return, !dbg !1105

if.end3:                                          ; preds = %if.end
  %5 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !1107
  %6 = bitcast %struct.acpi_table_header* %5 to i8*, !dbg !1108
  %add.ptr = getelementptr i8, i8* %6, i64 36, !dbg !1109
  store i8* %add.ptr, i8** %aml_start, align 8, !dbg !1110
  %7 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !1111
  %length4 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %7, i32 0, i32 1, !dbg !1112
  %8 = load i32, i32* %length4, align 1, !dbg !1112
  %conv5 = zext i32 %8 to i64, !dbg !1111
  %sub = sub i64 %conv5, 36, !dbg !1113
  %conv6 = trunc i64 %sub to i32, !dbg !1111
  store i32 %conv6, i32* %aml_length, align 4, !dbg !1114
  %9 = load i32, i32* %table_index.addr, align 4, !dbg !1115
  %call7 = call i32 @acpi_tb_get_owner_id(i32 %9, i16* %owner_id) #8, !dbg !1116
  store i32 %call7, i32* %status, align 4, !dbg !1117
  %10 = load i32, i32* %status, align 4, !dbg !1118
  %tobool8 = icmp ne i32 %10, 0, !dbg !1118
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1120

if.then9:                                         ; preds = %if.end3
  %11 = load i32, i32* %status, align 4, !dbg !1121
  store i32 %11, i32* %retval, align 4, !dbg !1121
  br label %return, !dbg !1121

if.end10:                                         ; preds = %if.end3
  %12 = load i8*, i8** %aml_start, align 8, !dbg !1123
  %call11 = call %union.acpi_parse_object* @acpi_ps_create_scope_op(i8* %12) #8, !dbg !1124
  store %union.acpi_parse_object* %call11, %union.acpi_parse_object** %parse_root, align 8, !dbg !1125
  %13 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parse_root, align 8, !dbg !1126
  %tobool12 = icmp ne %union.acpi_parse_object* %13, null, !dbg !1126
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !1128

if.then13:                                        ; preds = %if.end10
  store i32 4, i32* %retval, align 4, !dbg !1129
  br label %return, !dbg !1129

if.end14:                                         ; preds = %if.end10
  %14 = load i16, i16* %owner_id, align 2, !dbg !1131
  %call15 = call %struct.acpi_walk_state* @acpi_ds_create_walk_state(i16 zeroext %14, %union.acpi_parse_object* null, %union.acpi_operand_object* null, %struct.acpi_thread_state* null) #8, !dbg !1132
  store %struct.acpi_walk_state* %call15, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1133
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1134
  %tobool16 = icmp ne %struct.acpi_walk_state* %15, null, !dbg !1134
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !1136

if.then17:                                        ; preds = %if.end14
  %16 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parse_root, align 8, !dbg !1137
  call void @acpi_ps_free_op(%union.acpi_parse_object* %16) #8, !dbg !1139
  store i32 4, i32* %retval, align 4, !dbg !1140
  br label %return, !dbg !1140

if.end18:                                         ; preds = %if.end14
  %17 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1141
  %18 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parse_root, align 8, !dbg !1142
  %19 = load i8*, i8** %aml_start, align 8, !dbg !1143
  %20 = load i32, i32* %aml_length, align 4, !dbg !1144
  %21 = load i32, i32* %pass_number.addr, align 4, !dbg !1145
  %conv19 = trunc i32 %21 to i8, !dbg !1146
  %call20 = call i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state* %17, %union.acpi_parse_object* %18, %struct.acpi_namespace_node* null, i8* %19, i32 %20, %struct.acpi_evaluate_info* null, i8 zeroext %conv19) #8, !dbg !1147
  store i32 %call20, i32* %status, align 4, !dbg !1148
  %22 = load i32, i32* %status, align 4, !dbg !1149
  %tobool21 = icmp ne i32 %22, 0, !dbg !1149
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !1151

if.then22:                                        ; preds = %if.end18
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1152
  call void @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %23) #8, !dbg !1154
  br label %cleanup, !dbg !1155

if.end23:                                         ; preds = %if.end18
  %24 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !1156
  %signature = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %24, i32 0, i32 0, !dbg !1156
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %signature, i64 0, i64 0, !dbg !1156
  %25 = bitcast i8* %arraydecay to i32*, !dbg !1156
  %26 = load i32, i32* %25, align 4, !dbg !1156
  %27 = load i32, i32* bitcast ([5 x i8]* @.str to i32*), align 4, !dbg !1156
  %cmp24 = icmp eq i32 %26, %27, !dbg !1156
  br i1 %cmp24, label %land.lhs.true, label %if.end29, !dbg !1158

land.lhs.true:                                    ; preds = %if.end23
  %28 = load i32, i32* %pass_number.addr, align 4, !dbg !1159
  %cmp26 = icmp eq i32 %28, 1, !dbg !1160
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !1161

if.then28:                                        ; preds = %land.lhs.true
  %29 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1162
  %namespace_override = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %29, i32 0, i32 13, !dbg !1164
  store i8 1, i8* %namespace_override, align 1, !dbg !1165
  br label %if.end29, !dbg !1166

if.end29:                                         ; preds = %if.then28, %land.lhs.true, %if.end23
  %30 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %start_node.addr, align 8, !dbg !1167
  %tobool30 = icmp ne %struct.acpi_namespace_node* %30, null, !dbg !1167
  br i1 %tobool30, label %land.lhs.true31, label %if.end39, !dbg !1169

land.lhs.true31:                                  ; preds = %if.end29
  %31 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %start_node.addr, align 8, !dbg !1170
  %32 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !1171
  %cmp32 = icmp ne %struct.acpi_namespace_node* %31, %32, !dbg !1172
  br i1 %cmp32, label %if.then34, label %if.end39, !dbg !1173

if.then34:                                        ; preds = %land.lhs.true31
  %33 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %start_node.addr, align 8, !dbg !1174
  %34 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1176
  %call35 = call i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node* %33, i32 8, %struct.acpi_walk_state* %34) #8, !dbg !1177
  store i32 %call35, i32* %status, align 4, !dbg !1178
  %35 = load i32, i32* %status, align 4, !dbg !1179
  %tobool36 = icmp ne i32 %35, 0, !dbg !1179
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !1181

if.then37:                                        ; preds = %if.then34
  %36 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1182
  call void @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %36) #8, !dbg !1184
  br label %cleanup, !dbg !1185

if.end38:                                         ; preds = %if.then34
  br label %if.end39, !dbg !1186

if.end39:                                         ; preds = %if.end38, %land.lhs.true31, %if.end29
  call void @acpi_ex_enter_interpreter() #8, !dbg !1187
  %37 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1188
  %call40 = call i32 @acpi_ps_parse_aml(%struct.acpi_walk_state* %37) #8, !dbg !1189
  store i32 %call40, i32* %status, align 4, !dbg !1190
  call void @acpi_ex_exit_interpreter() #8, !dbg !1191
  br label %cleanup, !dbg !1191

cleanup:                                          ; preds = %if.end39, %if.then37, %if.then22
  call void @llvm.dbg.label(metadata !1192), !dbg !1193
  %38 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parse_root, align 8, !dbg !1194
  call void @acpi_ps_delete_parse_tree(%union.acpi_parse_object* %38) #8, !dbg !1195
  %39 = load i32, i32* %status, align 4, !dbg !1196
  store i32 %39, i32* %retval, align 4, !dbg !1196
  br label %return, !dbg !1196

return:                                           ; preds = %cleanup, %if.then17, %if.then13, %if.then9, %if.then2, %if.then
  %40 = load i32, i32* %retval, align 4, !dbg !1197
  ret i32 %40, !dbg !1197
}

; Function Attrs: noredzone
declare dso_local %union.acpi_parse_object* @acpi_ps_create_scope_op(i8*) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_walk_state* @acpi_ds_create_walk_state(i16 zeroext, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_thread_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ps_free_op(%union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, i8*, i32, %struct.acpi_evaluate_info*, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ds_delete_walk_state(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node*, i32, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_enter_interpreter() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ps_parse_aml(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_exit_interpreter() #2

; Function Attrs: noredzone
declare dso_local void @acpi_ps_delete_parse_tree(%union.acpi_parse_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_parse_table(i32 %table_index, %struct.acpi_namespace_node* %start_node) #0 !dbg !1198 {
entry:
  %table_index.addr = alloca i32, align 4
  %start_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  store i32 %table_index, i32* %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %table_index.addr, metadata !1199, metadata !DIExpression()), !dbg !1200
  store %struct.acpi_namespace_node* %start_node, %struct.acpi_namespace_node** %start_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %start_node.addr, metadata !1201, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1203, metadata !DIExpression()), !dbg !1204
  %0 = load i32, i32* %table_index.addr, align 4, !dbg !1205
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %start_node.addr, align 8, !dbg !1206
  %call = call i32 @acpi_ns_execute_table(i32 %0, %struct.acpi_namespace_node* %1) #8, !dbg !1207
  store i32 %call, i32* %status, align 4, !dbg !1208
  %2 = load i32, i32* %status, align 4, !dbg !1209
  ret i32 %2, !dbg !1209
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1210 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1217, metadata !DIExpression()), !dbg !1224
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1230, metadata !DIExpression()), !dbg !1231
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1232, metadata !DIExpression()), !dbg !1233
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1234, metadata !DIExpression()), !dbg !1235
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1236, metadata !DIExpression()), !dbg !1240
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1242, metadata !DIExpression()), !dbg !1246
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1248, metadata !DIExpression()), !dbg !1252
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1257, metadata !DIExpression()), !dbg !1258
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1259, metadata !DIExpression()), !dbg !1260
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1261, metadata !DIExpression()), !dbg !1262
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1263, metadata !DIExpression()), !dbg !1264
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1265, metadata !DIExpression()), !dbg !1266
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1267, metadata !DIExpression()), !dbg !1268
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1269, metadata !DIExpression()), !dbg !1270
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1271, metadata !DIExpression()), !dbg !1272
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1273, metadata !DIExpression()), !dbg !1274
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1275, metadata !DIExpression()), !dbg !1276
  %0 = load i64, i64* %size.addr, align 8, !dbg !1277
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1278
  %or = or i32 %1, 256, !dbg !1279
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1280
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !1281
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1282

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1283
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1284
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1285

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1286
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1287
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1288
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !1289
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1266
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1290
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1291
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1292
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1293
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1294
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1295
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !1296
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1296
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1296
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1296
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !1296
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1297
  br label %kmalloc.exit, !dbg !1297

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1298
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1299
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1299
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1301

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1302
  br label %kmalloc_index.exit.i, !dbg !1302

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1303
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1305
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1306

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1307
  br label %kmalloc_index.exit.i, !dbg !1307

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1308
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1310
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1311

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1312
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1313
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1314

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1315
  br label %kmalloc_index.exit.i, !dbg !1315

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1316
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1318
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1319

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1320
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1321
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1322

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1323
  br label %kmalloc_index.exit.i, !dbg !1323

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1324
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1326
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1327

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1328
  br label %kmalloc_index.exit.i, !dbg !1328

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1329
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1331
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1332

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1333
  br label %kmalloc_index.exit.i, !dbg !1333

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1334
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1336
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1337

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1338
  br label %kmalloc_index.exit.i, !dbg !1338

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1339
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1341
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1342

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1343
  br label %kmalloc_index.exit.i, !dbg !1343

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1344
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1346
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1347

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1348
  br label %kmalloc_index.exit.i, !dbg !1348

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1349
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1351
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1352

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1353
  br label %kmalloc_index.exit.i, !dbg !1353

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1354
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1356
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1357

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1358
  br label %kmalloc_index.exit.i, !dbg !1358

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1359
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1361
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1362

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1363
  br label %kmalloc_index.exit.i, !dbg !1363

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1364
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1366
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1367

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1368
  br label %kmalloc_index.exit.i, !dbg !1368

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1369
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1371
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1372

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1373
  br label %kmalloc_index.exit.i, !dbg !1373

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1374
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1376
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1377

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1378
  br label %kmalloc_index.exit.i, !dbg !1378

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1379
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1381
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1382

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1383
  br label %kmalloc_index.exit.i, !dbg !1383

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1384
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1386
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1387

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1388
  br label %kmalloc_index.exit.i, !dbg !1388

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1389
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1391
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1392

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1393
  br label %kmalloc_index.exit.i, !dbg !1393

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1394
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1396
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1397

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1398
  br label %kmalloc_index.exit.i, !dbg !1398

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1399
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1401
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1402

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1403
  br label %kmalloc_index.exit.i, !dbg !1403

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1404
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1406
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1407

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1408
  br label %kmalloc_index.exit.i, !dbg !1408

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1409
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1411
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1412

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1413
  br label %kmalloc_index.exit.i, !dbg !1413

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1414
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1416
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1417

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1418
  br label %kmalloc_index.exit.i, !dbg !1418

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1419
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1421
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1422

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1423
  br label %kmalloc_index.exit.i, !dbg !1423

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1424
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1426
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1427

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1428
  br label %kmalloc_index.exit.i, !dbg !1428

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1429
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1431
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1432

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1433
  br label %kmalloc_index.exit.i, !dbg !1433

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1434
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1436
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1437

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1438
  br label %kmalloc_index.exit.i, !dbg !1438

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1439
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1441
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1442

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1443
  br label %kmalloc_index.exit.i, !dbg !1443

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !1444, !srcloc !1447
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #7, !dbg !1448, !srcloc !1451
  unreachable, !dbg !1452

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1453
  store i32 %45, i32* %index.i, align 4, !dbg !1454
  %46 = load i32, i32* %index.i, align 4, !dbg !1455
  %tobool.i = icmp ne i32 %46, 0, !dbg !1455
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1457

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1458
  br label %kmalloc.exit, !dbg !1458

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1459
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1460
  %and.i.i = and i32 %48, 17, !dbg !1460
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1460
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1460
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1460
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1460
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1462

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1463
  br label %kmalloc_type.exit.i, !dbg !1463

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1464
  %and2.i.i = and i32 %49, 1, !dbg !1465
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1464
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1464
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1464
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1466
  br label %kmalloc_type.exit.i, !dbg !1466

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1467
  %idxprom.i = zext i32 %51 to i64, !dbg !1468
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1468
  %52 = load i32, i32* %index.i, align 4, !dbg !1469
  %idxprom6.i = zext i32 %52 to i64, !dbg !1468
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1468
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1468
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1470
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1471
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1472
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1473
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !1474
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1474
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1474
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1474
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !1474
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1235
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1475
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1476
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1477
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1478
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !1479
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1480
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1481
  store i8* %62, i8** %retval.i, align 8, !dbg !1482
  br label %kmalloc.exit, !dbg !1482

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1483
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1484
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !1485
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1485
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1485
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1485
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !1485
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1486
  br label %kmalloc.exit, !dbg !1486

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1487
  ret i8* %65, !dbg !1488
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1489 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1493, metadata !DIExpression()), !dbg !1495
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1496, metadata !DIExpression()), !dbg !1495
  %0 = load i64, i64* %__edi, align 8, !dbg !1495
  store i64 %0, i64* %__edi, align 8, !dbg !1495
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1497, metadata !DIExpression()), !dbg !1495
  %1 = load i64, i64* %__esi, align 8, !dbg !1495
  store i64 %1, i64* %__esi, align 8, !dbg !1495
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1498, metadata !DIExpression()), !dbg !1495
  %2 = load i64, i64* %__edx, align 8, !dbg !1495
  store i64 %2, i64* %__edx, align 8, !dbg !1495
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1499, metadata !DIExpression()), !dbg !1495
  %3 = load i64, i64* %__ecx, align 8, !dbg !1495
  store i64 %3, i64* %__ecx, align 8, !dbg !1495
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1500, metadata !DIExpression()), !dbg !1495
  %4 = load i64, i64* %__eax, align 8, !dbg !1495
  store i64 %4, i64* %__eax, align 8, !dbg !1495
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1495
  %6 = call i64 @llvm.read_register.i64(metadata !45), !dbg !1501
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !1501, !srcloc !1504
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1501
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1501
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1501
  call void @llvm.write_register.i64(metadata !45, i64 %asmresult1), !dbg !1501
  %8 = load i64, i64* %__eax, align 8, !dbg !1501
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1505, metadata !DIExpression()), !dbg !1507
  store i64 -1, i64* %__mask, align 8, !dbg !1507
  %9 = load i64, i64* %__mask, align 8, !dbg !1507
  store i64 %9, i64* %tmp, align 8, !dbg !1507
  %10 = load i64, i64* %tmp, align 8, !dbg !1507
  %and = and i64 %8, %10, !dbg !1501
  store i64 %and, i64* %__ret, align 8, !dbg !1501
  %11 = load i64, i64* %__ret, align 8, !dbg !1495
  store i64 %11, i64* %tmp2, align 8, !dbg !1508
  %12 = load i64, i64* %tmp2, align 8, !dbg !1495
  ret i64 %12, !dbg !1509
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !1510 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1512, metadata !DIExpression()), !dbg !1517
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1519, metadata !DIExpression()), !dbg !1520
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1521, metadata !DIExpression()), !dbg !1522
  %0 = load i64, i64* %size.addr, align 8, !dbg !1523
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1525
  br i1 %1, label %if.then, label %if.end447, !dbg !1526

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1527
  %tobool = icmp ne i64 %2, 0, !dbg !1527
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1530

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1531
  br label %return, !dbg !1531

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1532
  %cmp = icmp ult i64 %3, 4096, !dbg !1534
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1535

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1536
  br label %return, !dbg !1536

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub = sub i64 %4, 1, !dbg !1537
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1537
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1537

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub4 = sub i64 %6, 1, !dbg !1537
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1537
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1537

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub6 = sub i64 %8, 1, !dbg !1537
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1537
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1537

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1537

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub9 = sub i64 %9, 1, !dbg !1537
  %and = and i64 %sub9, -9223372036854775808, !dbg !1537
  %tobool10 = icmp ne i64 %and, 0, !dbg !1537
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1537

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1537

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub13 = sub i64 %10, 1, !dbg !1537
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1537
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1537
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1537

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1537

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub18 = sub i64 %11, 1, !dbg !1537
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1537
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1537
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1537

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1537

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub23 = sub i64 %12, 1, !dbg !1537
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1537
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1537
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1537

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1537

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub28 = sub i64 %13, 1, !dbg !1537
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1537
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1537
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1537

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1537

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub33 = sub i64 %14, 1, !dbg !1537
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1537
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1537
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1537

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1537

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub38 = sub i64 %15, 1, !dbg !1537
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1537
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1537
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1537

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1537

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub43 = sub i64 %16, 1, !dbg !1537
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1537
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1537
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1537

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1537

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub48 = sub i64 %17, 1, !dbg !1537
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1537
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1537
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1537

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1537

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub53 = sub i64 %18, 1, !dbg !1537
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1537
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1537
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1537

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1537

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub58 = sub i64 %19, 1, !dbg !1537
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1537
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1537
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1537

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1537

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub63 = sub i64 %20, 1, !dbg !1537
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1537
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1537
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1537

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1537

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub68 = sub i64 %21, 1, !dbg !1537
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1537
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1537
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1537

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1537

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub73 = sub i64 %22, 1, !dbg !1537
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1537
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1537
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1537

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1537

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub78 = sub i64 %23, 1, !dbg !1537
  %and79 = and i64 %sub78, 562949953421312, !dbg !1537
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1537
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1537

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1537

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub83 = sub i64 %24, 1, !dbg !1537
  %and84 = and i64 %sub83, 281474976710656, !dbg !1537
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1537
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1537

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1537

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub88 = sub i64 %25, 1, !dbg !1537
  %and89 = and i64 %sub88, 140737488355328, !dbg !1537
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1537
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1537

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1537

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub93 = sub i64 %26, 1, !dbg !1537
  %and94 = and i64 %sub93, 70368744177664, !dbg !1537
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1537
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1537

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1537

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub98 = sub i64 %27, 1, !dbg !1537
  %and99 = and i64 %sub98, 35184372088832, !dbg !1537
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1537
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1537

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1537

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub103 = sub i64 %28, 1, !dbg !1537
  %and104 = and i64 %sub103, 17592186044416, !dbg !1537
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1537
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1537

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1537

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub108 = sub i64 %29, 1, !dbg !1537
  %and109 = and i64 %sub108, 8796093022208, !dbg !1537
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1537
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1537

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1537

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub113 = sub i64 %30, 1, !dbg !1537
  %and114 = and i64 %sub113, 4398046511104, !dbg !1537
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1537
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1537

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1537

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub118 = sub i64 %31, 1, !dbg !1537
  %and119 = and i64 %sub118, 2199023255552, !dbg !1537
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1537
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1537

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1537

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub123 = sub i64 %32, 1, !dbg !1537
  %and124 = and i64 %sub123, 1099511627776, !dbg !1537
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1537
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1537

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1537

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub128 = sub i64 %33, 1, !dbg !1537
  %and129 = and i64 %sub128, 549755813888, !dbg !1537
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1537
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1537

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1537

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub133 = sub i64 %34, 1, !dbg !1537
  %and134 = and i64 %sub133, 274877906944, !dbg !1537
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1537
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1537

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1537

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub138 = sub i64 %35, 1, !dbg !1537
  %and139 = and i64 %sub138, 137438953472, !dbg !1537
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1537
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1537

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1537

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub143 = sub i64 %36, 1, !dbg !1537
  %and144 = and i64 %sub143, 68719476736, !dbg !1537
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1537
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1537

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1537

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub148 = sub i64 %37, 1, !dbg !1537
  %and149 = and i64 %sub148, 34359738368, !dbg !1537
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1537
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1537

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1537

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub153 = sub i64 %38, 1, !dbg !1537
  %and154 = and i64 %sub153, 17179869184, !dbg !1537
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1537
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1537

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1537

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub158 = sub i64 %39, 1, !dbg !1537
  %and159 = and i64 %sub158, 8589934592, !dbg !1537
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1537
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1537

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1537

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub163 = sub i64 %40, 1, !dbg !1537
  %and164 = and i64 %sub163, 4294967296, !dbg !1537
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1537
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1537

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1537

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub168 = sub i64 %41, 1, !dbg !1537
  %and169 = and i64 %sub168, 2147483648, !dbg !1537
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1537
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1537

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1537

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub173 = sub i64 %42, 1, !dbg !1537
  %and174 = and i64 %sub173, 1073741824, !dbg !1537
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1537
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1537

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1537

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub178 = sub i64 %43, 1, !dbg !1537
  %and179 = and i64 %sub178, 536870912, !dbg !1537
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1537
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1537

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1537

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub183 = sub i64 %44, 1, !dbg !1537
  %and184 = and i64 %sub183, 268435456, !dbg !1537
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1537
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1537

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1537

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub188 = sub i64 %45, 1, !dbg !1537
  %and189 = and i64 %sub188, 134217728, !dbg !1537
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1537
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1537

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1537

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub193 = sub i64 %46, 1, !dbg !1537
  %and194 = and i64 %sub193, 67108864, !dbg !1537
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1537
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1537

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1537

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub198 = sub i64 %47, 1, !dbg !1537
  %and199 = and i64 %sub198, 33554432, !dbg !1537
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1537
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1537

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1537

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub203 = sub i64 %48, 1, !dbg !1537
  %and204 = and i64 %sub203, 16777216, !dbg !1537
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1537
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1537

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1537

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub208 = sub i64 %49, 1, !dbg !1537
  %and209 = and i64 %sub208, 8388608, !dbg !1537
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1537
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1537

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1537

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub213 = sub i64 %50, 1, !dbg !1537
  %and214 = and i64 %sub213, 4194304, !dbg !1537
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1537
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1537

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1537

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub218 = sub i64 %51, 1, !dbg !1537
  %and219 = and i64 %sub218, 2097152, !dbg !1537
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1537
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1537

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1537

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub223 = sub i64 %52, 1, !dbg !1537
  %and224 = and i64 %sub223, 1048576, !dbg !1537
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1537
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1537

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1537

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub228 = sub i64 %53, 1, !dbg !1537
  %and229 = and i64 %sub228, 524288, !dbg !1537
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1537
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1537

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1537

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub233 = sub i64 %54, 1, !dbg !1537
  %and234 = and i64 %sub233, 262144, !dbg !1537
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1537
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1537

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1537

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub238 = sub i64 %55, 1, !dbg !1537
  %and239 = and i64 %sub238, 131072, !dbg !1537
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1537
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1537

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1537

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub243 = sub i64 %56, 1, !dbg !1537
  %and244 = and i64 %sub243, 65536, !dbg !1537
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1537
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1537

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1537

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub248 = sub i64 %57, 1, !dbg !1537
  %and249 = and i64 %sub248, 32768, !dbg !1537
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1537
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1537

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1537

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub253 = sub i64 %58, 1, !dbg !1537
  %and254 = and i64 %sub253, 16384, !dbg !1537
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1537
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1537

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1537

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub258 = sub i64 %59, 1, !dbg !1537
  %and259 = and i64 %sub258, 8192, !dbg !1537
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1537
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1537

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1537

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub263 = sub i64 %60, 1, !dbg !1537
  %and264 = and i64 %sub263, 4096, !dbg !1537
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1537
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1537

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1537

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub268 = sub i64 %61, 1, !dbg !1537
  %and269 = and i64 %sub268, 2048, !dbg !1537
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1537
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1537

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1537

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub273 = sub i64 %62, 1, !dbg !1537
  %and274 = and i64 %sub273, 1024, !dbg !1537
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1537
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1537

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1537

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub278 = sub i64 %63, 1, !dbg !1537
  %and279 = and i64 %sub278, 512, !dbg !1537
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1537
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1537

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1537

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub283 = sub i64 %64, 1, !dbg !1537
  %and284 = and i64 %sub283, 256, !dbg !1537
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1537
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1537

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1537

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub288 = sub i64 %65, 1, !dbg !1537
  %and289 = and i64 %sub288, 128, !dbg !1537
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1537
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1537

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1537

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub293 = sub i64 %66, 1, !dbg !1537
  %and294 = and i64 %sub293, 64, !dbg !1537
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1537
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1537

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1537

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub298 = sub i64 %67, 1, !dbg !1537
  %and299 = and i64 %sub298, 32, !dbg !1537
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1537
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1537

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1537

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub303 = sub i64 %68, 1, !dbg !1537
  %and304 = and i64 %sub303, 16, !dbg !1537
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1537
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1537

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1537

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub308 = sub i64 %69, 1, !dbg !1537
  %and309 = and i64 %sub308, 8, !dbg !1537
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1537
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1537

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1537

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub313 = sub i64 %70, 1, !dbg !1537
  %and314 = and i64 %sub313, 4, !dbg !1537
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1537
  %71 = zext i1 %tobool315 to i64, !dbg !1537
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1537
  br label %cond.end, !dbg !1537

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1537
  br label %cond.end317, !dbg !1537

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1537
  br label %cond.end319, !dbg !1537

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1537
  br label %cond.end321, !dbg !1537

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1537
  br label %cond.end323, !dbg !1537

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1537
  br label %cond.end325, !dbg !1537

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1537
  br label %cond.end327, !dbg !1537

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1537
  br label %cond.end329, !dbg !1537

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1537
  br label %cond.end331, !dbg !1537

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1537
  br label %cond.end333, !dbg !1537

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1537
  br label %cond.end335, !dbg !1537

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1537
  br label %cond.end337, !dbg !1537

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1537
  br label %cond.end339, !dbg !1537

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1537
  br label %cond.end341, !dbg !1537

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1537
  br label %cond.end343, !dbg !1537

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1537
  br label %cond.end345, !dbg !1537

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1537
  br label %cond.end347, !dbg !1537

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1537
  br label %cond.end349, !dbg !1537

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1537
  br label %cond.end351, !dbg !1537

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1537
  br label %cond.end353, !dbg !1537

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1537
  br label %cond.end355, !dbg !1537

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1537
  br label %cond.end357, !dbg !1537

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1537
  br label %cond.end359, !dbg !1537

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1537
  br label %cond.end361, !dbg !1537

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1537
  br label %cond.end363, !dbg !1537

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1537
  br label %cond.end365, !dbg !1537

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1537
  br label %cond.end367, !dbg !1537

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1537
  br label %cond.end369, !dbg !1537

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1537
  br label %cond.end371, !dbg !1537

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1537
  br label %cond.end373, !dbg !1537

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1537
  br label %cond.end375, !dbg !1537

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1537
  br label %cond.end377, !dbg !1537

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1537
  br label %cond.end379, !dbg !1537

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1537
  br label %cond.end381, !dbg !1537

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1537
  br label %cond.end383, !dbg !1537

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1537
  br label %cond.end385, !dbg !1537

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1537
  br label %cond.end387, !dbg !1537

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1537
  br label %cond.end389, !dbg !1537

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1537
  br label %cond.end391, !dbg !1537

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1537
  br label %cond.end393, !dbg !1537

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1537
  br label %cond.end395, !dbg !1537

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1537
  br label %cond.end397, !dbg !1537

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1537
  br label %cond.end399, !dbg !1537

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1537
  br label %cond.end401, !dbg !1537

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1537
  br label %cond.end403, !dbg !1537

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1537
  br label %cond.end405, !dbg !1537

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1537
  br label %cond.end407, !dbg !1537

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1537
  br label %cond.end409, !dbg !1537

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1537
  br label %cond.end411, !dbg !1537

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1537
  br label %cond.end413, !dbg !1537

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1537
  br label %cond.end415, !dbg !1537

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1537
  br label %cond.end417, !dbg !1537

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1537
  br label %cond.end419, !dbg !1537

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1537
  br label %cond.end421, !dbg !1537

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1537
  br label %cond.end423, !dbg !1537

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1537
  br label %cond.end425, !dbg !1537

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1537
  br label %cond.end427, !dbg !1537

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1537
  br label %cond.end429, !dbg !1537

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1537
  br label %cond.end431, !dbg !1537

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1537
  br label %cond.end433, !dbg !1537

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1537
  br label %cond.end435, !dbg !1537

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1537
  br label %cond.end437, !dbg !1537

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1537
  br label %cond.end440, !dbg !1537

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1537

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1537
  br label %cond.end444, !dbg !1537

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1537
  %sub443 = sub i64 %72, 1, !dbg !1537
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !1537
  br label %cond.end444, !dbg !1537

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1537
  %sub446 = sub i32 %cond445, 12, !dbg !1538
  %add = add i32 %sub446, 1, !dbg !1539
  store i32 %add, i32* %retval, align 4, !dbg !1540
  br label %return, !dbg !1540

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1541
  %dec = add i64 %73, -1, !dbg !1541
  store i64 %dec, i64* %size.addr, align 8, !dbg !1541
  %74 = load i64, i64* %size.addr, align 8, !dbg !1542
  %shr = lshr i64 %74, 12, !dbg !1542
  store i64 %shr, i64* %size.addr, align 8, !dbg !1542
  %75 = load i64, i64* %size.addr, align 8, !dbg !1543
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1520
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1544
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1545
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !1544, !srcloc !1546
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1544
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1547
  %add.i = add i32 %79, 1, !dbg !1548
  store i32 %add.i, i32* %retval, align 4, !dbg !1549
  br label %return, !dbg !1549

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1550
  ret i32 %80, !dbg !1550
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !1551 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1512, metadata !DIExpression()), !dbg !1555
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1519, metadata !DIExpression()), !dbg !1557
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1558, metadata !DIExpression()), !dbg !1559
  %0 = load i64, i64* %n.addr, align 8, !dbg !1560
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1557
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1561
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1562
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !1561, !srcloc !1546
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1561
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1563
  %add.i = add i32 %4, 1, !dbg !1564
  %sub = sub i32 %add.i, 1, !dbg !1565
  ret i32 %sub, !dbg !1566
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1567 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1573, metadata !DIExpression()), !dbg !1574
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1575, metadata !DIExpression()), !dbg !1576
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1577, metadata !DIExpression()), !dbg !1578
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1579, metadata !DIExpression()), !dbg !1580
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1581
  ret i8* %0, !dbg !1582
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
!llvm.named.register.rsp = !{!45}
!llvm.module.flags = !{!46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 19, type: !40, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !39, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsparse.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !13, line: 305, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!19 = !{!20, !26, !30, !27, !34, !35, !36, !38}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !21, line: 421, baseType: !22)
!21 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !23, line: 21, baseType: !24)
!23 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !25, line: 27, baseType: !7)
!25 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !23, line: 17, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !25, line: 21, baseType: !29)
!29 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !21, line: 127, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !23, line: 23, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !25, line: 31, baseType: !33)
!33 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !37, line: 148, baseType: !7)
!37 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !{!0}
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 64, elements: !43)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!43 = !{!44}
!44 = !DISubrange(count: 8)
!45 = !{!"rsp"}
!46 = !{i32 7, !"Dwarf Version", i32 4}
!47 = !{i32 2, !"Debug Info Version", i32 3}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"Code Model", i32 2}
!50 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!51 = distinct !DISubprogram(name: "acpi_ns_execute_table", scope: !3, file: !3, line: 44, type: !52, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !810)
!52 = !DISubroutineType(types: !53)
!53 = !{!20, !22, !54}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !56)
!56 = !{!57, !797, !798, !799, !800, !806, !807, !808, !809}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !55, file: !6, line: 134, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !60, line: 367, size: 576, elements: !61)
!60 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!61 = !{!62, !73, !86, !97, !110, !124, !133, !448, !465, !480, !493, !571, !583, !597, !607, !625, !647, !666, !685, !704, !717, !743, !760, !773, !787, !796}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !59, file: !60, line: 368, baseType: !63, size: 128)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !60, line: 73, size: 128, elements: !64)
!64 = !{!65, !66, !67, !68, !72}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !63, file: !60, line: 74, baseType: !58, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !63, file: !60, line: 74, baseType: !27, size: 8, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !63, file: !60, line: 74, baseType: !27, size: 8, offset: 72)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !63, file: !60, line: 74, baseType: !69, size: 16, offset: 80)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !23, line: 19, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !25, line: 24, baseType: !71)
!71 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !63, file: !60, line: 74, baseType: !27, size: 8, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !59, file: !60, line: 369, baseType: !74, size: 192)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !60, line: 76, size: 192, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !81, !85}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !74, file: !60, line: 77, baseType: !58, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !74, file: !60, line: 77, baseType: !27, size: 8, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !74, file: !60, line: 77, baseType: !27, size: 8, offset: 72)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !74, file: !60, line: 77, baseType: !69, size: 16, offset: 80)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !74, file: !60, line: 77, baseType: !27, size: 8, offset: 96)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !74, file: !60, line: 77, baseType: !82, size: 24, offset: 104)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 24, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 3)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !74, file: !60, line: 78, baseType: !31, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !59, file: !60, line: 370, baseType: !87, size: 256)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !60, line: 93, size: 256, elements: !88)
!88 = !{!89, !90, !91, !92, !93, !94, !96}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !87, file: !60, line: 94, baseType: !58, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !87, file: !60, line: 94, baseType: !27, size: 8, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !87, file: !60, line: 94, baseType: !27, size: 8, offset: 72)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !87, file: !60, line: 94, baseType: !69, size: 16, offset: 80)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !87, file: !60, line: 94, baseType: !27, size: 8, offset: 96)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !87, file: !60, line: 94, baseType: !95, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !87, file: !60, line: 94, baseType: !22, size: 32, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !59, file: !60, line: 371, baseType: !98, size: 384)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !60, line: 97, size: 384, elements: !99)
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !109}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !98, file: !60, line: 98, baseType: !58, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !98, file: !60, line: 98, baseType: !27, size: 8, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !98, file: !60, line: 98, baseType: !27, size: 8, offset: 72)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !98, file: !60, line: 98, baseType: !69, size: 16, offset: 80)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !98, file: !60, line: 98, baseType: !27, size: 8, offset: 96)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !98, file: !60, line: 98, baseType: !26, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !98, file: !60, line: 98, baseType: !22, size: 32, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !98, file: !60, line: 99, baseType: !22, size: 32, offset: 224)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !98, file: !60, line: 100, baseType: !26, size: 64, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !98, file: !60, line: 101, baseType: !54, size: 64, offset: 320)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !59, file: !60, line: 372, baseType: !111, size: 384)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !60, line: 104, size: 384, elements: !112)
!112 = !{!113, !114, !115, !116, !117, !118, !119, !121, !122, !123}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !111, file: !60, line: 105, baseType: !58, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !111, file: !60, line: 105, baseType: !27, size: 8, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !60, line: 105, baseType: !27, size: 8, offset: 72)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !111, file: !60, line: 105, baseType: !69, size: 16, offset: 80)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !111, file: !60, line: 105, baseType: !27, size: 8, offset: 96)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !111, file: !60, line: 105, baseType: !54, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !111, file: !60, line: 106, baseType: !120, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !111, file: !60, line: 107, baseType: !26, size: 64, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !111, file: !60, line: 108, baseType: !22, size: 32, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !111, file: !60, line: 109, baseType: !22, size: 32, offset: 352)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !59, file: !60, line: 373, baseType: !125, size: 192)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !60, line: 118, size: 192, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !125, file: !60, line: 119, baseType: !58, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !125, file: !60, line: 119, baseType: !27, size: 8, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !60, line: 119, baseType: !27, size: 8, offset: 72)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !125, file: !60, line: 119, baseType: !69, size: 16, offset: 80)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !60, line: 119, baseType: !27, size: 8, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !125, file: !60, line: 119, baseType: !35, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !59, file: !60, line: 374, baseType: !134, size: 448)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !60, line: 143, size: 448, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !445, !446, !447}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !134, file: !60, line: 144, baseType: !58, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !134, file: !60, line: 144, baseType: !27, size: 8, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !134, file: !60, line: 144, baseType: !27, size: 8, offset: 72)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !134, file: !60, line: 144, baseType: !69, size: 16, offset: 80)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !60, line: 144, baseType: !27, size: 8, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !134, file: !60, line: 144, baseType: !27, size: 8, offset: 104)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !134, file: !60, line: 145, baseType: !27, size: 8, offset: 112)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !134, file: !60, line: 146, baseType: !27, size: 8, offset: 120)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !134, file: !60, line: 147, baseType: !58, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !134, file: !60, line: 148, baseType: !58, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !134, file: !60, line: 149, baseType: !26, size: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !134, file: !60, line: 153, baseType: !148, size: 64, offset: 320)
!148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !134, file: !60, line: 150, size: 64, elements: !149)
!149 = !{!150, !444}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !148, file: !60, line: 151, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!20, !155}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !157, line: 37, size: 9024, elements: !158)
!157 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !390, !391, !392, !393, !394, !398, !400, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !427, !428, !429, !430, !431, !432, !433, !434, !436, !442}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !156, file: !157, line: 38, baseType: !155, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !156, file: !157, line: 39, baseType: !27, size: 8, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !156, file: !157, line: 40, baseType: !27, size: 8, offset: 72)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !156, file: !157, line: 41, baseType: !69, size: 16, offset: 80)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !156, file: !157, line: 42, baseType: !27, size: 8, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !156, file: !157, line: 43, baseType: !27, size: 8, offset: 104)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !156, file: !157, line: 44, baseType: !27, size: 8, offset: 112)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !156, file: !157, line: 45, baseType: !167, size: 16, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !21, line: 445, baseType: !69)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !156, file: !157, line: 46, baseType: !27, size: 8, offset: 144)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !156, file: !157, line: 47, baseType: !27, size: 8, offset: 152)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !156, file: !157, line: 48, baseType: !27, size: 8, offset: 160)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !156, file: !157, line: 49, baseType: !27, size: 8, offset: 168)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !156, file: !157, line: 50, baseType: !27, size: 8, offset: 176)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !156, file: !157, line: 51, baseType: !27, size: 8, offset: 184)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !156, file: !157, line: 52, baseType: !27, size: 8, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !156, file: !157, line: 53, baseType: !27, size: 8, offset: 200)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !156, file: !157, line: 54, baseType: !26, size: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !156, file: !157, line: 55, baseType: !22, size: 32, offset: 320)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !156, file: !157, line: 56, baseType: !22, size: 32, offset: 352)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !156, file: !157, line: 57, baseType: !22, size: 32, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !156, file: !157, line: 58, baseType: !22, size: 32, offset: 416)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !156, file: !157, line: 60, baseType: !182, size: 640, offset: 448)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 893, size: 640, elements: !183)
!183 = !{!184, !185, !186, !187, !188, !189, !273, !274, !388, !389}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !182, file: !6, line: 894, baseType: !26, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !182, file: !6, line: 895, baseType: !26, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !182, file: !6, line: 896, baseType: !26, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !182, file: !6, line: 897, baseType: !26, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !182, file: !6, line: 898, baseType: !26, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !182, file: !6, line: 899, baseType: !190, size: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 875, size: 1600, elements: !192)
!192 = !{!193, !213, !229}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !191, file: !6, line: 876, baseType: !194, size: 448)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 828, size: 448, elements: !195)
!195 = !{!196, !197, !198, !199, !200, !201, !202, !203, !212}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !194, file: !6, line: 829, baseType: !190, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !194, file: !6, line: 829, baseType: !27, size: 8, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !194, file: !6, line: 829, baseType: !27, size: 8, offset: 72)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !194, file: !6, line: 829, baseType: !69, size: 16, offset: 80)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !194, file: !6, line: 829, baseType: !26, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !194, file: !6, line: 829, baseType: !190, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !194, file: !6, line: 829, baseType: !54, size: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !194, file: !6, line: 829, baseType: !204, size: 64, offset: 320)
!204 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 716, size: 64, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !204, file: !6, line: 717, baseType: !31, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !204, file: !6, line: 718, baseType: !22, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !204, file: !6, line: 719, baseType: !95, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !204, file: !6, line: 720, baseType: !26, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !204, file: !6, line: 721, baseType: !95, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !204, file: !6, line: 722, baseType: !190, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !194, file: !6, line: 829, baseType: !27, size: 8, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !191, file: !6, line: 877, baseType: !214, size: 640)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 835, size: 640, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !214, file: !6, line: 836, baseType: !190, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !214, file: !6, line: 836, baseType: !27, size: 8, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !214, file: !6, line: 836, baseType: !27, size: 8, offset: 72)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !214, file: !6, line: 836, baseType: !69, size: 16, offset: 80)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !214, file: !6, line: 836, baseType: !26, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !214, file: !6, line: 836, baseType: !190, size: 64, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !214, file: !6, line: 836, baseType: !54, size: 64, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !214, file: !6, line: 836, baseType: !204, size: 64, offset: 320)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !214, file: !6, line: 836, baseType: !27, size: 8, offset: 384)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !214, file: !6, line: 836, baseType: !95, size: 64, offset: 448)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !214, file: !6, line: 837, baseType: !26, size: 64, offset: 512)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !214, file: !6, line: 838, baseType: !22, size: 32, offset: 576)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !6, line: 839, baseType: !22, size: 32, offset: 608)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !191, file: !6, line: 878, baseType: !230, size: 1600)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 846, size: 1600, elements: !231)
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !230, file: !6, line: 847, baseType: !190, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !230, file: !6, line: 847, baseType: !27, size: 8, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !230, file: !6, line: 847, baseType: !27, size: 8, offset: 72)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !230, file: !6, line: 847, baseType: !69, size: 16, offset: 80)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !230, file: !6, line: 847, baseType: !26, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !230, file: !6, line: 847, baseType: !190, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !230, file: !6, line: 847, baseType: !54, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !230, file: !6, line: 847, baseType: !204, size: 64, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !230, file: !6, line: 847, baseType: !27, size: 8, offset: 384)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !230, file: !6, line: 847, baseType: !190, size: 64, offset: 448)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !230, file: !6, line: 848, baseType: !190, size: 64, offset: 512)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !230, file: !6, line: 849, baseType: !95, size: 64, offset: 576)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !230, file: !6, line: 850, baseType: !27, size: 8, offset: 640)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !230, file: !6, line: 851, baseType: !95, size: 64, offset: 704)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !230, file: !6, line: 852, baseType: !95, size: 64, offset: 768)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !230, file: !6, line: 853, baseType: !95, size: 64, offset: 832)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !230, file: !6, line: 854, baseType: !249, size: 32, offset: 896)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 32, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 4)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !230, file: !6, line: 855, baseType: !22, size: 32, offset: 928)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !230, file: !6, line: 856, baseType: !22, size: 32, offset: 960)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !230, file: !6, line: 857, baseType: !22, size: 32, offset: 992)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !230, file: !6, line: 858, baseType: !22, size: 32, offset: 1024)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !230, file: !6, line: 859, baseType: !22, size: 32, offset: 1056)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !230, file: !6, line: 860, baseType: !22, size: 32, offset: 1088)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !230, file: !6, line: 861, baseType: !22, size: 32, offset: 1120)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !230, file: !6, line: 862, baseType: !22, size: 32, offset: 1152)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !230, file: !6, line: 863, baseType: !22, size: 32, offset: 1184)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !230, file: !6, line: 864, baseType: !22, size: 32, offset: 1216)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !230, file: !6, line: 865, baseType: !22, size: 32, offset: 1248)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !230, file: !6, line: 866, baseType: !22, size: 32, offset: 1280)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !230, file: !6, line: 867, baseType: !22, size: 32, offset: 1312)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !230, file: !6, line: 868, baseType: !69, size: 16, offset: 1344)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !230, file: !6, line: 869, baseType: !27, size: 8, offset: 1360)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !230, file: !6, line: 870, baseType: !27, size: 8, offset: 1368)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !230, file: !6, line: 871, baseType: !27, size: 8, offset: 1376)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !230, file: !6, line: 872, baseType: !270, size: 160, offset: 1384)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 160, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 20)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !182, file: !6, line: 900, baseType: !54, size: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !182, file: !6, line: 901, baseType: !275, size: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 663, size: 640, elements: !277)
!277 = !{!278, !286, !299, !308, !317, !330, !344, !356, !366}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !276, file: !6, line: 664, baseType: !279, size: 128)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 567, size: 128, elements: !280)
!280 = !{!281, !282, !283, !284, !285}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !6, line: 568, baseType: !35, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !279, file: !6, line: 568, baseType: !27, size: 8, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !279, file: !6, line: 568, baseType: !27, size: 8, offset: 72)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !279, file: !6, line: 568, baseType: !69, size: 16, offset: 80)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !279, file: !6, line: 568, baseType: !69, size: 16, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !276, file: !6, line: 665, baseType: !287, size: 384)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 593, size: 384, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !6, line: 594, baseType: !35, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !287, file: !6, line: 594, baseType: !27, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !6, line: 594, baseType: !27, size: 8, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !287, file: !6, line: 594, baseType: !69, size: 16, offset: 80)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !287, file: !6, line: 594, baseType: !69, size: 16, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !287, file: !6, line: 594, baseType: !69, size: 16, offset: 112)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !287, file: !6, line: 595, baseType: !190, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !287, file: !6, line: 596, baseType: !26, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !287, file: !6, line: 597, baseType: !26, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !287, file: !6, line: 598, baseType: !31, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !276, file: !6, line: 666, baseType: !300, size: 192)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 573, size: 192, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !6, line: 574, baseType: !35, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !300, file: !6, line: 574, baseType: !27, size: 8, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !6, line: 574, baseType: !27, size: 8, offset: 72)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !300, file: !6, line: 574, baseType: !69, size: 16, offset: 80)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !300, file: !6, line: 574, baseType: !69, size: 16, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !300, file: !6, line: 574, baseType: !58, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !276, file: !6, line: 667, baseType: !309, size: 192)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 604, size: 192, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !6, line: 605, baseType: !35, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !309, file: !6, line: 605, baseType: !27, size: 8, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !6, line: 605, baseType: !27, size: 8, offset: 72)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !309, file: !6, line: 605, baseType: !69, size: 16, offset: 80)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !309, file: !6, line: 605, baseType: !69, size: 16, offset: 96)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !309, file: !6, line: 605, baseType: !54, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !276, file: !6, line: 668, baseType: !318, size: 448)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 608, size: 448, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !6, line: 609, baseType: !35, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !318, file: !6, line: 609, baseType: !27, size: 8, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !318, file: !6, line: 609, baseType: !27, size: 8, offset: 72)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !318, file: !6, line: 609, baseType: !69, size: 16, offset: 80)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !318, file: !6, line: 609, baseType: !69, size: 16, offset: 96)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !318, file: !6, line: 609, baseType: !22, size: 32, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !318, file: !6, line: 610, baseType: !190, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !318, file: !6, line: 611, baseType: !26, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !318, file: !6, line: 612, baseType: !26, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !318, file: !6, line: 613, baseType: !22, size: 32, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !276, file: !6, line: 669, baseType: !331, size: 512)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 580, size: 512, elements: !332)
!332 = !{!333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !331, file: !6, line: 581, baseType: !35, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !331, file: !6, line: 581, baseType: !27, size: 8, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !331, file: !6, line: 581, baseType: !27, size: 8, offset: 72)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !331, file: !6, line: 581, baseType: !69, size: 16, offset: 80)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !331, file: !6, line: 581, baseType: !69, size: 16, offset: 96)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !331, file: !6, line: 581, baseType: !22, size: 32, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !331, file: !6, line: 582, baseType: !58, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !331, file: !6, line: 583, baseType: !58, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !331, file: !6, line: 584, baseType: !155, size: 64, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !331, file: !6, line: 585, baseType: !35, size: 64, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !331, file: !6, line: 586, baseType: !22, size: 32, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !276, file: !6, line: 670, baseType: !345, size: 320)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 620, size: 320, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352, !353, !354, !355}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !345, file: !6, line: 621, baseType: !35, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !345, file: !6, line: 621, baseType: !27, size: 8, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !345, file: !6, line: 621, baseType: !27, size: 8, offset: 72)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !345, file: !6, line: 621, baseType: !69, size: 16, offset: 80)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !345, file: !6, line: 621, baseType: !69, size: 16, offset: 96)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !345, file: !6, line: 621, baseType: !27, size: 8, offset: 112)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !345, file: !6, line: 622, baseType: !155, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !345, file: !6, line: 623, baseType: !58, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !345, file: !6, line: 624, baseType: !31, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !276, file: !6, line: 671, baseType: !357, size: 640)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 631, size: 640, elements: !358)
!358 = !{!359, !360, !361, !362, !363, !364}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !357, file: !6, line: 632, baseType: !35, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !357, file: !6, line: 632, baseType: !27, size: 8, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !357, file: !6, line: 632, baseType: !27, size: 8, offset: 72)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !357, file: !6, line: 632, baseType: !69, size: 16, offset: 80)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !357, file: !6, line: 632, baseType: !69, size: 16, offset: 96)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !357, file: !6, line: 633, baseType: !365, size: 512, offset: 128)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 512, elements: !43)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !276, file: !6, line: 672, baseType: !367, size: 320)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 654, size: 320, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !367, file: !6, line: 655, baseType: !35, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !367, file: !6, line: 655, baseType: !27, size: 8, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !367, file: !6, line: 655, baseType: !27, size: 8, offset: 72)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !367, file: !6, line: 655, baseType: !69, size: 16, offset: 80)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !367, file: !6, line: 655, baseType: !69, size: 16, offset: 96)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !367, file: !6, line: 655, baseType: !27, size: 8, offset: 112)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !367, file: !6, line: 656, baseType: !54, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !367, file: !6, line: 657, baseType: !58, size: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !367, file: !6, line: 658, baseType: !378, size: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 645, size: 128, elements: !380)
!380 = !{!381, !387}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !379, file: !6, line: 646, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !21, line: 1052, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !386, !22, !35}
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !21, line: 424, baseType: !35)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !379, file: !6, line: 647, baseType: !35, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !182, file: !6, line: 902, baseType: !190, size: 64, offset: 512)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !182, file: !6, line: 903, baseType: !22, size: 32, offset: 576)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !156, file: !157, line: 61, baseType: !22, size: 32, offset: 1088)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !156, file: !157, line: 62, baseType: !22, size: 32, offset: 1120)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !156, file: !157, line: 63, baseType: !69, size: 16, offset: 1152)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !156, file: !157, line: 64, baseType: !27, size: 8, offset: 1168)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !156, file: !157, line: 66, baseType: !395, size: 2688, offset: 1216)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 2688, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 7)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !156, file: !157, line: 67, baseType: !399, size: 3072, offset: 3904)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 3072, elements: !43)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !156, file: !157, line: 68, baseType: !401, size: 576, offset: 6976)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 576, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 9)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !156, file: !157, line: 69, baseType: !120, size: 64, offset: 7552)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !156, file: !157, line: 71, baseType: !26, size: 64, offset: 7616)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !156, file: !157, line: 72, baseType: !120, size: 64, offset: 7680)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !156, file: !157, line: 73, baseType: !275, size: 64, offset: 7744)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !156, file: !157, line: 74, baseType: !54, size: 64, offset: 7808)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !156, file: !157, line: 75, baseType: !58, size: 64, offset: 7872)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !156, file: !157, line: 76, baseType: !54, size: 64, offset: 7936)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !156, file: !157, line: 77, baseType: !190, size: 64, offset: 8000)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !156, file: !157, line: 78, baseType: !58, size: 64, offset: 8064)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !156, file: !157, line: 79, baseType: !54, size: 64, offset: 8128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !156, file: !157, line: 80, baseType: !95, size: 64, offset: 8192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !156, file: !157, line: 81, baseType: !190, size: 64, offset: 8256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !156, file: !157, line: 82, baseType: !417, size: 64, offset: 8320)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 702, size: 128, elements: !420)
!420 = !{!421, !422, !423, !424, !425, !426}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !419, file: !6, line: 706, baseType: !22, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !419, file: !6, line: 707, baseType: !22, size: 32, offset: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !419, file: !6, line: 708, baseType: !69, size: 16, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !419, file: !6, line: 709, baseType: !27, size: 8, offset: 80)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !419, file: !6, line: 710, baseType: !27, size: 8, offset: 88)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !419, file: !6, line: 711, baseType: !27, size: 8, offset: 96)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !156, file: !157, line: 83, baseType: !190, size: 64, offset: 8384)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !156, file: !157, line: 84, baseType: !58, size: 64, offset: 8448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !156, file: !157, line: 85, baseType: !275, size: 64, offset: 8512)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !156, file: !157, line: 86, baseType: !58, size: 64, offset: 8576)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !156, file: !157, line: 87, baseType: !275, size: 64, offset: 8640)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !156, file: !157, line: 88, baseType: !190, size: 64, offset: 8704)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !156, file: !157, line: 89, baseType: !190, size: 64, offset: 8768)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !156, file: !157, line: 90, baseType: !435, size: 64, offset: 8832)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !156, file: !157, line: 91, baseType: !437, size: 64, offset: 8896)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 637, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!20, !155, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !156, file: !157, line: 92, baseType: !443, size: 64, offset: 8960)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 641, baseType: !152)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !148, file: !60, line: 152, baseType: !58, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !134, file: !60, line: 155, baseType: !22, size: 32, offset: 384)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !134, file: !60, line: 156, baseType: !167, size: 16, offset: 416)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !134, file: !60, line: 157, baseType: !27, size: 8, offset: 432)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !59, file: !60, line: 375, baseType: !449, size: 576)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !60, line: 122, size: 576, elements: !450)
!450 = !{!451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !449, file: !60, line: 123, baseType: !58, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !449, file: !60, line: 123, baseType: !27, size: 8, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !449, file: !60, line: 123, baseType: !27, size: 8, offset: 72)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !449, file: !60, line: 123, baseType: !69, size: 16, offset: 80)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !449, file: !60, line: 123, baseType: !27, size: 8, offset: 96)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !449, file: !60, line: 123, baseType: !27, size: 8, offset: 104)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !449, file: !60, line: 124, baseType: !69, size: 16, offset: 112)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !449, file: !60, line: 125, baseType: !35, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !449, file: !60, line: 126, baseType: !31, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !449, file: !60, line: 127, baseType: !435, size: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !449, file: !60, line: 128, baseType: !58, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !449, file: !60, line: 129, baseType: !58, size: 64, offset: 384)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !449, file: !60, line: 130, baseType: !54, size: 64, offset: 448)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !449, file: !60, line: 131, baseType: !27, size: 8, offset: 512)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !59, file: !60, line: 376, baseType: !466, size: 448)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !60, line: 134, size: 448, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !479}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !466, file: !60, line: 135, baseType: !58, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !466, file: !60, line: 135, baseType: !27, size: 8, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !466, file: !60, line: 135, baseType: !27, size: 8, offset: 72)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !466, file: !60, line: 135, baseType: !69, size: 16, offset: 80)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !60, line: 135, baseType: !27, size: 8, offset: 96)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !466, file: !60, line: 135, baseType: !27, size: 8, offset: 104)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !466, file: !60, line: 136, baseType: !54, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !466, file: !60, line: 137, baseType: !58, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !466, file: !60, line: 138, baseType: !58, size: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !466, file: !60, line: 139, baseType: !478, size: 64, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !21, line: 129, baseType: !31)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !466, file: !60, line: 140, baseType: !22, size: 32, offset: 384)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !59, file: !60, line: 377, baseType: !481, size: 320)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !60, line: 184, size: 320, elements: !482)
!482 = !{!483, !484, !485, !486, !487, !488, !492}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !481, file: !60, line: 185, baseType: !58, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !481, file: !60, line: 185, baseType: !27, size: 8, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !481, file: !60, line: 185, baseType: !27, size: 8, offset: 72)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !481, file: !60, line: 185, baseType: !69, size: 16, offset: 80)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !481, file: !60, line: 185, baseType: !27, size: 8, offset: 96)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !481, file: !60, line: 185, baseType: !489, size: 128, offset: 128)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 128, elements: !490)
!490 = !{!491}
!491 = !DISubrange(count: 2)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !481, file: !60, line: 185, baseType: !58, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !59, file: !60, line: 378, baseType: !494, size: 384)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !60, line: 187, size: 384, elements: !495)
!495 = !{!496, !497, !498, !499, !500, !501, !502, !503}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !494, file: !60, line: 188, baseType: !58, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !494, file: !60, line: 188, baseType: !27, size: 8, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !494, file: !60, line: 188, baseType: !27, size: 8, offset: 72)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !494, file: !60, line: 188, baseType: !69, size: 16, offset: 80)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !494, file: !60, line: 188, baseType: !27, size: 8, offset: 96)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !494, file: !60, line: 189, baseType: !489, size: 128, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !494, file: !60, line: 189, baseType: !58, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !494, file: !60, line: 189, baseType: !504, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !506)
!506 = !{!507, !508, !509, !510, !518, !533, !565, !566, !567, !568, !569, !570}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !505, file: !6, line: 481, baseType: !54, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !505, file: !6, line: 482, baseType: !504, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !505, file: !6, line: 483, baseType: !504, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !505, file: !6, line: 484, baseType: !511, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !513)
!513 = !{!514, !515, !516, !517}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !512, file: !6, line: 498, baseType: !511, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !512, file: !6, line: 499, baseType: !511, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !512, file: !6, line: 500, baseType: !504, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !512, file: !6, line: 501, baseType: !22, size: 32, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !505, file: !6, line: 485, baseType: !519, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !521)
!521 = !{!522, !527, !528, !529, !530, !531, !532}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !520, file: !6, line: 467, baseType: !523, size: 128)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !523, file: !6, line: 460, baseType: !27, size: 8)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !523, file: !6, line: 461, baseType: !31, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !520, file: !6, line: 468, baseType: !523, size: 128, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !520, file: !6, line: 469, baseType: !69, size: 16, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !520, file: !6, line: 470, baseType: !27, size: 8, offset: 272)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !520, file: !6, line: 471, baseType: !27, size: 8, offset: 280)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !520, file: !6, line: 472, baseType: !27, size: 8, offset: 288)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !520, file: !6, line: 473, baseType: !27, size: 8, offset: 296)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !505, file: !6, line: 486, baseType: !534, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !536)
!536 = !{!537, !560, !561, !562, !563, !564}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !535, file: !6, line: 449, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !539)
!539 = !{!540, !541, !554}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !538, file: !6, line: 439, baseType: !54, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !538, file: !6, line: 440, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !544)
!544 = !{!545, !550, !551, !552, !553}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !543, file: !6, line: 420, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !21, line: 1049, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!22, !386, !22, !35}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !543, file: !6, line: 421, baseType: !35, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !543, file: !6, line: 422, baseType: !54, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !543, file: !6, line: 423, baseType: !27, size: 8, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !543, file: !6, line: 424, baseType: !27, size: 8, offset: 200)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !538, file: !6, line: 441, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !556, file: !6, line: 430, baseType: !54, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !556, file: !6, line: 431, baseType: !555, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !535, file: !6, line: 450, baseType: !519, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !535, file: !6, line: 451, baseType: !27, size: 8, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !535, file: !6, line: 452, baseType: !27, size: 8, offset: 136)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !535, file: !6, line: 453, baseType: !27, size: 8, offset: 144)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !535, file: !6, line: 454, baseType: !27, size: 8, offset: 152)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !505, file: !6, line: 487, baseType: !31, size: 64, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !505, file: !6, line: 488, baseType: !22, size: 32, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !505, file: !6, line: 489, baseType: !69, size: 16, offset: 480)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !505, file: !6, line: 490, baseType: !69, size: 16, offset: 496)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !505, file: !6, line: 491, baseType: !27, size: 8, offset: 512)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !505, file: !6, line: 492, baseType: !27, size: 8, offset: 520)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !59, file: !60, line: 379, baseType: !572, size: 384)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !60, line: 192, size: 384, elements: !573)
!573 = !{!574, !575, !576, !577, !578, !579, !580, !581, !582}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !572, file: !60, line: 193, baseType: !58, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !572, file: !60, line: 193, baseType: !27, size: 8, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !572, file: !60, line: 193, baseType: !27, size: 8, offset: 72)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !572, file: !60, line: 193, baseType: !69, size: 16, offset: 80)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !572, file: !60, line: 193, baseType: !27, size: 8, offset: 96)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !572, file: !60, line: 193, baseType: !489, size: 128, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !572, file: !60, line: 193, baseType: !58, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !572, file: !60, line: 193, baseType: !22, size: 32, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !572, file: !60, line: 194, baseType: !22, size: 32, offset: 352)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !59, file: !60, line: 380, baseType: !584, size: 384)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !60, line: 197, size: 384, elements: !585)
!585 = !{!586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !584, file: !60, line: 198, baseType: !58, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !584, file: !60, line: 198, baseType: !27, size: 8, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !584, file: !60, line: 198, baseType: !27, size: 8, offset: 72)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !584, file: !60, line: 198, baseType: !69, size: 16, offset: 80)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !584, file: !60, line: 198, baseType: !27, size: 8, offset: 96)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !584, file: !60, line: 200, baseType: !27, size: 8, offset: 104)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !584, file: !60, line: 201, baseType: !27, size: 8, offset: 112)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !584, file: !60, line: 202, baseType: !489, size: 128, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !584, file: !60, line: 202, baseType: !58, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !584, file: !60, line: 202, baseType: !596, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !21, line: 128, baseType: !31)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !59, file: !60, line: 381, baseType: !598, size: 320)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !60, line: 205, size: 320, elements: !599)
!599 = !{!600, !601, !602, !603, !604, !605, !606}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !598, file: !60, line: 206, baseType: !58, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !598, file: !60, line: 206, baseType: !27, size: 8, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !598, file: !60, line: 206, baseType: !27, size: 8, offset: 72)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !598, file: !60, line: 206, baseType: !69, size: 16, offset: 80)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !598, file: !60, line: 206, baseType: !27, size: 8, offset: 96)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !598, file: !60, line: 206, baseType: !489, size: 128, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !598, file: !60, line: 206, baseType: !58, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !59, file: !60, line: 382, baseType: !608, size: 384)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !60, line: 233, size: 384, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !608, file: !60, line: 234, baseType: !58, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !608, file: !60, line: 234, baseType: !27, size: 8, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !608, file: !60, line: 234, baseType: !27, size: 8, offset: 72)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !608, file: !60, line: 234, baseType: !69, size: 16, offset: 80)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !608, file: !60, line: 234, baseType: !27, size: 8, offset: 96)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !608, file: !60, line: 234, baseType: !27, size: 8, offset: 104)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !608, file: !60, line: 234, baseType: !27, size: 8, offset: 112)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !608, file: !60, line: 234, baseType: !27, size: 8, offset: 120)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !608, file: !60, line: 234, baseType: !54, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !608, file: !60, line: 234, baseType: !22, size: 32, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !608, file: !60, line: 234, baseType: !22, size: 32, offset: 224)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !608, file: !60, line: 234, baseType: !22, size: 32, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !608, file: !60, line: 234, baseType: !27, size: 8, offset: 288)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !608, file: !60, line: 234, baseType: !27, size: 8, offset: 296)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !608, file: !60, line: 234, baseType: !58, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !59, file: !60, line: 383, baseType: !626, size: 576)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !60, line: 237, size: 576, elements: !627)
!627 = !{!628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !626, file: !60, line: 238, baseType: !58, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !626, file: !60, line: 238, baseType: !27, size: 8, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !626, file: !60, line: 238, baseType: !27, size: 8, offset: 72)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !626, file: !60, line: 238, baseType: !69, size: 16, offset: 80)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !626, file: !60, line: 238, baseType: !27, size: 8, offset: 96)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !626, file: !60, line: 238, baseType: !27, size: 8, offset: 104)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !626, file: !60, line: 238, baseType: !27, size: 8, offset: 112)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !626, file: !60, line: 238, baseType: !27, size: 8, offset: 120)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !626, file: !60, line: 238, baseType: !54, size: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !626, file: !60, line: 238, baseType: !22, size: 32, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !626, file: !60, line: 238, baseType: !22, size: 32, offset: 224)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !626, file: !60, line: 238, baseType: !22, size: 32, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !626, file: !60, line: 238, baseType: !27, size: 8, offset: 288)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !626, file: !60, line: 238, baseType: !27, size: 8, offset: 296)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !626, file: !60, line: 238, baseType: !69, size: 16, offset: 304)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !626, file: !60, line: 239, baseType: !58, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !626, file: !60, line: 240, baseType: !26, size: 64, offset: 384)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !626, file: !60, line: 241, baseType: !69, size: 16, offset: 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !626, file: !60, line: 242, baseType: !26, size: 64, offset: 512)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !59, file: !60, line: 384, baseType: !648, size: 384)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !60, line: 262, size: 384, elements: !649)
!649 = !{!650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !648, file: !60, line: 263, baseType: !58, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !648, file: !60, line: 263, baseType: !27, size: 8, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !648, file: !60, line: 263, baseType: !27, size: 8, offset: 72)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !648, file: !60, line: 263, baseType: !69, size: 16, offset: 80)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !648, file: !60, line: 263, baseType: !27, size: 8, offset: 96)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !648, file: !60, line: 263, baseType: !27, size: 8, offset: 104)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !648, file: !60, line: 263, baseType: !27, size: 8, offset: 112)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !648, file: !60, line: 263, baseType: !27, size: 8, offset: 120)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !648, file: !60, line: 263, baseType: !54, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !648, file: !60, line: 263, baseType: !22, size: 32, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !648, file: !60, line: 263, baseType: !22, size: 32, offset: 224)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !648, file: !60, line: 263, baseType: !22, size: 32, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !648, file: !60, line: 263, baseType: !27, size: 8, offset: 288)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !648, file: !60, line: 263, baseType: !27, size: 8, offset: 296)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !648, file: !60, line: 263, baseType: !27, size: 8, offset: 304)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !648, file: !60, line: 264, baseType: !58, size: 64, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !59, file: !60, line: 385, baseType: !667, size: 448)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !60, line: 245, size: 448, elements: !668)
!668 = !{!669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !667, file: !60, line: 246, baseType: !58, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !667, file: !60, line: 246, baseType: !27, size: 8, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !667, file: !60, line: 246, baseType: !27, size: 8, offset: 72)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !667, file: !60, line: 246, baseType: !69, size: 16, offset: 80)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !667, file: !60, line: 246, baseType: !27, size: 8, offset: 96)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !667, file: !60, line: 246, baseType: !27, size: 8, offset: 104)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !667, file: !60, line: 246, baseType: !27, size: 8, offset: 112)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !667, file: !60, line: 246, baseType: !27, size: 8, offset: 120)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !667, file: !60, line: 246, baseType: !54, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !667, file: !60, line: 246, baseType: !22, size: 32, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !667, file: !60, line: 246, baseType: !22, size: 32, offset: 224)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !667, file: !60, line: 246, baseType: !22, size: 32, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !667, file: !60, line: 246, baseType: !27, size: 8, offset: 288)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !667, file: !60, line: 246, baseType: !27, size: 8, offset: 296)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !667, file: !60, line: 246, baseType: !58, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !667, file: !60, line: 247, baseType: !58, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !59, file: !60, line: 386, baseType: !686, size: 448)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !60, line: 250, size: 448, elements: !687)
!687 = !{!688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !686, file: !60, line: 251, baseType: !58, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !686, file: !60, line: 251, baseType: !27, size: 8, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !686, file: !60, line: 251, baseType: !27, size: 8, offset: 72)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !686, file: !60, line: 251, baseType: !69, size: 16, offset: 80)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !60, line: 251, baseType: !27, size: 8, offset: 96)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !686, file: !60, line: 251, baseType: !27, size: 8, offset: 104)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !686, file: !60, line: 251, baseType: !27, size: 8, offset: 112)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !686, file: !60, line: 251, baseType: !27, size: 8, offset: 120)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !686, file: !60, line: 251, baseType: !54, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !686, file: !60, line: 251, baseType: !22, size: 32, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !686, file: !60, line: 251, baseType: !22, size: 32, offset: 224)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !686, file: !60, line: 251, baseType: !22, size: 32, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !686, file: !60, line: 251, baseType: !27, size: 8, offset: 288)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !686, file: !60, line: 251, baseType: !27, size: 8, offset: 296)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !686, file: !60, line: 256, baseType: !58, size: 64, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !686, file: !60, line: 257, baseType: !58, size: 64, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !59, file: !60, line: 387, baseType: !705, size: 512)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !60, line: 273, size: 512, elements: !706)
!706 = !{!707, !708, !709, !710, !711, !712, !713, !714, !715, !716}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !705, file: !60, line: 274, baseType: !58, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !705, file: !60, line: 274, baseType: !27, size: 8, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !705, file: !60, line: 274, baseType: !27, size: 8, offset: 72)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !705, file: !60, line: 274, baseType: !69, size: 16, offset: 80)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !705, file: !60, line: 274, baseType: !27, size: 8, offset: 96)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !705, file: !60, line: 274, baseType: !54, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !705, file: !60, line: 275, baseType: !22, size: 32, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !705, file: !60, line: 276, baseType: !382, size: 64, offset: 256)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !705, file: !60, line: 277, baseType: !35, size: 64, offset: 320)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !705, file: !60, line: 278, baseType: !489, size: 128, offset: 384)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !59, file: !60, line: 388, baseType: !718, size: 512)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !60, line: 281, size: 512, elements: !719)
!719 = !{!720, !721, !722, !723, !724, !725, !726, !727, !733, !734, !735, !741, !742}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !718, file: !60, line: 282, baseType: !58, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !718, file: !60, line: 282, baseType: !27, size: 8, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !718, file: !60, line: 282, baseType: !27, size: 8, offset: 72)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !718, file: !60, line: 282, baseType: !69, size: 16, offset: 80)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !718, file: !60, line: 282, baseType: !27, size: 8, offset: 96)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !718, file: !60, line: 282, baseType: !27, size: 8, offset: 104)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !718, file: !60, line: 283, baseType: !27, size: 8, offset: 112)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !718, file: !60, line: 284, baseType: !728, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !21, line: 1084, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!20, !22, !478, !22, !732, !35, !35}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !718, file: !60, line: 285, baseType: !54, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !718, file: !60, line: 286, baseType: !35, size: 64, offset: 256)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !718, file: !60, line: 287, baseType: !736, size: 64, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !21, line: 1102, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!20, !386, !22, !35, !740}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !718, file: !60, line: 288, baseType: !58, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !718, file: !60, line: 289, baseType: !58, size: 64, offset: 448)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !59, file: !60, line: 389, baseType: !744, size: 512)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !60, line: 307, size: 512, elements: !745)
!745 = !{!746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !744, file: !60, line: 308, baseType: !58, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !744, file: !60, line: 308, baseType: !27, size: 8, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !744, file: !60, line: 308, baseType: !27, size: 8, offset: 72)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !744, file: !60, line: 308, baseType: !69, size: 16, offset: 80)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !744, file: !60, line: 308, baseType: !27, size: 8, offset: 96)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !744, file: !60, line: 308, baseType: !27, size: 8, offset: 104)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !744, file: !60, line: 309, baseType: !27, size: 8, offset: 112)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !744, file: !60, line: 310, baseType: !27, size: 8, offset: 120)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !744, file: !60, line: 311, baseType: !35, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !744, file: !60, line: 312, baseType: !54, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !744, file: !60, line: 313, baseType: !120, size: 64, offset: 256)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !744, file: !60, line: 314, baseType: !26, size: 64, offset: 320)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !744, file: !60, line: 315, baseType: !26, size: 64, offset: 384)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !744, file: !60, line: 316, baseType: !22, size: 32, offset: 448)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !59, file: !60, line: 390, baseType: !761, size: 448)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !60, line: 340, size: 448, elements: !762)
!762 = !{!763, !764, !765, !766, !767, !768, !769, !770, !771, !772}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !761, file: !60, line: 341, baseType: !58, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !761, file: !60, line: 341, baseType: !27, size: 8, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !761, file: !60, line: 341, baseType: !27, size: 8, offset: 72)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !761, file: !60, line: 341, baseType: !69, size: 16, offset: 80)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !761, file: !60, line: 341, baseType: !27, size: 8, offset: 96)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !761, file: !60, line: 341, baseType: !54, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !761, file: !60, line: 342, baseType: !54, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !761, file: !60, line: 343, baseType: !35, size: 64, offset: 256)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !761, file: !60, line: 344, baseType: !26, size: 64, offset: 320)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !761, file: !60, line: 345, baseType: !22, size: 32, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !59, file: !60, line: 391, baseType: !774, size: 256)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !60, line: 350, size: 256, elements: !775)
!775 = !{!776, !777, !778, !779, !780, !781, !786}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !774, file: !60, line: 351, baseType: !58, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !774, file: !60, line: 351, baseType: !27, size: 8, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !774, file: !60, line: 351, baseType: !27, size: 8, offset: 72)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !774, file: !60, line: 351, baseType: !69, size: 16, offset: 80)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !774, file: !60, line: 351, baseType: !27, size: 8, offset: 96)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !774, file: !60, line: 351, baseType: !782, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !21, line: 1055, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{null, !386, !35}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !774, file: !60, line: 352, baseType: !35, size: 64, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !59, file: !60, line: 392, baseType: !788, size: 192)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !60, line: 357, size: 192, elements: !789)
!789 = !{!790, !791, !792, !793, !794, !795}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !788, file: !60, line: 358, baseType: !58, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !788, file: !60, line: 358, baseType: !27, size: 8, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !788, file: !60, line: 358, baseType: !27, size: 8, offset: 72)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !788, file: !60, line: 358, baseType: !69, size: 16, offset: 80)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !788, file: !60, line: 358, baseType: !27, size: 8, offset: 96)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !788, file: !60, line: 358, baseType: !58, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !59, file: !60, line: 399, baseType: !55, size: 384)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !55, file: !6, line: 135, baseType: !27, size: 8, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !55, file: !6, line: 136, baseType: !27, size: 8, offset: 72)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !55, file: !6, line: 137, baseType: !69, size: 16, offset: 80)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !55, file: !6, line: 138, baseType: !801, size: 32, offset: 96)
!801 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !802, line: 327, size: 32, elements: !803)
!802 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!803 = !{!804, !805}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !801, file: !802, line: 328, baseType: !22, size: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !801, file: !802, line: 329, baseType: !249, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !55, file: !6, line: 139, baseType: !54, size: 64, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !55, file: !6, line: 140, baseType: !54, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !55, file: !6, line: 141, baseType: !54, size: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !55, file: !6, line: 142, baseType: !167, size: 16, offset: 320)
!810 = !{}
!811 = !DILocalVariable(name: "table_index", arg: 1, scope: !51, file: !3, line: 44, type: !22)
!812 = !DILocation(line: 44, column: 27, scope: !51)
!813 = !DILocalVariable(name: "start_node", arg: 2, scope: !51, file: !3, line: 44, type: !54)
!814 = !DILocation(line: 44, column: 68, scope: !51)
!815 = !DILocalVariable(name: "status", scope: !51, file: !3, line: 46, type: !20)
!816 = !DILocation(line: 46, column: 14, scope: !51)
!817 = !DILocalVariable(name: "table", scope: !51, file: !3, line: 47, type: !818)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !802, line: 68, size: 288, elements: !820)
!820 = !{!821, !822, !823, !824, !825, !829, !831, !832, !833}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !819, file: !802, line: 69, baseType: !249, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !819, file: !802, line: 70, baseType: !22, size: 32, offset: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !819, file: !802, line: 71, baseType: !27, size: 8, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !819, file: !802, line: 72, baseType: !27, size: 8, offset: 72)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !819, file: !802, line: 73, baseType: !826, size: 48, offset: 80)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 48, elements: !827)
!827 = !{!828}
!828 = !DISubrange(count: 6)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !819, file: !802, line: 74, baseType: !830, size: 64, offset: 128)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 64, elements: !43)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !819, file: !802, line: 75, baseType: !22, size: 32, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !819, file: !802, line: 76, baseType: !249, size: 32, offset: 224)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !819, file: !802, line: 77, baseType: !22, size: 32, offset: 256)
!834 = !DILocation(line: 47, column: 28, scope: !51)
!835 = !DILocalVariable(name: "owner_id", scope: !51, file: !3, line: 48, type: !167)
!836 = !DILocation(line: 48, column: 16, scope: !51)
!837 = !DILocalVariable(name: "info", scope: !51, file: !3, line: 49, type: !838)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !157, line: 152, size: 704, elements: !840)
!840 = !{!841, !842, !844, !845, !846, !847, !848, !894, !895, !896, !897, !898, !899, !900, !901, !902}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !839, file: !157, line: 155, baseType: !54, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !839, file: !157, line: 156, baseType: !843, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !839, file: !157, line: 157, baseType: !120, size: 64, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !839, file: !157, line: 159, baseType: !54, size: 64, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !839, file: !157, line: 160, baseType: !58, size: 64, offset: 256)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !839, file: !157, line: 161, baseType: !95, size: 64, offset: 320)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !839, file: !157, line: 163, baseType: !849, size: 64, offset: 384)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !851)
!851 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !6, line: 351, size: 56, elements: !852)
!852 = !{!853, !859, !868, !876, !885}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !851, file: !6, line: 352, baseType: !854, size: 56)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !6, line: 295, size: 56, elements: !855)
!855 = !{!856, !857, !858}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !854, file: !6, line: 296, baseType: !249, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !854, file: !6, line: 297, baseType: !69, size: 16, offset: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !854, file: !6, line: 298, baseType: !27, size: 8, offset: 48)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !851, file: !6, line: 353, baseType: !860, size: 56)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !6, line: 314, size: 56, elements: !861)
!861 = !{!862, !863, !864, !865, !866, !867}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !860, file: !6, line: 315, baseType: !27, size: 8)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !860, file: !6, line: 316, baseType: !27, size: 8, offset: 8)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !860, file: !6, line: 317, baseType: !27, size: 8, offset: 16)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !860, file: !6, line: 318, baseType: !27, size: 8, offset: 24)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !860, file: !6, line: 319, baseType: !27, size: 8, offset: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !860, file: !6, line: 320, baseType: !69, size: 16, offset: 40)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !851, file: !6, line: 354, baseType: !869, size: 56)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !6, line: 325, size: 56, elements: !870)
!870 = !{!871, !872, !873, !875}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !869, file: !6, line: 326, baseType: !27, size: 8)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !869, file: !6, line: 327, baseType: !27, size: 8, offset: 8)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !869, file: !6, line: 328, baseType: !874, size: 32, offset: 16)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !250)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !869, file: !6, line: 329, baseType: !27, size: 8, offset: 48)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !851, file: !6, line: 355, baseType: !877, size: 56)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !6, line: 334, size: 56, elements: !878)
!878 = !{!879, !880, !881, !883, !884}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !877, file: !6, line: 335, baseType: !27, size: 8)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !877, file: !6, line: 336, baseType: !27, size: 8, offset: 8)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !877, file: !6, line: 337, baseType: !882, size: 16, offset: 16)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 16, elements: !490)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !877, file: !6, line: 338, baseType: !27, size: 8, offset: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !877, file: !6, line: 339, baseType: !69, size: 16, offset: 40)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !851, file: !6, line: 356, baseType: !886, size: 56)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !6, line: 342, size: 56, elements: !887)
!887 = !{!888, !889, !890, !891, !892, !893}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !886, file: !6, line: 343, baseType: !27, size: 8)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !886, file: !6, line: 344, baseType: !27, size: 8, offset: 8)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !886, file: !6, line: 345, baseType: !27, size: 8, offset: 16)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !886, file: !6, line: 346, baseType: !27, size: 8, offset: 24)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !886, file: !6, line: 347, baseType: !27, size: 8, offset: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !886, file: !6, line: 348, baseType: !69, size: 16, offset: 40)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !839, file: !157, line: 164, baseType: !58, size: 64, offset: 448)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !839, file: !157, line: 165, baseType: !58, size: 64, offset: 512)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !839, file: !157, line: 167, baseType: !22, size: 32, offset: 576)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !839, file: !157, line: 168, baseType: !22, size: 32, offset: 608)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !839, file: !157, line: 169, baseType: !69, size: 16, offset: 640)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !839, file: !157, line: 170, baseType: !69, size: 16, offset: 656)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !839, file: !157, line: 171, baseType: !27, size: 8, offset: 672)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !839, file: !157, line: 172, baseType: !27, size: 8, offset: 680)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !839, file: !157, line: 173, baseType: !27, size: 8, offset: 688)
!903 = !DILocation(line: 49, column: 29, scope: !51)
!904 = !DILocalVariable(name: "aml_length", scope: !51, file: !3, line: 50, type: !22)
!905 = !DILocation(line: 50, column: 6, scope: !51)
!906 = !DILocalVariable(name: "aml_start", scope: !51, file: !3, line: 51, type: !26)
!907 = !DILocation(line: 51, column: 6, scope: !51)
!908 = !DILocalVariable(name: "method_obj", scope: !51, file: !3, line: 52, type: !58)
!909 = !DILocation(line: 52, column: 29, scope: !51)
!910 = !DILocation(line: 56, column: 35, scope: !51)
!911 = !DILocation(line: 56, column: 11, scope: !51)
!912 = !DILocation(line: 56, column: 9, scope: !51)
!913 = !DILocation(line: 57, column: 6, scope: !914)
!914 = distinct !DILexicalBlock(scope: !51, file: !3, line: 57, column: 6)
!915 = !DILocation(line: 57, column: 6, scope: !51)
!916 = !DILocation(line: 58, column: 3, scope: !917)
!917 = distinct !DILexicalBlock(scope: !914, file: !3, line: 57, column: 28)
!918 = !DILocation(line: 63, column: 6, scope: !919)
!919 = distinct !DILexicalBlock(scope: !51, file: !3, line: 63, column: 6)
!920 = !DILocation(line: 63, column: 13, scope: !919)
!921 = !DILocation(line: 63, column: 20, scope: !919)
!922 = !DILocation(line: 63, column: 6, scope: !51)
!923 = !DILocation(line: 64, column: 3, scope: !924)
!924 = distinct !DILexicalBlock(scope: !919, file: !3, line: 63, column: 56)
!925 = !DILocation(line: 67, column: 20, scope: !51)
!926 = !DILocation(line: 67, column: 14, scope: !51)
!927 = !DILocation(line: 67, column: 26, scope: !51)
!928 = !DILocation(line: 67, column: 12, scope: !51)
!929 = !DILocation(line: 68, column: 15, scope: !51)
!930 = !DILocation(line: 68, column: 22, scope: !51)
!931 = !DILocation(line: 68, column: 29, scope: !51)
!932 = !DILocation(line: 68, column: 13, scope: !51)
!933 = !DILocation(line: 70, column: 32, scope: !51)
!934 = !DILocation(line: 70, column: 11, scope: !51)
!935 = !DILocation(line: 70, column: 9, scope: !51)
!936 = !DILocation(line: 71, column: 6, scope: !937)
!937 = distinct !DILexicalBlock(scope: !51, file: !3, line: 71, column: 6)
!938 = !DILocation(line: 71, column: 6, scope: !51)
!939 = !DILocation(line: 72, column: 3, scope: !940)
!940 = distinct !DILexicalBlock(scope: !937, file: !3, line: 71, column: 28)
!941 = !DILocation(line: 77, column: 15, scope: !51)
!942 = !DILocation(line: 77, column: 13, scope: !51)
!943 = !DILocation(line: 78, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !51, file: !3, line: 78, column: 6)
!945 = !DILocation(line: 78, column: 6, scope: !51)
!946 = !DILocation(line: 79, column: 3, scope: !947)
!947 = distinct !DILexicalBlock(scope: !944, file: !3, line: 78, column: 19)
!948 = !DILocation(line: 84, column: 9, scope: !51)
!949 = !DILocation(line: 84, column: 7, scope: !51)
!950 = !DILocation(line: 85, column: 7, scope: !951)
!951 = distinct !DILexicalBlock(scope: !51, file: !3, line: 85, column: 6)
!952 = !DILocation(line: 85, column: 6, scope: !51)
!953 = !DILocation(line: 86, column: 10, scope: !954)
!954 = distinct !DILexicalBlock(scope: !951, file: !3, line: 85, column: 13)
!955 = !DILocation(line: 87, column: 3, scope: !954)
!956 = !DILocation(line: 95, column: 33, scope: !51)
!957 = !DILocation(line: 95, column: 2, scope: !51)
!958 = !DILocation(line: 95, column: 14, scope: !51)
!959 = !DILocation(line: 95, column: 21, scope: !51)
!960 = !DILocation(line: 95, column: 31, scope: !51)
!961 = !DILocation(line: 96, column: 34, scope: !51)
!962 = !DILocation(line: 96, column: 2, scope: !51)
!963 = !DILocation(line: 96, column: 14, scope: !51)
!964 = !DILocation(line: 96, column: 21, scope: !51)
!965 = !DILocation(line: 96, column: 32, scope: !51)
!966 = !DILocation(line: 97, column: 32, scope: !51)
!967 = !DILocation(line: 97, column: 2, scope: !51)
!968 = !DILocation(line: 97, column: 14, scope: !51)
!969 = !DILocation(line: 97, column: 21, scope: !51)
!970 = !DILocation(line: 97, column: 30, scope: !51)
!971 = !DILocation(line: 98, column: 2, scope: !51)
!972 = !DILocation(line: 98, column: 14, scope: !51)
!973 = !DILocation(line: 98, column: 21, scope: !51)
!974 = !DILocation(line: 98, column: 32, scope: !51)
!975 = !DILocation(line: 100, column: 2, scope: !51)
!976 = !DILocation(line: 100, column: 8, scope: !51)
!977 = !DILocation(line: 100, column: 20, scope: !51)
!978 = !DILocation(line: 101, column: 15, scope: !51)
!979 = !DILocation(line: 101, column: 2, scope: !51)
!980 = !DILocation(line: 101, column: 8, scope: !51)
!981 = !DILocation(line: 101, column: 13, scope: !51)
!982 = !DILocation(line: 102, column: 19, scope: !51)
!983 = !DILocation(line: 102, column: 2, scope: !51)
!984 = !DILocation(line: 102, column: 8, scope: !51)
!985 = !DILocation(line: 102, column: 17, scope: !51)
!986 = !DILocation(line: 103, column: 21, scope: !51)
!987 = !DILocation(line: 103, column: 27, scope: !51)
!988 = !DILocation(line: 103, column: 33, scope: !51)
!989 = !DILocation(line: 103, column: 2, scope: !51)
!990 = !DILocation(line: 103, column: 8, scope: !51)
!991 = !DILocation(line: 103, column: 19, scope: !51)
!992 = !DILocation(line: 104, column: 56, scope: !51)
!993 = !DILocation(line: 104, column: 62, scope: !51)
!994 = !DILocation(line: 104, column: 24, scope: !51)
!995 = !DILocation(line: 104, column: 2, scope: !51)
!996 = !DILocation(line: 104, column: 8, scope: !51)
!997 = !DILocation(line: 104, column: 22, scope: !51)
!998 = !DILocation(line: 105, column: 7, scope: !999)
!999 = distinct !DILexicalBlock(scope: !51, file: !3, line: 105, column: 6)
!1000 = !DILocation(line: 105, column: 13, scope: !999)
!1001 = !DILocation(line: 105, column: 6, scope: !51)
!1002 = !DILocation(line: 106, column: 10, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !999, file: !3, line: 105, column: 28)
!1004 = !DILocation(line: 107, column: 3, scope: !1003)
!1005 = !DILocation(line: 116, column: 33, scope: !51)
!1006 = !DILocation(line: 116, column: 11, scope: !51)
!1007 = !DILocation(line: 116, column: 9, scope: !51)
!1008 = !DILocation(line: 116, column: 2, scope: !51)
!1009 = !DILabel(scope: !51, name: "cleanup", file: !3, line: 124)
!1010 = !DILocation(line: 124, column: 1, scope: !51)
!1011 = !DILocation(line: 125, column: 6, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !51, file: !3, line: 125, column: 6)
!1013 = !DILocation(line: 125, column: 6, scope: !51)
!1014 = !DILocation(line: 126, column: 3, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 125, column: 12)
!1016 = !DILocation(line: 127, column: 3, scope: !1015)
!1017 = !DILocation(line: 127, column: 9, scope: !1015)
!1018 = !DILocation(line: 127, column: 23, scope: !1015)
!1019 = !DILocation(line: 128, column: 2, scope: !1015)
!1020 = !DILocation(line: 129, column: 2, scope: !51)
!1021 = !DILocation(line: 130, column: 27, scope: !51)
!1022 = !DILocation(line: 130, column: 2, scope: !51)
!1023 = !DILocation(line: 131, column: 2, scope: !51)
!1024 = !DILocation(line: 132, column: 1, scope: !51)
!1025 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1026, file: !1026, line: 55, type: !1027, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1026 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!35, !30}
!1029 = !DILocalVariable(name: "flags", arg: 1, scope: !1030, file: !1031, line: 162, type: !38)
!1030 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1031, file: !1031, line: 162, type: !1032, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1031 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!1034, !38}
!1034 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1035 = !DILocation(line: 162, column: 67, scope: !1030, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 57, column: 23, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !1026, line: 57, column: 23)
!1038 = distinct !DILexicalBlock(scope: !1025, file: !1026, line: 57, column: 23)
!1039 = !DILocalVariable(name: "size", arg: 1, scope: !1025, file: !1026, line: 55, type: !30)
!1040 = !DILocation(line: 55, column: 55, scope: !1025)
!1041 = !DILocation(line: 57, column: 17, scope: !1025)
!1042 = !DILocalVariable(name: "_flags", scope: !1038, file: !1026, line: 57, type: !38)
!1043 = !DILocation(line: 57, column: 23, scope: !1038)
!1044 = !DILocalVariable(name: "__dummy", scope: !1045, file: !1026, line: 57, type: !38)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !1026, line: 57, column: 23)
!1046 = distinct !DILexicalBlock(scope: !1038, file: !1026, line: 57, column: 23)
!1047 = !DILocation(line: 57, column: 23, scope: !1045)
!1048 = !DILocalVariable(name: "__dummy2", scope: !1045, file: !1026, line: 57, type: !38)
!1049 = !DILocation(line: 57, column: 23, scope: !1046)
!1050 = !DILocalVariable(name: "__dummy", scope: !1051, file: !1026, line: 57, type: !38)
!1051 = distinct !DILexicalBlock(scope: !1037, file: !1026, line: 57, column: 23)
!1052 = !DILocation(line: 57, column: 23, scope: !1051)
!1053 = !DILocalVariable(name: "__dummy2", scope: !1051, file: !1026, line: 57, type: !38)
!1054 = !DILocation(line: 57, column: 23, scope: !1037)
!1055 = !DILocation(line: 164, column: 11, scope: !1030, inlinedAt: !1036)
!1056 = !DILocation(line: 164, column: 17, scope: !1030, inlinedAt: !1036)
!1057 = !DILocation(line: 164, column: 9, scope: !1030, inlinedAt: !1036)
!1058 = !DILocation(line: 57, column: 23, scope: !1025)
!1059 = !DILocation(line: 57, column: 9, scope: !1025)
!1060 = !DILocation(line: 57, column: 2, scope: !1025)
!1061 = distinct !DISubprogram(name: "acpi_os_free", scope: !1026, file: !1026, line: 60, type: !1062, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{null, !35}
!1064 = !DILocalVariable(name: "memory", arg: 1, scope: !1061, file: !1026, line: 60, type: !35)
!1065 = !DILocation(line: 60, column: 39, scope: !1061)
!1066 = !DILocation(line: 62, column: 8, scope: !1061)
!1067 = !DILocation(line: 62, column: 2, scope: !1061)
!1068 = !DILocation(line: 63, column: 1, scope: !1061)
!1069 = distinct !DISubprogram(name: "acpi_ns_one_complete_parse", scope: !3, file: !3, line: 148, type: !1070, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!20, !22, !22, !54}
!1072 = !DILocalVariable(name: "pass_number", arg: 1, scope: !1069, file: !3, line: 148, type: !22)
!1073 = !DILocation(line: 148, column: 32, scope: !1069)
!1074 = !DILocalVariable(name: "table_index", arg: 2, scope: !1069, file: !3, line: 149, type: !22)
!1075 = !DILocation(line: 149, column: 11, scope: !1069)
!1076 = !DILocalVariable(name: "start_node", arg: 3, scope: !1069, file: !3, line: 150, type: !54)
!1077 = !DILocation(line: 150, column: 35, scope: !1069)
!1078 = !DILocalVariable(name: "parse_root", scope: !1069, file: !3, line: 152, type: !190)
!1079 = !DILocation(line: 152, column: 27, scope: !1069)
!1080 = !DILocalVariable(name: "status", scope: !1069, file: !3, line: 153, type: !20)
!1081 = !DILocation(line: 153, column: 14, scope: !1069)
!1082 = !DILocalVariable(name: "aml_length", scope: !1069, file: !3, line: 154, type: !22)
!1083 = !DILocation(line: 154, column: 6, scope: !1069)
!1084 = !DILocalVariable(name: "aml_start", scope: !1069, file: !3, line: 155, type: !26)
!1085 = !DILocation(line: 155, column: 6, scope: !1069)
!1086 = !DILocalVariable(name: "walk_state", scope: !1069, file: !3, line: 156, type: !155)
!1087 = !DILocation(line: 156, column: 26, scope: !1069)
!1088 = !DILocalVariable(name: "table", scope: !1069, file: !3, line: 157, type: !818)
!1089 = !DILocation(line: 157, column: 28, scope: !1069)
!1090 = !DILocalVariable(name: "owner_id", scope: !1069, file: !3, line: 158, type: !167)
!1091 = !DILocation(line: 158, column: 16, scope: !1069)
!1092 = !DILocation(line: 162, column: 35, scope: !1069)
!1093 = !DILocation(line: 162, column: 11, scope: !1069)
!1094 = !DILocation(line: 162, column: 9, scope: !1069)
!1095 = !DILocation(line: 163, column: 6, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 163, column: 6)
!1097 = !DILocation(line: 163, column: 6, scope: !1069)
!1098 = !DILocation(line: 164, column: 3, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 163, column: 28)
!1100 = !DILocation(line: 169, column: 6, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 169, column: 6)
!1102 = !DILocation(line: 169, column: 13, scope: !1101)
!1103 = !DILocation(line: 169, column: 20, scope: !1101)
!1104 = !DILocation(line: 169, column: 6, scope: !1069)
!1105 = !DILocation(line: 170, column: 3, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 169, column: 56)
!1107 = !DILocation(line: 173, column: 20, scope: !1069)
!1108 = !DILocation(line: 173, column: 14, scope: !1069)
!1109 = !DILocation(line: 173, column: 26, scope: !1069)
!1110 = !DILocation(line: 173, column: 12, scope: !1069)
!1111 = !DILocation(line: 174, column: 15, scope: !1069)
!1112 = !DILocation(line: 174, column: 22, scope: !1069)
!1113 = !DILocation(line: 174, column: 29, scope: !1069)
!1114 = !DILocation(line: 174, column: 13, scope: !1069)
!1115 = !DILocation(line: 176, column: 32, scope: !1069)
!1116 = !DILocation(line: 176, column: 11, scope: !1069)
!1117 = !DILocation(line: 176, column: 9, scope: !1069)
!1118 = !DILocation(line: 177, column: 6, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 177, column: 6)
!1120 = !DILocation(line: 177, column: 6, scope: !1069)
!1121 = !DILocation(line: 178, column: 3, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 177, column: 28)
!1123 = !DILocation(line: 183, column: 39, scope: !1069)
!1124 = !DILocation(line: 183, column: 15, scope: !1069)
!1125 = !DILocation(line: 183, column: 13, scope: !1069)
!1126 = !DILocation(line: 184, column: 7, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 184, column: 6)
!1128 = !DILocation(line: 184, column: 6, scope: !1069)
!1129 = !DILocation(line: 185, column: 3, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 184, column: 19)
!1131 = !DILocation(line: 190, column: 41, scope: !1069)
!1132 = !DILocation(line: 190, column: 15, scope: !1069)
!1133 = !DILocation(line: 190, column: 13, scope: !1069)
!1134 = !DILocation(line: 191, column: 7, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 191, column: 6)
!1136 = !DILocation(line: 191, column: 6, scope: !1069)
!1137 = !DILocation(line: 192, column: 19, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 191, column: 19)
!1139 = !DILocation(line: 192, column: 3, scope: !1138)
!1140 = !DILocation(line: 193, column: 3, scope: !1138)
!1141 = !DILocation(line: 196, column: 33, scope: !1069)
!1142 = !DILocation(line: 196, column: 45, scope: !1069)
!1143 = !DILocation(line: 197, column: 12, scope: !1069)
!1144 = !DILocation(line: 197, column: 23, scope: !1069)
!1145 = !DILocation(line: 198, column: 16, scope: !1069)
!1146 = !DILocation(line: 198, column: 12, scope: !1069)
!1147 = !DILocation(line: 196, column: 11, scope: !1069)
!1148 = !DILocation(line: 196, column: 9, scope: !1069)
!1149 = !DILocation(line: 199, column: 6, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 199, column: 6)
!1151 = !DILocation(line: 199, column: 6, scope: !1069)
!1152 = !DILocation(line: 200, column: 29, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 199, column: 28)
!1154 = !DILocation(line: 200, column: 3, scope: !1153)
!1155 = !DILocation(line: 201, column: 3, scope: !1153)
!1156 = !DILocation(line: 206, column: 6, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 206, column: 6)
!1158 = !DILocation(line: 206, column: 60, scope: !1157)
!1159 = !DILocation(line: 207, column: 6, scope: !1157)
!1160 = !DILocation(line: 207, column: 18, scope: !1157)
!1161 = !DILocation(line: 206, column: 6, scope: !1069)
!1162 = !DILocation(line: 208, column: 3, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 207, column: 44)
!1164 = !DILocation(line: 208, column: 15, scope: !1163)
!1165 = !DILocation(line: 208, column: 34, scope: !1163)
!1166 = !DILocation(line: 209, column: 2, scope: !1163)
!1167 = !DILocation(line: 213, column: 6, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 213, column: 6)
!1169 = !DILocation(line: 213, column: 17, scope: !1168)
!1170 = !DILocation(line: 213, column: 20, scope: !1168)
!1171 = !DILocation(line: 213, column: 34, scope: !1168)
!1172 = !DILocation(line: 213, column: 31, scope: !1168)
!1173 = !DILocation(line: 213, column: 6, scope: !1069)
!1174 = !DILocation(line: 215, column: 32, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 213, column: 54)
!1176 = !DILocation(line: 216, column: 11, scope: !1175)
!1177 = !DILocation(line: 215, column: 7, scope: !1175)
!1178 = !DILocation(line: 214, column: 10, scope: !1175)
!1179 = !DILocation(line: 217, column: 7, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 217, column: 7)
!1181 = !DILocation(line: 217, column: 7, scope: !1175)
!1182 = !DILocation(line: 218, column: 30, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 217, column: 29)
!1184 = !DILocation(line: 218, column: 4, scope: !1183)
!1185 = !DILocation(line: 219, column: 4, scope: !1183)
!1186 = !DILocation(line: 221, column: 2, scope: !1175)
!1187 = !DILocation(line: 227, column: 2, scope: !1069)
!1188 = !DILocation(line: 228, column: 29, scope: !1069)
!1189 = !DILocation(line: 228, column: 11, scope: !1069)
!1190 = !DILocation(line: 228, column: 9, scope: !1069)
!1191 = !DILocation(line: 229, column: 2, scope: !1069)
!1192 = !DILabel(scope: !1069, name: "cleanup", file: !3, line: 231)
!1193 = !DILocation(line: 231, column: 1, scope: !1069)
!1194 = !DILocation(line: 232, column: 28, scope: !1069)
!1195 = !DILocation(line: 232, column: 2, scope: !1069)
!1196 = !DILocation(line: 233, column: 2, scope: !1069)
!1197 = !DILocation(line: 234, column: 1, scope: !1069)
!1198 = distinct !DISubprogram(name: "acpi_ns_parse_table", scope: !3, file: !3, line: 250, type: !52, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1199 = !DILocalVariable(name: "table_index", arg: 1, scope: !1198, file: !3, line: 250, type: !22)
!1200 = !DILocation(line: 250, column: 25, scope: !1198)
!1201 = !DILocalVariable(name: "start_node", arg: 2, scope: !1198, file: !3, line: 250, type: !54)
!1202 = !DILocation(line: 250, column: 66, scope: !1198)
!1203 = !DILocalVariable(name: "status", scope: !1198, file: !3, line: 252, type: !20)
!1204 = !DILocation(line: 252, column: 14, scope: !1198)
!1205 = !DILocation(line: 268, column: 33, scope: !1198)
!1206 = !DILocation(line: 268, column: 46, scope: !1198)
!1207 = !DILocation(line: 268, column: 11, scope: !1198)
!1208 = !DILocation(line: 268, column: 9, scope: !1198)
!1209 = !DILocation(line: 270, column: 2, scope: !1198)
!1210 = distinct !DISubprogram(name: "kzalloc", scope: !13, file: !13, line: 662, type: !1211, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!35, !1213, !36}
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 55, baseType: !1214)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1215, line: 72, baseType: !1216)
!1215 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1215, line: 16, baseType: !38)
!1217 = !DILocalVariable(name: "s", arg: 1, scope: !1218, file: !13, line: 445, type: !1221)
!1218 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !13, file: !13, line: 445, type: !1219, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!35, !1221, !36, !1213}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1223, line: 117, flags: DIFlagFwdDecl)
!1223 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1224 = !DILocation(line: 445, column: 72, scope: !1218, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 552, column: 10, scope: !1226, inlinedAt: !1229)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !13, line: 540, column: 34)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !13, line: 540, column: 6)
!1228 = distinct !DISubprogram(name: "kmalloc", scope: !13, file: !13, line: 538, type: !1211, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1229 = distinct !DILocation(line: 664, column: 9, scope: !1210)
!1230 = !DILocalVariable(name: "flags", arg: 2, scope: !1218, file: !13, line: 446, type: !36)
!1231 = !DILocation(line: 446, column: 9, scope: !1218, inlinedAt: !1225)
!1232 = !DILocalVariable(name: "size", arg: 3, scope: !1218, file: !13, line: 446, type: !1213)
!1233 = !DILocation(line: 446, column: 23, scope: !1218, inlinedAt: !1225)
!1234 = !DILocalVariable(name: "ret", scope: !1218, file: !13, line: 448, type: !35)
!1235 = !DILocation(line: 448, column: 8, scope: !1218, inlinedAt: !1225)
!1236 = !DILocalVariable(name: "flags", arg: 1, scope: !1237, file: !13, line: 318, type: !36)
!1237 = distinct !DISubprogram(name: "kmalloc_type", scope: !13, file: !13, line: 318, type: !1238, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!12, !36}
!1240 = !DILocation(line: 318, column: 67, scope: !1237, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 553, column: 20, scope: !1226, inlinedAt: !1229)
!1242 = !DILocalVariable(name: "size", arg: 1, scope: !1243, file: !13, line: 346, type: !1213)
!1243 = distinct !DISubprogram(name: "kmalloc_index", scope: !13, file: !13, line: 346, type: !1244, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!7, !1213}
!1246 = !DILocation(line: 346, column: 58, scope: !1243, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 547, column: 11, scope: !1226, inlinedAt: !1229)
!1248 = !DILocalVariable(name: "size", arg: 1, scope: !1249, file: !13, line: 472, type: !1213)
!1249 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !13, file: !13, line: 472, type: !1250, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!35, !1213, !36, !7}
!1252 = !DILocation(line: 472, column: 28, scope: !1249, inlinedAt: !1253)
!1253 = distinct !DILocation(line: 481, column: 9, scope: !1254, inlinedAt: !1255)
!1254 = distinct !DISubprogram(name: "kmalloc_large", scope: !13, file: !13, line: 478, type: !1211, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1255 = distinct !DILocation(line: 545, column: 11, scope: !1256, inlinedAt: !1229)
!1256 = distinct !DILexicalBlock(scope: !1226, file: !13, line: 544, column: 7)
!1257 = !DILocalVariable(name: "flags", arg: 2, scope: !1249, file: !13, line: 472, type: !36)
!1258 = !DILocation(line: 472, column: 40, scope: !1249, inlinedAt: !1253)
!1259 = !DILocalVariable(name: "order", arg: 3, scope: !1249, file: !13, line: 472, type: !7)
!1260 = !DILocation(line: 472, column: 60, scope: !1249, inlinedAt: !1253)
!1261 = !DILocalVariable(name: "size", arg: 1, scope: !1254, file: !13, line: 478, type: !1213)
!1262 = !DILocation(line: 478, column: 51, scope: !1254, inlinedAt: !1255)
!1263 = !DILocalVariable(name: "flags", arg: 2, scope: !1254, file: !13, line: 478, type: !36)
!1264 = !DILocation(line: 478, column: 63, scope: !1254, inlinedAt: !1255)
!1265 = !DILocalVariable(name: "order", scope: !1254, file: !13, line: 480, type: !7)
!1266 = !DILocation(line: 480, column: 15, scope: !1254, inlinedAt: !1255)
!1267 = !DILocalVariable(name: "size", arg: 1, scope: !1228, file: !13, line: 538, type: !1213)
!1268 = !DILocation(line: 538, column: 45, scope: !1228, inlinedAt: !1229)
!1269 = !DILocalVariable(name: "flags", arg: 2, scope: !1228, file: !13, line: 538, type: !36)
!1270 = !DILocation(line: 538, column: 57, scope: !1228, inlinedAt: !1229)
!1271 = !DILocalVariable(name: "index", scope: !1226, file: !13, line: 542, type: !7)
!1272 = !DILocation(line: 542, column: 16, scope: !1226, inlinedAt: !1229)
!1273 = !DILocalVariable(name: "size", arg: 1, scope: !1210, file: !13, line: 662, type: !1213)
!1274 = !DILocation(line: 662, column: 36, scope: !1210)
!1275 = !DILocalVariable(name: "flags", arg: 2, scope: !1210, file: !13, line: 662, type: !36)
!1276 = !DILocation(line: 662, column: 48, scope: !1210)
!1277 = !DILocation(line: 664, column: 17, scope: !1210)
!1278 = !DILocation(line: 664, column: 23, scope: !1210)
!1279 = !DILocation(line: 664, column: 29, scope: !1210)
!1280 = !DILocation(line: 540, column: 27, scope: !1227, inlinedAt: !1229)
!1281 = !DILocation(line: 540, column: 6, scope: !1227, inlinedAt: !1229)
!1282 = !DILocation(line: 540, column: 6, scope: !1228, inlinedAt: !1229)
!1283 = !DILocation(line: 544, column: 7, scope: !1256, inlinedAt: !1229)
!1284 = !DILocation(line: 544, column: 12, scope: !1256, inlinedAt: !1229)
!1285 = !DILocation(line: 544, column: 7, scope: !1226, inlinedAt: !1229)
!1286 = !DILocation(line: 545, column: 25, scope: !1256, inlinedAt: !1229)
!1287 = !DILocation(line: 545, column: 31, scope: !1256, inlinedAt: !1229)
!1288 = !DILocation(line: 480, column: 33, scope: !1254, inlinedAt: !1255)
!1289 = !DILocation(line: 480, column: 23, scope: !1254, inlinedAt: !1255)
!1290 = !DILocation(line: 481, column: 29, scope: !1254, inlinedAt: !1255)
!1291 = !DILocation(line: 481, column: 35, scope: !1254, inlinedAt: !1255)
!1292 = !DILocation(line: 481, column: 42, scope: !1254, inlinedAt: !1255)
!1293 = !DILocation(line: 474, column: 23, scope: !1249, inlinedAt: !1253)
!1294 = !DILocation(line: 474, column: 29, scope: !1249, inlinedAt: !1253)
!1295 = !DILocation(line: 474, column: 36, scope: !1249, inlinedAt: !1253)
!1296 = !DILocation(line: 474, column: 9, scope: !1249, inlinedAt: !1253)
!1297 = !DILocation(line: 545, column: 4, scope: !1256, inlinedAt: !1229)
!1298 = !DILocation(line: 547, column: 25, scope: !1226, inlinedAt: !1229)
!1299 = !DILocation(line: 348, column: 7, scope: !1300, inlinedAt: !1247)
!1300 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 348, column: 6)
!1301 = !DILocation(line: 348, column: 6, scope: !1243, inlinedAt: !1247)
!1302 = !DILocation(line: 349, column: 3, scope: !1300, inlinedAt: !1247)
!1303 = !DILocation(line: 351, column: 6, scope: !1304, inlinedAt: !1247)
!1304 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 351, column: 6)
!1305 = !DILocation(line: 351, column: 11, scope: !1304, inlinedAt: !1247)
!1306 = !DILocation(line: 351, column: 6, scope: !1243, inlinedAt: !1247)
!1307 = !DILocation(line: 352, column: 3, scope: !1304, inlinedAt: !1247)
!1308 = !DILocation(line: 354, column: 32, scope: !1309, inlinedAt: !1247)
!1309 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 354, column: 6)
!1310 = !DILocation(line: 354, column: 37, scope: !1309, inlinedAt: !1247)
!1311 = !DILocation(line: 354, column: 42, scope: !1309, inlinedAt: !1247)
!1312 = !DILocation(line: 354, column: 45, scope: !1309, inlinedAt: !1247)
!1313 = !DILocation(line: 354, column: 50, scope: !1309, inlinedAt: !1247)
!1314 = !DILocation(line: 354, column: 6, scope: !1243, inlinedAt: !1247)
!1315 = !DILocation(line: 355, column: 3, scope: !1309, inlinedAt: !1247)
!1316 = !DILocation(line: 356, column: 32, scope: !1317, inlinedAt: !1247)
!1317 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 356, column: 6)
!1318 = !DILocation(line: 356, column: 37, scope: !1317, inlinedAt: !1247)
!1319 = !DILocation(line: 356, column: 43, scope: !1317, inlinedAt: !1247)
!1320 = !DILocation(line: 356, column: 46, scope: !1317, inlinedAt: !1247)
!1321 = !DILocation(line: 356, column: 51, scope: !1317, inlinedAt: !1247)
!1322 = !DILocation(line: 356, column: 6, scope: !1243, inlinedAt: !1247)
!1323 = !DILocation(line: 357, column: 3, scope: !1317, inlinedAt: !1247)
!1324 = !DILocation(line: 358, column: 6, scope: !1325, inlinedAt: !1247)
!1325 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 358, column: 6)
!1326 = !DILocation(line: 358, column: 11, scope: !1325, inlinedAt: !1247)
!1327 = !DILocation(line: 358, column: 6, scope: !1243, inlinedAt: !1247)
!1328 = !DILocation(line: 358, column: 26, scope: !1325, inlinedAt: !1247)
!1329 = !DILocation(line: 359, column: 6, scope: !1330, inlinedAt: !1247)
!1330 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 359, column: 6)
!1331 = !DILocation(line: 359, column: 11, scope: !1330, inlinedAt: !1247)
!1332 = !DILocation(line: 359, column: 6, scope: !1243, inlinedAt: !1247)
!1333 = !DILocation(line: 359, column: 26, scope: !1330, inlinedAt: !1247)
!1334 = !DILocation(line: 360, column: 6, scope: !1335, inlinedAt: !1247)
!1335 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 360, column: 6)
!1336 = !DILocation(line: 360, column: 11, scope: !1335, inlinedAt: !1247)
!1337 = !DILocation(line: 360, column: 6, scope: !1243, inlinedAt: !1247)
!1338 = !DILocation(line: 360, column: 26, scope: !1335, inlinedAt: !1247)
!1339 = !DILocation(line: 361, column: 6, scope: !1340, inlinedAt: !1247)
!1340 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 361, column: 6)
!1341 = !DILocation(line: 361, column: 11, scope: !1340, inlinedAt: !1247)
!1342 = !DILocation(line: 361, column: 6, scope: !1243, inlinedAt: !1247)
!1343 = !DILocation(line: 361, column: 26, scope: !1340, inlinedAt: !1247)
!1344 = !DILocation(line: 362, column: 6, scope: !1345, inlinedAt: !1247)
!1345 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 362, column: 6)
!1346 = !DILocation(line: 362, column: 11, scope: !1345, inlinedAt: !1247)
!1347 = !DILocation(line: 362, column: 6, scope: !1243, inlinedAt: !1247)
!1348 = !DILocation(line: 362, column: 26, scope: !1345, inlinedAt: !1247)
!1349 = !DILocation(line: 363, column: 6, scope: !1350, inlinedAt: !1247)
!1350 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 363, column: 6)
!1351 = !DILocation(line: 363, column: 11, scope: !1350, inlinedAt: !1247)
!1352 = !DILocation(line: 363, column: 6, scope: !1243, inlinedAt: !1247)
!1353 = !DILocation(line: 363, column: 26, scope: !1350, inlinedAt: !1247)
!1354 = !DILocation(line: 364, column: 6, scope: !1355, inlinedAt: !1247)
!1355 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 364, column: 6)
!1356 = !DILocation(line: 364, column: 11, scope: !1355, inlinedAt: !1247)
!1357 = !DILocation(line: 364, column: 6, scope: !1243, inlinedAt: !1247)
!1358 = !DILocation(line: 364, column: 26, scope: !1355, inlinedAt: !1247)
!1359 = !DILocation(line: 365, column: 6, scope: !1360, inlinedAt: !1247)
!1360 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 365, column: 6)
!1361 = !DILocation(line: 365, column: 11, scope: !1360, inlinedAt: !1247)
!1362 = !DILocation(line: 365, column: 6, scope: !1243, inlinedAt: !1247)
!1363 = !DILocation(line: 365, column: 26, scope: !1360, inlinedAt: !1247)
!1364 = !DILocation(line: 366, column: 6, scope: !1365, inlinedAt: !1247)
!1365 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 366, column: 6)
!1366 = !DILocation(line: 366, column: 11, scope: !1365, inlinedAt: !1247)
!1367 = !DILocation(line: 366, column: 6, scope: !1243, inlinedAt: !1247)
!1368 = !DILocation(line: 366, column: 26, scope: !1365, inlinedAt: !1247)
!1369 = !DILocation(line: 367, column: 6, scope: !1370, inlinedAt: !1247)
!1370 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 367, column: 6)
!1371 = !DILocation(line: 367, column: 11, scope: !1370, inlinedAt: !1247)
!1372 = !DILocation(line: 367, column: 6, scope: !1243, inlinedAt: !1247)
!1373 = !DILocation(line: 367, column: 26, scope: !1370, inlinedAt: !1247)
!1374 = !DILocation(line: 368, column: 6, scope: !1375, inlinedAt: !1247)
!1375 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 368, column: 6)
!1376 = !DILocation(line: 368, column: 11, scope: !1375, inlinedAt: !1247)
!1377 = !DILocation(line: 368, column: 6, scope: !1243, inlinedAt: !1247)
!1378 = !DILocation(line: 368, column: 26, scope: !1375, inlinedAt: !1247)
!1379 = !DILocation(line: 369, column: 6, scope: !1380, inlinedAt: !1247)
!1380 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 369, column: 6)
!1381 = !DILocation(line: 369, column: 11, scope: !1380, inlinedAt: !1247)
!1382 = !DILocation(line: 369, column: 6, scope: !1243, inlinedAt: !1247)
!1383 = !DILocation(line: 369, column: 26, scope: !1380, inlinedAt: !1247)
!1384 = !DILocation(line: 370, column: 6, scope: !1385, inlinedAt: !1247)
!1385 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 370, column: 6)
!1386 = !DILocation(line: 370, column: 11, scope: !1385, inlinedAt: !1247)
!1387 = !DILocation(line: 370, column: 6, scope: !1243, inlinedAt: !1247)
!1388 = !DILocation(line: 370, column: 26, scope: !1385, inlinedAt: !1247)
!1389 = !DILocation(line: 371, column: 6, scope: !1390, inlinedAt: !1247)
!1390 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 371, column: 6)
!1391 = !DILocation(line: 371, column: 11, scope: !1390, inlinedAt: !1247)
!1392 = !DILocation(line: 371, column: 6, scope: !1243, inlinedAt: !1247)
!1393 = !DILocation(line: 371, column: 26, scope: !1390, inlinedAt: !1247)
!1394 = !DILocation(line: 372, column: 6, scope: !1395, inlinedAt: !1247)
!1395 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 372, column: 6)
!1396 = !DILocation(line: 372, column: 11, scope: !1395, inlinedAt: !1247)
!1397 = !DILocation(line: 372, column: 6, scope: !1243, inlinedAt: !1247)
!1398 = !DILocation(line: 372, column: 26, scope: !1395, inlinedAt: !1247)
!1399 = !DILocation(line: 373, column: 6, scope: !1400, inlinedAt: !1247)
!1400 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 373, column: 6)
!1401 = !DILocation(line: 373, column: 11, scope: !1400, inlinedAt: !1247)
!1402 = !DILocation(line: 373, column: 6, scope: !1243, inlinedAt: !1247)
!1403 = !DILocation(line: 373, column: 26, scope: !1400, inlinedAt: !1247)
!1404 = !DILocation(line: 374, column: 6, scope: !1405, inlinedAt: !1247)
!1405 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 374, column: 6)
!1406 = !DILocation(line: 374, column: 11, scope: !1405, inlinedAt: !1247)
!1407 = !DILocation(line: 374, column: 6, scope: !1243, inlinedAt: !1247)
!1408 = !DILocation(line: 374, column: 26, scope: !1405, inlinedAt: !1247)
!1409 = !DILocation(line: 375, column: 6, scope: !1410, inlinedAt: !1247)
!1410 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 375, column: 6)
!1411 = !DILocation(line: 375, column: 11, scope: !1410, inlinedAt: !1247)
!1412 = !DILocation(line: 375, column: 6, scope: !1243, inlinedAt: !1247)
!1413 = !DILocation(line: 375, column: 27, scope: !1410, inlinedAt: !1247)
!1414 = !DILocation(line: 376, column: 6, scope: !1415, inlinedAt: !1247)
!1415 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 376, column: 6)
!1416 = !DILocation(line: 376, column: 11, scope: !1415, inlinedAt: !1247)
!1417 = !DILocation(line: 376, column: 6, scope: !1243, inlinedAt: !1247)
!1418 = !DILocation(line: 376, column: 32, scope: !1415, inlinedAt: !1247)
!1419 = !DILocation(line: 377, column: 6, scope: !1420, inlinedAt: !1247)
!1420 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 377, column: 6)
!1421 = !DILocation(line: 377, column: 11, scope: !1420, inlinedAt: !1247)
!1422 = !DILocation(line: 377, column: 6, scope: !1243, inlinedAt: !1247)
!1423 = !DILocation(line: 377, column: 32, scope: !1420, inlinedAt: !1247)
!1424 = !DILocation(line: 378, column: 6, scope: !1425, inlinedAt: !1247)
!1425 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 378, column: 6)
!1426 = !DILocation(line: 378, column: 11, scope: !1425, inlinedAt: !1247)
!1427 = !DILocation(line: 378, column: 6, scope: !1243, inlinedAt: !1247)
!1428 = !DILocation(line: 378, column: 32, scope: !1425, inlinedAt: !1247)
!1429 = !DILocation(line: 379, column: 6, scope: !1430, inlinedAt: !1247)
!1430 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 379, column: 6)
!1431 = !DILocation(line: 379, column: 11, scope: !1430, inlinedAt: !1247)
!1432 = !DILocation(line: 379, column: 6, scope: !1243, inlinedAt: !1247)
!1433 = !DILocation(line: 379, column: 33, scope: !1430, inlinedAt: !1247)
!1434 = !DILocation(line: 380, column: 6, scope: !1435, inlinedAt: !1247)
!1435 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 380, column: 6)
!1436 = !DILocation(line: 380, column: 11, scope: !1435, inlinedAt: !1247)
!1437 = !DILocation(line: 380, column: 6, scope: !1243, inlinedAt: !1247)
!1438 = !DILocation(line: 380, column: 33, scope: !1435, inlinedAt: !1247)
!1439 = !DILocation(line: 381, column: 6, scope: !1440, inlinedAt: !1247)
!1440 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 381, column: 6)
!1441 = !DILocation(line: 381, column: 11, scope: !1440, inlinedAt: !1247)
!1442 = !DILocation(line: 381, column: 6, scope: !1243, inlinedAt: !1247)
!1443 = !DILocation(line: 381, column: 33, scope: !1440, inlinedAt: !1247)
!1444 = !DILocation(line: 382, column: 2, scope: !1445, inlinedAt: !1247)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !13, line: 382, column: 2)
!1446 = distinct !DILexicalBlock(scope: !1243, file: !13, line: 382, column: 2)
!1447 = !{i32 -2144112396, i32 -2144112367, i32 -2144112321, i32 -2144112263, i32 -2144112209, i32 -2144112155, i32 -2144112100, i32 -2144112069}
!1448 = !DILocation(line: 382, column: 2, scope: !1449, inlinedAt: !1247)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !13, line: 382, column: 2)
!1450 = distinct !DILexicalBlock(scope: !1446, file: !13, line: 382, column: 2)
!1451 = !{i32 -2144111626, i32 -2144111619, i32 -2144111565, i32 -2144111534, i32 -2144111504}
!1452 = !DILocation(line: 382, column: 2, scope: !1450, inlinedAt: !1247)
!1453 = !DILocation(line: 386, column: 1, scope: !1243, inlinedAt: !1247)
!1454 = !DILocation(line: 547, column: 9, scope: !1226, inlinedAt: !1229)
!1455 = !DILocation(line: 549, column: 8, scope: !1456, inlinedAt: !1229)
!1456 = distinct !DILexicalBlock(scope: !1226, file: !13, line: 549, column: 7)
!1457 = !DILocation(line: 549, column: 7, scope: !1226, inlinedAt: !1229)
!1458 = !DILocation(line: 550, column: 4, scope: !1456, inlinedAt: !1229)
!1459 = !DILocation(line: 553, column: 33, scope: !1226, inlinedAt: !1229)
!1460 = !DILocation(line: 325, column: 6, scope: !1461, inlinedAt: !1241)
!1461 = distinct !DILexicalBlock(scope: !1237, file: !13, line: 325, column: 6)
!1462 = !DILocation(line: 325, column: 6, scope: !1237, inlinedAt: !1241)
!1463 = !DILocation(line: 326, column: 3, scope: !1461, inlinedAt: !1241)
!1464 = !DILocation(line: 332, column: 9, scope: !1237, inlinedAt: !1241)
!1465 = !DILocation(line: 332, column: 15, scope: !1237, inlinedAt: !1241)
!1466 = !DILocation(line: 332, column: 2, scope: !1237, inlinedAt: !1241)
!1467 = !DILocation(line: 336, column: 1, scope: !1237, inlinedAt: !1241)
!1468 = !DILocation(line: 553, column: 5, scope: !1226, inlinedAt: !1229)
!1469 = !DILocation(line: 553, column: 41, scope: !1226, inlinedAt: !1229)
!1470 = !DILocation(line: 554, column: 5, scope: !1226, inlinedAt: !1229)
!1471 = !DILocation(line: 554, column: 12, scope: !1226, inlinedAt: !1229)
!1472 = !DILocation(line: 448, column: 31, scope: !1218, inlinedAt: !1225)
!1473 = !DILocation(line: 448, column: 34, scope: !1218, inlinedAt: !1225)
!1474 = !DILocation(line: 448, column: 14, scope: !1218, inlinedAt: !1225)
!1475 = !DILocation(line: 450, column: 22, scope: !1218, inlinedAt: !1225)
!1476 = !DILocation(line: 450, column: 25, scope: !1218, inlinedAt: !1225)
!1477 = !DILocation(line: 450, column: 30, scope: !1218, inlinedAt: !1225)
!1478 = !DILocation(line: 450, column: 36, scope: !1218, inlinedAt: !1225)
!1479 = !DILocation(line: 450, column: 8, scope: !1218, inlinedAt: !1225)
!1480 = !DILocation(line: 450, column: 6, scope: !1218, inlinedAt: !1225)
!1481 = !DILocation(line: 451, column: 9, scope: !1218, inlinedAt: !1225)
!1482 = !DILocation(line: 552, column: 3, scope: !1226, inlinedAt: !1229)
!1483 = !DILocation(line: 557, column: 19, scope: !1228, inlinedAt: !1229)
!1484 = !DILocation(line: 557, column: 25, scope: !1228, inlinedAt: !1229)
!1485 = !DILocation(line: 557, column: 9, scope: !1228, inlinedAt: !1229)
!1486 = !DILocation(line: 557, column: 2, scope: !1228, inlinedAt: !1229)
!1487 = !DILocation(line: 558, column: 1, scope: !1228, inlinedAt: !1229)
!1488 = !DILocation(line: 664, column: 2, scope: !1210)
!1489 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1490, file: !1490, line: 646, type: !1491, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1490 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!38}
!1493 = !DILocalVariable(name: "__ret", scope: !1494, file: !1490, line: 648, type: !38)
!1494 = distinct !DILexicalBlock(scope: !1489, file: !1490, line: 648, column: 9)
!1495 = !DILocation(line: 648, column: 9, scope: !1494)
!1496 = !DILocalVariable(name: "__edi", scope: !1494, file: !1490, line: 648, type: !38)
!1497 = !DILocalVariable(name: "__esi", scope: !1494, file: !1490, line: 648, type: !38)
!1498 = !DILocalVariable(name: "__edx", scope: !1494, file: !1490, line: 648, type: !38)
!1499 = !DILocalVariable(name: "__ecx", scope: !1494, file: !1490, line: 648, type: !38)
!1500 = !DILocalVariable(name: "__eax", scope: !1494, file: !1490, line: 648, type: !38)
!1501 = !DILocation(line: 648, column: 9, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !1490, line: 648, column: 9)
!1503 = distinct !DILexicalBlock(scope: !1494, file: !1490, line: 648, column: 9)
!1504 = !{i32 -2145786002, i32 -2145783687, i32 -2145783453, i32 -2145783402, i32 -2145783374, i32 -2145783349, i32 -2145783665, i32 -2145783652, i32 -2145783214, i32 -2145783095, i32 -2145783560, i32 -2145783533, i32 -2145783505, i32 -2145783475}
!1505 = !DILocalVariable(name: "__mask", scope: !1506, file: !1490, line: 648, type: !38)
!1506 = distinct !DILexicalBlock(scope: !1502, file: !1490, line: 648, column: 9)
!1507 = !DILocation(line: 648, column: 9, scope: !1506)
!1508 = !DILocation(line: 648, column: 9, scope: !1503)
!1509 = !DILocation(line: 648, column: 2, scope: !1489)
!1510 = distinct !DISubprogram(name: "get_order", scope: !1511, file: !1511, line: 29, type: !1032, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1511 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1512 = !DILocalVariable(name: "x", arg: 1, scope: !1513, file: !1514, line: 366, type: !32)
!1513 = distinct !DISubprogram(name: "fls64", scope: !1514, file: !1514, line: 366, type: !1515, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1514 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!1034, !32}
!1517 = !DILocation(line: 366, column: 40, scope: !1513, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 46, column: 9, scope: !1510)
!1519 = !DILocalVariable(name: "bitpos", scope: !1513, file: !1514, line: 368, type: !1034)
!1520 = !DILocation(line: 368, column: 6, scope: !1513, inlinedAt: !1518)
!1521 = !DILocalVariable(name: "size", arg: 1, scope: !1510, file: !1511, line: 29, type: !38)
!1522 = !DILocation(line: 29, column: 63, scope: !1510)
!1523 = !DILocation(line: 31, column: 27, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1510, file: !1511, line: 31, column: 6)
!1525 = !DILocation(line: 31, column: 6, scope: !1524)
!1526 = !DILocation(line: 31, column: 6, scope: !1510)
!1527 = !DILocation(line: 32, column: 8, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !1511, line: 32, column: 7)
!1529 = distinct !DILexicalBlock(scope: !1524, file: !1511, line: 31, column: 34)
!1530 = !DILocation(line: 32, column: 7, scope: !1529)
!1531 = !DILocation(line: 33, column: 4, scope: !1528)
!1532 = !DILocation(line: 35, column: 7, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1529, file: !1511, line: 35, column: 7)
!1534 = !DILocation(line: 35, column: 12, scope: !1533)
!1535 = !DILocation(line: 35, column: 7, scope: !1529)
!1536 = !DILocation(line: 36, column: 4, scope: !1533)
!1537 = !DILocation(line: 38, column: 10, scope: !1529)
!1538 = !DILocation(line: 38, column: 28, scope: !1529)
!1539 = !DILocation(line: 38, column: 41, scope: !1529)
!1540 = !DILocation(line: 38, column: 3, scope: !1529)
!1541 = !DILocation(line: 41, column: 6, scope: !1510)
!1542 = !DILocation(line: 42, column: 7, scope: !1510)
!1543 = !DILocation(line: 46, column: 15, scope: !1510)
!1544 = !DILocation(line: 374, column: 2, scope: !1513, inlinedAt: !1518)
!1545 = !DILocation(line: 376, column: 14, scope: !1513, inlinedAt: !1518)
!1546 = !{i32 658806}
!1547 = !DILocation(line: 377, column: 9, scope: !1513, inlinedAt: !1518)
!1548 = !DILocation(line: 377, column: 16, scope: !1513, inlinedAt: !1518)
!1549 = !DILocation(line: 46, column: 2, scope: !1510)
!1550 = !DILocation(line: 48, column: 1, scope: !1510)
!1551 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1552, file: !1552, line: 30, type: !1553, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1552 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!1034, !31}
!1555 = !DILocation(line: 366, column: 40, scope: !1513, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 32, column: 9, scope: !1551)
!1557 = !DILocation(line: 368, column: 6, scope: !1513, inlinedAt: !1556)
!1558 = !DILocalVariable(name: "n", arg: 1, scope: !1551, file: !1552, line: 30, type: !31)
!1559 = !DILocation(line: 30, column: 21, scope: !1551)
!1560 = !DILocation(line: 32, column: 15, scope: !1551)
!1561 = !DILocation(line: 374, column: 2, scope: !1513, inlinedAt: !1556)
!1562 = !DILocation(line: 376, column: 14, scope: !1513, inlinedAt: !1556)
!1563 = !DILocation(line: 377, column: 9, scope: !1513, inlinedAt: !1556)
!1564 = !DILocation(line: 377, column: 16, scope: !1513, inlinedAt: !1556)
!1565 = !DILocation(line: 32, column: 18, scope: !1551)
!1566 = !DILocation(line: 32, column: 2, scope: !1551)
!1567 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1568, file: !1568, line: 137, type: !1569, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1568 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!35, !1221, !1571, !1213, !36}
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1573 = !DILocalVariable(name: "s", arg: 1, scope: !1567, file: !1568, line: 137, type: !1221)
!1574 = !DILocation(line: 137, column: 54, scope: !1567)
!1575 = !DILocalVariable(name: "object", arg: 2, scope: !1567, file: !1568, line: 137, type: !1571)
!1576 = !DILocation(line: 137, column: 69, scope: !1567)
!1577 = !DILocalVariable(name: "size", arg: 3, scope: !1567, file: !1568, line: 138, type: !1213)
!1578 = !DILocation(line: 138, column: 12, scope: !1567)
!1579 = !DILocalVariable(name: "flags", arg: 4, scope: !1567, file: !1568, line: 138, type: !36)
!1580 = !DILocation(line: 138, column: 24, scope: !1567)
!1581 = !DILocation(line: 140, column: 17, scope: !1567)
!1582 = !DILocation(line: 140, column: 2, scope: !1567)
