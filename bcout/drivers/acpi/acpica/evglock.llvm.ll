; ModuleID = '../bcout/drivers/acpi/acpica/evglock.llvm.bc'
source_filename = "drivers/acpi/acpica/evglock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, {}* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%struct.acpi_table_facs = type { [4 x i8], i32, i32, i32, i32, i32, i64, i8, [3 x i8], i32, [24 x i8] }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.1, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.3 }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { i64, i64 }
%union.anon.3 = type { [12 x i32] }
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
%struct.mm_struct = type { %struct.anon.4, [0 x i64] }
%struct.anon.4 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.5, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.5 = type { %struct.rb_node, i64 }
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

@acpi_gbl_reduced_hardware = external dso_local global i8, align 1
@acpi_gbl_global_lock_present = external dso_local global i8, align 1
@_acpi_module_name = internal constant [8 x i8] c"evglock\00", align 1, !dbg !0
@.str = private unnamed_addr constant [54 x i8] c"No response from Global Lock hardware, disabling lock\00", align 1
@acpi_gbl_global_lock_pending_lock = external dso_local global %struct.spinlock*, align 8
@acpi_gbl_global_lock_pending = external dso_local global i8, align 1
@acpi_gbl_global_lock_mutex = external dso_local global %union.acpi_operand_object*, align 8
@acpi_gbl_global_lock_handle = external dso_local global i16, align 2
@acpi_gbl_global_lock_acquired = external dso_local global i8, align 1
@acpi_gbl_FACS = external dso_local global %struct.acpi_table_facs*, align 8
@acpi_gbl_global_lock_semaphore = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"Cannot release the ACPI Global Lock, it has not been acquired\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"Could not signal Global Lock semaphore\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_init_global_lock_handler() #0 !dbg !40 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !44, metadata !DIExpression()), !dbg !66
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %lock = alloca %struct.spinlock*, align 8
  %.compoundliteral = alloca %struct.spinlock, align 1
  %tmp = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !72, metadata !DIExpression()), !dbg !73
  %0 = load i8, i8* @acpi_gbl_reduced_hardware, align 1, !dbg !74
  %tobool = icmp ne i8 %0, 0, !dbg !74
  br i1 %tobool, label %if.then, label %if.end, !dbg !76

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !77
  br label %return, !dbg !77

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_install_fixed_event_handler(i32 1, i32 (i8*)* @acpi_ev_global_lock_handler, i8* null) #9, !dbg !79
  store i32 %call, i32* %status, align 4, !dbg !80
  store i8 0, i8* @acpi_gbl_global_lock_present, align 1, !dbg !81
  %1 = load i32, i32* %status, align 4, !dbg !82
  %cmp = icmp eq i32 %1, 22, !dbg !84
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !85

if.then1:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 59, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0)) #9, !dbg !86
  store i32 0, i32* %retval, align 4, !dbg !88
  br label %return, !dbg !88

if.end2:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock, metadata !89, metadata !DIExpression()), !dbg !90
  %call3 = call i8* @acpi_os_allocate(i64 0) #9, !dbg !90
  %2 = bitcast i8* %call3 to %struct.spinlock*, !dbg !90
  store %struct.spinlock* %2, %struct.spinlock** %lock, align 8, !dbg !90
  %3 = load %struct.spinlock*, %struct.spinlock** %lock, align 8, !dbg !91
  %tobool4 = icmp ne %struct.spinlock* %3, null, !dbg !91
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !90

if.then5:                                         ; preds = %if.end2
  %4 = load %struct.spinlock*, %struct.spinlock** %lock, align 8, !dbg !92
  store %struct.spinlock* %4, %struct.spinlock** @acpi_gbl_global_lock_pending_lock, align 8, !dbg !92
  br label %do.body, !dbg !92

do.body:                                          ; preds = %if.then5
  %5 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_global_lock_pending_lock, align 8, !dbg !93
  store %struct.spinlock* %5, %struct.spinlock** %lock.addr.i, align 8
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !94
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !95
  %rlock.i = bitcast %union.anon* %7 to %struct.raw_spinlock*, !dbg !95
  %8 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_global_lock_pending_lock, align 8, !dbg !93
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !93
  %rlock = bitcast %union.anon* %9 to %struct.raw_spinlock*, !dbg !93
  %10 = bitcast %struct.spinlock* %8 to i8*, !dbg !93
  %11 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !93
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 %11, i64 0, i1 false), !dbg !93
  br label %do.end, !dbg !93

do.end:                                           ; preds = %do.body
  br label %if.end7, !dbg !92

if.end7:                                          ; preds = %do.end, %if.end2
  %12 = load %struct.spinlock*, %struct.spinlock** %lock, align 8, !dbg !90
  %tobool8 = icmp ne %struct.spinlock* %12, null, !dbg !90
  %13 = zext i1 %tobool8 to i64, !dbg !90
  %cond = select i1 %tobool8, i32 0, i32 4, !dbg !90
  store i32 %cond, i32* %tmp, align 4, !dbg !91
  %14 = load i32, i32* %tmp, align 4, !dbg !90
  store i32 %14, i32* %status, align 4, !dbg !96
  %15 = load i32, i32* %status, align 4, !dbg !97
  %tobool9 = icmp ne i32 %15, 0, !dbg !97
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !99

if.then10:                                        ; preds = %if.end7
  %16 = load i32, i32* %status, align 4, !dbg !100
  store i32 %16, i32* %retval, align 4, !dbg !100
  br label %return, !dbg !100

if.end11:                                         ; preds = %if.end7
  store i8 0, i8* @acpi_gbl_global_lock_pending, align 1, !dbg !102
  store i8 1, i8* @acpi_gbl_global_lock_present, align 1, !dbg !103
  %17 = load i32, i32* %status, align 4, !dbg !104
  store i32 %17, i32* %retval, align 4, !dbg !104
  br label %return, !dbg !104

return:                                           ; preds = %if.end11, %if.then10, %if.then1, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !105
  ret i32 %18, !dbg !105
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_install_fixed_event_handler(i32, i32 (i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ev_global_lock_handler(i8* %context) #0 !dbg !106 {
entry:
  %context.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i32* %status, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !113, metadata !DIExpression()), !dbg !114
  %0 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_global_lock_pending_lock, align 8, !dbg !115
  %call = call i64 @acpi_os_acquire_lock(%struct.spinlock* %0) #9, !dbg !116
  store i64 %call, i64* %flags, align 8, !dbg !117
  %1 = load i8, i8* @acpi_gbl_global_lock_pending, align 1, !dbg !118
  %tobool = icmp ne i8 %1, 0, !dbg !118
  br i1 %tobool, label %if.end, label %if.then, !dbg !120

if.then:                                          ; preds = %entry
  br label %cleanup_and_exit, !dbg !121

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** @acpi_gbl_global_lock_semaphore, align 8, !dbg !123
  %call1 = call i32 @acpi_os_signal_semaphore(i8* %2, i32 1) #9, !dbg !124
  store i32 %call1, i32* %status, align 4, !dbg !125
  %3 = load i32, i32* %status, align 4, !dbg !126
  %tobool2 = icmp ne i32 %3, 0, !dbg !126
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !128

if.then3:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 137, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !129
  br label %if.end4, !dbg !131

if.end4:                                          ; preds = %if.then3, %if.end
  store i8 0, i8* @acpi_gbl_global_lock_pending, align 1, !dbg !132
  br label %cleanup_and_exit, !dbg !133

cleanup_and_exit:                                 ; preds = %if.end4, %if.then
  call void @llvm.dbg.label(metadata !134), !dbg !135
  %4 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_global_lock_pending_lock, align 8, !dbg !136
  %5 = load i64, i64* %flags, align 8, !dbg !137
  call void @acpi_os_release_lock(%struct.spinlock* %4, i64 %5) #9, !dbg !138
  ret i32 1, !dbg !139
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate(i64 %size) #0 !dbg !140 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !144, metadata !DIExpression()), !dbg !155
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !163, metadata !DIExpression()), !dbg !164
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !165, metadata !DIExpression()), !dbg !166
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !167, metadata !DIExpression()), !dbg !168
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !169, metadata !DIExpression()), !dbg !173
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !175, metadata !DIExpression()), !dbg !179
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !181, metadata !DIExpression()), !dbg !185
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !190, metadata !DIExpression()), !dbg !191
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !192, metadata !DIExpression()), !dbg !193
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !194, metadata !DIExpression()), !dbg !195
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !196, metadata !DIExpression()), !dbg !197
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !198, metadata !DIExpression()), !dbg !199
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !200, metadata !DIExpression()), !dbg !201
  %flags.addr.i11 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i11, metadata !202, metadata !DIExpression()), !dbg !203
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !204, metadata !DIExpression()), !dbg !205
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !206, metadata !DIExpression()), !dbg !212
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !216, metadata !DIExpression()), !dbg !217
  %0 = load i64, i64* %size.addr, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !219, metadata !DIExpression()), !dbg !220
  br label %do.body, !dbg !220

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !221, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !225, metadata !DIExpression()), !dbg !224
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !224
  %conv = zext i1 %cmp to i32, !dbg !224
  store i32 1, i32* %tmp, align 4, !dbg !224
  %1 = load i32, i32* %tmp, align 4, !dbg !224
  %call = call i64 @arch_local_save_flags() #9, !dbg !226
  store i64 %call, i64* %_flags, align 8, !dbg !226
  br label %do.end, !dbg !226

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !227, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !230, metadata !DIExpression()), !dbg !229
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !229
  %conv6 = zext i1 %cmp5 to i32, !dbg !229
  store i32 1, i32* %tmp7, align 4, !dbg !229
  %2 = load i32, i32* %tmp7, align 4, !dbg !229
  %3 = load i64, i64* %_flags, align 8, !dbg !231
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !232
  %and.i = and i64 %4, 512, !dbg !233
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !234
  %lnot.i = xor i1 %tobool.i, true, !dbg !234
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !234
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !231
  %5 = load i32, i32* %tmp8, align 4, !dbg !231
  store i32 %5, i32* %tmp1, align 4, !dbg !226
  %6 = load i32, i32* %tmp1, align 4, !dbg !220
  %tobool = icmp ne i32 %6, 0, !dbg !235
  %7 = zext i1 %tobool to i64, !dbg !235
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !235
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %cond, i32* %flags.addr.i11, align 4
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !236
  %9 = call i1 @llvm.is.constant.i64(i64 %8) #8, !dbg !237
  br i1 %9, label %if.then.i, label %if.end9.i, !dbg !238

if.then.i:                                        ; preds = %do.end
  %10 = load i64, i64* %size.addr.i, align 8, !dbg !239
  %cmp.i = icmp ugt i64 %10, 8192, !dbg !240
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !241

if.then1.i:                                       ; preds = %if.then.i
  %11 = load i64, i64* %size.addr.i, align 8, !dbg !242
  %12 = load i32, i32* %flags.addr.i11, align 4, !dbg !243
  store i64 %11, i64* %size.addr.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i, align 4
  %13 = load i64, i64* %size.addr.i.i, align 8, !dbg !244
  %call.i.i = call i32 @get_order(i64 %13) #10, !dbg !245
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !199
  %14 = load i64, i64* %size.addr.i.i, align 8, !dbg !246
  %15 = load i32, i32* %flags.addr.i.i, align 4, !dbg !247
  %16 = load i32, i32* %order.i.i, align 4, !dbg !248
  store i64 %14, i64* %size.addr.i.i.i, align 8
  store i32 %15, i32* %flags.addr.i.i.i, align 4
  store i32 %16, i32* %order.addr.i.i.i, align 4
  %17 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !249
  %18 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !250
  %19 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !251
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %17, i32 %18, i32 %19) #11, !dbg !252
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !252
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !252
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !252
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !252
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !253
  br label %kmalloc.exit, !dbg !253

if.end.i:                                         ; preds = %if.then.i
  %20 = load i64, i64* %size.addr.i, align 8, !dbg !254
  store i64 %20, i64* %size.addr.i11.i, align 8
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !255
  %tobool.i.i = icmp ne i64 %21, 0, !dbg !255
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !257

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !258
  br label %kmalloc_index.exit.i, !dbg !258

if.end.i.i:                                       ; preds = %if.end.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !259
  %cmp.i.i = icmp ule i64 %22, 8, !dbg !261
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !262

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !263
  br label %kmalloc_index.exit.i, !dbg !263

