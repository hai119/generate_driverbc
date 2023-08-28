; ModuleID = '../bcout/drivers/acpi/acpica/uteval.llvm.bc'
source_filename = "drivers/acpi/acpica/uteval.c"
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
%struct.acpi_evaluate_info = type { %struct.acpi_namespace_node*, i8*, %union.acpi_operand_object**, %struct.acpi_namespace_node*, %union.acpi_operand_object*, i8*, %union.acpi_predefined_info*, %union.acpi_operand_object*, %union.acpi_operand_object*, i32, i32, i16, i16, i8, i8, i8 }
%union.acpi_predefined_info = type { %struct.acpi_name_info }
%struct.acpi_name_info = type <{ [4 x i8], i16, i8 }>
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }

@_acpi_module_name = internal constant [7 x i8] c"uteval\00", align 1, !dbg !0
@.str = private unnamed_addr constant [24 x i8] c"Method execution failed\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"No object was returned from\00", align 1
@acpi_gbl_enable_interpreter_slack = external dso_local global i8, align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Return object type is incorrect\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Type returned from %s was incorrect: %s, expected Btypes: 0x%X\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"_STA\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_evaluate_object(%struct.acpi_namespace_node* %prefix_node, i8* %path, i32 %expected_return_btypes, %union.acpi_operand_object** %return_desc) #0 !dbg !44 {
entry:
  %retval = alloca i32, align 4
  %prefix_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %path.addr = alloca i8*, align 8
  %expected_return_btypes.addr = alloca i32, align 4
  %return_desc.addr = alloca %union.acpi_operand_object**, align 8
  %info = alloca %struct.acpi_evaluate_info*, align 8
  %status = alloca i32, align 4
  %return_btype = alloca i32, align 4
  store %struct.acpi_namespace_node* %prefix_node, %struct.acpi_namespace_node** %prefix_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %prefix_node.addr, metadata !806, metadata !DIExpression()), !dbg !807
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !808, metadata !DIExpression()), !dbg !809
  store i32 %expected_return_btypes, i32* %expected_return_btypes.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %expected_return_btypes.addr, metadata !810, metadata !DIExpression()), !dbg !811
  store %union.acpi_operand_object** %return_desc, %union.acpi_operand_object*** %return_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_desc.addr, metadata !812, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info, metadata !814, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.declare(metadata i32* %status, metadata !880, metadata !DIExpression()), !dbg !881
  call void @llvm.dbg.declare(metadata i32* %return_btype, metadata !882, metadata !DIExpression()), !dbg !883
  %call = call i8* @acpi_os_allocate_zeroed(i64 88) #8, !dbg !884
  %0 = bitcast i8* %call to %struct.acpi_evaluate_info*, !dbg !884
  store %struct.acpi_evaluate_info* %0, %struct.acpi_evaluate_info** %info, align 8, !dbg !885
  %1 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !886
  %tobool = icmp ne %struct.acpi_evaluate_info* %1, null, !dbg !886
  br i1 %tobool, label %if.end, label %if.then, !dbg !888

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !889
  br label %return, !dbg !889

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prefix_node.addr, align 8, !dbg !891
  %3 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !892
  %prefix_node1 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %3, i32 0, i32 0, !dbg !893
  store %struct.acpi_namespace_node* %2, %struct.acpi_namespace_node** %prefix_node1, align 8, !dbg !894
  %4 = load i8*, i8** %path.addr, align 8, !dbg !895
  %5 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !896
  %relative_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %5, i32 0, i32 1, !dbg !897
  store i8* %4, i8** %relative_pathname, align 8, !dbg !898
  %6 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !899
  %call2 = call i32 @acpi_ns_evaluate(%struct.acpi_evaluate_info* %6) #8, !dbg !900
  store i32 %call2, i32* %status, align 4, !dbg !901
  %7 = load i32, i32* %status, align 4, !dbg !902
  %tobool3 = icmp ne i32 %7, 0, !dbg !902
  br i1 %tobool3, label %if.then4, label %if.end7, !dbg !904

if.then4:                                         ; preds = %if.end
  %8 = load i32, i32* %status, align 4, !dbg !905
  %cmp = icmp eq i32 %8, 5, !dbg !908
  br i1 %cmp, label %if.then5, label %if.else, !dbg !909

if.then5:                                         ; preds = %if.then4
  br label %if.end6, !dbg !910

if.else:                                          ; preds = %if.then4
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prefix_node.addr, align 8, !dbg !912
  %10 = load i8*, i8** %path.addr, align 8, !dbg !912
  %11 = load i32, i32* %status, align 4, !dbg !912
  call void @acpi_ut_method_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.acpi_namespace_node* %9, i8* %10, i32 %11) #8, !dbg !912
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  br label %cleanup, !dbg !914

if.end7:                                          ; preds = %if.end
  %12 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !915
  %return_object = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %12, i32 0, i32 7, !dbg !917
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !917
  %tobool8 = icmp ne %union.acpi_operand_object* %13, null, !dbg !915
  br i1 %tobool8, label %if.end13, label %if.then9, !dbg !918

if.then9:                                         ; preds = %if.end7
  %14 = load i32, i32* %expected_return_btypes.addr, align 4, !dbg !919
  %tobool10 = icmp ne i32 %14, 0, !dbg !919
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !922

if.then11:                                        ; preds = %if.then9
  %15 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prefix_node.addr, align 8, !dbg !923
  %16 = load i8*, i8** %path.addr, align 8, !dbg !923
  call void @acpi_ut_method_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.acpi_namespace_node* %15, i8* %16, i32 6) #8, !dbg !923
  store i32 6, i32* %status, align 4, !dbg !925
  br label %if.end12, !dbg !926

if.end12:                                         ; preds = %if.then11, %if.then9
  br label %cleanup, !dbg !927

if.end13:                                         ; preds = %if.end7
  %17 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !928
  %return_object14 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %17, i32 0, i32 7, !dbg !929
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object14, align 8, !dbg !929
  %common = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_common*, !dbg !930
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !931
  %19 = load i8, i8* %type, align 1, !dbg !931
  %conv = zext i8 %19 to i32, !dbg !932
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb15
    i32 2, label %sw.bb16
    i32 4, label %sw.bb17
  ], !dbg !933

sw.bb:                                            ; preds = %if.end13
  store i32 1, i32* %return_btype, align 4, !dbg !934
  br label %sw.epilog, !dbg !936

sw.bb15:                                          ; preds = %if.end13
  store i32 4, i32* %return_btype, align 4, !dbg !937
  br label %sw.epilog, !dbg !938

sw.bb16:                                          ; preds = %if.end13
  store i32 2, i32* %return_btype, align 4, !dbg !939
  br label %sw.epilog, !dbg !940

sw.bb17:                                          ; preds = %if.end13
  store i32 8, i32* %return_btype, align 4, !dbg !941
  br label %sw.epilog, !dbg !942

sw.default:                                       ; preds = %if.end13
  store i32 0, i32* %return_btype, align 4, !dbg !943
  br label %sw.epilog, !dbg !944

sw.epilog:                                        ; preds = %sw.default, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb
  %20 = load i8, i8* @acpi_gbl_enable_interpreter_slack, align 1, !dbg !945
  %conv18 = zext i8 %20 to i32, !dbg !947
  %tobool19 = icmp ne i32 %conv18, 0, !dbg !947
  br i1 %tobool19, label %land.lhs.true, label %if.end23, !dbg !948

land.lhs.true:                                    ; preds = %sw.epilog
  %21 = load i32, i32* %expected_return_btypes.addr, align 4, !dbg !949
  %tobool20 = icmp ne i32 %21, 0, !dbg !949
  br i1 %tobool20, label %if.end23, label %if.then21, !dbg !950

if.then21:                                        ; preds = %land.lhs.true
  %22 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !951
  %return_object22 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %22, i32 0, i32 7, !dbg !953
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object22, align 8, !dbg !953
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %23) #8, !dbg !954
  br label %cleanup, !dbg !955

if.end23:                                         ; preds = %land.lhs.true, %sw.epilog
  %24 = load i32, i32* %expected_return_btypes.addr, align 4, !dbg !956
  %25 = load i32, i32* %return_btype, align 4, !dbg !958
  %and = and i32 %24, %25, !dbg !959
  %tobool24 = icmp ne i32 %and, 0, !dbg !959
  br i1 %tobool24, label %if.end29, label %if.then25, !dbg !960

if.then25:                                        ; preds = %if.end23
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prefix_node.addr, align 8, !dbg !961
  %27 = load i8*, i8** %path.addr, align 8, !dbg !961
  call void @acpi_ut_method_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 131, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), %struct.acpi_namespace_node* %26, i8* %27, i32 8) #8, !dbg !961
  %28 = load i8*, i8** %path.addr, align 8, !dbg !963
  %29 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !963
  %return_object26 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %29, i32 0, i32 7, !dbg !963
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object26, align 8, !dbg !963
  %call27 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %30) #8, !dbg !963
  %31 = load i32, i32* %expected_return_btypes.addr, align 4, !dbg !963
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 133, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i8* %28, i8* %call27, i32 %31) #8, !dbg !963
  %32 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !964
  %return_object28 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %32, i32 0, i32 7, !dbg !965
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object28, align 8, !dbg !965
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %33) #8, !dbg !966
  store i32 8, i32* %status, align 4, !dbg !967
  br label %cleanup, !dbg !968

if.end29:                                         ; preds = %if.end23
  %34 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !969
  %return_object30 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %34, i32 0, i32 7, !dbg !970
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object30, align 8, !dbg !970
  %36 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_desc.addr, align 8, !dbg !971
  store %union.acpi_operand_object* %35, %union.acpi_operand_object** %36, align 8, !dbg !972
  br label %cleanup, !dbg !973

cleanup:                                          ; preds = %if.end29, %if.then25, %if.then21, %if.end12, %if.end6
  call void @llvm.dbg.label(metadata !974), !dbg !975
  %37 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !976
  %38 = bitcast %struct.acpi_evaluate_info* %37 to i8*, !dbg !976
  call void @acpi_os_free(i8* %38) #8, !dbg !976
  %39 = load i32, i32* %status, align 4, !dbg !977
  store i32 %39, i32* %retval, align 4, !dbg !977
  br label %return, !dbg !977

return:                                           ; preds = %cleanup, %if.then
  %40 = load i32, i32* %retval, align 4, !dbg !978
  ret i32 %40, !dbg !978
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !979 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !983, metadata !DIExpression()), !dbg !989
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !993, metadata !DIExpression()), !dbg !994
  %0 = load i64, i64* %size.addr, align 8, !dbg !995
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !996, metadata !DIExpression()), !dbg !997
  br label %do.body, !dbg !997

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !998, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1002, metadata !DIExpression()), !dbg !1001
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1001
  %conv = zext i1 %cmp to i32, !dbg !1001
  store i32 1, i32* %tmp, align 4, !dbg !1001
  %1 = load i32, i32* %tmp, align 4, !dbg !1001
  %call = call i64 @arch_local_save_flags() #8, !dbg !1003
  store i64 %call, i64* %_flags, align 8, !dbg !1003
  br label %do.end, !dbg !1003

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1004, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1007, metadata !DIExpression()), !dbg !1006
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1006
  %conv6 = zext i1 %cmp5 to i32, !dbg !1006
  store i32 1, i32* %tmp7, align 4, !dbg !1006
  %2 = load i32, i32* %tmp7, align 4, !dbg !1006
  %3 = load i64, i64* %_flags, align 8, !dbg !1008
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1009
  %and.i = and i64 %4, 512, !dbg !1010
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1011
  %lnot.i = xor i1 %tobool.i, true, !dbg !1011
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1011
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1008
  %5 = load i32, i32* %tmp8, align 4, !dbg !1008
  store i32 %5, i32* %tmp1, align 4, !dbg !1003
  %6 = load i32, i32* %tmp1, align 4, !dbg !997
  %tobool = icmp ne i32 %6, 0, !dbg !1012
  %7 = zext i1 %tobool to i64, !dbg !1012
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1012
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #8, !dbg !1013
  ret i8* %call10, !dbg !1014
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_evaluate(%struct.acpi_evaluate_info*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_method_error(i8*, i32, i8*, %struct.acpi_namespace_node*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1015 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1018, metadata !DIExpression()), !dbg !1019
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1020
  call void @kfree(i8* %0) #8, !dbg !1021
  ret void, !dbg !1022
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_evaluate_numeric_object(i8* %object_name, %struct.acpi_namespace_node* %device_node, i64* %value) #0 !dbg !1023 {
entry:
  %retval = alloca i32, align 4
  %object_name.addr = alloca i8*, align 8
  %device_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %value.addr = alloca i64*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  store i8* %object_name, i8** %object_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object_name.addr, metadata !1026, metadata !DIExpression()), !dbg !1027
  store %struct.acpi_namespace_node* %device_node, %struct.acpi_namespace_node** %device_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %device_node.addr, metadata !1028, metadata !DIExpression()), !dbg !1029
  store i64* %value, i64** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %value.addr, metadata !1030, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1032, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1034, metadata !DIExpression()), !dbg !1035
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %device_node.addr, align 8, !dbg !1036
  %1 = load i8*, i8** %object_name.addr, align 8, !dbg !1037
  %call = call i32 @acpi_ut_evaluate_object(%struct.acpi_namespace_node* %0, i8* %1, i32 1, %union.acpi_operand_object** %obj_desc) #8, !dbg !1038
  store i32 %call, i32* %status, align 4, !dbg !1039
  %2 = load i32, i32* %status, align 4, !dbg !1040
  %tobool = icmp ne i32 %2, 0, !dbg !1040
  br i1 %tobool, label %if.then, label %if.end, !dbg !1042

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !1043
  store i32 %3, i32* %retval, align 4, !dbg !1043
  br label %return, !dbg !1043

if.end:                                           ; preds = %entry
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1045
  %integer = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_integer*, !dbg !1046
  %value1 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1047
  %5 = load i64, i64* %value1, align 8, !dbg !1047
  %6 = load i64*, i64** %value.addr, align 8, !dbg !1048
  store i64 %5, i64* %6, align 8, !dbg !1049
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1050
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %7) #8, !dbg !1051
  %8 = load i32, i32* %status, align 4, !dbg !1052
  store i32 %8, i32* %retval, align 4, !dbg !1052
  br label %return, !dbg !1052

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !1053
  ret i32 %9, !dbg !1053
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_execute_STA(%struct.acpi_namespace_node* %device_node, i32* %flags) #0 !dbg !1054 {
entry:
  %retval = alloca i32, align 4
  %device_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %flags.addr = alloca i32*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_namespace_node* %device_node, %struct.acpi_namespace_node** %device_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %device_node.addr, metadata !1058, metadata !DIExpression()), !dbg !1059
  store i32* %flags, i32** %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %flags.addr, metadata !1060, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1062, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1064, metadata !DIExpression()), !dbg !1065
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %device_node.addr, align 8, !dbg !1066
  %call = call i32 @acpi_ut_evaluate_object(%struct.acpi_namespace_node* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 1, %union.acpi_operand_object** %obj_desc) #8, !dbg !1067
  store i32 %call, i32* %status, align 4, !dbg !1068
  %1 = load i32, i32* %status, align 4, !dbg !1069
  %tobool = icmp ne i32 %1, 0, !dbg !1069
  br i1 %tobool, label %if.then, label %if.end2, !dbg !1071

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !1072
  %cmp = icmp eq i32 5, %2, !dbg !1075
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1076

if.then1:                                         ; preds = %if.then
  %3 = load i32*, i32** %flags.addr, align 8, !dbg !1077
  store i32 -1, i32* %3, align 4, !dbg !1079
  store i32 0, i32* %status, align 4, !dbg !1080
  br label %if.end, !dbg !1081

if.end:                                           ; preds = %if.then1, %if.then
  %4 = load i32, i32* %status, align 4, !dbg !1082
  store i32 %4, i32* %retval, align 4, !dbg !1082
  br label %return, !dbg !1082

if.end2:                                          ; preds = %entry
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1083
  %integer = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_integer*, !dbg !1084
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1085
  %6 = load i64, i64* %value, align 8, !dbg !1085
  %conv = trunc i64 %6 to i32, !dbg !1086
  %7 = load i32*, i32** %flags.addr, align 8, !dbg !1087
  store i32 %conv, i32* %7, align 4, !dbg !1088
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1089
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %8) #8, !dbg !1090
  %9 = load i32, i32* %status, align 4, !dbg !1091
  store i32 %9, i32* %retval, align 4, !dbg !1091
  br label %return, !dbg !1091

return:                                           ; preds = %if.end2, %if.end
  %10 = load i32, i32* %retval, align 4, !dbg !1092
  ret i32 %10, !dbg !1092
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_execute_power_methods(%struct.acpi_namespace_node* %device_node, i8** %method_names, i8 zeroext %method_count, i8* %out_values) #0 !dbg !1093 {
entry:
  %device_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %method_names.addr = alloca i8**, align 8
  %method_count.addr = alloca i8, align 1
  %out_values.addr = alloca i8*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %final_status = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.acpi_namespace_node* %device_node, %struct.acpi_namespace_node** %device_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %device_node.addr, metadata !1097, metadata !DIExpression()), !dbg !1098
  store i8** %method_names, i8*** %method_names.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %method_names.addr, metadata !1099, metadata !DIExpression()), !dbg !1100
  store i8 %method_count, i8* %method_count.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %method_count.addr, metadata !1101, metadata !DIExpression()), !dbg !1102
  store i8* %out_values, i8** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %out_values.addr, metadata !1103, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1105, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1107, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.declare(metadata i32* %final_status, metadata !1109, metadata !DIExpression()), !dbg !1110
  store i32 5, i32* %final_status, align 4, !dbg !1110
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1111, metadata !DIExpression()), !dbg !1112
  store i32 0, i32* %i, align 4, !dbg !1113
  br label %for.cond, !dbg !1115

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1116
  %1 = load i8, i8* %method_count.addr, align 1, !dbg !1118
  %conv = zext i8 %1 to i32, !dbg !1118
  %cmp = icmp ult i32 %0, %conv, !dbg !1119
  br i1 %cmp, label %for.body, label %for.end, !dbg !1120

