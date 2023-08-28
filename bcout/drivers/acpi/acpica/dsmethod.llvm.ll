; ModuleID = '../bcout/drivers/acpi/acpica/dsmethod.llvm.bc'
source_filename = "drivers/acpi/acpica/dsmethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.19, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.0, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.0 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.kernel_siginfo = type { %struct.anon.7 }
%struct.anon.7 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.11 }
%struct.anon.11 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.18, i32, [12 x i8] }
%union.anon.18 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.19 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.20, %union.anon.33, %struct.atomic_t, [8 x i8] }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.33 = type { %struct.atomic_t }
%struct.vm_struct = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.perf_event = type opaque
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.34, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.37 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { i64, i64 }
%union.anon.37 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.kmem_cache = type opaque
%struct.paravirt_patch_template = type { %struct.pv_init_ops, %struct.pv_time_ops, %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_init_ops = type { i32 (i8, i8*, i64, i32)* }
%struct.pv_time_ops = type { i64 ()*, i64 (i32)* }
%struct.pv_cpu_ops = type { void ()*, i64 (i32)*, void (i32, i64)*, i64 ()*, void (i64)*, void (i64)*, void ()*, void (%struct.desc_ptr*)*, void (%struct.desc_ptr*)*, void (i8*, i32)*, i64 ()*, void (%struct.thread_struct*, i32)*, void (i32)*, void (%struct.desc_struct*, i32, i8*)*, void (%struct.desc_struct*, i32, i8*, i32)*, void (%struct.gate_struct*, i32, %struct.gate_struct*)*, void (%struct.desc_struct*, i32)*, void (%struct.desc_struct*, i32)*, void (i64)*, void ()*, void ()*, void ()*, void (i32*, i32*, i32*, i32*)*, i64 (i32)*, void (i32, i32, i32)*, i64 (i32, i32*)*, i32 (i32, i32, i32)*, i64 (i32)*, void ()*, void ()*, void ()*, void (%struct.task_struct*)*, void (%struct.task_struct*)* }
%struct.desc_ptr = type <{ i16, i64 }>
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
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
%union.acpi_name_union = type { i32 }
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
%struct.acpi_object_method = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %union.acpi_operand_object*, %union.acpi_operand_object*, i8*, %union.anon, i32, i16, i8 }
%union.anon = type { i32 (%struct.acpi_walk_state*)* }
%struct.acpi_parse_obj_common = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8 }
%struct.acpi_evaluate_info = type { %struct.acpi_namespace_node*, i8*, %union.acpi_operand_object**, %struct.acpi_namespace_node*, %union.acpi_operand_object*, i8*, %union.acpi_predefined_info*, %union.acpi_operand_object*, %union.acpi_operand_object*, i32, i32, i16, i16, i8, i8, i8 }
%union.acpi_predefined_info = type { %struct.acpi_name_info }
%struct.acpi_name_info = type <{ [4 x i8], i16, i8 }>

@acpi_gbl_exception_handler = external dso_local global i32 (i32, i32, i16, i32, i8*)*, align 8
@_acpi_module_name = internal constant [9 x i8] c"dsmethod\00", align 1, !dbg !0
@.str = private unnamed_addr constant [46 x i8] c"Method reached maximum reentrancy limit (255)\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"Cannot acquire Mutex for method [%4.4s], current SyncLevel is too large (%u)\00", align 1
@acpi_method_count = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Invalid zero thread count in method\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"Marking method %4.4s as Serialized because of AE_ALREADY_EXISTS error\00", align 1
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_auto_serialize_method(%struct.acpi_namespace_node* %node, %union.acpi_operand_object* %obj_desc) #0 !dbg !1936 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %op = alloca %union.acpi_parse_object*, align 8
  %walk_state = alloca %struct.acpi_walk_state*, align 8
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !1939, metadata !DIExpression()), !dbg !1940
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !1941, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1943, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op, metadata !1945, metadata !DIExpression()), !dbg !1946
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %op, align 8, !dbg !1946
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state, metadata !1947, metadata !DIExpression()), !dbg !1948
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1949
  %method = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_method*, !dbg !1950
  %aml_start = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method, i32 0, i32 10, !dbg !1951
  %1 = load i8*, i8** %aml_start, align 8, !dbg !1951
  %call = call %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext 20, i8* %1) #8, !dbg !1952
  store %union.acpi_parse_object* %call, %union.acpi_parse_object** %op, align 8, !dbg !1953
  %2 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1954
  %tobool = icmp ne %union.acpi_parse_object* %2, null, !dbg !1954
  br i1 %tobool, label %if.end, label %if.then, !dbg !1956

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !1957
  br label %return, !dbg !1957

if.end:                                           ; preds = %entry
  %3 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1959
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1960
  %name = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %4, i32 0, i32 4, !dbg !1961
  %integer = bitcast %union.acpi_name_union* %name to i32*, !dbg !1962
  %5 = load i32, i32* %integer, align 4, !dbg !1962
  call void @acpi_ps_set_name(%union.acpi_parse_object* %3, i32 %5) #8, !dbg !1963
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1964
  %7 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1965
  %common = bitcast %union.acpi_parse_object* %7 to %struct.acpi_parse_obj_common*, !dbg !1966
  %node1 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 6, !dbg !1967
  store %struct.acpi_namespace_node* %6, %struct.acpi_namespace_node** %node1, align 8, !dbg !1968
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1969
  %owner_id = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %8, i32 0, i32 8, !dbg !1970
  %9 = load i16, i16* %owner_id, align 8, !dbg !1970
  %call2 = call %struct.acpi_walk_state* @acpi_ds_create_walk_state(i16 zeroext %9, %union.acpi_parse_object* null, %union.acpi_operand_object* null, %struct.acpi_thread_state* null) #8, !dbg !1971
  store %struct.acpi_walk_state* %call2, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1972
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1973
  %tobool3 = icmp ne %struct.acpi_walk_state* %10, null, !dbg !1973
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1975

if.then4:                                         ; preds = %if.end
  %11 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1976
  call void @acpi_ps_free_op(%union.acpi_parse_object* %11) #8, !dbg !1978
  store i32 4, i32* %retval, align 4, !dbg !1979
  br label %return, !dbg !1979

if.end5:                                          ; preds = %if.end
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1980
  %13 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1981
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1982
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1983
  %method6 = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_method*, !dbg !1984
  %aml_start7 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method6, i32 0, i32 10, !dbg !1985
  %16 = load i8*, i8** %aml_start7, align 8, !dbg !1985
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1986
  %method8 = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_method*, !dbg !1987
  %aml_length = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method8, i32 0, i32 12, !dbg !1988
  %18 = load i32, i32* %aml_length, align 8, !dbg !1988
  %call9 = call i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state* %12, %union.acpi_parse_object* %13, %struct.acpi_namespace_node* %14, i8* %16, i32 %18, %struct.acpi_evaluate_info* null, i8 zeroext 0) #8, !dbg !1989
  store i32 %call9, i32* %status, align 4, !dbg !1990
  %19 = load i32, i32* %status, align 4, !dbg !1991
  %tobool10 = icmp ne i32 %19, 0, !dbg !1991
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !1993

if.then11:                                        ; preds = %if.end5
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !1994
  call void @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %20) #8, !dbg !1996
  %21 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1997
  call void @acpi_ps_free_op(%union.acpi_parse_object* %21) #8, !dbg !1998
  %22 = load i32, i32* %status, align 4, !dbg !1999
  store i32 %22, i32* %retval, align 4, !dbg !1999
  br label %return, !dbg !1999

if.end12:                                         ; preds = %if.end5
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !2000
  %descending_callback = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %23, i32 0, i32 50, !dbg !2001
  store i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)* @acpi_ds_detect_named_opcodes, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)** %descending_callback, align 8, !dbg !2002
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !2003
  %call13 = call i32 @acpi_ps_parse_aml(%struct.acpi_walk_state* %24) #8, !dbg !2004
  store i32 %call13, i32* %status, align 4, !dbg !2005
  %25 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !2006
  call void @acpi_ps_delete_parse_tree(%union.acpi_parse_object* %25) #8, !dbg !2007
  %26 = load i32, i32* %status, align 4, !dbg !2008
  store i32 %26, i32* %retval, align 4, !dbg !2008
  br label %return, !dbg !2008

return:                                           ; preds = %if.end12, %if.then11, %if.then4, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !2009
  ret i32 %27, !dbg !2009
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext, i8*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ps_set_name(%union.acpi_parse_object*, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_walk_state* @acpi_ds_create_walk_state(i16 zeroext, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_thread_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ps_free_op(%union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, i8*, i32, %struct.acpi_evaluate_info*, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ds_delete_walk_state(%struct.acpi_walk_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ds_detect_named_opcodes(%struct.acpi_walk_state* %walk_state, %union.acpi_parse_object** %out_op) #0 !dbg !2010 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %out_op.addr = alloca %union.acpi_parse_object**, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !2011, metadata !DIExpression()), !dbg !2012
  store %union.acpi_parse_object** %out_op, %union.acpi_parse_object*** %out_op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object*** %out_op.addr, metadata !2013, metadata !DIExpression()), !dbg !2014
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2015
  %op_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 41, !dbg !2017
  %1 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !2017
  %flags = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %1, i32 0, i32 2, !dbg !2018
  %2 = load i16, i16* %flags, align 4, !dbg !2018
  %conv = zext i16 %2 to i32, !dbg !2015
  %and = and i32 %conv, 88, !dbg !2019
  %tobool = icmp ne i32 %and, 0, !dbg !2019
  br i1 %tobool, label %if.end, label %if.then, !dbg !2020

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2021
  br label %return, !dbg !2021

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2023
  %method_desc = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 37, !dbg !2024
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc, align 8, !dbg !2024
  %method = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_method*, !dbg !2025
  %sync_level = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method, i32 0, i32 7, !dbg !2026
  store i8 0, i8* %sync_level, align 1, !dbg !2027
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2028
  %method_desc1 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %5, i32 0, i32 37, !dbg !2029
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc1, align 8, !dbg !2029
  %method2 = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_method*, !dbg !2030
  %info_flags = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method2, i32 0, i32 5, !dbg !2031
  %7 = load i8, i8* %info_flags, align 1, !dbg !2032
  %conv3 = zext i8 %7 to i32, !dbg !2032
  %or = or i32 %conv3, 20, !dbg !2032
  %conv4 = trunc i32 %or to i8, !dbg !2032
  store i8 %conv4, i8* %info_flags, align 1, !dbg !2032
  store i32 16387, i32* %retval, align 4, !dbg !2033
  br label %return, !dbg !2033

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !2034
  ret i32 %8, !dbg !2034
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ps_parse_aml(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ps_delete_parse_tree(%union.acpi_parse_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_method_error(i32 %status, %struct.acpi_walk_state* %walk_state) #0 !dbg !2035 {
entry:
  %retval = alloca i32, align 4
  %status.addr = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %aml_offset = alloca i32, align 4
  %name = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %status.addr, metadata !2038, metadata !DIExpression()), !dbg !2039
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !2040, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.declare(metadata i32* %aml_offset, metadata !2042, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.declare(metadata i32* %name, metadata !2044, metadata !DIExpression()), !dbg !2046
  store i32 0, i32* %name, align 4, !dbg !2046
  %0 = load i32, i32* %status.addr, align 4, !dbg !2047
  %tobool = icmp ne i32 %0, 0, !dbg !2047
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2049

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %status.addr, align 4, !dbg !2050
  %and = and i32 %1, 16384, !dbg !2051
  %tobool1 = icmp ne i32 %and, 0, !dbg !2051
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2052

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* %status.addr, align 4, !dbg !2053
  store i32 %2, i32* %retval, align 4, !dbg !2055
  br label %return, !dbg !2055

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32 (i32, i32, i16, i32, i8*)*, i32 (i32, i32, i16, i32, i8*)** @acpi_gbl_exception_handler, align 8, !dbg !2056
  %tobool2 = icmp ne i32 (i32, i32, i16, i32, i8*)* %3, null, !dbg !2056
  br i1 %tobool2, label %if.then3, label %if.end15, !dbg !2058

if.then3:                                         ; preds = %if.end
  call void @acpi_ex_exit_interpreter() #8, !dbg !2059
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2061
  %aml = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %4, i32 0, i32 16, !dbg !2061
  %5 = load i8*, i8** %aml, align 8, !dbg !2061
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2061
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %6, i32 0, i32 21, !dbg !2061
  %aml_start = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state, i32 0, i32 0, !dbg !2061
  %7 = load i8*, i8** %aml_start, align 8, !dbg !2061
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64, !dbg !2061
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64, !dbg !2061
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2061
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !2062
  store i32 %conv, i32* %aml_offset, align 4, !dbg !2063
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2064
  %method_node = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 38, !dbg !2066
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node, align 8, !dbg !2066
  %tobool4 = icmp ne %struct.acpi_namespace_node* %9, null, !dbg !2064
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !2067

if.then5:                                         ; preds = %if.then3
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2068
  %method_node6 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %10, i32 0, i32 38, !dbg !2070
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node6, align 8, !dbg !2070
  %name7 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %11, i32 0, i32 4, !dbg !2071
  %integer = bitcast %union.acpi_name_union* %name7 to i32*, !dbg !2072
  %12 = load i32, i32* %integer, align 4, !dbg !2072
  store i32 %12, i32* %name, align 4, !dbg !2073
  br label %if.end14, !dbg !2074

if.else:                                          ; preds = %if.then3
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2075
  %deferred_node = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 33, !dbg !2077
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %deferred_node, align 8, !dbg !2077
  %tobool8 = icmp ne %struct.acpi_namespace_node* %14, null, !dbg !2075
  br i1 %tobool8, label %if.then9, label %if.end13, !dbg !2078

if.then9:                                         ; preds = %if.else
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2079
  %deferred_node10 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %15, i32 0, i32 33, !dbg !2081
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %deferred_node10, align 8, !dbg !2081
  %name11 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %16, i32 0, i32 4, !dbg !2082
  %integer12 = bitcast %union.acpi_name_union* %name11 to i32*, !dbg !2083
  %17 = load i32, i32* %integer12, align 4, !dbg !2083
  store i32 %17, i32* %name, align 4, !dbg !2084
  br label %if.end13, !dbg !2085

if.end13:                                         ; preds = %if.then9, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then5
  %18 = load i32 (i32, i32, i16, i32, i8*)*, i32 (i32, i32, i16, i32, i8*)** @acpi_gbl_exception_handler, align 8, !dbg !2086
  %19 = load i32, i32* %status.addr, align 4, !dbg !2087
  %20 = load i32, i32* %name, align 4, !dbg !2088
  %21 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2089
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %21, i32 0, i32 3, !dbg !2090
  %22 = load i16, i16* %opcode, align 2, !dbg !2090
  %23 = load i32, i32* %aml_offset, align 4, !dbg !2091
  %call = call i32 %18(i32 %19, i32 %20, i16 zeroext %22, i32 %23, i8* null) #8, !dbg !2086
  store i32 %call, i32* %status.addr, align 4, !dbg !2092
  call void @acpi_ex_enter_interpreter() #8, !dbg !2093
  br label %if.end15, !dbg !2094

if.end15:                                         ; preds = %if.end14, %if.end
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2095
  call void @acpi_ds_clear_implicit_return(%struct.acpi_walk_state* %24) #8, !dbg !2096
  %25 = load i32, i32* %status.addr, align 4, !dbg !2097
  %tobool16 = icmp ne i32 %25, 0, !dbg !2097
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !2099

if.then17:                                        ; preds = %if.end15
  %26 = load i32, i32* %status.addr, align 4, !dbg !2100
  %27 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2102
  %28 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2103
  %op = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %28, i32 0, i32 40, !dbg !2104
  %29 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !2104
  call void @acpi_ds_dump_method_stack(i32 %26, %struct.acpi_walk_state* %27, %union.acpi_parse_object* %29) #8, !dbg !2105
  br label %if.end18, !dbg !2106

if.end18:                                         ; preds = %if.then17, %if.end15
  %30 = load i32, i32* %status.addr, align 4, !dbg !2107
  store i32 %30, i32* %retval, align 4, !dbg !2108
  br label %return, !dbg !2108

return:                                           ; preds = %if.end18, %if.then
  %31 = load i32, i32* %retval, align 4, !dbg !2109
  ret i32 %31, !dbg !2109
}

; Function Attrs: noredzone
declare dso_local void @acpi_ex_exit_interpreter() #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_enter_interpreter() #2

; Function Attrs: noredzone
declare dso_local void @acpi_ds_clear_implicit_return(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ds_dump_method_stack(i32, %struct.acpi_walk_state*, %union.acpi_parse_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_begin_method_execution(%struct.acpi_namespace_node* %method_node, %union.acpi_operand_object* %obj_desc, %struct.acpi_walk_state* %walk_state) #0 !dbg !2110 {
entry:
  %retval = alloca i32, align 4
  %method_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_namespace_node* %method_node, %struct.acpi_namespace_node** %method_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %method_node.addr, metadata !2113, metadata !DIExpression()), !dbg !2114
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !2115, metadata !DIExpression()), !dbg !2116
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !2117, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2119, metadata !DIExpression()), !dbg !2120
  store i32 0, i32* %status, align 4, !dbg !2120
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node.addr, align 8, !dbg !2121
  %tobool = icmp ne %struct.acpi_namespace_node* %0, null, !dbg !2121
  br i1 %tobool, label %if.end, label %if.then, !dbg !2123

if.then:                                          ; preds = %entry
  store i32 10, i32* %retval, align 4, !dbg !2124
  br label %return, !dbg !2124

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node.addr, align 8, !dbg !2126
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !2127
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2128
  call void @acpi_ex_start_trace_method(%struct.acpi_namespace_node* %1, %union.acpi_operand_object* %2, %struct.acpi_walk_state* %3) #8, !dbg !2129
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !2130
  %method = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_method*, !dbg !2132
  %thread_count = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method, i32 0, i32 14, !dbg !2133
  %5 = load i8, i8* %thread_count, align 2, !dbg !2133
  %conv = zext i8 %5 to i32, !dbg !2130
  %cmp = icmp eq i32 %conv, 255, !dbg !2134
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2135

if.then2:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 309, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0)) #8, !dbg !2136
  store i32 12307, i32* %retval, align 4, !dbg !2138
  br label %return, !dbg !2138

if.end3:                                          ; preds = %if.end
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !2139
  %method4 = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_method*, !dbg !2141
  %info_flags = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method4, i32 0, i32 5, !dbg !2142
  %7 = load i8, i8* %info_flags, align 1, !dbg !2142
  %conv5 = zext i8 %7 to i32, !dbg !2139
  %and = and i32 %conv5, 4, !dbg !2143
  %tobool6 = icmp ne i32 %and, 0, !dbg !2143
  br i1 %tobool6, label %if.then7, label %if.end99, !dbg !2144

if.then7:                                         ; preds = %if.end3
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !2145
  %method8 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_method*, !dbg !2148
  %mutex = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method8, i32 0, i32 8, !dbg !2149
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex, align 8, !dbg !2149
  %tobool9 = icmp ne %union.acpi_operand_object* %9, null, !dbg !2145
  br i1 %tobool9, label %if.end14, label %if.then10, !dbg !2150

if.then10:                                        ; preds = %if.then7
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !2151
  %call = call i32 @acpi_ds_create_method_mutex(%union.acpi_operand_object* %10) #8, !dbg !2153
  store i32 %call, i32* %status, align 4, !dbg !2154
  %11 = load i32, i32* %status, align 4, !dbg !2155
  %tobool11 = icmp ne i32 %11, 0, !dbg !2155
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !2157

if.then12:                                        ; preds = %if.then10
  %12 = load i32, i32* %status, align 4, !dbg !2158
  store i32 %12, i32* %retval, align 4, !dbg !2158
  br label %return, !dbg !2158

if.end13:                                         ; preds = %if.then10
  br label %if.end14, !dbg !2160

if.end14:                                         ; preds = %if.end13, %if.then7
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2161
  %tobool15 = icmp ne %struct.acpi_walk_state* %13, null, !dbg !2161
  br i1 %tobool15, label %land.lhs.true, label %if.end34, !dbg !2163

land.lhs.true:                                    ; preds = %if.end14
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !2164
  %method16 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_method*, !dbg !2165
  %info_flags17 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method16, i32 0, i32 5, !dbg !2166
  %15 = load i8, i8* %info_flags17, align 1, !dbg !2166
  %conv18 = zext i8 %15 to i32, !dbg !2164
  %and19 = and i32 %conv18, 16, !dbg !2167
  %tobool20 = icmp ne i32 %and19, 0, !dbg !2167
  br i1 %tobool20, label %if.end34, label %land.lhs.true21, !dbg !2168

land.lhs.true21:                                  ; preds = %land.lhs.true
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2169
  %thread = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 49, !dbg !2170
  %17 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread, align 8, !dbg !2170
  %current_sync_level = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %17, i32 0, i32 5, !dbg !2171
  %18 = load i8, i8* %current_sync_level, align 2, !dbg !2171
  %conv22 = zext i8 %18 to i32, !dbg !2169
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !2172
  %method23 = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_method*, !dbg !2173
  %mutex24 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method23, i32 0, i32 8, !dbg !2174
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex24, align 8, !dbg !2174
  %mutex25 = bitcast %union.acpi_operand_object* %20 to %struct.acpi_object_mutex*, !dbg !2175
  %sync_level = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex25, i32 0, i32 5, !dbg !2176
  %21 = load i8, i8* %sync_level, align 1, !dbg !2176
  %conv26 = zext i8 %21 to i32, !dbg !2172
  %cmp27 = icmp sgt i32 %conv22, %conv26, !dbg !2177
  br i1 %cmp27, label %if.then29, label %if.end34, !dbg !2178

if.then29:                                        ; preds = %land.lhs.true21
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node.addr, align 8, !dbg !2179
  %23 = bitcast %struct.acpi_namespace_node* %22 to i8*, !dbg !2179
  %call30 = call i8* @acpi_ut_get_node_name(i8* %23) #8, !dbg !2179
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2179
  %thread31 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %24, i32 0, i32 49, !dbg !2179
  %25 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread31, align 8, !dbg !2179
  %current_sync_level32 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %25, i32 0, i32 5, !dbg !2179
  %26 = load i8, i8* %current_sync_level32, align 2, !dbg !2179
  %conv33 = zext i8 %26 to i32, !dbg !2179
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 346, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i8* %call30, i32 %conv33) #8, !dbg !2179
  store i32 12309, i32* %retval, align 4, !dbg !2181
  br label %return, !dbg !2181

if.end34:                                         ; preds = %land.lhs.true21, %land.lhs.true, %if.end14
  %27 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2182
  %tobool35 = icmp ne %struct.acpi_walk_state* %27, null, !dbg !2182
  br i1 %tobool35, label %lor.lhs.false, label %if.then49, !dbg !2184

lor.lhs.false:                                    ; preds = %if.end34
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !2185
  %method36 = bitcast %union.acpi_operand_object* %28 to %struct.acpi_object_method*, !dbg !2186
  %mutex37 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method36, i32 0, i32 8, !dbg !2187
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex37, align 8, !dbg !2187
  %mutex38 = bitcast %union.acpi_operand_object* %29 to %struct.acpi_object_mutex*, !dbg !2188
  %thread_id = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex38, i32 0, i32 8, !dbg !2189
  %30 = load i64, i64* %thread_id, align 8, !dbg !2189
  %tobool39 = icmp ne i64 %30, 0, !dbg !2185
  br i1 %tobool39, label %lor.lhs.false40, label %if.then49, !dbg !2190

lor.lhs.false40:                                  ; preds = %lor.lhs.false
  %31 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2191
  %thread41 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %31, i32 0, i32 49, !dbg !2192
  %32 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread41, align 8, !dbg !2192
  %thread_id42 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %32, i32 0, i32 8, !dbg !2193
  %33 = load i64, i64* %thread_id42, align 8, !dbg !2193
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !2194
  %method43 = bitcast %union.acpi_operand_object* %34 to %struct.acpi_object_method*, !dbg !2195
  %mutex44 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method43, i32 0, i32 8, !dbg !2196
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex44, align 8, !dbg !2196
  %mutex45 = bitcast %union.acpi_operand_object* %35 to %struct.acpi_object_mutex*, !dbg !2197
  %thread_id46 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex45, i32 0, i32 8, !dbg !2198
  %36 = load i64, i64* %thread_id46, align 8, !dbg !2198
  %cmp47 = icmp ne i64 %33, %36, !dbg !2199
  br i1 %cmp47, label %if.then49, label %if.end95, !dbg !2200

if.then49:                                        ; preds = %lor.lhs.false40, %lor.lhs.false, %if.end34
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !2201
  %method50 = bitcast %union.acpi_operand_object* %37 to %struct.acpi_object_method*, !dbg !2203
  %mutex51 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method50, i32 0, i32 8, !dbg !2204
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex51, align 8, !dbg !2204
  %mutex52 = bitcast %union.acpi_operand_object* %38 to %struct.acpi_object_mutex*, !dbg !2205
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex52, i32 0, i32 7, !dbg !2206
  %39 = load i8*, i8** %os_mutex, align 8, !dbg !2206
  %call53 = call i32 @acpi_ex_system_wait_mutex(i8* %39, i16 zeroext -1) #8, !dbg !2207
  store i32 %call53, i32* %status, align 4, !dbg !2208
  %40 = load i32, i32* %status, align 4, !dbg !2209
  %tobool54 = icmp ne i32 %40, 0, !dbg !2209
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !2211

if.then55:                                        ; preds = %if.then49
  %41 = load i32, i32* %status, align 4, !dbg !2212
  store i32 %41, i32* %retval, align 4, !dbg !2212
  br label %return, !dbg !2212

if.end56:                                         ; preds = %if.then49
  %42 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2214
  %tobool57 = icmp ne %struct.acpi_walk_state* %42, null, !dbg !2214
  br i1 %tobool57, label %if.then58, label %if.else, !dbg !2216

if.then58:                                        ; preds = %if.end56
  %43 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2217
  %thread59 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %43, i32 0, i32 49, !dbg !2219
  %44 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread59, align 8, !dbg !2219
  %current_sync_level60 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %44, i32 0, i32 5, !dbg !2220
  %45 = load i8, i8* %current_sync_level60, align 2, !dbg !2220
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !2221
  %method61 = bitcast %union.acpi_operand_object* %46 to %struct.acpi_object_method*, !dbg !2222
  %mutex62 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method61, i32 0, i32 8, !dbg !2223
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex62, align 8, !dbg !2223
  %mutex63 = bitcast %union.acpi_operand_object* %47 to %struct.acpi_object_mutex*, !dbg !2224
  %original_sync_level = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex63, i32 0, i32 13, !dbg !2225
  store i8 %45, i8* %original_sync_level, align 8, !dbg !2226
  %48 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2227
  %thread64 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %48, i32 0, i32 49, !dbg !2228
  %49 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread64, align 8, !dbg !2228
  %thread_id65 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %49, i32 0, i32 8, !dbg !2229
  %50 = load i64, i64* %thread_id65, align 8, !dbg !2229
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !2230
  %method66 = bitcast %union.acpi_operand_object* %51 to %struct.acpi_object_method*, !dbg !2231
  %mutex67 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method66, i32 0, i32 8, !dbg !2232
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex67, align 8, !dbg !2232
  %mutex68 = bitcast %union.acpi_operand_object* %52 to %struct.acpi_object_mutex*, !dbg !2233
  %thread_id69 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex68, i32 0, i32 8, !dbg !2234
  store i64 %50, i64* %thread_id69, align 8, !dbg !2235
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !2236
  %method70 = bitcast %union.acpi_operand_object* %53 to %struct.acpi_object_method*, !dbg !2238
  %info_flags71 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method70, i32 0, i32 5, !dbg !2239
  %54 = load i8, i8* %info_flags71, align 1, !dbg !2239
  %conv72 = zext i8 %54 to i32, !dbg !2236
  %and73 = and i32 %conv72, 16, !dbg !2240
  %tobool74 = icmp ne i32 %and73, 0, !dbg !2240
  br i1 %tobool74, label %if.end80, label %if.then75, !dbg !2241

if.then75:                                        ; preds = %if.then58
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !2242
  %method76 = bitcast %union.acpi_operand_object* %55 to %struct.acpi_object_method*, !dbg !2244
  %sync_level77 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method76, i32 0, i32 7, !dbg !2245
  %56 = load i8, i8* %sync_level77, align 1, !dbg !2245
  %57 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2246
  %thread78 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %57, i32 0, i32 49, !dbg !2247
  %58 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread78, align 8, !dbg !2247
  %current_sync_level79 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %58, i32 0, i32 5, !dbg !2248
  store i8 %56, i8* %current_sync_level79, align 2, !dbg !2249
  br label %if.end80, !dbg !2250

if.end80:                                         ; preds = %if.then75, %if.then58
  br label %if.end94, !dbg !2251

if.else:                                          ; preds = %if.end56
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !2252
  %method81 = bitcast %union.acpi_operand_object* %59 to %struct.acpi_object_method*, !dbg !2254
  %mutex82 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method81, i32 0, i32 8, !dbg !2255
  %60 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex82, align 8, !dbg !2255
  %mutex83 = bitcast %union.acpi_operand_object* %60 to %struct.acpi_object_mutex*, !dbg !2256
  %sync_level84 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex83, i32 0, i32 5, !dbg !2257
  %61 = load i8, i8* %sync_level84, align 1, !dbg !2257
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !2258
  %method85 = bitcast %union.acpi_operand_object* %62 to %struct.acpi_object_method*, !dbg !2259
  %mutex86 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method85, i32 0, i32 8, !dbg !2260
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex86, align 8, !dbg !2260
  %mutex87 = bitcast %union.acpi_operand_object* %63 to %struct.acpi_object_mutex*, !dbg !2261
  %original_sync_level88 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex87, i32 0, i32 13, !dbg !2262
  store i8 %61, i8* %original_sync_level88, align 8, !dbg !2263
  %call89 = call i64 @acpi_os_get_thread_id() #8, !dbg !2264
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !2265
  %method90 = bitcast %union.acpi_operand_object* %64 to %struct.acpi_object_method*, !dbg !2266
  %mutex91 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method90, i32 0, i32 8, !dbg !2267
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex91, align 8, !dbg !2267
  %mutex92 = bitcast %union.acpi_operand_object* %65 to %struct.acpi_object_mutex*, !dbg !2268
  %thread_id93 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex92, i32 0, i32 8, !dbg !2269
  store i64 %call89, i64* %thread_id93, align 8, !dbg !2270
  br label %if.end94

if.end94:                                         ; preds = %if.else, %if.end80
  br label %if.end95, !dbg !2271

if.end95:                                         ; preds = %if.end94, %lor.lhs.false40
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !2272
  %method96 = bitcast %union.acpi_operand_object* %66 to %struct.acpi_object_method*, !dbg !2273
  %mutex97 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method96, i32 0, i32 8, !dbg !2274
  %67 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex97, align 8, !dbg !2274
  %mutex98 = bitcast %union.acpi_operand_object* %67 to %struct.acpi_object_mutex*, !dbg !2275
  %acquisition_depth = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex98, i32 0, i32 6, !dbg !2276
  %68 = load i16, i16* %acquisition_depth, align 2, !dbg !2277
  %inc = add i16 %68, 1, !dbg !2277
  store i16 %inc, i16* %acquisition_depth, align 2, !dbg !2277
  br label %if.end99, !dbg !2278

if.end99:                                         ; preds = %if.end95, %if.end3
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !2279
  %method100 = bitcast %union.acpi_operand_object* %69 to %struct.acpi_object_method*, !dbg !2281
  %owner_id = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method100, i32 0, i32 13, !dbg !2282
  %70 = load i16, i16* %owner_id, align 4, !dbg !2282
  %tobool101 = icmp ne i16 %70, 0, !dbg !2279
  br i1 %tobool101, label %if.end109, label %if.then102, !dbg !2283

if.then102:                                       ; preds = %if.end99
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !2284
  %method103 = bitcast %union.acpi_operand_object* %71 to %struct.acpi_object_method*, !dbg !2286
  %owner_id104 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method103, i32 0, i32 13, !dbg !2287
  %call105 = call i32 @acpi_ut_allocate_owner_id(i16* %owner_id104) #8, !dbg !2288
  store i32 %call105, i32* %status, align 4, !dbg !2289
  %72 = load i32, i32* %status, align 4, !dbg !2290
  %tobool106 = icmp ne i32 %72, 0, !dbg !2290
  br i1 %tobool106, label %if.then107, label %if.end108, !dbg !2292

if.then107:                                       ; preds = %if.then102
  br label %cleanup, !dbg !2293

if.end108:                                        ; preds = %if.then102
  br label %if.end109, !dbg !2295

if.end109:                                        ; preds = %if.end108, %if.end99
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !2296
  %method110 = bitcast %union.acpi_operand_object* %73 to %struct.acpi_object_method*, !dbg !2297
  %thread_count111 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method110, i32 0, i32 14, !dbg !2298
  %74 = load i8, i8* %thread_count111, align 2, !dbg !2299
  %inc112 = add i8 %74, 1, !dbg !2299
  store i8 %inc112, i8* %thread_count111, align 2, !dbg !2299
  %75 = load i32, i32* @acpi_method_count, align 4, !dbg !2300
  %inc113 = add i32 %75, 1, !dbg !2300
  store i32 %inc113, i32* @acpi_method_count, align 4, !dbg !2300
  %76 = load i32, i32* %status, align 4, !dbg !2301
  store i32 %76, i32* %retval, align 4, !dbg !2301
  br label %return, !dbg !2301

cleanup:                                          ; preds = %if.then107
  call void @llvm.dbg.label(metadata !2302), !dbg !2303
  %77 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !2304
  %method114 = bitcast %union.acpi_operand_object* %77 to %struct.acpi_object_method*, !dbg !2306
  %mutex115 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method114, i32 0, i32 8, !dbg !2307
  %78 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex115, align 8, !dbg !2307
  %tobool116 = icmp ne %union.acpi_operand_object* %78, null, !dbg !2304
  br i1 %tobool116, label %if.then117, label %if.end123, !dbg !2308

if.then117:                                       ; preds = %cleanup
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !2309
  %method118 = bitcast %union.acpi_operand_object* %79 to %struct.acpi_object_method*, !dbg !2309
  %mutex119 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method118, i32 0, i32 8, !dbg !2309
  %80 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex119, align 8, !dbg !2309
  %mutex120 = bitcast %union.acpi_operand_object* %80 to %struct.acpi_object_mutex*, !dbg !2309
  %os_mutex121 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex120, i32 0, i32 7, !dbg !2309
  %81 = load i8*, i8** %os_mutex121, align 8, !dbg !2309
  %call122 = call i32 @acpi_os_signal_semaphore(i8* %81, i32 1) #8, !dbg !2309
  br label %if.end123, !dbg !2311

if.end123:                                        ; preds = %if.then117, %cleanup
  %82 = load i32, i32* %status, align 4, !dbg !2312
  store i32 %82, i32* %retval, align 4, !dbg !2312
  br label %return, !dbg !2312

return:                                           ; preds = %if.end123, %if.end109, %if.then55, %if.then29, %if.then12, %if.then2, %if.then
  %83 = load i32, i32* %retval, align 4, !dbg !2313
  ret i32 %83, !dbg !2313
}

; Function Attrs: noredzone
declare dso_local void @acpi_ex_start_trace_method(%struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ds_create_method_mutex(%union.acpi_operand_object* %method_desc) #0 !dbg !2314 {
entry:
  %retval = alloca i32, align 4
  %method_desc.addr = alloca %union.acpi_operand_object*, align 8
  %mutex_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object* %method_desc, %union.acpi_operand_object** %method_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %method_desc.addr, metadata !2317, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %mutex_desc, metadata !2319, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2321, metadata !DIExpression()), !dbg !2322
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 256, i32 64, i32 9) #8, !dbg !2323
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %mutex_desc, align 8, !dbg !2324
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex_desc, align 8, !dbg !2325
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !2325
  br i1 %tobool, label %if.end, label %if.then, !dbg !2327

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !2328
  br label %return, !dbg !2328

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex_desc, align 8, !dbg !2330
  %mutex = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_mutex*, !dbg !2330
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex, i32 0, i32 7, !dbg !2330
  %call1 = call i32 @acpi_os_create_semaphore(i32 1, i32 1, i8** %os_mutex) #8, !dbg !2330
  store i32 %call1, i32* %status, align 4, !dbg !2331
  %2 = load i32, i32* %status, align 4, !dbg !2332
  %tobool2 = icmp ne i32 %2, 0, !dbg !2332
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2334