if.end2.i.i:                                      ; preds = %if.end.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !264
  %cmp3.i.i = icmp ugt i64 %23, 64, !dbg !266
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !267

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !268
  %cmp4.i.i = icmp ule i64 %24, 96, !dbg !269
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !270

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !271
  br label %kmalloc_index.exit.i, !dbg !271

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !272
  %cmp7.i.i = icmp ugt i64 %25, 128, !dbg !274
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !275

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !276
  %cmp9.i.i = icmp ule i64 %26, 192, !dbg !277
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !278

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !279
  br label %kmalloc_index.exit.i, !dbg !279

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !280
  %cmp12.i.i = icmp ule i64 %27, 8, !dbg !282
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !283

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !284
  br label %kmalloc_index.exit.i, !dbg !284

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !285
  %cmp15.i.i = icmp ule i64 %28, 16, !dbg !287
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !288

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !289
  br label %kmalloc_index.exit.i, !dbg !289

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !290
  %cmp18.i.i = icmp ule i64 %29, 32, !dbg !292
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !293

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !294
  br label %kmalloc_index.exit.i, !dbg !294

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !295
  %cmp21.i.i = icmp ule i64 %30, 64, !dbg !297
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !298

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !299
  br label %kmalloc_index.exit.i, !dbg !299

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !300
  %cmp24.i.i = icmp ule i64 %31, 128, !dbg !302
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !303

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !304
  br label %kmalloc_index.exit.i, !dbg !304

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !305
  %cmp27.i.i = icmp ule i64 %32, 256, !dbg !307
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !308

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !309
  br label %kmalloc_index.exit.i, !dbg !309

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !310
  %cmp30.i.i = icmp ule i64 %33, 512, !dbg !312
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !313

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !314
  br label %kmalloc_index.exit.i, !dbg !314

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !315
  %cmp33.i.i = icmp ule i64 %34, 1024, !dbg !317
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !318

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !319
  br label %kmalloc_index.exit.i, !dbg !319

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !320
  %cmp36.i.i = icmp ule i64 %35, 2048, !dbg !322
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !323

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !324
  br label %kmalloc_index.exit.i, !dbg !324

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !325
  %cmp39.i.i = icmp ule i64 %36, 4096, !dbg !327
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !328

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !329
  br label %kmalloc_index.exit.i, !dbg !329

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !330
  %cmp42.i.i = icmp ule i64 %37, 8192, !dbg !332
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !333

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !334
  br label %kmalloc_index.exit.i, !dbg !334

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !335
  %cmp45.i.i = icmp ule i64 %38, 16384, !dbg !337
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !338

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !339
  br label %kmalloc_index.exit.i, !dbg !339

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !340
  %cmp48.i.i = icmp ule i64 %39, 32768, !dbg !342
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !343

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !344
  br label %kmalloc_index.exit.i, !dbg !344

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !345
  %cmp51.i.i = icmp ule i64 %40, 65536, !dbg !347
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !348

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !349
  br label %kmalloc_index.exit.i, !dbg !349

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !350
  %cmp54.i.i = icmp ule i64 %41, 131072, !dbg !352
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !353

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !354
  br label %kmalloc_index.exit.i, !dbg !354

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !355
  %cmp57.i.i = icmp ule i64 %42, 262144, !dbg !357
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !358

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !359
  br label %kmalloc_index.exit.i, !dbg !359

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !360
  %cmp60.i.i = icmp ule i64 %43, 524288, !dbg !362
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !363

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !364
  br label %kmalloc_index.exit.i, !dbg !364

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !365
  %cmp63.i.i = icmp ule i64 %44, 1048576, !dbg !367
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !368

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !369
  br label %kmalloc_index.exit.i, !dbg !369

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !370
  %cmp66.i.i = icmp ule i64 %45, 2097152, !dbg !372
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !373

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !374
  br label %kmalloc_index.exit.i, !dbg !374

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !375
  %cmp69.i.i = icmp ule i64 %46, 4194304, !dbg !377
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !378

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !379
  br label %kmalloc_index.exit.i, !dbg !379

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !380
  %cmp72.i.i = icmp ule i64 %47, 8388608, !dbg !382
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !383

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !384
  br label %kmalloc_index.exit.i, !dbg !384

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !385
  %cmp75.i.i = icmp ule i64 %48, 16777216, !dbg !387
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !388

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !389
  br label %kmalloc_index.exit.i, !dbg !389

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !390
  %cmp78.i.i = icmp ule i64 %49, 33554432, !dbg !392
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !393

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !394
  br label %kmalloc_index.exit.i, !dbg !394

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !395
  %cmp81.i.i = icmp ule i64 %50, 67108864, !dbg !397
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !398

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !399
  br label %kmalloc_index.exit.i, !dbg !399

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !400, !srcloc !403
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #8, !dbg !404, !srcloc !407
  unreachable, !dbg !408

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %51 = load i32, i32* %retval.i.i, align 4, !dbg !409
  store i32 %51, i32* %index.i, align 4, !dbg !410
  %52 = load i32, i32* %index.i, align 4, !dbg !411
  %tobool.i12 = icmp ne i32 %52, 0, !dbg !411
  br i1 %tobool.i12, label %if.end4.i, label %if.then3.i, !dbg !413

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !414
  br label %kmalloc.exit, !dbg !414

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %53 = load i32, i32* %flags.addr.i11, align 4, !dbg !415
  store i32 %53, i32* %flags.addr.i13.i, align 4
  %54 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !416
  %and.i.i = and i32 %54, 17, !dbg !416
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !416
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !416
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !416
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !416
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !418

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !419
  br label %kmalloc_type.exit.i, !dbg !419

if.end.i16.i:                                     ; preds = %if.end4.i
  %55 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !420
  %and2.i.i = and i32 %55, 1, !dbg !421
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !420
  %56 = zext i1 %tobool3.i.i to i64, !dbg !420
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !420
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !422
  br label %kmalloc_type.exit.i, !dbg !422

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %57 = load i32, i32* %retval.i12.i, align 4, !dbg !423
  %idxprom.i = zext i32 %57 to i64, !dbg !424
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !424
  %58 = load i32, i32* %index.i, align 4, !dbg !425
  %idxprom6.i = zext i32 %58 to i64, !dbg !424
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !424
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !424
  %60 = load i32, i32* %flags.addr.i11, align 4, !dbg !426
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !427
  store %struct.kmem_cache* %59, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %60, i32* %flags.addr.i17.i, align 4
  store i64 %61, i64* %size.addr.i18.i, align 8
  %62 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !428
  %63 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !429
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %62, i32 %63) #11, !dbg !430
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !430
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !430
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !430
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !430
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !168
  %64 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !431
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !432
  %66 = load i64, i64* %size.addr.i18.i, align 8, !dbg !433
  %67 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !434
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %64, i8* %65, i64 %66, i32 %67) #11, !dbg !435
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !436
  %68 = load i8*, i8** %ret.i.i, align 8, !dbg !437
  store i8* %68, i8** %retval.i, align 8, !dbg !438
  br label %kmalloc.exit, !dbg !438