for.body:                                         ; preds = %for.cond
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %device_node.addr, align 8, !dbg !1121
  %3 = load i8**, i8*** %method_names.addr, align 8, !dbg !1123
  %4 = load i32, i32* %i, align 4, !dbg !1123
  %idxprom = zext i32 %4 to i64, !dbg !1123
  %arrayidx = getelementptr i8*, i8** %3, i64 %idxprom, !dbg !1123
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !1123
  %call = call i32 @acpi_ut_evaluate_object(%struct.acpi_namespace_node* %2, i8* %5, i32 1, %union.acpi_operand_object** %obj_desc) #8, !dbg !1124
  store i32 %call, i32* %status, align 4, !dbg !1125
  %6 = load i32, i32* %status, align 4, !dbg !1126
  %tobool = icmp ne i32 %6, 0, !dbg !1126
  br i1 %tobool, label %if.end, label %if.then, !dbg !1128

if.then:                                          ; preds = %for.body
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1129
  %integer = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_integer*, !dbg !1131
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1132
  %8 = load i64, i64* %value, align 8, !dbg !1132
  %conv2 = trunc i64 %8 to i8, !dbg !1133
  %9 = load i8*, i8** %out_values.addr, align 8, !dbg !1134
  %10 = load i32, i32* %i, align 4, !dbg !1135
  %idxprom3 = zext i32 %10 to i64, !dbg !1134
  %arrayidx4 = getelementptr i8, i8* %9, i64 %idxprom3, !dbg !1134
  store i8 %conv2, i8* %arrayidx4, align 1, !dbg !1136
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1137
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %11) #8, !dbg !1138
  store i32 0, i32* %final_status, align 4, !dbg !1139
  br label %for.inc, !dbg !1140

if.end:                                           ; preds = %for.body
  %12 = load i8*, i8** %out_values.addr, align 8, !dbg !1141
  %13 = load i32, i32* %i, align 4, !dbg !1142
  %idxprom5 = zext i32 %13 to i64, !dbg !1141
  %arrayidx6 = getelementptr i8, i8* %12, i64 %idxprom5, !dbg !1141
  store i8 -1, i8* %arrayidx6, align 1, !dbg !1143
  %14 = load i32, i32* %status, align 4, !dbg !1144
  %cmp7 = icmp eq i32 %14, 5, !dbg !1146
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !1147

if.then9:                                         ; preds = %if.end
  br label %for.inc, !dbg !1148

if.end10:                                         ; preds = %if.end
  br label %for.inc, !dbg !1150