if.then3:                                         ; preds = %if.end
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex_desc, align 8, !dbg !2335
  call void @acpi_ut_delete_object_desc(%union.acpi_operand_object* %3) #8, !dbg !2337
  %4 = load i32, i32* %status, align 4, !dbg !2338
  store i32 %4, i32* %retval, align 4, !dbg !2338
  br label %return, !dbg !2338

if.end4:                                          ; preds = %if.end
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2339
  %method = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_method*, !dbg !2340
  %sync_level = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method, i32 0, i32 7, !dbg !2341
  %6 = load i8, i8* %sync_level, align 1, !dbg !2341
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex_desc, align 8, !dbg !2342
  %mutex5 = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_mutex*, !dbg !2343
  %sync_level6 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex5, i32 0, i32 5, !dbg !2344
  store i8 %6, i8* %sync_level6, align 1, !dbg !2345
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex_desc, align 8, !dbg !2346
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2347
  %method7 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_method*, !dbg !2348
  %mutex8 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method7, i32 0, i32 8, !dbg !2349
  store %union.acpi_operand_object* %8, %union.acpi_operand_object** %mutex8, align 8, !dbg !2350
  store i32 0, i32* %retval, align 4, !dbg !2351
  br label %return, !dbg !2351

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !2352
  ret i32 %10, !dbg !2352
}

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_node_name(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_system_wait_mutex(i8*, i16 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_os_get_thread_id() #0 !dbg !2353 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !2357, metadata !DIExpression()), !dbg !2363
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !2365, metadata !DIExpression()), !dbg !2369
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !2370, metadata !DIExpression()), !dbg !2372
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !2369
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !2369
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #9, !dbg !2372, !srcloc !2373
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !2372
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !2372
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !2372
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !2372
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !2372
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !2363
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !2363
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !2363
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !2363
  %7 = ptrtoint %struct.task_struct* %6 to i64, !dbg !2374
  ret i64 %7, !dbg !2375
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_allocate_owner_id(i16*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_signal_semaphore(i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_call_control_method(%struct.acpi_thread_state* %thread, %struct.acpi_walk_state* %this_walk_state, %union.acpi_parse_object* %op) #0 !dbg !2376 {
entry:
  %retval = alloca i32, align 4
  %thread.addr = alloca %struct.acpi_thread_state*, align 8
  %this_walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %status = alloca i32, align 4
  %method_node = alloca %struct.acpi_namespace_node*, align 8
  %next_walk_state = alloca %struct.acpi_walk_state*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %info = alloca %struct.acpi_evaluate_info*, align 8
  %i = alloca i32, align 4
  store %struct.acpi_thread_state* %thread, %struct.acpi_thread_state** %thread.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_thread_state** %thread.addr, metadata !2379, metadata !DIExpression()), !dbg !2380
  store %struct.acpi_walk_state* %this_walk_state, %struct.acpi_walk_state** %this_walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %this_walk_state.addr, metadata !2381, metadata !DIExpression()), !dbg !2382
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !2383, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2385, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %method_node, metadata !2387, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %next_walk_state, metadata !2389, metadata !DIExpression()), !dbg !2390
  store %struct.acpi_walk_state* null, %struct.acpi_walk_state** %next_walk_state, align 8, !dbg !2390
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !2391, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info, metadata !2393, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2460, metadata !DIExpression()), !dbg !2461
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %this_walk_state.addr, align 8, !dbg !2462
  %method_call_node = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 35, !dbg !2463
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_call_node, align 8, !dbg !2463
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %method_node, align 8, !dbg !2464
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node, align 8, !dbg !2465
  %tobool = icmp ne %struct.acpi_namespace_node* %2, null, !dbg !2465
  br i1 %tobool, label %if.end, label %if.then, !dbg !2467

if.then:                                          ; preds = %entry
  store i32 10, i32* %retval, align 4, !dbg !2468
  br label %return, !dbg !2468

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node, align 8, !dbg !2470
  %call = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %3) #8, !dbg !2471
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2472
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2473
  %tobool1 = icmp ne %union.acpi_operand_object* %4, null, !dbg !2473
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2475

if.then2:                                         ; preds = %if.end
  store i32 9, i32* %retval, align 4, !dbg !2476
  br label %return, !dbg !2476

if.end3:                                          ; preds = %if.end
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node, align 8, !dbg !2478
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2479
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %this_walk_state.addr, align 8, !dbg !2480
  %call4 = call i32 @acpi_ds_begin_method_execution(%struct.acpi_namespace_node* %5, %union.acpi_operand_object* %6, %struct.acpi_walk_state* %7) #8, !dbg !2481
  store i32 %call4, i32* %status, align 4, !dbg !2482
  %8 = load i32, i32* %status, align 4, !dbg !2483
  %tobool5 = icmp ne i32 %8, 0, !dbg !2483
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2485

if.then6:                                         ; preds = %if.end3
  %9 = load i32, i32* %status, align 4, !dbg !2486
  store i32 %9, i32* %retval, align 4, !dbg !2486
  br label %return, !dbg !2486

if.end7:                                          ; preds = %if.end3
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2488
  %method = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_method*, !dbg !2489
  %owner_id = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method, i32 0, i32 13, !dbg !2490
  %11 = load i16, i16* %owner_id, align 4, !dbg !2490
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2491
  %13 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread.addr, align 8, !dbg !2492
  %call8 = call %struct.acpi_walk_state* @acpi_ds_create_walk_state(i16 zeroext %11, %union.acpi_parse_object* null, %union.acpi_operand_object* %12, %struct.acpi_thread_state* %13) #8, !dbg !2493
  store %struct.acpi_walk_state* %call8, %struct.acpi_walk_state** %next_walk_state, align 8, !dbg !2494
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %next_walk_state, align 8, !dbg !2495
  %tobool9 = icmp ne %struct.acpi_walk_state* %14, null, !dbg !2495
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !2497

if.then10:                                        ; preds = %if.end7
  store i32 4, i32* %status, align 4, !dbg !2498
  br label %cleanup, !dbg !2500

if.end11:                                         ; preds = %if.end7
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %this_walk_state.addr, align 8, !dbg !2501
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %15, i32 0, i32 28, !dbg !2502
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %this_walk_state.addr, align 8, !dbg !2503
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 5, !dbg !2504
  %17 = load i8, i8* %num_operands, align 1, !dbg !2504
  %idxprom = zext i8 %17 to i64, !dbg !2501
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 %idxprom, !dbg !2501
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %arrayidx, align 8, !dbg !2505
  %call12 = call i8* @acpi_os_allocate_zeroed(i64 88) #8, !dbg !2506
  %18 = bitcast i8* %call12 to %struct.acpi_evaluate_info*, !dbg !2506
  store %struct.acpi_evaluate_info* %18, %struct.acpi_evaluate_info** %info, align 8, !dbg !2507
  %19 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !2508
  %tobool13 = icmp ne %struct.acpi_evaluate_info* %19, null, !dbg !2508
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !2510

if.then14:                                        ; preds = %if.end11
  store i32 4, i32* %status, align 4, !dbg !2511
  br label %cleanup, !dbg !2513

if.end15:                                         ; preds = %if.end11
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %this_walk_state.addr, align 8, !dbg !2514
  %operands16 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %20, i32 0, i32 28, !dbg !2515
  %arrayidx17 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands16, i64 0, i64 0, !dbg !2514
  %21 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !2516
  %parameters = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %21, i32 0, i32 2, !dbg !2517
  store %union.acpi_operand_object** %arrayidx17, %union.acpi_operand_object*** %parameters, align 8, !dbg !2518
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %next_walk_state, align 8, !dbg !2519
  %23 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node, align 8, !dbg !2520
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2521
  %method18 = bitcast %union.acpi_operand_object* %24 to %struct.acpi_object_method*, !dbg !2522
  %aml_start = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method18, i32 0, i32 10, !dbg !2523
  %25 = load i8*, i8** %aml_start, align 8, !dbg !2523
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2524
  %method19 = bitcast %union.acpi_operand_object* %26 to %struct.acpi_object_method*, !dbg !2525
  %aml_length = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method19, i32 0, i32 12, !dbg !2526
  %27 = load i32, i32* %aml_length, align 8, !dbg !2526
  %28 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !2527
  %call20 = call i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state* %22, %union.acpi_parse_object* null, %struct.acpi_namespace_node* %23, i8* %25, i32 %27, %struct.acpi_evaluate_info* %28, i8 zeroext 3) #8, !dbg !2528
  store i32 %call20, i32* %status, align 4, !dbg !2529
  %29 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !2530
  %30 = bitcast %struct.acpi_evaluate_info* %29 to i8*, !dbg !2530
  call void @acpi_os_free(i8* %30) #8, !dbg !2530
  %31 = load i32, i32* %status, align 4, !dbg !2531
  %tobool21 = icmp ne i32 %31, 0, !dbg !2531
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !2533

if.then22:                                        ; preds = %if.end15
  br label %cleanup, !dbg !2534

if.end23:                                         ; preds = %if.end15
  %32 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %this_walk_state.addr, align 8, !dbg !2536
  %method_nesting_depth = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %32, i32 0, i32 24, !dbg !2537
  %33 = load i16, i16* %method_nesting_depth, align 8, !dbg !2537
  %conv = zext i16 %33 to i32, !dbg !2536
  %add = add i32 %conv, 1, !dbg !2538
  %conv24 = trunc i32 %add to i16, !dbg !2536
  %34 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %next_walk_state, align 8, !dbg !2539
  %method_nesting_depth25 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %34, i32 0, i32 24, !dbg !2540
  store i16 %conv24, i16* %method_nesting_depth25, align 8, !dbg !2541
  store i32 0, i32* %i, align 4, !dbg !2542
  br label %for.cond, !dbg !2544

for.cond:                                         ; preds = %for.inc, %if.end23
  %35 = load i32, i32* %i, align 4, !dbg !2545
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2547
  %method26 = bitcast %union.acpi_operand_object* %36 to %struct.acpi_object_method*, !dbg !2548
  %param_count = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method26, i32 0, i32 6, !dbg !2549
  %37 = load i8, i8* %param_count, align 2, !dbg !2549
  %conv27 = zext i8 %37 to i32, !dbg !2547
  %cmp = icmp ult i32 %35, %conv27, !dbg !2550
  br i1 %cmp, label %for.body, label %for.end, !dbg !2551

for.body:                                         ; preds = %for.cond
  %38 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %this_walk_state.addr, align 8, !dbg !2552
  %operands29 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %38, i32 0, i32 28, !dbg !2554
  %39 = load i32, i32* %i, align 4, !dbg !2555
  %idxprom30 = zext i32 %39 to i64, !dbg !2552
  %arrayidx31 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands29, i64 0, i64 %idxprom30, !dbg !2552
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx31, align 8, !dbg !2552
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %40) #8, !dbg !2556
  %41 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %this_walk_state.addr, align 8, !dbg !2557
  %operands32 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %41, i32 0, i32 28, !dbg !2558
  %42 = load i32, i32* %i, align 4, !dbg !2559
  %idxprom33 = zext i32 %42 to i64, !dbg !2557
  %arrayidx34 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands32, i64 0, i64 %idxprom33, !dbg !2557
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %arrayidx34, align 8, !dbg !2560
  br label %for.inc, !dbg !2561

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %i, align 4, !dbg !2562
  %inc = add i32 %43, 1, !dbg !2562
  store i32 %inc, i32* %i, align 4, !dbg !2562
  br label %for.cond, !dbg !2563, !llvm.loop !2564

for.end:                                          ; preds = %for.cond
  %44 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %this_walk_state.addr, align 8, !dbg !2566
  %num_operands35 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %44, i32 0, i32 5, !dbg !2567
  store i8 0, i8* %num_operands35, align 1, !dbg !2568
  %45 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node, align 8, !dbg !2569
  %call36 = call i8* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node* %45, i8 zeroext 1) #8, !dbg !2570
  %46 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %this_walk_state.addr, align 8, !dbg !2571
  %method_pathname = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %46, i32 0, i32 39, !dbg !2572
  store i8* %call36, i8** %method_pathname, align 8, !dbg !2573
  %47 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %this_walk_state.addr, align 8, !dbg !2574
  %method_is_nested = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %47, i32 0, i32 25, !dbg !2575
  store i8 1, i8* %method_is_nested, align 2, !dbg !2576
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2577
  %method37 = bitcast %union.acpi_operand_object* %48 to %struct.acpi_object_method*, !dbg !2579
  %info_flags = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method37, i32 0, i32 5, !dbg !2580
  %49 = load i8, i8* %info_flags, align 1, !dbg !2580
  %conv38 = zext i8 %49 to i32, !dbg !2577
  %and = and i32 %conv38, 2, !dbg !2581
  %tobool39 = icmp ne i32 %and, 0, !dbg !2581
  br i1 %tobool39, label %if.then40, label %if.end47, !dbg !2582

if.then40:                                        ; preds = %for.end
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2583
  %method41 = bitcast %union.acpi_operand_object* %50 to %struct.acpi_object_method*, !dbg !2585
  %dispatch = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method41, i32 0, i32 11, !dbg !2586
  %implementation = bitcast %union.anon* %dispatch to i32 (%struct.acpi_walk_state*)**, !dbg !2587
  %51 = load i32 (%struct.acpi_walk_state*)*, i32 (%struct.acpi_walk_state*)** %implementation, align 8, !dbg !2587
  %52 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %next_walk_state, align 8, !dbg !2588
  %call42 = call i32 %51(%struct.acpi_walk_state* %52) #8, !dbg !2583
  store i32 %call42, i32* %status, align 4, !dbg !2589
  %53 = load i32, i32* %status, align 4, !dbg !2590
  %cmp43 = icmp eq i32 %53, 0, !dbg !2592
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !2593

if.then45:                                        ; preds = %if.then40
  store i32 16387, i32* %status, align 4, !dbg !2594
  br label %if.end46, !dbg !2596

if.end46:                                         ; preds = %if.then45, %if.then40
  br label %if.end47, !dbg !2597

if.end47:                                         ; preds = %if.end46, %for.end
  %54 = load i32, i32* %status, align 4, !dbg !2598
  store i32 %54, i32* %retval, align 4, !dbg !2598
  br label %return, !dbg !2598

cleanup:                                          ; preds = %if.then22, %if.then14, %if.then10
  call void @llvm.dbg.label(metadata !2599), !dbg !2600
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2601
  %56 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %next_walk_state, align 8, !dbg !2602
  call void @acpi_ds_terminate_control_method(%union.acpi_operand_object* %55, %struct.acpi_walk_state* %56) #8, !dbg !2603
  %57 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %next_walk_state, align 8, !dbg !2604
  call void @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %57) #8, !dbg !2605
  %58 = load i32, i32* %status, align 4, !dbg !2606
  store i32 %58, i32* %retval, align 4, !dbg !2606
  br label %return, !dbg !2606

return:                                           ; preds = %cleanup, %if.end47, %if.then6, %if.then2, %if.then
  %59 = load i32, i32* %retval, align 4, !dbg !2607
  ret i32 %59, !dbg !2607
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !2608 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2611, metadata !DIExpression()), !dbg !2616
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2620, metadata !DIExpression()), !dbg !2621
  %0 = load i64, i64* %size.addr, align 8, !dbg !2622
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !2623, metadata !DIExpression()), !dbg !2624
  br label %do.body, !dbg !2624

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2625, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2629, metadata !DIExpression()), !dbg !2628
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2628
  %conv = zext i1 %cmp to i32, !dbg !2628
  store i32 1, i32* %tmp, align 4, !dbg !2628
  %1 = load i32, i32* %tmp, align 4, !dbg !2628
  %call = call i64 @arch_local_save_flags() #8, !dbg !2630
  store i64 %call, i64* %_flags, align 8, !dbg !2630
  br label %do.end, !dbg !2630

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !2631, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !2634, metadata !DIExpression()), !dbg !2633
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !2633
  %conv6 = zext i1 %cmp5 to i32, !dbg !2633
  store i32 1, i32* %tmp7, align 4, !dbg !2633
  %2 = load i32, i32* %tmp7, align 4, !dbg !2633
  %3 = load i64, i64* %_flags, align 8, !dbg !2635
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !2636
  %and.i = and i64 %4, 512, !dbg !2637
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !2638
  %lnot.i = xor i1 %tobool.i, true, !dbg !2638
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !2638
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !2635
  %5 = load i32, i32* %tmp8, align 4, !dbg !2635
  store i32 %5, i32* %tmp1, align 4, !dbg !2630
  %6 = load i32, i32* %tmp1, align 4, !dbg !2624
  %tobool = icmp ne i32 %6, 0, !dbg !2639
  %7 = zext i1 %tobool to i64, !dbg !2639
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !2639
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #8, !dbg !2640
  ret i8* %call10, !dbg !2641
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !2642 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !2645, metadata !DIExpression()), !dbg !2646
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !2647
  call void @kfree(i8* %0) #8, !dbg !2648
  ret void, !dbg !2649
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node*, i8 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ds_terminate_control_method(%union.acpi_operand_object* %method_desc, %struct.acpi_walk_state* %walk_state) #0 !dbg !2650 {
entry:
  %method_desc.addr = alloca %union.acpi_operand_object*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  store %union.acpi_operand_object* %method_desc, %union.acpi_operand_object** %method_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %method_desc.addr, metadata !2653, metadata !DIExpression()), !dbg !2654
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !2655, metadata !DIExpression()), !dbg !2656
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2657
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !2657
  br i1 %tobool, label %if.end, label %if.then, !dbg !2659

if.then:                                          ; preds = %entry
  br label %return, !dbg !2660

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2662
  %tobool1 = icmp ne %struct.acpi_walk_state* %1, null, !dbg !2662
  br i1 %tobool1, label %if.then2, label %if.end45, !dbg !2664

if.then2:                                         ; preds = %if.end
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2665
  call void @acpi_ds_method_data_delete_all(%struct.acpi_walk_state* %2) #8, !dbg !2667
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2668
  %method = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_method*, !dbg !2670
  %info_flags = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method, i32 0, i32 5, !dbg !2671
  %4 = load i8, i8* %info_flags, align 1, !dbg !2671
  %conv = zext i8 %4 to i32, !dbg !2668
  %and = and i32 %conv, 1, !dbg !2672
  %tobool3 = icmp ne i32 %and, 0, !dbg !2672
  br i1 %tobool3, label %if.end21, label %land.lhs.true, !dbg !2673

land.lhs.true:                                    ; preds = %if.then2
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2674
  %method4 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_method*, !dbg !2675
  %thread_count = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method4, i32 0, i32 14, !dbg !2676
  %6 = load i8, i8* %thread_count, align 2, !dbg !2676
  %conv5 = zext i8 %6 to i32, !dbg !2674
  %cmp = icmp eq i32 %conv5, 1, !dbg !2677
  br i1 %cmp, label %if.then7, label %if.end21, !dbg !2678

if.then7:                                         ; preds = %land.lhs.true
  call void @acpi_ex_exit_interpreter() #8, !dbg !2679
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2681
  %method_node = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 38, !dbg !2682
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node, align 8, !dbg !2682
  call void @acpi_ns_delete_namespace_subtree(%struct.acpi_namespace_node* %8) #8, !dbg !2683
  call void @acpi_ex_enter_interpreter() #8, !dbg !2684
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2685
  %method8 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_method*, !dbg !2687
  %info_flags9 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method8, i32 0, i32 5, !dbg !2688
  %10 = load i8, i8* %info_flags9, align 1, !dbg !2688
  %conv10 = zext i8 %10 to i32, !dbg !2685
  %and11 = and i32 %conv10, 32, !dbg !2689
  %tobool12 = icmp ne i32 %and11, 0, !dbg !2689
  br i1 %tobool12, label %if.then13, label %if.end20, !dbg !2690

if.then13:                                        ; preds = %if.then7
  call void @acpi_ex_exit_interpreter() #8, !dbg !2691
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2693
  %method14 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_method*, !dbg !2694
  %owner_id = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method14, i32 0, i32 13, !dbg !2695
  %12 = load i16, i16* %owner_id, align 4, !dbg !2695
  call void @acpi_ns_delete_namespace_by_owner(i16 zeroext %12) #8, !dbg !2696
  call void @acpi_ex_enter_interpreter() #8, !dbg !2697
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2698
  %method15 = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_method*, !dbg !2699
  %info_flags16 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method15, i32 0, i32 5, !dbg !2700
  %14 = load i8, i8* %info_flags16, align 1, !dbg !2701
  %conv17 = zext i8 %14 to i32, !dbg !2701
  %and18 = and i32 %conv17, -33, !dbg !2701
  %conv19 = trunc i32 %and18 to i8, !dbg !2701
  store i8 %conv19, i8* %info_flags16, align 1, !dbg !2701
  br label %if.end20, !dbg !2702

if.end20:                                         ; preds = %if.then13, %if.then7
  br label %if.end21, !dbg !2703

if.end21:                                         ; preds = %if.end20, %land.lhs.true, %if.then2
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2704
  %method22 = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_method*, !dbg !2706
  %mutex = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method22, i32 0, i32 8, !dbg !2707
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex, align 8, !dbg !2707
  %tobool23 = icmp ne %union.acpi_operand_object* %16, null, !dbg !2704
  br i1 %tobool23, label %if.then24, label %if.end44, !dbg !2708

if.then24:                                        ; preds = %if.end21
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2709
  %method25 = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_method*, !dbg !2711
  %mutex26 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method25, i32 0, i32 8, !dbg !2712
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex26, align 8, !dbg !2712
  %mutex27 = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_mutex*, !dbg !2713
  %acquisition_depth = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex27, i32 0, i32 6, !dbg !2714
  %19 = load i16, i16* %acquisition_depth, align 2, !dbg !2715
  %dec = add i16 %19, -1, !dbg !2715
  store i16 %dec, i16* %acquisition_depth, align 2, !dbg !2715
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2716
  %method28 = bitcast %union.acpi_operand_object* %20 to %struct.acpi_object_method*, !dbg !2718
  %mutex29 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method28, i32 0, i32 8, !dbg !2719
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex29, align 8, !dbg !2719
  %mutex30 = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_mutex*, !dbg !2720
  %acquisition_depth31 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex30, i32 0, i32 6, !dbg !2721
  %22 = load i16, i16* %acquisition_depth31, align 2, !dbg !2721
  %tobool32 = icmp ne i16 %22, 0, !dbg !2716
  br i1 %tobool32, label %if.end43, label %if.then33, !dbg !2722

if.then33:                                        ; preds = %if.then24
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2723
  %method34 = bitcast %union.acpi_operand_object* %23 to %struct.acpi_object_method*, !dbg !2725
  %mutex35 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method34, i32 0, i32 8, !dbg !2726
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex35, align 8, !dbg !2726
  %mutex36 = bitcast %union.acpi_operand_object* %24 to %struct.acpi_object_mutex*, !dbg !2727
  %original_sync_level = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex36, i32 0, i32 13, !dbg !2728
  %25 = load i8, i8* %original_sync_level, align 8, !dbg !2728
  %26 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2729
  %thread = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %26, i32 0, i32 49, !dbg !2730
  %27 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread, align 8, !dbg !2730
  %current_sync_level = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %27, i32 0, i32 5, !dbg !2731
  store i8 %25, i8* %current_sync_level, align 2, !dbg !2732
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2733
  %method37 = bitcast %union.acpi_operand_object* %28 to %struct.acpi_object_method*, !dbg !2733
  %mutex38 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method37, i32 0, i32 8, !dbg !2733
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex38, align 8, !dbg !2733
  %mutex39 = bitcast %union.acpi_operand_object* %29 to %struct.acpi_object_mutex*, !dbg !2733
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex39, i32 0, i32 7, !dbg !2733
  %30 = load i8*, i8** %os_mutex, align 8, !dbg !2733
  %call = call i32 @acpi_os_signal_semaphore(i8* %30, i32 1) #8, !dbg !2733
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2734
  %method40 = bitcast %union.acpi_operand_object* %31 to %struct.acpi_object_method*, !dbg !2735
  %mutex41 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method40, i32 0, i32 8, !dbg !2736
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %mutex41, align 8, !dbg !2736
  %mutex42 = bitcast %union.acpi_operand_object* %32 to %struct.acpi_object_mutex*, !dbg !2737
  %thread_id = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex42, i32 0, i32 8, !dbg !2738
  store i64 0, i64* %thread_id, align 8, !dbg !2739
  br label %if.end43, !dbg !2740

if.end43:                                         ; preds = %if.then33, %if.then24
  br label %if.end44, !dbg !2741

if.end44:                                         ; preds = %if.end43, %if.end21
  br label %if.end45, !dbg !2742

if.end45:                                         ; preds = %if.end44, %if.end
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2743
  %method46 = bitcast %union.acpi_operand_object* %33 to %struct.acpi_object_method*, !dbg !2745
  %thread_count47 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method46, i32 0, i32 14, !dbg !2746
  %34 = load i8, i8* %thread_count47, align 2, !dbg !2746
  %tobool48 = icmp ne i8 %34, 0, !dbg !2743
  br i1 %tobool48, label %if.then49, label %if.else, !dbg !2747

if.then49:                                        ; preds = %if.end45
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2748
  %method50 = bitcast %union.acpi_operand_object* %35 to %struct.acpi_object_method*, !dbg !2750
  %thread_count51 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method50, i32 0, i32 14, !dbg !2751
  %36 = load i8, i8* %thread_count51, align 2, !dbg !2752
  %dec52 = add i8 %36, -1, !dbg !2752
  store i8 %dec52, i8* %thread_count51, align 2, !dbg !2752
  br label %if.end53, !dbg !2753

if.else:                                          ; preds = %if.end45
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 774, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2754
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then49
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2756
  %method54 = bitcast %union.acpi_operand_object* %37 to %struct.acpi_object_method*, !dbg !2758
  %thread_count55 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method54, i32 0, i32 14, !dbg !2759
  %38 = load i8, i8* %thread_count55, align 2, !dbg !2759
  %tobool56 = icmp ne i8 %38, 0, !dbg !2756
  br i1 %tobool56, label %if.then57, label %if.else58, !dbg !2760

if.then57:                                        ; preds = %if.end53
  br label %if.end89, !dbg !2761

if.else58:                                        ; preds = %if.end53
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2763
  %method59 = bitcast %union.acpi_operand_object* %39 to %struct.acpi_object_method*, !dbg !2766
  %info_flags60 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method59, i32 0, i32 5, !dbg !2767
  %40 = load i8, i8* %info_flags60, align 1, !dbg !2767
  %conv61 = zext i8 %40 to i32, !dbg !2763
  %and62 = and i32 %conv61, 8, !dbg !2768
  %tobool63 = icmp ne i32 %and62, 0, !dbg !2768
  br i1 %tobool63, label %if.then64, label %if.end79, !dbg !2769

if.then64:                                        ; preds = %if.else58
  %41 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2770
  %tobool65 = icmp ne %struct.acpi_walk_state* %41, null, !dbg !2770
  br i1 %tobool65, label %if.then66, label %if.end68, !dbg !2773

if.then66:                                        ; preds = %if.then64
  %42 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2774
  %method_node67 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %42, i32 0, i32 38, !dbg !2774
  %43 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node67, align 8, !dbg !2774
  %name = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %43, i32 0, i32 4, !dbg !2774
  %ascii = bitcast %union.acpi_name_union* %name to [4 x i8]*, !dbg !2774
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ascii, i64 0, i64 0, !dbg !2774
  call void (i8*, ...) @acpi_info(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i8* %arraydecay) #8, !dbg !2774
  br label %if.end68, !dbg !2776

if.end68:                                         ; preds = %if.then66, %if.then64
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2777
  %method69 = bitcast %union.acpi_operand_object* %44 to %struct.acpi_object_method*, !dbg !2778
  %info_flags70 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method69, i32 0, i32 5, !dbg !2779
  %45 = load i8, i8* %info_flags70, align 1, !dbg !2780
  %conv71 = zext i8 %45 to i32, !dbg !2780
  %and72 = and i32 %conv71, -9, !dbg !2780
  %conv73 = trunc i32 %and72 to i8, !dbg !2780
  store i8 %conv73, i8* %info_flags70, align 1, !dbg !2780
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2781
  %method74 = bitcast %union.acpi_operand_object* %46 to %struct.acpi_object_method*, !dbg !2782
  %info_flags75 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method74, i32 0, i32 5, !dbg !2783
  %47 = load i8, i8* %info_flags75, align 1, !dbg !2784
  %conv76 = zext i8 %47 to i32, !dbg !2784
  %or = or i32 %conv76, 20, !dbg !2784
  %conv77 = trunc i32 %or to i8, !dbg !2784
  store i8 %conv77, i8* %info_flags75, align 1, !dbg !2784
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2785
  %method78 = bitcast %union.acpi_operand_object* %48 to %struct.acpi_object_method*, !dbg !2786
  %sync_level = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method78, i32 0, i32 7, !dbg !2787
  store i8 0, i8* %sync_level, align 1, !dbg !2788
  br label %if.end79, !dbg !2789

if.end79:                                         ; preds = %if.end68, %if.else58
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2790
  %method80 = bitcast %union.acpi_operand_object* %49 to %struct.acpi_object_method*, !dbg !2792
  %info_flags81 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method80, i32 0, i32 5, !dbg !2793
  %50 = load i8, i8* %info_flags81, align 1, !dbg !2793
  %conv82 = zext i8 %50 to i32, !dbg !2790
  %and83 = and i32 %conv82, 1, !dbg !2794
  %tobool84 = icmp ne i32 %and83, 0, !dbg !2794
  br i1 %tobool84, label %if.end88, label %if.then85, !dbg !2795

if.then85:                                        ; preds = %if.end79
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2796
  %method86 = bitcast %union.acpi_operand_object* %51 to %struct.acpi_object_method*, !dbg !2798
  %owner_id87 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method86, i32 0, i32 13, !dbg !2799
  call void @acpi_ut_release_owner_id(i16* %owner_id87) #8, !dbg !2800
  br label %if.end88, !dbg !2801

if.end88:                                         ; preds = %if.then85, %if.end79
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.then57
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2802
  %method90 = bitcast %union.acpi_operand_object* %52 to %struct.acpi_object_method*, !dbg !2803
  %node = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method90, i32 0, i32 9, !dbg !2804
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %node, align 8, !dbg !2804
  %54 = bitcast %union.acpi_operand_object* %53 to %struct.acpi_namespace_node*, !dbg !2805
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc.addr, align 8, !dbg !2806
  %56 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2807
  call void @acpi_ex_stop_trace_method(%struct.acpi_namespace_node* %54, %union.acpi_operand_object* %55, %struct.acpi_walk_state* %56) #8, !dbg !2808
  br label %return, !dbg !2809

return:                                           ; preds = %if.end89, %if.then
  ret void, !dbg !2810
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_restart_control_method(%struct.acpi_walk_state* %walk_state, %union.acpi_operand_object* %return_desc) #0 !dbg !2811 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %return_desc.addr = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %same_as_implicit_return = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !2814, metadata !DIExpression()), !dbg !2815
  store %union.acpi_operand_object* %return_desc, %union.acpi_operand_object** %return_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_desc.addr, metadata !2816, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2818, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.declare(metadata i32* %same_as_implicit_return, metadata !2820, metadata !DIExpression()), !dbg !2821
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc.addr, align 8, !dbg !2822
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !2822
  br i1 %tobool, label %if.then, label %if.end12, !dbg !2824

if.then:                                          ; preds = %entry
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2825
  %implicit_return_obj = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %1, i32 0, i32 34, !dbg !2827
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %implicit_return_obj, align 8, !dbg !2827
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc.addr, align 8, !dbg !2828
  %cmp = icmp eq %union.acpi_operand_object* %2, %3, !dbg !2829
  %conv = zext i1 %cmp to i32, !dbg !2829
  store i32 %conv, i32* %same_as_implicit_return, align 4, !dbg !2830
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2831
  %return_used = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %4, i32 0, i32 10, !dbg !2833
  %5 = load i8, i8* %return_used, align 4, !dbg !2833
  %tobool1 = icmp ne i8 %5, 0, !dbg !2831
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !2834

if.then2:                                         ; preds = %if.then
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc.addr, align 8, !dbg !2835
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2837
  %call = call i32 @acpi_ds_result_push(%union.acpi_operand_object* %6, %struct.acpi_walk_state* %7) #8, !dbg !2838
  store i32 %call, i32* %status, align 4, !dbg !2839
  %8 = load i32, i32* %status, align 4, !dbg !2840
  %tobool3 = icmp ne i32 %8, 0, !dbg !2840
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !2842

if.then4:                                         ; preds = %if.then2
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc.addr, align 8, !dbg !2843
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %9) #8, !dbg !2845
  %10 = load i32, i32* %status, align 4, !dbg !2846
  store i32 %10, i32* %retval, align 4, !dbg !2846
  br label %return, !dbg !2846

if.end:                                           ; preds = %if.then2
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc.addr, align 8, !dbg !2847
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2848
  %return_desc5 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 45, !dbg !2849
  store %union.acpi_operand_object* %11, %union.acpi_operand_object** %return_desc5, align 8, !dbg !2850
  br label %if.end11, !dbg !2851

if.else:                                          ; preds = %if.then
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc.addr, align 8, !dbg !2852
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !2854
  %call6 = call zeroext i8 @acpi_ds_do_implicit_return(%union.acpi_operand_object* %13, %struct.acpi_walk_state* %14, i8 zeroext 0) #8, !dbg !2855
  %tobool7 = icmp ne i8 %call6, 0, !dbg !2855
  br i1 %tobool7, label %lor.lhs.false, label %if.then9, !dbg !2856

lor.lhs.false:                                    ; preds = %if.else
  %15 = load i32, i32* %same_as_implicit_return, align 4, !dbg !2857
  %tobool8 = icmp ne i32 %15, 0, !dbg !2857
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !2858

if.then9:                                         ; preds = %lor.lhs.false, %if.else
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc.addr, align 8, !dbg !2859
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %16) #8, !dbg !2861
  br label %if.end10, !dbg !2862

if.end10:                                         ; preds = %if.then9, %lor.lhs.false
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  br label %if.end12, !dbg !2863

if.end12:                                         ; preds = %if.end11, %entry
  store i32 0, i32* %retval, align 4, !dbg !2864
  br label %return, !dbg !2864