if.end9.i:                                        ; preds = %do.end
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !439
  %70 = load i32, i32* %flags.addr.i11, align 4, !dbg !440
  %call10.i = call noalias i8* @__kmalloc(i64 %69, i32 %70) #11, !dbg !441
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !441
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !441
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !441
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !441
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !442
  br label %kmalloc.exit, !dbg !442

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %71 = load i8*, i8** %retval.i, align 8, !dbg !443
  ret i8* %71, !dbg !444
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_remove_global_lock_handler() #0 !dbg !445 {
entry:
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !446, metadata !DIExpression()), !dbg !447
  store i8 0, i8* @acpi_gbl_global_lock_present, align 1, !dbg !448
  %call = call i32 @acpi_remove_fixed_event_handler(i32 1, i32 (i8*)* @acpi_ev_global_lock_handler) #9, !dbg !449
  store i32 %call, i32* %status, align 4, !dbg !450
  %0 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_global_lock_pending_lock, align 8, !dbg !451
  call void @acpi_os_delete_lock(%struct.spinlock* %0) #9, !dbg !452
  %1 = load i32, i32* %status, align 4, !dbg !453
  ret i32 %1, !dbg !453
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_remove_fixed_event_handler(i32, i32 (i8*)*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_os_delete_lock(%struct.spinlock*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_acquire_global_lock(i16 zeroext %timeout) #0 !dbg !454 {
entry:
  %retval = alloca i32, align 4
  %timeout.addr = alloca i16, align 2
  %flags = alloca i64, align 8
  %status = alloca i32, align 4
  %acquired = alloca i8, align 1
  store i16 %timeout, i16* %timeout.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %timeout.addr, metadata !460, metadata !DIExpression()), !dbg !461
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !462, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.declare(metadata i32* %status, metadata !464, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.declare(metadata i8* %acquired, metadata !466, metadata !DIExpression()), !dbg !470
  store i8 0, i8* %acquired, align 1, !dbg !470
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** @acpi_gbl_global_lock_mutex, align 8, !dbg !471
  %mutex = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_mutex*, !dbg !472
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex, i32 0, i32 7, !dbg !473
  %1 = load i8*, i8** %os_mutex, align 8, !dbg !473
  %2 = load i16, i16* %timeout.addr, align 2, !dbg !474
  %call = call i32 @acpi_ex_system_wait_mutex(i8* %1, i16 zeroext %2) #9, !dbg !475
  store i32 %call, i32* %status, align 4, !dbg !476
  %3 = load i32, i32* %status, align 4, !dbg !477
  %tobool = icmp ne i32 %3, 0, !dbg !477
  br i1 %tobool, label %if.then, label %if.end, !dbg !479

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %status, align 4, !dbg !480
  store i32 %4, i32* %retval, align 4, !dbg !480
  br label %return, !dbg !480

if.end:                                           ; preds = %entry
  %5 = load i16, i16* @acpi_gbl_global_lock_handle, align 2, !dbg !482
  %inc = add i16 %5, 1, !dbg !482
  store i16 %inc, i16* @acpi_gbl_global_lock_handle, align 2, !dbg !482
  %6 = load i16, i16* @acpi_gbl_global_lock_handle, align 2, !dbg !483
  %conv = zext i16 %6 to i32, !dbg !483
  %cmp = icmp eq i32 %conv, 0, !dbg !485
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !486

if.then2:                                         ; preds = %if.end
  store i16 1, i16* @acpi_gbl_global_lock_handle, align 2, !dbg !487
  br label %if.end3, !dbg !489

if.end3:                                          ; preds = %if.then2, %if.end
  %7 = load i8, i8* @acpi_gbl_global_lock_present, align 1, !dbg !490
  %tobool4 = icmp ne i8 %7, 0, !dbg !490
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !492

if.then5:                                         ; preds = %if.end3
  store i8 1, i8* @acpi_gbl_global_lock_acquired, align 1, !dbg !493
  store i32 0, i32* %retval, align 4, !dbg !495
  br label %return, !dbg !495

if.end6:                                          ; preds = %if.end3
  %8 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_global_lock_pending_lock, align 8, !dbg !496
  %call7 = call i64 @acpi_os_acquire_lock(%struct.spinlock* %8) #9, !dbg !497
  store i64 %call7, i64* %flags, align 8, !dbg !498
  br label %do.body, !dbg !499

do.body:                                          ; preds = %do.cond, %if.end6
  %9 = load %struct.acpi_table_facs*, %struct.acpi_table_facs** @acpi_gbl_FACS, align 8, !dbg !500
  %global_lock = getelementptr inbounds %struct.acpi_table_facs, %struct.acpi_table_facs* %9, i32 0, i32 4, !dbg !500
  %call8 = call i32 @__acpi_acquire_global_lock(i32* %global_lock) #9, !dbg !500
  %conv9 = trunc i32 %call8 to i8, !dbg !500
  store i8 %conv9, i8* %acquired, align 1, !dbg !500
  %10 = load i8, i8* %acquired, align 1, !dbg !502
  %tobool10 = icmp ne i8 %10, 0, !dbg !502
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !504

if.then11:                                        ; preds = %do.body
  store i8 1, i8* @acpi_gbl_global_lock_acquired, align 1, !dbg !505
  br label %do.end, !dbg !507

if.end12:                                         ; preds = %do.body
  store i8 1, i8* @acpi_gbl_global_lock_pending, align 1, !dbg !508
  %11 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_global_lock_pending_lock, align 8, !dbg !509
  %12 = load i64, i64* %flags, align 8, !dbg !510
  call void @acpi_os_release_lock(%struct.spinlock* %11, i64 %12) #9, !dbg !511
  %13 = load i8*, i8** @acpi_gbl_global_lock_semaphore, align 8, !dbg !512
  %call13 = call i32 @acpi_ex_system_wait_semaphore(i8* %13, i16 zeroext -1) #9, !dbg !513
  store i32 %call13, i32* %status, align 4, !dbg !514
  %14 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_global_lock_pending_lock, align 8, !dbg !515
  %call14 = call i64 @acpi_os_acquire_lock(%struct.spinlock* %14) #9, !dbg !516
  store i64 %call14, i64* %flags, align 8, !dbg !517
  br label %do.cond, !dbg !518

do.cond:                                          ; preds = %if.end12
  %15 = load i32, i32* %status, align 4, !dbg !519
  %tobool15 = icmp ne i32 %15, 0, !dbg !519
  %lnot = xor i1 %tobool15, true, !dbg !519
  br i1 %lnot, label %do.body, label %do.end, !dbg !518, !llvm.loop !520

do.end:                                           ; preds = %do.cond, %if.then11
  store i8 0, i8* @acpi_gbl_global_lock_pending, align 1, !dbg !522
  %16 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_global_lock_pending_lock, align 8, !dbg !523
  %17 = load i64, i64* %flags, align 8, !dbg !524
  call void @acpi_os_release_lock(%struct.spinlock* %16, i64 %17) #9, !dbg !525
  %18 = load i32, i32* %status, align 4, !dbg !526
  store i32 %18, i32* %retval, align 4, !dbg !526
  br label %return, !dbg !526

return:                                           ; preds = %do.end, %if.then5, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !527
  ret i32 %19, !dbg !527
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_system_wait_mutex(i8*, i16 zeroext) #2

; Function Attrs: noredzone
declare dso_local i64 @acpi_os_acquire_lock(%struct.spinlock*) #2

; Function Attrs: noredzone
declare dso_local i32 @__acpi_acquire_global_lock(i32*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_os_release_lock(%struct.spinlock*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_system_wait_semaphore(i8*, i16 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_release_global_lock() #0 !dbg !528 {
entry:
  %retval = alloca i32, align 4
  %pending = alloca i8, align 1
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8* %pending, metadata !529, metadata !DIExpression()), !dbg !530
  store i8 0, i8* %pending, align 1, !dbg !530
  call void @llvm.dbg.declare(metadata i32* %status, metadata !531, metadata !DIExpression()), !dbg !532
  store i32 0, i32* %status, align 4, !dbg !532
  %0 = load i8, i8* @acpi_gbl_global_lock_acquired, align 1, !dbg !533
  %tobool = icmp ne i8 %0, 0, !dbg !533
  br i1 %tobool, label %if.end, label %if.then, !dbg !535

if.then:                                          ; preds = %entry
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 276, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !536
  store i32 20, i32* %retval, align 4, !dbg !538
  br label %return, !dbg !538

if.end:                                           ; preds = %entry
  %1 = load i8, i8* @acpi_gbl_global_lock_present, align 1, !dbg !539
  %tobool1 = icmp ne i8 %1, 0, !dbg !539
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !541

if.then2:                                         ; preds = %if.end
  %2 = load %struct.acpi_table_facs*, %struct.acpi_table_facs** @acpi_gbl_FACS, align 8, !dbg !542
  %global_lock = getelementptr inbounds %struct.acpi_table_facs, %struct.acpi_table_facs* %2, i32 0, i32 4, !dbg !542
  %call = call i32 @__acpi_release_global_lock(i32* %global_lock) #9, !dbg !542
  %conv = trunc i32 %call to i8, !dbg !542
  store i8 %conv, i8* %pending, align 1, !dbg !542
  %3 = load i8, i8* %pending, align 1, !dbg !544
  %tobool3 = icmp ne i8 %3, 0, !dbg !544
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !546

if.then4:                                         ; preds = %if.then2
  %call5 = call i32 @acpi_write_bit_register(i32 16, i32 1) #9, !dbg !547
  store i32 %call5, i32* %status, align 4, !dbg !549
  br label %if.end6, !dbg !550

if.end6:                                          ; preds = %if.then4, %if.then2
  br label %if.end7, !dbg !551

if.end7:                                          ; preds = %if.end6, %if.end
  store i8 0, i8* @acpi_gbl_global_lock_acquired, align 1, !dbg !552
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** @acpi_gbl_global_lock_mutex, align 8, !dbg !553
  %mutex = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_mutex*, !dbg !553
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex, i32 0, i32 7, !dbg !553
  %5 = load i8*, i8** %os_mutex, align 8, !dbg !553
  %call8 = call i32 @acpi_os_signal_semaphore(i8* %5, i32 1) #9, !dbg !553
  %6 = load i32, i32* %status, align 4, !dbg !554
  store i32 %6, i32* %retval, align 4, !dbg !554
  br label %return, !dbg !554

return:                                           ; preds = %if.end7, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !555
  ret i32 %7, !dbg !555
}

; Function Attrs: noredzone
declare dso_local void @acpi_warning(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @__acpi_release_global_lock(i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_write_bit_register(i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_signal_semaphore(i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !556 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !560, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !563, metadata !DIExpression()), !dbg !562
  %0 = load i64, i64* %__edi, align 8, !dbg !562
  store i64 %0, i64* %__edi, align 8, !dbg !562
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !564, metadata !DIExpression()), !dbg !562
  %1 = load i64, i64* %__esi, align 8, !dbg !562
  store i64 %1, i64* %__esi, align 8, !dbg !562
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !565, metadata !DIExpression()), !dbg !562
  %2 = load i64, i64* %__edx, align 8, !dbg !562
  store i64 %2, i64* %__edx, align 8, !dbg !562
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !566, metadata !DIExpression()), !dbg !562
  %3 = load i64, i64* %__ecx, align 8, !dbg !562
  store i64 %3, i64* %__ecx, align 8, !dbg !562
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !567, metadata !DIExpression()), !dbg !562
  %4 = load i64, i64* %__eax, align 8, !dbg !562
  store i64 %4, i64* %__eax, align 8, !dbg !562
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !562
  %6 = call i64 @llvm.read_register.i64(metadata !34), !dbg !568
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !568, !srcloc !571
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !568
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !568
  store i64 %asmresult, i64* %__eax, align 8, !dbg !568
  call void @llvm.write_register.i64(metadata !34, i64 %asmresult1), !dbg !568
  %8 = load i64, i64* %__eax, align 8, !dbg !568
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !572, metadata !DIExpression()), !dbg !574
  store i64 -1, i64* %__mask, align 8, !dbg !574
  %9 = load i64, i64* %__mask, align 8, !dbg !574
  store i64 %9, i64* %tmp, align 8, !dbg !574
  %10 = load i64, i64* %tmp, align 8, !dbg !574
  %and = and i64 %8, %10, !dbg !568
  store i64 %and, i64* %__ret, align 8, !dbg !568
  %11 = load i64, i64* %__ret, align 8, !dbg !562
  store i64 %11, i64* %tmp2, align 8, !dbg !575
  %12 = load i64, i64* %tmp2, align 8, !dbg !562
  ret i64 %12, !dbg !576
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !577 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !579, metadata !DIExpression()), !dbg !584
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !586, metadata !DIExpression()), !dbg !587
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !588, metadata !DIExpression()), !dbg !589
  %0 = load i64, i64* %size.addr, align 8, !dbg !590
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !592
  br i1 %1, label %if.then, label %if.end447, !dbg !593

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !594
  %tobool = icmp ne i64 %2, 0, !dbg !594
  br i1 %tobool, label %if.end, label %if.then1, !dbg !597

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !598
  br label %return, !dbg !598

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !599
  %cmp = icmp ult i64 %3, 4096, !dbg !601
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !602

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !603
  br label %return, !dbg !603

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub = sub i64 %4, 1, !dbg !604
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !604
  br i1 %5, label %cond.true, label %cond.false442, !dbg !604

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub4 = sub i64 %6, 1, !dbg !604
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !604
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !604

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub6 = sub i64 %8, 1, !dbg !604
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !604
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !604

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !604

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub9 = sub i64 %9, 1, !dbg !604
  %and = and i64 %sub9, -9223372036854775808, !dbg !604
  %tobool10 = icmp ne i64 %and, 0, !dbg !604
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !604

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !604

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub13 = sub i64 %10, 1, !dbg !604
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !604
  %tobool15 = icmp ne i64 %and14, 0, !dbg !604
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !604

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !604

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub18 = sub i64 %11, 1, !dbg !604
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !604
  %tobool20 = icmp ne i64 %and19, 0, !dbg !604
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !604

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !604

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub23 = sub i64 %12, 1, !dbg !604
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !604
  %tobool25 = icmp ne i64 %and24, 0, !dbg !604
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !604

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !604

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub28 = sub i64 %13, 1, !dbg !604
  %and29 = and i64 %sub28, 576460752303423488, !dbg !604
  %tobool30 = icmp ne i64 %and29, 0, !dbg !604
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !604

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !604

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub33 = sub i64 %14, 1, !dbg !604
  %and34 = and i64 %sub33, 288230376151711744, !dbg !604
  %tobool35 = icmp ne i64 %and34, 0, !dbg !604
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !604

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !604

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub38 = sub i64 %15, 1, !dbg !604
  %and39 = and i64 %sub38, 144115188075855872, !dbg !604
  %tobool40 = icmp ne i64 %and39, 0, !dbg !604
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !604

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !604

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub43 = sub i64 %16, 1, !dbg !604
  %and44 = and i64 %sub43, 72057594037927936, !dbg !604
  %tobool45 = icmp ne i64 %and44, 0, !dbg !604
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !604

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !604

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub48 = sub i64 %17, 1, !dbg !604
  %and49 = and i64 %sub48, 36028797018963968, !dbg !604
  %tobool50 = icmp ne i64 %and49, 0, !dbg !604
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !604

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !604

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub53 = sub i64 %18, 1, !dbg !604
  %and54 = and i64 %sub53, 18014398509481984, !dbg !604
  %tobool55 = icmp ne i64 %and54, 0, !dbg !604
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !604

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !604

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub58 = sub i64 %19, 1, !dbg !604
  %and59 = and i64 %sub58, 9007199254740992, !dbg !604
  %tobool60 = icmp ne i64 %and59, 0, !dbg !604
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !604

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !604

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub63 = sub i64 %20, 1, !dbg !604
  %and64 = and i64 %sub63, 4503599627370496, !dbg !604
  %tobool65 = icmp ne i64 %and64, 0, !dbg !604
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !604

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !604

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub68 = sub i64 %21, 1, !dbg !604
  %and69 = and i64 %sub68, 2251799813685248, !dbg !604
  %tobool70 = icmp ne i64 %and69, 0, !dbg !604
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !604

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !604

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub73 = sub i64 %22, 1, !dbg !604
  %and74 = and i64 %sub73, 1125899906842624, !dbg !604
  %tobool75 = icmp ne i64 %and74, 0, !dbg !604
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !604

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !604

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub78 = sub i64 %23, 1, !dbg !604
  %and79 = and i64 %sub78, 562949953421312, !dbg !604
  %tobool80 = icmp ne i64 %and79, 0, !dbg !604
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !604

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !604

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub83 = sub i64 %24, 1, !dbg !604
  %and84 = and i64 %sub83, 281474976710656, !dbg !604
  %tobool85 = icmp ne i64 %and84, 0, !dbg !604
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !604

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !604

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub88 = sub i64 %25, 1, !dbg !604
  %and89 = and i64 %sub88, 140737488355328, !dbg !604
  %tobool90 = icmp ne i64 %and89, 0, !dbg !604
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !604

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !604

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub93 = sub i64 %26, 1, !dbg !604
  %and94 = and i64 %sub93, 70368744177664, !dbg !604
  %tobool95 = icmp ne i64 %and94, 0, !dbg !604
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !604

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !604

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub98 = sub i64 %27, 1, !dbg !604
  %and99 = and i64 %sub98, 35184372088832, !dbg !604
  %tobool100 = icmp ne i64 %and99, 0, !dbg !604
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !604

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !604

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub103 = sub i64 %28, 1, !dbg !604
  %and104 = and i64 %sub103, 17592186044416, !dbg !604
  %tobool105 = icmp ne i64 %and104, 0, !dbg !604
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !604

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !604

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub108 = sub i64 %29, 1, !dbg !604
  %and109 = and i64 %sub108, 8796093022208, !dbg !604
  %tobool110 = icmp ne i64 %and109, 0, !dbg !604
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !604

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !604

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub113 = sub i64 %30, 1, !dbg !604
  %and114 = and i64 %sub113, 4398046511104, !dbg !604
  %tobool115 = icmp ne i64 %and114, 0, !dbg !604
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !604

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !604

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub118 = sub i64 %31, 1, !dbg !604
  %and119 = and i64 %sub118, 2199023255552, !dbg !604
  %tobool120 = icmp ne i64 %and119, 0, !dbg !604
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !604

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !604

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub123 = sub i64 %32, 1, !dbg !604
  %and124 = and i64 %sub123, 1099511627776, !dbg !604
  %tobool125 = icmp ne i64 %and124, 0, !dbg !604
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !604

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !604

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub128 = sub i64 %33, 1, !dbg !604
  %and129 = and i64 %sub128, 549755813888, !dbg !604
  %tobool130 = icmp ne i64 %and129, 0, !dbg !604
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !604

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !604

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub133 = sub i64 %34, 1, !dbg !604
  %and134 = and i64 %sub133, 274877906944, !dbg !604
  %tobool135 = icmp ne i64 %and134, 0, !dbg !604
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !604

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !604

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub138 = sub i64 %35, 1, !dbg !604
  %and139 = and i64 %sub138, 137438953472, !dbg !604
  %tobool140 = icmp ne i64 %and139, 0, !dbg !604
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !604

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !604

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub143 = sub i64 %36, 1, !dbg !604
  %and144 = and i64 %sub143, 68719476736, !dbg !604
  %tobool145 = icmp ne i64 %and144, 0, !dbg !604
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !604

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !604

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub148 = sub i64 %37, 1, !dbg !604
  %and149 = and i64 %sub148, 34359738368, !dbg !604
  %tobool150 = icmp ne i64 %and149, 0, !dbg !604
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !604

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !604

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub153 = sub i64 %38, 1, !dbg !604
  %and154 = and i64 %sub153, 17179869184, !dbg !604
  %tobool155 = icmp ne i64 %and154, 0, !dbg !604
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !604

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !604

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub158 = sub i64 %39, 1, !dbg !604
  %and159 = and i64 %sub158, 8589934592, !dbg !604
  %tobool160 = icmp ne i64 %and159, 0, !dbg !604
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !604

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !604

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub163 = sub i64 %40, 1, !dbg !604
  %and164 = and i64 %sub163, 4294967296, !dbg !604
  %tobool165 = icmp ne i64 %and164, 0, !dbg !604
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !604

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !604

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub168 = sub i64 %41, 1, !dbg !604
  %and169 = and i64 %sub168, 2147483648, !dbg !604
  %tobool170 = icmp ne i64 %and169, 0, !dbg !604
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !604

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !604

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub173 = sub i64 %42, 1, !dbg !604
  %and174 = and i64 %sub173, 1073741824, !dbg !604
  %tobool175 = icmp ne i64 %and174, 0, !dbg !604
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !604

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !604

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub178 = sub i64 %43, 1, !dbg !604
  %and179 = and i64 %sub178, 536870912, !dbg !604
  %tobool180 = icmp ne i64 %and179, 0, !dbg !604
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !604

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !604

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub183 = sub i64 %44, 1, !dbg !604
  %and184 = and i64 %sub183, 268435456, !dbg !604
  %tobool185 = icmp ne i64 %and184, 0, !dbg !604
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !604

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !604

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub188 = sub i64 %45, 1, !dbg !604
  %and189 = and i64 %sub188, 134217728, !dbg !604
  %tobool190 = icmp ne i64 %and189, 0, !dbg !604
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !604

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !604

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub193 = sub i64 %46, 1, !dbg !604
  %and194 = and i64 %sub193, 67108864, !dbg !604
  %tobool195 = icmp ne i64 %and194, 0, !dbg !604
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !604

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !604

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub198 = sub i64 %47, 1, !dbg !604
  %and199 = and i64 %sub198, 33554432, !dbg !604
  %tobool200 = icmp ne i64 %and199, 0, !dbg !604
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !604

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !604

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub203 = sub i64 %48, 1, !dbg !604
  %and204 = and i64 %sub203, 16777216, !dbg !604
  %tobool205 = icmp ne i64 %and204, 0, !dbg !604
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !604

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !604

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub208 = sub i64 %49, 1, !dbg !604
  %and209 = and i64 %sub208, 8388608, !dbg !604
  %tobool210 = icmp ne i64 %and209, 0, !dbg !604
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !604

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !604

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub213 = sub i64 %50, 1, !dbg !604
  %and214 = and i64 %sub213, 4194304, !dbg !604
  %tobool215 = icmp ne i64 %and214, 0, !dbg !604
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !604

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !604

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub218 = sub i64 %51, 1, !dbg !604
  %and219 = and i64 %sub218, 2097152, !dbg !604
  %tobool220 = icmp ne i64 %and219, 0, !dbg !604
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !604

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !604

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub223 = sub i64 %52, 1, !dbg !604
  %and224 = and i64 %sub223, 1048576, !dbg !604
  %tobool225 = icmp ne i64 %and224, 0, !dbg !604
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !604

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !604

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub228 = sub i64 %53, 1, !dbg !604
  %and229 = and i64 %sub228, 524288, !dbg !604
  %tobool230 = icmp ne i64 %and229, 0, !dbg !604
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !604

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !604

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub233 = sub i64 %54, 1, !dbg !604
  %and234 = and i64 %sub233, 262144, !dbg !604
  %tobool235 = icmp ne i64 %and234, 0, !dbg !604
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !604

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !604

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub238 = sub i64 %55, 1, !dbg !604
  %and239 = and i64 %sub238, 131072, !dbg !604
  %tobool240 = icmp ne i64 %and239, 0, !dbg !604
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !604

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !604

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub243 = sub i64 %56, 1, !dbg !604
  %and244 = and i64 %sub243, 65536, !dbg !604
  %tobool245 = icmp ne i64 %and244, 0, !dbg !604
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !604

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !604

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub248 = sub i64 %57, 1, !dbg !604
  %and249 = and i64 %sub248, 32768, !dbg !604
  %tobool250 = icmp ne i64 %and249, 0, !dbg !604
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !604

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !604

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub253 = sub i64 %58, 1, !dbg !604
  %and254 = and i64 %sub253, 16384, !dbg !604
  %tobool255 = icmp ne i64 %and254, 0, !dbg !604
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !604

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !604

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub258 = sub i64 %59, 1, !dbg !604
  %and259 = and i64 %sub258, 8192, !dbg !604
  %tobool260 = icmp ne i64 %and259, 0, !dbg !604
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !604

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !604

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub263 = sub i64 %60, 1, !dbg !604
  %and264 = and i64 %sub263, 4096, !dbg !604
  %tobool265 = icmp ne i64 %and264, 0, !dbg !604
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !604

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !604

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub268 = sub i64 %61, 1, !dbg !604
  %and269 = and i64 %sub268, 2048, !dbg !604
  %tobool270 = icmp ne i64 %and269, 0, !dbg !604
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !604

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !604

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub273 = sub i64 %62, 1, !dbg !604
  %and274 = and i64 %sub273, 1024, !dbg !604
  %tobool275 = icmp ne i64 %and274, 0, !dbg !604
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !604

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !604

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub278 = sub i64 %63, 1, !dbg !604
  %and279 = and i64 %sub278, 512, !dbg !604
  %tobool280 = icmp ne i64 %and279, 0, !dbg !604
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !604

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !604

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub283 = sub i64 %64, 1, !dbg !604
  %and284 = and i64 %sub283, 256, !dbg !604
  %tobool285 = icmp ne i64 %and284, 0, !dbg !604
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !604

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !604

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub288 = sub i64 %65, 1, !dbg !604
  %and289 = and i64 %sub288, 128, !dbg !604
  %tobool290 = icmp ne i64 %and289, 0, !dbg !604
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !604

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !604

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub293 = sub i64 %66, 1, !dbg !604
  %and294 = and i64 %sub293, 64, !dbg !604
  %tobool295 = icmp ne i64 %and294, 0, !dbg !604
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !604

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !604

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub298 = sub i64 %67, 1, !dbg !604
  %and299 = and i64 %sub298, 32, !dbg !604
  %tobool300 = icmp ne i64 %and299, 0, !dbg !604
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !604

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !604

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub303 = sub i64 %68, 1, !dbg !604
  %and304 = and i64 %sub303, 16, !dbg !604
  %tobool305 = icmp ne i64 %and304, 0, !dbg !604
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !604

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !604

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub308 = sub i64 %69, 1, !dbg !604
  %and309 = and i64 %sub308, 8, !dbg !604
  %tobool310 = icmp ne i64 %and309, 0, !dbg !604
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !604

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !604

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub313 = sub i64 %70, 1, !dbg !604
  %and314 = and i64 %sub313, 4, !dbg !604
  %tobool315 = icmp ne i64 %and314, 0, !dbg !604
  %71 = zext i1 %tobool315 to i64, !dbg !604
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !604
  br label %cond.end, !dbg !604

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !604
  br label %cond.end317, !dbg !604

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !604
  br label %cond.end319, !dbg !604

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !604
  br label %cond.end321, !dbg !604

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !604
  br label %cond.end323, !dbg !604

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !604
  br label %cond.end325, !dbg !604

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !604
  br label %cond.end327, !dbg !604

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !604
  br label %cond.end329, !dbg !604

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !604
  br label %cond.end331, !dbg !604

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !604
  br label %cond.end333, !dbg !604

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !604
  br label %cond.end335, !dbg !604

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !604
  br label %cond.end337, !dbg !604

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !604
  br label %cond.end339, !dbg !604

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !604
  br label %cond.end341, !dbg !604

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !604
  br label %cond.end343, !dbg !604

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !604
  br label %cond.end345, !dbg !604

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !604
  br label %cond.end347, !dbg !604

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !604
  br label %cond.end349, !dbg !604

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !604
  br label %cond.end351, !dbg !604

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !604
  br label %cond.end353, !dbg !604

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !604
  br label %cond.end355, !dbg !604

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !604
  br label %cond.end357, !dbg !604

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !604
  br label %cond.end359, !dbg !604

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !604
  br label %cond.end361, !dbg !604

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !604
  br label %cond.end363, !dbg !604

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !604
  br label %cond.end365, !dbg !604

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !604
  br label %cond.end367, !dbg !604

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !604
  br label %cond.end369, !dbg !604

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !604
  br label %cond.end371, !dbg !604

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !604
  br label %cond.end373, !dbg !604

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !604
  br label %cond.end375, !dbg !604

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !604
  br label %cond.end377, !dbg !604

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !604
  br label %cond.end379, !dbg !604

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !604
  br label %cond.end381, !dbg !604

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !604
  br label %cond.end383, !dbg !604

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !604
  br label %cond.end385, !dbg !604

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !604
  br label %cond.end387, !dbg !604

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !604
  br label %cond.end389, !dbg !604

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !604
  br label %cond.end391, !dbg !604

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !604
  br label %cond.end393, !dbg !604

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !604
  br label %cond.end395, !dbg !604

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !604
  br label %cond.end397, !dbg !604

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !604
  br label %cond.end399, !dbg !604

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !604
  br label %cond.end401, !dbg !604

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !604
  br label %cond.end403, !dbg !604

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !604
  br label %cond.end405, !dbg !604

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !604
  br label %cond.end407, !dbg !604

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !604
  br label %cond.end409, !dbg !604

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !604
  br label %cond.end411, !dbg !604

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !604
  br label %cond.end413, !dbg !604

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !604
  br label %cond.end415, !dbg !604

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !604
  br label %cond.end417, !dbg !604

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !604
  br label %cond.end419, !dbg !604

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !604
  br label %cond.end421, !dbg !604

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !604
  br label %cond.end423, !dbg !604

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !604
  br label %cond.end425, !dbg !604

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !604
  br label %cond.end427, !dbg !604

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !604
  br label %cond.end429, !dbg !604

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !604
  br label %cond.end431, !dbg !604

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !604
  br label %cond.end433, !dbg !604

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !604
  br label %cond.end435, !dbg !604

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !604
  br label %cond.end437, !dbg !604

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !604
  br label %cond.end440, !dbg !604

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !604

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !604
  br label %cond.end444, !dbg !604

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !604
  %sub443 = sub i64 %72, 1, !dbg !604
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !604
  br label %cond.end444, !dbg !604

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !604
  %sub446 = sub i32 %cond445, 12, !dbg !605
  %add = add i32 %sub446, 1, !dbg !606
  store i32 %add, i32* %retval, align 4, !dbg !607
  br label %return, !dbg !607

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !608
  %dec = add i64 %73, -1, !dbg !608
  store i64 %dec, i64* %size.addr, align 8, !dbg !608
  %74 = load i64, i64* %size.addr, align 8, !dbg !609
  %shr = lshr i64 %74, 12, !dbg !609
  store i64 %shr, i64* %size.addr, align 8, !dbg !609
  %75 = load i64, i64* %size.addr, align 8, !dbg !610
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !587
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !611
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !612
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !611, !srcloc !613
  store i32 %78, i32* %bitpos.i, align 4, !dbg !611
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !614
  %add.i = add i32 %79, 1, !dbg !615
  store i32 %add.i, i32* %retval, align 4, !dbg !616
  br label %return, !dbg !616

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !617
  ret i32 %80, !dbg !617
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !618 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !579, metadata !DIExpression()), !dbg !622
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !586, metadata !DIExpression()), !dbg !624
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !625, metadata !DIExpression()), !dbg !626
  %0 = load i64, i64* %n.addr, align 8, !dbg !627
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !624
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !628
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !629
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !628, !srcloc !613
  store i32 %3, i32* %bitpos.i, align 4, !dbg !628
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !630
  %add.i = add i32 %4, 1, !dbg !631
  %sub = sub i32 %add.i, 1, !dbg !632
  ret i32 %sub, !dbg !633
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !634 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !640, metadata !DIExpression()), !dbg !641
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !642, metadata !DIExpression()), !dbg !643
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !644, metadata !DIExpression()), !dbg !645
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !646, metadata !DIExpression()), !dbg !647
  %0 = load i8*, i8** %object.addr, align 8, !dbg !648
  ret i8* %0, !dbg !649
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

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
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !29, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !28, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evglock.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !20, !21, !25, !27}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !15, line: 421, baseType: !16)
!15 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !17, line: 21, baseType: !18)
!17 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !19, line: 27, baseType: !7)
!19 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !15, line: 127, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !17, line: 23, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !19, line: 31, baseType: !24)
!24 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !26, line: 148, baseType: !7)
!26 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!27 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !{!0}
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 64, elements: !32)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !{!33}
!33 = !DISubrange(count: 8)
!34 = !{!"rsp"}
!35 = !{i32 7, !"Dwarf Version", i32 4}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"Code Model", i32 2}
!39 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!40 = distinct !DISubprogram(name: "acpi_ev_init_global_lock_handler", scope: !3, file: !3, line: 33, type: !41, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !43)
!41 = !DISubroutineType(types: !42)
!42 = !{!14}
!43 = !{}
!44 = !DILocalVariable(name: "lock", arg: 1, scope: !45, file: !46, line: 327, type: !58)
!45 = distinct !DISubprogram(name: "spinlock_check", scope: !46, file: !46, line: 327, type: !47, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!46 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !58}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !51, line: 29, baseType: !52)
!51 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !51, line: 20, elements: !53)
!53 = !{!54}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !52, file: !51, line: 21, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !56, line: 25, baseType: !57)
!56 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 25, elements: !43)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !51, line: 83, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !51, line: 71, elements: !61)
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_member, scope: !60, file: !51, line: 72, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !60, file: !51, line: 72, elements: !64)
!64 = !{!65}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !63, file: !51, line: 73, baseType: !52)
!66 = !DILocation(line: 327, column: 67, scope: !45, inlinedAt: !67)
!67 = distinct !DILocation(line: 65, column: 11, scope: !68)
!68 = distinct !DILexicalBlock(scope: !69, file: !3, line: 65, column: 11)
!69 = distinct !DILexicalBlock(scope: !70, file: !3, line: 65, column: 11)
!70 = distinct !DILexicalBlock(scope: !71, file: !3, line: 65, column: 11)
!71 = distinct !DILexicalBlock(scope: !40, file: !3, line: 65, column: 11)
!72 = !DILocalVariable(name: "status", scope: !40, file: !3, line: 35, type: !14)
!73 = !DILocation(line: 35, column: 14, scope: !40)
!74 = !DILocation(line: 41, column: 6, scope: !75)
!75 = distinct !DILexicalBlock(scope: !40, file: !3, line: 41, column: 6)
!76 = !DILocation(line: 41, column: 6, scope: !40)
!77 = !DILocation(line: 42, column: 3, scope: !78)
!78 = distinct !DILexicalBlock(scope: !75, file: !3, line: 41, column: 33)
!79 = !DILocation(line: 47, column: 11, scope: !40)
!80 = !DILocation(line: 47, column: 9, scope: !40)
!81 = !DILocation(line: 57, column: 31, scope: !40)
!82 = !DILocation(line: 58, column: 6, scope: !83)
!83 = distinct !DILexicalBlock(scope: !40, file: !3, line: 58, column: 6)
!84 = !DILocation(line: 58, column: 13, scope: !83)
!85 = !DILocation(line: 58, column: 6, scope: !40)
!86 = !DILocation(line: 59, column: 3, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !3, line: 58, column: 41)
!88 = !DILocation(line: 62, column: 3, scope: !87)
!89 = !DILocalVariable(name: "lock", scope: !71, file: !3, line: 65, type: !58)
!90 = !DILocation(line: 65, column: 11, scope: !71)
!91 = !DILocation(line: 65, column: 11, scope: !70)
!92 = !DILocation(line: 65, column: 11, scope: !69)
!93 = !DILocation(line: 65, column: 11, scope: !68)
!94 = !DILocation(line: 329, column: 10, scope: !45, inlinedAt: !67)
!95 = !DILocation(line: 329, column: 16, scope: !45, inlinedAt: !67)
!96 = !DILocation(line: 65, column: 9, scope: !40)
!97 = !DILocation(line: 66, column: 6, scope: !98)
!98 = distinct !DILexicalBlock(scope: !40, file: !3, line: 66, column: 6)
!99 = !DILocation(line: 66, column: 6, scope: !40)
!100 = !DILocation(line: 67, column: 3, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !3, line: 66, column: 28)
!102 = !DILocation(line: 70, column: 31, scope: !40)
!103 = !DILocation(line: 71, column: 31, scope: !40)
!104 = !DILocation(line: 72, column: 2, scope: !40)
!105 = !DILocation(line: 73, column: 1, scope: !40)
!106 = distinct !DISubprogram(name: "acpi_ev_global_lock_handler", scope: !3, file: !3, line: 115, type: !107, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!107 = !DISubroutineType(types: !108)
!108 = !{!16, !20}
!109 = !DILocalVariable(name: "context", arg: 1, scope: !106, file: !3, line: 115, type: !20)
!110 = !DILocation(line: 115, column: 46, scope: !106)
!111 = !DILocalVariable(name: "status", scope: !106, file: !3, line: 117, type: !14)
!112 = !DILocation(line: 117, column: 14, scope: !106)
!113 = !DILocalVariable(name: "flags", scope: !106, file: !3, line: 118, type: !27)
!114 = !DILocation(line: 118, column: 17, scope: !106)
!115 = !DILocation(line: 120, column: 31, scope: !106)
!116 = !DILocation(line: 120, column: 10, scope: !106)
!117 = !DILocation(line: 120, column: 8, scope: !106)
!118 = !DILocation(line: 127, column: 7, scope: !119)
!119 = distinct !DILexicalBlock(scope: !106, file: !3, line: 127, column: 6)
!120 = !DILocation(line: 127, column: 6, scope: !106)
!121 = !DILocation(line: 128, column: 3, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !3, line: 127, column: 37)
!123 = !DILocation(line: 135, column: 36, scope: !106)
!124 = !DILocation(line: 135, column: 11, scope: !106)
!125 = !DILocation(line: 135, column: 9, scope: !106)
!126 = !DILocation(line: 136, column: 6, scope: !127)
!127 = distinct !DILexicalBlock(scope: !106, file: !3, line: 136, column: 6)
!128 = !DILocation(line: 136, column: 6, scope: !106)
!129 = !DILocation(line: 137, column: 3, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !3, line: 136, column: 28)
!131 = !DILocation(line: 138, column: 2, scope: !130)
!132 = !DILocation(line: 140, column: 31, scope: !106)
!133 = !DILocation(line: 140, column: 2, scope: !106)
!134 = !DILabel(scope: !106, name: "cleanup_and_exit", file: !3, line: 142)
!135 = !DILocation(line: 142, column: 1, scope: !106)
!136 = !DILocation(line: 144, column: 23, scope: !106)
!137 = !DILocation(line: 144, column: 58, scope: !106)
!138 = !DILocation(line: 144, column: 2, scope: !106)
!139 = !DILocation(line: 145, column: 2, scope: !106)
!140 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !141, file: !141, line: 50, type: !142, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!141 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!142 = !DISubroutineType(types: !143)
!143 = !{!20, !21}
!144 = !DILocalVariable(name: "s", arg: 1, scope: !145, file: !6, line: 445, type: !148)
!145 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !146, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!146 = !DISubroutineType(types: !147)
!147 = !{!20, !148, !25, !151}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !150, line: 117, flags: DIFlagFwdDecl)
!150 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 55, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !153, line: 72, baseType: !154)
!153 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !153, line: 16, baseType: !27)
!155 = !DILocation(line: 445, column: 72, scope: !145, inlinedAt: !156)
!156 = distinct !DILocation(line: 552, column: 10, scope: !157, inlinedAt: !162)
!157 = distinct !DILexicalBlock(scope: !158, file: !6, line: 540, column: 34)
!158 = distinct !DILexicalBlock(scope: !159, file: !6, line: 540, column: 6)
!159 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !160, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!160 = !DISubroutineType(types: !161)
!161 = !{!20, !151, !25}
!162 = distinct !DILocation(line: 52, column: 9, scope: !140)
!163 = !DILocalVariable(name: "flags", arg: 2, scope: !145, file: !6, line: 446, type: !25)
!164 = !DILocation(line: 446, column: 9, scope: !145, inlinedAt: !156)
!165 = !DILocalVariable(name: "size", arg: 3, scope: !145, file: !6, line: 446, type: !151)
!166 = !DILocation(line: 446, column: 23, scope: !145, inlinedAt: !156)
!167 = !DILocalVariable(name: "ret", scope: !145, file: !6, line: 448, type: !20)
!168 = !DILocation(line: 448, column: 8, scope: !145, inlinedAt: !156)
!169 = !DILocalVariable(name: "flags", arg: 1, scope: !170, file: !6, line: 318, type: !25)
!170 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !171, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!171 = !DISubroutineType(types: !172)
!172 = !{!5, !25}
!173 = !DILocation(line: 318, column: 67, scope: !170, inlinedAt: !174)
!174 = distinct !DILocation(line: 553, column: 20, scope: !157, inlinedAt: !162)
!175 = !DILocalVariable(name: "size", arg: 1, scope: !176, file: !6, line: 346, type: !151)
!176 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !177, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!177 = !DISubroutineType(types: !178)
!178 = !{!7, !151}
!179 = !DILocation(line: 346, column: 58, scope: !176, inlinedAt: !180)
!180 = distinct !DILocation(line: 547, column: 11, scope: !157, inlinedAt: !162)
!181 = !DILocalVariable(name: "size", arg: 1, scope: !182, file: !6, line: 472, type: !151)
!182 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !183, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!183 = !DISubroutineType(types: !184)
!184 = !{!20, !151, !25, !7}
!185 = !DILocation(line: 472, column: 28, scope: !182, inlinedAt: !186)
!186 = distinct !DILocation(line: 481, column: 9, scope: !187, inlinedAt: !188)
!187 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !160, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!188 = distinct !DILocation(line: 545, column: 11, scope: !189, inlinedAt: !162)
!189 = distinct !DILexicalBlock(scope: !157, file: !6, line: 544, column: 7)
!190 = !DILocalVariable(name: "flags", arg: 2, scope: !182, file: !6, line: 472, type: !25)
!191 = !DILocation(line: 472, column: 40, scope: !182, inlinedAt: !186)
!192 = !DILocalVariable(name: "order", arg: 3, scope: !182, file: !6, line: 472, type: !7)
!193 = !DILocation(line: 472, column: 60, scope: !182, inlinedAt: !186)
!194 = !DILocalVariable(name: "size", arg: 1, scope: !187, file: !6, line: 478, type: !151)
!195 = !DILocation(line: 478, column: 51, scope: !187, inlinedAt: !188)
!196 = !DILocalVariable(name: "flags", arg: 2, scope: !187, file: !6, line: 478, type: !25)
!197 = !DILocation(line: 478, column: 63, scope: !187, inlinedAt: !188)
!198 = !DILocalVariable(name: "order", scope: !187, file: !6, line: 480, type: !7)
!199 = !DILocation(line: 480, column: 15, scope: !187, inlinedAt: !188)
!200 = !DILocalVariable(name: "size", arg: 1, scope: !159, file: !6, line: 538, type: !151)
!201 = !DILocation(line: 538, column: 45, scope: !159, inlinedAt: !162)
!202 = !DILocalVariable(name: "flags", arg: 2, scope: !159, file: !6, line: 538, type: !25)
!203 = !DILocation(line: 538, column: 57, scope: !159, inlinedAt: !162)
!204 = !DILocalVariable(name: "index", scope: !157, file: !6, line: 542, type: !7)
!205 = !DILocation(line: 542, column: 16, scope: !157, inlinedAt: !162)
!206 = !DILocalVariable(name: "flags", arg: 1, scope: !207, file: !208, line: 162, type: !27)
!207 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !208, file: !208, line: 162, type: !209, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!208 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!209 = !DISubroutineType(types: !210)
!210 = !{!211, !27}
!211 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!212 = !DILocation(line: 162, column: 67, scope: !207, inlinedAt: !213)
!213 = distinct !DILocation(line: 52, column: 23, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !141, line: 52, column: 23)
!215 = distinct !DILexicalBlock(scope: !140, file: !141, line: 52, column: 23)
!216 = !DILocalVariable(name: "size", arg: 1, scope: !140, file: !141, line: 50, type: !21)
!217 = !DILocation(line: 50, column: 48, scope: !140)
!218 = !DILocation(line: 52, column: 17, scope: !140)
!219 = !DILocalVariable(name: "_flags", scope: !215, file: !141, line: 52, type: !27)
!220 = !DILocation(line: 52, column: 23, scope: !215)
!221 = !DILocalVariable(name: "__dummy", scope: !222, file: !141, line: 52, type: !27)
!222 = distinct !DILexicalBlock(scope: !223, file: !141, line: 52, column: 23)
!223 = distinct !DILexicalBlock(scope: !215, file: !141, line: 52, column: 23)
!224 = !DILocation(line: 52, column: 23, scope: !222)
!225 = !DILocalVariable(name: "__dummy2", scope: !222, file: !141, line: 52, type: !27)
!226 = !DILocation(line: 52, column: 23, scope: !223)
!227 = !DILocalVariable(name: "__dummy", scope: !228, file: !141, line: 52, type: !27)
!228 = distinct !DILexicalBlock(scope: !214, file: !141, line: 52, column: 23)
!229 = !DILocation(line: 52, column: 23, scope: !228)
!230 = !DILocalVariable(name: "__dummy2", scope: !228, file: !141, line: 52, type: !27)
!231 = !DILocation(line: 52, column: 23, scope: !214)
!232 = !DILocation(line: 164, column: 11, scope: !207, inlinedAt: !213)
!233 = !DILocation(line: 164, column: 17, scope: !207, inlinedAt: !213)
!234 = !DILocation(line: 164, column: 9, scope: !207, inlinedAt: !213)
!235 = !DILocation(line: 52, column: 23, scope: !140)
!236 = !DILocation(line: 540, column: 27, scope: !158, inlinedAt: !162)
!237 = !DILocation(line: 540, column: 6, scope: !158, inlinedAt: !162)
!238 = !DILocation(line: 540, column: 6, scope: !159, inlinedAt: !162)
!239 = !DILocation(line: 544, column: 7, scope: !189, inlinedAt: !162)
!240 = !DILocation(line: 544, column: 12, scope: !189, inlinedAt: !162)
!241 = !DILocation(line: 544, column: 7, scope: !157, inlinedAt: !162)
!242 = !DILocation(line: 545, column: 25, scope: !189, inlinedAt: !162)
!243 = !DILocation(line: 545, column: 31, scope: !189, inlinedAt: !162)
!244 = !DILocation(line: 480, column: 33, scope: !187, inlinedAt: !188)
!245 = !DILocation(line: 480, column: 23, scope: !187, inlinedAt: !188)
!246 = !DILocation(line: 481, column: 29, scope: !187, inlinedAt: !188)
!247 = !DILocation(line: 481, column: 35, scope: !187, inlinedAt: !188)
!248 = !DILocation(line: 481, column: 42, scope: !187, inlinedAt: !188)
!249 = !DILocation(line: 474, column: 23, scope: !182, inlinedAt: !186)
!250 = !DILocation(line: 474, column: 29, scope: !182, inlinedAt: !186)
!251 = !DILocation(line: 474, column: 36, scope: !182, inlinedAt: !186)
!252 = !DILocation(line: 474, column: 9, scope: !182, inlinedAt: !186)
!253 = !DILocation(line: 545, column: 4, scope: !189, inlinedAt: !162)
!254 = !DILocation(line: 547, column: 25, scope: !157, inlinedAt: !162)
!255 = !DILocation(line: 348, column: 7, scope: !256, inlinedAt: !180)
!256 = distinct !DILexicalBlock(scope: !176, file: !6, line: 348, column: 6)
!257 = !DILocation(line: 348, column: 6, scope: !176, inlinedAt: !180)
!258 = !DILocation(line: 349, column: 3, scope: !256, inlinedAt: !180)
!259 = !DILocation(line: 351, column: 6, scope: !260, inlinedAt: !180)
!260 = distinct !DILexicalBlock(scope: !176, file: !6, line: 351, column: 6)
!261 = !DILocation(line: 351, column: 11, scope: !260, inlinedAt: !180)
!262 = !DILocation(line: 351, column: 6, scope: !176, inlinedAt: !180)
!263 = !DILocation(line: 352, column: 3, scope: !260, inlinedAt: !180)
!264 = !DILocation(line: 354, column: 32, scope: !265, inlinedAt: !180)
!265 = distinct !DILexicalBlock(scope: !176, file: !6, line: 354, column: 6)
!266 = !DILocation(line: 354, column: 37, scope: !265, inlinedAt: !180)
!267 = !DILocation(line: 354, column: 42, scope: !265, inlinedAt: !180)
!268 = !DILocation(line: 354, column: 45, scope: !265, inlinedAt: !180)
!269 = !DILocation(line: 354, column: 50, scope: !265, inlinedAt: !180)
!270 = !DILocation(line: 354, column: 6, scope: !176, inlinedAt: !180)
!271 = !DILocation(line: 355, column: 3, scope: !265, inlinedAt: !180)
!272 = !DILocation(line: 356, column: 32, scope: !273, inlinedAt: !180)
!273 = distinct !DILexicalBlock(scope: !176, file: !6, line: 356, column: 6)
!274 = !DILocation(line: 356, column: 37, scope: !273, inlinedAt: !180)
!275 = !DILocation(line: 356, column: 43, scope: !273, inlinedAt: !180)
!276 = !DILocation(line: 356, column: 46, scope: !273, inlinedAt: !180)
!277 = !DILocation(line: 356, column: 51, scope: !273, inlinedAt: !180)
!278 = !DILocation(line: 356, column: 6, scope: !176, inlinedAt: !180)
!279 = !DILocation(line: 357, column: 3, scope: !273, inlinedAt: !180)
!280 = !DILocation(line: 358, column: 6, scope: !281, inlinedAt: !180)
!281 = distinct !DILexicalBlock(scope: !176, file: !6, line: 358, column: 6)
!282 = !DILocation(line: 358, column: 11, scope: !281, inlinedAt: !180)
!283 = !DILocation(line: 358, column: 6, scope: !176, inlinedAt: !180)
!284 = !DILocation(line: 358, column: 26, scope: !281, inlinedAt: !180)
!285 = !DILocation(line: 359, column: 6, scope: !286, inlinedAt: !180)
!286 = distinct !DILexicalBlock(scope: !176, file: !6, line: 359, column: 6)
!287 = !DILocation(line: 359, column: 11, scope: !286, inlinedAt: !180)
!288 = !DILocation(line: 359, column: 6, scope: !176, inlinedAt: !180)
!289 = !DILocation(line: 359, column: 26, scope: !286, inlinedAt: !180)
!290 = !DILocation(line: 360, column: 6, scope: !291, inlinedAt: !180)
!291 = distinct !DILexicalBlock(scope: !176, file: !6, line: 360, column: 6)
!292 = !DILocation(line: 360, column: 11, scope: !291, inlinedAt: !180)
!293 = !DILocation(line: 360, column: 6, scope: !176, inlinedAt: !180)
!294 = !DILocation(line: 360, column: 26, scope: !291, inlinedAt: !180)
!295 = !DILocation(line: 361, column: 6, scope: !296, inlinedAt: !180)
!296 = distinct !DILexicalBlock(scope: !176, file: !6, line: 361, column: 6)
!297 = !DILocation(line: 361, column: 11, scope: !296, inlinedAt: !180)
!298 = !DILocation(line: 361, column: 6, scope: !176, inlinedAt: !180)
!299 = !DILocation(line: 361, column: 26, scope: !296, inlinedAt: !180)
!300 = !DILocation(line: 362, column: 6, scope: !301, inlinedAt: !180)
!301 = distinct !DILexicalBlock(scope: !176, file: !6, line: 362, column: 6)
!302 = !DILocation(line: 362, column: 11, scope: !301, inlinedAt: !180)
!303 = !DILocation(line: 362, column: 6, scope: !176, inlinedAt: !180)
!304 = !DILocation(line: 362, column: 26, scope: !301, inlinedAt: !180)
!305 = !DILocation(line: 363, column: 6, scope: !306, inlinedAt: !180)
!306 = distinct !DILexicalBlock(scope: !176, file: !6, line: 363, column: 6)
!307 = !DILocation(line: 363, column: 11, scope: !306, inlinedAt: !180)
!308 = !DILocation(line: 363, column: 6, scope: !176, inlinedAt: !180)
!309 = !DILocation(line: 363, column: 26, scope: !306, inlinedAt: !180)
!310 = !DILocation(line: 364, column: 6, scope: !311, inlinedAt: !180)
!311 = distinct !DILexicalBlock(scope: !176, file: !6, line: 364, column: 6)
!312 = !DILocation(line: 364, column: 11, scope: !311, inlinedAt: !180)
!313 = !DILocation(line: 364, column: 6, scope: !176, inlinedAt: !180)
!314 = !DILocation(line: 364, column: 26, scope: !311, inlinedAt: !180)
!315 = !DILocation(line: 365, column: 6, scope: !316, inlinedAt: !180)
!316 = distinct !DILexicalBlock(scope: !176, file: !6, line: 365, column: 6)
!317 = !DILocation(line: 365, column: 11, scope: !316, inlinedAt: !180)
!318 = !DILocation(line: 365, column: 6, scope: !176, inlinedAt: !180)
!319 = !DILocation(line: 365, column: 26, scope: !316, inlinedAt: !180)
!320 = !DILocation(line: 366, column: 6, scope: !321, inlinedAt: !180)
!321 = distinct !DILexicalBlock(scope: !176, file: !6, line: 366, column: 6)
!322 = !DILocation(line: 366, column: 11, scope: !321, inlinedAt: !180)
!323 = !DILocation(line: 366, column: 6, scope: !176, inlinedAt: !180)
!324 = !DILocation(line: 366, column: 26, scope: !321, inlinedAt: !180)
!325 = !DILocation(line: 367, column: 6, scope: !326, inlinedAt: !180)
!326 = distinct !DILexicalBlock(scope: !176, file: !6, line: 367, column: 6)
!327 = !DILocation(line: 367, column: 11, scope: !326, inlinedAt: !180)
!328 = !DILocation(line: 367, column: 6, scope: !176, inlinedAt: !180)
!329 = !DILocation(line: 367, column: 26, scope: !326, inlinedAt: !180)
!330 = !DILocation(line: 368, column: 6, scope: !331, inlinedAt: !180)
!331 = distinct !DILexicalBlock(scope: !176, file: !6, line: 368, column: 6)
!332 = !DILocation(line: 368, column: 11, scope: !331, inlinedAt: !180)
!333 = !DILocation(line: 368, column: 6, scope: !176, inlinedAt: !180)
!334 = !DILocation(line: 368, column: 26, scope: !331, inlinedAt: !180)
!335 = !DILocation(line: 369, column: 6, scope: !336, inlinedAt: !180)
!336 = distinct !DILexicalBlock(scope: !176, file: !6, line: 369, column: 6)
!337 = !DILocation(line: 369, column: 11, scope: !336, inlinedAt: !180)
!338 = !DILocation(line: 369, column: 6, scope: !176, inlinedAt: !180)
!339 = !DILocation(line: 369, column: 26, scope: !336, inlinedAt: !180)
!340 = !DILocation(line: 370, column: 6, scope: !341, inlinedAt: !180)
!341 = distinct !DILexicalBlock(scope: !176, file: !6, line: 370, column: 6)
!342 = !DILocation(line: 370, column: 11, scope: !341, inlinedAt: !180)
!343 = !DILocation(line: 370, column: 6, scope: !176, inlinedAt: !180)
!344 = !DILocation(line: 370, column: 26, scope: !341, inlinedAt: !180)
!345 = !DILocation(line: 371, column: 6, scope: !346, inlinedAt: !180)
!346 = distinct !DILexicalBlock(scope: !176, file: !6, line: 371, column: 6)
!347 = !DILocation(line: 371, column: 11, scope: !346, inlinedAt: !180)
!348 = !DILocation(line: 371, column: 6, scope: !176, inlinedAt: !180)
!349 = !DILocation(line: 371, column: 26, scope: !346, inlinedAt: !180)
!350 = !DILocation(line: 372, column: 6, scope: !351, inlinedAt: !180)
!351 = distinct !DILexicalBlock(scope: !176, file: !6, line: 372, column: 6)
!352 = !DILocation(line: 372, column: 11, scope: !351, inlinedAt: !180)
!353 = !DILocation(line: 372, column: 6, scope: !176, inlinedAt: !180)
!354 = !DILocation(line: 372, column: 26, scope: !351, inlinedAt: !180)
!355 = !DILocation(line: 373, column: 6, scope: !356, inlinedAt: !180)
!356 = distinct !DILexicalBlock(scope: !176, file: !6, line: 373, column: 6)
!357 = !DILocation(line: 373, column: 11, scope: !356, inlinedAt: !180)
!358 = !DILocation(line: 373, column: 6, scope: !176, inlinedAt: !180)
!359 = !DILocation(line: 373, column: 26, scope: !356, inlinedAt: !180)
!360 = !DILocation(line: 374, column: 6, scope: !361, inlinedAt: !180)
!361 = distinct !DILexicalBlock(scope: !176, file: !6, line: 374, column: 6)
!362 = !DILocation(line: 374, column: 11, scope: !361, inlinedAt: !180)
!363 = !DILocation(line: 374, column: 6, scope: !176, inlinedAt: !180)
!364 = !DILocation(line: 374, column: 26, scope: !361, inlinedAt: !180)
!365 = !DILocation(line: 375, column: 6, scope: !366, inlinedAt: !180)
!366 = distinct !DILexicalBlock(scope: !176, file: !6, line: 375, column: 6)
!367 = !DILocation(line: 375, column: 11, scope: !366, inlinedAt: !180)
!368 = !DILocation(line: 375, column: 6, scope: !176, inlinedAt: !180)
!369 = !DILocation(line: 375, column: 27, scope: !366, inlinedAt: !180)
!370 = !DILocation(line: 376, column: 6, scope: !371, inlinedAt: !180)
!371 = distinct !DILexicalBlock(scope: !176, file: !6, line: 376, column: 6)
!372 = !DILocation(line: 376, column: 11, scope: !371, inlinedAt: !180)
!373 = !DILocation(line: 376, column: 6, scope: !176, inlinedAt: !180)
!374 = !DILocation(line: 376, column: 32, scope: !371, inlinedAt: !180)
!375 = !DILocation(line: 377, column: 6, scope: !376, inlinedAt: !180)
!376 = distinct !DILexicalBlock(scope: !176, file: !6, line: 377, column: 6)
!377 = !DILocation(line: 377, column: 11, scope: !376, inlinedAt: !180)
!378 = !DILocation(line: 377, column: 6, scope: !176, inlinedAt: !180)
!379 = !DILocation(line: 377, column: 32, scope: !376, inlinedAt: !180)
!380 = !DILocation(line: 378, column: 6, scope: !381, inlinedAt: !180)
!381 = distinct !DILexicalBlock(scope: !176, file: !6, line: 378, column: 6)
!382 = !DILocation(line: 378, column: 11, scope: !381, inlinedAt: !180)
!383 = !DILocation(line: 378, column: 6, scope: !176, inlinedAt: !180)
!384 = !DILocation(line: 378, column: 32, scope: !381, inlinedAt: !180)
!385 = !DILocation(line: 379, column: 6, scope: !386, inlinedAt: !180)
!386 = distinct !DILexicalBlock(scope: !176, file: !6, line: 379, column: 6)
!387 = !DILocation(line: 379, column: 11, scope: !386, inlinedAt: !180)
!388 = !DILocation(line: 379, column: 6, scope: !176, inlinedAt: !180)
!389 = !DILocation(line: 379, column: 33, scope: !386, inlinedAt: !180)
!390 = !DILocation(line: 380, column: 6, scope: !391, inlinedAt: !180)
!391 = distinct !DILexicalBlock(scope: !176, file: !6, line: 380, column: 6)
!392 = !DILocation(line: 380, column: 11, scope: !391, inlinedAt: !180)
!393 = !DILocation(line: 380, column: 6, scope: !176, inlinedAt: !180)
!394 = !DILocation(line: 380, column: 33, scope: !391, inlinedAt: !180)
!395 = !DILocation(line: 381, column: 6, scope: !396, inlinedAt: !180)
!396 = distinct !DILexicalBlock(scope: !176, file: !6, line: 381, column: 6)
!397 = !DILocation(line: 381, column: 11, scope: !396, inlinedAt: !180)
!398 = !DILocation(line: 381, column: 6, scope: !176, inlinedAt: !180)
!399 = !DILocation(line: 381, column: 33, scope: !396, inlinedAt: !180)
!400 = !DILocation(line: 382, column: 2, scope: !401, inlinedAt: !180)
!401 = distinct !DILexicalBlock(scope: !402, file: !6, line: 382, column: 2)
!402 = distinct !DILexicalBlock(scope: !176, file: !6, line: 382, column: 2)
!403 = !{i32 -2144111157, i32 -2144111128, i32 -2144111082, i32 -2144111024, i32 -2144110970, i32 -2144110916, i32 -2144110861, i32 -2144110830}
!404 = !DILocation(line: 382, column: 2, scope: !405, inlinedAt: !180)
!405 = distinct !DILexicalBlock(scope: !406, file: !6, line: 382, column: 2)
!406 = distinct !DILexicalBlock(scope: !402, file: !6, line: 382, column: 2)
!407 = !{i32 -2144110387, i32 -2144110380, i32 -2144110326, i32 -2144110295, i32 -2144110265}
!408 = !DILocation(line: 382, column: 2, scope: !406, inlinedAt: !180)
!409 = !DILocation(line: 386, column: 1, scope: !176, inlinedAt: !180)
!410 = !DILocation(line: 547, column: 9, scope: !157, inlinedAt: !162)
!411 = !DILocation(line: 549, column: 8, scope: !412, inlinedAt: !162)
!412 = distinct !DILexicalBlock(scope: !157, file: !6, line: 549, column: 7)
!413 = !DILocation(line: 549, column: 7, scope: !157, inlinedAt: !162)
!414 = !DILocation(line: 550, column: 4, scope: !412, inlinedAt: !162)
!415 = !DILocation(line: 553, column: 33, scope: !157, inlinedAt: !162)
!416 = !DILocation(line: 325, column: 6, scope: !417, inlinedAt: !174)
!417 = distinct !DILexicalBlock(scope: !170, file: !6, line: 325, column: 6)
!418 = !DILocation(line: 325, column: 6, scope: !170, inlinedAt: !174)
!419 = !DILocation(line: 326, column: 3, scope: !417, inlinedAt: !174)
!420 = !DILocation(line: 332, column: 9, scope: !170, inlinedAt: !174)
!421 = !DILocation(line: 332, column: 15, scope: !170, inlinedAt: !174)
!422 = !DILocation(line: 332, column: 2, scope: !170, inlinedAt: !174)
!423 = !DILocation(line: 336, column: 1, scope: !170, inlinedAt: !174)
!424 = !DILocation(line: 553, column: 5, scope: !157, inlinedAt: !162)
!425 = !DILocation(line: 553, column: 41, scope: !157, inlinedAt: !162)
!426 = !DILocation(line: 554, column: 5, scope: !157, inlinedAt: !162)
!427 = !DILocation(line: 554, column: 12, scope: !157, inlinedAt: !162)
!428 = !DILocation(line: 448, column: 31, scope: !145, inlinedAt: !156)
!429 = !DILocation(line: 448, column: 34, scope: !145, inlinedAt: !156)
!430 = !DILocation(line: 448, column: 14, scope: !145, inlinedAt: !156)
!431 = !DILocation(line: 450, column: 22, scope: !145, inlinedAt: !156)
!432 = !DILocation(line: 450, column: 25, scope: !145, inlinedAt: !156)
!433 = !DILocation(line: 450, column: 30, scope: !145, inlinedAt: !156)
!434 = !DILocation(line: 450, column: 36, scope: !145, inlinedAt: !156)
!435 = !DILocation(line: 450, column: 8, scope: !145, inlinedAt: !156)
!436 = !DILocation(line: 450, column: 6, scope: !145, inlinedAt: !156)
!437 = !DILocation(line: 451, column: 9, scope: !145, inlinedAt: !156)
!438 = !DILocation(line: 552, column: 3, scope: !157, inlinedAt: !162)
!439 = !DILocation(line: 557, column: 19, scope: !159, inlinedAt: !162)
!440 = !DILocation(line: 557, column: 25, scope: !159, inlinedAt: !162)
!441 = !DILocation(line: 557, column: 9, scope: !159, inlinedAt: !162)
!442 = !DILocation(line: 557, column: 2, scope: !159, inlinedAt: !162)
!443 = !DILocation(line: 558, column: 1, scope: !159, inlinedAt: !162)
!444 = !DILocation(line: 52, column: 2, scope: !140)
!445 = distinct !DISubprogram(name: "acpi_ev_remove_global_lock_handler", scope: !3, file: !3, line: 87, type: !41, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !43)
!446 = !DILocalVariable(name: "status", scope: !445, file: !3, line: 89, type: !14)
!447 = !DILocation(line: 89, column: 14, scope: !445)
!448 = !DILocation(line: 93, column: 31, scope: !445)
!449 = !DILocation(line: 94, column: 11, scope: !445)
!450 = !DILocation(line: 94, column: 9, scope: !445)
!451 = !DILocation(line: 97, column: 22, scope: !445)
!452 = !DILocation(line: 97, column: 2, scope: !445)
!453 = !DILocation(line: 98, column: 2, scope: !445)
!454 = distinct !DISubprogram(name: "acpi_ev_acquire_global_lock", scope: !3, file: !3, line: 170, type: !455, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !43)
!455 = !DISubroutineType(types: !456)
!456 = !{!14, !457}
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !17, line: 19, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !19, line: 24, baseType: !459)
!459 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!460 = !DILocalVariable(name: "timeout", arg: 1, scope: !454, file: !3, line: 170, type: !457)
!461 = !DILocation(line: 170, column: 45, scope: !454)
!462 = !DILocalVariable(name: "flags", scope: !454, file: !3, line: 172, type: !27)
!463 = !DILocation(line: 172, column: 17, scope: !454)
!464 = !DILocalVariable(name: "status", scope: !454, file: !3, line: 173, type: !14)
!465 = !DILocation(line: 173, column: 14, scope: !454)
!466 = !DILocalVariable(name: "acquired", scope: !454, file: !3, line: 174, type: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !17, line: 17, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !19, line: 21, baseType: !469)
!469 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!470 = !DILocation(line: 174, column: 5, scope: !454)
!471 = !DILocation(line: 183, column: 32, scope: !454)
!472 = !DILocation(line: 183, column: 60, scope: !454)
!473 = !DILocation(line: 184, column: 11, scope: !454)
!474 = !DILocation(line: 184, column: 21, scope: !454)
!475 = !DILocation(line: 183, column: 6, scope: !454)
!476 = !DILocation(line: 182, column: 9, scope: !454)
!477 = !DILocation(line: 185, column: 6, scope: !478)
!478 = distinct !DILexicalBlock(scope: !454, file: !3, line: 185, column: 6)
!479 = !DILocation(line: 185, column: 6, scope: !454)
!480 = !DILocation(line: 186, column: 3, scope: !481)
!481 = distinct !DILexicalBlock(scope: !478, file: !3, line: 185, column: 28)
!482 = !DILocation(line: 197, column: 29, scope: !454)
!483 = !DILocation(line: 198, column: 6, scope: !484)
!484 = distinct !DILexicalBlock(scope: !454, file: !3, line: 198, column: 6)
!485 = !DILocation(line: 198, column: 34, scope: !484)
!486 = !DILocation(line: 198, column: 6, scope: !454)
!487 = !DILocation(line: 199, column: 31, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !3, line: 198, column: 40)
!489 = !DILocation(line: 200, column: 2, scope: !488)
!490 = !DILocation(line: 206, column: 7, scope: !491)
!491 = distinct !DILexicalBlock(scope: !454, file: !3, line: 206, column: 6)
!492 = !DILocation(line: 206, column: 6, scope: !454)
!493 = !DILocation(line: 207, column: 33, scope: !494)
!494 = distinct !DILexicalBlock(scope: !491, file: !3, line: 206, column: 37)
!495 = !DILocation(line: 208, column: 3, scope: !494)
!496 = !DILocation(line: 211, column: 31, scope: !454)
!497 = !DILocation(line: 211, column: 10, scope: !454)
!498 = !DILocation(line: 211, column: 8, scope: !454)
!499 = !DILocation(line: 213, column: 2, scope: !454)
!500 = !DILocation(line: 217, column: 3, scope: !501)
!501 = distinct !DILexicalBlock(scope: !454, file: !3, line: 213, column: 5)
!502 = !DILocation(line: 218, column: 7, scope: !503)
!503 = distinct !DILexicalBlock(scope: !501, file: !3, line: 218, column: 7)
!504 = !DILocation(line: 218, column: 7, scope: !501)
!505 = !DILocation(line: 219, column: 34, scope: !506)
!506 = distinct !DILexicalBlock(scope: !503, file: !3, line: 218, column: 17)
!507 = !DILocation(line: 222, column: 4, scope: !506)
!508 = !DILocation(line: 230, column: 32, scope: !501)
!509 = !DILocation(line: 231, column: 24, scope: !501)
!510 = !DILocation(line: 231, column: 59, scope: !501)
!511 = !DILocation(line: 231, column: 3, scope: !501)
!512 = !DILocation(line: 242, column: 8, scope: !501)
!513 = !DILocation(line: 241, column: 7, scope: !501)
!514 = !DILocation(line: 240, column: 10, scope: !501)
!515 = !DILocation(line: 244, column: 32, scope: !501)
!516 = !DILocation(line: 244, column: 11, scope: !501)
!517 = !DILocation(line: 244, column: 9, scope: !501)
!518 = !DILocation(line: 246, column: 2, scope: !501)
!519 = !DILocation(line: 246, column: 11, scope: !454)
!520 = distinct !{!520, !499, !521}
!521 = !DILocation(line: 246, column: 31, scope: !454)
!522 = !DILocation(line: 248, column: 31, scope: !454)
!523 = !DILocation(line: 249, column: 23, scope: !454)
!524 = !DILocation(line: 249, column: 58, scope: !454)
!525 = !DILocation(line: 249, column: 2, scope: !454)
!526 = !DILocation(line: 251, column: 2, scope: !454)
!527 = !DILocation(line: 252, column: 1, scope: !454)
!528 = distinct !DISubprogram(name: "acpi_ev_release_global_lock", scope: !3, file: !3, line: 266, type: !41, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !43)
!529 = !DILocalVariable(name: "pending", scope: !528, file: !3, line: 268, type: !467)
!530 = !DILocation(line: 268, column: 5, scope: !528)
!531 = !DILocalVariable(name: "status", scope: !528, file: !3, line: 269, type: !14)
!532 = !DILocation(line: 269, column: 14, scope: !528)
!533 = !DILocation(line: 275, column: 7, scope: !534)
!534 = distinct !DILexicalBlock(scope: !528, file: !3, line: 275, column: 6)
!535 = !DILocation(line: 275, column: 6, scope: !528)
!536 = !DILocation(line: 276, column: 3, scope: !537)
!537 = distinct !DILexicalBlock(scope: !534, file: !3, line: 275, column: 38)
!538 = !DILocation(line: 278, column: 3, scope: !537)
!539 = !DILocation(line: 281, column: 6, scope: !540)
!540 = distinct !DILexicalBlock(scope: !528, file: !3, line: 281, column: 6)
!541 = !DILocation(line: 281, column: 6, scope: !528)
!542 = !DILocation(line: 285, column: 3, scope: !543)
!543 = distinct !DILexicalBlock(scope: !540, file: !3, line: 281, column: 36)
!544 = !DILocation(line: 291, column: 7, scope: !545)
!545 = distinct !DILexicalBlock(scope: !543, file: !3, line: 291, column: 7)
!546 = !DILocation(line: 291, column: 7, scope: !543)
!547 = !DILocation(line: 293, column: 8, scope: !548)
!548 = distinct !DILexicalBlock(scope: !545, file: !3, line: 291, column: 16)
!549 = !DILocation(line: 292, column: 11, scope: !548)
!550 = !DILocation(line: 296, column: 3, scope: !548)
!551 = !DILocation(line: 300, column: 2, scope: !543)
!552 = !DILocation(line: 302, column: 32, scope: !528)
!553 = !DILocation(line: 306, column: 2, scope: !528)
!554 = !DILocation(line: 307, column: 2, scope: !528)
!555 = !DILocation(line: 308, column: 1, scope: !528)
!556 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !557, file: !557, line: 646, type: !558, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!557 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!558 = !DISubroutineType(types: !559)
!559 = !{!27}
!560 = !DILocalVariable(name: "__ret", scope: !561, file: !557, line: 648, type: !27)
!561 = distinct !DILexicalBlock(scope: !556, file: !557, line: 648, column: 9)
!562 = !DILocation(line: 648, column: 9, scope: !561)
!563 = !DILocalVariable(name: "__edi", scope: !561, file: !557, line: 648, type: !27)
!564 = !DILocalVariable(name: "__esi", scope: !561, file: !557, line: 648, type: !27)
!565 = !DILocalVariable(name: "__edx", scope: !561, file: !557, line: 648, type: !27)
!566 = !DILocalVariable(name: "__ecx", scope: !561, file: !557, line: 648, type: !27)
!567 = !DILocalVariable(name: "__eax", scope: !561, file: !557, line: 648, type: !27)
!568 = !DILocation(line: 648, column: 9, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !557, line: 648, column: 9)
!570 = distinct !DILexicalBlock(scope: !561, file: !557, line: 648, column: 9)
!571 = !{i32 -2145784763, i32 -2145782448, i32 -2145782214, i32 -2145782163, i32 -2145782135, i32 -2145782110, i32 -2145782426, i32 -2145782413, i32 -2145781975, i32 -2145781856, i32 -2145782321, i32 -2145782294, i32 -2145782266, i32 -2145782236}
!572 = !DILocalVariable(name: "__mask", scope: !573, file: !557, line: 648, type: !27)
!573 = distinct !DILexicalBlock(scope: !569, file: !557, line: 648, column: 9)
!574 = !DILocation(line: 648, column: 9, scope: !573)
!575 = !DILocation(line: 648, column: 9, scope: !570)
!576 = !DILocation(line: 648, column: 2, scope: !556)
!577 = distinct !DISubprogram(name: "get_order", scope: !578, file: !578, line: 29, type: !209, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!578 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!579 = !DILocalVariable(name: "x", arg: 1, scope: !580, file: !581, line: 366, type: !23)
!580 = distinct !DISubprogram(name: "fls64", scope: !581, file: !581, line: 366, type: !582, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!581 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!582 = !DISubroutineType(types: !583)
!583 = !{!211, !23}
!584 = !DILocation(line: 366, column: 40, scope: !580, inlinedAt: !585)
!585 = distinct !DILocation(line: 46, column: 9, scope: !577)
!586 = !DILocalVariable(name: "bitpos", scope: !580, file: !581, line: 368, type: !211)
!587 = !DILocation(line: 368, column: 6, scope: !580, inlinedAt: !585)
!588 = !DILocalVariable(name: "size", arg: 1, scope: !577, file: !578, line: 29, type: !27)
!589 = !DILocation(line: 29, column: 63, scope: !577)
!590 = !DILocation(line: 31, column: 27, scope: !591)
!591 = distinct !DILexicalBlock(scope: !577, file: !578, line: 31, column: 6)
!592 = !DILocation(line: 31, column: 6, scope: !591)
!593 = !DILocation(line: 31, column: 6, scope: !577)
!594 = !DILocation(line: 32, column: 8, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !578, line: 32, column: 7)
!596 = distinct !DILexicalBlock(scope: !591, file: !578, line: 31, column: 34)
!597 = !DILocation(line: 32, column: 7, scope: !596)
!598 = !DILocation(line: 33, column: 4, scope: !595)
!599 = !DILocation(line: 35, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !596, file: !578, line: 35, column: 7)
!601 = !DILocation(line: 35, column: 12, scope: !600)
!602 = !DILocation(line: 35, column: 7, scope: !596)
!603 = !DILocation(line: 36, column: 4, scope: !600)
!604 = !DILocation(line: 38, column: 10, scope: !596)
!605 = !DILocation(line: 38, column: 28, scope: !596)
!606 = !DILocation(line: 38, column: 41, scope: !596)
!607 = !DILocation(line: 38, column: 3, scope: !596)
!608 = !DILocation(line: 41, column: 6, scope: !577)
!609 = !DILocation(line: 42, column: 7, scope: !577)
!610 = !DILocation(line: 46, column: 15, scope: !577)
!611 = !DILocation(line: 374, column: 2, scope: !580, inlinedAt: !585)
!612 = !DILocation(line: 376, column: 14, scope: !580, inlinedAt: !585)
!613 = !{i32 660045}
!614 = !DILocation(line: 377, column: 9, scope: !580, inlinedAt: !585)
!615 = !DILocation(line: 377, column: 16, scope: !580, inlinedAt: !585)
!616 = !DILocation(line: 46, column: 2, scope: !577)
!617 = !DILocation(line: 48, column: 1, scope: !577)
!618 = distinct !DISubprogram(name: "__ilog2_u64", scope: !619, file: !619, line: 30, type: !620, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!619 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!620 = !DISubroutineType(types: !621)
!621 = !{!211, !22}
!622 = !DILocation(line: 366, column: 40, scope: !580, inlinedAt: !623)
!623 = distinct !DILocation(line: 32, column: 9, scope: !618)
!624 = !DILocation(line: 368, column: 6, scope: !580, inlinedAt: !623)
!625 = !DILocalVariable(name: "n", arg: 1, scope: !618, file: !619, line: 30, type: !22)
!626 = !DILocation(line: 30, column: 21, scope: !618)
!627 = !DILocation(line: 32, column: 15, scope: !618)
!628 = !DILocation(line: 374, column: 2, scope: !580, inlinedAt: !623)
!629 = !DILocation(line: 376, column: 14, scope: !580, inlinedAt: !623)
!630 = !DILocation(line: 377, column: 9, scope: !580, inlinedAt: !623)
!631 = !DILocation(line: 377, column: 16, scope: !580, inlinedAt: !623)
!632 = !DILocation(line: 32, column: 18, scope: !618)
!633 = !DILocation(line: 32, column: 2, scope: !618)
!634 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !635, file: !635, line: 137, type: !636, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!635 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!636 = !DISubroutineType(types: !637)
!637 = !{!20, !148, !638, !151, !25}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!640 = !DILocalVariable(name: "s", arg: 1, scope: !634, file: !635, line: 137, type: !148)
!641 = !DILocation(line: 137, column: 54, scope: !634)
!642 = !DILocalVariable(name: "object", arg: 2, scope: !634, file: !635, line: 137, type: !638)
!643 = !DILocation(line: 137, column: 69, scope: !634)
!644 = !DILocalVariable(name: "size", arg: 3, scope: !634, file: !635, line: 138, type: !151)
!645 = !DILocation(line: 138, column: 12, scope: !634)
!646 = !DILocalVariable(name: "flags", arg: 4, scope: !634, file: !635, line: 138, type: !25)
!647 = !DILocation(line: 138, column: 24, scope: !634)
!648 = !DILocation(line: 140, column: 17, scope: !634)
!649 = !DILocation(line: 140, column: 2, scope: !634)