for.inc:                                          ; preds = %if.end10, %if.then9, %if.then
  %15 = load i32, i32* %i, align 4, !dbg !1151
  %inc = add i32 %15, 1, !dbg !1151
  store i32 %inc, i32* %i, align 4, !dbg !1151
  br label %for.cond, !dbg !1152, !llvm.loop !1153

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %final_status, align 4, !dbg !1155
  ret i32 %16, !dbg !1155
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1156 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1163, metadata !DIExpression()), !dbg !1170
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1176, metadata !DIExpression()), !dbg !1177
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1178, metadata !DIExpression()), !dbg !1179
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1180, metadata !DIExpression()), !dbg !1181
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1182, metadata !DIExpression()), !dbg !1186
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1188, metadata !DIExpression()), !dbg !1192
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1194, metadata !DIExpression()), !dbg !1198
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1203, metadata !DIExpression()), !dbg !1204
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1205, metadata !DIExpression()), !dbg !1206
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1207, metadata !DIExpression()), !dbg !1208
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1209, metadata !DIExpression()), !dbg !1210
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1211, metadata !DIExpression()), !dbg !1212
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1213, metadata !DIExpression()), !dbg !1214
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1215, metadata !DIExpression()), !dbg !1216
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1217, metadata !DIExpression()), !dbg !1218
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1219, metadata !DIExpression()), !dbg !1220
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1221, metadata !DIExpression()), !dbg !1222
  %0 = load i64, i64* %size.addr, align 8, !dbg !1223
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1224
  %or = or i32 %1, 256, !dbg !1225
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1226
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !1227
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1228

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1229
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1230
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1231

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1232
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1233
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1234
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !1235
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1212
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1236
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1237
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1238
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1239
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1240
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1241
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !1242
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1242
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1242
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1242
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !1242
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1243
  br label %kmalloc.exit, !dbg !1243

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1244
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1245
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1245
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1247

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1248
  br label %kmalloc_index.exit.i, !dbg !1248

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1249
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1251
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1252

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1253
  br label %kmalloc_index.exit.i, !dbg !1253

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1254
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1256
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1257

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1258
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1259
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1260

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1261
  br label %kmalloc_index.exit.i, !dbg !1261

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1262
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1264
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1265

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1266
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1267
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1268

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1269
  br label %kmalloc_index.exit.i, !dbg !1269

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1270
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1272
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1273

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1274
  br label %kmalloc_index.exit.i, !dbg !1274

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1275
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1277
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1278

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1279
  br label %kmalloc_index.exit.i, !dbg !1279

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1280
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1282
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1283

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1284
  br label %kmalloc_index.exit.i, !dbg !1284

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1285
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1287
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1288

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1289
  br label %kmalloc_index.exit.i, !dbg !1289

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1290
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1292
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1293

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1294
  br label %kmalloc_index.exit.i, !dbg !1294

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1295
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1297
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1298

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1299
  br label %kmalloc_index.exit.i, !dbg !1299

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1300
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1302
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1303

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1304
  br label %kmalloc_index.exit.i, !dbg !1304

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1305
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1307
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1308

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1309
  br label %kmalloc_index.exit.i, !dbg !1309

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1310
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1312
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1313

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1314
  br label %kmalloc_index.exit.i, !dbg !1314

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1315
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1317
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1318

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1319
  br label %kmalloc_index.exit.i, !dbg !1319

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1320
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1322
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1323

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1324
  br label %kmalloc_index.exit.i, !dbg !1324

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1325
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1327
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1328

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1329
  br label %kmalloc_index.exit.i, !dbg !1329

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1330
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1332
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1333

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1334
  br label %kmalloc_index.exit.i, !dbg !1334

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1335
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1337
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1338

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1339
  br label %kmalloc_index.exit.i, !dbg !1339

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1340
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1342
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1343

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1344
  br label %kmalloc_index.exit.i, !dbg !1344

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1345
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1347
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1348

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1349
  br label %kmalloc_index.exit.i, !dbg !1349

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1350
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1352
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1353

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1354
  br label %kmalloc_index.exit.i, !dbg !1354

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1355
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1357
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1358

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1359
  br label %kmalloc_index.exit.i, !dbg !1359

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1360
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1362
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1363

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1364
  br label %kmalloc_index.exit.i, !dbg !1364

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1365
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1367
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1368

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1369
  br label %kmalloc_index.exit.i, !dbg !1369

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1370
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1372
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1373

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1374
  br label %kmalloc_index.exit.i, !dbg !1374

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1375
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1377
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1378

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1379
  br label %kmalloc_index.exit.i, !dbg !1379

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1380
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1382
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1383

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1384
  br label %kmalloc_index.exit.i, !dbg !1384

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1385
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1387
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1388

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1389
  br label %kmalloc_index.exit.i, !dbg !1389

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !1390, !srcloc !1393
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #7, !dbg !1394, !srcloc !1397
  unreachable, !dbg !1398

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1399
  store i32 %45, i32* %index.i, align 4, !dbg !1400
  %46 = load i32, i32* %index.i, align 4, !dbg !1401
  %tobool.i = icmp ne i32 %46, 0, !dbg !1401
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1403

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1404
  br label %kmalloc.exit, !dbg !1404

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1405
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1406
  %and.i.i = and i32 %48, 17, !dbg !1406
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1406
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1406
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1406
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1406
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1408

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1409
  br label %kmalloc_type.exit.i, !dbg !1409

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1410
  %and2.i.i = and i32 %49, 1, !dbg !1411
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1410
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1410
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1410
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1412
  br label %kmalloc_type.exit.i, !dbg !1412

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1413
  %idxprom.i = zext i32 %51 to i64, !dbg !1414
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1414
  %52 = load i32, i32* %index.i, align 4, !dbg !1415
  %idxprom6.i = zext i32 %52 to i64, !dbg !1414
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1414
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1414
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1416
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1417
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1418
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1419
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !1420
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1420
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1420
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1420
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !1420
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1181
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1421
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1422
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1423
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1424
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !1425
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1426
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1427
  store i8* %62, i8** %retval.i, align 8, !dbg !1428
  br label %kmalloc.exit, !dbg !1428

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1429
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1430
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !1431
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1431
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1431
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1431
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !1431
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1432
  br label %kmalloc.exit, !dbg !1432

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1433
  ret i8* %65, !dbg !1434
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1435 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1439, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1442, metadata !DIExpression()), !dbg !1441
  %0 = load i64, i64* %__edi, align 8, !dbg !1441
  store i64 %0, i64* %__edi, align 8, !dbg !1441
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1443, metadata !DIExpression()), !dbg !1441
  %1 = load i64, i64* %__esi, align 8, !dbg !1441
  store i64 %1, i64* %__esi, align 8, !dbg !1441
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1444, metadata !DIExpression()), !dbg !1441
  %2 = load i64, i64* %__edx, align 8, !dbg !1441
  store i64 %2, i64* %__edx, align 8, !dbg !1441
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1445, metadata !DIExpression()), !dbg !1441
  %3 = load i64, i64* %__ecx, align 8, !dbg !1441
  store i64 %3, i64* %__ecx, align 8, !dbg !1441
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1446, metadata !DIExpression()), !dbg !1441
  %4 = load i64, i64* %__eax, align 8, !dbg !1441
  store i64 %4, i64* %__eax, align 8, !dbg !1441
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1441
  %6 = call i64 @llvm.read_register.i64(metadata !38), !dbg !1447
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !1447, !srcloc !1450
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1447
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1447
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1447
  call void @llvm.write_register.i64(metadata !38, i64 %asmresult1), !dbg !1447
  %8 = load i64, i64* %__eax, align 8, !dbg !1447
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1451, metadata !DIExpression()), !dbg !1453
  store i64 -1, i64* %__mask, align 8, !dbg !1453
  %9 = load i64, i64* %__mask, align 8, !dbg !1453
  store i64 %9, i64* %tmp, align 8, !dbg !1453
  %10 = load i64, i64* %tmp, align 8, !dbg !1453
  %and = and i64 %8, %10, !dbg !1447
  store i64 %and, i64* %__ret, align 8, !dbg !1447
  %11 = load i64, i64* %__ret, align 8, !dbg !1441
  store i64 %11, i64* %tmp2, align 8, !dbg !1454
  %12 = load i64, i64* %tmp2, align 8, !dbg !1441
  ret i64 %12, !dbg !1455
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !1456 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1458, metadata !DIExpression()), !dbg !1463
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1465, metadata !DIExpression()), !dbg !1466
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1467, metadata !DIExpression()), !dbg !1468
  %0 = load i64, i64* %size.addr, align 8, !dbg !1469
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1471
  br i1 %1, label %if.then, label %if.end447, !dbg !1472

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1473
  %tobool = icmp ne i64 %2, 0, !dbg !1473
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1476

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1477
  br label %return, !dbg !1477

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1478
  %cmp = icmp ult i64 %3, 4096, !dbg !1480
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1481

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1482
  br label %return, !dbg !1482

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub = sub i64 %4, 1, !dbg !1483
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1483
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1483

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub4 = sub i64 %6, 1, !dbg !1483
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1483
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1483

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub6 = sub i64 %8, 1, !dbg !1483
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1483
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1483

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1483

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub9 = sub i64 %9, 1, !dbg !1483
  %and = and i64 %sub9, -9223372036854775808, !dbg !1483
  %tobool10 = icmp ne i64 %and, 0, !dbg !1483
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1483

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1483

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub13 = sub i64 %10, 1, !dbg !1483
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1483
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1483
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1483

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1483

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub18 = sub i64 %11, 1, !dbg !1483
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1483
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1483
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1483

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1483

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub23 = sub i64 %12, 1, !dbg !1483
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1483
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1483
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1483

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1483

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub28 = sub i64 %13, 1, !dbg !1483
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1483
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1483
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1483

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1483

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub33 = sub i64 %14, 1, !dbg !1483
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1483
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1483
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1483

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1483

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub38 = sub i64 %15, 1, !dbg !1483
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1483
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1483
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1483

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1483

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub43 = sub i64 %16, 1, !dbg !1483
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1483
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1483
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1483

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1483

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub48 = sub i64 %17, 1, !dbg !1483
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1483
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1483
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1483

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1483

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub53 = sub i64 %18, 1, !dbg !1483
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1483
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1483
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1483

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1483

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub58 = sub i64 %19, 1, !dbg !1483
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1483
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1483
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1483

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1483

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub63 = sub i64 %20, 1, !dbg !1483
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1483
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1483
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1483

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1483

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub68 = sub i64 %21, 1, !dbg !1483
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1483
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1483
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1483

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1483

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub73 = sub i64 %22, 1, !dbg !1483
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1483
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1483
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1483

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1483

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub78 = sub i64 %23, 1, !dbg !1483
  %and79 = and i64 %sub78, 562949953421312, !dbg !1483
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1483
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1483

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1483

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub83 = sub i64 %24, 1, !dbg !1483
  %and84 = and i64 %sub83, 281474976710656, !dbg !1483
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1483
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1483

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1483

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub88 = sub i64 %25, 1, !dbg !1483
  %and89 = and i64 %sub88, 140737488355328, !dbg !1483
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1483
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1483

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1483

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub93 = sub i64 %26, 1, !dbg !1483
  %and94 = and i64 %sub93, 70368744177664, !dbg !1483
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1483
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1483

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1483

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub98 = sub i64 %27, 1, !dbg !1483
  %and99 = and i64 %sub98, 35184372088832, !dbg !1483
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1483
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1483

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1483

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub103 = sub i64 %28, 1, !dbg !1483
  %and104 = and i64 %sub103, 17592186044416, !dbg !1483
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1483
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1483

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1483

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub108 = sub i64 %29, 1, !dbg !1483
  %and109 = and i64 %sub108, 8796093022208, !dbg !1483
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1483
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1483

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1483

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub113 = sub i64 %30, 1, !dbg !1483
  %and114 = and i64 %sub113, 4398046511104, !dbg !1483
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1483
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1483

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1483

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub118 = sub i64 %31, 1, !dbg !1483
  %and119 = and i64 %sub118, 2199023255552, !dbg !1483
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1483
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1483

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1483

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub123 = sub i64 %32, 1, !dbg !1483
  %and124 = and i64 %sub123, 1099511627776, !dbg !1483
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1483
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1483

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1483

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub128 = sub i64 %33, 1, !dbg !1483
  %and129 = and i64 %sub128, 549755813888, !dbg !1483
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1483
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1483

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1483

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub133 = sub i64 %34, 1, !dbg !1483
  %and134 = and i64 %sub133, 274877906944, !dbg !1483
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1483
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1483

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1483

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub138 = sub i64 %35, 1, !dbg !1483
  %and139 = and i64 %sub138, 137438953472, !dbg !1483
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1483
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1483

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1483

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub143 = sub i64 %36, 1, !dbg !1483
  %and144 = and i64 %sub143, 68719476736, !dbg !1483
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1483
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1483

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1483

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub148 = sub i64 %37, 1, !dbg !1483
  %and149 = and i64 %sub148, 34359738368, !dbg !1483
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1483
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1483

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1483

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub153 = sub i64 %38, 1, !dbg !1483
  %and154 = and i64 %sub153, 17179869184, !dbg !1483
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1483
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1483

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1483

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub158 = sub i64 %39, 1, !dbg !1483
  %and159 = and i64 %sub158, 8589934592, !dbg !1483
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1483
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1483

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1483

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub163 = sub i64 %40, 1, !dbg !1483
  %and164 = and i64 %sub163, 4294967296, !dbg !1483
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1483
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1483

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1483

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub168 = sub i64 %41, 1, !dbg !1483
  %and169 = and i64 %sub168, 2147483648, !dbg !1483
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1483
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1483

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1483

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub173 = sub i64 %42, 1, !dbg !1483
  %and174 = and i64 %sub173, 1073741824, !dbg !1483
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1483
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1483

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1483

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub178 = sub i64 %43, 1, !dbg !1483
  %and179 = and i64 %sub178, 536870912, !dbg !1483
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1483
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1483

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1483

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub183 = sub i64 %44, 1, !dbg !1483
  %and184 = and i64 %sub183, 268435456, !dbg !1483
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1483
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1483

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1483

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub188 = sub i64 %45, 1, !dbg !1483
  %and189 = and i64 %sub188, 134217728, !dbg !1483
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1483
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1483

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1483

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub193 = sub i64 %46, 1, !dbg !1483
  %and194 = and i64 %sub193, 67108864, !dbg !1483
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1483
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1483

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1483

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub198 = sub i64 %47, 1, !dbg !1483
  %and199 = and i64 %sub198, 33554432, !dbg !1483
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1483
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1483

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1483

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub203 = sub i64 %48, 1, !dbg !1483
  %and204 = and i64 %sub203, 16777216, !dbg !1483
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1483
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1483

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1483

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub208 = sub i64 %49, 1, !dbg !1483
  %and209 = and i64 %sub208, 8388608, !dbg !1483
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1483
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1483

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1483

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub213 = sub i64 %50, 1, !dbg !1483
  %and214 = and i64 %sub213, 4194304, !dbg !1483
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1483
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1483

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1483

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub218 = sub i64 %51, 1, !dbg !1483
  %and219 = and i64 %sub218, 2097152, !dbg !1483
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1483
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1483

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1483

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub223 = sub i64 %52, 1, !dbg !1483
  %and224 = and i64 %sub223, 1048576, !dbg !1483
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1483
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1483

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1483

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub228 = sub i64 %53, 1, !dbg !1483
  %and229 = and i64 %sub228, 524288, !dbg !1483
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1483
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1483

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1483

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub233 = sub i64 %54, 1, !dbg !1483
  %and234 = and i64 %sub233, 262144, !dbg !1483
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1483
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1483

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1483

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub238 = sub i64 %55, 1, !dbg !1483
  %and239 = and i64 %sub238, 131072, !dbg !1483
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1483
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1483

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1483

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub243 = sub i64 %56, 1, !dbg !1483
  %and244 = and i64 %sub243, 65536, !dbg !1483
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1483
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1483

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1483

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub248 = sub i64 %57, 1, !dbg !1483
  %and249 = and i64 %sub248, 32768, !dbg !1483
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1483
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1483

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1483

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub253 = sub i64 %58, 1, !dbg !1483
  %and254 = and i64 %sub253, 16384, !dbg !1483
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1483
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1483

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1483

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub258 = sub i64 %59, 1, !dbg !1483
  %and259 = and i64 %sub258, 8192, !dbg !1483
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1483
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1483

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1483

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub263 = sub i64 %60, 1, !dbg !1483
  %and264 = and i64 %sub263, 4096, !dbg !1483
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1483
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1483

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1483

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub268 = sub i64 %61, 1, !dbg !1483
  %and269 = and i64 %sub268, 2048, !dbg !1483
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1483
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1483

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1483

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub273 = sub i64 %62, 1, !dbg !1483
  %and274 = and i64 %sub273, 1024, !dbg !1483
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1483
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1483

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1483

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub278 = sub i64 %63, 1, !dbg !1483
  %and279 = and i64 %sub278, 512, !dbg !1483
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1483
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1483

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1483

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub283 = sub i64 %64, 1, !dbg !1483
  %and284 = and i64 %sub283, 256, !dbg !1483
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1483
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1483

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1483

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub288 = sub i64 %65, 1, !dbg !1483
  %and289 = and i64 %sub288, 128, !dbg !1483
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1483
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1483

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1483

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub293 = sub i64 %66, 1, !dbg !1483
  %and294 = and i64 %sub293, 64, !dbg !1483
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1483
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1483

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1483

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub298 = sub i64 %67, 1, !dbg !1483
  %and299 = and i64 %sub298, 32, !dbg !1483
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1483
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1483

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1483

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub303 = sub i64 %68, 1, !dbg !1483
  %and304 = and i64 %sub303, 16, !dbg !1483
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1483
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1483

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1483

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub308 = sub i64 %69, 1, !dbg !1483
  %and309 = and i64 %sub308, 8, !dbg !1483
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1483
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1483

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1483

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub313 = sub i64 %70, 1, !dbg !1483
  %and314 = and i64 %sub313, 4, !dbg !1483
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1483
  %71 = zext i1 %tobool315 to i64, !dbg !1483
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1483
  br label %cond.end, !dbg !1483

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1483
  br label %cond.end317, !dbg !1483

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1483
  br label %cond.end319, !dbg !1483

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1483
  br label %cond.end321, !dbg !1483

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1483
  br label %cond.end323, !dbg !1483

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1483
  br label %cond.end325, !dbg !1483

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1483
  br label %cond.end327, !dbg !1483

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1483
  br label %cond.end329, !dbg !1483

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1483
  br label %cond.end331, !dbg !1483

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1483
  br label %cond.end333, !dbg !1483

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1483
  br label %cond.end335, !dbg !1483

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1483
  br label %cond.end337, !dbg !1483

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1483
  br label %cond.end339, !dbg !1483

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1483
  br label %cond.end341, !dbg !1483

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1483
  br label %cond.end343, !dbg !1483

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1483
  br label %cond.end345, !dbg !1483

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1483
  br label %cond.end347, !dbg !1483

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1483
  br label %cond.end349, !dbg !1483

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1483
  br label %cond.end351, !dbg !1483

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1483
  br label %cond.end353, !dbg !1483

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1483
  br label %cond.end355, !dbg !1483

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1483
  br label %cond.end357, !dbg !1483

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1483
  br label %cond.end359, !dbg !1483

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1483
  br label %cond.end361, !dbg !1483

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1483
  br label %cond.end363, !dbg !1483

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1483
  br label %cond.end365, !dbg !1483

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1483
  br label %cond.end367, !dbg !1483

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1483
  br label %cond.end369, !dbg !1483

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1483
  br label %cond.end371, !dbg !1483

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1483
  br label %cond.end373, !dbg !1483

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1483
  br label %cond.end375, !dbg !1483

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1483
  br label %cond.end377, !dbg !1483

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1483
  br label %cond.end379, !dbg !1483

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1483
  br label %cond.end381, !dbg !1483

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1483
  br label %cond.end383, !dbg !1483

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1483
  br label %cond.end385, !dbg !1483

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1483
  br label %cond.end387, !dbg !1483

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1483
  br label %cond.end389, !dbg !1483

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1483
  br label %cond.end391, !dbg !1483

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1483
  br label %cond.end393, !dbg !1483

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1483
  br label %cond.end395, !dbg !1483

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1483
  br label %cond.end397, !dbg !1483

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1483
  br label %cond.end399, !dbg !1483

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1483
  br label %cond.end401, !dbg !1483

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1483
  br label %cond.end403, !dbg !1483

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1483
  br label %cond.end405, !dbg !1483

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1483
  br label %cond.end407, !dbg !1483

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1483
  br label %cond.end409, !dbg !1483

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1483
  br label %cond.end411, !dbg !1483

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1483
  br label %cond.end413, !dbg !1483

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1483
  br label %cond.end415, !dbg !1483

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1483
  br label %cond.end417, !dbg !1483

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1483
  br label %cond.end419, !dbg !1483

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1483
  br label %cond.end421, !dbg !1483

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1483
  br label %cond.end423, !dbg !1483

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1483
  br label %cond.end425, !dbg !1483

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1483
  br label %cond.end427, !dbg !1483

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1483
  br label %cond.end429, !dbg !1483

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1483
  br label %cond.end431, !dbg !1483

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1483
  br label %cond.end433, !dbg !1483

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1483
  br label %cond.end435, !dbg !1483

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1483
  br label %cond.end437, !dbg !1483

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1483
  br label %cond.end440, !dbg !1483

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1483

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1483
  br label %cond.end444, !dbg !1483

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1483
  %sub443 = sub i64 %72, 1, !dbg !1483
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !1483
  br label %cond.end444, !dbg !1483

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1483
  %sub446 = sub i32 %cond445, 12, !dbg !1484
  %add = add i32 %sub446, 1, !dbg !1485
  store i32 %add, i32* %retval, align 4, !dbg !1486
  br label %return, !dbg !1486

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1487
  %dec = add i64 %73, -1, !dbg !1487
  store i64 %dec, i64* %size.addr, align 8, !dbg !1487
  %74 = load i64, i64* %size.addr, align 8, !dbg !1488
  %shr = lshr i64 %74, 12, !dbg !1488
  store i64 %shr, i64* %size.addr, align 8, !dbg !1488
  %75 = load i64, i64* %size.addr, align 8, !dbg !1489
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1466
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1490
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1491
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !1490, !srcloc !1492
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1490
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1493
  %add.i = add i32 %79, 1, !dbg !1494
  store i32 %add.i, i32* %retval, align 4, !dbg !1495
  br label %return, !dbg !1495

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1496
  ret i32 %80, !dbg !1496
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !1497 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1458, metadata !DIExpression()), !dbg !1501
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1465, metadata !DIExpression()), !dbg !1503
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1504, metadata !DIExpression()), !dbg !1505
  %0 = load i64, i64* %n.addr, align 8, !dbg !1506
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1503
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1507
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1508
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !1507, !srcloc !1492
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1507
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1509
  %add.i = add i32 %4, 1, !dbg !1510
  %sub = sub i32 %add.i, 1, !dbg !1511
  ret i32 %sub, !dbg !1512
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1513 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1519, metadata !DIExpression()), !dbg !1520
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1521, metadata !DIExpression()), !dbg !1522
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1523, metadata !DIExpression()), !dbg !1524
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1525, metadata !DIExpression()), !dbg !1526
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1527
  ret i8* %0, !dbg !1528
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
!llvm.named.register.rsp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !34, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !33, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/uteval.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !21, !22, !24, !26, !27, !30, !32}
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
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !17, line: 17, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !19, line: 21, baseType: !29)
!29 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !31, line: 148, baseType: !7)
!31 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !{!0}
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 56, elements: !36)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!36 = !{!37}
!37 = !DISubrange(count: 7)
!38 = !{!"rsp"}
!39 = !{i32 7, !"Dwarf Version", i32 4}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"Code Model", i32 2}
!43 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!44 = distinct !DISubprogram(name: "acpi_ut_evaluate_object", scope: !3, file: !3, line: 37, type: !45, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!45 = !DISubroutineType(types: !46)
!46 = !{!21, !47, !804, !22, !114}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !49, line: 133, size: 384, elements: !50)
!49 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!50 = !{!51, !791, !792, !793, !794, !800, !801, !802, !803}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !48, file: !49, line: 134, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !54, line: 367, size: 576, elements: !55)
!54 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!55 = !{!56, !67, !80, !90, !104, !118, !127, !442, !459, !474, !487, !565, !577, !591, !601, !619, !641, !660, !679, !698, !711, !737, !754, !767, !781, !790}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !53, file: !54, line: 368, baseType: !57, size: 128)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !54, line: 73, size: 128, elements: !58)
!58 = !{!59, !60, !61, !62, !66}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !57, file: !54, line: 74, baseType: !52, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !57, file: !54, line: 74, baseType: !27, size: 8, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !57, file: !54, line: 74, baseType: !27, size: 8, offset: 72)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !57, file: !54, line: 74, baseType: !63, size: 16, offset: 80)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !17, line: 19, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !19, line: 24, baseType: !65)
!65 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !57, file: !54, line: 74, baseType: !27, size: 8, offset: 96)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !53, file: !54, line: 369, baseType: !68, size: 192)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !54, line: 76, size: 192, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !75, !79}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !68, file: !54, line: 77, baseType: !52, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !68, file: !54, line: 77, baseType: !27, size: 8, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !54, line: 77, baseType: !27, size: 8, offset: 72)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !68, file: !54, line: 77, baseType: !63, size: 16, offset: 80)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !68, file: !54, line: 77, baseType: !27, size: 8, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !68, file: !54, line: 77, baseType: !76, size: 24, offset: 104)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 24, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 3)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !68, file: !54, line: 78, baseType: !16, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !53, file: !54, line: 370, baseType: !81, size: 256)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !54, line: 93, size: 256, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88, !89}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !81, file: !54, line: 94, baseType: !52, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !81, file: !54, line: 94, baseType: !27, size: 8, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !81, file: !54, line: 94, baseType: !27, size: 8, offset: 72)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !81, file: !54, line: 94, baseType: !63, size: 16, offset: 80)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !81, file: !54, line: 94, baseType: !27, size: 8, offset: 96)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !81, file: !54, line: 94, baseType: !24, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !81, file: !54, line: 94, baseType: !22, size: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !53, file: !54, line: 371, baseType: !91, size: 384)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !54, line: 97, size: 384, elements: !92)
!92 = !{!93, !94, !95, !96, !97, !98, !100, !101, !102, !103}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !91, file: !54, line: 98, baseType: !52, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !91, file: !54, line: 98, baseType: !27, size: 8, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !91, file: !54, line: 98, baseType: !27, size: 8, offset: 72)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !91, file: !54, line: 98, baseType: !63, size: 16, offset: 80)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !91, file: !54, line: 98, baseType: !27, size: 8, offset: 96)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !91, file: !54, line: 98, baseType: !99, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !91, file: !54, line: 98, baseType: !22, size: 32, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !91, file: !54, line: 99, baseType: !22, size: 32, offset: 224)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !91, file: !54, line: 100, baseType: !99, size: 64, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !91, file: !54, line: 101, baseType: !47, size: 64, offset: 320)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !53, file: !54, line: 372, baseType: !105, size: 384)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !54, line: 104, size: 384, elements: !106)
!106 = !{!107, !108, !109, !110, !111, !112, !113, !115, !116, !117}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !105, file: !54, line: 105, baseType: !52, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !105, file: !54, line: 105, baseType: !27, size: 8, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !105, file: !54, line: 105, baseType: !27, size: 8, offset: 72)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !105, file: !54, line: 105, baseType: !63, size: 16, offset: 80)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !54, line: 105, baseType: !27, size: 8, offset: 96)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !105, file: !54, line: 105, baseType: !47, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !105, file: !54, line: 106, baseType: !114, size: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !105, file: !54, line: 107, baseType: !99, size: 64, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !105, file: !54, line: 108, baseType: !22, size: 32, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !105, file: !54, line: 109, baseType: !22, size: 32, offset: 352)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !53, file: !54, line: 373, baseType: !119, size: 192)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !54, line: 118, size: 192, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !119, file: !54, line: 119, baseType: !52, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !119, file: !54, line: 119, baseType: !27, size: 8, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !54, line: 119, baseType: !27, size: 8, offset: 72)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !119, file: !54, line: 119, baseType: !63, size: 16, offset: 80)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !54, line: 119, baseType: !27, size: 8, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !119, file: !54, line: 119, baseType: !26, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !53, file: !54, line: 374, baseType: !128, size: 448)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !54, line: 143, size: 448, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !439, !440, !441}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !128, file: !54, line: 144, baseType: !52, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !128, file: !54, line: 144, baseType: !27, size: 8, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !128, file: !54, line: 144, baseType: !27, size: 8, offset: 72)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !128, file: !54, line: 144, baseType: !63, size: 16, offset: 80)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !128, file: !54, line: 144, baseType: !27, size: 8, offset: 96)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !128, file: !54, line: 144, baseType: !27, size: 8, offset: 104)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !128, file: !54, line: 145, baseType: !27, size: 8, offset: 112)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !128, file: !54, line: 146, baseType: !27, size: 8, offset: 120)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !128, file: !54, line: 147, baseType: !52, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !128, file: !54, line: 148, baseType: !52, size: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !128, file: !54, line: 149, baseType: !99, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !128, file: !54, line: 153, baseType: !142, size: 64, offset: 320)
!142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !128, file: !54, line: 150, size: 64, elements: !143)
!143 = !{!144, !438}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !142, file: !54, line: 151, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !49, line: 248, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!21, !149}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !151, line: 37, size: 9024, elements: !152)
!151 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !386, !387, !388, !389, !390, !392, !394, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !421, !422, !423, !424, !425, !426, !427, !428, !430, !436}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !150, file: !151, line: 38, baseType: !149, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !150, file: !151, line: 39, baseType: !27, size: 8, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !150, file: !151, line: 40, baseType: !27, size: 8, offset: 72)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !150, file: !151, line: 41, baseType: !63, size: 16, offset: 80)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !150, file: !151, line: 42, baseType: !27, size: 8, offset: 96)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !150, file: !151, line: 43, baseType: !27, size: 8, offset: 104)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !150, file: !151, line: 44, baseType: !27, size: 8, offset: 112)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !150, file: !151, line: 45, baseType: !161, size: 16, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !15, line: 445, baseType: !63)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !150, file: !151, line: 46, baseType: !27, size: 8, offset: 144)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !150, file: !151, line: 47, baseType: !27, size: 8, offset: 152)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !150, file: !151, line: 48, baseType: !27, size: 8, offset: 160)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !150, file: !151, line: 49, baseType: !27, size: 8, offset: 168)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !150, file: !151, line: 50, baseType: !27, size: 8, offset: 176)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !150, file: !151, line: 51, baseType: !27, size: 8, offset: 184)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !150, file: !151, line: 52, baseType: !27, size: 8, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !150, file: !151, line: 53, baseType: !27, size: 8, offset: 200)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !150, file: !151, line: 54, baseType: !99, size: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !150, file: !151, line: 55, baseType: !22, size: 32, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !150, file: !151, line: 56, baseType: !22, size: 32, offset: 352)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !150, file: !151, line: 57, baseType: !22, size: 32, offset: 384)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !150, file: !151, line: 58, baseType: !22, size: 32, offset: 416)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !150, file: !151, line: 60, baseType: !176, size: 640, offset: 448)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !49, line: 893, size: 640, elements: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !267, !268, !384, !385}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !176, file: !49, line: 894, baseType: !99, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !176, file: !49, line: 895, baseType: !99, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !176, file: !49, line: 896, baseType: !99, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !176, file: !49, line: 897, baseType: !99, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !176, file: !49, line: 898, baseType: !99, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !176, file: !49, line: 899, baseType: !184, size: 64, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !49, line: 875, size: 1600, elements: !186)
!186 = !{!187, !207, !223}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !185, file: !49, line: 876, baseType: !188, size: 448)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !49, line: 828, size: 448, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !206}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !188, file: !49, line: 829, baseType: !184, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !188, file: !49, line: 829, baseType: !27, size: 8, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !188, file: !49, line: 829, baseType: !27, size: 8, offset: 72)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !188, file: !49, line: 829, baseType: !63, size: 16, offset: 80)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !188, file: !49, line: 829, baseType: !99, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !49, line: 829, baseType: !184, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !188, file: !49, line: 829, baseType: !47, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !188, file: !49, line: 829, baseType: !198, size: 64, offset: 320)
!198 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !49, line: 716, size: 64, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !198, file: !49, line: 717, baseType: !16, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !198, file: !49, line: 718, baseType: !22, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !198, file: !49, line: 719, baseType: !24, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !198, file: !49, line: 720, baseType: !99, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !198, file: !49, line: 721, baseType: !24, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !198, file: !49, line: 722, baseType: !184, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !188, file: !49, line: 829, baseType: !27, size: 8, offset: 384)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !185, file: !49, line: 877, baseType: !208, size: 640)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !49, line: 835, size: 640, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !208, file: !49, line: 836, baseType: !184, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !208, file: !49, line: 836, baseType: !27, size: 8, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !208, file: !49, line: 836, baseType: !27, size: 8, offset: 72)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !208, file: !49, line: 836, baseType: !63, size: 16, offset: 80)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !208, file: !49, line: 836, baseType: !99, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !49, line: 836, baseType: !184, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !208, file: !49, line: 836, baseType: !47, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !208, file: !49, line: 836, baseType: !198, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !208, file: !49, line: 836, baseType: !27, size: 8, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !208, file: !49, line: 836, baseType: !24, size: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !208, file: !49, line: 837, baseType: !99, size: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !208, file: !49, line: 838, baseType: !22, size: 32, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !49, line: 839, baseType: !22, size: 32, offset: 608)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !185, file: !49, line: 878, baseType: !224, size: 1600)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !49, line: 846, size: 1600, elements: !225)
!225 = !{!226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !224, file: !49, line: 847, baseType: !184, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !224, file: !49, line: 847, baseType: !27, size: 8, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !224, file: !49, line: 847, baseType: !27, size: 8, offset: 72)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !224, file: !49, line: 847, baseType: !63, size: 16, offset: 80)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !224, file: !49, line: 847, baseType: !99, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !224, file: !49, line: 847, baseType: !184, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !224, file: !49, line: 847, baseType: !47, size: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !224, file: !49, line: 847, baseType: !198, size: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !224, file: !49, line: 847, baseType: !27, size: 8, offset: 384)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !224, file: !49, line: 847, baseType: !184, size: 64, offset: 448)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !224, file: !49, line: 848, baseType: !184, size: 64, offset: 512)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !224, file: !49, line: 849, baseType: !24, size: 64, offset: 576)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !224, file: !49, line: 850, baseType: !27, size: 8, offset: 640)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !224, file: !49, line: 851, baseType: !24, size: 64, offset: 704)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !224, file: !49, line: 852, baseType: !24, size: 64, offset: 768)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !224, file: !49, line: 853, baseType: !24, size: 64, offset: 832)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !224, file: !49, line: 854, baseType: !243, size: 32, offset: 896)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 32, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 4)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !224, file: !49, line: 855, baseType: !22, size: 32, offset: 928)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !224, file: !49, line: 856, baseType: !22, size: 32, offset: 960)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !224, file: !49, line: 857, baseType: !22, size: 32, offset: 992)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !224, file: !49, line: 858, baseType: !22, size: 32, offset: 1024)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !224, file: !49, line: 859, baseType: !22, size: 32, offset: 1056)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !224, file: !49, line: 860, baseType: !22, size: 32, offset: 1088)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !224, file: !49, line: 861, baseType: !22, size: 32, offset: 1120)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !224, file: !49, line: 862, baseType: !22, size: 32, offset: 1152)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !224, file: !49, line: 863, baseType: !22, size: 32, offset: 1184)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !224, file: !49, line: 864, baseType: !22, size: 32, offset: 1216)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !224, file: !49, line: 865, baseType: !22, size: 32, offset: 1248)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !224, file: !49, line: 866, baseType: !22, size: 32, offset: 1280)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !224, file: !49, line: 867, baseType: !22, size: 32, offset: 1312)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !224, file: !49, line: 868, baseType: !63, size: 16, offset: 1344)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !224, file: !49, line: 869, baseType: !27, size: 8, offset: 1360)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !224, file: !49, line: 870, baseType: !27, size: 8, offset: 1368)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !224, file: !49, line: 871, baseType: !27, size: 8, offset: 1376)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !224, file: !49, line: 872, baseType: !264, size: 160, offset: 1384)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 160, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 20)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !176, file: !49, line: 900, baseType: !47, size: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !176, file: !49, line: 901, baseType: !269, size: 64, offset: 448)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !49, line: 663, size: 640, elements: !271)
!271 = !{!272, !280, !293, !302, !311, !324, !338, !350, !362}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !270, file: !49, line: 664, baseType: !273, size: 128)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !49, line: 567, size: 128, elements: !274)
!274 = !{!275, !276, !277, !278, !279}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !273, file: !49, line: 568, baseType: !26, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !273, file: !49, line: 568, baseType: !27, size: 8, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !273, file: !49, line: 568, baseType: !27, size: 8, offset: 72)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !273, file: !49, line: 568, baseType: !63, size: 16, offset: 80)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !273, file: !49, line: 568, baseType: !63, size: 16, offset: 96)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !270, file: !49, line: 665, baseType: !281, size: 384)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !49, line: 593, size: 384, elements: !282)
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290, !291, !292}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !281, file: !49, line: 594, baseType: !26, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !281, file: !49, line: 594, baseType: !27, size: 8, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !281, file: !49, line: 594, baseType: !27, size: 8, offset: 72)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !281, file: !49, line: 594, baseType: !63, size: 16, offset: 80)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !281, file: !49, line: 594, baseType: !63, size: 16, offset: 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !281, file: !49, line: 594, baseType: !63, size: 16, offset: 112)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !281, file: !49, line: 595, baseType: !184, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !281, file: !49, line: 596, baseType: !99, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !281, file: !49, line: 597, baseType: !99, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !281, file: !49, line: 598, baseType: !16, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !270, file: !49, line: 666, baseType: !294, size: 192)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !49, line: 573, size: 192, elements: !295)
!295 = !{!296, !297, !298, !299, !300, !301}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !294, file: !49, line: 574, baseType: !26, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !294, file: !49, line: 574, baseType: !27, size: 8, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !294, file: !49, line: 574, baseType: !27, size: 8, offset: 72)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !294, file: !49, line: 574, baseType: !63, size: 16, offset: 80)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !294, file: !49, line: 574, baseType: !63, size: 16, offset: 96)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !294, file: !49, line: 574, baseType: !52, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !270, file: !49, line: 667, baseType: !303, size: 192)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !49, line: 604, size: 192, elements: !304)
!304 = !{!305, !306, !307, !308, !309, !310}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !303, file: !49, line: 605, baseType: !26, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !303, file: !49, line: 605, baseType: !27, size: 8, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !49, line: 605, baseType: !27, size: 8, offset: 72)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !303, file: !49, line: 605, baseType: !63, size: 16, offset: 80)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !303, file: !49, line: 605, baseType: !63, size: 16, offset: 96)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !303, file: !49, line: 605, baseType: !47, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !270, file: !49, line: 668, baseType: !312, size: 448)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !49, line: 608, size: 448, elements: !313)
!313 = !{!314, !315, !316, !317, !318, !319, !320, !321, !322, !323}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !312, file: !49, line: 609, baseType: !26, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !312, file: !49, line: 609, baseType: !27, size: 8, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !312, file: !49, line: 609, baseType: !27, size: 8, offset: 72)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !312, file: !49, line: 609, baseType: !63, size: 16, offset: 80)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !312, file: !49, line: 609, baseType: !63, size: 16, offset: 96)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !312, file: !49, line: 609, baseType: !22, size: 32, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !312, file: !49, line: 610, baseType: !184, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !312, file: !49, line: 611, baseType: !99, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !312, file: !49, line: 612, baseType: !99, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !312, file: !49, line: 613, baseType: !22, size: 32, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !270, file: !49, line: 669, baseType: !325, size: 512)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !49, line: 580, size: 512, elements: !326)
!326 = !{!327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !325, file: !49, line: 581, baseType: !26, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !325, file: !49, line: 581, baseType: !27, size: 8, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !325, file: !49, line: 581, baseType: !27, size: 8, offset: 72)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !325, file: !49, line: 581, baseType: !63, size: 16, offset: 80)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !325, file: !49, line: 581, baseType: !63, size: 16, offset: 96)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !325, file: !49, line: 581, baseType: !22, size: 32, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !325, file: !49, line: 582, baseType: !52, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !325, file: !49, line: 583, baseType: !52, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !325, file: !49, line: 584, baseType: !149, size: 64, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !325, file: !49, line: 585, baseType: !26, size: 64, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !325, file: !49, line: 586, baseType: !22, size: 32, offset: 448)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !270, file: !49, line: 670, baseType: !339, size: 320)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !49, line: 620, size: 320, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346, !347, !348, !349}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !49, line: 621, baseType: !26, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !339, file: !49, line: 621, baseType: !27, size: 8, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !339, file: !49, line: 621, baseType: !27, size: 8, offset: 72)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !339, file: !49, line: 621, baseType: !63, size: 16, offset: 80)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !339, file: !49, line: 621, baseType: !63, size: 16, offset: 96)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !339, file: !49, line: 621, baseType: !27, size: 8, offset: 112)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !339, file: !49, line: 622, baseType: !149, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !339, file: !49, line: 623, baseType: !52, size: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !339, file: !49, line: 624, baseType: !16, size: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !270, file: !49, line: 671, baseType: !351, size: 640)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !49, line: 631, size: 640, elements: !352)
!352 = !{!353, !354, !355, !356, !357, !358}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !351, file: !49, line: 632, baseType: !26, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !351, file: !49, line: 632, baseType: !27, size: 8, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !351, file: !49, line: 632, baseType: !27, size: 8, offset: 72)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !351, file: !49, line: 632, baseType: !63, size: 16, offset: 80)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !351, file: !49, line: 632, baseType: !63, size: 16, offset: 96)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !351, file: !49, line: 633, baseType: !359, size: 512, offset: 128)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 512, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 8)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !270, file: !49, line: 672, baseType: !363, size: 320)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !49, line: 654, size: 320, elements: !364)
!364 = !{!365, !366, !367, !368, !369, !370, !371, !372, !373}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !363, file: !49, line: 655, baseType: !26, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !363, file: !49, line: 655, baseType: !27, size: 8, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !363, file: !49, line: 655, baseType: !27, size: 8, offset: 72)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !363, file: !49, line: 655, baseType: !63, size: 16, offset: 80)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !363, file: !49, line: 655, baseType: !63, size: 16, offset: 96)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !363, file: !49, line: 655, baseType: !27, size: 8, offset: 112)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !363, file: !49, line: 656, baseType: !47, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !363, file: !49, line: 657, baseType: !52, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !363, file: !49, line: 658, baseType: !374, size: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !49, line: 645, size: 128, elements: !376)
!376 = !{!377, !383}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !375, file: !49, line: 646, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !15, line: 1052, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !382, !22, !26}
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !15, line: 424, baseType: !26)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !375, file: !49, line: 647, baseType: !26, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !176, file: !49, line: 902, baseType: !184, size: 64, offset: 512)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !176, file: !49, line: 903, baseType: !22, size: 32, offset: 576)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !150, file: !151, line: 61, baseType: !22, size: 32, offset: 1088)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !150, file: !151, line: 62, baseType: !22, size: 32, offset: 1120)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !150, file: !151, line: 63, baseType: !63, size: 16, offset: 1152)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !150, file: !151, line: 64, baseType: !27, size: 8, offset: 1168)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !150, file: !151, line: 66, baseType: !391, size: 2688, offset: 1216)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 2688, elements: !36)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !150, file: !151, line: 67, baseType: !393, size: 3072, offset: 3904)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 3072, elements: !360)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !150, file: !151, line: 68, baseType: !395, size: 576, offset: 6976)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 576, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 9)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !150, file: !151, line: 69, baseType: !114, size: 64, offset: 7552)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !150, file: !151, line: 71, baseType: !99, size: 64, offset: 7616)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !150, file: !151, line: 72, baseType: !114, size: 64, offset: 7680)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !150, file: !151, line: 73, baseType: !269, size: 64, offset: 7744)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !150, file: !151, line: 74, baseType: !47, size: 64, offset: 7808)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !150, file: !151, line: 75, baseType: !52, size: 64, offset: 7872)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !150, file: !151, line: 76, baseType: !47, size: 64, offset: 7936)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !150, file: !151, line: 77, baseType: !184, size: 64, offset: 8000)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !150, file: !151, line: 78, baseType: !52, size: 64, offset: 8064)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !150, file: !151, line: 79, baseType: !47, size: 64, offset: 8128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !150, file: !151, line: 80, baseType: !24, size: 64, offset: 8192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !150, file: !151, line: 81, baseType: !184, size: 64, offset: 8256)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !150, file: !151, line: 82, baseType: !411, size: 64, offset: 8320)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !49, line: 702, size: 128, elements: !414)
!414 = !{!415, !416, !417, !418, !419, !420}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !413, file: !49, line: 706, baseType: !22, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !413, file: !49, line: 707, baseType: !22, size: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !413, file: !49, line: 708, baseType: !63, size: 16, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !413, file: !49, line: 709, baseType: !27, size: 8, offset: 80)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !413, file: !49, line: 710, baseType: !27, size: 8, offset: 88)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !413, file: !49, line: 711, baseType: !27, size: 8, offset: 96)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !150, file: !151, line: 83, baseType: !184, size: 64, offset: 8384)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !150, file: !151, line: 84, baseType: !52, size: 64, offset: 8448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !150, file: !151, line: 85, baseType: !269, size: 64, offset: 8512)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !150, file: !151, line: 86, baseType: !52, size: 64, offset: 8576)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !150, file: !151, line: 87, baseType: !269, size: 64, offset: 8640)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !150, file: !151, line: 88, baseType: !184, size: 64, offset: 8704)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !150, file: !151, line: 89, baseType: !184, size: 64, offset: 8768)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !150, file: !151, line: 90, baseType: !429, size: 64, offset: 8832)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !150, file: !151, line: 91, baseType: !431, size: 64, offset: 8896)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !49, line: 637, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!21, !149, !435}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !150, file: !151, line: 92, baseType: !437, size: 64, offset: 8960)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !49, line: 641, baseType: !146)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !142, file: !54, line: 152, baseType: !52, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !128, file: !54, line: 155, baseType: !22, size: 32, offset: 384)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !128, file: !54, line: 156, baseType: !161, size: 16, offset: 416)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !128, file: !54, line: 157, baseType: !27, size: 8, offset: 432)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !53, file: !54, line: 375, baseType: !443, size: 576)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !54, line: 122, size: 576, elements: !444)
!444 = !{!445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !443, file: !54, line: 123, baseType: !52, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !443, file: !54, line: 123, baseType: !27, size: 8, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !443, file: !54, line: 123, baseType: !27, size: 8, offset: 72)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !443, file: !54, line: 123, baseType: !63, size: 16, offset: 80)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !443, file: !54, line: 123, baseType: !27, size: 8, offset: 96)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !443, file: !54, line: 123, baseType: !27, size: 8, offset: 104)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !443, file: !54, line: 124, baseType: !63, size: 16, offset: 112)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !443, file: !54, line: 125, baseType: !26, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !443, file: !54, line: 126, baseType: !16, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !443, file: !54, line: 127, baseType: !429, size: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !443, file: !54, line: 128, baseType: !52, size: 64, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !443, file: !54, line: 129, baseType: !52, size: 64, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !443, file: !54, line: 130, baseType: !47, size: 64, offset: 448)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !443, file: !54, line: 131, baseType: !27, size: 8, offset: 512)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !53, file: !54, line: 376, baseType: !460, size: 448)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !54, line: 134, size: 448, elements: !461)
!461 = !{!462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !473}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !460, file: !54, line: 135, baseType: !52, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !460, file: !54, line: 135, baseType: !27, size: 8, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !460, file: !54, line: 135, baseType: !27, size: 8, offset: 72)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !460, file: !54, line: 135, baseType: !63, size: 16, offset: 80)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !460, file: !54, line: 135, baseType: !27, size: 8, offset: 96)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !460, file: !54, line: 135, baseType: !27, size: 8, offset: 104)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !460, file: !54, line: 136, baseType: !47, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !460, file: !54, line: 137, baseType: !52, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !460, file: !54, line: 138, baseType: !52, size: 64, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !460, file: !54, line: 139, baseType: !472, size: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !15, line: 129, baseType: !16)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !460, file: !54, line: 140, baseType: !22, size: 32, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !53, file: !54, line: 377, baseType: !475, size: 320)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !54, line: 184, size: 320, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !482, !486}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !475, file: !54, line: 185, baseType: !52, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !475, file: !54, line: 185, baseType: !27, size: 8, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !475, file: !54, line: 185, baseType: !27, size: 8, offset: 72)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !475, file: !54, line: 185, baseType: !63, size: 16, offset: 80)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !475, file: !54, line: 185, baseType: !27, size: 8, offset: 96)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !475, file: !54, line: 185, baseType: !483, size: 128, offset: 128)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 128, elements: !484)
!484 = !{!485}
!485 = !DISubrange(count: 2)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !475, file: !54, line: 185, baseType: !52, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !53, file: !54, line: 378, baseType: !488, size: 384)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !54, line: 187, size: 384, elements: !489)
!489 = !{!490, !491, !492, !493, !494, !495, !496, !497}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !488, file: !54, line: 188, baseType: !52, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !488, file: !54, line: 188, baseType: !27, size: 8, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !488, file: !54, line: 188, baseType: !27, size: 8, offset: 72)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !488, file: !54, line: 188, baseType: !63, size: 16, offset: 80)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !488, file: !54, line: 188, baseType: !27, size: 8, offset: 96)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !488, file: !54, line: 189, baseType: !483, size: 128, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !488, file: !54, line: 189, baseType: !52, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !488, file: !54, line: 189, baseType: !498, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !49, line: 480, size: 576, elements: !500)
!500 = !{!501, !502, !503, !504, !512, !527, !559, !560, !561, !562, !563, !564}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !499, file: !49, line: 481, baseType: !47, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !499, file: !49, line: 482, baseType: !498, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !499, file: !49, line: 483, baseType: !498, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !499, file: !49, line: 484, baseType: !505, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !49, line: 497, size: 256, elements: !507)
!507 = !{!508, !509, !510, !511}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !506, file: !49, line: 498, baseType: !505, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !506, file: !49, line: 499, baseType: !505, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !506, file: !49, line: 500, baseType: !498, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !506, file: !49, line: 501, baseType: !22, size: 32, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !499, file: !49, line: 485, baseType: !513, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !49, line: 466, size: 320, elements: !515)
!515 = !{!516, !521, !522, !523, !524, !525, !526}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !514, file: !49, line: 467, baseType: !517, size: 128)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !49, line: 459, size: 128, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !517, file: !49, line: 460, baseType: !27, size: 8)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !517, file: !49, line: 461, baseType: !16, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !514, file: !49, line: 468, baseType: !517, size: 128, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !514, file: !49, line: 469, baseType: !63, size: 16, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !514, file: !49, line: 470, baseType: !27, size: 8, offset: 272)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !514, file: !49, line: 471, baseType: !27, size: 8, offset: 280)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !514, file: !49, line: 472, baseType: !27, size: 8, offset: 288)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !514, file: !49, line: 473, baseType: !27, size: 8, offset: 296)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !499, file: !49, line: 486, baseType: !528, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !49, line: 448, size: 192, elements: !530)
!530 = !{!531, !554, !555, !556, !557, !558}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !529, file: !49, line: 449, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !49, line: 438, size: 64, elements: !533)
!533 = !{!534, !535, !548}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !532, file: !49, line: 439, baseType: !47, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !532, file: !49, line: 440, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !49, line: 419, size: 256, elements: !538)
!538 = !{!539, !544, !545, !546, !547}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !537, file: !49, line: 420, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !15, line: 1049, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!22, !382, !22, !26}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !537, file: !49, line: 421, baseType: !26, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !537, file: !49, line: 422, baseType: !47, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !537, file: !49, line: 423, baseType: !27, size: 8, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !537, file: !49, line: 424, baseType: !27, size: 8, offset: 200)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !532, file: !49, line: 441, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !49, line: 429, size: 128, elements: !551)
!551 = !{!552, !553}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !550, file: !49, line: 430, baseType: !47, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !550, file: !49, line: 431, baseType: !549, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !529, file: !49, line: 450, baseType: !513, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !529, file: !49, line: 451, baseType: !27, size: 8, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !529, file: !49, line: 452, baseType: !27, size: 8, offset: 136)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !529, file: !49, line: 453, baseType: !27, size: 8, offset: 144)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !529, file: !49, line: 454, baseType: !27, size: 8, offset: 152)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !499, file: !49, line: 487, baseType: !16, size: 64, offset: 384)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !499, file: !49, line: 488, baseType: !22, size: 32, offset: 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !499, file: !49, line: 489, baseType: !63, size: 16, offset: 480)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !499, file: !49, line: 490, baseType: !63, size: 16, offset: 496)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !499, file: !49, line: 491, baseType: !27, size: 8, offset: 512)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !499, file: !49, line: 492, baseType: !27, size: 8, offset: 520)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !53, file: !54, line: 379, baseType: !566, size: 384)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !54, line: 192, size: 384, elements: !567)
!567 = !{!568, !569, !570, !571, !572, !573, !574, !575, !576}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !566, file: !54, line: 193, baseType: !52, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !566, file: !54, line: 193, baseType: !27, size: 8, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !566, file: !54, line: 193, baseType: !27, size: 8, offset: 72)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !566, file: !54, line: 193, baseType: !63, size: 16, offset: 80)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !566, file: !54, line: 193, baseType: !27, size: 8, offset: 96)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !566, file: !54, line: 193, baseType: !483, size: 128, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !566, file: !54, line: 193, baseType: !52, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !566, file: !54, line: 193, baseType: !22, size: 32, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !566, file: !54, line: 194, baseType: !22, size: 32, offset: 352)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !53, file: !54, line: 380, baseType: !578, size: 384)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !54, line: 197, size: 384, elements: !579)
!579 = !{!580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !578, file: !54, line: 198, baseType: !52, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !578, file: !54, line: 198, baseType: !27, size: 8, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !578, file: !54, line: 198, baseType: !27, size: 8, offset: 72)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !578, file: !54, line: 198, baseType: !63, size: 16, offset: 80)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !578, file: !54, line: 198, baseType: !27, size: 8, offset: 96)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !578, file: !54, line: 200, baseType: !27, size: 8, offset: 104)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !578, file: !54, line: 201, baseType: !27, size: 8, offset: 112)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !578, file: !54, line: 202, baseType: !483, size: 128, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !578, file: !54, line: 202, baseType: !52, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !578, file: !54, line: 202, baseType: !590, size: 64, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !15, line: 128, baseType: !16)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !53, file: !54, line: 381, baseType: !592, size: 320)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !54, line: 205, size: 320, elements: !593)
!593 = !{!594, !595, !596, !597, !598, !599, !600}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !592, file: !54, line: 206, baseType: !52, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !592, file: !54, line: 206, baseType: !27, size: 8, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !592, file: !54, line: 206, baseType: !27, size: 8, offset: 72)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !592, file: !54, line: 206, baseType: !63, size: 16, offset: 80)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !592, file: !54, line: 206, baseType: !27, size: 8, offset: 96)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !592, file: !54, line: 206, baseType: !483, size: 128, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !592, file: !54, line: 206, baseType: !52, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !53, file: !54, line: 382, baseType: !602, size: 384)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !54, line: 233, size: 384, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !602, file: !54, line: 234, baseType: !52, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !602, file: !54, line: 234, baseType: !27, size: 8, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !602, file: !54, line: 234, baseType: !27, size: 8, offset: 72)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !602, file: !54, line: 234, baseType: !63, size: 16, offset: 80)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !602, file: !54, line: 234, baseType: !27, size: 8, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !602, file: !54, line: 234, baseType: !27, size: 8, offset: 104)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !602, file: !54, line: 234, baseType: !27, size: 8, offset: 112)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !602, file: !54, line: 234, baseType: !27, size: 8, offset: 120)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !602, file: !54, line: 234, baseType: !47, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !602, file: !54, line: 234, baseType: !22, size: 32, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !602, file: !54, line: 234, baseType: !22, size: 32, offset: 224)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !602, file: !54, line: 234, baseType: !22, size: 32, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !602, file: !54, line: 234, baseType: !27, size: 8, offset: 288)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !602, file: !54, line: 234, baseType: !27, size: 8, offset: 296)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !602, file: !54, line: 234, baseType: !52, size: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !53, file: !54, line: 383, baseType: !620, size: 576)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !54, line: 237, size: 576, elements: !621)
!621 = !{!622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !620, file: !54, line: 238, baseType: !52, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !620, file: !54, line: 238, baseType: !27, size: 8, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !620, file: !54, line: 238, baseType: !27, size: 8, offset: 72)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !620, file: !54, line: 238, baseType: !63, size: 16, offset: 80)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !620, file: !54, line: 238, baseType: !27, size: 8, offset: 96)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !620, file: !54, line: 238, baseType: !27, size: 8, offset: 104)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !620, file: !54, line: 238, baseType: !27, size: 8, offset: 112)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !620, file: !54, line: 238, baseType: !27, size: 8, offset: 120)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !620, file: !54, line: 238, baseType: !47, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !620, file: !54, line: 238, baseType: !22, size: 32, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !620, file: !54, line: 238, baseType: !22, size: 32, offset: 224)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !620, file: !54, line: 238, baseType: !22, size: 32, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !620, file: !54, line: 238, baseType: !27, size: 8, offset: 288)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !620, file: !54, line: 238, baseType: !27, size: 8, offset: 296)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !620, file: !54, line: 238, baseType: !63, size: 16, offset: 304)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !620, file: !54, line: 239, baseType: !52, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !620, file: !54, line: 240, baseType: !99, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !620, file: !54, line: 241, baseType: !63, size: 16, offset: 448)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !620, file: !54, line: 242, baseType: !99, size: 64, offset: 512)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !53, file: !54, line: 384, baseType: !642, size: 384)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !54, line: 262, size: 384, elements: !643)
!643 = !{!644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !642, file: !54, line: 263, baseType: !52, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !642, file: !54, line: 263, baseType: !27, size: 8, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !642, file: !54, line: 263, baseType: !27, size: 8, offset: 72)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !642, file: !54, line: 263, baseType: !63, size: 16, offset: 80)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !642, file: !54, line: 263, baseType: !27, size: 8, offset: 96)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !642, file: !54, line: 263, baseType: !27, size: 8, offset: 104)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !642, file: !54, line: 263, baseType: !27, size: 8, offset: 112)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !642, file: !54, line: 263, baseType: !27, size: 8, offset: 120)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !642, file: !54, line: 263, baseType: !47, size: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !642, file: !54, line: 263, baseType: !22, size: 32, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !642, file: !54, line: 263, baseType: !22, size: 32, offset: 224)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !642, file: !54, line: 263, baseType: !22, size: 32, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !642, file: !54, line: 263, baseType: !27, size: 8, offset: 288)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !642, file: !54, line: 263, baseType: !27, size: 8, offset: 296)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !642, file: !54, line: 263, baseType: !27, size: 8, offset: 304)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !642, file: !54, line: 264, baseType: !52, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !53, file: !54, line: 385, baseType: !661, size: 448)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !54, line: 245, size: 448, elements: !662)
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !661, file: !54, line: 246, baseType: !52, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !661, file: !54, line: 246, baseType: !27, size: 8, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !661, file: !54, line: 246, baseType: !27, size: 8, offset: 72)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !661, file: !54, line: 246, baseType: !63, size: 16, offset: 80)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !54, line: 246, baseType: !27, size: 8, offset: 96)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !661, file: !54, line: 246, baseType: !27, size: 8, offset: 104)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !661, file: !54, line: 246, baseType: !27, size: 8, offset: 112)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !661, file: !54, line: 246, baseType: !27, size: 8, offset: 120)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !661, file: !54, line: 246, baseType: !47, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !661, file: !54, line: 246, baseType: !22, size: 32, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !661, file: !54, line: 246, baseType: !22, size: 32, offset: 224)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !661, file: !54, line: 246, baseType: !22, size: 32, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !661, file: !54, line: 246, baseType: !27, size: 8, offset: 288)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !661, file: !54, line: 246, baseType: !27, size: 8, offset: 296)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !661, file: !54, line: 246, baseType: !52, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !661, file: !54, line: 247, baseType: !52, size: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !53, file: !54, line: 386, baseType: !680, size: 448)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !54, line: 250, size: 448, elements: !681)
!681 = !{!682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !680, file: !54, line: 251, baseType: !52, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !680, file: !54, line: 251, baseType: !27, size: 8, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !680, file: !54, line: 251, baseType: !27, size: 8, offset: 72)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !680, file: !54, line: 251, baseType: !63, size: 16, offset: 80)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !680, file: !54, line: 251, baseType: !27, size: 8, offset: 96)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !680, file: !54, line: 251, baseType: !27, size: 8, offset: 104)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !680, file: !54, line: 251, baseType: !27, size: 8, offset: 112)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !680, file: !54, line: 251, baseType: !27, size: 8, offset: 120)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !680, file: !54, line: 251, baseType: !47, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !680, file: !54, line: 251, baseType: !22, size: 32, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !680, file: !54, line: 251, baseType: !22, size: 32, offset: 224)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !680, file: !54, line: 251, baseType: !22, size: 32, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !680, file: !54, line: 251, baseType: !27, size: 8, offset: 288)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !680, file: !54, line: 251, baseType: !27, size: 8, offset: 296)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !680, file: !54, line: 256, baseType: !52, size: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !680, file: !54, line: 257, baseType: !52, size: 64, offset: 384)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !53, file: !54, line: 387, baseType: !699, size: 512)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !54, line: 273, size: 512, elements: !700)
!700 = !{!701, !702, !703, !704, !705, !706, !707, !708, !709, !710}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !699, file: !54, line: 274, baseType: !52, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !699, file: !54, line: 274, baseType: !27, size: 8, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !699, file: !54, line: 274, baseType: !27, size: 8, offset: 72)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !699, file: !54, line: 274, baseType: !63, size: 16, offset: 80)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !699, file: !54, line: 274, baseType: !27, size: 8, offset: 96)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !699, file: !54, line: 274, baseType: !47, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !699, file: !54, line: 275, baseType: !22, size: 32, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !699, file: !54, line: 276, baseType: !378, size: 64, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !699, file: !54, line: 277, baseType: !26, size: 64, offset: 320)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !699, file: !54, line: 278, baseType: !483, size: 128, offset: 384)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !53, file: !54, line: 388, baseType: !712, size: 512)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !54, line: 281, size: 512, elements: !713)
!713 = !{!714, !715, !716, !717, !718, !719, !720, !721, !727, !728, !729, !735, !736}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !712, file: !54, line: 282, baseType: !52, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !712, file: !54, line: 282, baseType: !27, size: 8, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !712, file: !54, line: 282, baseType: !27, size: 8, offset: 72)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !712, file: !54, line: 282, baseType: !63, size: 16, offset: 80)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !712, file: !54, line: 282, baseType: !27, size: 8, offset: 96)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !712, file: !54, line: 282, baseType: !27, size: 8, offset: 104)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !712, file: !54, line: 283, baseType: !27, size: 8, offset: 112)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !712, file: !54, line: 284, baseType: !722, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !15, line: 1084, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!21, !22, !472, !22, !726, !26, !26}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !712, file: !54, line: 285, baseType: !47, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !712, file: !54, line: 286, baseType: !26, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !712, file: !54, line: 287, baseType: !730, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !15, line: 1102, baseType: !731)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!21, !382, !22, !26, !734}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !712, file: !54, line: 288, baseType: !52, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !712, file: !54, line: 289, baseType: !52, size: 64, offset: 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !53, file: !54, line: 389, baseType: !738, size: 512)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !54, line: 307, size: 512, elements: !739)
!739 = !{!740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !738, file: !54, line: 308, baseType: !52, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !738, file: !54, line: 308, baseType: !27, size: 8, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !738, file: !54, line: 308, baseType: !27, size: 8, offset: 72)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !738, file: !54, line: 308, baseType: !63, size: 16, offset: 80)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !738, file: !54, line: 308, baseType: !27, size: 8, offset: 96)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !738, file: !54, line: 308, baseType: !27, size: 8, offset: 104)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !738, file: !54, line: 309, baseType: !27, size: 8, offset: 112)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !738, file: !54, line: 310, baseType: !27, size: 8, offset: 120)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !738, file: !54, line: 311, baseType: !26, size: 64, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !738, file: !54, line: 312, baseType: !47, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !738, file: !54, line: 313, baseType: !114, size: 64, offset: 256)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !738, file: !54, line: 314, baseType: !99, size: 64, offset: 320)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !738, file: !54, line: 315, baseType: !99, size: 64, offset: 384)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !738, file: !54, line: 316, baseType: !22, size: 32, offset: 448)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !53, file: !54, line: 390, baseType: !755, size: 448)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !54, line: 340, size: 448, elements: !756)
!756 = !{!757, !758, !759, !760, !761, !762, !763, !764, !765, !766}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !755, file: !54, line: 341, baseType: !52, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !755, file: !54, line: 341, baseType: !27, size: 8, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !755, file: !54, line: 341, baseType: !27, size: 8, offset: 72)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !755, file: !54, line: 341, baseType: !63, size: 16, offset: 80)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !755, file: !54, line: 341, baseType: !27, size: 8, offset: 96)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !755, file: !54, line: 341, baseType: !47, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !755, file: !54, line: 342, baseType: !47, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !755, file: !54, line: 343, baseType: !26, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !755, file: !54, line: 344, baseType: !99, size: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !755, file: !54, line: 345, baseType: !22, size: 32, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !53, file: !54, line: 391, baseType: !768, size: 256)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !54, line: 350, size: 256, elements: !769)
!769 = !{!770, !771, !772, !773, !774, !775, !780}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !768, file: !54, line: 351, baseType: !52, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !768, file: !54, line: 351, baseType: !27, size: 8, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !768, file: !54, line: 351, baseType: !27, size: 8, offset: 72)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !768, file: !54, line: 351, baseType: !63, size: 16, offset: 80)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !768, file: !54, line: 351, baseType: !27, size: 8, offset: 96)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !768, file: !54, line: 351, baseType: !776, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !15, line: 1055, baseType: !777)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !382, !26}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !768, file: !54, line: 352, baseType: !26, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !53, file: !54, line: 392, baseType: !782, size: 192)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !54, line: 357, size: 192, elements: !783)
!783 = !{!784, !785, !786, !787, !788, !789}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !782, file: !54, line: 358, baseType: !52, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !782, file: !54, line: 358, baseType: !27, size: 8, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !782, file: !54, line: 358, baseType: !27, size: 8, offset: 72)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !782, file: !54, line: 358, baseType: !63, size: 16, offset: 80)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !54, line: 358, baseType: !27, size: 8, offset: 96)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !782, file: !54, line: 358, baseType: !52, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !53, file: !54, line: 399, baseType: !48, size: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !48, file: !49, line: 135, baseType: !27, size: 8, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !48, file: !49, line: 136, baseType: !27, size: 8, offset: 72)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !48, file: !49, line: 137, baseType: !63, size: 16, offset: 80)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !48, file: !49, line: 138, baseType: !795, size: 32, offset: 96)
!795 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !796, line: 327, size: 32, elements: !797)
!796 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!797 = !{!798, !799}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !795, file: !796, line: 328, baseType: !22, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !795, file: !796, line: 329, baseType: !243, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !48, file: !49, line: 139, baseType: !47, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !48, file: !49, line: 140, baseType: !47, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !48, file: !49, line: 141, baseType: !47, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !48, file: !49, line: 142, baseType: !161, size: 16, offset: 320)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!805 = !{}
!806 = !DILocalVariable(name: "prefix_node", arg: 1, scope: !44, file: !3, line: 37, type: !47)
!807 = !DILocation(line: 37, column: 53, scope: !44)
!808 = !DILocalVariable(name: "path", arg: 2, scope: !44, file: !3, line: 38, type: !804)
!809 = !DILocation(line: 38, column: 16, scope: !44)
!810 = !DILocalVariable(name: "expected_return_btypes", arg: 3, scope: !44, file: !3, line: 39, type: !22)
!811 = !DILocation(line: 39, column: 8, scope: !44)
!812 = !DILocalVariable(name: "return_desc", arg: 4, scope: !44, file: !3, line: 40, type: !114)
!813 = !DILocation(line: 40, column: 32, scope: !44)
!814 = !DILocalVariable(name: "info", scope: !44, file: !3, line: 42, type: !815)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !151, line: 152, size: 704, elements: !817)
!817 = !{!818, !819, !820, !821, !822, !823, !824, !870, !871, !872, !873, !874, !875, !876, !877, !878}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !816, file: !151, line: 155, baseType: !47, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !816, file: !151, line: 156, baseType: !804, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !816, file: !151, line: 157, baseType: !114, size: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !816, file: !151, line: 159, baseType: !47, size: 64, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !816, file: !151, line: 160, baseType: !52, size: 64, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !816, file: !151, line: 161, baseType: !24, size: 64, offset: 320)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !816, file: !151, line: 163, baseType: !825, size: 64, offset: 384)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!827 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !49, line: 351, size: 56, elements: !828)
!828 = !{!829, !835, !844, !852, !861}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !827, file: !49, line: 352, baseType: !830, size: 56)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !49, line: 295, size: 56, elements: !831)
!831 = !{!832, !833, !834}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !830, file: !49, line: 296, baseType: !243, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !830, file: !49, line: 297, baseType: !63, size: 16, offset: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !830, file: !49, line: 298, baseType: !27, size: 8, offset: 48)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !827, file: !49, line: 353, baseType: !836, size: 56)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !49, line: 314, size: 56, elements: !837)
!837 = !{!838, !839, !840, !841, !842, !843}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !836, file: !49, line: 315, baseType: !27, size: 8)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !836, file: !49, line: 316, baseType: !27, size: 8, offset: 8)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !836, file: !49, line: 317, baseType: !27, size: 8, offset: 16)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !836, file: !49, line: 318, baseType: !27, size: 8, offset: 24)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !836, file: !49, line: 319, baseType: !27, size: 8, offset: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !836, file: !49, line: 320, baseType: !63, size: 16, offset: 40)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !827, file: !49, line: 354, baseType: !845, size: 56)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !49, line: 325, size: 56, elements: !846)
!846 = !{!847, !848, !849, !851}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !845, file: !49, line: 326, baseType: !27, size: 8)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !845, file: !49, line: 327, baseType: !27, size: 8, offset: 8)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !845, file: !49, line: 328, baseType: !850, size: 32, offset: 16)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !244)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !845, file: !49, line: 329, baseType: !27, size: 8, offset: 48)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !827, file: !49, line: 355, baseType: !853, size: 56)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !49, line: 334, size: 56, elements: !854)
!854 = !{!855, !856, !857, !859, !860}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !853, file: !49, line: 335, baseType: !27, size: 8)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !853, file: !49, line: 336, baseType: !27, size: 8, offset: 8)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !853, file: !49, line: 337, baseType: !858, size: 16, offset: 16)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 16, elements: !484)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !853, file: !49, line: 338, baseType: !27, size: 8, offset: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !853, file: !49, line: 339, baseType: !63, size: 16, offset: 40)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !827, file: !49, line: 356, baseType: !862, size: 56)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !49, line: 342, size: 56, elements: !863)
!863 = !{!864, !865, !866, !867, !868, !869}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !862, file: !49, line: 343, baseType: !27, size: 8)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !862, file: !49, line: 344, baseType: !27, size: 8, offset: 8)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !862, file: !49, line: 345, baseType: !27, size: 8, offset: 16)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !862, file: !49, line: 346, baseType: !27, size: 8, offset: 24)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !862, file: !49, line: 347, baseType: !27, size: 8, offset: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !862, file: !49, line: 348, baseType: !63, size: 16, offset: 40)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !816, file: !151, line: 164, baseType: !52, size: 64, offset: 448)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !816, file: !151, line: 165, baseType: !52, size: 64, offset: 512)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !816, file: !151, line: 167, baseType: !22, size: 32, offset: 576)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !816, file: !151, line: 168, baseType: !22, size: 32, offset: 608)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !816, file: !151, line: 169, baseType: !63, size: 16, offset: 640)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !816, file: !151, line: 170, baseType: !63, size: 16, offset: 656)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !816, file: !151, line: 171, baseType: !27, size: 8, offset: 672)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !816, file: !151, line: 172, baseType: !27, size: 8, offset: 680)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !816, file: !151, line: 173, baseType: !27, size: 8, offset: 688)
!879 = !DILocation(line: 42, column: 29, scope: !44)
!880 = !DILocalVariable(name: "status", scope: !44, file: !3, line: 43, type: !21)
!881 = !DILocation(line: 43, column: 14, scope: !44)
!882 = !DILocalVariable(name: "return_btype", scope: !44, file: !3, line: 44, type: !22)
!883 = !DILocation(line: 44, column: 6, scope: !44)
!884 = !DILocation(line: 50, column: 9, scope: !44)
!885 = !DILocation(line: 50, column: 7, scope: !44)
!886 = !DILocation(line: 51, column: 7, scope: !887)
!887 = distinct !DILexicalBlock(scope: !44, file: !3, line: 51, column: 6)
!888 = !DILocation(line: 51, column: 6, scope: !44)
!889 = !DILocation(line: 52, column: 3, scope: !890)
!890 = distinct !DILexicalBlock(scope: !887, file: !3, line: 51, column: 13)
!891 = !DILocation(line: 55, column: 22, scope: !44)
!892 = !DILocation(line: 55, column: 2, scope: !44)
!893 = !DILocation(line: 55, column: 8, scope: !44)
!894 = !DILocation(line: 55, column: 20, scope: !44)
!895 = !DILocation(line: 56, column: 28, scope: !44)
!896 = !DILocation(line: 56, column: 2, scope: !44)
!897 = !DILocation(line: 56, column: 8, scope: !44)
!898 = !DILocation(line: 56, column: 26, scope: !44)
!899 = !DILocation(line: 60, column: 28, scope: !44)
!900 = !DILocation(line: 60, column: 11, scope: !44)
!901 = !DILocation(line: 60, column: 9, scope: !44)
!902 = !DILocation(line: 61, column: 6, scope: !903)
!903 = distinct !DILexicalBlock(scope: !44, file: !3, line: 61, column: 6)
!904 = !DILocation(line: 61, column: 6, scope: !44)
!905 = !DILocation(line: 62, column: 7, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !3, line: 62, column: 7)
!907 = distinct !DILexicalBlock(scope: !903, file: !3, line: 61, column: 28)
!908 = !DILocation(line: 62, column: 14, scope: !906)
!909 = !DILocation(line: 62, column: 7, scope: !907)
!910 = !DILocation(line: 67, column: 3, scope: !911)
!911 = distinct !DILexicalBlock(scope: !906, file: !3, line: 62, column: 31)
!912 = !DILocation(line: 68, column: 4, scope: !913)
!913 = distinct !DILexicalBlock(scope: !906, file: !3, line: 67, column: 10)
!914 = !DILocation(line: 72, column: 3, scope: !907)
!915 = !DILocation(line: 77, column: 7, scope: !916)
!916 = distinct !DILexicalBlock(scope: !44, file: !3, line: 77, column: 6)
!917 = !DILocation(line: 77, column: 13, scope: !916)
!918 = !DILocation(line: 77, column: 6, scope: !44)
!919 = !DILocation(line: 78, column: 7, scope: !920)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 78, column: 7)
!921 = distinct !DILexicalBlock(scope: !916, file: !3, line: 77, column: 28)
!922 = !DILocation(line: 78, column: 7, scope: !921)
!923 = !DILocation(line: 79, column: 4, scope: !924)
!924 = distinct !DILexicalBlock(scope: !920, file: !3, line: 78, column: 31)
!925 = !DILocation(line: 82, column: 11, scope: !924)
!926 = !DILocation(line: 83, column: 3, scope: !924)
!927 = !DILocation(line: 85, column: 3, scope: !921)
!928 = !DILocation(line: 90, column: 11, scope: !44)
!929 = !DILocation(line: 90, column: 17, scope: !44)
!930 = !DILocation(line: 90, column: 33, scope: !44)
!931 = !DILocation(line: 90, column: 40, scope: !44)
!932 = !DILocation(line: 90, column: 10, scope: !44)
!933 = !DILocation(line: 90, column: 2, scope: !44)
!934 = !DILocation(line: 93, column: 16, scope: !935)
!935 = distinct !DILexicalBlock(scope: !44, file: !3, line: 90, column: 46)
!936 = !DILocation(line: 94, column: 3, scope: !935)
!937 = !DILocation(line: 98, column: 16, scope: !935)
!938 = !DILocation(line: 99, column: 3, scope: !935)
!939 = !DILocation(line: 103, column: 16, scope: !935)
!940 = !DILocation(line: 104, column: 3, scope: !935)
!941 = !DILocation(line: 108, column: 16, scope: !935)
!942 = !DILocation(line: 109, column: 3, scope: !935)
!943 = !DILocation(line: 113, column: 16, scope: !935)
!944 = !DILocation(line: 114, column: 3, scope: !935)
!945 = !DILocation(line: 117, column: 7, scope: !946)
!946 = distinct !DILexicalBlock(scope: !44, file: !3, line: 117, column: 6)
!947 = !DILocation(line: 117, column: 6, scope: !946)
!948 = !DILocation(line: 117, column: 42, scope: !946)
!949 = !DILocation(line: 117, column: 47, scope: !946)
!950 = !DILocation(line: 117, column: 6, scope: !44)
!951 = !DILocation(line: 123, column: 28, scope: !952)
!952 = distinct !DILexicalBlock(scope: !946, file: !3, line: 117, column: 72)
!953 = !DILocation(line: 123, column: 34, scope: !952)
!954 = !DILocation(line: 123, column: 3, scope: !952)
!955 = !DILocation(line: 124, column: 3, scope: !952)
!956 = !DILocation(line: 129, column: 8, scope: !957)
!957 = distinct !DILexicalBlock(scope: !44, file: !3, line: 129, column: 6)
!958 = !DILocation(line: 129, column: 33, scope: !957)
!959 = !DILocation(line: 129, column: 31, scope: !957)
!960 = !DILocation(line: 129, column: 6, scope: !44)
!961 = !DILocation(line: 130, column: 3, scope: !962)
!962 = distinct !DILexicalBlock(scope: !957, file: !3, line: 129, column: 48)
!963 = !DILocation(line: 133, column: 3, scope: !962)
!964 = !DILocation(line: 141, column: 28, scope: !962)
!965 = !DILocation(line: 141, column: 34, scope: !962)
!966 = !DILocation(line: 141, column: 3, scope: !962)
!967 = !DILocation(line: 142, column: 10, scope: !962)
!968 = !DILocation(line: 143, column: 3, scope: !962)
!969 = !DILocation(line: 148, column: 17, scope: !44)
!970 = !DILocation(line: 148, column: 23, scope: !44)
!971 = !DILocation(line: 148, column: 3, scope: !44)
!972 = !DILocation(line: 148, column: 15, scope: !44)
!973 = !DILocation(line: 148, column: 2, scope: !44)
!974 = !DILabel(scope: !44, name: "cleanup", file: !3, line: 150)
!975 = !DILocation(line: 150, column: 1, scope: !44)
!976 = !DILocation(line: 151, column: 2, scope: !44)
!977 = !DILocation(line: 152, column: 2, scope: !44)
!978 = !DILocation(line: 153, column: 1, scope: !44)
!979 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !980, file: !980, line: 55, type: !981, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!980 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!981 = !DISubroutineType(types: !982)
!982 = !{!26, !14}
!983 = !DILocalVariable(name: "flags", arg: 1, scope: !984, file: !985, line: 162, type: !32)
!984 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !985, file: !985, line: 162, type: !986, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!985 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!986 = !DISubroutineType(types: !987)
!987 = !{!988, !32}
!988 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!989 = !DILocation(line: 162, column: 67, scope: !984, inlinedAt: !990)
!990 = distinct !DILocation(line: 57, column: 23, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !980, line: 57, column: 23)
!992 = distinct !DILexicalBlock(scope: !979, file: !980, line: 57, column: 23)
!993 = !DILocalVariable(name: "size", arg: 1, scope: !979, file: !980, line: 55, type: !14)
!994 = !DILocation(line: 55, column: 55, scope: !979)
!995 = !DILocation(line: 57, column: 17, scope: !979)
!996 = !DILocalVariable(name: "_flags", scope: !992, file: !980, line: 57, type: !32)
!997 = !DILocation(line: 57, column: 23, scope: !992)
!998 = !DILocalVariable(name: "__dummy", scope: !999, file: !980, line: 57, type: !32)
!999 = distinct !DILexicalBlock(scope: !1000, file: !980, line: 57, column: 23)
!1000 = distinct !DILexicalBlock(scope: !992, file: !980, line: 57, column: 23)
!1001 = !DILocation(line: 57, column: 23, scope: !999)
!1002 = !DILocalVariable(name: "__dummy2", scope: !999, file: !980, line: 57, type: !32)
!1003 = !DILocation(line: 57, column: 23, scope: !1000)
!1004 = !DILocalVariable(name: "__dummy", scope: !1005, file: !980, line: 57, type: !32)
!1005 = distinct !DILexicalBlock(scope: !991, file: !980, line: 57, column: 23)
!1006 = !DILocation(line: 57, column: 23, scope: !1005)
!1007 = !DILocalVariable(name: "__dummy2", scope: !1005, file: !980, line: 57, type: !32)
!1008 = !DILocation(line: 57, column: 23, scope: !991)
!1009 = !DILocation(line: 164, column: 11, scope: !984, inlinedAt: !990)
!1010 = !DILocation(line: 164, column: 17, scope: !984, inlinedAt: !990)
!1011 = !DILocation(line: 164, column: 9, scope: !984, inlinedAt: !990)
!1012 = !DILocation(line: 57, column: 23, scope: !979)
!1013 = !DILocation(line: 57, column: 9, scope: !979)
!1014 = !DILocation(line: 57, column: 2, scope: !979)
!1015 = distinct !DISubprogram(name: "acpi_os_free", scope: !980, file: !980, line: 60, type: !1016, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !26}
!1018 = !DILocalVariable(name: "memory", arg: 1, scope: !1015, file: !980, line: 60, type: !26)
!1019 = !DILocation(line: 60, column: 39, scope: !1015)
!1020 = !DILocation(line: 62, column: 8, scope: !1015)
!1021 = !DILocation(line: 62, column: 2, scope: !1015)
!1022 = !DILocation(line: 63, column: 1, scope: !1015)
!1023 = distinct !DISubprogram(name: "acpi_ut_evaluate_numeric_object", scope: !3, file: !3, line: 173, type: !1024, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!21, !804, !47, !726}
!1026 = !DILocalVariable(name: "object_name", arg: 1, scope: !1023, file: !3, line: 173, type: !804)
!1027 = !DILocation(line: 173, column: 45, scope: !1023)
!1028 = !DILocalVariable(name: "device_node", arg: 2, scope: !1023, file: !3, line: 174, type: !47)
!1029 = !DILocation(line: 174, column: 33, scope: !1023)
!1030 = !DILocalVariable(name: "value", arg: 3, scope: !1023, file: !3, line: 175, type: !726)
!1031 = !DILocation(line: 175, column: 10, scope: !1023)
!1032 = !DILocalVariable(name: "obj_desc", scope: !1023, file: !3, line: 177, type: !52)
!1033 = !DILocation(line: 177, column: 29, scope: !1023)
!1034 = !DILocalVariable(name: "status", scope: !1023, file: !3, line: 178, type: !21)
!1035 = !DILocation(line: 178, column: 14, scope: !1023)
!1036 = !DILocation(line: 182, column: 35, scope: !1023)
!1037 = !DILocation(line: 182, column: 48, scope: !1023)
!1038 = !DILocation(line: 182, column: 11, scope: !1023)
!1039 = !DILocation(line: 182, column: 9, scope: !1023)
!1040 = !DILocation(line: 184, column: 6, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 184, column: 6)
!1042 = !DILocation(line: 184, column: 6, scope: !1023)
!1043 = !DILocation(line: 185, column: 3, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 184, column: 28)
!1045 = !DILocation(line: 190, column: 11, scope: !1023)
!1046 = !DILocation(line: 190, column: 21, scope: !1023)
!1047 = !DILocation(line: 190, column: 29, scope: !1023)
!1048 = !DILocation(line: 190, column: 3, scope: !1023)
!1049 = !DILocation(line: 190, column: 9, scope: !1023)
!1050 = !DILocation(line: 194, column: 27, scope: !1023)
!1051 = !DILocation(line: 194, column: 2, scope: !1023)
!1052 = !DILocation(line: 195, column: 2, scope: !1023)
!1053 = !DILocation(line: 196, column: 1, scope: !1023)
!1054 = distinct !DISubprogram(name: "acpi_ut_execute_STA", scope: !3, file: !3, line: 216, type: !1055, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!21, !47, !1057}
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!1058 = !DILocalVariable(name: "device_node", arg: 1, scope: !1054, file: !3, line: 216, type: !47)
!1059 = !DILocation(line: 216, column: 49, scope: !1054)
!1060 = !DILocalVariable(name: "flags", arg: 2, scope: !1054, file: !3, line: 216, type: !1057)
!1061 = !DILocation(line: 216, column: 68, scope: !1054)
!1062 = !DILocalVariable(name: "obj_desc", scope: !1054, file: !3, line: 218, type: !52)
!1063 = !DILocation(line: 218, column: 29, scope: !1054)
!1064 = !DILocalVariable(name: "status", scope: !1054, file: !3, line: 219, type: !21)
!1065 = !DILocation(line: 219, column: 14, scope: !1054)
!1066 = !DILocation(line: 223, column: 35, scope: !1054)
!1067 = !DILocation(line: 223, column: 11, scope: !1054)
!1068 = !DILocation(line: 223, column: 9, scope: !1054)
!1069 = !DILocation(line: 225, column: 6, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 225, column: 6)
!1071 = !DILocation(line: 225, column: 6, scope: !1054)
!1072 = !DILocation(line: 226, column: 23, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 226, column: 7)
!1074 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 225, column: 28)
!1075 = !DILocation(line: 226, column: 20, scope: !1073)
!1076 = !DILocation(line: 226, column: 7, scope: !1074)
!1077 = !DILocation(line: 236, column: 5, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 226, column: 31)
!1079 = !DILocation(line: 236, column: 11, scope: !1078)
!1080 = !DILocation(line: 237, column: 11, scope: !1078)
!1081 = !DILocation(line: 238, column: 3, scope: !1078)
!1082 = !DILocation(line: 240, column: 3, scope: !1074)
!1083 = !DILocation(line: 245, column: 17, scope: !1054)
!1084 = !DILocation(line: 245, column: 27, scope: !1054)
!1085 = !DILocation(line: 245, column: 35, scope: !1054)
!1086 = !DILocation(line: 245, column: 11, scope: !1054)
!1087 = !DILocation(line: 245, column: 3, scope: !1054)
!1088 = !DILocation(line: 245, column: 9, scope: !1054)
!1089 = !DILocation(line: 249, column: 27, scope: !1054)
!1090 = !DILocation(line: 249, column: 2, scope: !1054)
!1091 = !DILocation(line: 250, column: 2, scope: !1054)
!1092 = !DILocation(line: 251, column: 1, scope: !1054)
!1093 = distinct !DISubprogram(name: "acpi_ut_execute_power_methods", scope: !3, file: !3, line: 272, type: !1094, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!21, !47, !1096, !27, !99}
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!1097 = !DILocalVariable(name: "device_node", arg: 1, scope: !1093, file: !3, line: 272, type: !47)
!1098 = !DILocation(line: 272, column: 59, scope: !1093)
!1099 = !DILocalVariable(name: "method_names", arg: 2, scope: !1093, file: !3, line: 273, type: !1096)
!1100 = !DILocation(line: 273, column: 23, scope: !1093)
!1101 = !DILocalVariable(name: "method_count", arg: 3, scope: !1093, file: !3, line: 274, type: !27)
!1102 = !DILocation(line: 274, column: 13, scope: !1093)
!1103 = !DILocalVariable(name: "out_values", arg: 4, scope: !1093, file: !3, line: 274, type: !99)
!1104 = !DILocation(line: 274, column: 31, scope: !1093)
!1105 = !DILocalVariable(name: "obj_desc", scope: !1093, file: !3, line: 276, type: !52)
!1106 = !DILocation(line: 276, column: 29, scope: !1093)
!1107 = !DILocalVariable(name: "status", scope: !1093, file: !3, line: 277, type: !21)
!1108 = !DILocation(line: 277, column: 14, scope: !1093)
!1109 = !DILocalVariable(name: "final_status", scope: !1093, file: !3, line: 278, type: !21)
!1110 = !DILocation(line: 278, column: 14, scope: !1093)
!1111 = !DILocalVariable(name: "i", scope: !1093, file: !3, line: 279, type: !22)
!1112 = !DILocation(line: 279, column: 6, scope: !1093)
!1113 = !DILocation(line: 283, column: 9, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 283, column: 2)
!1115 = !DILocation(line: 283, column: 7, scope: !1114)
!1116 = !DILocation(line: 283, column: 14, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 283, column: 2)
!1118 = !DILocation(line: 283, column: 18, scope: !1117)
!1119 = !DILocation(line: 283, column: 16, scope: !1117)
!1120 = !DILocation(line: 283, column: 2, scope: !1114)
!1121 = !DILocation(line: 288, column: 36, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 283, column: 37)
!1123 = !DILocation(line: 289, column: 8, scope: !1122)
!1124 = !DILocation(line: 288, column: 12, scope: !1122)
!1125 = !DILocation(line: 288, column: 10, scope: !1122)
!1126 = !DILocation(line: 292, column: 7, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 292, column: 7)
!1128 = !DILocation(line: 292, column: 7, scope: !1122)
!1129 = !DILocation(line: 293, column: 24, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 292, column: 29)
!1131 = !DILocation(line: 293, column: 34, scope: !1130)
!1132 = !DILocation(line: 293, column: 42, scope: !1130)
!1133 = !DILocation(line: 293, column: 20, scope: !1130)
!1134 = !DILocation(line: 293, column: 4, scope: !1130)
!1135 = !DILocation(line: 293, column: 15, scope: !1130)
!1136 = !DILocation(line: 293, column: 18, scope: !1130)
!1137 = !DILocation(line: 297, column: 29, scope: !1130)
!1138 = !DILocation(line: 297, column: 4, scope: !1130)
!1139 = !DILocation(line: 298, column: 17, scope: !1130)
!1140 = !DILocation(line: 299, column: 4, scope: !1130)
!1141 = !DILocation(line: 302, column: 3, scope: !1122)
!1142 = !DILocation(line: 302, column: 14, scope: !1122)
!1143 = !DILocation(line: 302, column: 17, scope: !1122)
!1144 = !DILocation(line: 303, column: 7, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 303, column: 7)
!1146 = !DILocation(line: 303, column: 14, scope: !1145)
!1147 = !DILocation(line: 303, column: 7, scope: !1122)
!1148 = !DILocation(line: 304, column: 4, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 303, column: 31)
!1150 = !DILocation(line: 312, column: 2, scope: !1122)
!1151 = !DILocation(line: 283, column: 33, scope: !1117)
!1152 = !DILocation(line: 283, column: 2, scope: !1117)
!1153 = distinct !{!1153, !1120, !1154}
!1154 = !DILocation(line: 312, column: 2, scope: !1114)
!1155 = !DILocation(line: 314, column: 2, scope: !1093)
!1156 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !1157, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!26, !1159, !30}
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 55, baseType: !1160)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1161, line: 72, baseType: !1162)
!1161 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1161, line: 16, baseType: !32)
!1163 = !DILocalVariable(name: "s", arg: 1, scope: !1164, file: !6, line: 445, type: !1167)
!1164 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !1165, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!26, !1167, !30, !1159}
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1169, line: 117, flags: DIFlagFwdDecl)
!1169 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1170 = !DILocation(line: 445, column: 72, scope: !1164, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 552, column: 10, scope: !1172, inlinedAt: !1175)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !6, line: 540, column: 34)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !6, line: 540, column: 6)
!1174 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !1157, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1175 = distinct !DILocation(line: 664, column: 9, scope: !1156)
!1176 = !DILocalVariable(name: "flags", arg: 2, scope: !1164, file: !6, line: 446, type: !30)
!1177 = !DILocation(line: 446, column: 9, scope: !1164, inlinedAt: !1171)
!1178 = !DILocalVariable(name: "size", arg: 3, scope: !1164, file: !6, line: 446, type: !1159)
!1179 = !DILocation(line: 446, column: 23, scope: !1164, inlinedAt: !1171)
!1180 = !DILocalVariable(name: "ret", scope: !1164, file: !6, line: 448, type: !26)
!1181 = !DILocation(line: 448, column: 8, scope: !1164, inlinedAt: !1171)
!1182 = !DILocalVariable(name: "flags", arg: 1, scope: !1183, file: !6, line: 318, type: !30)
!1183 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !1184, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!5, !30}
!1186 = !DILocation(line: 318, column: 67, scope: !1183, inlinedAt: !1187)
!1187 = distinct !DILocation(line: 553, column: 20, scope: !1172, inlinedAt: !1175)
!1188 = !DILocalVariable(name: "size", arg: 1, scope: !1189, file: !6, line: 346, type: !1159)
!1189 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !1190, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!7, !1159}
!1192 = !DILocation(line: 346, column: 58, scope: !1189, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 547, column: 11, scope: !1172, inlinedAt: !1175)
!1194 = !DILocalVariable(name: "size", arg: 1, scope: !1195, file: !6, line: 472, type: !1159)
!1195 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !1196, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!26, !1159, !30, !7}
!1198 = !DILocation(line: 472, column: 28, scope: !1195, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 481, column: 9, scope: !1200, inlinedAt: !1201)
!1200 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !1157, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1201 = distinct !DILocation(line: 545, column: 11, scope: !1202, inlinedAt: !1175)
!1202 = distinct !DILexicalBlock(scope: !1172, file: !6, line: 544, column: 7)
!1203 = !DILocalVariable(name: "flags", arg: 2, scope: !1195, file: !6, line: 472, type: !30)
!1204 = !DILocation(line: 472, column: 40, scope: !1195, inlinedAt: !1199)
!1205 = !DILocalVariable(name: "order", arg: 3, scope: !1195, file: !6, line: 472, type: !7)
!1206 = !DILocation(line: 472, column: 60, scope: !1195, inlinedAt: !1199)
!1207 = !DILocalVariable(name: "size", arg: 1, scope: !1200, file: !6, line: 478, type: !1159)
!1208 = !DILocation(line: 478, column: 51, scope: !1200, inlinedAt: !1201)
!1209 = !DILocalVariable(name: "flags", arg: 2, scope: !1200, file: !6, line: 478, type: !30)
!1210 = !DILocation(line: 478, column: 63, scope: !1200, inlinedAt: !1201)
!1211 = !DILocalVariable(name: "order", scope: !1200, file: !6, line: 480, type: !7)
!1212 = !DILocation(line: 480, column: 15, scope: !1200, inlinedAt: !1201)
!1213 = !DILocalVariable(name: "size", arg: 1, scope: !1174, file: !6, line: 538, type: !1159)
!1214 = !DILocation(line: 538, column: 45, scope: !1174, inlinedAt: !1175)
!1215 = !DILocalVariable(name: "flags", arg: 2, scope: !1174, file: !6, line: 538, type: !30)
!1216 = !DILocation(line: 538, column: 57, scope: !1174, inlinedAt: !1175)
!1217 = !DILocalVariable(name: "index", scope: !1172, file: !6, line: 542, type: !7)
!1218 = !DILocation(line: 542, column: 16, scope: !1172, inlinedAt: !1175)
!1219 = !DILocalVariable(name: "size", arg: 1, scope: !1156, file: !6, line: 662, type: !1159)
!1220 = !DILocation(line: 662, column: 36, scope: !1156)
!1221 = !DILocalVariable(name: "flags", arg: 2, scope: !1156, file: !6, line: 662, type: !30)
!1222 = !DILocation(line: 662, column: 48, scope: !1156)
!1223 = !DILocation(line: 664, column: 17, scope: !1156)
!1224 = !DILocation(line: 664, column: 23, scope: !1156)
!1225 = !DILocation(line: 664, column: 29, scope: !1156)
!1226 = !DILocation(line: 540, column: 27, scope: !1173, inlinedAt: !1175)
!1227 = !DILocation(line: 540, column: 6, scope: !1173, inlinedAt: !1175)
!1228 = !DILocation(line: 540, column: 6, scope: !1174, inlinedAt: !1175)
!1229 = !DILocation(line: 544, column: 7, scope: !1202, inlinedAt: !1175)
!1230 = !DILocation(line: 544, column: 12, scope: !1202, inlinedAt: !1175)
!1231 = !DILocation(line: 544, column: 7, scope: !1172, inlinedAt: !1175)
!1232 = !DILocation(line: 545, column: 25, scope: !1202, inlinedAt: !1175)
!1233 = !DILocation(line: 545, column: 31, scope: !1202, inlinedAt: !1175)
!1234 = !DILocation(line: 480, column: 33, scope: !1200, inlinedAt: !1201)
!1235 = !DILocation(line: 480, column: 23, scope: !1200, inlinedAt: !1201)
!1236 = !DILocation(line: 481, column: 29, scope: !1200, inlinedAt: !1201)
!1237 = !DILocation(line: 481, column: 35, scope: !1200, inlinedAt: !1201)
!1238 = !DILocation(line: 481, column: 42, scope: !1200, inlinedAt: !1201)
!1239 = !DILocation(line: 474, column: 23, scope: !1195, inlinedAt: !1199)
!1240 = !DILocation(line: 474, column: 29, scope: !1195, inlinedAt: !1199)
!1241 = !DILocation(line: 474, column: 36, scope: !1195, inlinedAt: !1199)
!1242 = !DILocation(line: 474, column: 9, scope: !1195, inlinedAt: !1199)
!1243 = !DILocation(line: 545, column: 4, scope: !1202, inlinedAt: !1175)
!1244 = !DILocation(line: 547, column: 25, scope: !1172, inlinedAt: !1175)
!1245 = !DILocation(line: 348, column: 7, scope: !1246, inlinedAt: !1193)
!1246 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 348, column: 6)
!1247 = !DILocation(line: 348, column: 6, scope: !1189, inlinedAt: !1193)
!1248 = !DILocation(line: 349, column: 3, scope: !1246, inlinedAt: !1193)
!1249 = !DILocation(line: 351, column: 6, scope: !1250, inlinedAt: !1193)
!1250 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 351, column: 6)
!1251 = !DILocation(line: 351, column: 11, scope: !1250, inlinedAt: !1193)
!1252 = !DILocation(line: 351, column: 6, scope: !1189, inlinedAt: !1193)
!1253 = !DILocation(line: 352, column: 3, scope: !1250, inlinedAt: !1193)
!1254 = !DILocation(line: 354, column: 32, scope: !1255, inlinedAt: !1193)
!1255 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 354, column: 6)
!1256 = !DILocation(line: 354, column: 37, scope: !1255, inlinedAt: !1193)
!1257 = !DILocation(line: 354, column: 42, scope: !1255, inlinedAt: !1193)
!1258 = !DILocation(line: 354, column: 45, scope: !1255, inlinedAt: !1193)
!1259 = !DILocation(line: 354, column: 50, scope: !1255, inlinedAt: !1193)
!1260 = !DILocation(line: 354, column: 6, scope: !1189, inlinedAt: !1193)
!1261 = !DILocation(line: 355, column: 3, scope: !1255, inlinedAt: !1193)
!1262 = !DILocation(line: 356, column: 32, scope: !1263, inlinedAt: !1193)
!1263 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 356, column: 6)
!1264 = !DILocation(line: 356, column: 37, scope: !1263, inlinedAt: !1193)
!1265 = !DILocation(line: 356, column: 43, scope: !1263, inlinedAt: !1193)
!1266 = !DILocation(line: 356, column: 46, scope: !1263, inlinedAt: !1193)
!1267 = !DILocation(line: 356, column: 51, scope: !1263, inlinedAt: !1193)
!1268 = !DILocation(line: 356, column: 6, scope: !1189, inlinedAt: !1193)
!1269 = !DILocation(line: 357, column: 3, scope: !1263, inlinedAt: !1193)
!1270 = !DILocation(line: 358, column: 6, scope: !1271, inlinedAt: !1193)
!1271 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 358, column: 6)
!1272 = !DILocation(line: 358, column: 11, scope: !1271, inlinedAt: !1193)
!1273 = !DILocation(line: 358, column: 6, scope: !1189, inlinedAt: !1193)
!1274 = !DILocation(line: 358, column: 26, scope: !1271, inlinedAt: !1193)
!1275 = !DILocation(line: 359, column: 6, scope: !1276, inlinedAt: !1193)
!1276 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 359, column: 6)
!1277 = !DILocation(line: 359, column: 11, scope: !1276, inlinedAt: !1193)
!1278 = !DILocation(line: 359, column: 6, scope: !1189, inlinedAt: !1193)
!1279 = !DILocation(line: 359, column: 26, scope: !1276, inlinedAt: !1193)
!1280 = !DILocation(line: 360, column: 6, scope: !1281, inlinedAt: !1193)
!1281 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 360, column: 6)
!1282 = !DILocation(line: 360, column: 11, scope: !1281, inlinedAt: !1193)
!1283 = !DILocation(line: 360, column: 6, scope: !1189, inlinedAt: !1193)
!1284 = !DILocation(line: 360, column: 26, scope: !1281, inlinedAt: !1193)
!1285 = !DILocation(line: 361, column: 6, scope: !1286, inlinedAt: !1193)
!1286 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 361, column: 6)
!1287 = !DILocation(line: 361, column: 11, scope: !1286, inlinedAt: !1193)
!1288 = !DILocation(line: 361, column: 6, scope: !1189, inlinedAt: !1193)
!1289 = !DILocation(line: 361, column: 26, scope: !1286, inlinedAt: !1193)
!1290 = !DILocation(line: 362, column: 6, scope: !1291, inlinedAt: !1193)
!1291 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 362, column: 6)
!1292 = !DILocation(line: 362, column: 11, scope: !1291, inlinedAt: !1193)
!1293 = !DILocation(line: 362, column: 6, scope: !1189, inlinedAt: !1193)
!1294 = !DILocation(line: 362, column: 26, scope: !1291, inlinedAt: !1193)
!1295 = !DILocation(line: 363, column: 6, scope: !1296, inlinedAt: !1193)
!1296 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 363, column: 6)
!1297 = !DILocation(line: 363, column: 11, scope: !1296, inlinedAt: !1193)
!1298 = !DILocation(line: 363, column: 6, scope: !1189, inlinedAt: !1193)
!1299 = !DILocation(line: 363, column: 26, scope: !1296, inlinedAt: !1193)
!1300 = !DILocation(line: 364, column: 6, scope: !1301, inlinedAt: !1193)
!1301 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 364, column: 6)
!1302 = !DILocation(line: 364, column: 11, scope: !1301, inlinedAt: !1193)
!1303 = !DILocation(line: 364, column: 6, scope: !1189, inlinedAt: !1193)
!1304 = !DILocation(line: 364, column: 26, scope: !1301, inlinedAt: !1193)
!1305 = !DILocation(line: 365, column: 6, scope: !1306, inlinedAt: !1193)
!1306 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 365, column: 6)
!1307 = !DILocation(line: 365, column: 11, scope: !1306, inlinedAt: !1193)
!1308 = !DILocation(line: 365, column: 6, scope: !1189, inlinedAt: !1193)
!1309 = !DILocation(line: 365, column: 26, scope: !1306, inlinedAt: !1193)
!1310 = !DILocation(line: 366, column: 6, scope: !1311, inlinedAt: !1193)
!1311 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 366, column: 6)
!1312 = !DILocation(line: 366, column: 11, scope: !1311, inlinedAt: !1193)
!1313 = !DILocation(line: 366, column: 6, scope: !1189, inlinedAt: !1193)
!1314 = !DILocation(line: 366, column: 26, scope: !1311, inlinedAt: !1193)
!1315 = !DILocation(line: 367, column: 6, scope: !1316, inlinedAt: !1193)
!1316 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 367, column: 6)
!1317 = !DILocation(line: 367, column: 11, scope: !1316, inlinedAt: !1193)
!1318 = !DILocation(line: 367, column: 6, scope: !1189, inlinedAt: !1193)
!1319 = !DILocation(line: 367, column: 26, scope: !1316, inlinedAt: !1193)
!1320 = !DILocation(line: 368, column: 6, scope: !1321, inlinedAt: !1193)
!1321 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 368, column: 6)
!1322 = !DILocation(line: 368, column: 11, scope: !1321, inlinedAt: !1193)
!1323 = !DILocation(line: 368, column: 6, scope: !1189, inlinedAt: !1193)
!1324 = !DILocation(line: 368, column: 26, scope: !1321, inlinedAt: !1193)
!1325 = !DILocation(line: 369, column: 6, scope: !1326, inlinedAt: !1193)
!1326 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 369, column: 6)
!1327 = !DILocation(line: 369, column: 11, scope: !1326, inlinedAt: !1193)
!1328 = !DILocation(line: 369, column: 6, scope: !1189, inlinedAt: !1193)
!1329 = !DILocation(line: 369, column: 26, scope: !1326, inlinedAt: !1193)
!1330 = !DILocation(line: 370, column: 6, scope: !1331, inlinedAt: !1193)
!1331 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 370, column: 6)
!1332 = !DILocation(line: 370, column: 11, scope: !1331, inlinedAt: !1193)
!1333 = !DILocation(line: 370, column: 6, scope: !1189, inlinedAt: !1193)
!1334 = !DILocation(line: 370, column: 26, scope: !1331, inlinedAt: !1193)
!1335 = !DILocation(line: 371, column: 6, scope: !1336, inlinedAt: !1193)
!1336 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 371, column: 6)
!1337 = !DILocation(line: 371, column: 11, scope: !1336, inlinedAt: !1193)
!1338 = !DILocation(line: 371, column: 6, scope: !1189, inlinedAt: !1193)
!1339 = !DILocation(line: 371, column: 26, scope: !1336, inlinedAt: !1193)
!1340 = !DILocation(line: 372, column: 6, scope: !1341, inlinedAt: !1193)
!1341 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 372, column: 6)
!1342 = !DILocation(line: 372, column: 11, scope: !1341, inlinedAt: !1193)
!1343 = !DILocation(line: 372, column: 6, scope: !1189, inlinedAt: !1193)
!1344 = !DILocation(line: 372, column: 26, scope: !1341, inlinedAt: !1193)
!1345 = !DILocation(line: 373, column: 6, scope: !1346, inlinedAt: !1193)
!1346 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 373, column: 6)
!1347 = !DILocation(line: 373, column: 11, scope: !1346, inlinedAt: !1193)
!1348 = !DILocation(line: 373, column: 6, scope: !1189, inlinedAt: !1193)
!1349 = !DILocation(line: 373, column: 26, scope: !1346, inlinedAt: !1193)
!1350 = !DILocation(line: 374, column: 6, scope: !1351, inlinedAt: !1193)
!1351 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 374, column: 6)
!1352 = !DILocation(line: 374, column: 11, scope: !1351, inlinedAt: !1193)
!1353 = !DILocation(line: 374, column: 6, scope: !1189, inlinedAt: !1193)
!1354 = !DILocation(line: 374, column: 26, scope: !1351, inlinedAt: !1193)
!1355 = !DILocation(line: 375, column: 6, scope: !1356, inlinedAt: !1193)
!1356 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 375, column: 6)
!1357 = !DILocation(line: 375, column: 11, scope: !1356, inlinedAt: !1193)
!1358 = !DILocation(line: 375, column: 6, scope: !1189, inlinedAt: !1193)
!1359 = !DILocation(line: 375, column: 27, scope: !1356, inlinedAt: !1193)
!1360 = !DILocation(line: 376, column: 6, scope: !1361, inlinedAt: !1193)
!1361 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 376, column: 6)
!1362 = !DILocation(line: 376, column: 11, scope: !1361, inlinedAt: !1193)
!1363 = !DILocation(line: 376, column: 6, scope: !1189, inlinedAt: !1193)
!1364 = !DILocation(line: 376, column: 32, scope: !1361, inlinedAt: !1193)
!1365 = !DILocation(line: 377, column: 6, scope: !1366, inlinedAt: !1193)
!1366 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 377, column: 6)
!1367 = !DILocation(line: 377, column: 11, scope: !1366, inlinedAt: !1193)
!1368 = !DILocation(line: 377, column: 6, scope: !1189, inlinedAt: !1193)
!1369 = !DILocation(line: 377, column: 32, scope: !1366, inlinedAt: !1193)
!1370 = !DILocation(line: 378, column: 6, scope: !1371, inlinedAt: !1193)
!1371 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 378, column: 6)
!1372 = !DILocation(line: 378, column: 11, scope: !1371, inlinedAt: !1193)
!1373 = !DILocation(line: 378, column: 6, scope: !1189, inlinedAt: !1193)
!1374 = !DILocation(line: 378, column: 32, scope: !1371, inlinedAt: !1193)
!1375 = !DILocation(line: 379, column: 6, scope: !1376, inlinedAt: !1193)
!1376 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 379, column: 6)
!1377 = !DILocation(line: 379, column: 11, scope: !1376, inlinedAt: !1193)
!1378 = !DILocation(line: 379, column: 6, scope: !1189, inlinedAt: !1193)
!1379 = !DILocation(line: 379, column: 33, scope: !1376, inlinedAt: !1193)
!1380 = !DILocation(line: 380, column: 6, scope: !1381, inlinedAt: !1193)
!1381 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 380, column: 6)
!1382 = !DILocation(line: 380, column: 11, scope: !1381, inlinedAt: !1193)
!1383 = !DILocation(line: 380, column: 6, scope: !1189, inlinedAt: !1193)
!1384 = !DILocation(line: 380, column: 33, scope: !1381, inlinedAt: !1193)
!1385 = !DILocation(line: 381, column: 6, scope: !1386, inlinedAt: !1193)
!1386 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 381, column: 6)
!1387 = !DILocation(line: 381, column: 11, scope: !1386, inlinedAt: !1193)
!1388 = !DILocation(line: 381, column: 6, scope: !1189, inlinedAt: !1193)
!1389 = !DILocation(line: 381, column: 33, scope: !1386, inlinedAt: !1193)
!1390 = !DILocation(line: 382, column: 2, scope: !1391, inlinedAt: !1193)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !6, line: 382, column: 2)
!1392 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 382, column: 2)
!1393 = !{i32 -2144111517, i32 -2144111488, i32 -2144111442, i32 -2144111384, i32 -2144111330, i32 -2144111276, i32 -2144111221, i32 -2144111190}
!1394 = !DILocation(line: 382, column: 2, scope: !1395, inlinedAt: !1193)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !6, line: 382, column: 2)
!1396 = distinct !DILexicalBlock(scope: !1392, file: !6, line: 382, column: 2)
!1397 = !{i32 -2144110747, i32 -2144110740, i32 -2144110686, i32 -2144110655, i32 -2144110625}
!1398 = !DILocation(line: 382, column: 2, scope: !1396, inlinedAt: !1193)
!1399 = !DILocation(line: 386, column: 1, scope: !1189, inlinedAt: !1193)
!1400 = !DILocation(line: 547, column: 9, scope: !1172, inlinedAt: !1175)
!1401 = !DILocation(line: 549, column: 8, scope: !1402, inlinedAt: !1175)
!1402 = distinct !DILexicalBlock(scope: !1172, file: !6, line: 549, column: 7)
!1403 = !DILocation(line: 549, column: 7, scope: !1172, inlinedAt: !1175)
!1404 = !DILocation(line: 550, column: 4, scope: !1402, inlinedAt: !1175)
!1405 = !DILocation(line: 553, column: 33, scope: !1172, inlinedAt: !1175)
!1406 = !DILocation(line: 325, column: 6, scope: !1407, inlinedAt: !1187)
!1407 = distinct !DILexicalBlock(scope: !1183, file: !6, line: 325, column: 6)
!1408 = !DILocation(line: 325, column: 6, scope: !1183, inlinedAt: !1187)
!1409 = !DILocation(line: 326, column: 3, scope: !1407, inlinedAt: !1187)
!1410 = !DILocation(line: 332, column: 9, scope: !1183, inlinedAt: !1187)
!1411 = !DILocation(line: 332, column: 15, scope: !1183, inlinedAt: !1187)
!1412 = !DILocation(line: 332, column: 2, scope: !1183, inlinedAt: !1187)
!1413 = !DILocation(line: 336, column: 1, scope: !1183, inlinedAt: !1187)
!1414 = !DILocation(line: 553, column: 5, scope: !1172, inlinedAt: !1175)
!1415 = !DILocation(line: 553, column: 41, scope: !1172, inlinedAt: !1175)
!1416 = !DILocation(line: 554, column: 5, scope: !1172, inlinedAt: !1175)
!1417 = !DILocation(line: 554, column: 12, scope: !1172, inlinedAt: !1175)
!1418 = !DILocation(line: 448, column: 31, scope: !1164, inlinedAt: !1171)
!1419 = !DILocation(line: 448, column: 34, scope: !1164, inlinedAt: !1171)
!1420 = !DILocation(line: 448, column: 14, scope: !1164, inlinedAt: !1171)
!1421 = !DILocation(line: 450, column: 22, scope: !1164, inlinedAt: !1171)
!1422 = !DILocation(line: 450, column: 25, scope: !1164, inlinedAt: !1171)
!1423 = !DILocation(line: 450, column: 30, scope: !1164, inlinedAt: !1171)
!1424 = !DILocation(line: 450, column: 36, scope: !1164, inlinedAt: !1171)
!1425 = !DILocation(line: 450, column: 8, scope: !1164, inlinedAt: !1171)
!1426 = !DILocation(line: 450, column: 6, scope: !1164, inlinedAt: !1171)
!1427 = !DILocation(line: 451, column: 9, scope: !1164, inlinedAt: !1171)
!1428 = !DILocation(line: 552, column: 3, scope: !1172, inlinedAt: !1175)
!1429 = !DILocation(line: 557, column: 19, scope: !1174, inlinedAt: !1175)
!1430 = !DILocation(line: 557, column: 25, scope: !1174, inlinedAt: !1175)
!1431 = !DILocation(line: 557, column: 9, scope: !1174, inlinedAt: !1175)
!1432 = !DILocation(line: 557, column: 2, scope: !1174, inlinedAt: !1175)
!1433 = !DILocation(line: 558, column: 1, scope: !1174, inlinedAt: !1175)
!1434 = !DILocation(line: 664, column: 2, scope: !1156)
!1435 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1436, file: !1436, line: 646, type: !1437, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1436 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!32}
!1439 = !DILocalVariable(name: "__ret", scope: !1440, file: !1436, line: 648, type: !32)
!1440 = distinct !DILexicalBlock(scope: !1435, file: !1436, line: 648, column: 9)
!1441 = !DILocation(line: 648, column: 9, scope: !1440)
!1442 = !DILocalVariable(name: "__edi", scope: !1440, file: !1436, line: 648, type: !32)
!1443 = !DILocalVariable(name: "__esi", scope: !1440, file: !1436, line: 648, type: !32)
!1444 = !DILocalVariable(name: "__edx", scope: !1440, file: !1436, line: 648, type: !32)
!1445 = !DILocalVariable(name: "__ecx", scope: !1440, file: !1436, line: 648, type: !32)
!1446 = !DILocalVariable(name: "__eax", scope: !1440, file: !1436, line: 648, type: !32)
!1447 = !DILocation(line: 648, column: 9, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !1436, line: 648, column: 9)
!1449 = distinct !DILexicalBlock(scope: !1440, file: !1436, line: 648, column: 9)
!1450 = !{i32 -2145785123, i32 -2145782808, i32 -2145782574, i32 -2145782523, i32 -2145782495, i32 -2145782470, i32 -2145782786, i32 -2145782773, i32 -2145782335, i32 -2145782216, i32 -2145782681, i32 -2145782654, i32 -2145782626, i32 -2145782596}
!1451 = !DILocalVariable(name: "__mask", scope: !1452, file: !1436, line: 648, type: !32)
!1452 = distinct !DILexicalBlock(scope: !1448, file: !1436, line: 648, column: 9)
!1453 = !DILocation(line: 648, column: 9, scope: !1452)
!1454 = !DILocation(line: 648, column: 9, scope: !1449)
!1455 = !DILocation(line: 648, column: 2, scope: !1435)
!1456 = distinct !DISubprogram(name: "get_order", scope: !1457, file: !1457, line: 29, type: !986, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1457 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1458 = !DILocalVariable(name: "x", arg: 1, scope: !1459, file: !1460, line: 366, type: !18)
!1459 = distinct !DISubprogram(name: "fls64", scope: !1460, file: !1460, line: 366, type: !1461, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1460 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!988, !18}
!1463 = !DILocation(line: 366, column: 40, scope: !1459, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 46, column: 9, scope: !1456)
!1465 = !DILocalVariable(name: "bitpos", scope: !1459, file: !1460, line: 368, type: !988)
!1466 = !DILocation(line: 368, column: 6, scope: !1459, inlinedAt: !1464)
!1467 = !DILocalVariable(name: "size", arg: 1, scope: !1456, file: !1457, line: 29, type: !32)
!1468 = !DILocation(line: 29, column: 63, scope: !1456)
!1469 = !DILocation(line: 31, column: 27, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1456, file: !1457, line: 31, column: 6)
!1471 = !DILocation(line: 31, column: 6, scope: !1470)
!1472 = !DILocation(line: 31, column: 6, scope: !1456)
!1473 = !DILocation(line: 32, column: 8, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !1457, line: 32, column: 7)
!1475 = distinct !DILexicalBlock(scope: !1470, file: !1457, line: 31, column: 34)
!1476 = !DILocation(line: 32, column: 7, scope: !1475)
!1477 = !DILocation(line: 33, column: 4, scope: !1474)
!1478 = !DILocation(line: 35, column: 7, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1475, file: !1457, line: 35, column: 7)
!1480 = !DILocation(line: 35, column: 12, scope: !1479)
!1481 = !DILocation(line: 35, column: 7, scope: !1475)
!1482 = !DILocation(line: 36, column: 4, scope: !1479)
!1483 = !DILocation(line: 38, column: 10, scope: !1475)
!1484 = !DILocation(line: 38, column: 28, scope: !1475)
!1485 = !DILocation(line: 38, column: 41, scope: !1475)
!1486 = !DILocation(line: 38, column: 3, scope: !1475)
!1487 = !DILocation(line: 41, column: 6, scope: !1456)
!1488 = !DILocation(line: 42, column: 7, scope: !1456)
!1489 = !DILocation(line: 46, column: 15, scope: !1456)
!1490 = !DILocation(line: 374, column: 2, scope: !1459, inlinedAt: !1464)
!1491 = !DILocation(line: 376, column: 14, scope: !1459, inlinedAt: !1464)
!1492 = !{i32 659685}
!1493 = !DILocation(line: 377, column: 9, scope: !1459, inlinedAt: !1464)
!1494 = !DILocation(line: 377, column: 16, scope: !1459, inlinedAt: !1464)
!1495 = !DILocation(line: 46, column: 2, scope: !1456)
!1496 = !DILocation(line: 48, column: 1, scope: !1456)
!1497 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1498, file: !1498, line: 30, type: !1499, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1498 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!988, !16}
!1501 = !DILocation(line: 366, column: 40, scope: !1459, inlinedAt: !1502)
!1502 = distinct !DILocation(line: 32, column: 9, scope: !1497)
!1503 = !DILocation(line: 368, column: 6, scope: !1459, inlinedAt: !1502)
!1504 = !DILocalVariable(name: "n", arg: 1, scope: !1497, file: !1498, line: 30, type: !16)
!1505 = !DILocation(line: 30, column: 21, scope: !1497)
!1506 = !DILocation(line: 32, column: 15, scope: !1497)
!1507 = !DILocation(line: 374, column: 2, scope: !1459, inlinedAt: !1502)
!1508 = !DILocation(line: 376, column: 14, scope: !1459, inlinedAt: !1502)
!1509 = !DILocation(line: 377, column: 9, scope: !1459, inlinedAt: !1502)
!1510 = !DILocation(line: 377, column: 16, scope: !1459, inlinedAt: !1502)
!1511 = !DILocation(line: 32, column: 18, scope: !1497)
!1512 = !DILocation(line: 32, column: 2, scope: !1497)
!1513 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1514, file: !1514, line: 137, type: !1515, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1514 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!26, !1167, !1517, !1159, !30}
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1519 = !DILocalVariable(name: "s", arg: 1, scope: !1513, file: !1514, line: 137, type: !1167)
!1520 = !DILocation(line: 137, column: 54, scope: !1513)
!1521 = !DILocalVariable(name: "object", arg: 2, scope: !1513, file: !1514, line: 137, type: !1517)
!1522 = !DILocation(line: 137, column: 69, scope: !1513)
!1523 = !DILocalVariable(name: "size", arg: 3, scope: !1513, file: !1514, line: 138, type: !1159)
!1524 = !DILocation(line: 138, column: 12, scope: !1513)
!1525 = !DILocalVariable(name: "flags", arg: 4, scope: !1513, file: !1514, line: 138, type: !30)
!1526 = !DILocation(line: 138, column: 24, scope: !1513)
!1527 = !DILocation(line: 140, column: 17, scope: !1513)
!1528 = !DILocation(line: 140, column: 2, scope: !1513)