return:                                           ; preds = %if.end12, %if.then4
  %17 = load i32, i32* %retval, align 4, !dbg !2865
  ret i32 %17, !dbg !2865
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_result_push(%union.acpi_operand_object*, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ds_do_implicit_return(%union.acpi_operand_object*, %struct.acpi_walk_state*, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ds_method_data_delete_all(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ns_delete_namespace_subtree(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ns_delete_namespace_by_owner(i16 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @acpi_info(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_release_owner_id(i16*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_stop_trace_method(%struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_create_semaphore(i32, i32, i8**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_delete_object_desc(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2866 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2869, metadata !DIExpression()), !dbg !2873
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2879, metadata !DIExpression()), !dbg !2880
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2881, metadata !DIExpression()), !dbg !2882
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2883, metadata !DIExpression()), !dbg !2884
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2885, metadata !DIExpression()), !dbg !2889
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2891, metadata !DIExpression()), !dbg !2895
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2897, metadata !DIExpression()), !dbg !2901
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2906, metadata !DIExpression()), !dbg !2907
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2908, metadata !DIExpression()), !dbg !2909
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2910, metadata !DIExpression()), !dbg !2911
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2912, metadata !DIExpression()), !dbg !2913
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2914, metadata !DIExpression()), !dbg !2915
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2916, metadata !DIExpression()), !dbg !2917
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2918, metadata !DIExpression()), !dbg !2919
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2920, metadata !DIExpression()), !dbg !2921
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2922, metadata !DIExpression()), !dbg !2923
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2924, metadata !DIExpression()), !dbg !2925
  %0 = load i64, i64* %size.addr, align 8, !dbg !2926
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2927
  %or = or i32 %1, 256, !dbg !2928
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2929
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !2930
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2931

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2932
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2933
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2934

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2935
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2936
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2937
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !2938
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2915
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2939
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2940
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2941
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2942
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2943
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2944
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !2945
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2945
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2945
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2945
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !2945
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2946
  br label %kmalloc.exit, !dbg !2946

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2947
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2948
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2948
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2950

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2951
  br label %kmalloc_index.exit.i, !dbg !2951

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2952
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2954
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2955

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2956
  br label %kmalloc_index.exit.i, !dbg !2956

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2957
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2959
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2960

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2961
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2962
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2963

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2964
  br label %kmalloc_index.exit.i, !dbg !2964

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2965
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2967
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2968

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2969
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2970
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2971

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2972
  br label %kmalloc_index.exit.i, !dbg !2972

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2973
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2975
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2976

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2977
  br label %kmalloc_index.exit.i, !dbg !2977

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2978
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2980
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2981

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2982
  br label %kmalloc_index.exit.i, !dbg !2982

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2983
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2985
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2986

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2987
  br label %kmalloc_index.exit.i, !dbg !2987

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2988
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2990
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2991

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2992
  br label %kmalloc_index.exit.i, !dbg !2992

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2993
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2995
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2996

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2997
  br label %kmalloc_index.exit.i, !dbg !2997

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2998
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3000
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3001

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3002
  br label %kmalloc_index.exit.i, !dbg !3002

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3003
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3005
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3006

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3007
  br label %kmalloc_index.exit.i, !dbg !3007

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3008
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3010
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3011

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3012
  br label %kmalloc_index.exit.i, !dbg !3012

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3013
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3015
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3016

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3017
  br label %kmalloc_index.exit.i, !dbg !3017

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3018
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3020
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3021

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3022
  br label %kmalloc_index.exit.i, !dbg !3022

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3023
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3025
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3026

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3027
  br label %kmalloc_index.exit.i, !dbg !3027

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3028
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3030
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3031

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3032
  br label %kmalloc_index.exit.i, !dbg !3032

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3033
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3035
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3036

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3037
  br label %kmalloc_index.exit.i, !dbg !3037

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3038
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3040
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3041

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3042
  br label %kmalloc_index.exit.i, !dbg !3042

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3043
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3045
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3046

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3047
  br label %kmalloc_index.exit.i, !dbg !3047

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3048
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3050
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3051

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3052
  br label %kmalloc_index.exit.i, !dbg !3052

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3053
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3055
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3056

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3057
  br label %kmalloc_index.exit.i, !dbg !3057

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3058
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3060
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3061

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3062
  br label %kmalloc_index.exit.i, !dbg !3062

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3063
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3065
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3066

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3067
  br label %kmalloc_index.exit.i, !dbg !3067

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3068
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3070
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3071

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3072
  br label %kmalloc_index.exit.i, !dbg !3072

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3073
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3075
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3076

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3077
  br label %kmalloc_index.exit.i, !dbg !3077

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3078
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3080
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3081

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3082
  br label %kmalloc_index.exit.i, !dbg !3082

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3083
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3085
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3086

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3087
  br label %kmalloc_index.exit.i, !dbg !3087

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3088
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3090
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3091

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3092
  br label %kmalloc_index.exit.i, !dbg !3092

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !3093, !srcloc !3096
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #7, !dbg !3097, !srcloc !3100
  unreachable, !dbg !3101

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3102
  store i32 %45, i32* %index.i, align 4, !dbg !3103
  %46 = load i32, i32* %index.i, align 4, !dbg !3104
  %tobool.i = icmp ne i32 %46, 0, !dbg !3104
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3106

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3107
  br label %kmalloc.exit, !dbg !3107

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3108
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3109
  %and.i.i = and i32 %48, 17, !dbg !3109
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3109
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3109
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3109
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3109
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3111

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3112
  br label %kmalloc_type.exit.i, !dbg !3112

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3113
  %and2.i.i = and i32 %49, 1, !dbg !3114
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3113
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3113
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3113
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3115
  br label %kmalloc_type.exit.i, !dbg !3115

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3116
  %idxprom.i = zext i32 %51 to i64, !dbg !3117
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3117
  %52 = load i32, i32* %index.i, align 4, !dbg !3118
  %idxprom6.i = zext i32 %52 to i64, !dbg !3117
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3117
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3117
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3119
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3120
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3121
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3122
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !3123
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3123
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3123
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3123
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !3123
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2884
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3124
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3125
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3126
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3127
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !3128
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3129
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3130
  store i8* %62, i8** %retval.i, align 8, !dbg !3131
  br label %kmalloc.exit, !dbg !3131

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3132
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3133
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !3134
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3134
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3134
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3134
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !3134
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3135
  br label %kmalloc.exit, !dbg !3135

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3136
  ret i8* %65, !dbg !3137
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !3138 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !3142, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3145, metadata !DIExpression()), !dbg !3144
  %0 = load i64, i64* %__edi, align 8, !dbg !3144
  store i64 %0, i64* %__edi, align 8, !dbg !3144
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3146, metadata !DIExpression()), !dbg !3144
  %1 = load i64, i64* %__esi, align 8, !dbg !3144
  store i64 %1, i64* %__esi, align 8, !dbg !3144
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3147, metadata !DIExpression()), !dbg !3144
  %2 = load i64, i64* %__edx, align 8, !dbg !3144
  store i64 %2, i64* %__edx, align 8, !dbg !3144
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3148, metadata !DIExpression()), !dbg !3144
  %3 = load i64, i64* %__ecx, align 8, !dbg !3144
  store i64 %3, i64* %__ecx, align 8, !dbg !3144
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3149, metadata !DIExpression()), !dbg !3144
  %4 = load i64, i64* %__eax, align 8, !dbg !3144
  store i64 %4, i64* %__eax, align 8, !dbg !3144
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !3144
  %6 = call i64 @llvm.read_register.i64(metadata !1930), !dbg !3150
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !3150, !srcloc !3153
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3150
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3150
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3150
  call void @llvm.write_register.i64(metadata !1930, i64 %asmresult1), !dbg !3150
  %8 = load i64, i64* %__eax, align 8, !dbg !3150
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !3154, metadata !DIExpression()), !dbg !3156
  store i64 -1, i64* %__mask, align 8, !dbg !3156
  %9 = load i64, i64* %__mask, align 8, !dbg !3156
  store i64 %9, i64* %tmp, align 8, !dbg !3156
  %10 = load i64, i64* %tmp, align 8, !dbg !3156
  %and = and i64 %8, %10, !dbg !3150
  store i64 %and, i64* %__ret, align 8, !dbg !3150
  %11 = load i64, i64* %__ret, align 8, !dbg !3144
  store i64 %11, i64* %tmp2, align 8, !dbg !3157
  %12 = load i64, i64* %tmp2, align 8, !dbg !3144
  ret i64 %12, !dbg !3158
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !3159 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3161, metadata !DIExpression()), !dbg !3166
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3168, metadata !DIExpression()), !dbg !3169
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3170, metadata !DIExpression()), !dbg !3171
  %0 = load i64, i64* %size.addr, align 8, !dbg !3172
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3174
  br i1 %1, label %if.then, label %if.end447, !dbg !3175

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3176
  %tobool = icmp ne i64 %2, 0, !dbg !3176
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3179

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3180
  br label %return, !dbg !3180

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3181
  %cmp = icmp ult i64 %3, 4096, !dbg !3183
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3184

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3185
  br label %return, !dbg !3185

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub = sub i64 %4, 1, !dbg !3186
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3186
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3186

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub4 = sub i64 %6, 1, !dbg !3186
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3186
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3186

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub6 = sub i64 %8, 1, !dbg !3186
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3186
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3186

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3186

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub9 = sub i64 %9, 1, !dbg !3186
  %and = and i64 %sub9, -9223372036854775808, !dbg !3186
  %tobool10 = icmp ne i64 %and, 0, !dbg !3186
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3186

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3186

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub13 = sub i64 %10, 1, !dbg !3186
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3186
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3186
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3186

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3186

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub18 = sub i64 %11, 1, !dbg !3186
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3186
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3186
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3186

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3186

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub23 = sub i64 %12, 1, !dbg !3186
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3186
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3186
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3186

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3186

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub28 = sub i64 %13, 1, !dbg !3186
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3186
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3186
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3186

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3186

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub33 = sub i64 %14, 1, !dbg !3186
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3186
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3186
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3186

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3186

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub38 = sub i64 %15, 1, !dbg !3186
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3186
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3186
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3186

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3186

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub43 = sub i64 %16, 1, !dbg !3186
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3186
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3186
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3186

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3186

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub48 = sub i64 %17, 1, !dbg !3186
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3186
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3186
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3186

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3186

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub53 = sub i64 %18, 1, !dbg !3186
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3186
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3186
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3186

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3186

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub58 = sub i64 %19, 1, !dbg !3186
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3186
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3186
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3186

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3186

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub63 = sub i64 %20, 1, !dbg !3186
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3186
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3186
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3186

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3186

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub68 = sub i64 %21, 1, !dbg !3186
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3186
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3186
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3186

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3186

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub73 = sub i64 %22, 1, !dbg !3186
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3186
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3186
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3186

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3186

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub78 = sub i64 %23, 1, !dbg !3186
  %and79 = and i64 %sub78, 562949953421312, !dbg !3186
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3186
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3186

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3186

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub83 = sub i64 %24, 1, !dbg !3186
  %and84 = and i64 %sub83, 281474976710656, !dbg !3186
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3186
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3186

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3186

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub88 = sub i64 %25, 1, !dbg !3186
  %and89 = and i64 %sub88, 140737488355328, !dbg !3186
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3186
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3186

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3186

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub93 = sub i64 %26, 1, !dbg !3186
  %and94 = and i64 %sub93, 70368744177664, !dbg !3186
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3186
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3186

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3186

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub98 = sub i64 %27, 1, !dbg !3186
  %and99 = and i64 %sub98, 35184372088832, !dbg !3186
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3186
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3186

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3186

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub103 = sub i64 %28, 1, !dbg !3186
  %and104 = and i64 %sub103, 17592186044416, !dbg !3186
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3186
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3186

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3186

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub108 = sub i64 %29, 1, !dbg !3186
  %and109 = and i64 %sub108, 8796093022208, !dbg !3186
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3186
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3186

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3186

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub113 = sub i64 %30, 1, !dbg !3186
  %and114 = and i64 %sub113, 4398046511104, !dbg !3186
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3186
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3186

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3186

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub118 = sub i64 %31, 1, !dbg !3186
  %and119 = and i64 %sub118, 2199023255552, !dbg !3186
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3186
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3186

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3186

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub123 = sub i64 %32, 1, !dbg !3186
  %and124 = and i64 %sub123, 1099511627776, !dbg !3186
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3186
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3186

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3186

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub128 = sub i64 %33, 1, !dbg !3186
  %and129 = and i64 %sub128, 549755813888, !dbg !3186
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3186
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3186

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3186

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub133 = sub i64 %34, 1, !dbg !3186
  %and134 = and i64 %sub133, 274877906944, !dbg !3186
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3186
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3186

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3186

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub138 = sub i64 %35, 1, !dbg !3186
  %and139 = and i64 %sub138, 137438953472, !dbg !3186
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3186
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3186

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3186

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub143 = sub i64 %36, 1, !dbg !3186
  %and144 = and i64 %sub143, 68719476736, !dbg !3186
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3186
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3186

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3186

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub148 = sub i64 %37, 1, !dbg !3186
  %and149 = and i64 %sub148, 34359738368, !dbg !3186
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3186
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3186

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3186

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub153 = sub i64 %38, 1, !dbg !3186
  %and154 = and i64 %sub153, 17179869184, !dbg !3186
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3186
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3186

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3186

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub158 = sub i64 %39, 1, !dbg !3186
  %and159 = and i64 %sub158, 8589934592, !dbg !3186
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3186
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3186

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3186

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub163 = sub i64 %40, 1, !dbg !3186
  %and164 = and i64 %sub163, 4294967296, !dbg !3186
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3186
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3186

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3186

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub168 = sub i64 %41, 1, !dbg !3186
  %and169 = and i64 %sub168, 2147483648, !dbg !3186
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3186
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3186

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3186

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub173 = sub i64 %42, 1, !dbg !3186
  %and174 = and i64 %sub173, 1073741824, !dbg !3186
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3186
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3186

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3186

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub178 = sub i64 %43, 1, !dbg !3186
  %and179 = and i64 %sub178, 536870912, !dbg !3186
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3186
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3186

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3186

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub183 = sub i64 %44, 1, !dbg !3186
  %and184 = and i64 %sub183, 268435456, !dbg !3186
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3186
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3186

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3186

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub188 = sub i64 %45, 1, !dbg !3186
  %and189 = and i64 %sub188, 134217728, !dbg !3186
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3186
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3186

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3186

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub193 = sub i64 %46, 1, !dbg !3186
  %and194 = and i64 %sub193, 67108864, !dbg !3186
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3186
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3186

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3186

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub198 = sub i64 %47, 1, !dbg !3186
  %and199 = and i64 %sub198, 33554432, !dbg !3186
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3186
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3186

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3186

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub203 = sub i64 %48, 1, !dbg !3186
  %and204 = and i64 %sub203, 16777216, !dbg !3186
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3186
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3186

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3186

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub208 = sub i64 %49, 1, !dbg !3186
  %and209 = and i64 %sub208, 8388608, !dbg !3186
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3186
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3186

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3186

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub213 = sub i64 %50, 1, !dbg !3186
  %and214 = and i64 %sub213, 4194304, !dbg !3186
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3186
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3186

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3186

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub218 = sub i64 %51, 1, !dbg !3186
  %and219 = and i64 %sub218, 2097152, !dbg !3186
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3186
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3186

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3186

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub223 = sub i64 %52, 1, !dbg !3186
  %and224 = and i64 %sub223, 1048576, !dbg !3186
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3186
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3186

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3186

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub228 = sub i64 %53, 1, !dbg !3186
  %and229 = and i64 %sub228, 524288, !dbg !3186
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3186
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3186

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3186

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub233 = sub i64 %54, 1, !dbg !3186
  %and234 = and i64 %sub233, 262144, !dbg !3186
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3186
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3186

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3186

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub238 = sub i64 %55, 1, !dbg !3186
  %and239 = and i64 %sub238, 131072, !dbg !3186
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3186
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3186

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3186

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub243 = sub i64 %56, 1, !dbg !3186
  %and244 = and i64 %sub243, 65536, !dbg !3186
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3186
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3186

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3186

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub248 = sub i64 %57, 1, !dbg !3186
  %and249 = and i64 %sub248, 32768, !dbg !3186
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3186
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3186

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3186

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub253 = sub i64 %58, 1, !dbg !3186
  %and254 = and i64 %sub253, 16384, !dbg !3186
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3186
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3186

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3186

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub258 = sub i64 %59, 1, !dbg !3186
  %and259 = and i64 %sub258, 8192, !dbg !3186
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3186
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3186

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3186

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub263 = sub i64 %60, 1, !dbg !3186
  %and264 = and i64 %sub263, 4096, !dbg !3186
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3186
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3186

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3186

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub268 = sub i64 %61, 1, !dbg !3186
  %and269 = and i64 %sub268, 2048, !dbg !3186
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3186
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3186

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3186

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub273 = sub i64 %62, 1, !dbg !3186
  %and274 = and i64 %sub273, 1024, !dbg !3186
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3186
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3186

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3186

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub278 = sub i64 %63, 1, !dbg !3186
  %and279 = and i64 %sub278, 512, !dbg !3186
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3186
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3186

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3186

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub283 = sub i64 %64, 1, !dbg !3186
  %and284 = and i64 %sub283, 256, !dbg !3186
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3186
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3186

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3186

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub288 = sub i64 %65, 1, !dbg !3186
  %and289 = and i64 %sub288, 128, !dbg !3186
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3186
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3186

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3186

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub293 = sub i64 %66, 1, !dbg !3186
  %and294 = and i64 %sub293, 64, !dbg !3186
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3186
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3186

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3186

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub298 = sub i64 %67, 1, !dbg !3186
  %and299 = and i64 %sub298, 32, !dbg !3186
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3186
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3186

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3186

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub303 = sub i64 %68, 1, !dbg !3186
  %and304 = and i64 %sub303, 16, !dbg !3186
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3186
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3186

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3186

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub308 = sub i64 %69, 1, !dbg !3186
  %and309 = and i64 %sub308, 8, !dbg !3186
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3186
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3186

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3186

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub313 = sub i64 %70, 1, !dbg !3186
  %and314 = and i64 %sub313, 4, !dbg !3186
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3186
  %71 = zext i1 %tobool315 to i64, !dbg !3186
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3186
  br label %cond.end, !dbg !3186

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3186
  br label %cond.end317, !dbg !3186

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3186
  br label %cond.end319, !dbg !3186

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3186
  br label %cond.end321, !dbg !3186

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3186
  br label %cond.end323, !dbg !3186

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3186
  br label %cond.end325, !dbg !3186

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3186
  br label %cond.end327, !dbg !3186

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3186
  br label %cond.end329, !dbg !3186

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3186
  br label %cond.end331, !dbg !3186

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3186
  br label %cond.end333, !dbg !3186

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3186
  br label %cond.end335, !dbg !3186

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3186
  br label %cond.end337, !dbg !3186

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3186
  br label %cond.end339, !dbg !3186

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3186
  br label %cond.end341, !dbg !3186

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3186
  br label %cond.end343, !dbg !3186

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3186
  br label %cond.end345, !dbg !3186

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3186
  br label %cond.end347, !dbg !3186

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3186
  br label %cond.end349, !dbg !3186

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3186
  br label %cond.end351, !dbg !3186

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3186
  br label %cond.end353, !dbg !3186

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3186
  br label %cond.end355, !dbg !3186

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3186
  br label %cond.end357, !dbg !3186

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3186
  br label %cond.end359, !dbg !3186

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3186
  br label %cond.end361, !dbg !3186

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3186
  br label %cond.end363, !dbg !3186

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3186
  br label %cond.end365, !dbg !3186

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3186
  br label %cond.end367, !dbg !3186

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3186
  br label %cond.end369, !dbg !3186

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3186
  br label %cond.end371, !dbg !3186

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3186
  br label %cond.end373, !dbg !3186

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3186
  br label %cond.end375, !dbg !3186

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3186
  br label %cond.end377, !dbg !3186

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3186
  br label %cond.end379, !dbg !3186

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3186
  br label %cond.end381, !dbg !3186

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3186
  br label %cond.end383, !dbg !3186

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3186
  br label %cond.end385, !dbg !3186

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3186
  br label %cond.end387, !dbg !3186

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3186
  br label %cond.end389, !dbg !3186

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3186
  br label %cond.end391, !dbg !3186

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3186
  br label %cond.end393, !dbg !3186

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3186
  br label %cond.end395, !dbg !3186

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3186
  br label %cond.end397, !dbg !3186

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3186
  br label %cond.end399, !dbg !3186

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3186
  br label %cond.end401, !dbg !3186

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3186
  br label %cond.end403, !dbg !3186

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3186
  br label %cond.end405, !dbg !3186

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3186
  br label %cond.end407, !dbg !3186

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3186
  br label %cond.end409, !dbg !3186

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3186
  br label %cond.end411, !dbg !3186

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3186
  br label %cond.end413, !dbg !3186

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3186
  br label %cond.end415, !dbg !3186

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3186
  br label %cond.end417, !dbg !3186

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3186
  br label %cond.end419, !dbg !3186

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3186
  br label %cond.end421, !dbg !3186

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3186
  br label %cond.end423, !dbg !3186

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3186
  br label %cond.end425, !dbg !3186

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3186
  br label %cond.end427, !dbg !3186

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3186
  br label %cond.end429, !dbg !3186

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3186
  br label %cond.end431, !dbg !3186

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3186
  br label %cond.end433, !dbg !3186

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3186
  br label %cond.end435, !dbg !3186

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3186
  br label %cond.end437, !dbg !3186

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3186
  br label %cond.end440, !dbg !3186

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3186

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3186
  br label %cond.end444, !dbg !3186

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3186
  %sub443 = sub i64 %72, 1, !dbg !3186
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !3186
  br label %cond.end444, !dbg !3186

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3186
  %sub446 = sub i32 %cond445, 12, !dbg !3187
  %add = add i32 %sub446, 1, !dbg !3188
  store i32 %add, i32* %retval, align 4, !dbg !3189
  br label %return, !dbg !3189

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3190
  %dec = add i64 %73, -1, !dbg !3190
  store i64 %dec, i64* %size.addr, align 8, !dbg !3190
  %74 = load i64, i64* %size.addr, align 8, !dbg !3191
  %shr = lshr i64 %74, 12, !dbg !3191
  store i64 %shr, i64* %size.addr, align 8, !dbg !3191
  %75 = load i64, i64* %size.addr, align 8, !dbg !3192
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3169
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3193
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3194
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !3193, !srcloc !3195
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3193
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3196
  %add.i = add i32 %79, 1, !dbg !3197
  store i32 %add.i, i32* %retval, align 4, !dbg !3198
  br label %return, !dbg !3198

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3199
  ret i32 %80, !dbg !3199
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !3200 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3161, metadata !DIExpression()), !dbg !3204
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3168, metadata !DIExpression()), !dbg !3206
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3207, metadata !DIExpression()), !dbg !3208
  %0 = load i64, i64* %n.addr, align 8, !dbg !3209
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3206
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3210
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3211
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !3210, !srcloc !3195
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3210
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3212
  %add.i = add i32 %4, 1, !dbg !3213
  %sub = sub i32 %add.i, 1, !dbg !3214
  ret i32 %sub, !dbg !3215
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3216 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3220, metadata !DIExpression()), !dbg !3221
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3222, metadata !DIExpression()), !dbg !3223
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3224, metadata !DIExpression()), !dbg !3225
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3226, metadata !DIExpression()), !dbg !3227
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3228
  ret i8* %0, !dbg !3229
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
attributes #9 = { nounwind readnone }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!1930}
!llvm.module.flags = !{!1931, !1932, !1933, !1934}
!llvm.ident = !{!1935}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 20, type: !1928, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !30, globals: !1927, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dsmethod.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !17, !23}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !13, line: 65, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !18, line: 16, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !24, line: 305, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!27 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!28 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!29 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!30 = !{!31, !36, !38, !40, !44, !48, !45, !49, !41, !805, !806, !807, !1926}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !32, line: 19, baseType: !33)
!32 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !34, line: 24, baseType: !35)
!34 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!35 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !37, line: 421, baseType: !38)
!37 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !32, line: 21, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !34, line: 27, baseType: !7)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !37, line: 127, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !32, line: 23, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !34, line: 31, baseType: !43)
!43 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !32, line: 17, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !34, line: 21, baseType: !47)
!47 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !51)
!51 = !{!52, !792, !793, !794, !795, !801, !802, !803, !804}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !50, file: !6, line: 134, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !55, line: 367, size: 576, elements: !56)
!55 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!56 = !{!57, !65, !78, !90, !103, !117, !126, !443, !460, !475, !488, !566, !578, !592, !602, !620, !642, !661, !680, !699, !712, !738, !755, !768, !782, !791}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !54, file: !55, line: 368, baseType: !58, size: 128)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !55, line: 73, size: 128, elements: !59)
!59 = !{!60, !61, !62, !63, !64}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !58, file: !55, line: 74, baseType: !53, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !58, file: !55, line: 74, baseType: !45, size: 8, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !58, file: !55, line: 74, baseType: !45, size: 8, offset: 72)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !58, file: !55, line: 74, baseType: !31, size: 16, offset: 80)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !58, file: !55, line: 74, baseType: !45, size: 8, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !54, file: !55, line: 369, baseType: !66, size: 192)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !55, line: 76, size: 192, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !77}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !66, file: !55, line: 77, baseType: !53, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !66, file: !55, line: 77, baseType: !45, size: 8, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !55, line: 77, baseType: !45, size: 8, offset: 72)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !66, file: !55, line: 77, baseType: !31, size: 16, offset: 80)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !55, line: 77, baseType: !45, size: 8, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !66, file: !55, line: 77, baseType: !74, size: 24, offset: 104)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 24, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 3)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !66, file: !55, line: 78, baseType: !41, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !54, file: !55, line: 370, baseType: !79, size: 256)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !55, line: 93, size: 256, elements: !80)
!80 = !{!81, !82, !83, !84, !85, !86, !89}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !79, file: !55, line: 94, baseType: !53, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !79, file: !55, line: 94, baseType: !45, size: 8, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !79, file: !55, line: 94, baseType: !45, size: 8, offset: 72)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !79, file: !55, line: 94, baseType: !31, size: 16, offset: 80)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !79, file: !55, line: 94, baseType: !45, size: 8, offset: 96)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !79, file: !55, line: 94, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !79, file: !55, line: 94, baseType: !38, size: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !54, file: !55, line: 371, baseType: !91, size: 384)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !55, line: 97, size: 384, elements: !92)
!92 = !{!93, !94, !95, !96, !97, !98, !99, !100, !101, !102}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !91, file: !55, line: 98, baseType: !53, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !91, file: !55, line: 98, baseType: !45, size: 8, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !91, file: !55, line: 98, baseType: !45, size: 8, offset: 72)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !91, file: !55, line: 98, baseType: !31, size: 16, offset: 80)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !91, file: !55, line: 98, baseType: !45, size: 8, offset: 96)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !91, file: !55, line: 98, baseType: !44, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !91, file: !55, line: 98, baseType: !38, size: 32, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !91, file: !55, line: 99, baseType: !38, size: 32, offset: 224)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !91, file: !55, line: 100, baseType: !44, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !91, file: !55, line: 101, baseType: !49, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !54, file: !55, line: 372, baseType: !104, size: 384)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !55, line: 104, size: 384, elements: !105)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !114, !115, !116}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !104, file: !55, line: 105, baseType: !53, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !104, file: !55, line: 105, baseType: !45, size: 8, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !55, line: 105, baseType: !45, size: 8, offset: 72)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !104, file: !55, line: 105, baseType: !31, size: 16, offset: 80)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !104, file: !55, line: 105, baseType: !45, size: 8, offset: 96)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !104, file: !55, line: 105, baseType: !49, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !104, file: !55, line: 106, baseType: !113, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !104, file: !55, line: 107, baseType: !44, size: 64, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !104, file: !55, line: 108, baseType: !38, size: 32, offset: 320)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !104, file: !55, line: 109, baseType: !38, size: 32, offset: 352)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !54, file: !55, line: 373, baseType: !118, size: 192)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !55, line: 118, size: 192, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !118, file: !55, line: 119, baseType: !53, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !118, file: !55, line: 119, baseType: !45, size: 8, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !118, file: !55, line: 119, baseType: !45, size: 8, offset: 72)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !118, file: !55, line: 119, baseType: !31, size: 16, offset: 80)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !118, file: !55, line: 119, baseType: !45, size: 8, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !118, file: !55, line: 119, baseType: !48, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !54, file: !55, line: 374, baseType: !127, size: 448)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !55, line: 143, size: 448, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !440, !441, !442}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !127, file: !55, line: 144, baseType: !53, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !127, file: !55, line: 144, baseType: !45, size: 8, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !127, file: !55, line: 144, baseType: !45, size: 8, offset: 72)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !127, file: !55, line: 144, baseType: !31, size: 16, offset: 80)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !127, file: !55, line: 144, baseType: !45, size: 8, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !127, file: !55, line: 144, baseType: !45, size: 8, offset: 104)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !127, file: !55, line: 145, baseType: !45, size: 8, offset: 112)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !127, file: !55, line: 146, baseType: !45, size: 8, offset: 120)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !127, file: !55, line: 147, baseType: !53, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !127, file: !55, line: 148, baseType: !53, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !127, file: !55, line: 149, baseType: !44, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !127, file: !55, line: 153, baseType: !141, size: 64, offset: 320)
!141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !127, file: !55, line: 150, size: 64, elements: !142)
!142 = !{!143, !439}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !141, file: !55, line: 151, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!36, !148}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !150, line: 37, size: 9024, elements: !151)
!150 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !385, !386, !387, !388, !389, !393, !395, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !422, !423, !424, !425, !426, !427, !428, !429, !431, !437}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !149, file: !150, line: 38, baseType: !148, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !149, file: !150, line: 39, baseType: !45, size: 8, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !149, file: !150, line: 40, baseType: !45, size: 8, offset: 72)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !149, file: !150, line: 41, baseType: !31, size: 16, offset: 80)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !149, file: !150, line: 42, baseType: !45, size: 8, offset: 96)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !149, file: !150, line: 43, baseType: !45, size: 8, offset: 104)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !149, file: !150, line: 44, baseType: !45, size: 8, offset: 112)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !149, file: !150, line: 45, baseType: !160, size: 16, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !37, line: 445, baseType: !31)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !149, file: !150, line: 46, baseType: !45, size: 8, offset: 144)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !149, file: !150, line: 47, baseType: !45, size: 8, offset: 152)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !149, file: !150, line: 48, baseType: !45, size: 8, offset: 160)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !149, file: !150, line: 49, baseType: !45, size: 8, offset: 168)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !149, file: !150, line: 50, baseType: !45, size: 8, offset: 176)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !149, file: !150, line: 51, baseType: !45, size: 8, offset: 184)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !149, file: !150, line: 52, baseType: !45, size: 8, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !149, file: !150, line: 53, baseType: !45, size: 8, offset: 200)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !149, file: !150, line: 54, baseType: !44, size: 64, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !149, file: !150, line: 55, baseType: !38, size: 32, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !149, file: !150, line: 56, baseType: !38, size: 32, offset: 352)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !149, file: !150, line: 57, baseType: !38, size: 32, offset: 384)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !149, file: !150, line: 58, baseType: !38, size: 32, offset: 416)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !149, file: !150, line: 60, baseType: !175, size: 640, offset: 448)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 893, size: 640, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182, !266, !267, !383, !384}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !175, file: !6, line: 894, baseType: !44, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !175, file: !6, line: 895, baseType: !44, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !175, file: !6, line: 896, baseType: !44, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !175, file: !6, line: 897, baseType: !44, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !175, file: !6, line: 898, baseType: !44, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !175, file: !6, line: 899, baseType: !183, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 875, size: 1600, elements: !185)
!185 = !{!186, !206, !222}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !184, file: !6, line: 876, baseType: !187, size: 448)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 828, size: 448, elements: !188)
!188 = !{!189, !190, !191, !192, !193, !194, !195, !196, !205}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !187, file: !6, line: 829, baseType: !183, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !187, file: !6, line: 829, baseType: !45, size: 8, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !187, file: !6, line: 829, baseType: !45, size: 8, offset: 72)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !187, file: !6, line: 829, baseType: !31, size: 16, offset: 80)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !187, file: !6, line: 829, baseType: !44, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !187, file: !6, line: 829, baseType: !183, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !187, file: !6, line: 829, baseType: !49, size: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !187, file: !6, line: 829, baseType: !197, size: 64, offset: 320)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 716, size: 64, elements: !198)
!198 = !{!199, !200, !201, !202, !203, !204}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !197, file: !6, line: 717, baseType: !41, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !197, file: !6, line: 718, baseType: !38, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !197, file: !6, line: 719, baseType: !87, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !197, file: !6, line: 720, baseType: !44, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !6, line: 721, baseType: !87, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !197, file: !6, line: 722, baseType: !183, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !187, file: !6, line: 829, baseType: !45, size: 8, offset: 384)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !184, file: !6, line: 877, baseType: !207, size: 640)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 835, size: 640, elements: !208)
!208 = !{!209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !207, file: !6, line: 836, baseType: !183, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !207, file: !6, line: 836, baseType: !45, size: 8, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !207, file: !6, line: 836, baseType: !45, size: 8, offset: 72)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !207, file: !6, line: 836, baseType: !31, size: 16, offset: 80)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !207, file: !6, line: 836, baseType: !44, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !207, file: !6, line: 836, baseType: !183, size: 64, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !207, file: !6, line: 836, baseType: !49, size: 64, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !207, file: !6, line: 836, baseType: !197, size: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !207, file: !6, line: 836, baseType: !45, size: 8, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !207, file: !6, line: 836, baseType: !87, size: 64, offset: 448)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !207, file: !6, line: 837, baseType: !44, size: 64, offset: 512)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !207, file: !6, line: 838, baseType: !38, size: 32, offset: 576)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !207, file: !6, line: 839, baseType: !38, size: 32, offset: 608)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !184, file: !6, line: 878, baseType: !223, size: 1600)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 846, size: 1600, elements: !224)
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !223, file: !6, line: 847, baseType: !183, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !223, file: !6, line: 847, baseType: !45, size: 8, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !223, file: !6, line: 847, baseType: !45, size: 8, offset: 72)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !223, file: !6, line: 847, baseType: !31, size: 16, offset: 80)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !223, file: !6, line: 847, baseType: !44, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !223, file: !6, line: 847, baseType: !183, size: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !223, file: !6, line: 847, baseType: !49, size: 64, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !223, file: !6, line: 847, baseType: !197, size: 64, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !223, file: !6, line: 847, baseType: !45, size: 8, offset: 384)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !223, file: !6, line: 847, baseType: !183, size: 64, offset: 448)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !223, file: !6, line: 848, baseType: !183, size: 64, offset: 512)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !223, file: !6, line: 849, baseType: !87, size: 64, offset: 576)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !223, file: !6, line: 850, baseType: !45, size: 8, offset: 640)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !223, file: !6, line: 851, baseType: !87, size: 64, offset: 704)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !223, file: !6, line: 852, baseType: !87, size: 64, offset: 768)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !223, file: !6, line: 853, baseType: !87, size: 64, offset: 832)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !223, file: !6, line: 854, baseType: !242, size: 32, offset: 896)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 32, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 4)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !223, file: !6, line: 855, baseType: !38, size: 32, offset: 928)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !223, file: !6, line: 856, baseType: !38, size: 32, offset: 960)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !223, file: !6, line: 857, baseType: !38, size: 32, offset: 992)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !223, file: !6, line: 858, baseType: !38, size: 32, offset: 1024)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !223, file: !6, line: 859, baseType: !38, size: 32, offset: 1056)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !223, file: !6, line: 860, baseType: !38, size: 32, offset: 1088)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !223, file: !6, line: 861, baseType: !38, size: 32, offset: 1120)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !223, file: !6, line: 862, baseType: !38, size: 32, offset: 1152)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !223, file: !6, line: 863, baseType: !38, size: 32, offset: 1184)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !223, file: !6, line: 864, baseType: !38, size: 32, offset: 1216)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !223, file: !6, line: 865, baseType: !38, size: 32, offset: 1248)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !223, file: !6, line: 866, baseType: !38, size: 32, offset: 1280)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !223, file: !6, line: 867, baseType: !38, size: 32, offset: 1312)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !223, file: !6, line: 868, baseType: !31, size: 16, offset: 1344)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !223, file: !6, line: 869, baseType: !45, size: 8, offset: 1360)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !223, file: !6, line: 870, baseType: !45, size: 8, offset: 1368)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !223, file: !6, line: 871, baseType: !45, size: 8, offset: 1376)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !223, file: !6, line: 872, baseType: !263, size: 160, offset: 1384)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 160, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 20)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !175, file: !6, line: 900, baseType: !49, size: 64, offset: 384)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !175, file: !6, line: 901, baseType: !268, size: 64, offset: 448)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 663, size: 640, elements: !270)
!270 = !{!271, !279, !292, !301, !310, !323, !337, !349, !361}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !269, file: !6, line: 664, baseType: !272, size: 128)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 567, size: 128, elements: !273)
!273 = !{!274, !275, !276, !277, !278}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !272, file: !6, line: 568, baseType: !48, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !272, file: !6, line: 568, baseType: !45, size: 8, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !272, file: !6, line: 568, baseType: !45, size: 8, offset: 72)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !272, file: !6, line: 568, baseType: !31, size: 16, offset: 80)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !272, file: !6, line: 568, baseType: !31, size: 16, offset: 96)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !269, file: !6, line: 665, baseType: !280, size: 384)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 593, size: 384, elements: !281)
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289, !290, !291}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !280, file: !6, line: 594, baseType: !48, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !280, file: !6, line: 594, baseType: !45, size: 8, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !280, file: !6, line: 594, baseType: !45, size: 8, offset: 72)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !280, file: !6, line: 594, baseType: !31, size: 16, offset: 80)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !280, file: !6, line: 594, baseType: !31, size: 16, offset: 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !280, file: !6, line: 594, baseType: !31, size: 16, offset: 112)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !280, file: !6, line: 595, baseType: !183, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !280, file: !6, line: 596, baseType: !44, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !280, file: !6, line: 597, baseType: !44, size: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !280, file: !6, line: 598, baseType: !41, size: 64, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !269, file: !6, line: 666, baseType: !293, size: 192)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 573, size: 192, elements: !294)
!294 = !{!295, !296, !297, !298, !299, !300}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !293, file: !6, line: 574, baseType: !48, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !293, file: !6, line: 574, baseType: !45, size: 8, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !293, file: !6, line: 574, baseType: !45, size: 8, offset: 72)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !293, file: !6, line: 574, baseType: !31, size: 16, offset: 80)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !293, file: !6, line: 574, baseType: !31, size: 16, offset: 96)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !293, file: !6, line: 574, baseType: !53, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !269, file: !6, line: 667, baseType: !302, size: 192)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 604, size: 192, elements: !303)
!303 = !{!304, !305, !306, !307, !308, !309}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !302, file: !6, line: 605, baseType: !48, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !302, file: !6, line: 605, baseType: !45, size: 8, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !302, file: !6, line: 605, baseType: !45, size: 8, offset: 72)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !302, file: !6, line: 605, baseType: !31, size: 16, offset: 80)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !302, file: !6, line: 605, baseType: !31, size: 16, offset: 96)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !302, file: !6, line: 605, baseType: !49, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !269, file: !6, line: 668, baseType: !311, size: 448)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 608, size: 448, elements: !312)
!312 = !{!313, !314, !315, !316, !317, !318, !319, !320, !321, !322}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !311, file: !6, line: 609, baseType: !48, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !311, file: !6, line: 609, baseType: !45, size: 8, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !6, line: 609, baseType: !45, size: 8, offset: 72)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !311, file: !6, line: 609, baseType: !31, size: 16, offset: 80)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !311, file: !6, line: 609, baseType: !31, size: 16, offset: 96)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !311, file: !6, line: 609, baseType: !38, size: 32, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !311, file: !6, line: 610, baseType: !183, size: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !311, file: !6, line: 611, baseType: !44, size: 64, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !311, file: !6, line: 612, baseType: !44, size: 64, offset: 320)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !311, file: !6, line: 613, baseType: !38, size: 32, offset: 384)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !269, file: !6, line: 669, baseType: !324, size: 512)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 580, size: 512, elements: !325)
!325 = !{!326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !324, file: !6, line: 581, baseType: !48, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !324, file: !6, line: 581, baseType: !45, size: 8, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !324, file: !6, line: 581, baseType: !45, size: 8, offset: 72)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !324, file: !6, line: 581, baseType: !31, size: 16, offset: 80)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !324, file: !6, line: 581, baseType: !31, size: 16, offset: 96)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !324, file: !6, line: 581, baseType: !38, size: 32, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !324, file: !6, line: 582, baseType: !53, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !324, file: !6, line: 583, baseType: !53, size: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !324, file: !6, line: 584, baseType: !148, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !324, file: !6, line: 585, baseType: !48, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !324, file: !6, line: 586, baseType: !38, size: 32, offset: 448)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !269, file: !6, line: 670, baseType: !338, size: 320)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 620, size: 320, elements: !339)
!339 = !{!340, !341, !342, !343, !344, !345, !346, !347, !348}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !338, file: !6, line: 621, baseType: !48, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !338, file: !6, line: 621, baseType: !45, size: 8, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !338, file: !6, line: 621, baseType: !45, size: 8, offset: 72)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !338, file: !6, line: 621, baseType: !31, size: 16, offset: 80)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !338, file: !6, line: 621, baseType: !31, size: 16, offset: 96)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !338, file: !6, line: 621, baseType: !45, size: 8, offset: 112)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !338, file: !6, line: 622, baseType: !148, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !338, file: !6, line: 623, baseType: !53, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !338, file: !6, line: 624, baseType: !41, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !269, file: !6, line: 671, baseType: !350, size: 640)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 631, size: 640, elements: !351)
!351 = !{!352, !353, !354, !355, !356, !357}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !350, file: !6, line: 632, baseType: !48, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !350, file: !6, line: 632, baseType: !45, size: 8, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !350, file: !6, line: 632, baseType: !45, size: 8, offset: 72)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !350, file: !6, line: 632, baseType: !31, size: 16, offset: 80)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !350, file: !6, line: 632, baseType: !31, size: 16, offset: 96)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !350, file: !6, line: 633, baseType: !358, size: 512, offset: 128)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 512, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 8)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !269, file: !6, line: 672, baseType: !362, size: 320)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 654, size: 320, elements: !363)
!363 = !{!364, !365, !366, !367, !368, !369, !370, !371, !372}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !362, file: !6, line: 655, baseType: !48, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !362, file: !6, line: 655, baseType: !45, size: 8, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !362, file: !6, line: 655, baseType: !45, size: 8, offset: 72)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !362, file: !6, line: 655, baseType: !31, size: 16, offset: 80)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !362, file: !6, line: 655, baseType: !31, size: 16, offset: 96)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !362, file: !6, line: 655, baseType: !45, size: 8, offset: 112)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !362, file: !6, line: 656, baseType: !49, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !362, file: !6, line: 657, baseType: !53, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !362, file: !6, line: 658, baseType: !373, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 645, size: 128, elements: !375)
!375 = !{!376, !382}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !374, file: !6, line: 646, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !37, line: 1052, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !381, !38, !48}
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !37, line: 424, baseType: !48)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !374, file: !6, line: 647, baseType: !48, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !175, file: !6, line: 902, baseType: !183, size: 64, offset: 512)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !175, file: !6, line: 903, baseType: !38, size: 32, offset: 576)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !149, file: !150, line: 61, baseType: !38, size: 32, offset: 1088)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !149, file: !150, line: 62, baseType: !38, size: 32, offset: 1120)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !149, file: !150, line: 63, baseType: !31, size: 16, offset: 1152)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !149, file: !150, line: 64, baseType: !45, size: 8, offset: 1168)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !149, file: !150, line: 66, baseType: !390, size: 2688, offset: 1216)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 2688, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 7)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !149, file: !150, line: 67, baseType: !394, size: 3072, offset: 3904)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 3072, elements: !359)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !149, file: !150, line: 68, baseType: !396, size: 576, offset: 6976)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 576, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 9)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !149, file: !150, line: 69, baseType: !113, size: 64, offset: 7552)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !149, file: !150, line: 71, baseType: !44, size: 64, offset: 7616)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !149, file: !150, line: 72, baseType: !113, size: 64, offset: 7680)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !149, file: !150, line: 73, baseType: !268, size: 64, offset: 7744)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !149, file: !150, line: 74, baseType: !49, size: 64, offset: 7808)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !149, file: !150, line: 75, baseType: !53, size: 64, offset: 7872)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !149, file: !150, line: 76, baseType: !49, size: 64, offset: 7936)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !149, file: !150, line: 77, baseType: !183, size: 64, offset: 8000)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !149, file: !150, line: 78, baseType: !53, size: 64, offset: 8064)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !149, file: !150, line: 79, baseType: !49, size: 64, offset: 8128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !149, file: !150, line: 80, baseType: !87, size: 64, offset: 8192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !149, file: !150, line: 81, baseType: !183, size: 64, offset: 8256)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !149, file: !150, line: 82, baseType: !412, size: 64, offset: 8320)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 702, size: 128, elements: !415)
!415 = !{!416, !417, !418, !419, !420, !421}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !414, file: !6, line: 706, baseType: !38, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !414, file: !6, line: 707, baseType: !38, size: 32, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !6, line: 708, baseType: !31, size: 16, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !414, file: !6, line: 709, baseType: !45, size: 8, offset: 80)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !414, file: !6, line: 710, baseType: !45, size: 8, offset: 88)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !414, file: !6, line: 711, baseType: !45, size: 8, offset: 96)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !149, file: !150, line: 83, baseType: !183, size: 64, offset: 8384)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !149, file: !150, line: 84, baseType: !53, size: 64, offset: 8448)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !149, file: !150, line: 85, baseType: !268, size: 64, offset: 8512)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !149, file: !150, line: 86, baseType: !53, size: 64, offset: 8576)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !149, file: !150, line: 87, baseType: !268, size: 64, offset: 8640)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !149, file: !150, line: 88, baseType: !183, size: 64, offset: 8704)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !149, file: !150, line: 89, baseType: !183, size: 64, offset: 8768)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !149, file: !150, line: 90, baseType: !430, size: 64, offset: 8832)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !149, file: !150, line: 91, baseType: !432, size: 64, offset: 8896)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 637, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!36, !148, !436}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !149, file: !150, line: 92, baseType: !438, size: 64, offset: 8960)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 641, baseType: !145)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !141, file: !55, line: 152, baseType: !53, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !127, file: !55, line: 155, baseType: !38, size: 32, offset: 384)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !127, file: !55, line: 156, baseType: !160, size: 16, offset: 416)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !127, file: !55, line: 157, baseType: !45, size: 8, offset: 432)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !54, file: !55, line: 375, baseType: !444, size: 576)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !55, line: 122, size: 576, elements: !445)
!445 = !{!446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !444, file: !55, line: 123, baseType: !53, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !444, file: !55, line: 123, baseType: !45, size: 8, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !444, file: !55, line: 123, baseType: !45, size: 8, offset: 72)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !444, file: !55, line: 123, baseType: !31, size: 16, offset: 80)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !444, file: !55, line: 123, baseType: !45, size: 8, offset: 96)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !444, file: !55, line: 123, baseType: !45, size: 8, offset: 104)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !444, file: !55, line: 124, baseType: !31, size: 16, offset: 112)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !444, file: !55, line: 125, baseType: !48, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !444, file: !55, line: 126, baseType: !41, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !444, file: !55, line: 127, baseType: !430, size: 64, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !444, file: !55, line: 128, baseType: !53, size: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !444, file: !55, line: 129, baseType: !53, size: 64, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !444, file: !55, line: 130, baseType: !49, size: 64, offset: 448)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !444, file: !55, line: 131, baseType: !45, size: 8, offset: 512)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !54, file: !55, line: 376, baseType: !461, size: 448)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !55, line: 134, size: 448, elements: !462)
!462 = !{!463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !474}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !461, file: !55, line: 135, baseType: !53, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !461, file: !55, line: 135, baseType: !45, size: 8, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !461, file: !55, line: 135, baseType: !45, size: 8, offset: 72)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !461, file: !55, line: 135, baseType: !31, size: 16, offset: 80)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !461, file: !55, line: 135, baseType: !45, size: 8, offset: 96)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !461, file: !55, line: 135, baseType: !45, size: 8, offset: 104)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !461, file: !55, line: 136, baseType: !49, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !461, file: !55, line: 137, baseType: !53, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !461, file: !55, line: 138, baseType: !53, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !461, file: !55, line: 139, baseType: !473, size: 64, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !37, line: 129, baseType: !41)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !461, file: !55, line: 140, baseType: !38, size: 32, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !54, file: !55, line: 377, baseType: !476, size: 320)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !55, line: 184, size: 320, elements: !477)
!477 = !{!478, !479, !480, !481, !482, !483, !487}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !476, file: !55, line: 185, baseType: !53, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !476, file: !55, line: 185, baseType: !45, size: 8, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !476, file: !55, line: 185, baseType: !45, size: 8, offset: 72)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !476, file: !55, line: 185, baseType: !31, size: 16, offset: 80)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !476, file: !55, line: 185, baseType: !45, size: 8, offset: 96)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !476, file: !55, line: 185, baseType: !484, size: 128, offset: 128)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 128, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 2)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !476, file: !55, line: 185, baseType: !53, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !54, file: !55, line: 378, baseType: !489, size: 384)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !55, line: 187, size: 384, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !496, !497, !498}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !489, file: !55, line: 188, baseType: !53, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !489, file: !55, line: 188, baseType: !45, size: 8, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !489, file: !55, line: 188, baseType: !45, size: 8, offset: 72)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !489, file: !55, line: 188, baseType: !31, size: 16, offset: 80)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !489, file: !55, line: 188, baseType: !45, size: 8, offset: 96)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !489, file: !55, line: 189, baseType: !484, size: 128, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !489, file: !55, line: 189, baseType: !53, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !489, file: !55, line: 189, baseType: !499, size: 64, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !501)
!501 = !{!502, !503, !504, !505, !513, !528, !560, !561, !562, !563, !564, !565}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !500, file: !6, line: 481, baseType: !49, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !500, file: !6, line: 482, baseType: !499, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !500, file: !6, line: 483, baseType: !499, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !500, file: !6, line: 484, baseType: !506, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !508)
!508 = !{!509, !510, !511, !512}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !507, file: !6, line: 498, baseType: !506, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !507, file: !6, line: 499, baseType: !506, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !507, file: !6, line: 500, baseType: !499, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !507, file: !6, line: 501, baseType: !38, size: 32, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !500, file: !6, line: 485, baseType: !514, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !516)
!516 = !{!517, !522, !523, !524, !525, !526, !527}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !515, file: !6, line: 467, baseType: !518, size: 128)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !518, file: !6, line: 460, baseType: !45, size: 8)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !518, file: !6, line: 461, baseType: !41, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !515, file: !6, line: 468, baseType: !518, size: 128, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !515, file: !6, line: 469, baseType: !31, size: 16, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !515, file: !6, line: 470, baseType: !45, size: 8, offset: 272)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !515, file: !6, line: 471, baseType: !45, size: 8, offset: 280)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !515, file: !6, line: 472, baseType: !45, size: 8, offset: 288)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !515, file: !6, line: 473, baseType: !45, size: 8, offset: 296)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !500, file: !6, line: 486, baseType: !529, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !531)
!531 = !{!532, !555, !556, !557, !558, !559}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !530, file: !6, line: 449, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !534)
!534 = !{!535, !536, !549}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !533, file: !6, line: 439, baseType: !49, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !533, file: !6, line: 440, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !539)
!539 = !{!540, !545, !546, !547, !548}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !538, file: !6, line: 420, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !37, line: 1049, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!38, !381, !38, !48}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !538, file: !6, line: 421, baseType: !48, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !538, file: !6, line: 422, baseType: !49, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !538, file: !6, line: 423, baseType: !45, size: 8, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !538, file: !6, line: 424, baseType: !45, size: 8, offset: 200)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !533, file: !6, line: 441, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !552)
!552 = !{!553, !554}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !551, file: !6, line: 430, baseType: !49, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !551, file: !6, line: 431, baseType: !550, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !530, file: !6, line: 450, baseType: !514, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !530, file: !6, line: 451, baseType: !45, size: 8, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !530, file: !6, line: 452, baseType: !45, size: 8, offset: 136)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !530, file: !6, line: 453, baseType: !45, size: 8, offset: 144)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !530, file: !6, line: 454, baseType: !45, size: 8, offset: 152)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !500, file: !6, line: 487, baseType: !41, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !500, file: !6, line: 488, baseType: !38, size: 32, offset: 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !500, file: !6, line: 489, baseType: !31, size: 16, offset: 480)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !500, file: !6, line: 490, baseType: !31, size: 16, offset: 496)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !500, file: !6, line: 491, baseType: !45, size: 8, offset: 512)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !500, file: !6, line: 492, baseType: !45, size: 8, offset: 520)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !54, file: !55, line: 379, baseType: !567, size: 384)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !55, line: 192, size: 384, elements: !568)
!568 = !{!569, !570, !571, !572, !573, !574, !575, !576, !577}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !567, file: !55, line: 193, baseType: !53, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !567, file: !55, line: 193, baseType: !45, size: 8, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !567, file: !55, line: 193, baseType: !45, size: 8, offset: 72)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !567, file: !55, line: 193, baseType: !31, size: 16, offset: 80)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !567, file: !55, line: 193, baseType: !45, size: 8, offset: 96)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !567, file: !55, line: 193, baseType: !484, size: 128, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !567, file: !55, line: 193, baseType: !53, size: 64, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !567, file: !55, line: 193, baseType: !38, size: 32, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !567, file: !55, line: 194, baseType: !38, size: 32, offset: 352)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !54, file: !55, line: 380, baseType: !579, size: 384)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !55, line: 197, size: 384, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !586, !587, !588, !589, !590}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !579, file: !55, line: 198, baseType: !53, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !579, file: !55, line: 198, baseType: !45, size: 8, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !579, file: !55, line: 198, baseType: !45, size: 8, offset: 72)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !579, file: !55, line: 198, baseType: !31, size: 16, offset: 80)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !579, file: !55, line: 198, baseType: !45, size: 8, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !579, file: !55, line: 200, baseType: !45, size: 8, offset: 104)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !579, file: !55, line: 201, baseType: !45, size: 8, offset: 112)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !579, file: !55, line: 202, baseType: !484, size: 128, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !579, file: !55, line: 202, baseType: !53, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !579, file: !55, line: 202, baseType: !591, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !37, line: 128, baseType: !41)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !54, file: !55, line: 381, baseType: !593, size: 320)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !55, line: 205, size: 320, elements: !594)
!594 = !{!595, !596, !597, !598, !599, !600, !601}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !593, file: !55, line: 206, baseType: !53, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !593, file: !55, line: 206, baseType: !45, size: 8, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !593, file: !55, line: 206, baseType: !45, size: 8, offset: 72)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !593, file: !55, line: 206, baseType: !31, size: 16, offset: 80)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !593, file: !55, line: 206, baseType: !45, size: 8, offset: 96)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !593, file: !55, line: 206, baseType: !484, size: 128, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !593, file: !55, line: 206, baseType: !53, size: 64, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !54, file: !55, line: 382, baseType: !603, size: 384)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !55, line: 233, size: 384, elements: !604)
!604 = !{!605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !603, file: !55, line: 234, baseType: !53, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !603, file: !55, line: 234, baseType: !45, size: 8, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !603, file: !55, line: 234, baseType: !45, size: 8, offset: 72)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !603, file: !55, line: 234, baseType: !31, size: 16, offset: 80)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !603, file: !55, line: 234, baseType: !45, size: 8, offset: 96)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !603, file: !55, line: 234, baseType: !45, size: 8, offset: 104)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !603, file: !55, line: 234, baseType: !45, size: 8, offset: 112)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !603, file: !55, line: 234, baseType: !45, size: 8, offset: 120)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !603, file: !55, line: 234, baseType: !49, size: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !603, file: !55, line: 234, baseType: !38, size: 32, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !603, file: !55, line: 234, baseType: !38, size: 32, offset: 224)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !603, file: !55, line: 234, baseType: !38, size: 32, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !603, file: !55, line: 234, baseType: !45, size: 8, offset: 288)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !603, file: !55, line: 234, baseType: !45, size: 8, offset: 296)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !603, file: !55, line: 234, baseType: !53, size: 64, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !54, file: !55, line: 383, baseType: !621, size: 576)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !55, line: 237, size: 576, elements: !622)
!622 = !{!623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !621, file: !55, line: 238, baseType: !53, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !621, file: !55, line: 238, baseType: !45, size: 8, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !621, file: !55, line: 238, baseType: !45, size: 8, offset: 72)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !621, file: !55, line: 238, baseType: !31, size: 16, offset: 80)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !621, file: !55, line: 238, baseType: !45, size: 8, offset: 96)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !621, file: !55, line: 238, baseType: !45, size: 8, offset: 104)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !621, file: !55, line: 238, baseType: !45, size: 8, offset: 112)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !621, file: !55, line: 238, baseType: !45, size: 8, offset: 120)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !621, file: !55, line: 238, baseType: !49, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !621, file: !55, line: 238, baseType: !38, size: 32, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !621, file: !55, line: 238, baseType: !38, size: 32, offset: 224)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !621, file: !55, line: 238, baseType: !38, size: 32, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !621, file: !55, line: 238, baseType: !45, size: 8, offset: 288)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !621, file: !55, line: 238, baseType: !45, size: 8, offset: 296)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !621, file: !55, line: 238, baseType: !31, size: 16, offset: 304)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !621, file: !55, line: 239, baseType: !53, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !621, file: !55, line: 240, baseType: !44, size: 64, offset: 384)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !621, file: !55, line: 241, baseType: !31, size: 16, offset: 448)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !621, file: !55, line: 242, baseType: !44, size: 64, offset: 512)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !54, file: !55, line: 384, baseType: !643, size: 384)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !55, line: 262, size: 384, elements: !644)
!644 = !{!645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !643, file: !55, line: 263, baseType: !53, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !643, file: !55, line: 263, baseType: !45, size: 8, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !643, file: !55, line: 263, baseType: !45, size: 8, offset: 72)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !643, file: !55, line: 263, baseType: !31, size: 16, offset: 80)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !643, file: !55, line: 263, baseType: !45, size: 8, offset: 96)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !643, file: !55, line: 263, baseType: !45, size: 8, offset: 104)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !643, file: !55, line: 263, baseType: !45, size: 8, offset: 112)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !643, file: !55, line: 263, baseType: !45, size: 8, offset: 120)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !643, file: !55, line: 263, baseType: !49, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !643, file: !55, line: 263, baseType: !38, size: 32, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !643, file: !55, line: 263, baseType: !38, size: 32, offset: 224)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !643, file: !55, line: 263, baseType: !38, size: 32, offset: 256)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !643, file: !55, line: 263, baseType: !45, size: 8, offset: 288)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !643, file: !55, line: 263, baseType: !45, size: 8, offset: 296)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !643, file: !55, line: 263, baseType: !45, size: 8, offset: 304)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !643, file: !55, line: 264, baseType: !53, size: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !54, file: !55, line: 385, baseType: !662, size: 448)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !55, line: 245, size: 448, elements: !663)
!663 = !{!664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !662, file: !55, line: 246, baseType: !53, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !662, file: !55, line: 246, baseType: !45, size: 8, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !662, file: !55, line: 246, baseType: !45, size: 8, offset: 72)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !662, file: !55, line: 246, baseType: !31, size: 16, offset: 80)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !662, file: !55, line: 246, baseType: !45, size: 8, offset: 96)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !662, file: !55, line: 246, baseType: !45, size: 8, offset: 104)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !662, file: !55, line: 246, baseType: !45, size: 8, offset: 112)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !662, file: !55, line: 246, baseType: !45, size: 8, offset: 120)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !662, file: !55, line: 246, baseType: !49, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !662, file: !55, line: 246, baseType: !38, size: 32, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !662, file: !55, line: 246, baseType: !38, size: 32, offset: 224)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !662, file: !55, line: 246, baseType: !38, size: 32, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !662, file: !55, line: 246, baseType: !45, size: 8, offset: 288)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !662, file: !55, line: 246, baseType: !45, size: 8, offset: 296)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !662, file: !55, line: 246, baseType: !53, size: 64, offset: 320)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !662, file: !55, line: 247, baseType: !53, size: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !54, file: !55, line: 386, baseType: !681, size: 448)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !55, line: 250, size: 448, elements: !682)
!682 = !{!683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !681, file: !55, line: 251, baseType: !53, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !681, file: !55, line: 251, baseType: !45, size: 8, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !681, file: !55, line: 251, baseType: !45, size: 8, offset: 72)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !681, file: !55, line: 251, baseType: !31, size: 16, offset: 80)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !681, file: !55, line: 251, baseType: !45, size: 8, offset: 96)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !681, file: !55, line: 251, baseType: !45, size: 8, offset: 104)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !681, file: !55, line: 251, baseType: !45, size: 8, offset: 112)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !681, file: !55, line: 251, baseType: !45, size: 8, offset: 120)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !681, file: !55, line: 251, baseType: !49, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !681, file: !55, line: 251, baseType: !38, size: 32, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !681, file: !55, line: 251, baseType: !38, size: 32, offset: 224)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !681, file: !55, line: 251, baseType: !38, size: 32, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !681, file: !55, line: 251, baseType: !45, size: 8, offset: 288)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !681, file: !55, line: 251, baseType: !45, size: 8, offset: 296)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !681, file: !55, line: 256, baseType: !53, size: 64, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !681, file: !55, line: 257, baseType: !53, size: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !54, file: !55, line: 387, baseType: !700, size: 512)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !55, line: 273, size: 512, elements: !701)
!701 = !{!702, !703, !704, !705, !706, !707, !708, !709, !710, !711}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !700, file: !55, line: 274, baseType: !53, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !700, file: !55, line: 274, baseType: !45, size: 8, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !700, file: !55, line: 274, baseType: !45, size: 8, offset: 72)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !700, file: !55, line: 274, baseType: !31, size: 16, offset: 80)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !700, file: !55, line: 274, baseType: !45, size: 8, offset: 96)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !700, file: !55, line: 274, baseType: !49, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !700, file: !55, line: 275, baseType: !38, size: 32, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !700, file: !55, line: 276, baseType: !377, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !700, file: !55, line: 277, baseType: !48, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !700, file: !55, line: 278, baseType: !484, size: 128, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !54, file: !55, line: 388, baseType: !713, size: 512)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !55, line: 281, size: 512, elements: !714)
!714 = !{!715, !716, !717, !718, !719, !720, !721, !722, !728, !729, !730, !736, !737}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !713, file: !55, line: 282, baseType: !53, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !713, file: !55, line: 282, baseType: !45, size: 8, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !713, file: !55, line: 282, baseType: !45, size: 8, offset: 72)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !713, file: !55, line: 282, baseType: !31, size: 16, offset: 80)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !713, file: !55, line: 282, baseType: !45, size: 8, offset: 96)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !713, file: !55, line: 282, baseType: !45, size: 8, offset: 104)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !713, file: !55, line: 283, baseType: !45, size: 8, offset: 112)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !713, file: !55, line: 284, baseType: !723, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !37, line: 1084, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!36, !38, !473, !38, !727, !48, !48}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !713, file: !55, line: 285, baseType: !49, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !713, file: !55, line: 286, baseType: !48, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !713, file: !55, line: 287, baseType: !731, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !37, line: 1102, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!36, !381, !38, !48, !735}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !713, file: !55, line: 288, baseType: !53, size: 64, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !713, file: !55, line: 289, baseType: !53, size: 64, offset: 448)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !54, file: !55, line: 389, baseType: !739, size: 512)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !55, line: 307, size: 512, elements: !740)
!740 = !{!741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !739, file: !55, line: 308, baseType: !53, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !739, file: !55, line: 308, baseType: !45, size: 8, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !739, file: !55, line: 308, baseType: !45, size: 8, offset: 72)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !739, file: !55, line: 308, baseType: !31, size: 16, offset: 80)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !739, file: !55, line: 308, baseType: !45, size: 8, offset: 96)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !739, file: !55, line: 308, baseType: !45, size: 8, offset: 104)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !739, file: !55, line: 309, baseType: !45, size: 8, offset: 112)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !739, file: !55, line: 310, baseType: !45, size: 8, offset: 120)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !739, file: !55, line: 311, baseType: !48, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !739, file: !55, line: 312, baseType: !49, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !739, file: !55, line: 313, baseType: !113, size: 64, offset: 256)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !739, file: !55, line: 314, baseType: !44, size: 64, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !739, file: !55, line: 315, baseType: !44, size: 64, offset: 384)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !739, file: !55, line: 316, baseType: !38, size: 32, offset: 448)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !54, file: !55, line: 390, baseType: !756, size: 448)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !55, line: 340, size: 448, elements: !757)
!757 = !{!758, !759, !760, !761, !762, !763, !764, !765, !766, !767}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !756, file: !55, line: 341, baseType: !53, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !756, file: !55, line: 341, baseType: !45, size: 8, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !756, file: !55, line: 341, baseType: !45, size: 8, offset: 72)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !756, file: !55, line: 341, baseType: !31, size: 16, offset: 80)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !756, file: !55, line: 341, baseType: !45, size: 8, offset: 96)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !756, file: !55, line: 341, baseType: !49, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !756, file: !55, line: 342, baseType: !49, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !756, file: !55, line: 343, baseType: !48, size: 64, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !756, file: !55, line: 344, baseType: !44, size: 64, offset: 320)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !756, file: !55, line: 345, baseType: !38, size: 32, offset: 384)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !54, file: !55, line: 391, baseType: !769, size: 256)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !55, line: 350, size: 256, elements: !770)
!770 = !{!771, !772, !773, !774, !775, !776, !781}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !769, file: !55, line: 351, baseType: !53, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !769, file: !55, line: 351, baseType: !45, size: 8, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !769, file: !55, line: 351, baseType: !45, size: 8, offset: 72)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !769, file: !55, line: 351, baseType: !31, size: 16, offset: 80)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !769, file: !55, line: 351, baseType: !45, size: 8, offset: 96)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !769, file: !55, line: 351, baseType: !777, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !37, line: 1055, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !381, !48}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !769, file: !55, line: 352, baseType: !48, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !54, file: !55, line: 392, baseType: !783, size: 192)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !55, line: 357, size: 192, elements: !784)
!784 = !{!785, !786, !787, !788, !789, !790}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !783, file: !55, line: 358, baseType: !53, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !783, file: !55, line: 358, baseType: !45, size: 8, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !783, file: !55, line: 358, baseType: !45, size: 8, offset: 72)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !783, file: !55, line: 358, baseType: !31, size: 16, offset: 80)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !783, file: !55, line: 358, baseType: !45, size: 8, offset: 96)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !783, file: !55, line: 358, baseType: !53, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !54, file: !55, line: 399, baseType: !50, size: 384)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !50, file: !6, line: 135, baseType: !45, size: 8, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !50, file: !6, line: 136, baseType: !45, size: 8, offset: 72)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !50, file: !6, line: 137, baseType: !31, size: 16, offset: 80)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !50, file: !6, line: 138, baseType: !796, size: 32, offset: 96)
!796 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !797, line: 327, size: 32, elements: !798)
!797 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!798 = !{!799, !800}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !796, file: !797, line: 328, baseType: !38, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !796, file: !797, line: 329, baseType: !242, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !50, file: !6, line: 139, baseType: !49, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !50, file: !6, line: 140, baseType: !49, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !50, file: !6, line: 141, baseType: !49, size: 64, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !50, file: !6, line: 142, baseType: !160, size: 16, offset: 320)
!805 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !809, line: 640, size: 48640, elements: !810)
!809 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!810 = !{!811, !817, !820, !821, !833, !834, !835, !836, !837, !838, !839, !840, !844, !875, !886, !991, !992, !993, !1004, !1005, !1007, !1008, !1226, !1227, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1306, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1362, !1364, !1365, !1366, !1368, !1370, !1371, !1372, !1373, !1374, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1398, !1403, !1407, !1408, !1409, !1412, !1416, !1419, !1422, !1425, !1428, !1431, !1434, !1437, !1443, !1444, !1445, !1451, !1452, !1456, !1457, !1458, !1467, !1468, !1469, !1470, !1471, !1476, !1477, !1478, !1481, !1482, !1485, !1488, !1491, !1494, !1497, !1500, !1501, !1582, !1585, !1588, !1589, !1592, !1593, !1594, !1598, !1599, !1600, !1613, !1614, !1615, !1625, !1630, !1633, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !808, file: !809, line: 646, baseType: !812, size: 128)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !813, line: 56, size: 128, elements: !814)
!813 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!814 = !{!815, !816}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !812, file: !813, line: 57, baseType: !805, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !812, file: !813, line: 58, baseType: !38, size: 32, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !808, file: !809, line: 649, baseType: !818, size: 64, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !819)
!819 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !808, file: !809, line: 657, baseType: !48, size: 64, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !808, file: !809, line: 658, baseType: !822, size: 32, offset: 256)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !823, line: 113, baseType: !824)
!823 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !823, line: 111, size: 32, elements: !825)
!825 = !{!826}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !824, file: !823, line: 112, baseType: !827, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !828, line: 168, baseType: !829)
!828 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !828, line: 166, size: 32, elements: !830)
!830 = !{!831}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !829, file: !828, line: 167, baseType: !832, size: 32)
!832 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !808, file: !809, line: 660, baseType: !7, size: 32, offset: 288)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !808, file: !809, line: 661, baseType: !7, size: 32, offset: 320)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !808, file: !809, line: 684, baseType: !832, size: 32, offset: 352)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !808, file: !809, line: 686, baseType: !832, size: 32, offset: 384)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !808, file: !809, line: 687, baseType: !832, size: 32, offset: 416)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !808, file: !809, line: 688, baseType: !832, size: 32, offset: 448)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !808, file: !809, line: 689, baseType: !7, size: 32, offset: 480)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !808, file: !809, line: 691, baseType: !841, size: 64, offset: 512)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !843)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !809, line: 691, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !808, file: !809, line: 692, baseType: !845, size: 832, offset: 576)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !809, line: 451, size: 832, elements: !846)
!846 = !{!847, !852, !860, !866, !867, !868, !869, !870, !871, !872}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !845, file: !809, line: 453, baseType: !848, size: 128)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !809, line: 325, size: 128, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !848, file: !809, line: 326, baseType: !805, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !848, file: !809, line: 327, baseType: !38, size: 32, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !845, file: !809, line: 454, baseType: !853, size: 192, align: 64, offset: 128)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !854, line: 24, size: 192, align: 64, elements: !855)
!854 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!855 = !{!856, !857, !859}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !853, file: !854, line: 25, baseType: !805, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !853, file: !854, line: 26, baseType: !858, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !853, file: !854, line: 27, baseType: !858, size: 64, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !845, file: !809, line: 455, baseType: !861, size: 128, offset: 320)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !828, line: 178, size: 128, elements: !862)
!862 = !{!863, !865}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !861, file: !828, line: 179, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !861, file: !828, line: 179, baseType: !864, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !845, file: !809, line: 456, baseType: !7, size: 32, offset: 448)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !845, file: !809, line: 458, baseType: !41, size: 64, offset: 512)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !845, file: !809, line: 459, baseType: !41, size: 64, offset: 576)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !845, file: !809, line: 460, baseType: !41, size: 64, offset: 640)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !845, file: !809, line: 461, baseType: !41, size: 64, offset: 704)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !845, file: !809, line: 463, baseType: !41, size: 64, offset: 768)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !845, file: !809, line: 465, baseType: !873, offset: 832)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !809, line: 415, elements: !874)
!874 = !{}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !808, file: !809, line: 693, baseType: !876, size: 384, offset: 1408)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !809, line: 489, size: 384, elements: !877)
!877 = !{!878, !879, !880, !881, !882, !883, !884}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !876, file: !809, line: 490, baseType: !861, size: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !876, file: !809, line: 491, baseType: !805, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !876, file: !809, line: 492, baseType: !805, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !876, file: !809, line: 493, baseType: !7, size: 32, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !876, file: !809, line: 494, baseType: !35, size: 16, offset: 288)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !876, file: !809, line: 495, baseType: !35, size: 16, offset: 304)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !876, file: !809, line: 497, baseType: !885, size: 64, offset: 320)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !808, file: !809, line: 697, baseType: !887, size: 1792, offset: 1792)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !809, line: 507, size: 1792, elements: !888)
!888 = !{!889, !890, !891, !892, !893, !894, !895, !899, !900, !901, !902, !903, !904, !905, !988, !989}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !887, file: !809, line: 508, baseType: !853, size: 192, align: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !887, file: !809, line: 515, baseType: !41, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !887, file: !809, line: 516, baseType: !41, size: 64, offset: 256)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !887, file: !809, line: 517, baseType: !41, size: 64, offset: 320)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !887, file: !809, line: 518, baseType: !41, size: 64, offset: 384)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !887, file: !809, line: 519, baseType: !41, size: 64, offset: 448)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !887, file: !809, line: 526, baseType: !896, size: 64, offset: 512)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !32, line: 22, baseType: !897)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !34, line: 30, baseType: !898)
!898 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !887, file: !809, line: 527, baseType: !41, size: 64, offset: 576)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !887, file: !809, line: 528, baseType: !7, size: 32, offset: 640)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !887, file: !809, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !887, file: !809, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !887, file: !809, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !887, file: !809, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !887, file: !809, line: 563, baseType: !906, size: 512, offset: 704)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !13, line: 118, size: 512, elements: !907)
!907 = !{!908, !916, !917, !922, !984, !985, !986, !987}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !906, file: !13, line: 119, baseType: !909, size: 256)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !910, line: 9, size: 256, elements: !911)
!910 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !909, file: !910, line: 10, baseType: !853, size: 192, align: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !909, file: !910, line: 11, baseType: !914, size: 64, offset: 192)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !915, line: 29, baseType: !896)
!915 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !906, file: !13, line: 120, baseType: !914, size: 64, offset: 256)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !906, file: !13, line: 121, baseType: !918, size: 64, offset: 320)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!12, !921}
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !906, file: !13, line: 122, baseType: !923, size: 64, offset: 384)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !13, line: 159, size: 512, align: 512, elements: !925)
!925 = !{!926, !952, !953, !957, !967, !968, !979, !983}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !924, file: !13, line: 160, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !13, line: 214, size: 4608, align: 512, elements: !929)
!929 = !{!930, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !928, file: !13, line: 215, baseType: !931)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !932, line: 29, baseType: !933)
!932 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !932, line: 20, elements: !934)
!934 = !{!935}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !933, file: !932, line: 21, baseType: !936)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !937, line: 25, baseType: !938)
!937 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !937, line: 25, elements: !874)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !928, file: !13, line: 216, baseType: !7, size: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !928, file: !13, line: 217, baseType: !7, size: 32, offset: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !928, file: !13, line: 218, baseType: !7, size: 32, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !928, file: !13, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !928, file: !13, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !928, file: !13, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !928, file: !13, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !928, file: !13, line: 233, baseType: !914, size: 64, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !928, file: !13, line: 234, baseType: !921, size: 64, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !928, file: !13, line: 235, baseType: !914, size: 64, offset: 256)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !928, file: !13, line: 236, baseType: !921, size: 64, offset: 320)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !928, file: !13, line: 237, baseType: !951, size: 4096, offset: 512)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !924, size: 4096, elements: !359)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !924, file: !13, line: 161, baseType: !7, size: 32, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !924, file: !13, line: 162, baseType: !954, size: 32, offset: 96)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !828, line: 27, baseType: !955)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !956, line: 96, baseType: !832)
!956 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!957 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !924, file: !13, line: 163, baseType: !958, size: 32, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !959, line: 276, baseType: !960)
!959 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !959, line: 276, size: 32, elements: !961)
!961 = !{!962}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !960, file: !959, line: 276, baseType: !963, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !959, line: 70, baseType: !964)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !959, line: 65, size: 32, elements: !965)
!965 = !{!966}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !964, file: !959, line: 66, baseType: !7, size: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !924, file: !13, line: 164, baseType: !921, size: 64, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !924, file: !13, line: 165, baseType: !969, size: 128, offset: 256)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !910, line: 14, size: 128, elements: !970)
!970 = !{!971}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !969, file: !910, line: 15, baseType: !972, size: 128)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !854, line: 125, size: 128, elements: !973)
!973 = !{!974, !978}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !972, file: !854, line: 126, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !854, line: 31, size: 64, elements: !976)
!976 = !{!977}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !975, file: !854, line: 32, baseType: !858, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !972, file: !854, line: 127, baseType: !858, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !924, file: !13, line: 166, baseType: !980, size: 64, offset: 384)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!914}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !924, file: !13, line: 167, baseType: !914, size: 64, offset: 448)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !906, file: !13, line: 123, baseType: !45, size: 8, offset: 448)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !906, file: !13, line: 124, baseType: !45, size: 8, offset: 456)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !906, file: !13, line: 125, baseType: !45, size: 8, offset: 464)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !906, file: !13, line: 126, baseType: !45, size: 8, offset: 472)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !887, file: !809, line: 572, baseType: !906, size: 512, offset: 1216)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !887, file: !809, line: 580, baseType: !990, size: 64, offset: 1728)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !808, file: !809, line: 721, baseType: !7, size: 32, offset: 3584)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !808, file: !809, line: 722, baseType: !832, size: 32, offset: 3616)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !808, file: !809, line: 723, baseType: !994, size: 64, offset: 3648)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !996)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !997, line: 17, baseType: !998)
!997 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !997, line: 17, size: 64, elements: !999)
!999 = !{!1000}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !998, file: !997, line: 17, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 64, elements: !1002)
!1002 = !{!1003}
!1003 = !DISubrange(count: 1)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !808, file: !809, line: 724, baseType: !996, size: 64, offset: 3712)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !808, file: !809, line: 749, baseType: !1006, offset: 3776)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !809, line: 290, elements: !874)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !808, file: !809, line: 751, baseType: !861, size: 128, offset: 3776)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !808, file: !809, line: 757, baseType: !1009, size: 64, offset: 3904)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1011, line: 388, size: 7296, elements: !1012)
!1011 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1012 = !{!1013, !1222}
!1013 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !1011, line: 389, baseType: !1014, size: 7296)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1010, file: !1011, line: 389, size: 7296, elements: !1015)
!1015 = !{!1016, !1063, !1064, !1065, !1069, !1070, !1071, !1072, !1073, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1094, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1128, !1134, !1137, !1167, !1168, !1190, !1191, !1194, !1198, !1199, !1202, !1203, !1206, !1209, !1221}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1014, file: !1011, line: 390, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1011, line: 305, size: 1472, elements: !1019)
!1019 = !{!1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1035, !1036, !1041, !1042, !1045, !1049, !1050, !1053, !1054, !1061}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1018, file: !1011, line: 308, baseType: !805, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1018, file: !1011, line: 309, baseType: !805, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1018, file: !1011, line: 313, baseType: !1017, size: 64, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1018, file: !1011, line: 313, baseType: !1017, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1018, file: !1011, line: 315, baseType: !853, size: 192, align: 64, offset: 256)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1018, file: !1011, line: 323, baseType: !805, size: 64, offset: 448)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1018, file: !1011, line: 327, baseType: !1009, size: 64, offset: 512)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1018, file: !1011, line: 333, baseType: !1028, size: 64, offset: 576)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1029, line: 284, baseType: !1030)
!1029 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1029, line: 284, size: 64, elements: !1031)
!1031 = !{!1032}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1030, file: !1029, line: 284, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1034, line: 19, baseType: !805)
!1034 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1018, file: !1011, line: 334, baseType: !805, size: 64, offset: 640)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1018, file: !1011, line: 343, baseType: !1037, size: 256, offset: 704)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1018, file: !1011, line: 340, size: 256, elements: !1038)
!1038 = !{!1039, !1040}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1037, file: !1011, line: 341, baseType: !853, size: 192, align: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1037, file: !1011, line: 342, baseType: !805, size: 64, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1018, file: !1011, line: 351, baseType: !861, size: 128, offset: 960)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1018, file: !1011, line: 353, baseType: !1043, size: 64, offset: 1088)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1011, line: 353, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1018, file: !1011, line: 356, baseType: !1046, size: 64, offset: 1152)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1048)
!1048 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1011, line: 356, flags: DIFlagFwdDecl)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1018, file: !1011, line: 359, baseType: !805, size: 64, offset: 1216)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1018, file: !1011, line: 361, baseType: !1051, size: 64, offset: 1280)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !1029, line: 526, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1018, file: !1011, line: 362, baseType: !48, size: 64, offset: 1344)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1018, file: !1011, line: 365, baseType: !1055, size: 64, offset: 1408)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1056, line: 13, baseType: !1057)
!1056 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !828, line: 175, baseType: !1058)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !828, line: 173, size: 64, elements: !1059)
!1059 = !{!1060}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1058, file: !828, line: 174, baseType: !896, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1018, file: !1011, line: 373, baseType: !1062, offset: 1472)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1011, line: 296, elements: !874)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1014, file: !1011, line: 391, baseType: !975, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1014, file: !1011, line: 392, baseType: !41, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1014, file: !1011, line: 394, baseType: !1066, size: 64, offset: 192)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!805, !1051, !805, !805, !805, !805}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1014, file: !1011, line: 398, baseType: !805, size: 64, offset: 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1014, file: !1011, line: 399, baseType: !805, size: 64, offset: 320)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1014, file: !1011, line: 405, baseType: !805, size: 64, offset: 384)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1014, file: !1011, line: 406, baseType: !805, size: 64, offset: 448)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1014, file: !1011, line: 407, baseType: !1074, size: 64, offset: 512)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1029, line: 286, baseType: !1076)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1029, line: 286, size: 64, elements: !1077)
!1077 = !{!1078}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1076, file: !1029, line: 286, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1034, line: 18, baseType: !805)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1014, file: !1011, line: 416, baseType: !827, size: 32, offset: 576)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1014, file: !1011, line: 428, baseType: !827, size: 32, offset: 608)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1014, file: !1011, line: 437, baseType: !827, size: 32, offset: 640)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1014, file: !1011, line: 447, baseType: !827, size: 32, offset: 672)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1014, file: !1011, line: 450, baseType: !1055, size: 64, offset: 704)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1014, file: !1011, line: 452, baseType: !832, size: 32, offset: 768)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1014, file: !1011, line: 454, baseType: !1087, offset: 800)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !932, line: 83, baseType: !1088)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !932, line: 71, elements: !1089)
!1089 = !{!1090}
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !932, line: 72, baseType: !1091)
!1091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1088, file: !932, line: 72, elements: !1092)
!1092 = !{!1093}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1091, file: !932, line: 73, baseType: !933)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1014, file: !1011, line: 457, baseType: !1095, size: 256, offset: 832)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1096, line: 35, size: 256, elements: !1097)
!1096 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1097 = !{!1098, !1099, !1100, !1101}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1095, file: !1096, line: 36, baseType: !1055, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1095, file: !1096, line: 42, baseType: !1055, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1095, file: !1096, line: 46, baseType: !931, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1095, file: !1096, line: 47, baseType: !861, size: 128, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1014, file: !1011, line: 459, baseType: !861, size: 128, offset: 1088)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1014, file: !1011, line: 466, baseType: !805, size: 64, offset: 1216)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1014, file: !1011, line: 467, baseType: !805, size: 64, offset: 1280)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1014, file: !1011, line: 469, baseType: !805, size: 64, offset: 1344)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1014, file: !1011, line: 470, baseType: !805, size: 64, offset: 1408)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1014, file: !1011, line: 471, baseType: !1057, size: 64, offset: 1472)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1014, file: !1011, line: 472, baseType: !805, size: 64, offset: 1536)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1014, file: !1011, line: 473, baseType: !805, size: 64, offset: 1600)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1014, file: !1011, line: 474, baseType: !805, size: 64, offset: 1664)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1014, file: !1011, line: 475, baseType: !805, size: 64, offset: 1728)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1014, file: !1011, line: 477, baseType: !1087, offset: 1792)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1014, file: !1011, line: 478, baseType: !805, size: 64, offset: 1792)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1014, file: !1011, line: 478, baseType: !805, size: 64, offset: 1856)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1014, file: !1011, line: 478, baseType: !805, size: 64, offset: 1920)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1014, file: !1011, line: 478, baseType: !805, size: 64, offset: 1984)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1014, file: !1011, line: 479, baseType: !805, size: 64, offset: 2048)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1014, file: !1011, line: 479, baseType: !805, size: 64, offset: 2112)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1014, file: !1011, line: 479, baseType: !805, size: 64, offset: 2176)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1014, file: !1011, line: 480, baseType: !805, size: 64, offset: 2240)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1014, file: !1011, line: 480, baseType: !805, size: 64, offset: 2304)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1014, file: !1011, line: 480, baseType: !805, size: 64, offset: 2368)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1014, file: !1011, line: 480, baseType: !805, size: 64, offset: 2432)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1014, file: !1011, line: 482, baseType: !1125, size: 2816, offset: 2496)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 2816, elements: !1126)
!1126 = !{!1127}
!1127 = !DISubrange(count: 44)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1014, file: !1011, line: 488, baseType: !1129, size: 256, offset: 5312)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1130, line: 60, size: 256, elements: !1131)
!1130 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1131 = !{!1132}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1129, file: !1130, line: 61, baseType: !1133, size: 256)
!1133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1055, size: 256, elements: !243)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1014, file: !1011, line: 490, baseType: !1135, size: 64, offset: 5568)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1011, line: 490, flags: DIFlagFwdDecl)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1014, file: !1011, line: 493, baseType: !1138, size: 896, offset: 5632)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1139, line: 53, baseType: !1140)
!1139 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1139, line: 13, size: 896, elements: !1141)
!1141 = !{!1142, !1143, !1144, !1145, !1148, !1149, !1156, !1157, !1161, !1162, !1163}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1140, file: !1139, line: 18, baseType: !41, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1140, file: !1139, line: 28, baseType: !1057, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1140, file: !1139, line: 31, baseType: !1095, size: 256, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1140, file: !1139, line: 32, baseType: !1146, size: 64, offset: 384)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1139, line: 32, flags: DIFlagFwdDecl)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1140, file: !1139, line: 37, baseType: !35, size: 16, offset: 448)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1140, file: !1139, line: 40, baseType: !1150, size: 192, offset: 512)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1151, line: 53, size: 192, elements: !1152)
!1151 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1152 = !{!1153, !1154, !1155}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1150, file: !1151, line: 54, baseType: !1055, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1150, file: !1151, line: 55, baseType: !1087, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1150, file: !1151, line: 59, baseType: !861, size: 128, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1140, file: !1139, line: 41, baseType: !48, size: 64, offset: 704)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1140, file: !1139, line: 42, baseType: !1158, size: 64, offset: 768)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1160)
!1160 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1139, line: 42, flags: DIFlagFwdDecl)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1140, file: !1139, line: 44, baseType: !827, size: 32, offset: 832)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1140, file: !1139, line: 50, baseType: !31, size: 16, offset: 864)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1140, file: !1139, line: 51, baseType: !1164, size: 16, offset: 880)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !32, line: 18, baseType: !1165)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !34, line: 23, baseType: !1166)
!1166 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1014, file: !1011, line: 495, baseType: !805, size: 64, offset: 6528)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1014, file: !1011, line: 497, baseType: !1169, size: 64, offset: 6592)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1011, line: 381, size: 384, elements: !1171)
!1171 = !{!1172, !1173, !1179}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1170, file: !1011, line: 382, baseType: !827, size: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1170, file: !1011, line: 383, baseType: !1174, size: 128, offset: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1011, line: 376, size: 128, elements: !1175)
!1175 = !{!1176, !1177}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1174, file: !1011, line: 377, baseType: !807, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1174, file: !1011, line: 378, baseType: !1178, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1170, file: !1011, line: 384, baseType: !1180, size: 192, offset: 192)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1181, line: 26, size: 192, elements: !1182)
!1181 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1182 = !{!1183, !1184}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1180, file: !1181, line: 27, baseType: !7, size: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1180, file: !1181, line: 28, baseType: !1185, size: 128, offset: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1186, line: 43, size: 128, elements: !1187)
!1186 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1187 = !{!1188, !1189}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1185, file: !1186, line: 44, baseType: !931)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1185, file: !1186, line: 45, baseType: !861, size: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1014, file: !1011, line: 500, baseType: !1087, offset: 6656)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1014, file: !1011, line: 501, baseType: !1192, size: 64, offset: 6656)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1011, line: 387, flags: DIFlagFwdDecl)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1014, file: !1011, line: 516, baseType: !1195, size: 64, offset: 6720)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1197, line: 18, flags: DIFlagFwdDecl)
!1197 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1014, file: !1011, line: 519, baseType: !1051, size: 64, offset: 6784)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1014, file: !1011, line: 521, baseType: !1200, size: 64, offset: 6848)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1011, line: 521, flags: DIFlagFwdDecl)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1014, file: !1011, line: 545, baseType: !827, size: 32, offset: 6912)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1014, file: !1011, line: 548, baseType: !1204, size: 8, offset: 6944)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !828, line: 30, baseType: !1205)
!1205 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1014, file: !1011, line: 550, baseType: !1207, offset: 6952)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1208, line: 142, elements: !874)
!1208 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1014, file: !1011, line: 554, baseType: !1210, size: 256, offset: 6976)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1211, line: 102, size: 256, elements: !1212)
!1211 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1212 = !{!1213, !1214, !1215}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1210, file: !1211, line: 103, baseType: !1055, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1210, file: !1211, line: 104, baseType: !861, size: 128, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1210, file: !1211, line: 105, baseType: !1216, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1211, line: 21, baseType: !1217)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null, !1220}
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1014, file: !1011, line: 557, baseType: !38, size: 32, offset: 7232)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1010, file: !1011, line: 565, baseType: !1223, offset: 7296)
!1223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, elements: !1224)
!1224 = !{!1225}
!1225 = !DISubrange(count: -1)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !808, file: !809, line: 758, baseType: !1009, size: 64, offset: 3968)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !808, file: !809, line: 761, baseType: !1228, size: 320, offset: 4032)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1130, line: 34, size: 320, elements: !1229)
!1229 = !{!1230, !1231}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1228, file: !1130, line: 35, baseType: !41, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1228, file: !1130, line: 36, baseType: !1232, size: 256, offset: 64)
!1232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1017, size: 256, elements: !243)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !808, file: !809, line: 766, baseType: !832, size: 32, offset: 4352)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !808, file: !809, line: 767, baseType: !832, size: 32, offset: 4384)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !808, file: !809, line: 768, baseType: !832, size: 32, offset: 4416)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !808, file: !809, line: 770, baseType: !832, size: 32, offset: 4448)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !808, file: !809, line: 772, baseType: !805, size: 64, offset: 4480)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !808, file: !809, line: 775, baseType: !7, size: 32, offset: 4544)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !808, file: !809, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !808, file: !809, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !808, file: !809, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !808, file: !809, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !808, file: !809, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !808, file: !809, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !808, file: !809, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !808, file: !809, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !808, file: !809, line: 831, baseType: !805, size: 64, offset: 4672)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !808, file: !809, line: 833, baseType: !1249, size: 384, offset: 4736)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !18, line: 25, size: 384, elements: !1250)
!1250 = !{!1251, !1256}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1249, file: !18, line: 26, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!819, !1255}
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, scope: !1249, file: !18, line: 27, baseType: !1257, size: 320, offset: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1249, file: !18, line: 27, size: 320, elements: !1258)
!1258 = !{!1259, !1269, !1296}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1257, file: !18, line: 36, baseType: !1260, size: 320)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !18, line: 29, size: 320, elements: !1261)
!1261 = !{!1262, !1264, !1265, !1266, !1267, !1268}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1260, file: !18, line: 30, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1260, file: !18, line: 31, baseType: !38, size: 32, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1260, file: !18, line: 32, baseType: !38, size: 32, offset: 96)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1260, file: !18, line: 33, baseType: !38, size: 32, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1260, file: !18, line: 34, baseType: !41, size: 64, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1260, file: !18, line: 35, baseType: !1263, size: 64, offset: 256)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1257, file: !18, line: 46, baseType: !1270, size: 192)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !18, line: 38, size: 192, elements: !1271)
!1271 = !{!1272, !1273, !1274, !1295}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1270, file: !18, line: 39, baseType: !954, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1270, file: !18, line: 40, baseType: !17, size: 32, offset: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !18, line: 41, baseType: !1275, size: 64, offset: 64)
!1275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1270, file: !18, line: 41, size: 64, elements: !1276)
!1276 = !{!1277, !1285}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1275, file: !18, line: 42, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1280, line: 7, size: 128, elements: !1281)
!1280 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1281 = !{!1282, !1284}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1279, file: !1280, line: 8, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !956, line: 93, baseType: !898)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1279, file: !1280, line: 9, baseType: !898, size: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1275, file: !18, line: 43, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1288, line: 7, size: 64, elements: !1289)
!1288 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1289 = !{!1290, !1294}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1287, file: !1288, line: 8, baseType: !1291, size: 32)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1288, line: 5, baseType: !1292)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !32, line: 20, baseType: !1293)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !34, line: 26, baseType: !832)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1287, file: !1288, line: 9, baseType: !1292, size: 32, offset: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1270, file: !18, line: 45, baseType: !41, size: 64, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1257, file: !18, line: 54, baseType: !1297, size: 256)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !18, line: 48, size: 256, elements: !1298)
!1298 = !{!1299, !1302, !1303, !1304, !1305}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1297, file: !18, line: 49, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !18, line: 14, flags: DIFlagFwdDecl)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1297, file: !18, line: 50, baseType: !832, size: 32, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1297, file: !18, line: 51, baseType: !832, size: 32, offset: 96)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1297, file: !18, line: 52, baseType: !805, size: 64, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1297, file: !18, line: 53, baseType: !805, size: 64, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !808, file: !809, line: 835, baseType: !1307, size: 32, offset: 5120)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !828, line: 22, baseType: !1308)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !956, line: 28, baseType: !832)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !808, file: !809, line: 836, baseType: !1307, size: 32, offset: 5152)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !808, file: !809, line: 840, baseType: !805, size: 64, offset: 5184)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !808, file: !809, line: 849, baseType: !807, size: 64, offset: 5248)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !808, file: !809, line: 852, baseType: !807, size: 64, offset: 5312)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !808, file: !809, line: 857, baseType: !861, size: 128, offset: 5376)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !808, file: !809, line: 858, baseType: !861, size: 128, offset: 5504)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !808, file: !809, line: 859, baseType: !807, size: 64, offset: 5632)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !808, file: !809, line: 867, baseType: !861, size: 128, offset: 5696)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !808, file: !809, line: 868, baseType: !861, size: 128, offset: 5824)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !808, file: !809, line: 871, baseType: !1319, size: 64, offset: 5952)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1321, line: 59, size: 768, elements: !1322)
!1321 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!1322 = !{!1323, !1324, !1325, !1326, !1337, !1338, !1345, !1354}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1320, file: !1321, line: 61, baseType: !822, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1320, file: !1321, line: 62, baseType: !7, size: 32, offset: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1320, file: !1321, line: 63, baseType: !1087, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1320, file: !1321, line: 65, baseType: !1327, size: 256, offset: 64)
!1327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1328, size: 256, elements: !243)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !828, line: 182, size: 64, elements: !1329)
!1329 = !{!1330}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1328, file: !828, line: 183, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !828, line: 186, size: 128, elements: !1333)
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1332, file: !828, line: 187, baseType: !1331, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1332, file: !828, line: 187, baseType: !1336, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1320, file: !1321, line: 66, baseType: !1328, size: 64, offset: 320)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1320, file: !1321, line: 68, baseType: !1339, size: 128, offset: 384)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1340, line: 40, baseType: !1341)
!1340 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1340, line: 36, size: 128, elements: !1342)
!1342 = !{!1343, !1344}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1341, file: !1340, line: 37, baseType: !1087)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1341, file: !1340, line: 38, baseType: !861, size: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1320, file: !1321, line: 69, baseType: !1346, size: 128, align: 64, offset: 512)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !828, line: 216, size: 128, align: 64, elements: !1347)
!1347 = !{!1348, !1350}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1346, file: !828, line: 217, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1346, file: !828, line: 218, baseType: !1351, size: 64, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{null, !1349}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1320, file: !1321, line: 70, baseType: !1355, size: 128, offset: 640)
!1355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1356, size: 128, elements: !1002)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1321, line: 54, size: 128, elements: !1357)
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1356, file: !1321, line: 55, baseType: !832, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1356, file: !1321, line: 56, baseType: !1360, size: 64, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1321, line: 56, flags: DIFlagFwdDecl)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !808, file: !809, line: 872, baseType: !1363, size: 512, offset: 6016)
!1363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1332, size: 512, elements: !243)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !808, file: !809, line: 873, baseType: !861, size: 128, offset: 6528)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !808, file: !809, line: 874, baseType: !861, size: 128, offset: 6656)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !808, file: !809, line: 876, baseType: !1367, size: 64, offset: 6784)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !808, file: !809, line: 879, baseType: !1369, size: 64, offset: 6848)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !808, file: !809, line: 882, baseType: !1369, size: 64, offset: 6912)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !808, file: !809, line: 884, baseType: !41, size: 64, offset: 6976)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !808, file: !809, line: 885, baseType: !41, size: 64, offset: 7040)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !808, file: !809, line: 890, baseType: !41, size: 64, offset: 7104)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !808, file: !809, line: 891, baseType: !1375, size: 128, offset: 7168)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !809, line: 242, size: 128, elements: !1376)
!1376 = !{!1377, !1378, !1379}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1375, file: !809, line: 244, baseType: !41, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1375, file: !809, line: 245, baseType: !41, size: 64, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1375, file: !809, line: 246, baseType: !931, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !808, file: !809, line: 900, baseType: !805, size: 64, offset: 7296)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !808, file: !809, line: 901, baseType: !805, size: 64, offset: 7360)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !808, file: !809, line: 904, baseType: !41, size: 64, offset: 7424)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !808, file: !809, line: 907, baseType: !41, size: 64, offset: 7488)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !808, file: !809, line: 910, baseType: !805, size: 64, offset: 7552)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !808, file: !809, line: 911, baseType: !805, size: 64, offset: 7616)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !808, file: !809, line: 914, baseType: !1387, size: 640, offset: 7680)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1388, line: 123, size: 640, elements: !1389)
!1388 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1389 = !{!1390, !1396, !1397}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1387, file: !1388, line: 124, baseType: !1391, size: 576)
!1391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1392, size: 576, elements: !75)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1388, line: 108, size: 192, elements: !1393)
!1393 = !{!1394, !1395}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1392, file: !1388, line: 109, baseType: !41, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1392, file: !1388, line: 110, baseType: !969, size: 128, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1387, file: !1388, line: 125, baseType: !7, size: 32, offset: 576)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1387, file: !1388, line: 126, baseType: !7, size: 32, offset: 608)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !808, file: !809, line: 917, baseType: !1399, size: 192, offset: 8320)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1388, line: 134, size: 192, elements: !1400)
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1399, file: !1388, line: 135, baseType: !1346, size: 128, align: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1399, file: !1388, line: 136, baseType: !7, size: 32, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !808, file: !809, line: 923, baseType: !1404, size: 64, offset: 8512)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1406)
!1406 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !809, line: 923, flags: DIFlagFwdDecl)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !808, file: !809, line: 926, baseType: !1404, size: 64, offset: 8576)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !808, file: !809, line: 929, baseType: !1404, size: 64, offset: 8640)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !808, file: !809, line: 933, baseType: !1410, size: 64, offset: 8704)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !809, line: 933, flags: DIFlagFwdDecl)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !808, file: !809, line: 943, baseType: !1413, size: 128, offset: 8768)
!1413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !1414)
!1414 = !{!1415}
!1415 = !DISubrange(count: 16)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !808, file: !809, line: 945, baseType: !1417, size: 64, offset: 8896)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !809, line: 49, flags: DIFlagFwdDecl)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !808, file: !809, line: 956, baseType: !1420, size: 64, offset: 8960)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !809, line: 45, flags: DIFlagFwdDecl)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !808, file: !809, line: 959, baseType: !1423, size: 64, offset: 9024)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !809, line: 959, flags: DIFlagFwdDecl)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !808, file: !809, line: 962, baseType: !1426, size: 64, offset: 9088)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !809, line: 66, flags: DIFlagFwdDecl)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !808, file: !809, line: 966, baseType: !1429, size: 64, offset: 9152)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !809, line: 50, flags: DIFlagFwdDecl)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !808, file: !809, line: 969, baseType: !1432, size: 64, offset: 9216)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1388, line: 223, flags: DIFlagFwdDecl)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !808, file: !809, line: 970, baseType: !1435, size: 64, offset: 9280)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !809, line: 62, flags: DIFlagFwdDecl)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !808, file: !809, line: 971, baseType: !1438, size: 64, offset: 9344)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1439, line: 25, baseType: !1440)
!1439 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1439, line: 23, size: 64, elements: !1441)
!1441 = !{!1442}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1440, file: !1439, line: 24, baseType: !1001, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !808, file: !809, line: 972, baseType: !1438, size: 64, offset: 9408)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !808, file: !809, line: 974, baseType: !1438, size: 64, offset: 9472)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !808, file: !809, line: 975, baseType: !1446, size: 192, offset: 9536)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1447, line: 30, size: 192, elements: !1448)
!1447 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1446, file: !1447, line: 31, baseType: !861, size: 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1446, file: !1447, line: 32, baseType: !1438, size: 64, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !808, file: !809, line: 976, baseType: !805, size: 64, offset: 9728)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !808, file: !809, line: 977, baseType: !1453, size: 64, offset: 9792)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !828, line: 55, baseType: !1454)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !956, line: 72, baseType: !1455)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !956, line: 16, baseType: !805)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !808, file: !809, line: 978, baseType: !7, size: 32, offset: 9856)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !808, file: !809, line: 980, baseType: !1349, size: 64, offset: 9920)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !808, file: !809, line: 989, baseType: !1459, size: 128, offset: 9984)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1460, line: 35, size: 128, elements: !1461)
!1460 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1461 = !{!1462, !1463, !1464}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1459, file: !1460, line: 36, baseType: !832, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1459, file: !1460, line: 37, baseType: !827, size: 32, offset: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1459, file: !1460, line: 38, baseType: !1465, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1460, line: 23, flags: DIFlagFwdDecl)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !808, file: !809, line: 992, baseType: !41, size: 64, offset: 10112)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !808, file: !809, line: 993, baseType: !41, size: 64, offset: 10176)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !808, file: !809, line: 996, baseType: !1087, offset: 10240)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !808, file: !809, line: 999, baseType: !931, offset: 10240)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !808, file: !809, line: 1001, baseType: !1472, size: 64, offset: 10240)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !809, line: 636, size: 64, elements: !1473)
!1473 = !{!1474}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1472, file: !809, line: 637, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !808, file: !809, line: 1005, baseType: !972, size: 128, offset: 10304)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !808, file: !809, line: 1007, baseType: !807, size: 64, offset: 10432)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !808, file: !809, line: 1009, baseType: !1479, size: 64, offset: 10496)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !809, line: 1009, flags: DIFlagFwdDecl)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !808, file: !809, line: 1043, baseType: !48, size: 64, offset: 10560)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !808, file: !809, line: 1046, baseType: !1483, size: 64, offset: 10624)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !809, line: 41, flags: DIFlagFwdDecl)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !808, file: !809, line: 1050, baseType: !1486, size: 64, offset: 10688)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !809, line: 42, flags: DIFlagFwdDecl)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !808, file: !809, line: 1054, baseType: !1489, size: 64, offset: 10752)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !809, line: 55, flags: DIFlagFwdDecl)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !808, file: !809, line: 1056, baseType: !1492, size: 64, offset: 10816)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !809, line: 40, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !808, file: !809, line: 1058, baseType: !1495, size: 64, offset: 10880)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !809, line: 47, flags: DIFlagFwdDecl)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !808, file: !809, line: 1061, baseType: !1498, size: 64, offset: 10944)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !809, line: 43, flags: DIFlagFwdDecl)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !808, file: !809, line: 1064, baseType: !805, size: 64, offset: 11008)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !808, file: !809, line: 1065, baseType: !1502, size: 64, offset: 11072)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1447, line: 14, baseType: !1504)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1447, line: 12, size: 384, elements: !1505)
!1505 = !{!1506}
!1506 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !1447, line: 13, baseType: !1507, size: 384)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1504, file: !1447, line: 13, size: 384, elements: !1508)
!1508 = !{!1509, !1510, !1511, !1512}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1507, file: !1447, line: 13, baseType: !832, size: 32)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1507, file: !1447, line: 13, baseType: !832, size: 32, offset: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1507, file: !1447, line: 13, baseType: !832, size: 32, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1507, file: !1447, line: 13, baseType: !1513, size: 256, offset: 128)
!1513 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1514, line: 32, size: 256, elements: !1515)
!1514 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1515 = !{!1516, !1522, !1535, !1541, !1551, !1571, !1576}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1513, file: !1514, line: 37, baseType: !1517, size: 64)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1513, file: !1514, line: 34, size: 64, elements: !1518)
!1518 = !{!1519, !1520}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1517, file: !1514, line: 35, baseType: !1308, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1517, file: !1514, line: 36, baseType: !1521, size: 32, offset: 32)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !956, line: 49, baseType: !7)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1513, file: !1514, line: 45, baseType: !1523, size: 192)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1513, file: !1514, line: 40, size: 192, elements: !1524)
!1524 = !{!1525, !1527, !1528, !1534}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1523, file: !1514, line: 41, baseType: !1526, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !956, line: 95, baseType: !832)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1523, file: !1514, line: 42, baseType: !832, size: 32, offset: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1523, file: !1514, line: 43, baseType: !1529, size: 64, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1514, line: 11, baseType: !1530)
!1530 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1514, line: 8, size: 64, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1530, file: !1514, line: 9, baseType: !832, size: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1530, file: !1514, line: 10, baseType: !48, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1523, file: !1514, line: 44, baseType: !832, size: 32, offset: 128)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1513, file: !1514, line: 52, baseType: !1536, size: 128)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1513, file: !1514, line: 48, size: 128, elements: !1537)
!1537 = !{!1538, !1539, !1540}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1536, file: !1514, line: 49, baseType: !1308, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1536, file: !1514, line: 50, baseType: !1521, size: 32, offset: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1536, file: !1514, line: 51, baseType: !1529, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1513, file: !1514, line: 61, baseType: !1542, size: 256)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1513, file: !1514, line: 55, size: 256, elements: !1543)
!1543 = !{!1544, !1545, !1546, !1547, !1550}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1542, file: !1514, line: 56, baseType: !1308, size: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1542, file: !1514, line: 57, baseType: !1521, size: 32, offset: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1542, file: !1514, line: 58, baseType: !832, size: 32, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1542, file: !1514, line: 59, baseType: !1548, size: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !956, line: 94, baseType: !1549)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !956, line: 15, baseType: !819)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1542, file: !1514, line: 60, baseType: !1548, size: 64, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1513, file: !1514, line: 95, baseType: !1552, size: 256)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1513, file: !1514, line: 64, size: 256, elements: !1553)
!1553 = !{!1554, !1555}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1552, file: !1514, line: 65, baseType: !48, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, scope: !1552, file: !1514, line: 77, baseType: !1556, size: 192, offset: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1552, file: !1514, line: 77, size: 192, elements: !1557)
!1557 = !{!1558, !1559, !1566}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1556, file: !1514, line: 82, baseType: !1166, size: 16)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1556, file: !1514, line: 88, baseType: !1560, size: 192)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1556, file: !1514, line: 84, size: 192, elements: !1561)
!1561 = !{!1562, !1564, !1565}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1560, file: !1514, line: 85, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 64, elements: !359)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1560, file: !1514, line: 86, baseType: !48, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1560, file: !1514, line: 87, baseType: !48, size: 64, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1556, file: !1514, line: 93, baseType: !1567, size: 96)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1556, file: !1514, line: 90, size: 96, elements: !1568)
!1568 = !{!1569, !1570}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1567, file: !1514, line: 91, baseType: !1563, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1567, file: !1514, line: 92, baseType: !39, size: 32, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1513, file: !1514, line: 101, baseType: !1572, size: 128)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1513, file: !1514, line: 98, size: 128, elements: !1573)
!1573 = !{!1574, !1575}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1572, file: !1514, line: 99, baseType: !819, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1572, file: !1514, line: 100, baseType: !832, size: 32, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1513, file: !1514, line: 108, baseType: !1577, size: 128)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1513, file: !1514, line: 104, size: 128, elements: !1578)
!1578 = !{!1579, !1580, !1581}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1577, file: !1514, line: 105, baseType: !48, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1577, file: !1514, line: 106, baseType: !832, size: 32, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1577, file: !1514, line: 107, baseType: !7, size: 32, offset: 96)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !808, file: !809, line: 1067, baseType: !1583, offset: 11136)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1584, line: 12, elements: !874)
!1584 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !808, file: !809, line: 1099, baseType: !1586, size: 64, offset: 11136)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !809, line: 56, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !808, file: !809, line: 1103, baseType: !861, size: 128, offset: 11200)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !808, file: !809, line: 1104, baseType: !1590, size: 64, offset: 11328)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !809, line: 46, flags: DIFlagFwdDecl)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !808, file: !809, line: 1105, baseType: !1150, size: 192, offset: 11392)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !808, file: !809, line: 1106, baseType: !7, size: 32, offset: 11584)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !808, file: !809, line: 1109, baseType: !1595, size: 128, offset: 11648)
!1595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1596, size: 128, elements: !485)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !809, line: 51, flags: DIFlagFwdDecl)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !808, file: !809, line: 1110, baseType: !1150, size: 192, offset: 11776)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !808, file: !809, line: 1111, baseType: !861, size: 128, offset: 11968)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !808, file: !809, line: 1173, baseType: !1601, size: 64, offset: 12096)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1603, line: 62, size: 256, align: 256, elements: !1604)
!1603 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1604 = !{!1605, !1606, !1607, !1612}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1602, file: !1603, line: 75, baseType: !39, size: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1602, file: !1603, line: 90, baseType: !39, size: 32, offset: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1602, file: !1603, line: 124, baseType: !1608, size: 64, offset: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1602, file: !1603, line: 109, size: 64, elements: !1609)
!1609 = !{!1610, !1611}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1608, file: !1603, line: 110, baseType: !42, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1608, file: !1603, line: 112, baseType: !42, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1602, file: !1603, line: 144, baseType: !39, size: 32, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !808, file: !809, line: 1174, baseType: !38, size: 32, offset: 12160)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !808, file: !809, line: 1179, baseType: !805, size: 64, offset: 12224)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !808, file: !809, line: 1182, baseType: !1616, size: 128, offset: 12288)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1130, line: 76, size: 128, elements: !1617)
!1617 = !{!1618, !1623, !1624}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1616, file: !1130, line: 85, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1620, line: 7, size: 64, elements: !1621)
!1620 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1621 = !{!1622}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1619, file: !1620, line: 12, baseType: !998, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1616, file: !1130, line: 88, baseType: !1204, size: 8, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1616, file: !1130, line: 95, baseType: !1204, size: 8, offset: 72)
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !808, file: !809, line: 1184, baseType: !1626, size: 128, offset: 12416)
!1626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !808, file: !809, line: 1184, size: 128, elements: !1627)
!1627 = !{!1628, !1629}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1626, file: !809, line: 1185, baseType: !822, size: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1626, file: !809, line: 1186, baseType: !1346, size: 128, align: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !808, file: !809, line: 1190, baseType: !1631, size: 64, offset: 12544)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !809, line: 53, flags: DIFlagFwdDecl)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !808, file: !809, line: 1192, baseType: !1634, size: 128, offset: 12608)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1130, line: 64, size: 128, elements: !1635)
!1635 = !{!1636, !1729, !1730}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1634, file: !1130, line: 65, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1011, line: 68, size: 512, align: 128, elements: !1639)
!1639 = !{!1640, !1641, !1721, !1728}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1638, file: !1011, line: 69, baseType: !805, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !1011, line: 77, baseType: !1642, size: 320, offset: 64)
!1642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1638, file: !1011, line: 77, size: 320, elements: !1643)
!1643 = !{!1644, !1653, !1658, !1686, !1694, !1700, !1713, !1720}
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1642, file: !1011, line: 78, baseType: !1645, size: 320)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1642, file: !1011, line: 78, size: 320, elements: !1646)
!1646 = !{!1647, !1648, !1651, !1652}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1645, file: !1011, line: 84, baseType: !861, size: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1645, file: !1011, line: 86, baseType: !1649, size: 64, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !1011, line: 26, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1645, file: !1011, line: 87, baseType: !805, size: 64, offset: 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1645, file: !1011, line: 94, baseType: !805, size: 64, offset: 256)
!1653 = !DIDerivedType(tag: DW_TAG_member, scope: !1642, file: !1011, line: 96, baseType: !1654, size: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1642, file: !1011, line: 96, size: 64, elements: !1655)
!1655 = !{!1656}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1654, file: !1011, line: 101, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !828, line: 143, baseType: !41)
!1658 = !DIDerivedType(tag: DW_TAG_member, scope: !1642, file: !1011, line: 103, baseType: !1659, size: 320)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1642, file: !1011, line: 103, size: 320, elements: !1660)
!1660 = !{!1661, !1671, !1674, !1675}
!1661 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !1011, line: 104, baseType: !1662, size: 128)
!1662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1659, file: !1011, line: 104, size: 128, elements: !1663)
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1662, file: !1011, line: 105, baseType: !861, size: 128)
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !1011, line: 106, baseType: !1666, size: 128)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1662, file: !1011, line: 106, size: 128, elements: !1667)
!1667 = !{!1668, !1669, !1670}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1666, file: !1011, line: 107, baseType: !1637, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1666, file: !1011, line: 109, baseType: !832, size: 32, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1666, file: !1011, line: 110, baseType: !832, size: 32, offset: 96)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1659, file: !1011, line: 117, baseType: !1672, size: 64, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1011, line: 117, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1659, file: !1011, line: 119, baseType: !48, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !1011, line: 120, baseType: !1676, size: 64, offset: 256)
!1676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1659, file: !1011, line: 120, size: 64, elements: !1677)
!1677 = !{!1678, !1679, !1680}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1676, file: !1011, line: 121, baseType: !48, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1676, file: !1011, line: 122, baseType: !805, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, scope: !1676, file: !1011, line: 123, baseType: !1681, size: 32)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1676, file: !1011, line: 123, size: 32, elements: !1682)
!1682 = !{!1683, !1684, !1685}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1681, file: !1011, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1681, file: !1011, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1681, file: !1011, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1642, file: !1011, line: 130, baseType: !1687, size: 192)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1642, file: !1011, line: 130, size: 192, elements: !1688)
!1688 = !{!1689, !1690, !1691, !1692, !1693}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1687, file: !1011, line: 131, baseType: !805, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1687, file: !1011, line: 134, baseType: !47, size: 8, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1687, file: !1011, line: 135, baseType: !47, size: 8, offset: 72)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1687, file: !1011, line: 136, baseType: !827, size: 32, offset: 96)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1687, file: !1011, line: 137, baseType: !7, size: 32, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, scope: !1642, file: !1011, line: 139, baseType: !1695, size: 256)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1642, file: !1011, line: 139, size: 256, elements: !1696)
!1696 = !{!1697, !1698, !1699}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1695, file: !1011, line: 140, baseType: !805, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1695, file: !1011, line: 141, baseType: !827, size: 32, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1695, file: !1011, line: 143, baseType: !861, size: 128, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, scope: !1642, file: !1011, line: 145, baseType: !1701, size: 256)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1642, file: !1011, line: 145, size: 256, elements: !1702)
!1702 = !{!1703, !1704, !1706, !1707, !1712}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1701, file: !1011, line: 146, baseType: !805, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1701, file: !1011, line: 147, baseType: !1705, size: 64, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1029, line: 509, baseType: !1637)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1701, file: !1011, line: 148, baseType: !805, size: 64, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, scope: !1701, file: !1011, line: 149, baseType: !1708, size: 64, offset: 192)
!1708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1701, file: !1011, line: 149, size: 64, elements: !1709)
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1708, file: !1011, line: 150, baseType: !1009, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1708, file: !1011, line: 151, baseType: !827, size: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1701, file: !1011, line: 156, baseType: !1087, offset: 256)
!1713 = !DIDerivedType(tag: DW_TAG_member, scope: !1642, file: !1011, line: 159, baseType: !1714, size: 128)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1642, file: !1011, line: 159, size: 128, elements: !1715)
!1715 = !{!1716, !1719}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1714, file: !1011, line: 161, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1011, line: 161, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1714, file: !1011, line: 162, baseType: !48, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1642, file: !1011, line: 176, baseType: !1346, size: 128, align: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !1011, line: 179, baseType: !1722, size: 32, offset: 384)
!1722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1638, file: !1011, line: 179, size: 32, elements: !1723)
!1723 = !{!1724, !1725, !1726, !1727}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1722, file: !1011, line: 184, baseType: !827, size: 32)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1722, file: !1011, line: 192, baseType: !7, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1722, file: !1011, line: 194, baseType: !7, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1722, file: !1011, line: 195, baseType: !832, size: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1638, file: !1011, line: 199, baseType: !827, size: 32, offset: 416)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1634, file: !1130, line: 67, baseType: !39, size: 32, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1634, file: !1130, line: 68, baseType: !39, size: 32, offset: 96)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !808, file: !809, line: 1206, baseType: !832, size: 32, offset: 12736)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !808, file: !809, line: 1207, baseType: !832, size: 32, offset: 12768)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !808, file: !809, line: 1209, baseType: !805, size: 64, offset: 12800)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !808, file: !809, line: 1219, baseType: !41, size: 64, offset: 12864)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !808, file: !809, line: 1220, baseType: !41, size: 64, offset: 12928)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !808, file: !809, line: 1317, baseType: !832, size: 32, offset: 12992)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !808, file: !809, line: 1319, baseType: !807, size: 64, offset: 13056)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !808, file: !809, line: 1322, baseType: !1739, size: 64, offset: 13120)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !809, line: 1322, flags: DIFlagFwdDecl)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !808, file: !809, line: 1326, baseType: !822, size: 32, offset: 13184)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !808, file: !809, line: 1342, baseType: !48, size: 64, offset: 13248)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !808, file: !809, line: 1343, baseType: !42, size: 64, offset: 13312)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !808, file: !809, line: 1344, baseType: !41, size: 64, offset: 13376)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !808, file: !809, line: 1345, baseType: !42, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !808, file: !809, line: 1346, baseType: !42, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !808, file: !809, line: 1347, baseType: !42, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !808, file: !809, line: 1348, baseType: !1346, size: 128, align: 64, offset: 13504)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !808, file: !809, line: 1358, baseType: !1750, size: 34816, offset: 13824)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1751, line: 485, size: 34816, elements: !1752)
!1751 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1752 = !{!1753, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1782, !1783, !1784, !1785, !1786, !1787, !1790, !1791, !1792}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1750, file: !1751, line: 487, baseType: !1754, size: 192)
!1754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1755, size: 192, elements: !75)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1756, line: 16, size: 64, elements: !1757)
!1756 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1757 = !{!1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1755, file: !1756, line: 17, baseType: !31, size: 16)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1755, file: !1756, line: 18, baseType: !31, size: 16, offset: 16)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1755, file: !1756, line: 19, baseType: !31, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1755, file: !1756, line: 19, baseType: !31, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1755, file: !1756, line: 19, baseType: !31, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1755, file: !1756, line: 19, baseType: !31, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1755, file: !1756, line: 19, baseType: !31, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1755, file: !1756, line: 20, baseType: !31, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1755, file: !1756, line: 20, baseType: !31, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1755, file: !1756, line: 20, baseType: !31, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1755, file: !1756, line: 20, baseType: !31, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1755, file: !1756, line: 20, baseType: !31, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1755, file: !1756, line: 20, baseType: !31, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1750, file: !1751, line: 491, baseType: !805, size: 64, offset: 192)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1750, file: !1751, line: 495, baseType: !35, size: 16, offset: 256)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1750, file: !1751, line: 496, baseType: !35, size: 16, offset: 272)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1750, file: !1751, line: 497, baseType: !35, size: 16, offset: 288)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1750, file: !1751, line: 498, baseType: !35, size: 16, offset: 304)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1750, file: !1751, line: 502, baseType: !805, size: 64, offset: 320)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1750, file: !1751, line: 503, baseType: !805, size: 64, offset: 384)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1750, file: !1751, line: 514, baseType: !1779, size: 256, offset: 448)
!1779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1780, size: 256, elements: !243)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1751, line: 483, flags: DIFlagFwdDecl)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1750, file: !1751, line: 516, baseType: !805, size: 64, offset: 704)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1750, file: !1751, line: 518, baseType: !805, size: 64, offset: 768)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1750, file: !1751, line: 520, baseType: !805, size: 64, offset: 832)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1750, file: !1751, line: 521, baseType: !805, size: 64, offset: 896)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1750, file: !1751, line: 522, baseType: !805, size: 64, offset: 960)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1750, file: !1751, line: 528, baseType: !1788, size: 64, offset: 1024)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1751, line: 10, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1750, file: !1751, line: 535, baseType: !805, size: 64, offset: 1088)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1750, file: !1751, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1750, file: !1751, line: 540, baseType: !1793, size: 33280, offset: 1536)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1794, line: 317, size: 33280, elements: !1795)
!1794 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1795 = !{!1796, !1797, !1798}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1793, file: !1794, line: 330, baseType: !7, size: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1793, file: !1794, line: 337, baseType: !805, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1793, file: !1794, line: 348, baseType: !1799, size: 32768, offset: 512)
!1799 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1794, line: 304, size: 32768, elements: !1800)
!1800 = !{!1801, !1814, !1855, !1905, !1922}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1799, file: !1794, line: 305, baseType: !1802, size: 896)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1794, line: 12, size: 896, elements: !1803)
!1803 = !{!1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1813}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1802, file: !1794, line: 13, baseType: !38, size: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1802, file: !1794, line: 14, baseType: !38, size: 32, offset: 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1802, file: !1794, line: 15, baseType: !38, size: 32, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1802, file: !1794, line: 16, baseType: !38, size: 32, offset: 96)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1802, file: !1794, line: 17, baseType: !38, size: 32, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1802, file: !1794, line: 18, baseType: !38, size: 32, offset: 160)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1802, file: !1794, line: 19, baseType: !38, size: 32, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1802, file: !1794, line: 22, baseType: !1812, size: 640, offset: 224)
!1812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 640, elements: !264)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1802, file: !1794, line: 25, baseType: !38, size: 32, offset: 864)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1799, file: !1794, line: 306, baseType: !1815, size: 4096, align: 128)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1794, line: 34, size: 4096, align: 128, elements: !1816)
!1816 = !{!1817, !1818, !1819, !1820, !1821, !1836, !1837, !1838, !1842, !1846, !1850}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1815, file: !1794, line: 35, baseType: !31, size: 16)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1815, file: !1794, line: 36, baseType: !31, size: 16, offset: 16)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1815, file: !1794, line: 37, baseType: !31, size: 16, offset: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1815, file: !1794, line: 38, baseType: !31, size: 16, offset: 48)
!1821 = !DIDerivedType(tag: DW_TAG_member, scope: !1815, file: !1794, line: 39, baseType: !1822, size: 128, offset: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1815, file: !1794, line: 39, size: 128, elements: !1823)
!1823 = !{!1824, !1829}
!1824 = !DIDerivedType(tag: DW_TAG_member, scope: !1822, file: !1794, line: 40, baseType: !1825, size: 128)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1822, file: !1794, line: 40, size: 128, elements: !1826)
!1826 = !{!1827, !1828}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1825, file: !1794, line: 41, baseType: !41, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1825, file: !1794, line: 42, baseType: !41, size: 64, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, scope: !1822, file: !1794, line: 44, baseType: !1830, size: 128)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1822, file: !1794, line: 44, size: 128, elements: !1831)
!1831 = !{!1832, !1833, !1834, !1835}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1830, file: !1794, line: 45, baseType: !38, size: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1830, file: !1794, line: 46, baseType: !38, size: 32, offset: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1830, file: !1794, line: 47, baseType: !38, size: 32, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1830, file: !1794, line: 48, baseType: !38, size: 32, offset: 96)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1815, file: !1794, line: 51, baseType: !38, size: 32, offset: 192)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1815, file: !1794, line: 52, baseType: !38, size: 32, offset: 224)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1815, file: !1794, line: 55, baseType: !1839, size: 1024, offset: 256)
!1839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 1024, elements: !1840)
!1840 = !{!1841}
!1841 = !DISubrange(count: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1815, file: !1794, line: 58, baseType: !1843, size: 2048, offset: 1280)
!1843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2048, elements: !1844)
!1844 = !{!1845}
!1845 = !DISubrange(count: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1815, file: !1794, line: 60, baseType: !1847, size: 384, offset: 3328)
!1847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 384, elements: !1848)
!1848 = !{!1849}
!1849 = !DISubrange(count: 12)
!1850 = !DIDerivedType(tag: DW_TAG_member, scope: !1815, file: !1794, line: 62, baseType: !1851, size: 384, offset: 3712)
!1851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1815, file: !1794, line: 62, size: 384, elements: !1852)
!1852 = !{!1853, !1854}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1851, file: !1794, line: 63, baseType: !1847, size: 384)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1851, file: !1794, line: 64, baseType: !1847, size: 384)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1799, file: !1794, line: 307, baseType: !1856, size: 1088)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1794, line: 79, size: 1088, elements: !1857)
!1857 = !{!1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1904}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1856, file: !1794, line: 80, baseType: !38, size: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1856, file: !1794, line: 81, baseType: !38, size: 32, offset: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1856, file: !1794, line: 82, baseType: !38, size: 32, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1856, file: !1794, line: 83, baseType: !38, size: 32, offset: 96)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1856, file: !1794, line: 84, baseType: !38, size: 32, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1856, file: !1794, line: 85, baseType: !38, size: 32, offset: 160)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1856, file: !1794, line: 86, baseType: !38, size: 32, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1856, file: !1794, line: 88, baseType: !1812, size: 640, offset: 224)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1856, file: !1794, line: 89, baseType: !45, size: 8, offset: 864)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1856, file: !1794, line: 90, baseType: !45, size: 8, offset: 872)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1856, file: !1794, line: 91, baseType: !45, size: 8, offset: 880)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1856, file: !1794, line: 92, baseType: !45, size: 8, offset: 888)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1856, file: !1794, line: 93, baseType: !45, size: 8, offset: 896)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1856, file: !1794, line: 94, baseType: !45, size: 8, offset: 904)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1856, file: !1794, line: 95, baseType: !1873, size: 64, offset: 960)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1875, line: 11, size: 128, elements: !1876)
!1875 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1876 = !{!1877, !1878}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1874, file: !1875, line: 12, baseType: !819, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1874, file: !1875, line: 13, baseType: !1879, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1881, line: 56, size: 1344, elements: !1882)
!1881 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1882 = !{!1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1880, file: !1881, line: 61, baseType: !805, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1880, file: !1881, line: 62, baseType: !805, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1880, file: !1881, line: 63, baseType: !805, size: 64, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1880, file: !1881, line: 64, baseType: !805, size: 64, offset: 192)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1880, file: !1881, line: 65, baseType: !805, size: 64, offset: 256)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1880, file: !1881, line: 66, baseType: !805, size: 64, offset: 320)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1880, file: !1881, line: 68, baseType: !805, size: 64, offset: 384)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1880, file: !1881, line: 69, baseType: !805, size: 64, offset: 448)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1880, file: !1881, line: 70, baseType: !805, size: 64, offset: 512)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1880, file: !1881, line: 71, baseType: !805, size: 64, offset: 576)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1880, file: !1881, line: 72, baseType: !805, size: 64, offset: 640)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1880, file: !1881, line: 73, baseType: !805, size: 64, offset: 704)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1880, file: !1881, line: 74, baseType: !805, size: 64, offset: 768)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1880, file: !1881, line: 75, baseType: !805, size: 64, offset: 832)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1880, file: !1881, line: 76, baseType: !805, size: 64, offset: 896)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1880, file: !1881, line: 81, baseType: !805, size: 64, offset: 960)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1880, file: !1881, line: 83, baseType: !805, size: 64, offset: 1024)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1880, file: !1881, line: 84, baseType: !805, size: 64, offset: 1088)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1880, file: !1881, line: 85, baseType: !805, size: 64, offset: 1152)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1880, file: !1881, line: 86, baseType: !805, size: 64, offset: 1216)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1880, file: !1881, line: 87, baseType: !805, size: 64, offset: 1280)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1856, file: !1794, line: 96, baseType: !38, size: 32, offset: 1024)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1799, file: !1794, line: 308, baseType: !1906, size: 4608, align: 512)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1794, line: 289, size: 4608, align: 512, elements: !1907)
!1907 = !{!1908, !1909, !1918}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1906, file: !1794, line: 290, baseType: !1815, size: 4096, align: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1906, file: !1794, line: 291, baseType: !1910, size: 512, offset: 4096)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1794, line: 268, size: 512, elements: !1911)
!1911 = !{!1912, !1913, !1914}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1910, file: !1794, line: 269, baseType: !41, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1910, file: !1794, line: 270, baseType: !41, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1910, file: !1794, line: 271, baseType: !1915, size: 384, offset: 128)
!1915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 384, elements: !1916)
!1916 = !{!1917}
!1917 = !DISubrange(count: 6)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1906, file: !1794, line: 292, baseType: !1919, offset: 4608)
!1919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, elements: !1920)
!1920 = !{!1921}
!1921 = !DISubrange(count: 0)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1799, file: !1794, line: 309, baseType: !1923, size: 32768)
!1923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32768, elements: !1924)
!1924 = !{!1925}
!1925 = !DISubrange(count: 4096)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !828, line: 148, baseType: !7)
!1927 = !{!0}
!1928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1929, size: 72, elements: !397)
!1929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!1930 = !{!"rsp"}
!1931 = !{i32 7, !"Dwarf Version", i32 4}
!1932 = !{i32 2, !"Debug Info Version", i32 3}
!1933 = !{i32 1, !"wchar_size", i32 2}
!1934 = !{i32 1, !"Code Model", i32 2}
!1935 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!1936 = distinct !DISubprogram(name: "acpi_ds_auto_serialize_method", scope: !3, file: !3, line: 55, type: !1937, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !874)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!36, !49, !53}
!1939 = !DILocalVariable(name: "node", arg: 1, scope: !1936, file: !3, line: 55, type: !49)
!1940 = !DILocation(line: 55, column: 59, scope: !1936)
!1941 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !1936, file: !3, line: 56, type: !53)
!1942 = !DILocation(line: 56, column: 37, scope: !1936)
!1943 = !DILocalVariable(name: "status", scope: !1936, file: !3, line: 58, type: !36)
!1944 = !DILocation(line: 58, column: 14, scope: !1936)
!1945 = !DILocalVariable(name: "op", scope: !1936, file: !3, line: 59, type: !183)
!1946 = !DILocation(line: 59, column: 27, scope: !1936)
!1947 = !DILocalVariable(name: "walk_state", scope: !1936, file: !3, line: 60, type: !148)
!1948 = !DILocation(line: 60, column: 26, scope: !1936)
!1949 = !DILocation(line: 70, column: 39, scope: !1936)
!1950 = !DILocation(line: 70, column: 49, scope: !1936)
!1951 = !DILocation(line: 70, column: 56, scope: !1936)
!1952 = !DILocation(line: 70, column: 7, scope: !1936)
!1953 = !DILocation(line: 70, column: 5, scope: !1936)
!1954 = !DILocation(line: 71, column: 7, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 71, column: 6)
!1956 = !DILocation(line: 71, column: 6, scope: !1936)
!1957 = !DILocation(line: 72, column: 3, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 71, column: 11)
!1959 = !DILocation(line: 75, column: 19, scope: !1936)
!1960 = !DILocation(line: 75, column: 23, scope: !1936)
!1961 = !DILocation(line: 75, column: 29, scope: !1936)
!1962 = !DILocation(line: 75, column: 34, scope: !1936)
!1963 = !DILocation(line: 75, column: 2, scope: !1936)
!1964 = !DILocation(line: 76, column: 20, scope: !1936)
!1965 = !DILocation(line: 76, column: 2, scope: !1936)
!1966 = !DILocation(line: 76, column: 6, scope: !1936)
!1967 = !DILocation(line: 76, column: 13, scope: !1936)
!1968 = !DILocation(line: 76, column: 18, scope: !1936)
!1969 = !DILocation(line: 81, column: 32, scope: !1936)
!1970 = !DILocation(line: 81, column: 38, scope: !1936)
!1971 = !DILocation(line: 81, column: 6, scope: !1936)
!1972 = !DILocation(line: 80, column: 13, scope: !1936)
!1973 = !DILocation(line: 82, column: 7, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 82, column: 6)
!1975 = !DILocation(line: 82, column: 6, scope: !1936)
!1976 = !DILocation(line: 83, column: 19, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 82, column: 19)
!1978 = !DILocation(line: 83, column: 3, scope: !1977)
!1979 = !DILocation(line: 84, column: 3, scope: !1977)
!1980 = !DILocation(line: 87, column: 33, scope: !1936)
!1981 = !DILocation(line: 87, column: 45, scope: !1936)
!1982 = !DILocation(line: 87, column: 49, scope: !1936)
!1983 = !DILocation(line: 88, column: 12, scope: !1936)
!1984 = !DILocation(line: 88, column: 22, scope: !1936)
!1985 = !DILocation(line: 88, column: 29, scope: !1936)
!1986 = !DILocation(line: 89, column: 12, scope: !1936)
!1987 = !DILocation(line: 89, column: 22, scope: !1936)
!1988 = !DILocation(line: 89, column: 29, scope: !1936)
!1989 = !DILocation(line: 87, column: 11, scope: !1936)
!1990 = !DILocation(line: 87, column: 9, scope: !1936)
!1991 = !DILocation(line: 90, column: 6, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 90, column: 6)
!1993 = !DILocation(line: 90, column: 6, scope: !1936)
!1994 = !DILocation(line: 91, column: 29, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 90, column: 28)
!1996 = !DILocation(line: 91, column: 3, scope: !1995)
!1997 = !DILocation(line: 92, column: 19, scope: !1995)
!1998 = !DILocation(line: 92, column: 3, scope: !1995)
!1999 = !DILocation(line: 93, column: 3, scope: !1995)
!2000 = !DILocation(line: 96, column: 2, scope: !1936)
!2001 = !DILocation(line: 96, column: 14, scope: !1936)
!2002 = !DILocation(line: 96, column: 34, scope: !1936)
!2003 = !DILocation(line: 100, column: 29, scope: !1936)
!2004 = !DILocation(line: 100, column: 11, scope: !1936)
!2005 = !DILocation(line: 100, column: 9, scope: !1936)
!2006 = !DILocation(line: 102, column: 28, scope: !1936)
!2007 = !DILocation(line: 102, column: 2, scope: !1936)
!2008 = !DILocation(line: 103, column: 2, scope: !1936)
!2009 = !DILocation(line: 104, column: 1, scope: !1936)
!2010 = distinct !DISubprogram(name: "acpi_ds_detect_named_opcodes", scope: !3, file: !3, line: 122, type: !434, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !874)
!2011 = !DILocalVariable(name: "walk_state", arg: 1, scope: !2010, file: !3, line: 122, type: !148)
!2012 = !DILocation(line: 122, column: 54, scope: !2010)
!2013 = !DILocalVariable(name: "out_op", arg: 2, scope: !2010, file: !3, line: 123, type: !436)
!2014 = !DILocation(line: 123, column: 35, scope: !2010)
!2015 = !DILocation(line: 131, column: 7, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 130, column: 6)
!2017 = !DILocation(line: 131, column: 19, scope: !2016)
!2018 = !DILocation(line: 132, column: 7, scope: !2016)
!2019 = !DILocation(line: 132, column: 13, scope: !2016)
!2020 = !DILocation(line: 130, column: 6, scope: !2010)
!2021 = !DILocation(line: 133, column: 3, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 132, column: 54)
!2023 = !DILocation(line: 146, column: 2, scope: !2010)
!2024 = !DILocation(line: 146, column: 14, scope: !2010)
!2025 = !DILocation(line: 146, column: 27, scope: !2010)
!2026 = !DILocation(line: 146, column: 34, scope: !2010)
!2027 = !DILocation(line: 146, column: 45, scope: !2010)
!2028 = !DILocation(line: 147, column: 2, scope: !2010)
!2029 = !DILocation(line: 147, column: 14, scope: !2010)
!2030 = !DILocation(line: 147, column: 27, scope: !2010)
!2031 = !DILocation(line: 147, column: 34, scope: !2010)
!2032 = !DILocation(line: 147, column: 45, scope: !2010)
!2033 = !DILocation(line: 158, column: 2, scope: !2010)
!2034 = !DILocation(line: 159, column: 1, scope: !2010)
!2035 = distinct !DISubprogram(name: "acpi_ds_method_error", scope: !3, file: !3, line: 178, type: !2036, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !874)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!36, !36, !148}
!2038 = !DILocalVariable(name: "status", arg: 1, scope: !2035, file: !3, line: 178, type: !36)
!2039 = !DILocation(line: 178, column: 34, scope: !2035)
!2040 = !DILocalVariable(name: "walk_state", arg: 2, scope: !2035, file: !3, line: 178, type: !148)
!2041 = !DILocation(line: 178, column: 66, scope: !2035)
!2042 = !DILocalVariable(name: "aml_offset", scope: !2035, file: !3, line: 180, type: !38)
!2043 = !DILocation(line: 180, column: 6, scope: !2035)
!2044 = !DILocalVariable(name: "name", scope: !2035, file: !3, line: 181, type: !2045)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_name", file: !37, line: 422, baseType: !38)
!2046 = !DILocation(line: 181, column: 12, scope: !2035)
!2047 = !DILocation(line: 187, column: 6, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2035, file: !3, line: 187, column: 6)
!2049 = !DILocation(line: 187, column: 27, scope: !2048)
!2050 = !DILocation(line: 187, column: 31, scope: !2048)
!2051 = !DILocation(line: 187, column: 38, scope: !2048)
!2052 = !DILocation(line: 187, column: 6, scope: !2035)
!2053 = !DILocation(line: 188, column: 11, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 187, column: 58)
!2055 = !DILocation(line: 188, column: 3, scope: !2054)
!2056 = !DILocation(line: 193, column: 6, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2035, file: !3, line: 193, column: 6)
!2058 = !DILocation(line: 193, column: 6, scope: !2035)
!2059 = !DILocation(line: 197, column: 3, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 193, column: 34)
!2061 = !DILocation(line: 203, column: 21, scope: !2060)
!2062 = !DILocation(line: 203, column: 16, scope: !2060)
!2063 = !DILocation(line: 203, column: 14, scope: !2060)
!2064 = !DILocation(line: 207, column: 7, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 207, column: 7)
!2066 = !DILocation(line: 207, column: 19, scope: !2065)
!2067 = !DILocation(line: 207, column: 7, scope: !2060)
!2068 = !DILocation(line: 208, column: 11, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 207, column: 32)
!2070 = !DILocation(line: 208, column: 23, scope: !2069)
!2071 = !DILocation(line: 208, column: 36, scope: !2069)
!2072 = !DILocation(line: 208, column: 41, scope: !2069)
!2073 = !DILocation(line: 208, column: 9, scope: !2069)
!2074 = !DILocation(line: 209, column: 3, scope: !2069)
!2075 = !DILocation(line: 209, column: 14, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 209, column: 14)
!2077 = !DILocation(line: 209, column: 26, scope: !2076)
!2078 = !DILocation(line: 209, column: 14, scope: !2065)
!2079 = !DILocation(line: 210, column: 11, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2076, file: !3, line: 209, column: 41)
!2081 = !DILocation(line: 210, column: 23, scope: !2080)
!2082 = !DILocation(line: 210, column: 38, scope: !2080)
!2083 = !DILocation(line: 210, column: 43, scope: !2080)
!2084 = !DILocation(line: 210, column: 9, scope: !2080)
!2085 = !DILocation(line: 211, column: 3, scope: !2080)
!2086 = !DILocation(line: 213, column: 12, scope: !2060)
!2087 = !DILocation(line: 213, column: 39, scope: !2060)
!2088 = !DILocation(line: 213, column: 47, scope: !2060)
!2089 = !DILocation(line: 214, column: 11, scope: !2060)
!2090 = !DILocation(line: 214, column: 23, scope: !2060)
!2091 = !DILocation(line: 215, column: 11, scope: !2060)
!2092 = !DILocation(line: 213, column: 10, scope: !2060)
!2093 = !DILocation(line: 216, column: 3, scope: !2060)
!2094 = !DILocation(line: 217, column: 2, scope: !2060)
!2095 = !DILocation(line: 219, column: 32, scope: !2035)
!2096 = !DILocation(line: 219, column: 2, scope: !2035)
!2097 = !DILocation(line: 221, column: 6, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2035, file: !3, line: 221, column: 6)
!2099 = !DILocation(line: 221, column: 6, scope: !2035)
!2100 = !DILocation(line: 222, column: 29, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 221, column: 28)
!2102 = !DILocation(line: 222, column: 37, scope: !2101)
!2103 = !DILocation(line: 222, column: 49, scope: !2101)
!2104 = !DILocation(line: 222, column: 61, scope: !2101)
!2105 = !DILocation(line: 222, column: 3, scope: !2101)
!2106 = !DILocation(line: 229, column: 2, scope: !2101)
!2107 = !DILocation(line: 231, column: 10, scope: !2035)
!2108 = !DILocation(line: 231, column: 2, scope: !2035)
!2109 = !DILocation(line: 232, column: 1, scope: !2035)
!2110 = distinct !DISubprogram(name: "acpi_ds_begin_method_execution", scope: !3, file: !3, line: 292, type: !2111, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !874)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!36, !49, !53, !148}
!2113 = !DILocalVariable(name: "method_node", arg: 1, scope: !2110, file: !3, line: 292, type: !49)
!2114 = !DILocation(line: 292, column: 60, scope: !2110)
!2115 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !2110, file: !3, line: 293, type: !53)
!2116 = !DILocation(line: 293, column: 38, scope: !2110)
!2117 = !DILocalVariable(name: "walk_state", arg: 3, scope: !2110, file: !3, line: 294, type: !148)
!2118 = !DILocation(line: 294, column: 35, scope: !2110)
!2119 = !DILocalVariable(name: "status", scope: !2110, file: !3, line: 296, type: !36)
!2120 = !DILocation(line: 296, column: 14, scope: !2110)
!2121 = !DILocation(line: 300, column: 7, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 300, column: 6)
!2123 = !DILocation(line: 300, column: 6, scope: !2110)
!2124 = !DILocation(line: 301, column: 3, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 300, column: 20)
!2126 = !DILocation(line: 304, column: 29, scope: !2110)
!2127 = !DILocation(line: 304, column: 42, scope: !2110)
!2128 = !DILocation(line: 304, column: 52, scope: !2110)
!2129 = !DILocation(line: 304, column: 2, scope: !2110)
!2130 = !DILocation(line: 308, column: 6, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 308, column: 6)
!2132 = !DILocation(line: 308, column: 16, scope: !2131)
!2133 = !DILocation(line: 308, column: 23, scope: !2131)
!2134 = !DILocation(line: 308, column: 36, scope: !2131)
!2135 = !DILocation(line: 308, column: 6, scope: !2110)
!2136 = !DILocation(line: 309, column: 3, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 308, column: 55)
!2138 = !DILocation(line: 311, column: 3, scope: !2137)
!2139 = !DILocation(line: 317, column: 6, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 317, column: 6)
!2141 = !DILocation(line: 317, column: 16, scope: !2140)
!2142 = !DILocation(line: 317, column: 23, scope: !2140)
!2143 = !DILocation(line: 317, column: 34, scope: !2140)
!2144 = !DILocation(line: 317, column: 6, scope: !2110)
!2145 = !DILocation(line: 323, column: 8, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 323, column: 7)
!2147 = distinct !DILexicalBlock(scope: !2140, file: !3, line: 317, column: 60)
!2148 = !DILocation(line: 323, column: 18, scope: !2146)
!2149 = !DILocation(line: 323, column: 25, scope: !2146)
!2150 = !DILocation(line: 323, column: 7, scope: !2147)
!2151 = !DILocation(line: 324, column: 41, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 323, column: 32)
!2153 = !DILocation(line: 324, column: 13, scope: !2152)
!2154 = !DILocation(line: 324, column: 11, scope: !2152)
!2155 = !DILocation(line: 325, column: 8, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 325, column: 8)
!2157 = !DILocation(line: 325, column: 8, scope: !2152)
!2158 = !DILocation(line: 326, column: 5, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 325, column: 30)
!2160 = !DILocation(line: 328, column: 3, scope: !2152)
!2161 = !DILocation(line: 341, column: 7, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 341, column: 7)
!2163 = !DILocation(line: 341, column: 18, scope: !2162)
!2164 = !DILocation(line: 342, column: 10, scope: !2162)
!2165 = !DILocation(line: 342, column: 20, scope: !2162)
!2166 = !DILocation(line: 343, column: 10, scope: !2162)
!2167 = !DILocation(line: 343, column: 21, scope: !2162)
!2168 = !DILocation(line: 344, column: 7, scope: !2162)
!2169 = !DILocation(line: 344, column: 11, scope: !2162)
!2170 = !DILocation(line: 344, column: 23, scope: !2162)
!2171 = !DILocation(line: 344, column: 31, scope: !2162)
!2172 = !DILocation(line: 345, column: 4, scope: !2162)
!2173 = !DILocation(line: 345, column: 14, scope: !2162)
!2174 = !DILocation(line: 345, column: 21, scope: !2162)
!2175 = !DILocation(line: 345, column: 28, scope: !2162)
!2176 = !DILocation(line: 345, column: 34, scope: !2162)
!2177 = !DILocation(line: 344, column: 50, scope: !2162)
!2178 = !DILocation(line: 341, column: 7, scope: !2147)
!2179 = !DILocation(line: 346, column: 4, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 345, column: 47)
!2181 = !DILocation(line: 352, column: 4, scope: !2180)
!2182 = !DILocation(line: 359, column: 8, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 359, column: 7)
!2184 = !DILocation(line: 359, column: 19, scope: !2183)
!2185 = !DILocation(line: 360, column: 8, scope: !2183)
!2186 = !DILocation(line: 360, column: 18, scope: !2183)
!2187 = !DILocation(line: 360, column: 25, scope: !2183)
!2188 = !DILocation(line: 360, column: 32, scope: !2183)
!2189 = !DILocation(line: 360, column: 38, scope: !2183)
!2190 = !DILocation(line: 360, column: 48, scope: !2183)
!2191 = !DILocation(line: 361, column: 8, scope: !2183)
!2192 = !DILocation(line: 361, column: 20, scope: !2183)
!2193 = !DILocation(line: 361, column: 28, scope: !2183)
!2194 = !DILocation(line: 362, column: 8, scope: !2183)
!2195 = !DILocation(line: 362, column: 18, scope: !2183)
!2196 = !DILocation(line: 362, column: 25, scope: !2183)
!2197 = !DILocation(line: 362, column: 32, scope: !2183)
!2198 = !DILocation(line: 362, column: 38, scope: !2183)
!2199 = !DILocation(line: 361, column: 38, scope: !2183)
!2200 = !DILocation(line: 359, column: 7, scope: !2147)
!2201 = !DILocation(line: 368, column: 34, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2183, file: !3, line: 362, column: 50)
!2203 = !DILocation(line: 368, column: 44, scope: !2202)
!2204 = !DILocation(line: 368, column: 51, scope: !2202)
!2205 = !DILocation(line: 369, column: 13, scope: !2202)
!2206 = !DILocation(line: 369, column: 19, scope: !2202)
!2207 = !DILocation(line: 368, column: 8, scope: !2202)
!2208 = !DILocation(line: 367, column: 11, scope: !2202)
!2209 = !DILocation(line: 371, column: 8, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 371, column: 8)
!2211 = !DILocation(line: 371, column: 8, scope: !2202)
!2212 = !DILocation(line: 372, column: 5, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 371, column: 30)
!2214 = !DILocation(line: 377, column: 8, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 377, column: 8)
!2216 = !DILocation(line: 377, column: 8, scope: !2202)
!2217 = !DILocation(line: 380, column: 9, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 377, column: 20)
!2219 = !DILocation(line: 380, column: 21, scope: !2218)
!2220 = !DILocation(line: 380, column: 29, scope: !2218)
!2221 = !DILocation(line: 378, column: 5, scope: !2218)
!2222 = !DILocation(line: 378, column: 15, scope: !2218)
!2223 = !DILocation(line: 378, column: 22, scope: !2218)
!2224 = !DILocation(line: 378, column: 29, scope: !2218)
!2225 = !DILocation(line: 379, column: 9, scope: !2218)
!2226 = !DILocation(line: 379, column: 29, scope: !2218)
!2227 = !DILocation(line: 383, column: 9, scope: !2218)
!2228 = !DILocation(line: 383, column: 21, scope: !2218)
!2229 = !DILocation(line: 383, column: 29, scope: !2218)
!2230 = !DILocation(line: 382, column: 5, scope: !2218)
!2231 = !DILocation(line: 382, column: 15, scope: !2218)
!2232 = !DILocation(line: 382, column: 22, scope: !2218)
!2233 = !DILocation(line: 382, column: 29, scope: !2218)
!2234 = !DILocation(line: 382, column: 35, scope: !2218)
!2235 = !DILocation(line: 382, column: 45, scope: !2218)
!2236 = !DILocation(line: 392, column: 11, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 392, column: 9)
!2238 = !DILocation(line: 392, column: 21, scope: !2237)
!2239 = !DILocation(line: 392, column: 28, scope: !2237)
!2240 = !DILocation(line: 392, column: 39, scope: !2237)
!2241 = !DILocation(line: 392, column: 9, scope: !2218)
!2242 = !DILocation(line: 395, column: 10, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 393, column: 43)
!2244 = !DILocation(line: 395, column: 20, scope: !2243)
!2245 = !DILocation(line: 395, column: 27, scope: !2243)
!2246 = !DILocation(line: 394, column: 6, scope: !2243)
!2247 = !DILocation(line: 394, column: 18, scope: !2243)
!2248 = !DILocation(line: 394, column: 26, scope: !2243)
!2249 = !DILocation(line: 394, column: 45, scope: !2243)
!2250 = !DILocation(line: 396, column: 5, scope: !2243)
!2251 = !DILocation(line: 397, column: 4, scope: !2218)
!2252 = !DILocation(line: 400, column: 9, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 397, column: 11)
!2254 = !DILocation(line: 400, column: 19, scope: !2253)
!2255 = !DILocation(line: 400, column: 26, scope: !2253)
!2256 = !DILocation(line: 400, column: 33, scope: !2253)
!2257 = !DILocation(line: 400, column: 39, scope: !2253)
!2258 = !DILocation(line: 398, column: 5, scope: !2253)
!2259 = !DILocation(line: 398, column: 15, scope: !2253)
!2260 = !DILocation(line: 398, column: 22, scope: !2253)
!2261 = !DILocation(line: 398, column: 29, scope: !2253)
!2262 = !DILocation(line: 399, column: 9, scope: !2253)
!2263 = !DILocation(line: 399, column: 29, scope: !2253)
!2264 = !DILocation(line: 403, column: 9, scope: !2253)
!2265 = !DILocation(line: 402, column: 5, scope: !2253)
!2266 = !DILocation(line: 402, column: 15, scope: !2253)
!2267 = !DILocation(line: 402, column: 22, scope: !2253)
!2268 = !DILocation(line: 402, column: 29, scope: !2253)
!2269 = !DILocation(line: 402, column: 35, scope: !2253)
!2270 = !DILocation(line: 402, column: 45, scope: !2253)
!2271 = !DILocation(line: 405, column: 3, scope: !2202)
!2272 = !DILocation(line: 409, column: 3, scope: !2147)
!2273 = !DILocation(line: 409, column: 13, scope: !2147)
!2274 = !DILocation(line: 409, column: 20, scope: !2147)
!2275 = !DILocation(line: 409, column: 27, scope: !2147)
!2276 = !DILocation(line: 409, column: 33, scope: !2147)
!2277 = !DILocation(line: 409, column: 50, scope: !2147)
!2278 = !DILocation(line: 410, column: 2, scope: !2147)
!2279 = !DILocation(line: 417, column: 7, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 417, column: 6)
!2281 = !DILocation(line: 417, column: 17, scope: !2280)
!2282 = !DILocation(line: 417, column: 24, scope: !2280)
!2283 = !DILocation(line: 417, column: 6, scope: !2110)
!2284 = !DILocation(line: 418, column: 39, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 417, column: 34)
!2286 = !DILocation(line: 418, column: 49, scope: !2285)
!2287 = !DILocation(line: 418, column: 56, scope: !2285)
!2288 = !DILocation(line: 418, column: 12, scope: !2285)
!2289 = !DILocation(line: 418, column: 10, scope: !2285)
!2290 = !DILocation(line: 419, column: 7, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 419, column: 7)
!2292 = !DILocation(line: 419, column: 7, scope: !2285)
!2293 = !DILocation(line: 420, column: 4, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 419, column: 29)
!2295 = !DILocation(line: 422, column: 2, scope: !2285)
!2296 = !DILocation(line: 428, column: 2, scope: !2110)
!2297 = !DILocation(line: 428, column: 12, scope: !2110)
!2298 = !DILocation(line: 428, column: 19, scope: !2110)
!2299 = !DILocation(line: 428, column: 31, scope: !2110)
!2300 = !DILocation(line: 429, column: 19, scope: !2110)
!2301 = !DILocation(line: 430, column: 2, scope: !2110)
!2302 = !DILabel(scope: !2110, name: "cleanup", file: !3, line: 432)
!2303 = !DILocation(line: 432, column: 1, scope: !2110)
!2304 = !DILocation(line: 435, column: 6, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 435, column: 6)
!2306 = !DILocation(line: 435, column: 16, scope: !2305)
!2307 = !DILocation(line: 435, column: 23, scope: !2305)
!2308 = !DILocation(line: 435, column: 6, scope: !2110)
!2309 = !DILocation(line: 436, column: 3, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2305, file: !3, line: 435, column: 30)
!2311 = !DILocation(line: 437, column: 2, scope: !2310)
!2312 = !DILocation(line: 438, column: 2, scope: !2110)
!2313 = !DILocation(line: 439, column: 1, scope: !2110)
!2314 = distinct !DISubprogram(name: "acpi_ds_create_method_mutex", scope: !3, file: !3, line: 247, type: !2315, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !874)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!36, !53}
!2317 = !DILocalVariable(name: "method_desc", arg: 1, scope: !2314, file: !3, line: 247, type: !53)
!2318 = !DILocation(line: 247, column: 56, scope: !2314)
!2319 = !DILocalVariable(name: "mutex_desc", scope: !2314, file: !3, line: 249, type: !53)
!2320 = !DILocation(line: 249, column: 29, scope: !2314)
!2321 = !DILocalVariable(name: "status", scope: !2314, file: !3, line: 250, type: !36)
!2322 = !DILocation(line: 250, column: 14, scope: !2314)
!2323 = !DILocation(line: 256, column: 15, scope: !2314)
!2324 = !DILocation(line: 256, column: 13, scope: !2314)
!2325 = !DILocation(line: 257, column: 7, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 257, column: 6)
!2327 = !DILocation(line: 257, column: 6, scope: !2314)
!2328 = !DILocation(line: 258, column: 3, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 257, column: 19)
!2330 = !DILocation(line: 263, column: 11, scope: !2314)
!2331 = !DILocation(line: 263, column: 9, scope: !2314)
!2332 = !DILocation(line: 264, column: 6, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 264, column: 6)
!2334 = !DILocation(line: 264, column: 6, scope: !2314)
!2335 = !DILocation(line: 265, column: 30, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 264, column: 28)
!2337 = !DILocation(line: 265, column: 3, scope: !2336)
!2338 = !DILocation(line: 266, column: 3, scope: !2336)
!2339 = !DILocation(line: 269, column: 33, scope: !2314)
!2340 = !DILocation(line: 269, column: 46, scope: !2314)
!2341 = !DILocation(line: 269, column: 53, scope: !2314)
!2342 = !DILocation(line: 269, column: 2, scope: !2314)
!2343 = !DILocation(line: 269, column: 14, scope: !2314)
!2344 = !DILocation(line: 269, column: 20, scope: !2314)
!2345 = !DILocation(line: 269, column: 31, scope: !2314)
!2346 = !DILocation(line: 270, column: 30, scope: !2314)
!2347 = !DILocation(line: 270, column: 2, scope: !2314)
!2348 = !DILocation(line: 270, column: 15, scope: !2314)
!2349 = !DILocation(line: 270, column: 22, scope: !2314)
!2350 = !DILocation(line: 270, column: 28, scope: !2314)
!2351 = !DILocation(line: 271, column: 2, scope: !2314)
!2352 = !DILocation(line: 272, column: 1, scope: !2314)
!2353 = distinct !DISubprogram(name: "acpi_os_get_thread_id", scope: !2354, file: !2354, line: 71, type: !2355, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !874)
!2354 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!41}
!2357 = !DILocalVariable(name: "pscr_ret__", scope: !2358, file: !2359, line: 15, type: !807)
!2358 = distinct !DILexicalBlock(scope: !2360, file: !2359, line: 15, column: 9)
!2359 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!2360 = distinct !DISubprogram(name: "get_current", scope: !2359, file: !2359, line: 13, type: !2361, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !874)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!807}
!2363 = !DILocation(line: 15, column: 9, scope: !2358, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 73, column: 41, scope: !2353)
!2365 = !DILocalVariable(name: "__vpp_verify", scope: !2366, file: !2359, line: 15, type: !2367)
!2366 = distinct !DILexicalBlock(scope: !2358, file: !2359, line: 15, column: 9)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2369 = !DILocation(line: 15, column: 9, scope: !2366, inlinedAt: !2364)
!2370 = !DILocalVariable(name: "pfo_val__", scope: !2371, file: !2359, line: 15, type: !41)
!2371 = distinct !DILexicalBlock(scope: !2358, file: !2359, line: 15, column: 9)
!2372 = !DILocation(line: 15, column: 9, scope: !2371, inlinedAt: !2364)
!2373 = !{i32 -2146481302}
!2374 = !DILocation(line: 73, column: 26, scope: !2353)
!2375 = !DILocation(line: 73, column: 2, scope: !2353)
!2376 = distinct !DISubprogram(name: "acpi_ds_call_control_method", scope: !3, file: !3, line: 456, type: !2377, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !874)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!36, !430, !148, !183}
!2379 = !DILocalVariable(name: "thread", arg: 1, scope: !2376, file: !3, line: 456, type: !430)
!2380 = !DILocation(line: 456, column: 55, scope: !2376)
!2381 = !DILocalVariable(name: "this_walk_state", arg: 2, scope: !2376, file: !3, line: 457, type: !148)
!2382 = !DILocation(line: 457, column: 32, scope: !2376)
!2383 = !DILocalVariable(name: "op", arg: 3, scope: !2376, file: !3, line: 458, type: !183)
!2384 = !DILocation(line: 458, column: 33, scope: !2376)
!2385 = !DILocalVariable(name: "status", scope: !2376, file: !3, line: 460, type: !36)
!2386 = !DILocation(line: 460, column: 14, scope: !2376)
!2387 = !DILocalVariable(name: "method_node", scope: !2376, file: !3, line: 461, type: !49)
!2388 = !DILocation(line: 461, column: 30, scope: !2376)
!2389 = !DILocalVariable(name: "next_walk_state", scope: !2376, file: !3, line: 462, type: !148)
!2390 = !DILocation(line: 462, column: 26, scope: !2376)
!2391 = !DILocalVariable(name: "obj_desc", scope: !2376, file: !3, line: 463, type: !53)
!2392 = !DILocation(line: 463, column: 29, scope: !2376)
!2393 = !DILocalVariable(name: "info", scope: !2376, file: !3, line: 464, type: !2394)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !150, line: 152, size: 704, elements: !2396)
!2396 = !{!2397, !2398, !2400, !2401, !2402, !2403, !2404, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !2395, file: !150, line: 155, baseType: !49, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !2395, file: !150, line: 156, baseType: !2399, size: 64, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !2395, file: !150, line: 157, baseType: !113, size: 64, offset: 128)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2395, file: !150, line: 159, baseType: !49, size: 64, offset: 192)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !2395, file: !150, line: 160, baseType: !53, size: 64, offset: 256)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !2395, file: !150, line: 161, baseType: !87, size: 64, offset: 320)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !2395, file: !150, line: 163, baseType: !2405, size: 64, offset: 384)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2407)
!2407 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !6, line: 351, size: 56, elements: !2408)
!2408 = !{!2409, !2415, !2424, !2432, !2441}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2407, file: !6, line: 352, baseType: !2410, size: 56)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !6, line: 295, size: 56, elements: !2411)
!2411 = !{!2412, !2413, !2414}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2410, file: !6, line: 296, baseType: !242, size: 32)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !2410, file: !6, line: 297, baseType: !31, size: 16, offset: 32)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !2410, file: !6, line: 298, baseType: !45, size: 8, offset: 48)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !2407, file: !6, line: 353, baseType: !2416, size: 56)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !6, line: 314, size: 56, elements: !2417)
!2417 = !{!2418, !2419, !2420, !2421, !2422, !2423}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2416, file: !6, line: 315, baseType: !45, size: 8)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !2416, file: !6, line: 316, baseType: !45, size: 8, offset: 8)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !2416, file: !6, line: 317, baseType: !45, size: 8, offset: 16)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !2416, file: !6, line: 318, baseType: !45, size: 8, offset: 24)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !2416, file: !6, line: 319, baseType: !45, size: 8, offset: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2416, file: !6, line: 320, baseType: !31, size: 16, offset: 40)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !2407, file: !6, line: 354, baseType: !2425, size: 56)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !6, line: 325, size: 56, elements: !2426)
!2426 = !{!2427, !2428, !2429, !2431}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2425, file: !6, line: 326, baseType: !45, size: 8)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2425, file: !6, line: 327, baseType: !45, size: 8, offset: 8)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !2425, file: !6, line: 328, baseType: !2430, size: 32, offset: 16)
!2430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, elements: !243)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2425, file: !6, line: 329, baseType: !45, size: 8, offset: 48)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !2407, file: !6, line: 355, baseType: !2433, size: 56)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !6, line: 334, size: 56, elements: !2434)
!2434 = !{!2435, !2436, !2437, !2439, !2440}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2433, file: !6, line: 335, baseType: !45, size: 8)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2433, file: !6, line: 336, baseType: !45, size: 8, offset: 8)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !2433, file: !6, line: 337, baseType: !2438, size: 16, offset: 16)
!2438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 16, elements: !485)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !2433, file: !6, line: 338, baseType: !45, size: 8, offset: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2433, file: !6, line: 339, baseType: !31, size: 16, offset: 40)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !2407, file: !6, line: 356, baseType: !2442, size: 56)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !6, line: 342, size: 56, elements: !2443)
!2443 = !{!2444, !2445, !2446, !2447, !2448, !2449}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2442, file: !6, line: 343, baseType: !45, size: 8)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !2442, file: !6, line: 344, baseType: !45, size: 8, offset: 8)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !2442, file: !6, line: 345, baseType: !45, size: 8, offset: 16)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !2442, file: !6, line: 346, baseType: !45, size: 8, offset: 24)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !2442, file: !6, line: 347, baseType: !45, size: 8, offset: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2442, file: !6, line: 348, baseType: !31, size: 16, offset: 40)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !2395, file: !150, line: 164, baseType: !53, size: 64, offset: 448)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !2395, file: !150, line: 165, baseType: !53, size: 64, offset: 512)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !2395, file: !150, line: 167, baseType: !38, size: 32, offset: 576)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !2395, file: !150, line: 168, baseType: !38, size: 32, offset: 608)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2395, file: !150, line: 169, baseType: !31, size: 16, offset: 640)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !2395, file: !150, line: 170, baseType: !31, size: 16, offset: 656)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !2395, file: !150, line: 171, baseType: !45, size: 8, offset: 672)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !2395, file: !150, line: 172, baseType: !45, size: 8, offset: 680)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2395, file: !150, line: 173, baseType: !45, size: 8, offset: 688)
!2459 = !DILocation(line: 464, column: 29, scope: !2376)
!2460 = !DILocalVariable(name: "i", scope: !2376, file: !3, line: 465, type: !38)
!2461 = !DILocation(line: 465, column: 6, scope: !2376)
!2462 = !DILocation(line: 476, column: 16, scope: !2376)
!2463 = !DILocation(line: 476, column: 33, scope: !2376)
!2464 = !DILocation(line: 476, column: 14, scope: !2376)
!2465 = !DILocation(line: 477, column: 7, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 477, column: 6)
!2467 = !DILocation(line: 477, column: 6, scope: !2376)
!2468 = !DILocation(line: 478, column: 3, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 477, column: 20)
!2470 = !DILocation(line: 481, column: 41, scope: !2376)
!2471 = !DILocation(line: 481, column: 13, scope: !2376)
!2472 = !DILocation(line: 481, column: 11, scope: !2376)
!2473 = !DILocation(line: 482, column: 7, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 482, column: 6)
!2475 = !DILocation(line: 482, column: 6, scope: !2376)
!2476 = !DILocation(line: 483, column: 3, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 482, column: 17)
!2478 = !DILocation(line: 489, column: 37, scope: !2376)
!2479 = !DILocation(line: 489, column: 50, scope: !2376)
!2480 = !DILocation(line: 490, column: 9, scope: !2376)
!2481 = !DILocation(line: 489, column: 6, scope: !2376)
!2482 = !DILocation(line: 488, column: 9, scope: !2376)
!2483 = !DILocation(line: 491, column: 6, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 491, column: 6)
!2485 = !DILocation(line: 491, column: 6, scope: !2376)
!2486 = !DILocation(line: 492, column: 3, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 491, column: 28)
!2488 = !DILocation(line: 498, column: 32, scope: !2376)
!2489 = !DILocation(line: 498, column: 42, scope: !2376)
!2490 = !DILocation(line: 498, column: 49, scope: !2376)
!2491 = !DILocation(line: 498, column: 65, scope: !2376)
!2492 = !DILocation(line: 499, column: 11, scope: !2376)
!2493 = !DILocation(line: 498, column: 6, scope: !2376)
!2494 = !DILocation(line: 497, column: 18, scope: !2376)
!2495 = !DILocation(line: 500, column: 7, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 500, column: 6)
!2497 = !DILocation(line: 500, column: 6, scope: !2376)
!2498 = !DILocation(line: 501, column: 10, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 500, column: 24)
!2500 = !DILocation(line: 502, column: 3, scope: !2499)
!2501 = !DILocation(line: 510, column: 2, scope: !2376)
!2502 = !DILocation(line: 510, column: 19, scope: !2376)
!2503 = !DILocation(line: 510, column: 28, scope: !2376)
!2504 = !DILocation(line: 510, column: 45, scope: !2376)
!2505 = !DILocation(line: 510, column: 59, scope: !2376)
!2506 = !DILocation(line: 517, column: 9, scope: !2376)
!2507 = !DILocation(line: 517, column: 7, scope: !2376)
!2508 = !DILocation(line: 518, column: 7, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 518, column: 6)
!2510 = !DILocation(line: 518, column: 6, scope: !2376)
!2511 = !DILocation(line: 519, column: 10, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 518, column: 13)
!2513 = !DILocation(line: 520, column: 3, scope: !2512)
!2514 = !DILocation(line: 523, column: 22, scope: !2376)
!2515 = !DILocation(line: 523, column: 39, scope: !2376)
!2516 = !DILocation(line: 523, column: 2, scope: !2376)
!2517 = !DILocation(line: 523, column: 8, scope: !2376)
!2518 = !DILocation(line: 523, column: 19, scope: !2376)
!2519 = !DILocation(line: 525, column: 33, scope: !2376)
!2520 = !DILocation(line: 525, column: 56, scope: !2376)
!2521 = !DILocation(line: 526, column: 12, scope: !2376)
!2522 = !DILocation(line: 526, column: 22, scope: !2376)
!2523 = !DILocation(line: 526, column: 29, scope: !2376)
!2524 = !DILocation(line: 527, column: 12, scope: !2376)
!2525 = !DILocation(line: 527, column: 22, scope: !2376)
!2526 = !DILocation(line: 527, column: 29, scope: !2376)
!2527 = !DILocation(line: 527, column: 41, scope: !2376)
!2528 = !DILocation(line: 525, column: 11, scope: !2376)
!2529 = !DILocation(line: 525, column: 9, scope: !2376)
!2530 = !DILocation(line: 530, column: 2, scope: !2376)
!2531 = !DILocation(line: 531, column: 6, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 531, column: 6)
!2533 = !DILocation(line: 531, column: 6, scope: !2376)
!2534 = !DILocation(line: 532, column: 3, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 531, column: 28)
!2536 = !DILocation(line: 536, column: 6, scope: !2376)
!2537 = !DILocation(line: 536, column: 23, scope: !2376)
!2538 = !DILocation(line: 536, column: 44, scope: !2376)
!2539 = !DILocation(line: 535, column: 2, scope: !2376)
!2540 = !DILocation(line: 535, column: 19, scope: !2376)
!2541 = !DILocation(line: 535, column: 40, scope: !2376)
!2542 = !DILocation(line: 542, column: 9, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 542, column: 2)
!2544 = !DILocation(line: 542, column: 7, scope: !2543)
!2545 = !DILocation(line: 542, column: 14, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 542, column: 2)
!2547 = !DILocation(line: 542, column: 18, scope: !2546)
!2548 = !DILocation(line: 542, column: 28, scope: !2546)
!2549 = !DILocation(line: 542, column: 35, scope: !2546)
!2550 = !DILocation(line: 542, column: 16, scope: !2546)
!2551 = !DILocation(line: 542, column: 2, scope: !2543)
!2552 = !DILocation(line: 543, column: 28, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 542, column: 53)
!2554 = !DILocation(line: 543, column: 45, scope: !2553)
!2555 = !DILocation(line: 543, column: 54, scope: !2553)
!2556 = !DILocation(line: 543, column: 3, scope: !2553)
!2557 = !DILocation(line: 544, column: 3, scope: !2553)
!2558 = !DILocation(line: 544, column: 20, scope: !2553)
!2559 = !DILocation(line: 544, column: 29, scope: !2553)
!2560 = !DILocation(line: 544, column: 32, scope: !2553)
!2561 = !DILocation(line: 545, column: 2, scope: !2553)
!2562 = !DILocation(line: 542, column: 49, scope: !2546)
!2563 = !DILocation(line: 542, column: 2, scope: !2546)
!2564 = distinct !{!2564, !2551, !2565}
!2565 = !DILocation(line: 545, column: 2, scope: !2543)
!2566 = !DILocation(line: 549, column: 2, scope: !2376)
!2567 = !DILocation(line: 549, column: 19, scope: !2376)
!2568 = !DILocation(line: 549, column: 32, scope: !2376)
!2569 = !DILocation(line: 556, column: 38, scope: !2376)
!2570 = !DILocation(line: 556, column: 6, scope: !2376)
!2571 = !DILocation(line: 555, column: 2, scope: !2376)
!2572 = !DILocation(line: 555, column: 19, scope: !2376)
!2573 = !DILocation(line: 555, column: 35, scope: !2376)
!2574 = !DILocation(line: 557, column: 2, scope: !2376)
!2575 = !DILocation(line: 557, column: 19, scope: !2376)
!2576 = !DILocation(line: 557, column: 36, scope: !2376)
!2577 = !DILocation(line: 568, column: 6, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 568, column: 6)
!2579 = !DILocation(line: 568, column: 16, scope: !2578)
!2580 = !DILocation(line: 568, column: 23, scope: !2578)
!2581 = !DILocation(line: 568, column: 34, scope: !2578)
!2582 = !DILocation(line: 568, column: 6, scope: !2376)
!2583 = !DILocation(line: 570, column: 7, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 568, column: 63)
!2585 = !DILocation(line: 570, column: 17, scope: !2584)
!2586 = !DILocation(line: 570, column: 24, scope: !2584)
!2587 = !DILocation(line: 570, column: 33, scope: !2584)
!2588 = !DILocation(line: 570, column: 48, scope: !2584)
!2589 = !DILocation(line: 569, column: 10, scope: !2584)
!2590 = !DILocation(line: 571, column: 7, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 571, column: 7)
!2592 = !DILocation(line: 571, column: 14, scope: !2591)
!2593 = !DILocation(line: 571, column: 7, scope: !2584)
!2594 = !DILocation(line: 572, column: 11, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 571, column: 24)
!2596 = !DILocation(line: 573, column: 3, scope: !2595)
!2597 = !DILocation(line: 574, column: 2, scope: !2584)
!2598 = !DILocation(line: 576, column: 2, scope: !2376)
!2599 = !DILabel(scope: !2376, name: "cleanup", file: !3, line: 578)
!2600 = !DILocation(line: 578, column: 1, scope: !2376)
!2601 = !DILocation(line: 582, column: 35, scope: !2376)
!2602 = !DILocation(line: 582, column: 45, scope: !2376)
!2603 = !DILocation(line: 582, column: 2, scope: !2376)
!2604 = !DILocation(line: 583, column: 28, scope: !2376)
!2605 = !DILocation(line: 583, column: 2, scope: !2376)
!2606 = !DILocation(line: 585, column: 2, scope: !2376)
!2607 = !DILocation(line: 586, column: 1, scope: !2376)
!2608 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !2354, file: !2354, line: 55, type: !2609, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !874)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!48, !40}
!2611 = !DILocalVariable(name: "flags", arg: 1, scope: !2612, file: !2613, line: 162, type: !805)
!2612 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !2613, file: !2613, line: 162, type: !2614, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !874)
!2613 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!832, !805}
!2616 = !DILocation(line: 162, column: 67, scope: !2612, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 57, column: 23, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !2354, line: 57, column: 23)
!2619 = distinct !DILexicalBlock(scope: !2608, file: !2354, line: 57, column: 23)
!2620 = !DILocalVariable(name: "size", arg: 1, scope: !2608, file: !2354, line: 55, type: !40)
!2621 = !DILocation(line: 55, column: 55, scope: !2608)
!2622 = !DILocation(line: 57, column: 17, scope: !2608)
!2623 = !DILocalVariable(name: "_flags", scope: !2619, file: !2354, line: 57, type: !805)
!2624 = !DILocation(line: 57, column: 23, scope: !2619)
!2625 = !DILocalVariable(name: "__dummy", scope: !2626, file: !2354, line: 57, type: !805)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !2354, line: 57, column: 23)
!2627 = distinct !DILexicalBlock(scope: !2619, file: !2354, line: 57, column: 23)
!2628 = !DILocation(line: 57, column: 23, scope: !2626)
!2629 = !DILocalVariable(name: "__dummy2", scope: !2626, file: !2354, line: 57, type: !805)
!2630 = !DILocation(line: 57, column: 23, scope: !2627)
!2631 = !DILocalVariable(name: "__dummy", scope: !2632, file: !2354, line: 57, type: !805)
!2632 = distinct !DILexicalBlock(scope: !2618, file: !2354, line: 57, column: 23)
!2633 = !DILocation(line: 57, column: 23, scope: !2632)
!2634 = !DILocalVariable(name: "__dummy2", scope: !2632, file: !2354, line: 57, type: !805)
!2635 = !DILocation(line: 57, column: 23, scope: !2618)
!2636 = !DILocation(line: 164, column: 11, scope: !2612, inlinedAt: !2617)
!2637 = !DILocation(line: 164, column: 17, scope: !2612, inlinedAt: !2617)
!2638 = !DILocation(line: 164, column: 9, scope: !2612, inlinedAt: !2617)
!2639 = !DILocation(line: 57, column: 23, scope: !2608)
!2640 = !DILocation(line: 57, column: 9, scope: !2608)
!2641 = !DILocation(line: 57, column: 2, scope: !2608)
!2642 = distinct !DISubprogram(name: "acpi_os_free", scope: !2354, file: !2354, line: 60, type: !2643, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !874)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{null, !48}
!2645 = !DILocalVariable(name: "memory", arg: 1, scope: !2642, file: !2354, line: 60, type: !48)
!2646 = !DILocation(line: 60, column: 39, scope: !2642)
!2647 = !DILocation(line: 62, column: 8, scope: !2642)
!2648 = !DILocation(line: 62, column: 2, scope: !2642)
!2649 = !DILocation(line: 63, column: 1, scope: !2642)
!2650 = distinct !DISubprogram(name: "acpi_ds_terminate_control_method", scope: !3, file: !3, line: 693, type: !2651, scopeLine: 695, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !874)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{null, !53, !148}
!2653 = !DILocalVariable(name: "method_desc", arg: 1, scope: !2650, file: !3, line: 693, type: !53)
!2654 = !DILocation(line: 693, column: 61, scope: !2650)
!2655 = !DILocalVariable(name: "walk_state", arg: 2, scope: !2650, file: !3, line: 694, type: !148)
!2656 = !DILocation(line: 694, column: 30, scope: !2650)
!2657 = !DILocation(line: 701, column: 7, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 701, column: 6)
!2659 = !DILocation(line: 701, column: 6, scope: !2650)
!2660 = !DILocation(line: 702, column: 3, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 701, column: 20)
!2662 = !DILocation(line: 705, column: 6, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 705, column: 6)
!2664 = !DILocation(line: 705, column: 6, scope: !2650)
!2665 = !DILocation(line: 709, column: 34, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 705, column: 18)
!2667 = !DILocation(line: 709, column: 3, scope: !2666)
!2668 = !DILocation(line: 719, column: 9, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 719, column: 7)
!2670 = !DILocation(line: 719, column: 22, scope: !2669)
!2671 = !DILocation(line: 719, column: 29, scope: !2669)
!2672 = !DILocation(line: 719, column: 40, scope: !2669)
!2673 = !DILocation(line: 720, column: 7, scope: !2669)
!2674 = !DILocation(line: 720, column: 11, scope: !2669)
!2675 = !DILocation(line: 720, column: 24, scope: !2669)
!2676 = !DILocation(line: 720, column: 31, scope: !2669)
!2677 = !DILocation(line: 720, column: 44, scope: !2669)
!2678 = !DILocation(line: 719, column: 7, scope: !2666)
!2679 = !DILocation(line: 724, column: 10, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 720, column: 51)
!2681 = !DILocation(line: 725, column: 37, scope: !2680)
!2682 = !DILocation(line: 726, column: 9, scope: !2680)
!2683 = !DILocation(line: 725, column: 4, scope: !2680)
!2684 = !DILocation(line: 727, column: 10, scope: !2680)
!2685 = !DILocation(line: 736, column: 8, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 736, column: 8)
!2687 = !DILocation(line: 736, column: 21, scope: !2686)
!2688 = !DILocation(line: 737, column: 8, scope: !2686)
!2689 = !DILocation(line: 737, column: 19, scope: !2686)
!2690 = !DILocation(line: 736, column: 8, scope: !2680)
!2691 = !DILocation(line: 738, column: 11, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 737, column: 53)
!2693 = !DILocation(line: 739, column: 39, scope: !2692)
!2694 = !DILocation(line: 740, column: 11, scope: !2692)
!2695 = !DILocation(line: 741, column: 11, scope: !2692)
!2696 = !DILocation(line: 739, column: 5, scope: !2692)
!2697 = !DILocation(line: 742, column: 11, scope: !2692)
!2698 = !DILocation(line: 743, column: 5, scope: !2692)
!2699 = !DILocation(line: 743, column: 18, scope: !2692)
!2700 = !DILocation(line: 743, column: 25, scope: !2692)
!2701 = !DILocation(line: 743, column: 36, scope: !2692)
!2702 = !DILocation(line: 745, column: 4, scope: !2692)
!2703 = !DILocation(line: 746, column: 3, scope: !2680)
!2704 = !DILocation(line: 752, column: 7, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 752, column: 7)
!2706 = !DILocation(line: 752, column: 20, scope: !2705)
!2707 = !DILocation(line: 752, column: 27, scope: !2705)
!2708 = !DILocation(line: 752, column: 7, scope: !2666)
!2709 = !DILocation(line: 756, column: 4, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 752, column: 34)
!2711 = !DILocation(line: 756, column: 17, scope: !2710)
!2712 = !DILocation(line: 756, column: 24, scope: !2710)
!2713 = !DILocation(line: 756, column: 31, scope: !2710)
!2714 = !DILocation(line: 756, column: 37, scope: !2710)
!2715 = !DILocation(line: 756, column: 54, scope: !2710)
!2716 = !DILocation(line: 757, column: 9, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 757, column: 8)
!2718 = !DILocation(line: 757, column: 22, scope: !2717)
!2719 = !DILocation(line: 757, column: 29, scope: !2717)
!2720 = !DILocation(line: 757, column: 36, scope: !2717)
!2721 = !DILocation(line: 757, column: 42, scope: !2717)
!2722 = !DILocation(line: 757, column: 8, scope: !2710)
!2723 = !DILocation(line: 759, column: 9, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 757, column: 61)
!2725 = !DILocation(line: 759, column: 22, scope: !2724)
!2726 = !DILocation(line: 759, column: 29, scope: !2724)
!2727 = !DILocation(line: 759, column: 36, scope: !2724)
!2728 = !DILocation(line: 760, column: 9, scope: !2724)
!2729 = !DILocation(line: 758, column: 5, scope: !2724)
!2730 = !DILocation(line: 758, column: 17, scope: !2724)
!2731 = !DILocation(line: 758, column: 25, scope: !2724)
!2732 = !DILocation(line: 758, column: 44, scope: !2724)
!2733 = !DILocation(line: 762, column: 5, scope: !2724)
!2734 = !DILocation(line: 764, column: 5, scope: !2724)
!2735 = !DILocation(line: 764, column: 18, scope: !2724)
!2736 = !DILocation(line: 764, column: 25, scope: !2724)
!2737 = !DILocation(line: 764, column: 32, scope: !2724)
!2738 = !DILocation(line: 764, column: 38, scope: !2724)
!2739 = !DILocation(line: 764, column: 48, scope: !2724)
!2740 = !DILocation(line: 765, column: 4, scope: !2724)
!2741 = !DILocation(line: 766, column: 3, scope: !2710)
!2742 = !DILocation(line: 767, column: 2, scope: !2666)
!2743 = !DILocation(line: 771, column: 6, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 771, column: 6)
!2745 = !DILocation(line: 771, column: 19, scope: !2744)
!2746 = !DILocation(line: 771, column: 26, scope: !2744)
!2747 = !DILocation(line: 771, column: 6, scope: !2650)
!2748 = !DILocation(line: 772, column: 3, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 771, column: 40)
!2750 = !DILocation(line: 772, column: 16, scope: !2749)
!2751 = !DILocation(line: 772, column: 23, scope: !2749)
!2752 = !DILocation(line: 772, column: 35, scope: !2749)
!2753 = !DILocation(line: 773, column: 2, scope: !2749)
!2754 = !DILocation(line: 774, column: 3, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 773, column: 9)
!2756 = !DILocation(line: 779, column: 6, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 779, column: 6)
!2758 = !DILocation(line: 779, column: 19, scope: !2757)
!2759 = !DILocation(line: 779, column: 26, scope: !2757)
!2760 = !DILocation(line: 779, column: 6, scope: !2650)
!2761 = !DILocation(line: 787, column: 2, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 779, column: 40)
!2763 = !DILocation(line: 800, column: 7, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 800, column: 7)
!2765 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 787, column: 9)
!2766 = !DILocation(line: 800, column: 20, scope: !2764)
!2767 = !DILocation(line: 801, column: 7, scope: !2764)
!2768 = !DILocation(line: 801, column: 18, scope: !2764)
!2769 = !DILocation(line: 800, column: 7, scope: !2765)
!2770 = !DILocation(line: 802, column: 8, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 802, column: 8)
!2772 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 801, column: 52)
!2773 = !DILocation(line: 802, column: 8, scope: !2772)
!2774 = !DILocation(line: 803, column: 5, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 802, column: 20)
!2776 = !DILocation(line: 807, column: 4, scope: !2775)
!2777 = !DILocation(line: 820, column: 4, scope: !2772)
!2778 = !DILocation(line: 820, column: 17, scope: !2772)
!2779 = !DILocation(line: 820, column: 24, scope: !2772)
!2780 = !DILocation(line: 820, column: 35, scope: !2772)
!2781 = !DILocation(line: 823, column: 4, scope: !2772)
!2782 = !DILocation(line: 823, column: 17, scope: !2772)
!2783 = !DILocation(line: 823, column: 24, scope: !2772)
!2784 = !DILocation(line: 823, column: 35, scope: !2772)
!2785 = !DILocation(line: 826, column: 4, scope: !2772)
!2786 = !DILocation(line: 826, column: 17, scope: !2772)
!2787 = !DILocation(line: 826, column: 24, scope: !2772)
!2788 = !DILocation(line: 826, column: 35, scope: !2772)
!2789 = !DILocation(line: 827, column: 3, scope: !2772)
!2790 = !DILocation(line: 832, column: 8, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 831, column: 7)
!2792 = !DILocation(line: 832, column: 21, scope: !2791)
!2793 = !DILocation(line: 833, column: 8, scope: !2791)
!2794 = !DILocation(line: 833, column: 19, scope: !2791)
!2795 = !DILocation(line: 831, column: 7, scope: !2765)
!2796 = !DILocation(line: 834, column: 30, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2791, file: !3, line: 833, column: 48)
!2798 = !DILocation(line: 834, column: 43, scope: !2797)
!2799 = !DILocation(line: 834, column: 50, scope: !2797)
!2800 = !DILocation(line: 834, column: 4, scope: !2797)
!2801 = !DILocation(line: 835, column: 3, scope: !2797)
!2802 = !DILocation(line: 838, column: 58, scope: !2650)
!2803 = !DILocation(line: 839, column: 7, scope: !2650)
!2804 = !DILocation(line: 839, column: 14, scope: !2650)
!2805 = !DILocation(line: 838, column: 28, scope: !2650)
!2806 = !DILocation(line: 839, column: 20, scope: !2650)
!2807 = !DILocation(line: 839, column: 33, scope: !2650)
!2808 = !DILocation(line: 838, column: 2, scope: !2650)
!2809 = !DILocation(line: 841, column: 2, scope: !2650)
!2810 = !DILocation(line: 842, column: 1, scope: !2650)
!2811 = distinct !DISubprogram(name: "acpi_ds_restart_control_method", scope: !3, file: !3, line: 603, type: !2812, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !874)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!36, !148, !53}
!2814 = !DILocalVariable(name: "walk_state", arg: 1, scope: !2811, file: !3, line: 603, type: !148)
!2815 = !DILocation(line: 603, column: 56, scope: !2811)
!2816 = !DILocalVariable(name: "return_desc", arg: 2, scope: !2811, file: !3, line: 604, type: !53)
!2817 = !DILocation(line: 604, column: 38, scope: !2811)
!2818 = !DILocalVariable(name: "status", scope: !2811, file: !3, line: 606, type: !36)
!2819 = !DILocation(line: 606, column: 14, scope: !2811)
!2820 = !DILocalVariable(name: "same_as_implicit_return", scope: !2811, file: !3, line: 607, type: !832)
!2821 = !DILocation(line: 607, column: 6, scope: !2811)
!2822 = !DILocation(line: 623, column: 6, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 623, column: 6)
!2824 = !DILocation(line: 623, column: 6, scope: !2811)
!2825 = !DILocation(line: 628, column: 8, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 623, column: 19)
!2827 = !DILocation(line: 628, column: 20, scope: !2826)
!2828 = !DILocation(line: 628, column: 43, scope: !2826)
!2829 = !DILocation(line: 628, column: 40, scope: !2826)
!2830 = !DILocation(line: 627, column: 27, scope: !2826)
!2831 = !DILocation(line: 632, column: 7, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 632, column: 7)
!2833 = !DILocation(line: 632, column: 19, scope: !2832)
!2834 = !DILocation(line: 632, column: 7, scope: !2826)
!2835 = !DILocation(line: 636, column: 33, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2832, file: !3, line: 632, column: 32)
!2837 = !DILocation(line: 636, column: 46, scope: !2836)
!2838 = !DILocation(line: 636, column: 13, scope: !2836)
!2839 = !DILocation(line: 636, column: 11, scope: !2836)
!2840 = !DILocation(line: 637, column: 8, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 637, column: 8)
!2842 = !DILocation(line: 637, column: 8, scope: !2836)
!2843 = !DILocation(line: 638, column: 30, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 637, column: 30)
!2845 = !DILocation(line: 638, column: 5, scope: !2844)
!2846 = !DILocation(line: 639, column: 5, scope: !2844)
!2847 = !DILocation(line: 646, column: 30, scope: !2836)
!2848 = !DILocation(line: 646, column: 4, scope: !2836)
!2849 = !DILocation(line: 646, column: 16, scope: !2836)
!2850 = !DILocation(line: 646, column: 28, scope: !2836)
!2851 = !DILocation(line: 647, column: 3, scope: !2836)
!2852 = !DILocation(line: 661, column: 6, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2832, file: !3, line: 660, column: 12)
!2854 = !DILocation(line: 661, column: 19, scope: !2853)
!2855 = !DILocation(line: 660, column: 13, scope: !2853)
!2856 = !DILocation(line: 662, column: 5, scope: !2853)
!2857 = !DILocation(line: 662, column: 8, scope: !2853)
!2858 = !DILocation(line: 660, column: 12, scope: !2832)
!2859 = !DILocation(line: 668, column: 29, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2853, file: !3, line: 662, column: 33)
!2861 = !DILocation(line: 668, column: 4, scope: !2860)
!2862 = !DILocation(line: 669, column: 3, scope: !2860)
!2863 = !DILocation(line: 670, column: 2, scope: !2826)
!2864 = !DILocation(line: 672, column: 2, scope: !2811)
!2865 = !DILocation(line: 673, column: 1, scope: !2811)
!2866 = distinct !DISubprogram(name: "kzalloc", scope: !24, file: !24, line: 662, type: !2867, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !874)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!48, !1453, !1926}
!2869 = !DILocalVariable(name: "s", arg: 1, scope: !2870, file: !24, line: 445, type: !1672)
!2870 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !24, file: !24, line: 445, type: !2871, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !874)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!48, !1672, !1926, !1453}
!2873 = !DILocation(line: 445, column: 72, scope: !2870, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 552, column: 10, scope: !2875, inlinedAt: !2878)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !24, line: 540, column: 34)
!2876 = distinct !DILexicalBlock(scope: !2877, file: !24, line: 540, column: 6)
!2877 = distinct !DISubprogram(name: "kmalloc", scope: !24, file: !24, line: 538, type: !2867, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !874)
!2878 = distinct !DILocation(line: 664, column: 9, scope: !2866)
!2879 = !DILocalVariable(name: "flags", arg: 2, scope: !2870, file: !24, line: 446, type: !1926)
!2880 = !DILocation(line: 446, column: 9, scope: !2870, inlinedAt: !2874)
!2881 = !DILocalVariable(name: "size", arg: 3, scope: !2870, file: !24, line: 446, type: !1453)
!2882 = !DILocation(line: 446, column: 23, scope: !2870, inlinedAt: !2874)
!2883 = !DILocalVariable(name: "ret", scope: !2870, file: !24, line: 448, type: !48)
!2884 = !DILocation(line: 448, column: 8, scope: !2870, inlinedAt: !2874)
!2885 = !DILocalVariable(name: "flags", arg: 1, scope: !2886, file: !24, line: 318, type: !1926)
!2886 = distinct !DISubprogram(name: "kmalloc_type", scope: !24, file: !24, line: 318, type: !2887, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !874)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!23, !1926}
!2889 = !DILocation(line: 318, column: 67, scope: !2886, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 553, column: 20, scope: !2875, inlinedAt: !2878)
!2891 = !DILocalVariable(name: "size", arg: 1, scope: !2892, file: !24, line: 346, type: !1453)
!2892 = distinct !DISubprogram(name: "kmalloc_index", scope: !24, file: !24, line: 346, type: !2893, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !874)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!7, !1453}
!2895 = !DILocation(line: 346, column: 58, scope: !2892, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 547, column: 11, scope: !2875, inlinedAt: !2878)
!2897 = !DILocalVariable(name: "size", arg: 1, scope: !2898, file: !24, line: 472, type: !1453)
!2898 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !24, file: !24, line: 472, type: !2899, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !874)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!48, !1453, !1926, !7}
!2901 = !DILocation(line: 472, column: 28, scope: !2898, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 481, column: 9, scope: !2903, inlinedAt: !2904)
!2903 = distinct !DISubprogram(name: "kmalloc_large", scope: !24, file: !24, line: 478, type: !2867, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !874)
!2904 = distinct !DILocation(line: 545, column: 11, scope: !2905, inlinedAt: !2878)
!2905 = distinct !DILexicalBlock(scope: !2875, file: !24, line: 544, column: 7)
!2906 = !DILocalVariable(name: "flags", arg: 2, scope: !2898, file: !24, line: 472, type: !1926)
!2907 = !DILocation(line: 472, column: 40, scope: !2898, inlinedAt: !2902)
!2908 = !DILocalVariable(name: "order", arg: 3, scope: !2898, file: !24, line: 472, type: !7)
!2909 = !DILocation(line: 472, column: 60, scope: !2898, inlinedAt: !2902)
!2910 = !DILocalVariable(name: "size", arg: 1, scope: !2903, file: !24, line: 478, type: !1453)
!2911 = !DILocation(line: 478, column: 51, scope: !2903, inlinedAt: !2904)
!2912 = !DILocalVariable(name: "flags", arg: 2, scope: !2903, file: !24, line: 478, type: !1926)
!2913 = !DILocation(line: 478, column: 63, scope: !2903, inlinedAt: !2904)
!2914 = !DILocalVariable(name: "order", scope: !2903, file: !24, line: 480, type: !7)
!2915 = !DILocation(line: 480, column: 15, scope: !2903, inlinedAt: !2904)
!2916 = !DILocalVariable(name: "size", arg: 1, scope: !2877, file: !24, line: 538, type: !1453)
!2917 = !DILocation(line: 538, column: 45, scope: !2877, inlinedAt: !2878)
!2918 = !DILocalVariable(name: "flags", arg: 2, scope: !2877, file: !24, line: 538, type: !1926)
!2919 = !DILocation(line: 538, column: 57, scope: !2877, inlinedAt: !2878)
!2920 = !DILocalVariable(name: "index", scope: !2875, file: !24, line: 542, type: !7)
!2921 = !DILocation(line: 542, column: 16, scope: !2875, inlinedAt: !2878)
!2922 = !DILocalVariable(name: "size", arg: 1, scope: !2866, file: !24, line: 662, type: !1453)
!2923 = !DILocation(line: 662, column: 36, scope: !2866)
!2924 = !DILocalVariable(name: "flags", arg: 2, scope: !2866, file: !24, line: 662, type: !1926)
!2925 = !DILocation(line: 662, column: 48, scope: !2866)
!2926 = !DILocation(line: 664, column: 17, scope: !2866)
!2927 = !DILocation(line: 664, column: 23, scope: !2866)
!2928 = !DILocation(line: 664, column: 29, scope: !2866)
!2929 = !DILocation(line: 540, column: 27, scope: !2876, inlinedAt: !2878)
!2930 = !DILocation(line: 540, column: 6, scope: !2876, inlinedAt: !2878)
!2931 = !DILocation(line: 540, column: 6, scope: !2877, inlinedAt: !2878)
!2932 = !DILocation(line: 544, column: 7, scope: !2905, inlinedAt: !2878)
!2933 = !DILocation(line: 544, column: 12, scope: !2905, inlinedAt: !2878)
!2934 = !DILocation(line: 544, column: 7, scope: !2875, inlinedAt: !2878)
!2935 = !DILocation(line: 545, column: 25, scope: !2905, inlinedAt: !2878)
!2936 = !DILocation(line: 545, column: 31, scope: !2905, inlinedAt: !2878)
!2937 = !DILocation(line: 480, column: 33, scope: !2903, inlinedAt: !2904)
!2938 = !DILocation(line: 480, column: 23, scope: !2903, inlinedAt: !2904)
!2939 = !DILocation(line: 481, column: 29, scope: !2903, inlinedAt: !2904)
!2940 = !DILocation(line: 481, column: 35, scope: !2903, inlinedAt: !2904)
!2941 = !DILocation(line: 481, column: 42, scope: !2903, inlinedAt: !2904)
!2942 = !DILocation(line: 474, column: 23, scope: !2898, inlinedAt: !2902)
!2943 = !DILocation(line: 474, column: 29, scope: !2898, inlinedAt: !2902)
!2944 = !DILocation(line: 474, column: 36, scope: !2898, inlinedAt: !2902)
!2945 = !DILocation(line: 474, column: 9, scope: !2898, inlinedAt: !2902)
!2946 = !DILocation(line: 545, column: 4, scope: !2905, inlinedAt: !2878)
!2947 = !DILocation(line: 547, column: 25, scope: !2875, inlinedAt: !2878)
!2948 = !DILocation(line: 348, column: 7, scope: !2949, inlinedAt: !2896)
!2949 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 348, column: 6)
!2950 = !DILocation(line: 348, column: 6, scope: !2892, inlinedAt: !2896)
!2951 = !DILocation(line: 349, column: 3, scope: !2949, inlinedAt: !2896)
!2952 = !DILocation(line: 351, column: 6, scope: !2953, inlinedAt: !2896)
!2953 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 351, column: 6)
!2954 = !DILocation(line: 351, column: 11, scope: !2953, inlinedAt: !2896)
!2955 = !DILocation(line: 351, column: 6, scope: !2892, inlinedAt: !2896)
!2956 = !DILocation(line: 352, column: 3, scope: !2953, inlinedAt: !2896)
!2957 = !DILocation(line: 354, column: 32, scope: !2958, inlinedAt: !2896)
!2958 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 354, column: 6)
!2959 = !DILocation(line: 354, column: 37, scope: !2958, inlinedAt: !2896)
!2960 = !DILocation(line: 354, column: 42, scope: !2958, inlinedAt: !2896)
!2961 = !DILocation(line: 354, column: 45, scope: !2958, inlinedAt: !2896)
!2962 = !DILocation(line: 354, column: 50, scope: !2958, inlinedAt: !2896)
!2963 = !DILocation(line: 354, column: 6, scope: !2892, inlinedAt: !2896)
!2964 = !DILocation(line: 355, column: 3, scope: !2958, inlinedAt: !2896)
!2965 = !DILocation(line: 356, column: 32, scope: !2966, inlinedAt: !2896)
!2966 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 356, column: 6)
!2967 = !DILocation(line: 356, column: 37, scope: !2966, inlinedAt: !2896)
!2968 = !DILocation(line: 356, column: 43, scope: !2966, inlinedAt: !2896)
!2969 = !DILocation(line: 356, column: 46, scope: !2966, inlinedAt: !2896)
!2970 = !DILocation(line: 356, column: 51, scope: !2966, inlinedAt: !2896)
!2971 = !DILocation(line: 356, column: 6, scope: !2892, inlinedAt: !2896)
!2972 = !DILocation(line: 357, column: 3, scope: !2966, inlinedAt: !2896)
!2973 = !DILocation(line: 358, column: 6, scope: !2974, inlinedAt: !2896)
!2974 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 358, column: 6)
!2975 = !DILocation(line: 358, column: 11, scope: !2974, inlinedAt: !2896)
!2976 = !DILocation(line: 358, column: 6, scope: !2892, inlinedAt: !2896)
!2977 = !DILocation(line: 358, column: 26, scope: !2974, inlinedAt: !2896)
!2978 = !DILocation(line: 359, column: 6, scope: !2979, inlinedAt: !2896)
!2979 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 359, column: 6)
!2980 = !DILocation(line: 359, column: 11, scope: !2979, inlinedAt: !2896)
!2981 = !DILocation(line: 359, column: 6, scope: !2892, inlinedAt: !2896)
!2982 = !DILocation(line: 359, column: 26, scope: !2979, inlinedAt: !2896)
!2983 = !DILocation(line: 360, column: 6, scope: !2984, inlinedAt: !2896)
!2984 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 360, column: 6)
!2985 = !DILocation(line: 360, column: 11, scope: !2984, inlinedAt: !2896)
!2986 = !DILocation(line: 360, column: 6, scope: !2892, inlinedAt: !2896)
!2987 = !DILocation(line: 360, column: 26, scope: !2984, inlinedAt: !2896)
!2988 = !DILocation(line: 361, column: 6, scope: !2989, inlinedAt: !2896)
!2989 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 361, column: 6)
!2990 = !DILocation(line: 361, column: 11, scope: !2989, inlinedAt: !2896)
!2991 = !DILocation(line: 361, column: 6, scope: !2892, inlinedAt: !2896)
!2992 = !DILocation(line: 361, column: 26, scope: !2989, inlinedAt: !2896)
!2993 = !DILocation(line: 362, column: 6, scope: !2994, inlinedAt: !2896)
!2994 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 362, column: 6)
!2995 = !DILocation(line: 362, column: 11, scope: !2994, inlinedAt: !2896)
!2996 = !DILocation(line: 362, column: 6, scope: !2892, inlinedAt: !2896)
!2997 = !DILocation(line: 362, column: 26, scope: !2994, inlinedAt: !2896)
!2998 = !DILocation(line: 363, column: 6, scope: !2999, inlinedAt: !2896)
!2999 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 363, column: 6)
!3000 = !DILocation(line: 363, column: 11, scope: !2999, inlinedAt: !2896)
!3001 = !DILocation(line: 363, column: 6, scope: !2892, inlinedAt: !2896)
!3002 = !DILocation(line: 363, column: 26, scope: !2999, inlinedAt: !2896)
!3003 = !DILocation(line: 364, column: 6, scope: !3004, inlinedAt: !2896)
!3004 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 364, column: 6)
!3005 = !DILocation(line: 364, column: 11, scope: !3004, inlinedAt: !2896)
!3006 = !DILocation(line: 364, column: 6, scope: !2892, inlinedAt: !2896)
!3007 = !DILocation(line: 364, column: 26, scope: !3004, inlinedAt: !2896)
!3008 = !DILocation(line: 365, column: 6, scope: !3009, inlinedAt: !2896)
!3009 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 365, column: 6)
!3010 = !DILocation(line: 365, column: 11, scope: !3009, inlinedAt: !2896)
!3011 = !DILocation(line: 365, column: 6, scope: !2892, inlinedAt: !2896)
!3012 = !DILocation(line: 365, column: 26, scope: !3009, inlinedAt: !2896)
!3013 = !DILocation(line: 366, column: 6, scope: !3014, inlinedAt: !2896)
!3014 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 366, column: 6)
!3015 = !DILocation(line: 366, column: 11, scope: !3014, inlinedAt: !2896)
!3016 = !DILocation(line: 366, column: 6, scope: !2892, inlinedAt: !2896)
!3017 = !DILocation(line: 366, column: 26, scope: !3014, inlinedAt: !2896)
!3018 = !DILocation(line: 367, column: 6, scope: !3019, inlinedAt: !2896)
!3019 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 367, column: 6)
!3020 = !DILocation(line: 367, column: 11, scope: !3019, inlinedAt: !2896)
!3021 = !DILocation(line: 367, column: 6, scope: !2892, inlinedAt: !2896)
!3022 = !DILocation(line: 367, column: 26, scope: !3019, inlinedAt: !2896)
!3023 = !DILocation(line: 368, column: 6, scope: !3024, inlinedAt: !2896)
!3024 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 368, column: 6)
!3025 = !DILocation(line: 368, column: 11, scope: !3024, inlinedAt: !2896)
!3026 = !DILocation(line: 368, column: 6, scope: !2892, inlinedAt: !2896)
!3027 = !DILocation(line: 368, column: 26, scope: !3024, inlinedAt: !2896)
!3028 = !DILocation(line: 369, column: 6, scope: !3029, inlinedAt: !2896)
!3029 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 369, column: 6)
!3030 = !DILocation(line: 369, column: 11, scope: !3029, inlinedAt: !2896)
!3031 = !DILocation(line: 369, column: 6, scope: !2892, inlinedAt: !2896)
!3032 = !DILocation(line: 369, column: 26, scope: !3029, inlinedAt: !2896)
!3033 = !DILocation(line: 370, column: 6, scope: !3034, inlinedAt: !2896)
!3034 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 370, column: 6)
!3035 = !DILocation(line: 370, column: 11, scope: !3034, inlinedAt: !2896)
!3036 = !DILocation(line: 370, column: 6, scope: !2892, inlinedAt: !2896)
!3037 = !DILocation(line: 370, column: 26, scope: !3034, inlinedAt: !2896)
!3038 = !DILocation(line: 371, column: 6, scope: !3039, inlinedAt: !2896)
!3039 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 371, column: 6)
!3040 = !DILocation(line: 371, column: 11, scope: !3039, inlinedAt: !2896)
!3041 = !DILocation(line: 371, column: 6, scope: !2892, inlinedAt: !2896)
!3042 = !DILocation(line: 371, column: 26, scope: !3039, inlinedAt: !2896)
!3043 = !DILocation(line: 372, column: 6, scope: !3044, inlinedAt: !2896)
!3044 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 372, column: 6)
!3045 = !DILocation(line: 372, column: 11, scope: !3044, inlinedAt: !2896)
!3046 = !DILocation(line: 372, column: 6, scope: !2892, inlinedAt: !2896)
!3047 = !DILocation(line: 372, column: 26, scope: !3044, inlinedAt: !2896)
!3048 = !DILocation(line: 373, column: 6, scope: !3049, inlinedAt: !2896)
!3049 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 373, column: 6)
!3050 = !DILocation(line: 373, column: 11, scope: !3049, inlinedAt: !2896)
!3051 = !DILocation(line: 373, column: 6, scope: !2892, inlinedAt: !2896)
!3052 = !DILocation(line: 373, column: 26, scope: !3049, inlinedAt: !2896)
!3053 = !DILocation(line: 374, column: 6, scope: !3054, inlinedAt: !2896)
!3054 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 374, column: 6)
!3055 = !DILocation(line: 374, column: 11, scope: !3054, inlinedAt: !2896)
!3056 = !DILocation(line: 374, column: 6, scope: !2892, inlinedAt: !2896)
!3057 = !DILocation(line: 374, column: 26, scope: !3054, inlinedAt: !2896)
!3058 = !DILocation(line: 375, column: 6, scope: !3059, inlinedAt: !2896)
!3059 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 375, column: 6)
!3060 = !DILocation(line: 375, column: 11, scope: !3059, inlinedAt: !2896)
!3061 = !DILocation(line: 375, column: 6, scope: !2892, inlinedAt: !2896)
!3062 = !DILocation(line: 375, column: 27, scope: !3059, inlinedAt: !2896)
!3063 = !DILocation(line: 376, column: 6, scope: !3064, inlinedAt: !2896)
!3064 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 376, column: 6)
!3065 = !DILocation(line: 376, column: 11, scope: !3064, inlinedAt: !2896)
!3066 = !DILocation(line: 376, column: 6, scope: !2892, inlinedAt: !2896)
!3067 = !DILocation(line: 376, column: 32, scope: !3064, inlinedAt: !2896)
!3068 = !DILocation(line: 377, column: 6, scope: !3069, inlinedAt: !2896)
!3069 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 377, column: 6)
!3070 = !DILocation(line: 377, column: 11, scope: !3069, inlinedAt: !2896)
!3071 = !DILocation(line: 377, column: 6, scope: !2892, inlinedAt: !2896)
!3072 = !DILocation(line: 377, column: 32, scope: !3069, inlinedAt: !2896)
!3073 = !DILocation(line: 378, column: 6, scope: !3074, inlinedAt: !2896)
!3074 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 378, column: 6)
!3075 = !DILocation(line: 378, column: 11, scope: !3074, inlinedAt: !2896)
!3076 = !DILocation(line: 378, column: 6, scope: !2892, inlinedAt: !2896)
!3077 = !DILocation(line: 378, column: 32, scope: !3074, inlinedAt: !2896)
!3078 = !DILocation(line: 379, column: 6, scope: !3079, inlinedAt: !2896)
!3079 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 379, column: 6)
!3080 = !DILocation(line: 379, column: 11, scope: !3079, inlinedAt: !2896)
!3081 = !DILocation(line: 379, column: 6, scope: !2892, inlinedAt: !2896)
!3082 = !DILocation(line: 379, column: 33, scope: !3079, inlinedAt: !2896)
!3083 = !DILocation(line: 380, column: 6, scope: !3084, inlinedAt: !2896)
!3084 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 380, column: 6)
!3085 = !DILocation(line: 380, column: 11, scope: !3084, inlinedAt: !2896)
!3086 = !DILocation(line: 380, column: 6, scope: !2892, inlinedAt: !2896)
!3087 = !DILocation(line: 380, column: 33, scope: !3084, inlinedAt: !2896)
!3088 = !DILocation(line: 381, column: 6, scope: !3089, inlinedAt: !2896)
!3089 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 381, column: 6)
!3090 = !DILocation(line: 381, column: 11, scope: !3089, inlinedAt: !2896)
!3091 = !DILocation(line: 381, column: 6, scope: !2892, inlinedAt: !2896)
!3092 = !DILocation(line: 381, column: 33, scope: !3089, inlinedAt: !2896)
!3093 = !DILocation(line: 382, column: 2, scope: !3094, inlinedAt: !2896)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !24, line: 382, column: 2)
!3095 = distinct !DILexicalBlock(scope: !2892, file: !24, line: 382, column: 2)
!3096 = !{i32 -2144094521, i32 -2144094492, i32 -2144094446, i32 -2144094388, i32 -2144094334, i32 -2144094280, i32 -2144094225, i32 -2144094194}
!3097 = !DILocation(line: 382, column: 2, scope: !3098, inlinedAt: !2896)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !24, line: 382, column: 2)
!3099 = distinct !DILexicalBlock(scope: !3095, file: !24, line: 382, column: 2)
!3100 = !{i32 -2144093751, i32 -2144093744, i32 -2144093690, i32 -2144093659, i32 -2144093629}
!3101 = !DILocation(line: 382, column: 2, scope: !3099, inlinedAt: !2896)
!3102 = !DILocation(line: 386, column: 1, scope: !2892, inlinedAt: !2896)
!3103 = !DILocation(line: 547, column: 9, scope: !2875, inlinedAt: !2878)
!3104 = !DILocation(line: 549, column: 8, scope: !3105, inlinedAt: !2878)
!3105 = distinct !DILexicalBlock(scope: !2875, file: !24, line: 549, column: 7)
!3106 = !DILocation(line: 549, column: 7, scope: !2875, inlinedAt: !2878)
!3107 = !DILocation(line: 550, column: 4, scope: !3105, inlinedAt: !2878)
!3108 = !DILocation(line: 553, column: 33, scope: !2875, inlinedAt: !2878)
!3109 = !DILocation(line: 325, column: 6, scope: !3110, inlinedAt: !2890)
!3110 = distinct !DILexicalBlock(scope: !2886, file: !24, line: 325, column: 6)
!3111 = !DILocation(line: 325, column: 6, scope: !2886, inlinedAt: !2890)
!3112 = !DILocation(line: 326, column: 3, scope: !3110, inlinedAt: !2890)
!3113 = !DILocation(line: 332, column: 9, scope: !2886, inlinedAt: !2890)
!3114 = !DILocation(line: 332, column: 15, scope: !2886, inlinedAt: !2890)
!3115 = !DILocation(line: 332, column: 2, scope: !2886, inlinedAt: !2890)
!3116 = !DILocation(line: 336, column: 1, scope: !2886, inlinedAt: !2890)
!3117 = !DILocation(line: 553, column: 5, scope: !2875, inlinedAt: !2878)
!3118 = !DILocation(line: 553, column: 41, scope: !2875, inlinedAt: !2878)
!3119 = !DILocation(line: 554, column: 5, scope: !2875, inlinedAt: !2878)
!3120 = !DILocation(line: 554, column: 12, scope: !2875, inlinedAt: !2878)
!3121 = !DILocation(line: 448, column: 31, scope: !2870, inlinedAt: !2874)
!3122 = !DILocation(line: 448, column: 34, scope: !2870, inlinedAt: !2874)
!3123 = !DILocation(line: 448, column: 14, scope: !2870, inlinedAt: !2874)
!3124 = !DILocation(line: 450, column: 22, scope: !2870, inlinedAt: !2874)
!3125 = !DILocation(line: 450, column: 25, scope: !2870, inlinedAt: !2874)
!3126 = !DILocation(line: 450, column: 30, scope: !2870, inlinedAt: !2874)
!3127 = !DILocation(line: 450, column: 36, scope: !2870, inlinedAt: !2874)
!3128 = !DILocation(line: 450, column: 8, scope: !2870, inlinedAt: !2874)
!3129 = !DILocation(line: 450, column: 6, scope: !2870, inlinedAt: !2874)
!3130 = !DILocation(line: 451, column: 9, scope: !2870, inlinedAt: !2874)
!3131 = !DILocation(line: 552, column: 3, scope: !2875, inlinedAt: !2878)
!3132 = !DILocation(line: 557, column: 19, scope: !2877, inlinedAt: !2878)
!3133 = !DILocation(line: 557, column: 25, scope: !2877, inlinedAt: !2878)
!3134 = !DILocation(line: 557, column: 9, scope: !2877, inlinedAt: !2878)
!3135 = !DILocation(line: 557, column: 2, scope: !2877, inlinedAt: !2878)
!3136 = !DILocation(line: 558, column: 1, scope: !2877, inlinedAt: !2878)
!3137 = !DILocation(line: 664, column: 2, scope: !2866)
!3138 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !3139, file: !3139, line: 646, type: !3140, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !874)
!3139 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!805}
!3142 = !DILocalVariable(name: "__ret", scope: !3143, file: !3139, line: 648, type: !805)
!3143 = distinct !DILexicalBlock(scope: !3138, file: !3139, line: 648, column: 9)
!3144 = !DILocation(line: 648, column: 9, scope: !3143)
!3145 = !DILocalVariable(name: "__edi", scope: !3143, file: !3139, line: 648, type: !805)
!3146 = !DILocalVariable(name: "__esi", scope: !3143, file: !3139, line: 648, type: !805)
!3147 = !DILocalVariable(name: "__edx", scope: !3143, file: !3139, line: 648, type: !805)
!3148 = !DILocalVariable(name: "__ecx", scope: !3143, file: !3139, line: 648, type: !805)
!3149 = !DILocalVariable(name: "__eax", scope: !3143, file: !3139, line: 648, type: !805)
!3150 = !DILocation(line: 648, column: 9, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !3139, line: 648, column: 9)
!3152 = distinct !DILexicalBlock(scope: !3143, file: !3139, line: 648, column: 9)
!3153 = !{i32 -2145768127, i32 -2145765812, i32 -2145765578, i32 -2145765527, i32 -2145765499, i32 -2145765474, i32 -2145765790, i32 -2145765777, i32 -2145765339, i32 -2145765220, i32 -2145765685, i32 -2145765658, i32 -2145765630, i32 -2145765600}
!3154 = !DILocalVariable(name: "__mask", scope: !3155, file: !3139, line: 648, type: !805)
!3155 = distinct !DILexicalBlock(scope: !3151, file: !3139, line: 648, column: 9)
!3156 = !DILocation(line: 648, column: 9, scope: !3155)
!3157 = !DILocation(line: 648, column: 9, scope: !3152)
!3158 = !DILocation(line: 648, column: 2, scope: !3138)
!3159 = distinct !DISubprogram(name: "get_order", scope: !3160, file: !3160, line: 29, type: !2614, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !874)
!3160 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3161 = !DILocalVariable(name: "x", arg: 1, scope: !3162, file: !3163, line: 366, type: !42)
!3162 = distinct !DISubprogram(name: "fls64", scope: !3163, file: !3163, line: 366, type: !3164, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !874)
!3163 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!832, !42}
!3166 = !DILocation(line: 366, column: 40, scope: !3162, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 46, column: 9, scope: !3159)
!3168 = !DILocalVariable(name: "bitpos", scope: !3162, file: !3163, line: 368, type: !832)
!3169 = !DILocation(line: 368, column: 6, scope: !3162, inlinedAt: !3167)
!3170 = !DILocalVariable(name: "size", arg: 1, scope: !3159, file: !3160, line: 29, type: !805)
!3171 = !DILocation(line: 29, column: 63, scope: !3159)
!3172 = !DILocation(line: 31, column: 27, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3159, file: !3160, line: 31, column: 6)
!3174 = !DILocation(line: 31, column: 6, scope: !3173)
!3175 = !DILocation(line: 31, column: 6, scope: !3159)
!3176 = !DILocation(line: 32, column: 8, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !3160, line: 32, column: 7)
!3178 = distinct !DILexicalBlock(scope: !3173, file: !3160, line: 31, column: 34)
!3179 = !DILocation(line: 32, column: 7, scope: !3178)
!3180 = !DILocation(line: 33, column: 4, scope: !3177)
!3181 = !DILocation(line: 35, column: 7, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3178, file: !3160, line: 35, column: 7)
!3183 = !DILocation(line: 35, column: 12, scope: !3182)
!3184 = !DILocation(line: 35, column: 7, scope: !3178)
!3185 = !DILocation(line: 36, column: 4, scope: !3182)
!3186 = !DILocation(line: 38, column: 10, scope: !3178)
!3187 = !DILocation(line: 38, column: 28, scope: !3178)
!3188 = !DILocation(line: 38, column: 41, scope: !3178)
!3189 = !DILocation(line: 38, column: 3, scope: !3178)
!3190 = !DILocation(line: 41, column: 6, scope: !3159)
!3191 = !DILocation(line: 42, column: 7, scope: !3159)
!3192 = !DILocation(line: 46, column: 15, scope: !3159)
!3193 = !DILocation(line: 374, column: 2, scope: !3162, inlinedAt: !3167)
!3194 = !DILocation(line: 376, column: 14, scope: !3162, inlinedAt: !3167)
!3195 = !{i32 676681}
!3196 = !DILocation(line: 377, column: 9, scope: !3162, inlinedAt: !3167)
!3197 = !DILocation(line: 377, column: 16, scope: !3162, inlinedAt: !3167)
!3198 = !DILocation(line: 46, column: 2, scope: !3159)
!3199 = !DILocation(line: 48, column: 1, scope: !3159)
!3200 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3201, file: !3201, line: 30, type: !3202, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !874)
!3201 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!832, !41}
!3204 = !DILocation(line: 366, column: 40, scope: !3162, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 32, column: 9, scope: !3200)
!3206 = !DILocation(line: 368, column: 6, scope: !3162, inlinedAt: !3205)
!3207 = !DILocalVariable(name: "n", arg: 1, scope: !3200, file: !3201, line: 30, type: !41)
!3208 = !DILocation(line: 30, column: 21, scope: !3200)
!3209 = !DILocation(line: 32, column: 15, scope: !3200)
!3210 = !DILocation(line: 374, column: 2, scope: !3162, inlinedAt: !3205)
!3211 = !DILocation(line: 376, column: 14, scope: !3162, inlinedAt: !3205)
!3212 = !DILocation(line: 377, column: 9, scope: !3162, inlinedAt: !3205)
!3213 = !DILocation(line: 377, column: 16, scope: !3162, inlinedAt: !3205)
!3214 = !DILocation(line: 32, column: 18, scope: !3200)
!3215 = !DILocation(line: 32, column: 2, scope: !3200)
!3216 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3217, file: !3217, line: 137, type: !3218, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !874)
!3217 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!48, !1672, !2367, !1453, !1926}
!3220 = !DILocalVariable(name: "s", arg: 1, scope: !3216, file: !3217, line: 137, type: !1672)
!3221 = !DILocation(line: 137, column: 54, scope: !3216)
!3222 = !DILocalVariable(name: "object", arg: 2, scope: !3216, file: !3217, line: 137, type: !2367)
!3223 = !DILocation(line: 137, column: 69, scope: !3216)
!3224 = !DILocalVariable(name: "size", arg: 3, scope: !3216, file: !3217, line: 138, type: !1453)
!3225 = !DILocation(line: 138, column: 12, scope: !3216)
!3226 = !DILocalVariable(name: "flags", arg: 4, scope: !3216, file: !3217, line: 138, type: !1926)
!3227 = !DILocation(line: 138, column: 24, scope: !3216)
!3228 = !DILocation(line: 140, column: 17, scope: !3216)
!3229 = !DILocation(line: 140, column: 2, scope: !3216)
