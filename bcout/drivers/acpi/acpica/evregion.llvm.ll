; ModuleID = '../bcout/drivers/acpi/acpica/evregion.llvm.bc'
source_filename = "drivers/acpi/acpica/evregion.c"
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
%struct.acpi_reg_walk_info = type { i32, i32, i8 }
%struct.acpi_connection_info = type { i8*, i16, i8 }
%struct.acpi_object_region = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object*, i64, i32 }
%struct.acpi_object_addr_handler = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i32 (i32, i64, i32, i64*, i8*, i8*)*, %struct.acpi_namespace_node*, i8*, i32 (i8*, i32, i8*, i8**)*, %union.acpi_operand_object*, %union.acpi_operand_object* }
%struct.acpi_object_extra = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i8*, i8*, i32 }
%struct.acpi_object_region_field = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, i16, %union.acpi_operand_object*, i8*, i16, i8* }
%struct.acpi_evaluate_info = type { %struct.acpi_namespace_node*, i8*, %union.acpi_operand_object**, %struct.acpi_namespace_node*, %union.acpi_operand_object*, i8*, %union.acpi_predefined_info*, %union.acpi_operand_object*, %union.acpi_operand_object*, i32, i32, i16, i16, i8, i8, i8 }
%union.acpi_predefined_info = type { %struct.acpi_name_info }
%struct.acpi_name_info = type <{ [4 x i8], i16, i8 }>
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.anon.43 }
%struct.anon.43 = type { i32, i32, i64, i32 }
%struct.anon.38 = type { i32, i64 }
%struct.acpi_buffer = type { i64, i8* }

@acpi_gbl_root_node = external dso_local global %struct.acpi_namespace_node*, align 8
@acpi_gbl_default_address_spaces = external dso_local global [0 x i8], align 1
@_acpi_module_name = internal constant [9 x i8] c"evregion\00", align 1, !dbg !0
@.str = private unnamed_addr constant [40 x i8] c"No handler for Region [%4.4s] (%p) [%s]\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"No init routine for region(%p) [%s]\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"During region initialization: [%s]\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Returned by Handler for [%s]\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Timeout from EC hardware or EC device driver\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"from region _REG, [%s]\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"from region handler - deactivate, [%s]\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Circular handler list in region object %p\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"_REG\00", align 1
@acpi_gbl_namespace_initialized = external dso_local global i8, align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.9 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_initialize_op_regions() #0 !dbg !53 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %i, metadata !59, metadata !DIExpression()), !dbg !60
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #8, !dbg !61
  store i32 %call, i32* %status, align 4, !dbg !62
  %0 = load i32, i32* %status, align 4, !dbg !63
  %tobool = icmp ne i32 %0, 0, !dbg !63
  br i1 %tobool, label %if.then, label %if.end, !dbg !65

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4, !dbg !66
  store i32 %1, i32* %retval, align 4, !dbg !66
  br label %return, !dbg !66

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !68
  br label %for.cond, !dbg !70

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !dbg !71
  %cmp = icmp ult i32 %2, 4, !dbg !73
  br i1 %cmp, label %for.body, label %for.end, !dbg !74

for.body:                                         ; preds = %for.cond
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !75
  %4 = load i32, i32* %i, align 4, !dbg !78
  %idxprom = zext i32 %4 to i64, !dbg !79
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @acpi_gbl_default_address_spaces, i64 0, i64 %idxprom, !dbg !79
  %5 = load i8, i8* %arrayidx, align 1, !dbg !79
  %call1 = call zeroext i8 @acpi_ev_has_default_handler(%struct.acpi_namespace_node* %3, i8 zeroext %5) #8, !dbg !80
  %tobool2 = icmp ne i8 %call1, 0, !dbg !80
  br i1 %tobool2, label %if.then3, label %if.end6, !dbg !81

if.then3:                                         ; preds = %for.body
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !82
  %7 = load i32, i32* %i, align 4, !dbg !84
  %idxprom4 = zext i32 %7 to i64, !dbg !85
  %arrayidx5 = getelementptr [0 x i8], [0 x i8]* @acpi_gbl_default_address_spaces, i64 0, i64 %idxprom4, !dbg !85
  %8 = load i8, i8* %arrayidx5, align 1, !dbg !85
  call void @acpi_ev_execute_reg_methods(%struct.acpi_namespace_node* %6, i8 zeroext %8, i32 1) #8, !dbg !86
  br label %if.end6, !dbg !87

if.end6:                                          ; preds = %if.then3, %for.body
  br label %for.inc, !dbg !88

for.inc:                                          ; preds = %if.end6
  %9 = load i32, i32* %i, align 4, !dbg !89
  %inc = add i32 %9, 1, !dbg !89
  store i32 %inc, i32* %i, align 4, !dbg !89
  br label %for.cond, !dbg !90, !llvm.loop !91

for.end:                                          ; preds = %for.cond
  %call7 = call i32 @acpi_ut_release_mutex(i32 1) #8, !dbg !93
  %10 = load i32, i32* %status, align 4, !dbg !94
  store i32 %10, i32* %retval, align 4, !dbg !94
  br label %return, !dbg !94

return:                                           ; preds = %for.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !95
  ret i32 %11, !dbg !95
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ev_has_default_handler(%struct.acpi_namespace_node*, i8 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ev_execute_reg_methods(%struct.acpi_namespace_node* %node, i8 zeroext %space_id, i32 %function) #0 !dbg !96 {
entry:
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %space_id.addr = alloca i8, align 1
  %function.addr = alloca i32, align 4
  %info = alloca %struct.acpi_reg_walk_info, align 4
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !856, metadata !DIExpression()), !dbg !857
  store i8 %space_id, i8* %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %space_id.addr, metadata !858, metadata !DIExpression()), !dbg !859
  store i32 %function, i32* %function.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %function.addr, metadata !860, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.declare(metadata %struct.acpi_reg_walk_info* %info, metadata !862, metadata !DIExpression()), !dbg !863
  %0 = load i8, i8* %space_id.addr, align 1, !dbg !864
  %conv = zext i8 %0 to i32, !dbg !864
  %cmp = icmp eq i32 %conv, 0, !dbg !866
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !867

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* %space_id.addr, align 1, !dbg !868
  %conv2 = zext i8 %1 to i32, !dbg !868
  %cmp3 = icmp eq i32 %conv2, 1, !dbg !869
  br i1 %cmp3, label %if.then, label %lor.lhs.false5, !dbg !870

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %2 = load i8, i8* %space_id.addr, align 1, !dbg !871
  %conv6 = zext i8 %2 to i32, !dbg !871
  %cmp7 = icmp eq i32 %conv6, 126, !dbg !872
  br i1 %cmp7, label %if.then, label %if.end, !dbg !873

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false, %entry
  br label %return, !dbg !874

if.end:                                           ; preds = %lor.lhs.false5
  %3 = load i8, i8* %space_id.addr, align 1, !dbg !876
  %space_id9 = getelementptr inbounds %struct.acpi_reg_walk_info, %struct.acpi_reg_walk_info* %info, i32 0, i32 2, !dbg !877
  store i8 %3, i8* %space_id9, align 4, !dbg !878
  %4 = load i32, i32* %function.addr, align 4, !dbg !879
  %function10 = getelementptr inbounds %struct.acpi_reg_walk_info, %struct.acpi_reg_walk_info* %info, i32 0, i32 0, !dbg !880
  store i32 %4, i32* %function10, align 4, !dbg !881
  %reg_run_count = getelementptr inbounds %struct.acpi_reg_walk_info, %struct.acpi_reg_walk_info* %info, i32 0, i32 1, !dbg !882
  store i32 0, i32* %reg_run_count, align 4, !dbg !883
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !884
  %6 = bitcast %struct.acpi_namespace_node* %5 to i8*, !dbg !884
  %7 = bitcast %struct.acpi_reg_walk_info* %info to i8*, !dbg !885
  %call = call i32 @acpi_ns_walk_namespace(i32 0, i8* %6, i32 -1, i32 1, i32 (i8*, i32, i8*, i8**)* @acpi_ev_reg_run, i32 (i8*, i32, i8*, i8**)* null, i8* %7, i8** null) #8, !dbg !886
  %8 = load i8, i8* %space_id.addr, align 1, !dbg !887
  %conv11 = zext i8 %8 to i32, !dbg !887
  %cmp12 = icmp eq i32 %conv11, 3, !dbg !889
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !890

if.then14:                                        ; preds = %if.end
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !891
  call void @acpi_ev_orphan_ec_reg_method(%struct.acpi_namespace_node* %9) #8, !dbg !893
  br label %if.end15, !dbg !894

if.end15:                                         ; preds = %if.then14, %if.end
  br label %return, !dbg !895

return:                                           ; preds = %if.end15, %if.then
  ret void, !dbg !896
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_release_mutex(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_address_space_dispatch(%union.acpi_operand_object* %region_obj, %union.acpi_operand_object* %field_obj, i32 %function, i32 %region_offset, i32 %bit_width, i64* %value) #0 !dbg !897 {
entry:
  %retval = alloca i32, align 4
  %region_obj.addr = alloca %union.acpi_operand_object*, align 8
  %field_obj.addr = alloca %union.acpi_operand_object*, align 8
  %function.addr = alloca i32, align 4
  %region_offset.addr = alloca i32, align 4
  %bit_width.addr = alloca i32, align 4
  %value.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %handler = alloca i32 (i32, i64, i32, i64*, i8*, i8*)*, align 8
  %region_setup = alloca i32 (i8*, i32, i8*, i8**)*, align 8
  %handler_desc = alloca %union.acpi_operand_object*, align 8
  %region_obj2 = alloca %union.acpi_operand_object*, align 8
  %region_context = alloca i8*, align 8
  %context = alloca %struct.acpi_connection_info*, align 8
  %address = alloca i64, align 8
  store %union.acpi_operand_object* %region_obj, %union.acpi_operand_object** %region_obj.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %region_obj.addr, metadata !900, metadata !DIExpression()), !dbg !901
  store %union.acpi_operand_object* %field_obj, %union.acpi_operand_object** %field_obj.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %field_obj.addr, metadata !902, metadata !DIExpression()), !dbg !903
  store i32 %function, i32* %function.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %function.addr, metadata !904, metadata !DIExpression()), !dbg !905
  store i32 %region_offset, i32* %region_offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %region_offset.addr, metadata !906, metadata !DIExpression()), !dbg !907
  store i32 %bit_width, i32* %bit_width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bit_width.addr, metadata !908, metadata !DIExpression()), !dbg !909
  store i64* %value, i64** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %value.addr, metadata !910, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.declare(metadata i32* %status, metadata !912, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.declare(metadata i32 (i32, i64, i32, i64*, i8*, i8*)** %handler, metadata !914, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.declare(metadata i32 (i8*, i32, i8*, i8**)** %region_setup, metadata !916, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %handler_desc, metadata !918, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %region_obj2, metadata !920, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.declare(metadata i8** %region_context, metadata !922, metadata !DIExpression()), !dbg !923
  store i8* null, i8** %region_context, align 8, !dbg !923
  call void @llvm.dbg.declare(metadata %struct.acpi_connection_info** %context, metadata !924, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.declare(metadata i64* %address, metadata !932, metadata !DIExpression()), !dbg !933
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !934
  %call = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %0) #8, !dbg !935
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %region_obj2, align 8, !dbg !936
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj2, align 8, !dbg !937
  %tobool = icmp ne %union.acpi_operand_object* %1, null, !dbg !937
  br i1 %tobool, label %if.end, label %if.then, !dbg !939

if.then:                                          ; preds = %entry
  store i32 6, i32* %retval, align 4, !dbg !940
  br label %return, !dbg !940

if.end:                                           ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !942
  %region = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_region*, !dbg !943
  %handler1 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 7, !dbg !944
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler1, align 8, !dbg !944
  store %union.acpi_operand_object* %3, %union.acpi_operand_object** %handler_desc, align 8, !dbg !945
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_desc, align 8, !dbg !946
  %tobool2 = icmp ne %union.acpi_operand_object* %4, null, !dbg !946
  br i1 %tobool2, label %if.end8, label %if.then3, !dbg !948

if.then3:                                         ; preds = %if.end
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !949
  %region4 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_region*, !dbg !949
  %node = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region4, i32 0, i32 6, !dbg !949
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !949
  %7 = bitcast %struct.acpi_namespace_node* %6 to i8*, !dbg !949
  %call5 = call i8* @acpi_ut_get_node_name(i8* %7) #8, !dbg !949
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !949
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !949
  %region6 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_region*, !dbg !949
  %space_id = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region6, i32 0, i32 5, !dbg !949
  %10 = load i8, i8* %space_id, align 1, !dbg !949
  %call7 = call i8* @acpi_ut_get_region_name(i8 zeroext %10) #8, !dbg !949
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 127, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %call5, %union.acpi_operand_object* %8, i8* %call7) #8, !dbg !949
  store i32 6, i32* %retval, align 4, !dbg !951
  br label %return, !dbg !951

if.end8:                                          ; preds = %if.end
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_desc, align 8, !dbg !952
  %address_space = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_addr_handler*, !dbg !953
  %context9 = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space, i32 0, i32 9, !dbg !954
  %12 = load i8*, i8** %context9, align 8, !dbg !954
  %13 = bitcast i8* %12 to %struct.acpi_connection_info*, !dbg !952
  store %struct.acpi_connection_info* %13, %struct.acpi_connection_info** %context, align 8, !dbg !955
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !956
  %region10 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_region*, !dbg !958
  %flags = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region10, i32 0, i32 4, !dbg !959
  %15 = load i8, i8* %flags, align 4, !dbg !959
  %conv = zext i8 %15 to i32, !dbg !956
  %and = and i32 %conv, 32, !dbg !960
  %tobool11 = icmp ne i32 %and, 0, !dbg !960
  br i1 %tobool11, label %if.end44, label %if.then12, !dbg !961

if.then12:                                        ; preds = %if.end8
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_desc, align 8, !dbg !962
  %address_space13 = bitcast %union.acpi_operand_object* %16 to %struct.acpi_object_addr_handler*, !dbg !964
  %setup = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space13, i32 0, i32 10, !dbg !965
  %17 = load i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)** %setup, align 8, !dbg !965
  store i32 (i8*, i32, i8*, i8**)* %17, i32 (i8*, i32, i8*, i8**)** %region_setup, align 8, !dbg !966
  %18 = load i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)** %region_setup, align 8, !dbg !967
  %tobool14 = icmp ne i32 (i8*, i32, i8*, i8**)* %18, null, !dbg !967
  br i1 %tobool14, label %if.end19, label %if.then15, !dbg !969

if.then15:                                        ; preds = %if.then12
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !970
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !970
  %region16 = bitcast %union.acpi_operand_object* %20 to %struct.acpi_object_region*, !dbg !970
  %space_id17 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region16, i32 0, i32 5, !dbg !970
  %21 = load i8, i8* %space_id17, align 1, !dbg !970
  %call18 = call i8* @acpi_ut_get_region_name(i8 zeroext %21) #8, !dbg !970
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 152, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), %union.acpi_operand_object* %19, i8* %call18) #8, !dbg !970
  store i32 6, i32* %retval, align 4, !dbg !972
  br label %return, !dbg !972

if.end19:                                         ; preds = %if.then12
  call void @acpi_ex_exit_interpreter() #8, !dbg !973
  %22 = load i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)** %region_setup, align 8, !dbg !974
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !975
  %24 = bitcast %union.acpi_operand_object* %23 to i8*, !dbg !975
  %25 = load %struct.acpi_connection_info*, %struct.acpi_connection_info** %context, align 8, !dbg !976
  %26 = bitcast %struct.acpi_connection_info* %25 to i8*, !dbg !976
  %call20 = call i32 %22(i8* %24, i32 0, i8* %26, i8** %region_context) #8, !dbg !974
  store i32 %call20, i32* %status, align 4, !dbg !977
  call void @acpi_ex_enter_interpreter() #8, !dbg !978
  %27 = load i32, i32* %status, align 4, !dbg !979
  %tobool21 = icmp ne i32 %27, 0, !dbg !979
  br i1 %tobool21, label %if.then22, label %if.end26, !dbg !981

if.then22:                                        ; preds = %if.end19
  %28 = load i32, i32* %status, align 4, !dbg !982
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !982
  %region23 = bitcast %union.acpi_operand_object* %29 to %struct.acpi_object_region*, !dbg !982
  %space_id24 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region23, i32 0, i32 5, !dbg !982
  %30 = load i8, i8* %space_id24, align 1, !dbg !982
  %call25 = call i8* @acpi_ut_get_region_name(i8 zeroext %30) #8, !dbg !982
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 177, i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %call25) #8, !dbg !982
  %31 = load i32, i32* %status, align 4, !dbg !984
  store i32 %31, i32* %retval, align 4, !dbg !984
  br label %return, !dbg !984

if.end26:                                         ; preds = %if.end19
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !985
  %region27 = bitcast %union.acpi_operand_object* %32 to %struct.acpi_object_region*, !dbg !987
  %flags28 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region27, i32 0, i32 4, !dbg !988
  %33 = load i8, i8* %flags28, align 4, !dbg !988
  %conv29 = zext i8 %33 to i32, !dbg !985
  %and30 = and i32 %conv29, 32, !dbg !989
  %tobool31 = icmp ne i32 %and30, 0, !dbg !989
  br i1 %tobool31, label %if.end43, label %if.then32, !dbg !990

if.then32:                                        ; preds = %if.end26
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !991
  %region33 = bitcast %union.acpi_operand_object* %34 to %struct.acpi_object_region*, !dbg !993
  %flags34 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region33, i32 0, i32 4, !dbg !994
  %35 = load i8, i8* %flags34, align 4, !dbg !995
  %conv35 = zext i8 %35 to i32, !dbg !995
  %or = or i32 %conv35, 32, !dbg !995
  %conv36 = trunc i32 %or to i8, !dbg !995
  store i8 %conv36, i8* %flags34, align 4, !dbg !995
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj2, align 8, !dbg !996
  %extra = bitcast %union.acpi_operand_object* %36 to %struct.acpi_object_extra*, !dbg !998
  %region_context37 = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra, i32 0, i32 7, !dbg !999
  %37 = load i8*, i8** %region_context37, align 8, !dbg !999
  %tobool38 = icmp ne i8* %37, null, !dbg !1000
  br i1 %tobool38, label %if.end42, label %if.then39, !dbg !1001

if.then39:                                        ; preds = %if.then32
  %38 = load i8*, i8** %region_context, align 8, !dbg !1002
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj2, align 8, !dbg !1004
  %extra40 = bitcast %union.acpi_operand_object* %39 to %struct.acpi_object_extra*, !dbg !1005
  %region_context41 = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra40, i32 0, i32 7, !dbg !1006
  store i8* %38, i8** %region_context41, align 8, !dbg !1007
  br label %if.end42, !dbg !1008

if.end42:                                         ; preds = %if.then39, %if.then32
  br label %if.end43, !dbg !1009

if.end43:                                         ; preds = %if.end42, %if.end26
  br label %if.end44, !dbg !1010

if.end44:                                         ; preds = %if.end43, %if.end8
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_desc, align 8, !dbg !1011
  %address_space45 = bitcast %union.acpi_operand_object* %40 to %struct.acpi_object_addr_handler*, !dbg !1012
  %handler46 = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space45, i32 0, i32 7, !dbg !1013
  %41 = load i32 (i32, i64, i32, i64*, i8*, i8*)*, i32 (i32, i64, i32, i64*, i8*, i8*)** %handler46, align 8, !dbg !1013
  store i32 (i32, i64, i32, i64*, i8*, i8*)* %41, i32 (i32, i64, i32, i64*, i8*, i8*)** %handler, align 8, !dbg !1014
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1015
  %region47 = bitcast %union.acpi_operand_object* %42 to %struct.acpi_object_region*, !dbg !1016
  %address48 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region47, i32 0, i32 9, !dbg !1017
  %43 = load i64, i64* %address48, align 8, !dbg !1017
  %44 = load i32, i32* %region_offset.addr, align 4, !dbg !1018
  %conv49 = zext i32 %44 to i64, !dbg !1018
  %add = add i64 %43, %conv49, !dbg !1019
  store i64 %add, i64* %address, align 8, !dbg !1020
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1021
  %region50 = bitcast %union.acpi_operand_object* %45 to %struct.acpi_object_region*, !dbg !1023
  %space_id51 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region50, i32 0, i32 5, !dbg !1024
  %46 = load i8, i8* %space_id51, align 1, !dbg !1024
  %conv52 = zext i8 %46 to i32, !dbg !1021
  %cmp = icmp eq i32 %conv52, 9, !dbg !1025
  br i1 %cmp, label %land.lhs.true, label %if.end61, !dbg !1026

land.lhs.true:                                    ; preds = %if.end44
  %47 = load %struct.acpi_connection_info*, %struct.acpi_connection_info** %context, align 8, !dbg !1027
  %tobool54 = icmp ne %struct.acpi_connection_info* %47, null, !dbg !1027
  br i1 %tobool54, label %land.lhs.true55, label %if.end61, !dbg !1028

land.lhs.true55:                                  ; preds = %land.lhs.true
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %field_obj.addr, align 8, !dbg !1029
  %tobool56 = icmp ne %union.acpi_operand_object* %48, null, !dbg !1029
  br i1 %tobool56, label %if.then57, label %if.end61, !dbg !1030

if.then57:                                        ; preds = %land.lhs.true55
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %field_obj.addr, align 8, !dbg !1031
  %field = bitcast %union.acpi_operand_object* %49 to %struct.acpi_object_region_field*, !dbg !1033
  %resource_buffer = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field, i32 0, i32 16, !dbg !1034
  %50 = load i8*, i8** %resource_buffer, align 8, !dbg !1034
  %51 = load %struct.acpi_connection_info*, %struct.acpi_connection_info** %context, align 8, !dbg !1035
  %connection = getelementptr inbounds %struct.acpi_connection_info, %struct.acpi_connection_info* %51, i32 0, i32 0, !dbg !1036
  store i8* %50, i8** %connection, align 8, !dbg !1037
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %field_obj.addr, align 8, !dbg !1038
  %field58 = bitcast %union.acpi_operand_object* %52 to %struct.acpi_object_region_field*, !dbg !1039
  %resource_length = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field58, i32 0, i32 14, !dbg !1040
  %53 = load i16, i16* %resource_length, align 2, !dbg !1040
  %54 = load %struct.acpi_connection_info*, %struct.acpi_connection_info** %context, align 8, !dbg !1041
  %length = getelementptr inbounds %struct.acpi_connection_info, %struct.acpi_connection_info* %54, i32 0, i32 1, !dbg !1042
  store i16 %53, i16* %length, align 8, !dbg !1043
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %field_obj.addr, align 8, !dbg !1044
  %field59 = bitcast %union.acpi_operand_object* %55 to %struct.acpi_object_region_field*, !dbg !1045
  %access_length = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field59, i32 0, i32 13, !dbg !1046
  %56 = load i8, i8* %access_length, align 1, !dbg !1046
  %57 = load %struct.acpi_connection_info*, %struct.acpi_connection_info** %context, align 8, !dbg !1047
  %access_length60 = getelementptr inbounds %struct.acpi_connection_info, %struct.acpi_connection_info* %57, i32 0, i32 2, !dbg !1048
  store i8 %56, i8* %access_length60, align 2, !dbg !1049
  br label %if.end61, !dbg !1050

if.end61:                                         ; preds = %if.then57, %land.lhs.true55, %land.lhs.true, %if.end44
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1051
  %region62 = bitcast %union.acpi_operand_object* %58 to %struct.acpi_object_region*, !dbg !1053
  %space_id63 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region62, i32 0, i32 5, !dbg !1054
  %59 = load i8, i8* %space_id63, align 1, !dbg !1054
  %conv64 = zext i8 %59 to i32, !dbg !1051
  %cmp65 = icmp eq i32 %conv64, 8, !dbg !1055
  br i1 %cmp65, label %land.lhs.true67, label %if.end84, !dbg !1056

land.lhs.true67:                                  ; preds = %if.end61
  %60 = load %struct.acpi_connection_info*, %struct.acpi_connection_info** %context, align 8, !dbg !1057
  %tobool68 = icmp ne %struct.acpi_connection_info* %60, null, !dbg !1057
  br i1 %tobool68, label %land.lhs.true69, label %if.end84, !dbg !1058

land.lhs.true69:                                  ; preds = %land.lhs.true67
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %field_obj.addr, align 8, !dbg !1059
  %tobool70 = icmp ne %union.acpi_operand_object* %61, null, !dbg !1059
  br i1 %tobool70, label %if.then71, label %if.end84, !dbg !1060

if.then71:                                        ; preds = %land.lhs.true69
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %field_obj.addr, align 8, !dbg !1061
  %field72 = bitcast %union.acpi_operand_object* %62 to %struct.acpi_object_region_field*, !dbg !1063
  %resource_buffer73 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field72, i32 0, i32 16, !dbg !1064
  %63 = load i8*, i8** %resource_buffer73, align 8, !dbg !1064
  %64 = load %struct.acpi_connection_info*, %struct.acpi_connection_info** %context, align 8, !dbg !1065
  %connection74 = getelementptr inbounds %struct.acpi_connection_info, %struct.acpi_connection_info* %64, i32 0, i32 0, !dbg !1066
  store i8* %63, i8** %connection74, align 8, !dbg !1067
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %field_obj.addr, align 8, !dbg !1068
  %field75 = bitcast %union.acpi_operand_object* %65 to %struct.acpi_object_region_field*, !dbg !1069
  %resource_length76 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field75, i32 0, i32 14, !dbg !1070
  %66 = load i16, i16* %resource_length76, align 2, !dbg !1070
  %67 = load %struct.acpi_connection_info*, %struct.acpi_connection_info** %context, align 8, !dbg !1071
  %length77 = getelementptr inbounds %struct.acpi_connection_info, %struct.acpi_connection_info* %67, i32 0, i32 1, !dbg !1072
  store i16 %66, i16* %length77, align 8, !dbg !1073
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %field_obj.addr, align 8, !dbg !1074
  %field78 = bitcast %union.acpi_operand_object* %68 to %struct.acpi_object_region_field*, !dbg !1075
  %access_length79 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field78, i32 0, i32 13, !dbg !1076
  %69 = load i8, i8* %access_length79, align 1, !dbg !1076
  %70 = load %struct.acpi_connection_info*, %struct.acpi_connection_info** %context, align 8, !dbg !1077
  %access_length80 = getelementptr inbounds %struct.acpi_connection_info, %struct.acpi_connection_info* %70, i32 0, i32 2, !dbg !1078
  store i8 %69, i8* %access_length80, align 2, !dbg !1079
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %field_obj.addr, align 8, !dbg !1080
  %field81 = bitcast %union.acpi_operand_object* %71 to %struct.acpi_object_region_field*, !dbg !1081
  %pin_number_index = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field81, i32 0, i32 17, !dbg !1082
  %72 = load i16, i16* %pin_number_index, align 8, !dbg !1082
  %conv82 = zext i16 %72 to i64, !dbg !1080
  store i64 %conv82, i64* %address, align 8, !dbg !1083
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %field_obj.addr, align 8, !dbg !1084
  %field83 = bitcast %union.acpi_operand_object* %73 to %struct.acpi_object_region_field*, !dbg !1085
  %bit_length = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field83, i32 0, i32 9, !dbg !1086
  %74 = load i32, i32* %bit_length, align 8, !dbg !1086
  store i32 %74, i32* %bit_width.addr, align 4, !dbg !1087
  br label %if.end84, !dbg !1088

if.end84:                                         ; preds = %if.then71, %land.lhs.true69, %land.lhs.true67, %if.end61
  %75 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_desc, align 8, !dbg !1089
  %address_space85 = bitcast %union.acpi_operand_object* %75 to %struct.acpi_object_addr_handler*, !dbg !1091
  %handler_flags = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space85, i32 0, i32 6, !dbg !1092
  %76 = load i8, i8* %handler_flags, align 2, !dbg !1092
  %conv86 = zext i8 %76 to i32, !dbg !1089
  %and87 = and i32 %conv86, 1, !dbg !1093
  %tobool88 = icmp ne i32 %and87, 0, !dbg !1093
  br i1 %tobool88, label %if.end90, label %if.then89, !dbg !1094

if.then89:                                        ; preds = %if.end84
  call void @acpi_ex_exit_interpreter() #8, !dbg !1095
  br label %if.end90, !dbg !1097

if.end90:                                         ; preds = %if.then89, %if.end84
  %77 = load i32 (i32, i64, i32, i64*, i8*, i8*)*, i32 (i32, i64, i32, i64*, i8*, i8*)** %handler, align 8, !dbg !1098
  %78 = load i32, i32* %function.addr, align 4, !dbg !1099
  %79 = load i64, i64* %address, align 8, !dbg !1100
  %80 = load i32, i32* %bit_width.addr, align 4, !dbg !1101
  %81 = load i64*, i64** %value.addr, align 8, !dbg !1102
  %82 = load %struct.acpi_connection_info*, %struct.acpi_connection_info** %context, align 8, !dbg !1103
  %83 = bitcast %struct.acpi_connection_info* %82 to i8*, !dbg !1103
  %84 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj2, align 8, !dbg !1104
  %extra91 = bitcast %union.acpi_operand_object* %84 to %struct.acpi_object_extra*, !dbg !1105
  %region_context92 = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra91, i32 0, i32 7, !dbg !1106
  %85 = load i8*, i8** %region_context92, align 8, !dbg !1106
  %call93 = call i32 %77(i32 %78, i64 %79, i32 %80, i64* %81, i8* %83, i8* %85) #8, !dbg !1098
  store i32 %call93, i32* %status, align 4, !dbg !1107
  %86 = load i32, i32* %status, align 4, !dbg !1108
  %tobool94 = icmp ne i32 %86, 0, !dbg !1108
  br i1 %tobool94, label %if.then95, label %if.end109, !dbg !1110

if.then95:                                        ; preds = %if.end90
  %87 = load i32, i32* %status, align 4, !dbg !1111
  %88 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1111
  %region96 = bitcast %union.acpi_operand_object* %88 to %struct.acpi_object_region*, !dbg !1111
  %space_id97 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region96, i32 0, i32 5, !dbg !1111
  %89 = load i8, i8* %space_id97, align 1, !dbg !1111
  %call98 = call i8* @acpi_ut_get_region_name(i8 zeroext %89) #8, !dbg !1111
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 264, i32 %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %call98) #8, !dbg !1111
  %90 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1113
  %region99 = bitcast %union.acpi_operand_object* %90 to %struct.acpi_object_region*, !dbg !1115
  %space_id100 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region99, i32 0, i32 5, !dbg !1116
  %91 = load i8, i8* %space_id100, align 1, !dbg !1116
  %conv101 = zext i8 %91 to i32, !dbg !1113
  %cmp102 = icmp eq i32 %conv101, 3, !dbg !1117
  br i1 %cmp102, label %land.lhs.true104, label %if.end108, !dbg !1118

land.lhs.true104:                                 ; preds = %if.then95
  %92 = load i32, i32* %status, align 4, !dbg !1119
  %cmp105 = icmp eq i32 %92, 17, !dbg !1120
  br i1 %cmp105, label %if.then107, label %if.end108, !dbg !1121

if.then107:                                       ; preds = %land.lhs.true104
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 274, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !1122
  br label %if.end108, !dbg !1124

if.end108:                                        ; preds = %if.then107, %land.lhs.true104, %if.then95
  br label %if.end109, !dbg !1125

if.end109:                                        ; preds = %if.end108, %if.end90
  %93 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_desc, align 8, !dbg !1126
  %address_space110 = bitcast %union.acpi_operand_object* %93 to %struct.acpi_object_addr_handler*, !dbg !1128
  %handler_flags111 = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space110, i32 0, i32 6, !dbg !1129
  %94 = load i8, i8* %handler_flags111, align 2, !dbg !1129
  %conv112 = zext i8 %94 to i32, !dbg !1126
  %and113 = and i32 %conv112, 1, !dbg !1130
  %tobool114 = icmp ne i32 %and113, 0, !dbg !1130
  br i1 %tobool114, label %if.end116, label %if.then115, !dbg !1131

if.then115:                                       ; preds = %if.end109
  call void @acpi_ex_enter_interpreter() #8, !dbg !1132
  br label %if.end116, !dbg !1134

if.end116:                                        ; preds = %if.then115, %if.end109
  %95 = load i32, i32* %status, align 4, !dbg !1135
  store i32 %95, i32* %retval, align 4, !dbg !1135
  br label %return, !dbg !1135

return:                                           ; preds = %if.end116, %if.then22, %if.then15, %if.then3, %if.then
  %96 = load i32, i32* %retval, align 4, !dbg !1136
  ret i32 %96, !dbg !1136
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_node_name(i8*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_region_name(i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_exit_interpreter() #2

; Function Attrs: noredzone
declare dso_local void @acpi_ex_enter_interpreter() #2

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ev_detach_region(%union.acpi_operand_object* %region_obj, i8 zeroext %acpi_ns_is_locked) #0 !dbg !1137 {
entry:
  %region_obj.addr = alloca %union.acpi_operand_object*, align 8
  %acpi_ns_is_locked.addr = alloca i8, align 1
  %handler_obj = alloca %union.acpi_operand_object*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %start_desc = alloca %union.acpi_operand_object*, align 8
  %last_obj_ptr = alloca %union.acpi_operand_object**, align 8
  %region_setup = alloca i32 (i8*, i32, i8*, i8**)*, align 8
  %region_context = alloca i8**, align 8
  %region_obj2 = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object* %region_obj, %union.acpi_operand_object** %region_obj.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %region_obj.addr, metadata !1140, metadata !DIExpression()), !dbg !1141
  store i8 %acpi_ns_is_locked, i8* %acpi_ns_is_locked.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %acpi_ns_is_locked.addr, metadata !1142, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %handler_obj, metadata !1144, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1146, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %start_desc, metadata !1148, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %last_obj_ptr, metadata !1150, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.declare(metadata i32 (i8*, i32, i8*, i8**)** %region_setup, metadata !1152, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.declare(metadata i8*** %region_context, metadata !1154, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %region_obj2, metadata !1156, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1158, metadata !DIExpression()), !dbg !1159
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1160
  %call = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %0) #8, !dbg !1161
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %region_obj2, align 8, !dbg !1162
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj2, align 8, !dbg !1163
  %tobool = icmp ne %union.acpi_operand_object* %1, null, !dbg !1163
  br i1 %tobool, label %if.end, label %if.then, !dbg !1165

if.then:                                          ; preds = %entry
  br label %return, !dbg !1166

if.end:                                           ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj2, align 8, !dbg !1168
  %extra = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_extra*, !dbg !1169
  %region_context1 = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra, i32 0, i32 7, !dbg !1170
  store i8** %region_context1, i8*** %region_context, align 8, !dbg !1171
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1172
  %region = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_region*, !dbg !1173
  %handler = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 7, !dbg !1174
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler, align 8, !dbg !1174
  store %union.acpi_operand_object* %4, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1175
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1176
  %tobool2 = icmp ne %union.acpi_operand_object* %5, null, !dbg !1176
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1178

if.then3:                                         ; preds = %if.end
  br label %return, !dbg !1179

if.end4:                                          ; preds = %if.end
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1181
  %address_space = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_addr_handler*, !dbg !1182
  %region_list = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space, i32 0, i32 11, !dbg !1183
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_list, align 8, !dbg !1183
  store %union.acpi_operand_object* %7, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1184
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1185
  store %union.acpi_operand_object* %8, %union.acpi_operand_object** %start_desc, align 8, !dbg !1186
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1187
  %address_space5 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_addr_handler*, !dbg !1188
  %region_list6 = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space5, i32 0, i32 11, !dbg !1189
  store %union.acpi_operand_object** %region_list6, %union.acpi_operand_object*** %last_obj_ptr, align 8, !dbg !1190
  br label %while.cond, !dbg !1191

while.cond:                                       ; preds = %if.end63, %if.end4
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1192
  %tobool7 = icmp ne %union.acpi_operand_object* %10, null, !dbg !1191
  br i1 %tobool7, label %while.body, label %while.end, !dbg !1191

while.body:                                       ; preds = %while.cond
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1193
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1196
  %cmp = icmp eq %union.acpi_operand_object* %11, %12, !dbg !1197
  br i1 %cmp, label %if.then8, label %if.end55, !dbg !1198

if.then8:                                         ; preds = %while.body
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1199
  %region9 = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_region*, !dbg !1201
  %next = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region9, i32 0, i32 8, !dbg !1202
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next, align 8, !dbg !1202
  %15 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %last_obj_ptr, align 8, !dbg !1203
  store %union.acpi_operand_object* %14, %union.acpi_operand_object** %15, align 8, !dbg !1204
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1205
  %region10 = bitcast %union.acpi_operand_object* %16 to %struct.acpi_object_region*, !dbg !1206
  %next11 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region10, i32 0, i32 8, !dbg !1207
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %next11, align 8, !dbg !1208
  %17 = load i8, i8* %acpi_ns_is_locked.addr, align 1, !dbg !1209
  %tobool12 = icmp ne i8 %17, 0, !dbg !1209
  br i1 %tobool12, label %if.then13, label %if.end18, !dbg !1211

if.then13:                                        ; preds = %if.then8
  %call14 = call i32 @acpi_ut_release_mutex(i32 1) #8, !dbg !1212
  store i32 %call14, i32* %status, align 4, !dbg !1214
  %18 = load i32, i32* %status, align 4, !dbg !1215
  %tobool15 = icmp ne i32 %18, 0, !dbg !1215
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !1217

if.then16:                                        ; preds = %if.then13
  br label %return, !dbg !1218

if.end17:                                         ; preds = %if.then13
  br label %if.end18, !dbg !1220

if.end18:                                         ; preds = %if.end17, %if.then8
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1221
  %call19 = call i32 @acpi_ev_execute_reg_method(%union.acpi_operand_object* %19, i32 0) #8, !dbg !1222
  store i32 %call19, i32* %status, align 4, !dbg !1223
  %20 = load i32, i32* %status, align 4, !dbg !1224
  %tobool20 = icmp ne i32 %20, 0, !dbg !1224
  br i1 %tobool20, label %if.then21, label %if.end24, !dbg !1226

if.then21:                                        ; preds = %if.end18
  %21 = load i32, i32* %status, align 4, !dbg !1227
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1227
  %region22 = bitcast %union.acpi_operand_object* %22 to %struct.acpi_object_region*, !dbg !1227
  %space_id = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region22, i32 0, i32 5, !dbg !1227
  %23 = load i8, i8* %space_id, align 1, !dbg !1227
  %call23 = call i8* @acpi_ut_get_region_name(i8 zeroext %23) #8, !dbg !1227
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 370, i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %call23) #8, !dbg !1227
  br label %if.end24, !dbg !1229

if.end24:                                         ; preds = %if.then21, %if.end18
  %24 = load i8, i8* %acpi_ns_is_locked.addr, align 1, !dbg !1230
  %tobool25 = icmp ne i8 %24, 0, !dbg !1230
  br i1 %tobool25, label %if.then26, label %if.end31, !dbg !1232

if.then26:                                        ; preds = %if.end24
  %call27 = call i32 @acpi_ut_acquire_mutex(i32 1) #8, !dbg !1233
  store i32 %call27, i32* %status, align 4, !dbg !1235
  %25 = load i32, i32* %status, align 4, !dbg !1236
  %tobool28 = icmp ne i32 %25, 0, !dbg !1236
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !1238

if.then29:                                        ; preds = %if.then26
  br label %return, !dbg !1239

if.end30:                                         ; preds = %if.then26
  br label %if.end31, !dbg !1241

if.end31:                                         ; preds = %if.end30, %if.end24
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1242
  %region32 = bitcast %union.acpi_operand_object* %26 to %struct.acpi_object_region*, !dbg !1244
  %flags = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region32, i32 0, i32 4, !dbg !1245
  %27 = load i8, i8* %flags, align 4, !dbg !1245
  %conv = zext i8 %27 to i32, !dbg !1242
  %and = and i32 %conv, 32, !dbg !1246
  %tobool33 = icmp ne i32 %and, 0, !dbg !1246
  br i1 %tobool33, label %if.then34, label %if.end52, !dbg !1247

if.then34:                                        ; preds = %if.end31
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1248
  %address_space35 = bitcast %union.acpi_operand_object* %28 to %struct.acpi_object_addr_handler*, !dbg !1250
  %setup = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space35, i32 0, i32 10, !dbg !1251
  %29 = load i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)** %setup, align 8, !dbg !1251
  store i32 (i8*, i32, i8*, i8**)* %29, i32 (i8*, i32, i8*, i8**)** %region_setup, align 8, !dbg !1252
  %30 = load i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)** %region_setup, align 8, !dbg !1253
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1254
  %32 = bitcast %union.acpi_operand_object* %31 to i8*, !dbg !1254
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1255
  %address_space36 = bitcast %union.acpi_operand_object* %33 to %struct.acpi_object_addr_handler*, !dbg !1256
  %context = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space36, i32 0, i32 9, !dbg !1257
  %34 = load i8*, i8** %context, align 8, !dbg !1257
  %35 = load i8**, i8*** %region_context, align 8, !dbg !1258
  %call37 = call i32 %30(i8* %32, i32 1, i8* %34, i8** %35) #8, !dbg !1253
  store i32 %call37, i32* %status, align 4, !dbg !1259
  %36 = load i8**, i8*** %region_context, align 8, !dbg !1260
  %tobool38 = icmp ne i8** %36, null, !dbg !1260
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !1262

if.then39:                                        ; preds = %if.then34
  %37 = load i8**, i8*** %region_context, align 8, !dbg !1263
  store i8* null, i8** %37, align 8, !dbg !1265
  br label %if.end40, !dbg !1266

if.end40:                                         ; preds = %if.then39, %if.then34
  %38 = load i32, i32* %status, align 4, !dbg !1267
  %tobool41 = icmp ne i32 %38, 0, !dbg !1267
  br i1 %tobool41, label %if.then42, label %if.end46, !dbg !1269

if.then42:                                        ; preds = %if.end40
  %39 = load i32, i32* %status, align 4, !dbg !1270
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1270
  %region43 = bitcast %union.acpi_operand_object* %40 to %struct.acpi_object_region*, !dbg !1270
  %space_id44 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region43, i32 0, i32 5, !dbg !1270
  %41 = load i8, i8* %space_id44, align 1, !dbg !1270
  %call45 = call i8* @acpi_ut_get_region_name(i8 zeroext %41) #8, !dbg !1270
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 407, i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %call45) #8, !dbg !1270
  br label %if.end46, !dbg !1272

if.end46:                                         ; preds = %if.then42, %if.end40
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1273
  %region47 = bitcast %union.acpi_operand_object* %42 to %struct.acpi_object_region*, !dbg !1274
  %flags48 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region47, i32 0, i32 4, !dbg !1275
  %43 = load i8, i8* %flags48, align 4, !dbg !1276
  %conv49 = zext i8 %43 to i32, !dbg !1276
  %and50 = and i32 %conv49, -33, !dbg !1276
  %conv51 = trunc i32 %and50 to i8, !dbg !1276
  store i8 %conv51, i8* %flags48, align 4, !dbg !1276
  br label %if.end52, !dbg !1277

if.end52:                                         ; preds = %if.end46, %if.end31
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1278
  %region53 = bitcast %union.acpi_operand_object* %44 to %struct.acpi_object_region*, !dbg !1279
  %handler54 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region53, i32 0, i32 7, !dbg !1280
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %handler54, align 8, !dbg !1281
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1282
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %45) #8, !dbg !1283
  br label %return, !dbg !1284

if.end55:                                         ; preds = %while.body
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1285
  %region56 = bitcast %union.acpi_operand_object* %46 to %struct.acpi_object_region*, !dbg !1286
  %next57 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region56, i32 0, i32 8, !dbg !1287
  store %union.acpi_operand_object** %next57, %union.acpi_operand_object*** %last_obj_ptr, align 8, !dbg !1288
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1289
  %region58 = bitcast %union.acpi_operand_object* %47 to %struct.acpi_object_region*, !dbg !1290
  %next59 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region58, i32 0, i32 8, !dbg !1291
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next59, align 8, !dbg !1291
  store %union.acpi_operand_object* %48, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1292
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1293
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %start_desc, align 8, !dbg !1295
  %cmp60 = icmp eq %union.acpi_operand_object* %49, %50, !dbg !1296
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !1297

if.then62:                                        ; preds = %if.end55
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1298
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 441, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), %union.acpi_operand_object* %51) #8, !dbg !1298
  br label %return, !dbg !1300

if.end63:                                         ; preds = %if.end55
  br label %while.cond, !dbg !1191, !llvm.loop !1301

while.end:                                        ; preds = %while.cond
  br label %return, !dbg !1303

return:                                           ; preds = %while.end, %if.then62, %if.end52, %if.then29, %if.then16, %if.then3, %if.then
  ret void, !dbg !1304
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_execute_reg_method(%union.acpi_operand_object* %region_obj, i32 %function) #0 !dbg !1305 {
entry:
  %retval = alloca i32, align 4
  %region_obj.addr = alloca %union.acpi_operand_object*, align 8
  %function.addr = alloca i32, align 4
  %info = alloca %struct.acpi_evaluate_info*, align 8
  %args = alloca [3 x %union.acpi_operand_object*], align 16
  %region_obj2 = alloca %union.acpi_operand_object*, align 8
  %reg_name_ptr = alloca i32*, align 8
  %method_node = alloca %struct.acpi_namespace_node*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object* %region_obj, %union.acpi_operand_object** %region_obj.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %region_obj.addr, metadata !1308, metadata !DIExpression()), !dbg !1309
  store i32 %function, i32* %function.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %function.addr, metadata !1310, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info, metadata !1312, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.declare(metadata [3 x %union.acpi_operand_object*]* %args, metadata !1379, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %region_obj2, metadata !1382, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.declare(metadata i32** %reg_name_ptr, metadata !1384, metadata !DIExpression()), !dbg !1387
  store i32* bitcast ([5 x i8]* @.str.8 to i32*), i32** %reg_name_ptr, align 8, !dbg !1387
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %method_node, metadata !1388, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1390, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1392, metadata !DIExpression()), !dbg !1393
  %0 = load i8, i8* @acpi_gbl_namespace_initialized, align 1, !dbg !1394
  %tobool = icmp ne i8 %0, 0, !dbg !1394
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1396

lor.lhs.false:                                    ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1397
  %region = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_region*, !dbg !1398
  %handler = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 7, !dbg !1399
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler, align 8, !dbg !1399
  %cmp = icmp eq %union.acpi_operand_object* %2, null, !dbg !1400
  br i1 %cmp, label %if.then, label %if.end, !dbg !1401

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !1402
  br label %return, !dbg !1402

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1404
  %call = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %3) #8, !dbg !1405
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %region_obj2, align 8, !dbg !1406
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj2, align 8, !dbg !1407
  %tobool1 = icmp ne %union.acpi_operand_object* %4, null, !dbg !1407
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1409

if.then2:                                         ; preds = %if.end
  store i32 6, i32* %retval, align 4, !dbg !1410
  br label %return, !dbg !1410

if.end3:                                          ; preds = %if.end
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1412
  %region4 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_region*, !dbg !1413
  %node5 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region4, i32 0, i32 6, !dbg !1414
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node5, align 8, !dbg !1414
  %parent = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %6, i32 0, i32 5, !dbg !1415
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent, align 8, !dbg !1415
  store %struct.acpi_namespace_node* %7, %struct.acpi_namespace_node** %node, align 8, !dbg !1416
  %8 = load i32*, i32** %reg_name_ptr, align 8, !dbg !1417
  %9 = load i32, i32* %8, align 4, !dbg !1418
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1419
  %call6 = call i32 @acpi_ns_search_one_scope(i32 %9, %struct.acpi_namespace_node* %10, i32 8, %struct.acpi_namespace_node** %method_node) #8, !dbg !1420
  store i32 %call6, i32* %status, align 4, !dbg !1421
  %11 = load i32, i32* %status, align 4, !dbg !1422
  %tobool7 = icmp ne i32 %11, 0, !dbg !1422
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !1424

if.then8:                                         ; preds = %if.end3
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node, align 8, !dbg !1425
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj2, align 8, !dbg !1427
  %extra = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_extra*, !dbg !1428
  %method_REG = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra, i32 0, i32 5, !dbg !1429
  store %struct.acpi_namespace_node* %12, %struct.acpi_namespace_node** %method_REG, align 8, !dbg !1430
  br label %if.end9, !dbg !1431

if.end9:                                          ; preds = %if.then8, %if.end3
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj2, align 8, !dbg !1432
  %extra10 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_extra*, !dbg !1434
  %method_REG11 = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra10, i32 0, i32 5, !dbg !1435
  %15 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_REG11, align 8, !dbg !1435
  %cmp12 = icmp eq %struct.acpi_namespace_node* %15, null, !dbg !1436
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1437

if.then13:                                        ; preds = %if.end9
  store i32 0, i32* %retval, align 4, !dbg !1438
  br label %return, !dbg !1438

if.end14:                                         ; preds = %if.end9
  %16 = load i32, i32* %function.addr, align 4, !dbg !1440
  %cmp15 = icmp eq i32 %16, 1, !dbg !1442
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false17, !dbg !1443

land.lhs.true:                                    ; preds = %if.end14
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1444
  %common = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_common*, !dbg !1445
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 4, !dbg !1446
  %18 = load i8, i8* %flags, align 4, !dbg !1446
  %conv = zext i8 %18 to i32, !dbg !1444
  %and = and i32 %conv, 16, !dbg !1447
  %tobool16 = icmp ne i32 %and, 0, !dbg !1447
  br i1 %tobool16, label %if.then26, label %lor.lhs.false17, !dbg !1448

lor.lhs.false17:                                  ; preds = %land.lhs.true, %if.end14
  %19 = load i32, i32* %function.addr, align 4, !dbg !1449
  %cmp18 = icmp eq i32 %19, 0, !dbg !1450
  br i1 %cmp18, label %land.lhs.true20, label %if.end27, !dbg !1451

land.lhs.true20:                                  ; preds = %lor.lhs.false17
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1452
  %common21 = bitcast %union.acpi_operand_object* %20 to %struct.acpi_object_common*, !dbg !1453
  %flags22 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common21, i32 0, i32 4, !dbg !1454
  %21 = load i8, i8* %flags22, align 4, !dbg !1454
  %conv23 = zext i8 %21 to i32, !dbg !1452
  %and24 = and i32 %conv23, 16, !dbg !1455
  %tobool25 = icmp ne i32 %and24, 0, !dbg !1455
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !1456

if.then26:                                        ; preds = %land.lhs.true20, %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !1457
  br label %return, !dbg !1457

if.end27:                                         ; preds = %land.lhs.true20, %lor.lhs.false17
  %call28 = call i8* @acpi_os_allocate_zeroed(i64 88) #8, !dbg !1459
  %22 = bitcast i8* %call28 to %struct.acpi_evaluate_info*, !dbg !1459
  store %struct.acpi_evaluate_info* %22, %struct.acpi_evaluate_info** %info, align 8, !dbg !1460
  %23 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1461
  %tobool29 = icmp ne %struct.acpi_evaluate_info* %23, null, !dbg !1461
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !1463

if.then30:                                        ; preds = %if.end27
  store i32 4, i32* %retval, align 4, !dbg !1464
  br label %return, !dbg !1464

if.end31:                                         ; preds = %if.end27
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj2, align 8, !dbg !1466
  %extra32 = bitcast %union.acpi_operand_object* %24 to %struct.acpi_object_extra*, !dbg !1467
  %method_REG33 = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra32, i32 0, i32 5, !dbg !1468
  %25 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_REG33, align 8, !dbg !1468
  %26 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1469
  %prefix_node = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %26, i32 0, i32 0, !dbg !1470
  store %struct.acpi_namespace_node* %25, %struct.acpi_namespace_node** %prefix_node, align 8, !dbg !1471
  %27 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1472
  %relative_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %27, i32 0, i32 1, !dbg !1473
  store i8* null, i8** %relative_pathname, align 8, !dbg !1474
  %arraydecay = getelementptr inbounds [3 x %union.acpi_operand_object*], [3 x %union.acpi_operand_object*]* %args, i64 0, i64 0, !dbg !1475
  %28 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1476
  %parameters = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %28, i32 0, i32 2, !dbg !1477
  store %union.acpi_operand_object** %arraydecay, %union.acpi_operand_object*** %parameters, align 8, !dbg !1478
  %29 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1479
  %flags34 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %29, i32 0, i32 15, !dbg !1480
  store i8 1, i8* %flags34, align 2, !dbg !1481
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1482
  %region35 = bitcast %union.acpi_operand_object* %30 to %struct.acpi_object_region*, !dbg !1483
  %space_id = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region35, i32 0, i32 5, !dbg !1484
  %31 = load i8, i8* %space_id, align 1, !dbg !1484
  %conv36 = zext i8 %31 to i64, !dbg !1485
  %call37 = call %union.acpi_operand_object* @acpi_ut_create_integer_object(i64 %conv36) #8, !dbg !1486
  %arrayidx = getelementptr [3 x %union.acpi_operand_object*], [3 x %union.acpi_operand_object*]* %args, i64 0, i64 0, !dbg !1487
  store %union.acpi_operand_object* %call37, %union.acpi_operand_object** %arrayidx, align 16, !dbg !1488
  %arrayidx38 = getelementptr [3 x %union.acpi_operand_object*], [3 x %union.acpi_operand_object*]* %args, i64 0, i64 0, !dbg !1489
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx38, align 16, !dbg !1489
  %tobool39 = icmp ne %union.acpi_operand_object* %32, null, !dbg !1489
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !1491

if.then40:                                        ; preds = %if.end31
  store i32 4, i32* %status, align 4, !dbg !1492
  br label %cleanup1, !dbg !1494

if.end41:                                         ; preds = %if.end31
  %33 = load i32, i32* %function.addr, align 4, !dbg !1495
  %conv42 = zext i32 %33 to i64, !dbg !1496
  %call43 = call %union.acpi_operand_object* @acpi_ut_create_integer_object(i64 %conv42) #8, !dbg !1497
  %arrayidx44 = getelementptr [3 x %union.acpi_operand_object*], [3 x %union.acpi_operand_object*]* %args, i64 0, i64 1, !dbg !1498
  store %union.acpi_operand_object* %call43, %union.acpi_operand_object** %arrayidx44, align 8, !dbg !1499
  %arrayidx45 = getelementptr [3 x %union.acpi_operand_object*], [3 x %union.acpi_operand_object*]* %args, i64 0, i64 1, !dbg !1500
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx45, align 8, !dbg !1500
  %tobool46 = icmp ne %union.acpi_operand_object* %34, null, !dbg !1500
  br i1 %tobool46, label %if.end48, label %if.then47, !dbg !1502

if.then47:                                        ; preds = %if.end41
  store i32 4, i32* %status, align 4, !dbg !1503
  br label %cleanup2, !dbg !1505

if.end48:                                         ; preds = %if.end41
  %arrayidx49 = getelementptr [3 x %union.acpi_operand_object*], [3 x %union.acpi_operand_object*]* %args, i64 0, i64 2, !dbg !1506
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %arrayidx49, align 16, !dbg !1507
  %35 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1508
  %call50 = call i32 @acpi_ns_evaluate(%struct.acpi_evaluate_info* %35) #8, !dbg !1509
  store i32 %call50, i32* %status, align 4, !dbg !1510
  %arrayidx51 = getelementptr [3 x %union.acpi_operand_object*], [3 x %union.acpi_operand_object*]* %args, i64 0, i64 1, !dbg !1511
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx51, align 8, !dbg !1511
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %36) #8, !dbg !1512
  %37 = load i32, i32* %status, align 4, !dbg !1513
  %tobool52 = icmp ne i32 %37, 0, !dbg !1513
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !1515

if.then53:                                        ; preds = %if.end48
  br label %cleanup2, !dbg !1516

if.end54:                                         ; preds = %if.end48
  %38 = load i32, i32* %function.addr, align 4, !dbg !1518
  %cmp55 = icmp eq i32 %38, 1, !dbg !1520
  br i1 %cmp55, label %if.then57, label %if.else, !dbg !1521

if.then57:                                        ; preds = %if.end54
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1522
  %common58 = bitcast %union.acpi_operand_object* %39 to %struct.acpi_object_common*, !dbg !1524
  %flags59 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common58, i32 0, i32 4, !dbg !1525
  %40 = load i8, i8* %flags59, align 4, !dbg !1526
  %conv60 = zext i8 %40 to i32, !dbg !1526
  %or = or i32 %conv60, 16, !dbg !1526
  %conv61 = trunc i32 %or to i8, !dbg !1526
  store i8 %conv61, i8* %flags59, align 4, !dbg !1526
  br label %if.end67, !dbg !1527

if.else:                                          ; preds = %if.end54
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1528
  %common62 = bitcast %union.acpi_operand_object* %41 to %struct.acpi_object_common*, !dbg !1530
  %flags63 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common62, i32 0, i32 4, !dbg !1531
  %42 = load i8, i8* %flags63, align 4, !dbg !1532
  %conv64 = zext i8 %42 to i32, !dbg !1532
  %and65 = and i32 %conv64, -17, !dbg !1532
  %conv66 = trunc i32 %and65 to i8, !dbg !1532
  store i8 %conv66, i8* %flags63, align 4, !dbg !1532
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then57
  br label %cleanup2, !dbg !1533

cleanup2:                                         ; preds = %if.end67, %if.then53, %if.then47
  call void @llvm.dbg.label(metadata !1534), !dbg !1535
  %arrayidx68 = getelementptr [3 x %union.acpi_operand_object*], [3 x %union.acpi_operand_object*]* %args, i64 0, i64 0, !dbg !1536
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx68, align 16, !dbg !1536
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %43) #8, !dbg !1537
  br label %cleanup1, !dbg !1537

cleanup1:                                         ; preds = %cleanup2, %if.then40
  call void @llvm.dbg.label(metadata !1538), !dbg !1539
  %44 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1540
  %45 = bitcast %struct.acpi_evaluate_info* %44 to i8*, !dbg !1540
  call void @acpi_os_free(i8* %45) #8, !dbg !1540
  %46 = load i32, i32* %status, align 4, !dbg !1541
  store i32 %46, i32* %retval, align 4, !dbg !1541
  br label %return, !dbg !1541

return:                                           ; preds = %cleanup1, %if.then30, %if.then26, %if.then13, %if.then2, %if.then
  %47 = load i32, i32* %retval, align 4, !dbg !1542
  ret i32 %47, !dbg !1542
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_attach_region(%union.acpi_operand_object* %handler_obj, %union.acpi_operand_object* %region_obj, i8 zeroext %acpi_ns_is_locked) #0 !dbg !1543 {
entry:
  %retval = alloca i32, align 4
  %handler_obj.addr = alloca %union.acpi_operand_object*, align 8
  %region_obj.addr = alloca %union.acpi_operand_object*, align 8
  %acpi_ns_is_locked.addr = alloca i8, align 1
  store %union.acpi_operand_object* %handler_obj, %union.acpi_operand_object** %handler_obj.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %handler_obj.addr, metadata !1546, metadata !DIExpression()), !dbg !1547
  store %union.acpi_operand_object* %region_obj, %union.acpi_operand_object** %region_obj.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %region_obj.addr, metadata !1548, metadata !DIExpression()), !dbg !1549
  store i8 %acpi_ns_is_locked, i8* %acpi_ns_is_locked.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %acpi_ns_is_locked.addr, metadata !1550, metadata !DIExpression()), !dbg !1551
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1552
  %region = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_region*, !dbg !1554
  %handler = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 7, !dbg !1555
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler, align 8, !dbg !1555
  %tobool = icmp ne %union.acpi_operand_object* %1, null, !dbg !1552
  br i1 %tobool, label %if.then, label %if.end, !dbg !1556

if.then:                                          ; preds = %entry
  store i32 7, i32* %retval, align 4, !dbg !1557
  br label %return, !dbg !1557

if.end:                                           ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj.addr, align 8, !dbg !1559
  %address_space = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_addr_handler*, !dbg !1560
  %region_list = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space, i32 0, i32 11, !dbg !1561
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_list, align 8, !dbg !1561
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1562
  %region1 = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_region*, !dbg !1563
  %next = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region1, i32 0, i32 8, !dbg !1564
  store %union.acpi_operand_object* %3, %union.acpi_operand_object** %next, align 8, !dbg !1565
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1566
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj.addr, align 8, !dbg !1567
  %address_space2 = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_addr_handler*, !dbg !1568
  %region_list3 = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space2, i32 0, i32 11, !dbg !1569
  store %union.acpi_operand_object* %5, %union.acpi_operand_object** %region_list3, align 8, !dbg !1570
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj.addr, align 8, !dbg !1571
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj.addr, align 8, !dbg !1572
  %region4 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_region*, !dbg !1573
  %handler5 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region4, i32 0, i32 7, !dbg !1574
  store %union.acpi_operand_object* %7, %union.acpi_operand_object** %handler5, align 8, !dbg !1575
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj.addr, align 8, !dbg !1576
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %9) #8, !dbg !1577
  store i32 0, i32* %retval, align 4, !dbg !1578
  br label %return, !dbg !1578

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !1579
  ret i32 %10, !dbg !1579
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_add_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_search_one_scope(i32, %struct.acpi_namespace_node*, i32, %struct.acpi_namespace_node**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !1580 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1584, metadata !DIExpression()), !dbg !1590
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1594, metadata !DIExpression()), !dbg !1595
  %0 = load i64, i64* %size.addr, align 8, !dbg !1596
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1597, metadata !DIExpression()), !dbg !1598
  br label %do.body, !dbg !1598

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1599, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1603, metadata !DIExpression()), !dbg !1602
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1602
  %conv = zext i1 %cmp to i32, !dbg !1602
  store i32 1, i32* %tmp, align 4, !dbg !1602
  %1 = load i32, i32* %tmp, align 4, !dbg !1602
  %call = call i64 @arch_local_save_flags() #8, !dbg !1604
  store i64 %call, i64* %_flags, align 8, !dbg !1604
  br label %do.end, !dbg !1604

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1605, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1608, metadata !DIExpression()), !dbg !1607
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1607
  %conv6 = zext i1 %cmp5 to i32, !dbg !1607
  store i32 1, i32* %tmp7, align 4, !dbg !1607
  %2 = load i32, i32* %tmp7, align 4, !dbg !1607
  %3 = load i64, i64* %_flags, align 8, !dbg !1609
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1610
  %and.i = and i64 %4, 512, !dbg !1611
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1612
  %lnot.i = xor i1 %tobool.i, true, !dbg !1612
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1612
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1609
  %5 = load i32, i32* %tmp8, align 4, !dbg !1609
  store i32 %5, i32* %tmp1, align 4, !dbg !1604
  %6 = load i32, i32* %tmp1, align 4, !dbg !1598
  %tobool = icmp ne i32 %6, 0, !dbg !1613
  %7 = zext i1 %tobool to i64, !dbg !1613
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1613
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #8, !dbg !1614
  ret i8* %call10, !dbg !1615
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_integer_object(i64) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_evaluate(%struct.acpi_evaluate_info*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1616 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1619, metadata !DIExpression()), !dbg !1620
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1621
  call void @kfree(i8* %0) #8, !dbg !1622
  ret void, !dbg !1623
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_walk_namespace(i32, i8*, i32, i32, i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)*, i8*, i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ev_reg_run(i8* %obj_handle, i32 %level, i8* %context, i8** %return_value) #0 !dbg !1624 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca i8*, align 8
  %level.addr = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %return_value.addr = alloca i8**, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  %info = alloca %struct.acpi_reg_walk_info*, align 8
  store i8* %obj_handle, i8** %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %obj_handle.addr, metadata !1625, metadata !DIExpression()), !dbg !1626
  store i32 %level, i32* %level.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %level.addr, metadata !1627, metadata !DIExpression()), !dbg !1628
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1629, metadata !DIExpression()), !dbg !1630
  store i8** %return_value, i8*** %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %return_value.addr, metadata !1631, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1633, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1635, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1637, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.declare(metadata %struct.acpi_reg_walk_info** %info, metadata !1639, metadata !DIExpression()), !dbg !1640
  %0 = load i8*, i8** %context.addr, align 8, !dbg !1641
  %1 = bitcast i8* %0 to %struct.acpi_reg_walk_info*, !dbg !1641
  store %struct.acpi_reg_walk_info* %1, %struct.acpi_reg_walk_info** %info, align 8, !dbg !1642
  %2 = load i8*, i8** %obj_handle.addr, align 8, !dbg !1643
  %call = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8* %2) #8, !dbg !1644
  store %struct.acpi_namespace_node* %call, %struct.acpi_namespace_node** %node, align 8, !dbg !1645
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1646
  %tobool = icmp ne %struct.acpi_namespace_node* %3, null, !dbg !1646
  br i1 %tobool, label %if.end, label %if.then, !dbg !1648

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !1649
  br label %return, !dbg !1649

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1651
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %4, i32 0, i32 2, !dbg !1653
  %5 = load i8, i8* %type, align 1, !dbg !1653
  %conv = zext i8 %5 to i32, !dbg !1651
  %cmp = icmp ne i32 %conv, 10, !dbg !1654
  br i1 %cmp, label %land.lhs.true, label %if.end5, !dbg !1655

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1656
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !1657
  %cmp2 = icmp ne %struct.acpi_namespace_node* %6, %7, !dbg !1658
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !1659

if.then4:                                         ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !1660
  br label %return, !dbg !1660

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1662
  %call6 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %8) #8, !dbg !1663
  store %union.acpi_operand_object* %call6, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1664
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1665
  %tobool7 = icmp ne %union.acpi_operand_object* %9, null, !dbg !1665
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !1667

if.then8:                                         ; preds = %if.end5
  store i32 0, i32* %retval, align 4, !dbg !1668
  br label %return, !dbg !1668

if.end9:                                          ; preds = %if.end5
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1670
  %region = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_region*, !dbg !1672
  %space_id = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 5, !dbg !1673
  %11 = load i8, i8* %space_id, align 1, !dbg !1673
  %conv10 = zext i8 %11 to i32, !dbg !1670
  %12 = load %struct.acpi_reg_walk_info*, %struct.acpi_reg_walk_info** %info, align 8, !dbg !1674
  %space_id11 = getelementptr inbounds %struct.acpi_reg_walk_info, %struct.acpi_reg_walk_info* %12, i32 0, i32 2, !dbg !1675
  %13 = load i8, i8* %space_id11, align 4, !dbg !1675
  %conv12 = zext i8 %13 to i32, !dbg !1674
  %cmp13 = icmp ne i32 %conv10, %conv12, !dbg !1676
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !1677

if.then15:                                        ; preds = %if.end9
  store i32 0, i32* %retval, align 4, !dbg !1678
  br label %return, !dbg !1678

if.end16:                                         ; preds = %if.end9
  %14 = load %struct.acpi_reg_walk_info*, %struct.acpi_reg_walk_info** %info, align 8, !dbg !1680
  %reg_run_count = getelementptr inbounds %struct.acpi_reg_walk_info, %struct.acpi_reg_walk_info* %14, i32 0, i32 1, !dbg !1681
  %15 = load i32, i32* %reg_run_count, align 4, !dbg !1682
  %inc = add i32 %15, 1, !dbg !1682
  store i32 %inc, i32* %reg_run_count, align 4, !dbg !1682
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1683
  %17 = load %struct.acpi_reg_walk_info*, %struct.acpi_reg_walk_info** %info, align 8, !dbg !1684
  %function = getelementptr inbounds %struct.acpi_reg_walk_info, %struct.acpi_reg_walk_info* %17, i32 0, i32 0, !dbg !1685
  %18 = load i32, i32* %function, align 4, !dbg !1685
  %call17 = call i32 @acpi_ev_execute_reg_method(%union.acpi_operand_object* %16, i32 %18) #8, !dbg !1686
  store i32 %call17, i32* %status, align 4, !dbg !1687
  %19 = load i32, i32* %status, align 4, !dbg !1688
  store i32 %19, i32* %retval, align 4, !dbg !1689
  br label %return, !dbg !1689

return:                                           ; preds = %if.end16, %if.then15, %if.then8, %if.then4, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !1690
  ret i32 %20, !dbg !1690
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_ev_orphan_ec_reg_method(%struct.acpi_namespace_node* %ec_device_node) #0 !dbg !1691 {
entry:
  %ec_device_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %reg_method = alloca i8*, align 8
  %next_node = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  %args = alloca %struct.acpi_object_list, align 8
  %objects = alloca [2 x %union.acpi_object], align 16
  store %struct.acpi_namespace_node* %ec_device_node, %struct.acpi_namespace_node** %ec_device_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %ec_device_node.addr, metadata !1694, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.declare(metadata i8** %reg_method, metadata !1696, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %next_node, metadata !1698, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1700, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.declare(metadata %struct.acpi_object_list* %args, metadata !1702, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.declare(metadata [2 x %union.acpi_object]* %objects, metadata !1755, metadata !DIExpression()), !dbg !1757
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %ec_device_node.addr, align 8, !dbg !1758
  %tobool = icmp ne %struct.acpi_namespace_node* %0, null, !dbg !1758
  br i1 %tobool, label %if.end, label %if.then, !dbg !1760

if.then:                                          ; preds = %entry
  br label %return, !dbg !1761

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_release_mutex(i32 1) #8, !dbg !1763
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %ec_device_node.addr, align 8, !dbg !1764
  %2 = bitcast %struct.acpi_namespace_node* %1 to i8*, !dbg !1764
  %call1 = call i32 @acpi_get_handle(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %reg_method) #8, !dbg !1765
  store i32 %call1, i32* %status, align 4, !dbg !1766
  %3 = load i32, i32* %status, align 4, !dbg !1767
  %tobool2 = icmp ne i32 %3, 0, !dbg !1767
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1769

if.then3:                                         ; preds = %if.end
  br label %exit, !dbg !1770

if.end4:                                          ; preds = %if.end
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %ec_device_node.addr, align 8, !dbg !1772
  %call5 = call %struct.acpi_namespace_node* @acpi_ns_get_next_node(%struct.acpi_namespace_node* %4, %struct.acpi_namespace_node* null) #8, !dbg !1773
  store %struct.acpi_namespace_node* %call5, %struct.acpi_namespace_node** %next_node, align 8, !dbg !1774
  br label %while.cond, !dbg !1775

while.cond:                                       ; preds = %if.end15, %if.end4
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %next_node, align 8, !dbg !1776
  %tobool6 = icmp ne %struct.acpi_namespace_node* %5, null, !dbg !1775
  br i1 %tobool6, label %while.body, label %while.end, !dbg !1775

while.body:                                       ; preds = %while.cond
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %next_node, align 8, !dbg !1777
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %6, i32 0, i32 2, !dbg !1780
  %7 = load i8, i8* %type, align 1, !dbg !1780
  %conv = zext i8 %7 to i32, !dbg !1777
  %cmp = icmp eq i32 %conv, 10, !dbg !1781
  br i1 %cmp, label %land.lhs.true, label %if.end15, !dbg !1782

land.lhs.true:                                    ; preds = %while.body
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %next_node, align 8, !dbg !1783
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %8, i32 0, i32 0, !dbg !1784
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1784
  %tobool8 = icmp ne %union.acpi_operand_object* %9, null, !dbg !1785
  br i1 %tobool8, label %land.lhs.true9, label %if.end15, !dbg !1786

land.lhs.true9:                                   ; preds = %land.lhs.true
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %next_node, align 8, !dbg !1787
  %object10 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %10, i32 0, i32 0, !dbg !1788
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object10, align 8, !dbg !1788
  %region = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_region*, !dbg !1789
  %space_id = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 5, !dbg !1790
  %12 = load i8, i8* %space_id, align 1, !dbg !1790
  %conv11 = zext i8 %12 to i32, !dbg !1787
  %cmp12 = icmp eq i32 %conv11, 3, !dbg !1791
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !1792

if.then14:                                        ; preds = %land.lhs.true9
  br label %exit, !dbg !1793

if.end15:                                         ; preds = %land.lhs.true9, %land.lhs.true, %while.body
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %ec_device_node.addr, align 8, !dbg !1795
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %next_node, align 8, !dbg !1796
  %call16 = call %struct.acpi_namespace_node* @acpi_ns_get_next_node(%struct.acpi_namespace_node* %13, %struct.acpi_namespace_node* %14) #8, !dbg !1797
  store %struct.acpi_namespace_node* %call16, %struct.acpi_namespace_node** %next_node, align 8, !dbg !1798
  br label %while.cond, !dbg !1775, !llvm.loop !1799

while.end:                                        ; preds = %while.cond
  %count = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %args, i32 0, i32 0, !dbg !1801
  store i32 2, i32* %count, align 8, !dbg !1802
  %arraydecay = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %objects, i64 0, i64 0, !dbg !1803
  %pointer = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %args, i32 0, i32 1, !dbg !1804
  store %union.acpi_object* %arraydecay, %union.acpi_object** %pointer, align 8, !dbg !1805
  %arrayidx = getelementptr [2 x %union.acpi_object], [2 x %union.acpi_object]* %objects, i64 0, i64 0, !dbg !1806
  %type17 = bitcast %union.acpi_object* %arrayidx to i32*, !dbg !1807
  store i32 1, i32* %type17, align 16, !dbg !1808
  %arrayidx18 = getelementptr [2 x %union.acpi_object], [2 x %union.acpi_object]* %objects, i64 0, i64 0, !dbg !1809
  %integer = bitcast %union.acpi_object* %arrayidx18 to %struct.anon.38*, !dbg !1810
  %value = getelementptr inbounds %struct.anon.38, %struct.anon.38* %integer, i32 0, i32 1, !dbg !1811
  store i64 3, i64* %value, align 8, !dbg !1812
  %arrayidx19 = getelementptr [2 x %union.acpi_object], [2 x %union.acpi_object]* %objects, i64 0, i64 1, !dbg !1813
  %type20 = bitcast %union.acpi_object* %arrayidx19 to i32*, !dbg !1814
  store i32 1, i32* %type20, align 8, !dbg !1815
  %arrayidx21 = getelementptr [2 x %union.acpi_object], [2 x %union.acpi_object]* %objects, i64 0, i64 1, !dbg !1816
  %integer22 = bitcast %union.acpi_object* %arrayidx21 to %struct.anon.38*, !dbg !1817
  %value23 = getelementptr inbounds %struct.anon.38, %struct.anon.38* %integer22, i32 0, i32 1, !dbg !1818
  store i64 1, i64* %value23, align 8, !dbg !1819
  %15 = load i8*, i8** %reg_method, align 8, !dbg !1820
  %call24 = call i32 @acpi_evaluate_object(i8* %15, i8* null, %struct.acpi_object_list* %args, %struct.acpi_buffer* null) #8, !dbg !1821
  br label %exit, !dbg !1822

exit:                                             ; preds = %while.end, %if.then14, %if.then3
  call void @llvm.dbg.label(metadata !1823), !dbg !1824
  %call25 = call i32 @acpi_ut_acquire_mutex(i32 1) #8, !dbg !1825
  br label %return, !dbg !1826

return:                                           ; preds = %exit, %if.then
  ret void, !dbg !1827
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1828 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1835, metadata !DIExpression()), !dbg !1842
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1848, metadata !DIExpression()), !dbg !1849
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1850, metadata !DIExpression()), !dbg !1851
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1852, metadata !DIExpression()), !dbg !1853
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1854, metadata !DIExpression()), !dbg !1858
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1860, metadata !DIExpression()), !dbg !1864
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1866, metadata !DIExpression()), !dbg !1870
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1875, metadata !DIExpression()), !dbg !1876
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1877, metadata !DIExpression()), !dbg !1878
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1879, metadata !DIExpression()), !dbg !1880
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1881, metadata !DIExpression()), !dbg !1882
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1883, metadata !DIExpression()), !dbg !1884
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1885, metadata !DIExpression()), !dbg !1886
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1887, metadata !DIExpression()), !dbg !1888
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1889, metadata !DIExpression()), !dbg !1890
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1891, metadata !DIExpression()), !dbg !1892
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1893, metadata !DIExpression()), !dbg !1894
  %0 = load i64, i64* %size.addr, align 8, !dbg !1895
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1896
  %or = or i32 %1, 256, !dbg !1897
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1898
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !1899
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1900

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1901
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1902
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1903

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1904
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1905
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1906
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !1907
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1884
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1908
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1909
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1910
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1911
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1912
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1913
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !1914
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1914
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1914
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1914
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !1914
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1915
  br label %kmalloc.exit, !dbg !1915

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1916
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1917
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1917
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1919

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1920
  br label %kmalloc_index.exit.i, !dbg !1920

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1921
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1923
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1924

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1925
  br label %kmalloc_index.exit.i, !dbg !1925

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1926
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1928
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1929

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1930
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1931
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1932

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1933
  br label %kmalloc_index.exit.i, !dbg !1933

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1934
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1936
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1937

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1938
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1939
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1940

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1941
  br label %kmalloc_index.exit.i, !dbg !1941

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1942
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1944
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1945

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1946
  br label %kmalloc_index.exit.i, !dbg !1946

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1947
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1949
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1950

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1951
  br label %kmalloc_index.exit.i, !dbg !1951

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1952
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1954
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1955

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1956
  br label %kmalloc_index.exit.i, !dbg !1956

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1957
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1959
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1960

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1961
  br label %kmalloc_index.exit.i, !dbg !1961

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1962
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1964
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1965

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1966
  br label %kmalloc_index.exit.i, !dbg !1966

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1967
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1969
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1970

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1971
  br label %kmalloc_index.exit.i, !dbg !1971

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1972
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1974
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1975

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1976
  br label %kmalloc_index.exit.i, !dbg !1976

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1977
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1979
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1980

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1981
  br label %kmalloc_index.exit.i, !dbg !1981

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1982
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1984
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1985

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1986
  br label %kmalloc_index.exit.i, !dbg !1986

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1987
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1989
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1990

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1991
  br label %kmalloc_index.exit.i, !dbg !1991

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1992
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1994
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1995

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1996
  br label %kmalloc_index.exit.i, !dbg !1996

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1997
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1999
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2000

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2001
  br label %kmalloc_index.exit.i, !dbg !2001

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2002
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2004
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2005

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2006
  br label %kmalloc_index.exit.i, !dbg !2006

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2007
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2009
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2010

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2011
  br label %kmalloc_index.exit.i, !dbg !2011

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2012
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2014
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2015

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2016
  br label %kmalloc_index.exit.i, !dbg !2016

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2017
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2019
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2020

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2021
  br label %kmalloc_index.exit.i, !dbg !2021

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2022
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2024
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2025

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2026
  br label %kmalloc_index.exit.i, !dbg !2026

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2027
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2029
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2030

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2031
  br label %kmalloc_index.exit.i, !dbg !2031

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2032
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2034
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2035

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2036
  br label %kmalloc_index.exit.i, !dbg !2036

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2037
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2039
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2040

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2041
  br label %kmalloc_index.exit.i, !dbg !2041

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2042
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2044
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2045

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2046
  br label %kmalloc_index.exit.i, !dbg !2046

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2047
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2049
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2050

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2051
  br label %kmalloc_index.exit.i, !dbg !2051

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2052
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2054
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2055

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2056
  br label %kmalloc_index.exit.i, !dbg !2056

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2057
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2059
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2060

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2061
  br label %kmalloc_index.exit.i, !dbg !2061

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !2062, !srcloc !2065
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #7, !dbg !2066, !srcloc !2069
  unreachable, !dbg !2070

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2071
  store i32 %45, i32* %index.i, align 4, !dbg !2072
  %46 = load i32, i32* %index.i, align 4, !dbg !2073
  %tobool.i = icmp ne i32 %46, 0, !dbg !2073
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2075

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2076
  br label %kmalloc.exit, !dbg !2076

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2077
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2078
  %and.i.i = and i32 %48, 17, !dbg !2078
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2078
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2078
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2078
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2078
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2080

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2081
  br label %kmalloc_type.exit.i, !dbg !2081

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2082
  %and2.i.i = and i32 %49, 1, !dbg !2083
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2082
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2082
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2082
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2084
  br label %kmalloc_type.exit.i, !dbg !2084

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2085
  %idxprom.i = zext i32 %51 to i64, !dbg !2086
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2086
  %52 = load i32, i32* %index.i, align 4, !dbg !2087
  %idxprom6.i = zext i32 %52 to i64, !dbg !2086
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2086
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2086
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2088
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2089
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2090
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2091
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !2092
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2092
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2092
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2092
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !2092
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1853
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2093
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2094
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2095
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2096
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !2097
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2098
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2099
  store i8* %62, i8** %retval.i, align 8, !dbg !2100
  br label %kmalloc.exit, !dbg !2100

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2101
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2102
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !2103
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2103
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2103
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2103
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !2103
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2104
  br label %kmalloc.exit, !dbg !2104

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2105
  ret i8* %65, !dbg !2106
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !2107 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !2111, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2114, metadata !DIExpression()), !dbg !2113
  %0 = load i64, i64* %__edi, align 8, !dbg !2113
  store i64 %0, i64* %__edi, align 8, !dbg !2113
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2115, metadata !DIExpression()), !dbg !2113
  %1 = load i64, i64* %__esi, align 8, !dbg !2113
  store i64 %1, i64* %__esi, align 8, !dbg !2113
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2116, metadata !DIExpression()), !dbg !2113
  %2 = load i64, i64* %__edx, align 8, !dbg !2113
  store i64 %2, i64* %__edx, align 8, !dbg !2113
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2117, metadata !DIExpression()), !dbg !2113
  %3 = load i64, i64* %__ecx, align 8, !dbg !2113
  store i64 %3, i64* %__ecx, align 8, !dbg !2113
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2118, metadata !DIExpression()), !dbg !2113
  %4 = load i64, i64* %__eax, align 8, !dbg !2113
  store i64 %4, i64* %__eax, align 8, !dbg !2113
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !2113
  %6 = call i64 @llvm.read_register.i64(metadata !47), !dbg !2119
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !2119, !srcloc !2122
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !2119
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !2119
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2119
  call void @llvm.write_register.i64(metadata !47, i64 %asmresult1), !dbg !2119
  %8 = load i64, i64* %__eax, align 8, !dbg !2119
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !2123, metadata !DIExpression()), !dbg !2125
  store i64 -1, i64* %__mask, align 8, !dbg !2125
  %9 = load i64, i64* %__mask, align 8, !dbg !2125
  store i64 %9, i64* %tmp, align 8, !dbg !2125
  %10 = load i64, i64* %tmp, align 8, !dbg !2125
  %and = and i64 %8, %10, !dbg !2119
  store i64 %and, i64* %__ret, align 8, !dbg !2119
  %11 = load i64, i64* %__ret, align 8, !dbg !2113
  store i64 %11, i64* %tmp2, align 8, !dbg !2126
  %12 = load i64, i64* %tmp2, align 8, !dbg !2113
  ret i64 %12, !dbg !2127
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !2128 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2130, metadata !DIExpression()), !dbg !2135
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2137, metadata !DIExpression()), !dbg !2138
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2139, metadata !DIExpression()), !dbg !2140
  %0 = load i64, i64* %size.addr, align 8, !dbg !2141
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2143
  br i1 %1, label %if.then, label %if.end447, !dbg !2144

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2145
  %tobool = icmp ne i64 %2, 0, !dbg !2145
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2148

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !2149
  br label %return, !dbg !2149

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !2150
  %cmp = icmp ult i64 %3, 4096, !dbg !2152
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2153

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2154
  br label %return, !dbg !2154

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub = sub i64 %4, 1, !dbg !2155
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2155
  br i1 %5, label %cond.true, label %cond.false442, !dbg !2155

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub4 = sub i64 %6, 1, !dbg !2155
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !2155
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !2155

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub6 = sub i64 %8, 1, !dbg !2155
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !2155
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !2155

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !2155

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub9 = sub i64 %9, 1, !dbg !2155
  %and = and i64 %sub9, -9223372036854775808, !dbg !2155
  %tobool10 = icmp ne i64 %and, 0, !dbg !2155
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !2155

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !2155

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub13 = sub i64 %10, 1, !dbg !2155
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !2155
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2155
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2155

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !2155

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub18 = sub i64 %11, 1, !dbg !2155
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !2155
  %tobool20 = icmp ne i64 %and19, 0, !dbg !2155
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2155

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !2155

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub23 = sub i64 %12, 1, !dbg !2155
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !2155
  %tobool25 = icmp ne i64 %and24, 0, !dbg !2155
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !2155

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !2155

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub28 = sub i64 %13, 1, !dbg !2155
  %and29 = and i64 %sub28, 576460752303423488, !dbg !2155
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2155
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !2155

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !2155

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub33 = sub i64 %14, 1, !dbg !2155
  %and34 = and i64 %sub33, 288230376151711744, !dbg !2155
  %tobool35 = icmp ne i64 %and34, 0, !dbg !2155
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !2155

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !2155

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub38 = sub i64 %15, 1, !dbg !2155
  %and39 = and i64 %sub38, 144115188075855872, !dbg !2155
  %tobool40 = icmp ne i64 %and39, 0, !dbg !2155
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2155

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !2155

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub43 = sub i64 %16, 1, !dbg !2155
  %and44 = and i64 %sub43, 72057594037927936, !dbg !2155
  %tobool45 = icmp ne i64 %and44, 0, !dbg !2155
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !2155

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !2155

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub48 = sub i64 %17, 1, !dbg !2155
  %and49 = and i64 %sub48, 36028797018963968, !dbg !2155
  %tobool50 = icmp ne i64 %and49, 0, !dbg !2155
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !2155

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !2155

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub53 = sub i64 %18, 1, !dbg !2155
  %and54 = and i64 %sub53, 18014398509481984, !dbg !2155
  %tobool55 = icmp ne i64 %and54, 0, !dbg !2155
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !2155

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !2155

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub58 = sub i64 %19, 1, !dbg !2155
  %and59 = and i64 %sub58, 9007199254740992, !dbg !2155
  %tobool60 = icmp ne i64 %and59, 0, !dbg !2155
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2155

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !2155

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub63 = sub i64 %20, 1, !dbg !2155
  %and64 = and i64 %sub63, 4503599627370496, !dbg !2155
  %tobool65 = icmp ne i64 %and64, 0, !dbg !2155
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !2155

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !2155

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub68 = sub i64 %21, 1, !dbg !2155
  %and69 = and i64 %sub68, 2251799813685248, !dbg !2155
  %tobool70 = icmp ne i64 %and69, 0, !dbg !2155
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !2155

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !2155

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub73 = sub i64 %22, 1, !dbg !2155
  %and74 = and i64 %sub73, 1125899906842624, !dbg !2155
  %tobool75 = icmp ne i64 %and74, 0, !dbg !2155
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !2155

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !2155

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub78 = sub i64 %23, 1, !dbg !2155
  %and79 = and i64 %sub78, 562949953421312, !dbg !2155
  %tobool80 = icmp ne i64 %and79, 0, !dbg !2155
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !2155

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !2155

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub83 = sub i64 %24, 1, !dbg !2155
  %and84 = and i64 %sub83, 281474976710656, !dbg !2155
  %tobool85 = icmp ne i64 %and84, 0, !dbg !2155
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !2155

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !2155

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub88 = sub i64 %25, 1, !dbg !2155
  %and89 = and i64 %sub88, 140737488355328, !dbg !2155
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2155
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !2155

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !2155

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub93 = sub i64 %26, 1, !dbg !2155
  %and94 = and i64 %sub93, 70368744177664, !dbg !2155
  %tobool95 = icmp ne i64 %and94, 0, !dbg !2155
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !2155

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !2155

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub98 = sub i64 %27, 1, !dbg !2155
  %and99 = and i64 %sub98, 35184372088832, !dbg !2155
  %tobool100 = icmp ne i64 %and99, 0, !dbg !2155
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !2155

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !2155

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub103 = sub i64 %28, 1, !dbg !2155
  %and104 = and i64 %sub103, 17592186044416, !dbg !2155
  %tobool105 = icmp ne i64 %and104, 0, !dbg !2155
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !2155

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !2155

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub108 = sub i64 %29, 1, !dbg !2155
  %and109 = and i64 %sub108, 8796093022208, !dbg !2155
  %tobool110 = icmp ne i64 %and109, 0, !dbg !2155
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !2155

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !2155

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub113 = sub i64 %30, 1, !dbg !2155
  %and114 = and i64 %sub113, 4398046511104, !dbg !2155
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2155
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !2155

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !2155

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub118 = sub i64 %31, 1, !dbg !2155
  %and119 = and i64 %sub118, 2199023255552, !dbg !2155
  %tobool120 = icmp ne i64 %and119, 0, !dbg !2155
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !2155

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !2155

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub123 = sub i64 %32, 1, !dbg !2155
  %and124 = and i64 %sub123, 1099511627776, !dbg !2155
  %tobool125 = icmp ne i64 %and124, 0, !dbg !2155
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !2155

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !2155

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub128 = sub i64 %33, 1, !dbg !2155
  %and129 = and i64 %sub128, 549755813888, !dbg !2155
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2155
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !2155

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !2155

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub133 = sub i64 %34, 1, !dbg !2155
  %and134 = and i64 %sub133, 274877906944, !dbg !2155
  %tobool135 = icmp ne i64 %and134, 0, !dbg !2155
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !2155

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !2155

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub138 = sub i64 %35, 1, !dbg !2155
  %and139 = and i64 %sub138, 137438953472, !dbg !2155
  %tobool140 = icmp ne i64 %and139, 0, !dbg !2155
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !2155

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !2155

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub143 = sub i64 %36, 1, !dbg !2155
  %and144 = and i64 %sub143, 68719476736, !dbg !2155
  %tobool145 = icmp ne i64 %and144, 0, !dbg !2155
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !2155

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !2155

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub148 = sub i64 %37, 1, !dbg !2155
  %and149 = and i64 %sub148, 34359738368, !dbg !2155
  %tobool150 = icmp ne i64 %and149, 0, !dbg !2155
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !2155

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !2155

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub153 = sub i64 %38, 1, !dbg !2155
  %and154 = and i64 %sub153, 17179869184, !dbg !2155
  %tobool155 = icmp ne i64 %and154, 0, !dbg !2155
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !2155

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !2155

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub158 = sub i64 %39, 1, !dbg !2155
  %and159 = and i64 %sub158, 8589934592, !dbg !2155
  %tobool160 = icmp ne i64 %and159, 0, !dbg !2155
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !2155

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !2155

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub163 = sub i64 %40, 1, !dbg !2155
  %and164 = and i64 %sub163, 4294967296, !dbg !2155
  %tobool165 = icmp ne i64 %and164, 0, !dbg !2155
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !2155

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !2155

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub168 = sub i64 %41, 1, !dbg !2155
  %and169 = and i64 %sub168, 2147483648, !dbg !2155
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2155
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !2155

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !2155

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub173 = sub i64 %42, 1, !dbg !2155
  %and174 = and i64 %sub173, 1073741824, !dbg !2155
  %tobool175 = icmp ne i64 %and174, 0, !dbg !2155
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !2155

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !2155

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub178 = sub i64 %43, 1, !dbg !2155
  %and179 = and i64 %sub178, 536870912, !dbg !2155
  %tobool180 = icmp ne i64 %and179, 0, !dbg !2155
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !2155

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !2155

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub183 = sub i64 %44, 1, !dbg !2155
  %and184 = and i64 %sub183, 268435456, !dbg !2155
  %tobool185 = icmp ne i64 %and184, 0, !dbg !2155
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !2155

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !2155

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub188 = sub i64 %45, 1, !dbg !2155
  %and189 = and i64 %sub188, 134217728, !dbg !2155
  %tobool190 = icmp ne i64 %and189, 0, !dbg !2155
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !2155

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !2155

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub193 = sub i64 %46, 1, !dbg !2155
  %and194 = and i64 %sub193, 67108864, !dbg !2155
  %tobool195 = icmp ne i64 %and194, 0, !dbg !2155
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !2155

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !2155

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub198 = sub i64 %47, 1, !dbg !2155
  %and199 = and i64 %sub198, 33554432, !dbg !2155
  %tobool200 = icmp ne i64 %and199, 0, !dbg !2155
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !2155

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !2155

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub203 = sub i64 %48, 1, !dbg !2155
  %and204 = and i64 %sub203, 16777216, !dbg !2155
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2155
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !2155

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !2155

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub208 = sub i64 %49, 1, !dbg !2155
  %and209 = and i64 %sub208, 8388608, !dbg !2155
  %tobool210 = icmp ne i64 %and209, 0, !dbg !2155
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !2155

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !2155

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub213 = sub i64 %50, 1, !dbg !2155
  %and214 = and i64 %sub213, 4194304, !dbg !2155
  %tobool215 = icmp ne i64 %and214, 0, !dbg !2155
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !2155

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !2155

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub218 = sub i64 %51, 1, !dbg !2155
  %and219 = and i64 %sub218, 2097152, !dbg !2155
  %tobool220 = icmp ne i64 %and219, 0, !dbg !2155
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !2155

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !2155

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub223 = sub i64 %52, 1, !dbg !2155
  %and224 = and i64 %sub223, 1048576, !dbg !2155
  %tobool225 = icmp ne i64 %and224, 0, !dbg !2155
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !2155

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !2155

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub228 = sub i64 %53, 1, !dbg !2155
  %and229 = and i64 %sub228, 524288, !dbg !2155
  %tobool230 = icmp ne i64 %and229, 0, !dbg !2155
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !2155

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !2155

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub233 = sub i64 %54, 1, !dbg !2155
  %and234 = and i64 %sub233, 262144, !dbg !2155
  %tobool235 = icmp ne i64 %and234, 0, !dbg !2155
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !2155

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !2155

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub238 = sub i64 %55, 1, !dbg !2155
  %and239 = and i64 %sub238, 131072, !dbg !2155
  %tobool240 = icmp ne i64 %and239, 0, !dbg !2155
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !2155

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !2155

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub243 = sub i64 %56, 1, !dbg !2155
  %and244 = and i64 %sub243, 65536, !dbg !2155
  %tobool245 = icmp ne i64 %and244, 0, !dbg !2155
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !2155

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !2155

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub248 = sub i64 %57, 1, !dbg !2155
  %and249 = and i64 %sub248, 32768, !dbg !2155
  %tobool250 = icmp ne i64 %and249, 0, !dbg !2155
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !2155

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !2155

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub253 = sub i64 %58, 1, !dbg !2155
  %and254 = and i64 %sub253, 16384, !dbg !2155
  %tobool255 = icmp ne i64 %and254, 0, !dbg !2155
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !2155

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !2155

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub258 = sub i64 %59, 1, !dbg !2155
  %and259 = and i64 %sub258, 8192, !dbg !2155
  %tobool260 = icmp ne i64 %and259, 0, !dbg !2155
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !2155

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !2155

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub263 = sub i64 %60, 1, !dbg !2155
  %and264 = and i64 %sub263, 4096, !dbg !2155
  %tobool265 = icmp ne i64 %and264, 0, !dbg !2155
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !2155

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !2155

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub268 = sub i64 %61, 1, !dbg !2155
  %and269 = and i64 %sub268, 2048, !dbg !2155
  %tobool270 = icmp ne i64 %and269, 0, !dbg !2155
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !2155

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !2155

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub273 = sub i64 %62, 1, !dbg !2155
  %and274 = and i64 %sub273, 1024, !dbg !2155
  %tobool275 = icmp ne i64 %and274, 0, !dbg !2155
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !2155

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !2155

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub278 = sub i64 %63, 1, !dbg !2155
  %and279 = and i64 %sub278, 512, !dbg !2155
  %tobool280 = icmp ne i64 %and279, 0, !dbg !2155
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !2155

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !2155

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub283 = sub i64 %64, 1, !dbg !2155
  %and284 = and i64 %sub283, 256, !dbg !2155
  %tobool285 = icmp ne i64 %and284, 0, !dbg !2155
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !2155

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !2155

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub288 = sub i64 %65, 1, !dbg !2155
  %and289 = and i64 %sub288, 128, !dbg !2155
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2155
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !2155

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !2155

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub293 = sub i64 %66, 1, !dbg !2155
  %and294 = and i64 %sub293, 64, !dbg !2155
  %tobool295 = icmp ne i64 %and294, 0, !dbg !2155
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !2155

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !2155

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub298 = sub i64 %67, 1, !dbg !2155
  %and299 = and i64 %sub298, 32, !dbg !2155
  %tobool300 = icmp ne i64 %and299, 0, !dbg !2155
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !2155

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !2155

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub303 = sub i64 %68, 1, !dbg !2155
  %and304 = and i64 %sub303, 16, !dbg !2155
  %tobool305 = icmp ne i64 %and304, 0, !dbg !2155
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !2155

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !2155

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub308 = sub i64 %69, 1, !dbg !2155
  %and309 = and i64 %sub308, 8, !dbg !2155
  %tobool310 = icmp ne i64 %and309, 0, !dbg !2155
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !2155

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !2155

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub313 = sub i64 %70, 1, !dbg !2155
  %and314 = and i64 %sub313, 4, !dbg !2155
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2155
  %71 = zext i1 %tobool315 to i64, !dbg !2155
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !2155
  br label %cond.end, !dbg !2155

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !2155
  br label %cond.end317, !dbg !2155

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !2155
  br label %cond.end319, !dbg !2155

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !2155
  br label %cond.end321, !dbg !2155

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !2155
  br label %cond.end323, !dbg !2155

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !2155
  br label %cond.end325, !dbg !2155

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !2155
  br label %cond.end327, !dbg !2155

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !2155
  br label %cond.end329, !dbg !2155

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !2155
  br label %cond.end331, !dbg !2155

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !2155
  br label %cond.end333, !dbg !2155

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !2155
  br label %cond.end335, !dbg !2155

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !2155
  br label %cond.end337, !dbg !2155

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !2155
  br label %cond.end339, !dbg !2155

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !2155
  br label %cond.end341, !dbg !2155

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !2155
  br label %cond.end343, !dbg !2155

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !2155
  br label %cond.end345, !dbg !2155

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !2155
  br label %cond.end347, !dbg !2155

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !2155
  br label %cond.end349, !dbg !2155

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !2155
  br label %cond.end351, !dbg !2155

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !2155
  br label %cond.end353, !dbg !2155

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !2155
  br label %cond.end355, !dbg !2155

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !2155
  br label %cond.end357, !dbg !2155

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !2155
  br label %cond.end359, !dbg !2155

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !2155
  br label %cond.end361, !dbg !2155

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !2155
  br label %cond.end363, !dbg !2155

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !2155
  br label %cond.end365, !dbg !2155

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !2155
  br label %cond.end367, !dbg !2155

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !2155
  br label %cond.end369, !dbg !2155

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !2155
  br label %cond.end371, !dbg !2155

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !2155
  br label %cond.end373, !dbg !2155

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !2155
  br label %cond.end375, !dbg !2155

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !2155
  br label %cond.end377, !dbg !2155

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !2155
  br label %cond.end379, !dbg !2155

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !2155
  br label %cond.end381, !dbg !2155

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !2155
  br label %cond.end383, !dbg !2155

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !2155
  br label %cond.end385, !dbg !2155

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !2155
  br label %cond.end387, !dbg !2155

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !2155
  br label %cond.end389, !dbg !2155

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !2155
  br label %cond.end391, !dbg !2155

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !2155
  br label %cond.end393, !dbg !2155

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !2155
  br label %cond.end395, !dbg !2155

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !2155
  br label %cond.end397, !dbg !2155

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !2155
  br label %cond.end399, !dbg !2155

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !2155
  br label %cond.end401, !dbg !2155

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !2155
  br label %cond.end403, !dbg !2155

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !2155
  br label %cond.end405, !dbg !2155

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !2155
  br label %cond.end407, !dbg !2155

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !2155
  br label %cond.end409, !dbg !2155

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !2155
  br label %cond.end411, !dbg !2155

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !2155
  br label %cond.end413, !dbg !2155

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !2155
  br label %cond.end415, !dbg !2155

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !2155
  br label %cond.end417, !dbg !2155

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !2155
  br label %cond.end419, !dbg !2155

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !2155
  br label %cond.end421, !dbg !2155

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !2155
  br label %cond.end423, !dbg !2155

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !2155
  br label %cond.end425, !dbg !2155

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !2155
  br label %cond.end427, !dbg !2155

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !2155
  br label %cond.end429, !dbg !2155

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !2155
  br label %cond.end431, !dbg !2155

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !2155
  br label %cond.end433, !dbg !2155

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !2155
  br label %cond.end435, !dbg !2155

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !2155
  br label %cond.end437, !dbg !2155

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !2155
  br label %cond.end440, !dbg !2155

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !2155

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !2155
  br label %cond.end444, !dbg !2155

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !2155
  %sub443 = sub i64 %72, 1, !dbg !2155
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !2155
  br label %cond.end444, !dbg !2155

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !2155
  %sub446 = sub i32 %cond445, 12, !dbg !2156
  %add = add i32 %sub446, 1, !dbg !2157
  store i32 %add, i32* %retval, align 4, !dbg !2158
  br label %return, !dbg !2158

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !2159
  %dec = add i64 %73, -1, !dbg !2159
  store i64 %dec, i64* %size.addr, align 8, !dbg !2159
  %74 = load i64, i64* %size.addr, align 8, !dbg !2160
  %shr = lshr i64 %74, 12, !dbg !2160
  store i64 %shr, i64* %size.addr, align 8, !dbg !2160
  %75 = load i64, i64* %size.addr, align 8, !dbg !2161
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2138
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2162
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2163
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !2162, !srcloc !2164
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2162
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2165
  %add.i = add i32 %79, 1, !dbg !2166
  store i32 %add.i, i32* %retval, align 4, !dbg !2167
  br label %return, !dbg !2167

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2168
  ret i32 %80, !dbg !2168
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !2169 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2130, metadata !DIExpression()), !dbg !2173
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2137, metadata !DIExpression()), !dbg !2175
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2176, metadata !DIExpression()), !dbg !2177
  %0 = load i64, i64* %n.addr, align 8, !dbg !2178
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2175
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2179
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2180
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !2179, !srcloc !2164
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2179
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2181
  %add.i = add i32 %4, 1, !dbg !2182
  %sub = sub i32 %add.i, 1, !dbg !2183
  ret i32 %sub, !dbg !2184
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !2185 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2191, metadata !DIExpression()), !dbg !2192
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2193, metadata !DIExpression()), !dbg !2194
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2195, metadata !DIExpression()), !dbg !2196
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2197, metadata !DIExpression()), !dbg !2198
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2199
  ret i8* %0, !dbg !2200
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_handle(i8*, i8*, i8**) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_namespace_node* @acpi_ns_get_next_node(%struct.acpi_namespace_node*, %struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_object(i8*, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #2

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
!llvm.named.register.rsp = !{!47}
!llvm.module.flags = !{!48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !42, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !41, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evregion.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !15, !21, !25, !27, !28, !17, !31, !33, !34}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !16, line: 421, baseType: !17)
!16 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !18, line: 21, baseType: !19)
!18 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !20, line: 27, baseType: !7)
!20 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !16, line: 805, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !18, line: 17, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !20, line: 21, baseType: !24)
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_name", file: !16, line: 422, baseType: !17)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !16, line: 127, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !18, line: 23, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !20, line: 31, baseType: !30)
!30 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !32, line: 148, baseType: !7)
!32 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_reg_walk_info", file: !36, line: 397, size: 96, elements: !37)
!36 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!37 = !{!38, !39, !40}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !35, file: !36, line: 398, baseType: !17, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "reg_run_count", scope: !35, file: !36, line: 399, baseType: !17, size: 32, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !35, file: !36, line: 400, baseType: !21, size: 8, offset: 64)
!41 = !{!0}
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 72, elements: !45)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!45 = !{!46}
!46 = !DISubrange(count: 9)
!47 = !{!"rsp"}
!48 = !{i32 7, !"Dwarf Version", i32 4}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"Code Model", i32 2}
!52 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!53 = distinct !DISubprogram(name: "acpi_ev_initialize_op_regions", scope: !3, file: !3, line: 43, type: !54, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !56)
!54 = !DISubroutineType(types: !55)
!55 = !{!15}
!56 = !{}
!57 = !DILocalVariable(name: "status", scope: !53, file: !3, line: 45, type: !15)
!58 = !DILocation(line: 45, column: 14, scope: !53)
!59 = !DILocalVariable(name: "i", scope: !53, file: !3, line: 46, type: !17)
!60 = !DILocation(line: 46, column: 6, scope: !53)
!61 = !DILocation(line: 50, column: 11, scope: !53)
!62 = !DILocation(line: 50, column: 9, scope: !53)
!63 = !DILocation(line: 51, column: 6, scope: !64)
!64 = distinct !DILexicalBlock(scope: !53, file: !3, line: 51, column: 6)
!65 = !DILocation(line: 51, column: 6, scope: !53)
!66 = !DILocation(line: 52, column: 3, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !3, line: 51, column: 28)
!68 = !DILocation(line: 57, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !53, file: !3, line: 57, column: 2)
!70 = !DILocation(line: 57, column: 7, scope: !69)
!71 = !DILocation(line: 57, column: 14, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !3, line: 57, column: 2)
!73 = !DILocation(line: 57, column: 16, scope: !72)
!74 = !DILocation(line: 57, column: 2, scope: !69)
!75 = !DILocation(line: 63, column: 35, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !3, line: 63, column: 7)
!77 = distinct !DILexicalBlock(scope: !72, file: !3, line: 57, column: 48)
!78 = !DILocation(line: 65, column: 8, scope: !76)
!79 = !DILocation(line: 64, column: 7, scope: !76)
!80 = !DILocation(line: 63, column: 7, scope: !76)
!81 = !DILocation(line: 63, column: 7, scope: !77)
!82 = !DILocation(line: 66, column: 32, scope: !83)
!83 = distinct !DILexicalBlock(scope: !76, file: !3, line: 65, column: 13)
!84 = !DILocation(line: 68, column: 12, scope: !83)
!85 = !DILocation(line: 67, column: 11, scope: !83)
!86 = !DILocation(line: 66, column: 4, scope: !83)
!87 = !DILocation(line: 69, column: 3, scope: !83)
!88 = !DILocation(line: 70, column: 2, scope: !77)
!89 = !DILocation(line: 57, column: 44, scope: !72)
!90 = !DILocation(line: 57, column: 2, scope: !72)
!91 = distinct !{!91, !74, !92}
!92 = !DILocation(line: 70, column: 2, scope: !69)
!93 = !DILocation(line: 72, column: 8, scope: !53)
!94 = !DILocation(line: 73, column: 2, scope: !53)
!95 = !DILocation(line: 74, column: 1, scope: !53)
!96 = distinct !DISubprogram(name: "acpi_ev_execute_reg_methods", scope: !3, file: !3, line: 649, type: !97, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !56)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !99, !21, !17}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !36, line: 133, size: 384, elements: !101)
!101 = !{!102, !843, !844, !845, !846, !852, !853, !854, !855}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !100, file: !36, line: 134, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !105, line: 367, size: 576, elements: !106)
!105 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!106 = !{!107, !118, !131, !142, !156, !170, !179, !494, !511, !526, !539, !617, !629, !643, !653, !671, !693, !712, !731, !750, !763, !789, !806, !819, !833, !842}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !104, file: !105, line: 368, baseType: !108, size: 128)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !105, line: 73, size: 128, elements: !109)
!109 = !{!110, !111, !112, !113, !117}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !108, file: !105, line: 74, baseType: !103, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !108, file: !105, line: 74, baseType: !22, size: 8, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !108, file: !105, line: 74, baseType: !22, size: 8, offset: 72)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !108, file: !105, line: 74, baseType: !114, size: 16, offset: 80)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !18, line: 19, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !20, line: 24, baseType: !116)
!116 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !108, file: !105, line: 74, baseType: !22, size: 8, offset: 96)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !104, file: !105, line: 369, baseType: !119, size: 192)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !105, line: 76, size: 192, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !130}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !119, file: !105, line: 77, baseType: !103, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !119, file: !105, line: 77, baseType: !22, size: 8, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !105, line: 77, baseType: !22, size: 8, offset: 72)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !119, file: !105, line: 77, baseType: !114, size: 16, offset: 80)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !105, line: 77, baseType: !22, size: 8, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !119, file: !105, line: 77, baseType: !127, size: 24, offset: 104)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 24, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 3)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !119, file: !105, line: 78, baseType: !28, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !104, file: !105, line: 370, baseType: !132, size: 256)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !105, line: 93, size: 256, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !141}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !132, file: !105, line: 94, baseType: !103, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !132, file: !105, line: 94, baseType: !22, size: 8, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !105, line: 94, baseType: !22, size: 8, offset: 72)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !132, file: !105, line: 94, baseType: !114, size: 16, offset: 80)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !132, file: !105, line: 94, baseType: !22, size: 8, offset: 96)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !132, file: !105, line: 94, baseType: !140, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !132, file: !105, line: 94, baseType: !17, size: 32, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !104, file: !105, line: 371, baseType: !143, size: 384)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !105, line: 97, size: 384, elements: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !152, !153, !154, !155}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !143, file: !105, line: 98, baseType: !103, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !143, file: !105, line: 98, baseType: !22, size: 8, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !105, line: 98, baseType: !22, size: 8, offset: 72)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !143, file: !105, line: 98, baseType: !114, size: 16, offset: 80)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !143, file: !105, line: 98, baseType: !22, size: 8, offset: 96)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !143, file: !105, line: 98, baseType: !151, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !143, file: !105, line: 98, baseType: !17, size: 32, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !143, file: !105, line: 99, baseType: !17, size: 32, offset: 224)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !143, file: !105, line: 100, baseType: !151, size: 64, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !143, file: !105, line: 101, baseType: !99, size: 64, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !104, file: !105, line: 372, baseType: !157, size: 384)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !105, line: 104, size: 384, elements: !158)
!158 = !{!159, !160, !161, !162, !163, !164, !165, !167, !168, !169}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !157, file: !105, line: 105, baseType: !103, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !157, file: !105, line: 105, baseType: !22, size: 8, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !157, file: !105, line: 105, baseType: !22, size: 8, offset: 72)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !157, file: !105, line: 105, baseType: !114, size: 16, offset: 80)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !157, file: !105, line: 105, baseType: !22, size: 8, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !157, file: !105, line: 105, baseType: !99, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !157, file: !105, line: 106, baseType: !166, size: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !157, file: !105, line: 107, baseType: !151, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !157, file: !105, line: 108, baseType: !17, size: 32, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !157, file: !105, line: 109, baseType: !17, size: 32, offset: 352)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !104, file: !105, line: 373, baseType: !171, size: 192)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !105, line: 118, size: 192, elements: !172)
!172 = !{!173, !174, !175, !176, !177, !178}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !171, file: !105, line: 119, baseType: !103, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !171, file: !105, line: 119, baseType: !22, size: 8, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !171, file: !105, line: 119, baseType: !22, size: 8, offset: 72)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !171, file: !105, line: 119, baseType: !114, size: 16, offset: 80)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !171, file: !105, line: 119, baseType: !22, size: 8, offset: 96)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !171, file: !105, line: 119, baseType: !14, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !104, file: !105, line: 374, baseType: !180, size: 448)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !105, line: 143, size: 448, elements: !181)
!181 = !{!182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !491, !492, !493}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !180, file: !105, line: 144, baseType: !103, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !180, file: !105, line: 144, baseType: !22, size: 8, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !180, file: !105, line: 144, baseType: !22, size: 8, offset: 72)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !180, file: !105, line: 144, baseType: !114, size: 16, offset: 80)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !180, file: !105, line: 144, baseType: !22, size: 8, offset: 96)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !180, file: !105, line: 144, baseType: !22, size: 8, offset: 104)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !180, file: !105, line: 145, baseType: !22, size: 8, offset: 112)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !180, file: !105, line: 146, baseType: !22, size: 8, offset: 120)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !180, file: !105, line: 147, baseType: !103, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !180, file: !105, line: 148, baseType: !103, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !180, file: !105, line: 149, baseType: !151, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !180, file: !105, line: 153, baseType: !194, size: 64, offset: 320)
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !180, file: !105, line: 150, size: 64, elements: !195)
!195 = !{!196, !490}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !194, file: !105, line: 151, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !36, line: 248, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!15, !201}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !203, line: 37, size: 9024, elements: !204)
!203 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !438, !439, !440, !441, !442, !446, !448, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !473, !474, !475, !476, !477, !478, !479, !480, !482, !488}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !202, file: !203, line: 38, baseType: !201, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !202, file: !203, line: 39, baseType: !22, size: 8, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !202, file: !203, line: 40, baseType: !22, size: 8, offset: 72)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !202, file: !203, line: 41, baseType: !114, size: 16, offset: 80)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !202, file: !203, line: 42, baseType: !22, size: 8, offset: 96)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !202, file: !203, line: 43, baseType: !22, size: 8, offset: 104)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !202, file: !203, line: 44, baseType: !22, size: 8, offset: 112)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !202, file: !203, line: 45, baseType: !213, size: 16, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !16, line: 445, baseType: !114)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !202, file: !203, line: 46, baseType: !22, size: 8, offset: 144)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !202, file: !203, line: 47, baseType: !22, size: 8, offset: 152)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !202, file: !203, line: 48, baseType: !22, size: 8, offset: 160)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !202, file: !203, line: 49, baseType: !22, size: 8, offset: 168)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !202, file: !203, line: 50, baseType: !22, size: 8, offset: 176)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !202, file: !203, line: 51, baseType: !22, size: 8, offset: 184)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !202, file: !203, line: 52, baseType: !22, size: 8, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !202, file: !203, line: 53, baseType: !22, size: 8, offset: 200)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !202, file: !203, line: 54, baseType: !151, size: 64, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !202, file: !203, line: 55, baseType: !17, size: 32, offset: 320)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !202, file: !203, line: 56, baseType: !17, size: 32, offset: 352)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !202, file: !203, line: 57, baseType: !17, size: 32, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !202, file: !203, line: 58, baseType: !17, size: 32, offset: 416)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !202, file: !203, line: 60, baseType: !228, size: 640, offset: 448)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !36, line: 893, size: 640, elements: !229)
!229 = !{!230, !231, !232, !233, !234, !235, !319, !320, !436, !437}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !228, file: !36, line: 894, baseType: !151, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !228, file: !36, line: 895, baseType: !151, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !228, file: !36, line: 896, baseType: !151, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !228, file: !36, line: 897, baseType: !151, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !228, file: !36, line: 898, baseType: !151, size: 64, offset: 256)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !228, file: !36, line: 899, baseType: !236, size: 64, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !36, line: 875, size: 1600, elements: !238)
!238 = !{!239, !259, !275}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !237, file: !36, line: 876, baseType: !240, size: 448)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !36, line: 828, size: 448, elements: !241)
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !258}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !240, file: !36, line: 829, baseType: !236, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !240, file: !36, line: 829, baseType: !22, size: 8, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !240, file: !36, line: 829, baseType: !22, size: 8, offset: 72)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !240, file: !36, line: 829, baseType: !114, size: 16, offset: 80)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !240, file: !36, line: 829, baseType: !151, size: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !240, file: !36, line: 829, baseType: !236, size: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !240, file: !36, line: 829, baseType: !99, size: 64, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !240, file: !36, line: 829, baseType: !250, size: 64, offset: 320)
!250 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !36, line: 716, size: 64, elements: !251)
!251 = !{!252, !253, !254, !255, !256, !257}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !250, file: !36, line: 717, baseType: !28, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !250, file: !36, line: 718, baseType: !17, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !250, file: !36, line: 719, baseType: !140, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !250, file: !36, line: 720, baseType: !151, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !250, file: !36, line: 721, baseType: !140, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !250, file: !36, line: 722, baseType: !236, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !240, file: !36, line: 829, baseType: !22, size: 8, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !237, file: !36, line: 877, baseType: !260, size: 640)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !36, line: 835, size: 640, elements: !261)
!261 = !{!262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !260, file: !36, line: 836, baseType: !236, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !260, file: !36, line: 836, baseType: !22, size: 8, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !260, file: !36, line: 836, baseType: !22, size: 8, offset: 72)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !260, file: !36, line: 836, baseType: !114, size: 16, offset: 80)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !260, file: !36, line: 836, baseType: !151, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !260, file: !36, line: 836, baseType: !236, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !260, file: !36, line: 836, baseType: !99, size: 64, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !260, file: !36, line: 836, baseType: !250, size: 64, offset: 320)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !260, file: !36, line: 836, baseType: !22, size: 8, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !260, file: !36, line: 836, baseType: !140, size: 64, offset: 448)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !260, file: !36, line: 837, baseType: !151, size: 64, offset: 512)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !260, file: !36, line: 838, baseType: !17, size: 32, offset: 576)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !36, line: 839, baseType: !17, size: 32, offset: 608)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !237, file: !36, line: 878, baseType: !276, size: 1600)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !36, line: 846, size: 1600, elements: !277)
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !276, file: !36, line: 847, baseType: !236, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !276, file: !36, line: 847, baseType: !22, size: 8, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !276, file: !36, line: 847, baseType: !22, size: 8, offset: 72)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !276, file: !36, line: 847, baseType: !114, size: 16, offset: 80)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !276, file: !36, line: 847, baseType: !151, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !276, file: !36, line: 847, baseType: !236, size: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !276, file: !36, line: 847, baseType: !99, size: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !276, file: !36, line: 847, baseType: !250, size: 64, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !276, file: !36, line: 847, baseType: !22, size: 8, offset: 384)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !276, file: !36, line: 847, baseType: !236, size: 64, offset: 448)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !276, file: !36, line: 848, baseType: !236, size: 64, offset: 512)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !276, file: !36, line: 849, baseType: !140, size: 64, offset: 576)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !276, file: !36, line: 850, baseType: !22, size: 8, offset: 640)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !276, file: !36, line: 851, baseType: !140, size: 64, offset: 704)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !276, file: !36, line: 852, baseType: !140, size: 64, offset: 768)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !276, file: !36, line: 853, baseType: !140, size: 64, offset: 832)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !276, file: !36, line: 854, baseType: !295, size: 32, offset: 896)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 32, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 4)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !276, file: !36, line: 855, baseType: !17, size: 32, offset: 928)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !276, file: !36, line: 856, baseType: !17, size: 32, offset: 960)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !276, file: !36, line: 857, baseType: !17, size: 32, offset: 992)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !276, file: !36, line: 858, baseType: !17, size: 32, offset: 1024)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !276, file: !36, line: 859, baseType: !17, size: 32, offset: 1056)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !276, file: !36, line: 860, baseType: !17, size: 32, offset: 1088)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !276, file: !36, line: 861, baseType: !17, size: 32, offset: 1120)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !276, file: !36, line: 862, baseType: !17, size: 32, offset: 1152)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !276, file: !36, line: 863, baseType: !17, size: 32, offset: 1184)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !276, file: !36, line: 864, baseType: !17, size: 32, offset: 1216)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !276, file: !36, line: 865, baseType: !17, size: 32, offset: 1248)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !276, file: !36, line: 866, baseType: !17, size: 32, offset: 1280)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !276, file: !36, line: 867, baseType: !17, size: 32, offset: 1312)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !276, file: !36, line: 868, baseType: !114, size: 16, offset: 1344)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !276, file: !36, line: 869, baseType: !22, size: 8, offset: 1360)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !276, file: !36, line: 870, baseType: !22, size: 8, offset: 1368)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !276, file: !36, line: 871, baseType: !22, size: 8, offset: 1376)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !276, file: !36, line: 872, baseType: !316, size: 160, offset: 1384)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 160, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 20)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !228, file: !36, line: 900, baseType: !99, size: 64, offset: 384)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !228, file: !36, line: 901, baseType: !321, size: 64, offset: 448)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !36, line: 663, size: 640, elements: !323)
!323 = !{!324, !332, !345, !354, !363, !376, !390, !402, !414}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !322, file: !36, line: 664, baseType: !325, size: 128)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !36, line: 567, size: 128, elements: !326)
!326 = !{!327, !328, !329, !330, !331}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !325, file: !36, line: 568, baseType: !14, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !325, file: !36, line: 568, baseType: !22, size: 8, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !325, file: !36, line: 568, baseType: !22, size: 8, offset: 72)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !325, file: !36, line: 568, baseType: !114, size: 16, offset: 80)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !325, file: !36, line: 568, baseType: !114, size: 16, offset: 96)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !322, file: !36, line: 665, baseType: !333, size: 384)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !36, line: 593, size: 384, elements: !334)
!334 = !{!335, !336, !337, !338, !339, !340, !341, !342, !343, !344}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !36, line: 594, baseType: !14, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !333, file: !36, line: 594, baseType: !22, size: 8, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !333, file: !36, line: 594, baseType: !22, size: 8, offset: 72)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !333, file: !36, line: 594, baseType: !114, size: 16, offset: 80)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !333, file: !36, line: 594, baseType: !114, size: 16, offset: 96)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !333, file: !36, line: 594, baseType: !114, size: 16, offset: 112)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !333, file: !36, line: 595, baseType: !236, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !333, file: !36, line: 596, baseType: !151, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !333, file: !36, line: 597, baseType: !151, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !333, file: !36, line: 598, baseType: !28, size: 64, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !322, file: !36, line: 666, baseType: !346, size: 192)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !36, line: 573, size: 192, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !36, line: 574, baseType: !14, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !346, file: !36, line: 574, baseType: !22, size: 8, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !36, line: 574, baseType: !22, size: 8, offset: 72)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !346, file: !36, line: 574, baseType: !114, size: 16, offset: 80)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !36, line: 574, baseType: !114, size: 16, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !346, file: !36, line: 574, baseType: !103, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !322, file: !36, line: 667, baseType: !355, size: 192)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !36, line: 604, size: 192, elements: !356)
!356 = !{!357, !358, !359, !360, !361, !362}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !355, file: !36, line: 605, baseType: !14, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !355, file: !36, line: 605, baseType: !22, size: 8, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !355, file: !36, line: 605, baseType: !22, size: 8, offset: 72)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !355, file: !36, line: 605, baseType: !114, size: 16, offset: 80)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !355, file: !36, line: 605, baseType: !114, size: 16, offset: 96)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !355, file: !36, line: 605, baseType: !99, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !322, file: !36, line: 668, baseType: !364, size: 448)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !36, line: 608, size: 448, elements: !365)
!365 = !{!366, !367, !368, !369, !370, !371, !372, !373, !374, !375}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !364, file: !36, line: 609, baseType: !14, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !364, file: !36, line: 609, baseType: !22, size: 8, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !364, file: !36, line: 609, baseType: !22, size: 8, offset: 72)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !364, file: !36, line: 609, baseType: !114, size: 16, offset: 80)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !364, file: !36, line: 609, baseType: !114, size: 16, offset: 96)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !364, file: !36, line: 609, baseType: !17, size: 32, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !364, file: !36, line: 610, baseType: !236, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !364, file: !36, line: 611, baseType: !151, size: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !364, file: !36, line: 612, baseType: !151, size: 64, offset: 320)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !364, file: !36, line: 613, baseType: !17, size: 32, offset: 384)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !322, file: !36, line: 669, baseType: !377, size: 512)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !36, line: 580, size: 512, elements: !378)
!378 = !{!379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !36, line: 581, baseType: !14, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !377, file: !36, line: 581, baseType: !22, size: 8, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !377, file: !36, line: 581, baseType: !22, size: 8, offset: 72)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !377, file: !36, line: 581, baseType: !114, size: 16, offset: 80)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !377, file: !36, line: 581, baseType: !114, size: 16, offset: 96)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !377, file: !36, line: 581, baseType: !17, size: 32, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !377, file: !36, line: 582, baseType: !103, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !377, file: !36, line: 583, baseType: !103, size: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !377, file: !36, line: 584, baseType: !201, size: 64, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !377, file: !36, line: 585, baseType: !14, size: 64, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !377, file: !36, line: 586, baseType: !17, size: 32, offset: 448)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !322, file: !36, line: 670, baseType: !391, size: 320)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !36, line: 620, size: 320, elements: !392)
!392 = !{!393, !394, !395, !396, !397, !398, !399, !400, !401}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !391, file: !36, line: 621, baseType: !14, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !391, file: !36, line: 621, baseType: !22, size: 8, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !391, file: !36, line: 621, baseType: !22, size: 8, offset: 72)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !391, file: !36, line: 621, baseType: !114, size: 16, offset: 80)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !391, file: !36, line: 621, baseType: !114, size: 16, offset: 96)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !391, file: !36, line: 621, baseType: !22, size: 8, offset: 112)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !391, file: !36, line: 622, baseType: !201, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !391, file: !36, line: 623, baseType: !103, size: 64, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !391, file: !36, line: 624, baseType: !28, size: 64, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !322, file: !36, line: 671, baseType: !403, size: 640)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !36, line: 631, size: 640, elements: !404)
!404 = !{!405, !406, !407, !408, !409, !410}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !403, file: !36, line: 632, baseType: !14, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !403, file: !36, line: 632, baseType: !22, size: 8, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !403, file: !36, line: 632, baseType: !22, size: 8, offset: 72)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !403, file: !36, line: 632, baseType: !114, size: 16, offset: 80)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !403, file: !36, line: 632, baseType: !114, size: 16, offset: 96)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !403, file: !36, line: 633, baseType: !411, size: 512, offset: 128)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 512, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 8)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !322, file: !36, line: 672, baseType: !415, size: 320)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !36, line: 654, size: 320, elements: !416)
!416 = !{!417, !418, !419, !420, !421, !422, !423, !424, !425}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !415, file: !36, line: 655, baseType: !14, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !415, file: !36, line: 655, baseType: !22, size: 8, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !415, file: !36, line: 655, baseType: !22, size: 8, offset: 72)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !415, file: !36, line: 655, baseType: !114, size: 16, offset: 80)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !415, file: !36, line: 655, baseType: !114, size: 16, offset: 96)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !415, file: !36, line: 655, baseType: !22, size: 8, offset: 112)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !415, file: !36, line: 656, baseType: !99, size: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !415, file: !36, line: 657, baseType: !103, size: 64, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !415, file: !36, line: 658, baseType: !426, size: 64, offset: 256)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !36, line: 645, size: 128, elements: !428)
!428 = !{!429, !435}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !427, file: !36, line: 646, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !16, line: 1052, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !434, !17, !14}
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !16, line: 424, baseType: !14)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !427, file: !36, line: 647, baseType: !14, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !228, file: !36, line: 902, baseType: !236, size: 64, offset: 512)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !228, file: !36, line: 903, baseType: !17, size: 32, offset: 576)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !202, file: !203, line: 61, baseType: !17, size: 32, offset: 1088)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !202, file: !203, line: 62, baseType: !17, size: 32, offset: 1120)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !202, file: !203, line: 63, baseType: !114, size: 16, offset: 1152)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !202, file: !203, line: 64, baseType: !22, size: 8, offset: 1168)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !202, file: !203, line: 66, baseType: !443, size: 2688, offset: 1216)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 2688, elements: !444)
!444 = !{!445}
!445 = !DISubrange(count: 7)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !202, file: !203, line: 67, baseType: !447, size: 3072, offset: 3904)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 3072, elements: !412)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !202, file: !203, line: 68, baseType: !449, size: 576, offset: 6976)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 576, elements: !45)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !202, file: !203, line: 69, baseType: !166, size: 64, offset: 7552)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !202, file: !203, line: 71, baseType: !151, size: 64, offset: 7616)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !202, file: !203, line: 72, baseType: !166, size: 64, offset: 7680)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !202, file: !203, line: 73, baseType: !321, size: 64, offset: 7744)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !202, file: !203, line: 74, baseType: !99, size: 64, offset: 7808)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !202, file: !203, line: 75, baseType: !103, size: 64, offset: 7872)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !202, file: !203, line: 76, baseType: !99, size: 64, offset: 7936)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !202, file: !203, line: 77, baseType: !236, size: 64, offset: 8000)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !202, file: !203, line: 78, baseType: !103, size: 64, offset: 8064)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !202, file: !203, line: 79, baseType: !99, size: 64, offset: 8128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !202, file: !203, line: 80, baseType: !140, size: 64, offset: 8192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !202, file: !203, line: 81, baseType: !236, size: 64, offset: 8256)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !202, file: !203, line: 82, baseType: !463, size: 64, offset: 8320)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !36, line: 702, size: 128, elements: !466)
!466 = !{!467, !468, !469, !470, !471, !472}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !465, file: !36, line: 706, baseType: !17, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !465, file: !36, line: 707, baseType: !17, size: 32, offset: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !465, file: !36, line: 708, baseType: !114, size: 16, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !465, file: !36, line: 709, baseType: !22, size: 8, offset: 80)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !465, file: !36, line: 710, baseType: !22, size: 8, offset: 88)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !465, file: !36, line: 711, baseType: !22, size: 8, offset: 96)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !202, file: !203, line: 83, baseType: !236, size: 64, offset: 8384)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !202, file: !203, line: 84, baseType: !103, size: 64, offset: 8448)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !202, file: !203, line: 85, baseType: !321, size: 64, offset: 8512)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !202, file: !203, line: 86, baseType: !103, size: 64, offset: 8576)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !202, file: !203, line: 87, baseType: !321, size: 64, offset: 8640)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !202, file: !203, line: 88, baseType: !236, size: 64, offset: 8704)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !202, file: !203, line: 89, baseType: !236, size: 64, offset: 8768)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !202, file: !203, line: 90, baseType: !481, size: 64, offset: 8832)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !202, file: !203, line: 91, baseType: !483, size: 64, offset: 8896)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !36, line: 637, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!15, !201, !487}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !202, file: !203, line: 92, baseType: !489, size: 64, offset: 8960)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !36, line: 641, baseType: !198)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !194, file: !105, line: 152, baseType: !103, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !180, file: !105, line: 155, baseType: !17, size: 32, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !180, file: !105, line: 156, baseType: !213, size: 16, offset: 416)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !180, file: !105, line: 157, baseType: !22, size: 8, offset: 432)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !104, file: !105, line: 375, baseType: !495, size: 576)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !105, line: 122, size: 576, elements: !496)
!496 = !{!497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !495, file: !105, line: 123, baseType: !103, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !495, file: !105, line: 123, baseType: !22, size: 8, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !495, file: !105, line: 123, baseType: !22, size: 8, offset: 72)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !495, file: !105, line: 123, baseType: !114, size: 16, offset: 80)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !495, file: !105, line: 123, baseType: !22, size: 8, offset: 96)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !495, file: !105, line: 123, baseType: !22, size: 8, offset: 104)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !495, file: !105, line: 124, baseType: !114, size: 16, offset: 112)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !495, file: !105, line: 125, baseType: !14, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !495, file: !105, line: 126, baseType: !28, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !495, file: !105, line: 127, baseType: !481, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !495, file: !105, line: 128, baseType: !103, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !495, file: !105, line: 129, baseType: !103, size: 64, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !495, file: !105, line: 130, baseType: !99, size: 64, offset: 448)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !495, file: !105, line: 131, baseType: !22, size: 8, offset: 512)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !104, file: !105, line: 376, baseType: !512, size: 448)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !105, line: 134, size: 448, elements: !513)
!513 = !{!514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !525}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !512, file: !105, line: 135, baseType: !103, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !512, file: !105, line: 135, baseType: !22, size: 8, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !512, file: !105, line: 135, baseType: !22, size: 8, offset: 72)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !512, file: !105, line: 135, baseType: !114, size: 16, offset: 80)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !512, file: !105, line: 135, baseType: !22, size: 8, offset: 96)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !512, file: !105, line: 135, baseType: !22, size: 8, offset: 104)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !512, file: !105, line: 136, baseType: !99, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !512, file: !105, line: 137, baseType: !103, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !512, file: !105, line: 138, baseType: !103, size: 64, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !512, file: !105, line: 139, baseType: !524, size: 64, offset: 320)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !16, line: 129, baseType: !28)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !512, file: !105, line: 140, baseType: !17, size: 32, offset: 384)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !104, file: !105, line: 377, baseType: !527, size: 320)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !105, line: 184, size: 320, elements: !528)
!528 = !{!529, !530, !531, !532, !533, !534, !538}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !527, file: !105, line: 185, baseType: !103, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !527, file: !105, line: 185, baseType: !22, size: 8, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !527, file: !105, line: 185, baseType: !22, size: 8, offset: 72)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !527, file: !105, line: 185, baseType: !114, size: 16, offset: 80)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !527, file: !105, line: 185, baseType: !22, size: 8, offset: 96)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !527, file: !105, line: 185, baseType: !535, size: 128, offset: 128)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 128, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 2)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !527, file: !105, line: 185, baseType: !103, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !104, file: !105, line: 378, baseType: !540, size: 384)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !105, line: 187, size: 384, elements: !541)
!541 = !{!542, !543, !544, !545, !546, !547, !548, !549}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !540, file: !105, line: 188, baseType: !103, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !540, file: !105, line: 188, baseType: !22, size: 8, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !540, file: !105, line: 188, baseType: !22, size: 8, offset: 72)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !540, file: !105, line: 188, baseType: !114, size: 16, offset: 80)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !540, file: !105, line: 188, baseType: !22, size: 8, offset: 96)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !540, file: !105, line: 189, baseType: !535, size: 128, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !540, file: !105, line: 189, baseType: !103, size: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !540, file: !105, line: 189, baseType: !550, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !36, line: 480, size: 576, elements: !552)
!552 = !{!553, !554, !555, !556, !564, !579, !611, !612, !613, !614, !615, !616}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !551, file: !36, line: 481, baseType: !99, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !551, file: !36, line: 482, baseType: !550, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !551, file: !36, line: 483, baseType: !550, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !551, file: !36, line: 484, baseType: !557, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !36, line: 497, size: 256, elements: !559)
!559 = !{!560, !561, !562, !563}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !558, file: !36, line: 498, baseType: !557, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !558, file: !36, line: 499, baseType: !557, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !558, file: !36, line: 500, baseType: !550, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !558, file: !36, line: 501, baseType: !17, size: 32, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !551, file: !36, line: 485, baseType: !565, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !36, line: 466, size: 320, elements: !567)
!567 = !{!568, !573, !574, !575, !576, !577, !578}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !566, file: !36, line: 467, baseType: !569, size: 128)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !36, line: 459, size: 128, elements: !570)
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !569, file: !36, line: 460, baseType: !22, size: 8)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !569, file: !36, line: 461, baseType: !28, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !566, file: !36, line: 468, baseType: !569, size: 128, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !566, file: !36, line: 469, baseType: !114, size: 16, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !566, file: !36, line: 470, baseType: !22, size: 8, offset: 272)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !566, file: !36, line: 471, baseType: !22, size: 8, offset: 280)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !566, file: !36, line: 472, baseType: !22, size: 8, offset: 288)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !566, file: !36, line: 473, baseType: !22, size: 8, offset: 296)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !551, file: !36, line: 486, baseType: !580, size: 64, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !36, line: 448, size: 192, elements: !582)
!582 = !{!583, !606, !607, !608, !609, !610}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !581, file: !36, line: 449, baseType: !584, size: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !36, line: 438, size: 64, elements: !585)
!585 = !{!586, !587, !600}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !584, file: !36, line: 439, baseType: !99, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !584, file: !36, line: 440, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !36, line: 419, size: 256, elements: !590)
!590 = !{!591, !596, !597, !598, !599}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !589, file: !36, line: 420, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !16, line: 1049, baseType: !593)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!17, !434, !17, !14}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !589, file: !36, line: 421, baseType: !14, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !589, file: !36, line: 422, baseType: !99, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !589, file: !36, line: 423, baseType: !22, size: 8, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !589, file: !36, line: 424, baseType: !22, size: 8, offset: 200)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !584, file: !36, line: 441, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !36, line: 429, size: 128, elements: !603)
!603 = !{!604, !605}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !602, file: !36, line: 430, baseType: !99, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !602, file: !36, line: 431, baseType: !601, size: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !581, file: !36, line: 450, baseType: !565, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !581, file: !36, line: 451, baseType: !22, size: 8, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !581, file: !36, line: 452, baseType: !22, size: 8, offset: 136)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !581, file: !36, line: 453, baseType: !22, size: 8, offset: 144)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !581, file: !36, line: 454, baseType: !22, size: 8, offset: 152)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !551, file: !36, line: 487, baseType: !28, size: 64, offset: 384)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !551, file: !36, line: 488, baseType: !17, size: 32, offset: 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !551, file: !36, line: 489, baseType: !114, size: 16, offset: 480)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !551, file: !36, line: 490, baseType: !114, size: 16, offset: 496)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !551, file: !36, line: 491, baseType: !22, size: 8, offset: 512)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !551, file: !36, line: 492, baseType: !22, size: 8, offset: 520)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !104, file: !105, line: 379, baseType: !618, size: 384)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !105, line: 192, size: 384, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625, !626, !627, !628}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !618, file: !105, line: 193, baseType: !103, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !618, file: !105, line: 193, baseType: !22, size: 8, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !618, file: !105, line: 193, baseType: !22, size: 8, offset: 72)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !618, file: !105, line: 193, baseType: !114, size: 16, offset: 80)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !618, file: !105, line: 193, baseType: !22, size: 8, offset: 96)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !618, file: !105, line: 193, baseType: !535, size: 128, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !618, file: !105, line: 193, baseType: !103, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !618, file: !105, line: 193, baseType: !17, size: 32, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !618, file: !105, line: 194, baseType: !17, size: 32, offset: 352)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !104, file: !105, line: 380, baseType: !630, size: 384)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !105, line: 197, size: 384, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !630, file: !105, line: 198, baseType: !103, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !630, file: !105, line: 198, baseType: !22, size: 8, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !630, file: !105, line: 198, baseType: !22, size: 8, offset: 72)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !630, file: !105, line: 198, baseType: !114, size: 16, offset: 80)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !105, line: 198, baseType: !22, size: 8, offset: 96)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !630, file: !105, line: 200, baseType: !22, size: 8, offset: 104)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !630, file: !105, line: 201, baseType: !22, size: 8, offset: 112)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !630, file: !105, line: 202, baseType: !535, size: 128, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !630, file: !105, line: 202, baseType: !103, size: 64, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !630, file: !105, line: 202, baseType: !642, size: 64, offset: 320)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !16, line: 128, baseType: !28)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !104, file: !105, line: 381, baseType: !644, size: 320)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !105, line: 205, size: 320, elements: !645)
!645 = !{!646, !647, !648, !649, !650, !651, !652}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !644, file: !105, line: 206, baseType: !103, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !644, file: !105, line: 206, baseType: !22, size: 8, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !644, file: !105, line: 206, baseType: !22, size: 8, offset: 72)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !644, file: !105, line: 206, baseType: !114, size: 16, offset: 80)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !644, file: !105, line: 206, baseType: !22, size: 8, offset: 96)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !644, file: !105, line: 206, baseType: !535, size: 128, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !644, file: !105, line: 206, baseType: !103, size: 64, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !104, file: !105, line: 382, baseType: !654, size: 384)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !105, line: 233, size: 384, elements: !655)
!655 = !{!656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !654, file: !105, line: 234, baseType: !103, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !654, file: !105, line: 234, baseType: !22, size: 8, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !654, file: !105, line: 234, baseType: !22, size: 8, offset: 72)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !654, file: !105, line: 234, baseType: !114, size: 16, offset: 80)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !654, file: !105, line: 234, baseType: !22, size: 8, offset: 96)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !654, file: !105, line: 234, baseType: !22, size: 8, offset: 104)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !654, file: !105, line: 234, baseType: !22, size: 8, offset: 112)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !654, file: !105, line: 234, baseType: !22, size: 8, offset: 120)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !654, file: !105, line: 234, baseType: !99, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !654, file: !105, line: 234, baseType: !17, size: 32, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !654, file: !105, line: 234, baseType: !17, size: 32, offset: 224)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !654, file: !105, line: 234, baseType: !17, size: 32, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !654, file: !105, line: 234, baseType: !22, size: 8, offset: 288)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !654, file: !105, line: 234, baseType: !22, size: 8, offset: 296)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !654, file: !105, line: 234, baseType: !103, size: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !104, file: !105, line: 383, baseType: !672, size: 576)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !105, line: 237, size: 576, elements: !673)
!673 = !{!674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !672, file: !105, line: 238, baseType: !103, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !672, file: !105, line: 238, baseType: !22, size: 8, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !672, file: !105, line: 238, baseType: !22, size: 8, offset: 72)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !672, file: !105, line: 238, baseType: !114, size: 16, offset: 80)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !672, file: !105, line: 238, baseType: !22, size: 8, offset: 96)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !672, file: !105, line: 238, baseType: !22, size: 8, offset: 104)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !672, file: !105, line: 238, baseType: !22, size: 8, offset: 112)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !672, file: !105, line: 238, baseType: !22, size: 8, offset: 120)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !672, file: !105, line: 238, baseType: !99, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !672, file: !105, line: 238, baseType: !17, size: 32, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !672, file: !105, line: 238, baseType: !17, size: 32, offset: 224)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !672, file: !105, line: 238, baseType: !17, size: 32, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !672, file: !105, line: 238, baseType: !22, size: 8, offset: 288)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !672, file: !105, line: 238, baseType: !22, size: 8, offset: 296)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !672, file: !105, line: 238, baseType: !114, size: 16, offset: 304)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !672, file: !105, line: 239, baseType: !103, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !672, file: !105, line: 240, baseType: !151, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !672, file: !105, line: 241, baseType: !114, size: 16, offset: 448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !672, file: !105, line: 242, baseType: !151, size: 64, offset: 512)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !104, file: !105, line: 384, baseType: !694, size: 384)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !105, line: 262, size: 384, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !694, file: !105, line: 263, baseType: !103, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !694, file: !105, line: 263, baseType: !22, size: 8, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !694, file: !105, line: 263, baseType: !22, size: 8, offset: 72)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !694, file: !105, line: 263, baseType: !114, size: 16, offset: 80)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !105, line: 263, baseType: !22, size: 8, offset: 96)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !694, file: !105, line: 263, baseType: !22, size: 8, offset: 104)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !694, file: !105, line: 263, baseType: !22, size: 8, offset: 112)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !694, file: !105, line: 263, baseType: !22, size: 8, offset: 120)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !694, file: !105, line: 263, baseType: !99, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !694, file: !105, line: 263, baseType: !17, size: 32, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !694, file: !105, line: 263, baseType: !17, size: 32, offset: 224)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !694, file: !105, line: 263, baseType: !17, size: 32, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !694, file: !105, line: 263, baseType: !22, size: 8, offset: 288)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !694, file: !105, line: 263, baseType: !22, size: 8, offset: 296)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !694, file: !105, line: 263, baseType: !22, size: 8, offset: 304)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !694, file: !105, line: 264, baseType: !103, size: 64, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !104, file: !105, line: 385, baseType: !713, size: 448)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !105, line: 245, size: 448, elements: !714)
!714 = !{!715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !713, file: !105, line: 246, baseType: !103, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !713, file: !105, line: 246, baseType: !22, size: 8, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !713, file: !105, line: 246, baseType: !22, size: 8, offset: 72)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !713, file: !105, line: 246, baseType: !114, size: 16, offset: 80)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !713, file: !105, line: 246, baseType: !22, size: 8, offset: 96)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !713, file: !105, line: 246, baseType: !22, size: 8, offset: 104)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !713, file: !105, line: 246, baseType: !22, size: 8, offset: 112)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !713, file: !105, line: 246, baseType: !22, size: 8, offset: 120)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !713, file: !105, line: 246, baseType: !99, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !713, file: !105, line: 246, baseType: !17, size: 32, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !713, file: !105, line: 246, baseType: !17, size: 32, offset: 224)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !713, file: !105, line: 246, baseType: !17, size: 32, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !713, file: !105, line: 246, baseType: !22, size: 8, offset: 288)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !713, file: !105, line: 246, baseType: !22, size: 8, offset: 296)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !713, file: !105, line: 246, baseType: !103, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !713, file: !105, line: 247, baseType: !103, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !104, file: !105, line: 386, baseType: !732, size: 448)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !105, line: 250, size: 448, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !732, file: !105, line: 251, baseType: !103, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !732, file: !105, line: 251, baseType: !22, size: 8, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !732, file: !105, line: 251, baseType: !22, size: 8, offset: 72)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !732, file: !105, line: 251, baseType: !114, size: 16, offset: 80)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !105, line: 251, baseType: !22, size: 8, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !732, file: !105, line: 251, baseType: !22, size: 8, offset: 104)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !732, file: !105, line: 251, baseType: !22, size: 8, offset: 112)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !732, file: !105, line: 251, baseType: !22, size: 8, offset: 120)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !732, file: !105, line: 251, baseType: !99, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !732, file: !105, line: 251, baseType: !17, size: 32, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !732, file: !105, line: 251, baseType: !17, size: 32, offset: 224)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !732, file: !105, line: 251, baseType: !17, size: 32, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !732, file: !105, line: 251, baseType: !22, size: 8, offset: 288)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !732, file: !105, line: 251, baseType: !22, size: 8, offset: 296)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !732, file: !105, line: 256, baseType: !103, size: 64, offset: 320)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !732, file: !105, line: 257, baseType: !103, size: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !104, file: !105, line: 387, baseType: !751, size: 512)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !105, line: 273, size: 512, elements: !752)
!752 = !{!753, !754, !755, !756, !757, !758, !759, !760, !761, !762}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !751, file: !105, line: 274, baseType: !103, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !751, file: !105, line: 274, baseType: !22, size: 8, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !751, file: !105, line: 274, baseType: !22, size: 8, offset: 72)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !751, file: !105, line: 274, baseType: !114, size: 16, offset: 80)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !751, file: !105, line: 274, baseType: !22, size: 8, offset: 96)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !751, file: !105, line: 274, baseType: !99, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !751, file: !105, line: 275, baseType: !17, size: 32, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !751, file: !105, line: 276, baseType: !430, size: 64, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !751, file: !105, line: 277, baseType: !14, size: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !751, file: !105, line: 278, baseType: !535, size: 128, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !104, file: !105, line: 388, baseType: !764, size: 512)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !105, line: 281, size: 512, elements: !765)
!765 = !{!766, !767, !768, !769, !770, !771, !772, !773, !779, !780, !781, !787, !788}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !764, file: !105, line: 282, baseType: !103, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !764, file: !105, line: 282, baseType: !22, size: 8, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !764, file: !105, line: 282, baseType: !22, size: 8, offset: 72)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !764, file: !105, line: 282, baseType: !114, size: 16, offset: 80)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !105, line: 282, baseType: !22, size: 8, offset: 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !764, file: !105, line: 282, baseType: !22, size: 8, offset: 104)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !764, file: !105, line: 283, baseType: !22, size: 8, offset: 112)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !764, file: !105, line: 284, baseType: !774, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !16, line: 1084, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!15, !17, !524, !17, !778, !14, !14}
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !764, file: !105, line: 285, baseType: !99, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !764, file: !105, line: 286, baseType: !14, size: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !764, file: !105, line: 287, baseType: !782, size: 64, offset: 320)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !16, line: 1102, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!15, !434, !17, !14, !786}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !764, file: !105, line: 288, baseType: !103, size: 64, offset: 384)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !764, file: !105, line: 289, baseType: !103, size: 64, offset: 448)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !104, file: !105, line: 389, baseType: !790, size: 512)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !105, line: 307, size: 512, elements: !791)
!791 = !{!792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !790, file: !105, line: 308, baseType: !103, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !790, file: !105, line: 308, baseType: !22, size: 8, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !790, file: !105, line: 308, baseType: !22, size: 8, offset: 72)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !790, file: !105, line: 308, baseType: !114, size: 16, offset: 80)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !790, file: !105, line: 308, baseType: !22, size: 8, offset: 96)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !790, file: !105, line: 308, baseType: !22, size: 8, offset: 104)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !790, file: !105, line: 309, baseType: !22, size: 8, offset: 112)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !790, file: !105, line: 310, baseType: !22, size: 8, offset: 120)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !790, file: !105, line: 311, baseType: !14, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !790, file: !105, line: 312, baseType: !99, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !790, file: !105, line: 313, baseType: !166, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !790, file: !105, line: 314, baseType: !151, size: 64, offset: 320)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !790, file: !105, line: 315, baseType: !151, size: 64, offset: 384)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !790, file: !105, line: 316, baseType: !17, size: 32, offset: 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !104, file: !105, line: 390, baseType: !807, size: 448)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !105, line: 340, size: 448, elements: !808)
!808 = !{!809, !810, !811, !812, !813, !814, !815, !816, !817, !818}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !807, file: !105, line: 341, baseType: !103, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !807, file: !105, line: 341, baseType: !22, size: 8, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !807, file: !105, line: 341, baseType: !22, size: 8, offset: 72)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !807, file: !105, line: 341, baseType: !114, size: 16, offset: 80)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !807, file: !105, line: 341, baseType: !22, size: 8, offset: 96)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !807, file: !105, line: 341, baseType: !99, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !807, file: !105, line: 342, baseType: !99, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !807, file: !105, line: 343, baseType: !14, size: 64, offset: 256)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !807, file: !105, line: 344, baseType: !151, size: 64, offset: 320)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !807, file: !105, line: 345, baseType: !17, size: 32, offset: 384)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !104, file: !105, line: 391, baseType: !820, size: 256)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !105, line: 350, size: 256, elements: !821)
!821 = !{!822, !823, !824, !825, !826, !827, !832}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !820, file: !105, line: 351, baseType: !103, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !820, file: !105, line: 351, baseType: !22, size: 8, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !820, file: !105, line: 351, baseType: !22, size: 8, offset: 72)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !820, file: !105, line: 351, baseType: !114, size: 16, offset: 80)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !820, file: !105, line: 351, baseType: !22, size: 8, offset: 96)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !820, file: !105, line: 351, baseType: !828, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !16, line: 1055, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !434, !14}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !820, file: !105, line: 352, baseType: !14, size: 64, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !104, file: !105, line: 392, baseType: !834, size: 192)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !105, line: 357, size: 192, elements: !835)
!835 = !{!836, !837, !838, !839, !840, !841}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !834, file: !105, line: 358, baseType: !103, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !834, file: !105, line: 358, baseType: !22, size: 8, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !834, file: !105, line: 358, baseType: !22, size: 8, offset: 72)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !834, file: !105, line: 358, baseType: !114, size: 16, offset: 80)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !834, file: !105, line: 358, baseType: !22, size: 8, offset: 96)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !834, file: !105, line: 358, baseType: !103, size: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !104, file: !105, line: 399, baseType: !100, size: 384)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !100, file: !36, line: 135, baseType: !22, size: 8, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !100, file: !36, line: 136, baseType: !22, size: 8, offset: 72)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !36, line: 137, baseType: !114, size: 16, offset: 80)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !100, file: !36, line: 138, baseType: !847, size: 32, offset: 96)
!847 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !848, line: 327, size: 32, elements: !849)
!848 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !847, file: !848, line: 328, baseType: !17, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !847, file: !848, line: 329, baseType: !295, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !100, file: !36, line: 139, baseType: !99, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !100, file: !36, line: 140, baseType: !99, size: 64, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !100, file: !36, line: 141, baseType: !99, size: 64, offset: 256)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !100, file: !36, line: 142, baseType: !213, size: 16, offset: 320)
!856 = !DILocalVariable(name: "node", arg: 1, scope: !96, file: !3, line: 649, type: !99)
!857 = !DILocation(line: 649, column: 57, scope: !96)
!858 = !DILocalVariable(name: "space_id", arg: 2, scope: !96, file: !3, line: 650, type: !21)
!859 = !DILocation(line: 650, column: 28, scope: !96)
!860 = !DILocalVariable(name: "function", arg: 3, scope: !96, file: !3, line: 650, type: !17)
!861 = !DILocation(line: 650, column: 42, scope: !96)
!862 = !DILocalVariable(name: "info", scope: !96, file: !3, line: 652, type: !35)
!863 = !DILocation(line: 652, column: 28, scope: !96)
!864 = !DILocation(line: 663, column: 7, scope: !865)
!865 = distinct !DILexicalBlock(scope: !96, file: !3, line: 663, column: 6)
!866 = !DILocation(line: 663, column: 16, scope: !865)
!867 = !DILocation(line: 663, column: 49, scope: !865)
!868 = !DILocation(line: 664, column: 7, scope: !865)
!869 = !DILocation(line: 664, column: 16, scope: !865)
!870 = !DILocation(line: 664, column: 45, scope: !865)
!871 = !DILocation(line: 665, column: 7, scope: !865)
!872 = !DILocation(line: 665, column: 16, scope: !865)
!873 = !DILocation(line: 663, column: 6, scope: !96)
!874 = !DILocation(line: 666, column: 3, scope: !875)
!875 = distinct !DILexicalBlock(scope: !865, file: !3, line: 665, column: 47)
!876 = !DILocation(line: 669, column: 18, scope: !96)
!877 = !DILocation(line: 669, column: 7, scope: !96)
!878 = !DILocation(line: 669, column: 16, scope: !96)
!879 = !DILocation(line: 670, column: 18, scope: !96)
!880 = !DILocation(line: 670, column: 7, scope: !96)
!881 = !DILocation(line: 670, column: 16, scope: !96)
!882 = !DILocation(line: 671, column: 7, scope: !96)
!883 = !DILocation(line: 671, column: 21, scope: !96)
!884 = !DILocation(line: 683, column: 46, scope: !96)
!885 = !DILocation(line: 685, column: 10, scope: !96)
!886 = !DILocation(line: 683, column: 8, scope: !96)
!887 = !DILocation(line: 689, column: 6, scope: !888)
!888 = distinct !DILexicalBlock(scope: !96, file: !3, line: 689, column: 6)
!889 = !DILocation(line: 689, column: 15, scope: !888)
!890 = !DILocation(line: 689, column: 6, scope: !96)
!891 = !DILocation(line: 690, column: 32, scope: !892)
!892 = distinct !DILexicalBlock(scope: !888, file: !3, line: 689, column: 37)
!893 = !DILocation(line: 690, column: 3, scope: !892)
!894 = !DILocation(line: 691, column: 2, scope: !892)
!895 = !DILocation(line: 698, column: 2, scope: !96)
!896 = !DILocation(line: 699, column: 1, scope: !96)
!897 = distinct !DISubprogram(name: "acpi_ev_address_space_dispatch", scope: !3, file: !3, line: 102, type: !898, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !56)
!898 = !DISubroutineType(types: !899)
!899 = !{!15, !103, !103, !17, !17, !17, !778}
!900 = !DILocalVariable(name: "region_obj", arg: 1, scope: !897, file: !3, line: 102, type: !103)
!901 = !DILocation(line: 102, column: 59, scope: !897)
!902 = !DILocalVariable(name: "field_obj", arg: 2, scope: !897, file: !3, line: 103, type: !103)
!903 = !DILocation(line: 103, column: 38, scope: !897)
!904 = !DILocalVariable(name: "function", arg: 3, scope: !897, file: !3, line: 104, type: !17)
!905 = !DILocation(line: 104, column: 15, scope: !897)
!906 = !DILocalVariable(name: "region_offset", arg: 4, scope: !897, file: !3, line: 105, type: !17)
!907 = !DILocation(line: 105, column: 15, scope: !897)
!908 = !DILocalVariable(name: "bit_width", arg: 5, scope: !897, file: !3, line: 105, type: !17)
!909 = !DILocation(line: 105, column: 34, scope: !897)
!910 = !DILocalVariable(name: "value", arg: 6, scope: !897, file: !3, line: 105, type: !778)
!911 = !DILocation(line: 105, column: 50, scope: !897)
!912 = !DILocalVariable(name: "status", scope: !897, file: !3, line: 107, type: !15)
!913 = !DILocation(line: 107, column: 14, scope: !897)
!914 = !DILocalVariable(name: "handler", scope: !897, file: !3, line: 108, type: !774)
!915 = !DILocation(line: 108, column: 25, scope: !897)
!916 = !DILocalVariable(name: "region_setup", scope: !897, file: !3, line: 109, type: !782)
!917 = !DILocation(line: 109, column: 23, scope: !897)
!918 = !DILocalVariable(name: "handler_desc", scope: !897, file: !3, line: 110, type: !103)
!919 = !DILocation(line: 110, column: 29, scope: !897)
!920 = !DILocalVariable(name: "region_obj2", scope: !897, file: !3, line: 111, type: !103)
!921 = !DILocation(line: 111, column: 29, scope: !897)
!922 = !DILocalVariable(name: "region_context", scope: !897, file: !3, line: 112, type: !14)
!923 = !DILocation(line: 112, column: 8, scope: !897)
!924 = !DILocalVariable(name: "context", scope: !897, file: !3, line: 113, type: !925)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_connection_info", file: !16, line: 1095, size: 128, elements: !927)
!927 = !{!928, !929, !930}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !926, file: !16, line: 1096, baseType: !151, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !926, file: !16, line: 1097, baseType: !114, size: 16, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !926, file: !16, line: 1098, baseType: !22, size: 8, offset: 80)
!931 = !DILocation(line: 113, column: 31, scope: !897)
!932 = !DILocalVariable(name: "address", scope: !897, file: !3, line: 114, type: !524)
!933 = !DILocation(line: 114, column: 24, scope: !897)
!934 = !DILocation(line: 118, column: 45, scope: !897)
!935 = !DILocation(line: 118, column: 16, scope: !897)
!936 = !DILocation(line: 118, column: 14, scope: !897)
!937 = !DILocation(line: 119, column: 7, scope: !938)
!938 = distinct !DILexicalBlock(scope: !897, file: !3, line: 119, column: 6)
!939 = !DILocation(line: 119, column: 6, scope: !897)
!940 = !DILocation(line: 120, column: 3, scope: !941)
!941 = distinct !DILexicalBlock(scope: !938, file: !3, line: 119, column: 20)
!942 = !DILocation(line: 125, column: 17, scope: !897)
!943 = !DILocation(line: 125, column: 29, scope: !897)
!944 = !DILocation(line: 125, column: 36, scope: !897)
!945 = !DILocation(line: 125, column: 15, scope: !897)
!946 = !DILocation(line: 126, column: 7, scope: !947)
!947 = distinct !DILexicalBlock(scope: !897, file: !3, line: 126, column: 6)
!948 = !DILocation(line: 126, column: 6, scope: !897)
!949 = !DILocation(line: 127, column: 3, scope: !950)
!950 = distinct !DILexicalBlock(scope: !947, file: !3, line: 126, column: 21)
!951 = !DILocation(line: 134, column: 3, scope: !950)
!952 = !DILocation(line: 137, column: 12, scope: !897)
!953 = !DILocation(line: 137, column: 26, scope: !897)
!954 = !DILocation(line: 137, column: 40, scope: !897)
!955 = !DILocation(line: 137, column: 10, scope: !897)
!956 = !DILocation(line: 143, column: 8, scope: !957)
!957 = distinct !DILexicalBlock(scope: !897, file: !3, line: 143, column: 6)
!958 = !DILocation(line: 143, column: 20, scope: !957)
!959 = !DILocation(line: 143, column: 27, scope: !957)
!960 = !DILocation(line: 143, column: 33, scope: !957)
!961 = !DILocation(line: 143, column: 6, scope: !897)
!962 = !DILocation(line: 147, column: 18, scope: !963)
!963 = distinct !DILexicalBlock(scope: !957, file: !3, line: 143, column: 59)
!964 = !DILocation(line: 147, column: 32, scope: !963)
!965 = !DILocation(line: 147, column: 46, scope: !963)
!966 = !DILocation(line: 147, column: 16, scope: !963)
!967 = !DILocation(line: 148, column: 8, scope: !968)
!968 = distinct !DILexicalBlock(scope: !963, file: !3, line: 148, column: 7)
!969 = !DILocation(line: 148, column: 7, scope: !963)
!970 = !DILocation(line: 152, column: 4, scope: !971)
!971 = distinct !DILexicalBlock(scope: !968, file: !3, line: 148, column: 22)
!972 = !DILocation(line: 157, column: 4, scope: !971)
!973 = !DILocation(line: 165, column: 3, scope: !963)
!974 = !DILocation(line: 167, column: 12, scope: !963)
!975 = !DILocation(line: 167, column: 25, scope: !963)
!976 = !DILocation(line: 168, column: 11, scope: !963)
!977 = !DILocation(line: 167, column: 10, scope: !963)
!978 = !DILocation(line: 172, column: 3, scope: !963)
!979 = !DILocation(line: 176, column: 7, scope: !980)
!980 = distinct !DILexicalBlock(scope: !963, file: !3, line: 176, column: 7)
!981 = !DILocation(line: 176, column: 7, scope: !963)
!982 = !DILocation(line: 177, column: 4, scope: !983)
!983 = distinct !DILexicalBlock(scope: !980, file: !3, line: 176, column: 29)
!984 = !DILocation(line: 182, column: 4, scope: !983)
!985 = !DILocation(line: 187, column: 9, scope: !986)
!986 = distinct !DILexicalBlock(scope: !963, file: !3, line: 187, column: 7)
!987 = !DILocation(line: 187, column: 21, scope: !986)
!988 = !DILocation(line: 187, column: 28, scope: !986)
!989 = !DILocation(line: 187, column: 34, scope: !986)
!990 = !DILocation(line: 187, column: 7, scope: !963)
!991 = !DILocation(line: 188, column: 4, scope: !992)
!992 = distinct !DILexicalBlock(scope: !986, file: !3, line: 187, column: 60)
!993 = !DILocation(line: 188, column: 16, scope: !992)
!994 = !DILocation(line: 188, column: 23, scope: !992)
!995 = !DILocation(line: 188, column: 29, scope: !992)
!996 = !DILocation(line: 194, column: 10, scope: !997)
!997 = distinct !DILexicalBlock(scope: !992, file: !3, line: 194, column: 8)
!998 = !DILocation(line: 194, column: 23, scope: !997)
!999 = !DILocation(line: 194, column: 29, scope: !997)
!1000 = !DILocation(line: 194, column: 9, scope: !997)
!1001 = !DILocation(line: 194, column: 8, scope: !992)
!1002 = !DILocation(line: 196, column: 9, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !997, file: !3, line: 194, column: 46)
!1004 = !DILocation(line: 195, column: 5, scope: !1003)
!1005 = !DILocation(line: 195, column: 18, scope: !1003)
!1006 = !DILocation(line: 195, column: 24, scope: !1003)
!1007 = !DILocation(line: 195, column: 39, scope: !1003)
!1008 = !DILocation(line: 197, column: 4, scope: !1003)
!1009 = !DILocation(line: 198, column: 3, scope: !992)
!1010 = !DILocation(line: 199, column: 2, scope: !963)
!1011 = !DILocation(line: 203, column: 12, scope: !897)
!1012 = !DILocation(line: 203, column: 26, scope: !897)
!1013 = !DILocation(line: 203, column: 40, scope: !897)
!1014 = !DILocation(line: 203, column: 10, scope: !897)
!1015 = !DILocation(line: 204, column: 13, scope: !897)
!1016 = !DILocation(line: 204, column: 25, scope: !897)
!1017 = !DILocation(line: 204, column: 32, scope: !897)
!1018 = !DILocation(line: 204, column: 42, scope: !897)
!1019 = !DILocation(line: 204, column: 40, scope: !897)
!1020 = !DILocation(line: 204, column: 10, scope: !897)
!1021 = !DILocation(line: 220, column: 7, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !897, file: !3, line: 220, column: 6)
!1023 = !DILocation(line: 220, column: 19, scope: !1022)
!1024 = !DILocation(line: 220, column: 26, scope: !1022)
!1025 = !DILocation(line: 220, column: 35, scope: !1022)
!1026 = !DILocation(line: 220, column: 60, scope: !1022)
!1027 = !DILocation(line: 221, column: 6, scope: !1022)
!1028 = !DILocation(line: 221, column: 14, scope: !1022)
!1029 = !DILocation(line: 221, column: 17, scope: !1022)
!1030 = !DILocation(line: 220, column: 6, scope: !897)
!1031 = !DILocation(line: 225, column: 25, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 221, column: 28)
!1033 = !DILocation(line: 225, column: 36, scope: !1032)
!1034 = !DILocation(line: 225, column: 42, scope: !1032)
!1035 = !DILocation(line: 225, column: 3, scope: !1032)
!1036 = !DILocation(line: 225, column: 12, scope: !1032)
!1037 = !DILocation(line: 225, column: 23, scope: !1032)
!1038 = !DILocation(line: 226, column: 21, scope: !1032)
!1039 = !DILocation(line: 226, column: 32, scope: !1032)
!1040 = !DILocation(line: 226, column: 38, scope: !1032)
!1041 = !DILocation(line: 226, column: 3, scope: !1032)
!1042 = !DILocation(line: 226, column: 12, scope: !1032)
!1043 = !DILocation(line: 226, column: 19, scope: !1032)
!1044 = !DILocation(line: 227, column: 28, scope: !1032)
!1045 = !DILocation(line: 227, column: 39, scope: !1032)
!1046 = !DILocation(line: 227, column: 45, scope: !1032)
!1047 = !DILocation(line: 227, column: 3, scope: !1032)
!1048 = !DILocation(line: 227, column: 12, scope: !1032)
!1049 = !DILocation(line: 227, column: 26, scope: !1032)
!1050 = !DILocation(line: 228, column: 2, scope: !1032)
!1051 = !DILocation(line: 229, column: 7, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !897, file: !3, line: 229, column: 6)
!1053 = !DILocation(line: 229, column: 19, scope: !1052)
!1054 = !DILocation(line: 229, column: 26, scope: !1052)
!1055 = !DILocation(line: 229, column: 35, scope: !1052)
!1056 = !DILocation(line: 229, column: 59, scope: !1052)
!1057 = !DILocation(line: 230, column: 6, scope: !1052)
!1058 = !DILocation(line: 230, column: 14, scope: !1052)
!1059 = !DILocation(line: 230, column: 17, scope: !1052)
!1060 = !DILocation(line: 229, column: 6, scope: !897)
!1061 = !DILocation(line: 234, column: 25, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 230, column: 28)
!1063 = !DILocation(line: 234, column: 36, scope: !1062)
!1064 = !DILocation(line: 234, column: 42, scope: !1062)
!1065 = !DILocation(line: 234, column: 3, scope: !1062)
!1066 = !DILocation(line: 234, column: 12, scope: !1062)
!1067 = !DILocation(line: 234, column: 23, scope: !1062)
!1068 = !DILocation(line: 235, column: 21, scope: !1062)
!1069 = !DILocation(line: 235, column: 32, scope: !1062)
!1070 = !DILocation(line: 235, column: 38, scope: !1062)
!1071 = !DILocation(line: 235, column: 3, scope: !1062)
!1072 = !DILocation(line: 235, column: 12, scope: !1062)
!1073 = !DILocation(line: 235, column: 19, scope: !1062)
!1074 = !DILocation(line: 236, column: 28, scope: !1062)
!1075 = !DILocation(line: 236, column: 39, scope: !1062)
!1076 = !DILocation(line: 236, column: 45, scope: !1062)
!1077 = !DILocation(line: 236, column: 3, scope: !1062)
!1078 = !DILocation(line: 236, column: 12, scope: !1062)
!1079 = !DILocation(line: 236, column: 26, scope: !1062)
!1080 = !DILocation(line: 237, column: 13, scope: !1062)
!1081 = !DILocation(line: 237, column: 24, scope: !1062)
!1082 = !DILocation(line: 237, column: 30, scope: !1062)
!1083 = !DILocation(line: 237, column: 11, scope: !1062)
!1084 = !DILocation(line: 238, column: 15, scope: !1062)
!1085 = !DILocation(line: 238, column: 26, scope: !1062)
!1086 = !DILocation(line: 238, column: 32, scope: !1062)
!1087 = !DILocation(line: 238, column: 13, scope: !1062)
!1088 = !DILocation(line: 239, column: 2, scope: !1062)
!1089 = !DILocation(line: 248, column: 8, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !897, file: !3, line: 248, column: 6)
!1091 = !DILocation(line: 248, column: 22, scope: !1090)
!1092 = !DILocation(line: 248, column: 36, scope: !1090)
!1093 = !DILocation(line: 248, column: 50, scope: !1090)
!1094 = !DILocation(line: 248, column: 6, scope: !897)
!1095 = !DILocation(line: 255, column: 3, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 249, column: 46)
!1097 = !DILocation(line: 256, column: 2, scope: !1096)
!1098 = !DILocation(line: 260, column: 11, scope: !897)
!1099 = !DILocation(line: 260, column: 19, scope: !897)
!1100 = !DILocation(line: 260, column: 29, scope: !897)
!1101 = !DILocation(line: 260, column: 38, scope: !897)
!1102 = !DILocation(line: 260, column: 49, scope: !897)
!1103 = !DILocation(line: 260, column: 56, scope: !897)
!1104 = !DILocation(line: 261, column: 5, scope: !897)
!1105 = !DILocation(line: 261, column: 18, scope: !897)
!1106 = !DILocation(line: 261, column: 24, scope: !897)
!1107 = !DILocation(line: 260, column: 9, scope: !897)
!1108 = !DILocation(line: 263, column: 6, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !897, file: !3, line: 263, column: 6)
!1110 = !DILocation(line: 263, column: 6, scope: !897)
!1111 = !DILocation(line: 264, column: 3, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 263, column: 28)
!1113 = !DILocation(line: 272, column: 8, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 272, column: 7)
!1115 = !DILocation(line: 272, column: 20, scope: !1114)
!1116 = !DILocation(line: 272, column: 27, scope: !1114)
!1117 = !DILocation(line: 272, column: 36, scope: !1114)
!1118 = !DILocation(line: 272, column: 58, scope: !1114)
!1119 = !DILocation(line: 273, column: 8, scope: !1114)
!1120 = !DILocation(line: 273, column: 15, scope: !1114)
!1121 = !DILocation(line: 272, column: 7, scope: !1112)
!1122 = !DILocation(line: 274, column: 4, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 273, column: 28)
!1124 = !DILocation(line: 276, column: 3, scope: !1123)
!1125 = !DILocation(line: 277, column: 2, scope: !1112)
!1126 = !DILocation(line: 279, column: 8, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !897, file: !3, line: 279, column: 6)
!1128 = !DILocation(line: 279, column: 22, scope: !1127)
!1129 = !DILocation(line: 279, column: 36, scope: !1127)
!1130 = !DILocation(line: 279, column: 50, scope: !1127)
!1131 = !DILocation(line: 279, column: 6, scope: !897)
!1132 = !DILocation(line: 285, column: 3, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 280, column: 46)
!1134 = !DILocation(line: 286, column: 2, scope: !1133)
!1135 = !DILocation(line: 288, column: 2, scope: !897)
!1136 = !DILocation(line: 289, column: 1, scope: !897)
!1137 = distinct !DISubprogram(name: "acpi_ev_detach_region", scope: !3, file: !3, line: 306, type: !1138, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !56)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !103, !22}
!1140 = !DILocalVariable(name: "region_obj", arg: 1, scope: !1137, file: !3, line: 306, type: !103)
!1141 = !DILocation(line: 306, column: 50, scope: !1137)
!1142 = !DILocalVariable(name: "acpi_ns_is_locked", arg: 2, scope: !1137, file: !3, line: 307, type: !22)
!1143 = !DILocation(line: 307, column: 12, scope: !1137)
!1144 = !DILocalVariable(name: "handler_obj", scope: !1137, file: !3, line: 309, type: !103)
!1145 = !DILocation(line: 309, column: 29, scope: !1137)
!1146 = !DILocalVariable(name: "obj_desc", scope: !1137, file: !3, line: 310, type: !103)
!1147 = !DILocation(line: 310, column: 29, scope: !1137)
!1148 = !DILocalVariable(name: "start_desc", scope: !1137, file: !3, line: 311, type: !103)
!1149 = !DILocation(line: 311, column: 29, scope: !1137)
!1150 = !DILocalVariable(name: "last_obj_ptr", scope: !1137, file: !3, line: 312, type: !166)
!1151 = !DILocation(line: 312, column: 30, scope: !1137)
!1152 = !DILocalVariable(name: "region_setup", scope: !1137, file: !3, line: 313, type: !782)
!1153 = !DILocation(line: 313, column: 23, scope: !1137)
!1154 = !DILocalVariable(name: "region_context", scope: !1137, file: !3, line: 314, type: !786)
!1155 = !DILocation(line: 314, column: 9, scope: !1137)
!1156 = !DILocalVariable(name: "region_obj2", scope: !1137, file: !3, line: 315, type: !103)
!1157 = !DILocation(line: 315, column: 29, scope: !1137)
!1158 = !DILocalVariable(name: "status", scope: !1137, file: !3, line: 316, type: !15)
!1159 = !DILocation(line: 316, column: 14, scope: !1137)
!1160 = !DILocation(line: 320, column: 45, scope: !1137)
!1161 = !DILocation(line: 320, column: 16, scope: !1137)
!1162 = !DILocation(line: 320, column: 14, scope: !1137)
!1163 = !DILocation(line: 321, column: 7, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 321, column: 6)
!1165 = !DILocation(line: 321, column: 6, scope: !1137)
!1166 = !DILocation(line: 322, column: 3, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 321, column: 20)
!1168 = !DILocation(line: 324, column: 20, scope: !1137)
!1169 = !DILocation(line: 324, column: 33, scope: !1137)
!1170 = !DILocation(line: 324, column: 39, scope: !1137)
!1171 = !DILocation(line: 324, column: 17, scope: !1137)
!1172 = !DILocation(line: 328, column: 16, scope: !1137)
!1173 = !DILocation(line: 328, column: 28, scope: !1137)
!1174 = !DILocation(line: 328, column: 35, scope: !1137)
!1175 = !DILocation(line: 328, column: 14, scope: !1137)
!1176 = !DILocation(line: 329, column: 7, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 329, column: 6)
!1178 = !DILocation(line: 329, column: 6, scope: !1137)
!1179 = !DILocation(line: 333, column: 3, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 329, column: 20)
!1181 = !DILocation(line: 338, column: 13, scope: !1137)
!1182 = !DILocation(line: 338, column: 26, scope: !1137)
!1183 = !DILocation(line: 338, column: 40, scope: !1137)
!1184 = !DILocation(line: 338, column: 11, scope: !1137)
!1185 = !DILocation(line: 339, column: 15, scope: !1137)
!1186 = !DILocation(line: 339, column: 13, scope: !1137)
!1187 = !DILocation(line: 340, column: 18, scope: !1137)
!1188 = !DILocation(line: 340, column: 31, scope: !1137)
!1189 = !DILocation(line: 340, column: 45, scope: !1137)
!1190 = !DILocation(line: 340, column: 15, scope: !1137)
!1191 = !DILocation(line: 342, column: 2, scope: !1137)
!1192 = !DILocation(line: 342, column: 9, scope: !1137)
!1193 = !DILocation(line: 346, column: 7, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 346, column: 7)
!1195 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 342, column: 19)
!1196 = !DILocation(line: 346, column: 19, scope: !1194)
!1197 = !DILocation(line: 346, column: 16, scope: !1194)
!1198 = !DILocation(line: 346, column: 7, scope: !1195)
!1199 = !DILocation(line: 353, column: 20, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 346, column: 31)
!1201 = !DILocation(line: 353, column: 30, scope: !1200)
!1202 = !DILocation(line: 353, column: 37, scope: !1200)
!1203 = !DILocation(line: 353, column: 5, scope: !1200)
!1204 = !DILocation(line: 353, column: 18, scope: !1200)
!1205 = !DILocation(line: 354, column: 4, scope: !1200)
!1206 = !DILocation(line: 354, column: 14, scope: !1200)
!1207 = !DILocation(line: 354, column: 21, scope: !1200)
!1208 = !DILocation(line: 354, column: 26, scope: !1200)
!1209 = !DILocation(line: 356, column: 8, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 356, column: 8)
!1211 = !DILocation(line: 356, column: 8, scope: !1200)
!1212 = !DILocation(line: 358, column: 9, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 356, column: 27)
!1214 = !DILocation(line: 357, column: 12, scope: !1213)
!1215 = !DILocation(line: 359, column: 9, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 359, column: 9)
!1217 = !DILocation(line: 359, column: 9, scope: !1213)
!1218 = !DILocation(line: 360, column: 6, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 359, column: 31)
!1220 = !DILocation(line: 362, column: 4, scope: !1213)
!1221 = !DILocation(line: 367, column: 35, scope: !1200)
!1222 = !DILocation(line: 367, column: 8, scope: !1200)
!1223 = !DILocation(line: 366, column: 11, scope: !1200)
!1224 = !DILocation(line: 369, column: 8, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 369, column: 8)
!1226 = !DILocation(line: 369, column: 8, scope: !1200)
!1227 = !DILocation(line: 370, column: 5, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 369, column: 30)
!1229 = !DILocation(line: 374, column: 4, scope: !1228)
!1230 = !DILocation(line: 376, column: 8, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 376, column: 8)
!1232 = !DILocation(line: 376, column: 8, scope: !1200)
!1233 = !DILocation(line: 378, column: 9, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 376, column: 27)
!1235 = !DILocation(line: 377, column: 12, scope: !1234)
!1236 = !DILocation(line: 379, column: 9, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 379, column: 9)
!1238 = !DILocation(line: 379, column: 9, scope: !1234)
!1239 = !DILocation(line: 380, column: 6, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 379, column: 31)
!1241 = !DILocation(line: 382, column: 4, scope: !1234)
!1242 = !DILocation(line: 388, column: 8, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 388, column: 8)
!1244 = !DILocation(line: 388, column: 20, scope: !1243)
!1245 = !DILocation(line: 388, column: 27, scope: !1243)
!1246 = !DILocation(line: 388, column: 33, scope: !1243)
!1247 = !DILocation(line: 388, column: 8, scope: !1200)
!1248 = !DILocation(line: 389, column: 20, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 388, column: 58)
!1250 = !DILocation(line: 389, column: 33, scope: !1249)
!1251 = !DILocation(line: 389, column: 47, scope: !1249)
!1252 = !DILocation(line: 389, column: 18, scope: !1249)
!1253 = !DILocation(line: 391, column: 9, scope: !1249)
!1254 = !DILocation(line: 391, column: 22, scope: !1249)
!1255 = !DILocation(line: 393, column: 8, scope: !1249)
!1256 = !DILocation(line: 393, column: 21, scope: !1249)
!1257 = !DILocation(line: 394, column: 8, scope: !1249)
!1258 = !DILocation(line: 394, column: 17, scope: !1249)
!1259 = !DILocation(line: 390, column: 12, scope: !1249)
!1260 = !DILocation(line: 400, column: 9, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 400, column: 9)
!1262 = !DILocation(line: 400, column: 9, scope: !1249)
!1263 = !DILocation(line: 401, column: 7, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 400, column: 25)
!1265 = !DILocation(line: 401, column: 22, scope: !1264)
!1266 = !DILocation(line: 402, column: 5, scope: !1264)
!1267 = !DILocation(line: 406, column: 9, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 406, column: 9)
!1269 = !DILocation(line: 406, column: 9, scope: !1249)
!1270 = !DILocation(line: 407, column: 6, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 406, column: 31)
!1272 = !DILocation(line: 412, column: 5, scope: !1271)
!1273 = !DILocation(line: 414, column: 5, scope: !1249)
!1274 = !DILocation(line: 414, column: 17, scope: !1249)
!1275 = !DILocation(line: 414, column: 24, scope: !1249)
!1276 = !DILocation(line: 414, column: 30, scope: !1249)
!1277 = !DILocation(line: 416, column: 4, scope: !1249)
!1278 = !DILocation(line: 427, column: 4, scope: !1200)
!1279 = !DILocation(line: 427, column: 16, scope: !1200)
!1280 = !DILocation(line: 427, column: 23, scope: !1200)
!1281 = !DILocation(line: 427, column: 31, scope: !1200)
!1282 = !DILocation(line: 428, column: 29, scope: !1200)
!1283 = !DILocation(line: 428, column: 4, scope: !1200)
!1284 = !DILocation(line: 430, column: 4, scope: !1200)
!1285 = !DILocation(line: 435, column: 19, scope: !1195)
!1286 = !DILocation(line: 435, column: 29, scope: !1195)
!1287 = !DILocation(line: 435, column: 36, scope: !1195)
!1288 = !DILocation(line: 435, column: 16, scope: !1195)
!1289 = !DILocation(line: 436, column: 14, scope: !1195)
!1290 = !DILocation(line: 436, column: 24, scope: !1195)
!1291 = !DILocation(line: 436, column: 31, scope: !1195)
!1292 = !DILocation(line: 436, column: 12, scope: !1195)
!1293 = !DILocation(line: 440, column: 7, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 440, column: 7)
!1295 = !DILocation(line: 440, column: 19, scope: !1294)
!1296 = !DILocation(line: 440, column: 16, scope: !1294)
!1297 = !DILocation(line: 440, column: 7, scope: !1195)
!1298 = !DILocation(line: 441, column: 4, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 440, column: 31)
!1300 = !DILocation(line: 444, column: 4, scope: !1299)
!1301 = distinct !{!1301, !1191, !1302}
!1302 = !DILocation(line: 446, column: 2, scope: !1137)
!1303 = !DILocation(line: 454, column: 2, scope: !1137)
!1304 = !DILocation(line: 455, column: 1, scope: !1137)
!1305 = distinct !DISubprogram(name: "acpi_ev_execute_reg_method", scope: !3, file: !3, line: 517, type: !1306, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !56)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!15, !103, !17}
!1308 = !DILocalVariable(name: "region_obj", arg: 1, scope: !1305, file: !3, line: 517, type: !103)
!1309 = !DILocation(line: 517, column: 55, scope: !1305)
!1310 = !DILocalVariable(name: "function", arg: 2, scope: !1305, file: !3, line: 517, type: !17)
!1311 = !DILocation(line: 517, column: 71, scope: !1305)
!1312 = !DILocalVariable(name: "info", scope: !1305, file: !3, line: 519, type: !1313)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !203, line: 152, size: 704, elements: !1315)
!1315 = !{!1316, !1317, !1319, !1320, !1321, !1322, !1323, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !1314, file: !203, line: 155, baseType: !99, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !1314, file: !203, line: 156, baseType: !1318, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1314, file: !203, line: 157, baseType: !166, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1314, file: !203, line: 159, baseType: !99, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !1314, file: !203, line: 160, baseType: !103, size: 64, offset: 256)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !1314, file: !203, line: 161, baseType: !140, size: 64, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !1314, file: !203, line: 163, baseType: !1324, size: 64, offset: 384)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1326)
!1326 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !36, line: 351, size: 56, elements: !1327)
!1327 = !{!1328, !1334, !1343, !1351, !1360}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1326, file: !36, line: 352, baseType: !1329, size: 56)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !36, line: 295, size: 56, elements: !1330)
!1330 = !{!1331, !1332, !1333}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1329, file: !36, line: 296, baseType: !295, size: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !1329, file: !36, line: 297, baseType: !114, size: 16, offset: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !1329, file: !36, line: 298, baseType: !22, size: 8, offset: 48)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !1326, file: !36, line: 353, baseType: !1335, size: 56)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !36, line: 314, size: 56, elements: !1336)
!1336 = !{!1337, !1338, !1339, !1340, !1341, !1342}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1335, file: !36, line: 315, baseType: !22, size: 8)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1335, file: !36, line: 316, baseType: !22, size: 8, offset: 8)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1335, file: !36, line: 317, baseType: !22, size: 8, offset: 16)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !1335, file: !36, line: 318, baseType: !22, size: 8, offset: 24)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !1335, file: !36, line: 319, baseType: !22, size: 8, offset: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1335, file: !36, line: 320, baseType: !114, size: 16, offset: 40)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !1326, file: !36, line: 354, baseType: !1344, size: 56)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !36, line: 325, size: 56, elements: !1345)
!1345 = !{!1346, !1347, !1348, !1350}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1344, file: !36, line: 326, baseType: !22, size: 8)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1344, file: !36, line: 327, baseType: !22, size: 8, offset: 8)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1344, file: !36, line: 328, baseType: !1349, size: 32, offset: 16)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !296)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1344, file: !36, line: 329, baseType: !22, size: 8, offset: 48)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !1326, file: !36, line: 355, baseType: !1352, size: 56)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !36, line: 334, size: 56, elements: !1353)
!1353 = !{!1354, !1355, !1356, !1358, !1359}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1352, file: !36, line: 335, baseType: !22, size: 8)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1352, file: !36, line: 336, baseType: !22, size: 8, offset: 8)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1352, file: !36, line: 337, baseType: !1357, size: 16, offset: 16)
!1357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 16, elements: !536)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !1352, file: !36, line: 338, baseType: !22, size: 8, offset: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1352, file: !36, line: 339, baseType: !114, size: 16, offset: 40)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !1326, file: !36, line: 356, baseType: !1361, size: 56)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !36, line: 342, size: 56, elements: !1362)
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1368}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1361, file: !36, line: 343, baseType: !22, size: 8)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1361, file: !36, line: 344, baseType: !22, size: 8, offset: 8)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1361, file: !36, line: 345, baseType: !22, size: 8, offset: 16)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !1361, file: !36, line: 346, baseType: !22, size: 8, offset: 24)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !1361, file: !36, line: 347, baseType: !22, size: 8, offset: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1361, file: !36, line: 348, baseType: !114, size: 16, offset: 40)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !1314, file: !203, line: 164, baseType: !103, size: 64, offset: 448)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !1314, file: !203, line: 165, baseType: !103, size: 64, offset: 512)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !1314, file: !203, line: 167, baseType: !17, size: 32, offset: 576)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !1314, file: !203, line: 168, baseType: !17, size: 32, offset: 608)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1314, file: !203, line: 169, baseType: !114, size: 16, offset: 640)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !1314, file: !203, line: 170, baseType: !114, size: 16, offset: 656)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !1314, file: !203, line: 171, baseType: !22, size: 8, offset: 672)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !1314, file: !203, line: 172, baseType: !22, size: 8, offset: 680)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1314, file: !203, line: 173, baseType: !22, size: 8, offset: 688)
!1378 = !DILocation(line: 519, column: 29, scope: !1305)
!1379 = !DILocalVariable(name: "args", scope: !1305, file: !3, line: 520, type: !1380)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 192, elements: !128)
!1381 = !DILocation(line: 520, column: 29, scope: !1305)
!1382 = !DILocalVariable(name: "region_obj2", scope: !1305, file: !3, line: 521, type: !103)
!1383 = !DILocation(line: 521, column: 29, scope: !1305)
!1384 = !DILocalVariable(name: "reg_name_ptr", scope: !1305, file: !3, line: 522, type: !1385)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!1387 = !DILocation(line: 522, column: 19, scope: !1305)
!1388 = !DILocalVariable(name: "method_node", scope: !1305, file: !3, line: 524, type: !99)
!1389 = !DILocation(line: 524, column: 30, scope: !1305)
!1390 = !DILocalVariable(name: "node", scope: !1305, file: !3, line: 525, type: !99)
!1391 = !DILocation(line: 525, column: 30, scope: !1305)
!1392 = !DILocalVariable(name: "status", scope: !1305, file: !3, line: 526, type: !15)
!1393 = !DILocation(line: 526, column: 14, scope: !1305)
!1394 = !DILocation(line: 530, column: 7, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 530, column: 6)
!1396 = !DILocation(line: 530, column: 38, scope: !1395)
!1397 = !DILocation(line: 531, column: 6, scope: !1395)
!1398 = !DILocation(line: 531, column: 18, scope: !1395)
!1399 = !DILocation(line: 531, column: 25, scope: !1395)
!1400 = !DILocation(line: 531, column: 33, scope: !1395)
!1401 = !DILocation(line: 530, column: 6, scope: !1305)
!1402 = !DILocation(line: 532, column: 3, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 531, column: 42)
!1404 = !DILocation(line: 535, column: 45, scope: !1305)
!1405 = !DILocation(line: 535, column: 16, scope: !1305)
!1406 = !DILocation(line: 535, column: 14, scope: !1305)
!1407 = !DILocation(line: 536, column: 7, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 536, column: 6)
!1409 = !DILocation(line: 536, column: 6, scope: !1305)
!1410 = !DILocation(line: 537, column: 3, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 536, column: 20)
!1412 = !DILocation(line: 545, column: 9, scope: !1305)
!1413 = !DILocation(line: 545, column: 21, scope: !1305)
!1414 = !DILocation(line: 545, column: 28, scope: !1305)
!1415 = !DILocation(line: 545, column: 34, scope: !1305)
!1416 = !DILocation(line: 545, column: 7, scope: !1305)
!1417 = !DILocation(line: 547, column: 32, scope: !1305)
!1418 = !DILocation(line: 547, column: 31, scope: !1305)
!1419 = !DILocation(line: 547, column: 46, scope: !1305)
!1420 = !DILocation(line: 547, column: 6, scope: !1305)
!1421 = !DILocation(line: 546, column: 9, scope: !1305)
!1422 = !DILocation(line: 549, column: 6, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 549, column: 6)
!1424 = !DILocation(line: 549, column: 6, scope: !1305)
!1425 = !DILocation(line: 555, column: 35, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 549, column: 28)
!1427 = !DILocation(line: 555, column: 3, scope: !1426)
!1428 = !DILocation(line: 555, column: 16, scope: !1426)
!1429 = !DILocation(line: 555, column: 22, scope: !1426)
!1430 = !DILocation(line: 555, column: 33, scope: !1426)
!1431 = !DILocation(line: 556, column: 2, scope: !1426)
!1432 = !DILocation(line: 557, column: 6, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 557, column: 6)
!1434 = !DILocation(line: 557, column: 19, scope: !1433)
!1435 = !DILocation(line: 557, column: 25, scope: !1433)
!1436 = !DILocation(line: 557, column: 36, scope: !1433)
!1437 = !DILocation(line: 557, column: 6, scope: !1305)
!1438 = !DILocation(line: 558, column: 3, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 557, column: 45)
!1440 = !DILocation(line: 563, column: 7, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 563, column: 6)
!1442 = !DILocation(line: 563, column: 16, scope: !1441)
!1443 = !DILocation(line: 563, column: 36, scope: !1441)
!1444 = !DILocation(line: 564, column: 7, scope: !1441)
!1445 = !DILocation(line: 564, column: 19, scope: !1441)
!1446 = !DILocation(line: 564, column: 26, scope: !1441)
!1447 = !DILocation(line: 564, column: 32, scope: !1441)
!1448 = !DILocation(line: 564, column: 56, scope: !1441)
!1449 = !DILocation(line: 565, column: 7, scope: !1441)
!1450 = !DILocation(line: 565, column: 16, scope: !1441)
!1451 = !DILocation(line: 565, column: 39, scope: !1441)
!1452 = !DILocation(line: 566, column: 9, scope: !1441)
!1453 = !DILocation(line: 566, column: 21, scope: !1441)
!1454 = !DILocation(line: 566, column: 28, scope: !1441)
!1455 = !DILocation(line: 566, column: 34, scope: !1441)
!1456 = !DILocation(line: 563, column: 6, scope: !1305)
!1457 = !DILocation(line: 567, column: 3, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 566, column: 60)
!1459 = !DILocation(line: 572, column: 9, scope: !1305)
!1460 = !DILocation(line: 572, column: 7, scope: !1305)
!1461 = !DILocation(line: 573, column: 7, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 573, column: 6)
!1463 = !DILocation(line: 573, column: 6, scope: !1305)
!1464 = !DILocation(line: 574, column: 3, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 573, column: 13)
!1466 = !DILocation(line: 577, column: 22, scope: !1305)
!1467 = !DILocation(line: 577, column: 35, scope: !1305)
!1468 = !DILocation(line: 577, column: 41, scope: !1305)
!1469 = !DILocation(line: 577, column: 2, scope: !1305)
!1470 = !DILocation(line: 577, column: 8, scope: !1305)
!1471 = !DILocation(line: 577, column: 20, scope: !1305)
!1472 = !DILocation(line: 578, column: 2, scope: !1305)
!1473 = !DILocation(line: 578, column: 8, scope: !1305)
!1474 = !DILocation(line: 578, column: 26, scope: !1305)
!1475 = !DILocation(line: 579, column: 21, scope: !1305)
!1476 = !DILocation(line: 579, column: 2, scope: !1305)
!1477 = !DILocation(line: 579, column: 8, scope: !1305)
!1478 = !DILocation(line: 579, column: 19, scope: !1305)
!1479 = !DILocation(line: 580, column: 2, scope: !1305)
!1480 = !DILocation(line: 580, column: 8, scope: !1305)
!1481 = !DILocation(line: 580, column: 14, scope: !1305)
!1482 = !DILocation(line: 593, column: 41, scope: !1305)
!1483 = !DILocation(line: 593, column: 53, scope: !1305)
!1484 = !DILocation(line: 593, column: 60, scope: !1305)
!1485 = !DILocation(line: 593, column: 36, scope: !1305)
!1486 = !DILocation(line: 593, column: 6, scope: !1305)
!1487 = !DILocation(line: 592, column: 2, scope: !1305)
!1488 = !DILocation(line: 592, column: 10, scope: !1305)
!1489 = !DILocation(line: 594, column: 7, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 594, column: 6)
!1491 = !DILocation(line: 594, column: 6, scope: !1305)
!1492 = !DILocation(line: 595, column: 10, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 594, column: 16)
!1494 = !DILocation(line: 596, column: 3, scope: !1493)
!1495 = !DILocation(line: 599, column: 47, scope: !1305)
!1496 = !DILocation(line: 599, column: 42, scope: !1305)
!1497 = !DILocation(line: 599, column: 12, scope: !1305)
!1498 = !DILocation(line: 599, column: 2, scope: !1305)
!1499 = !DILocation(line: 599, column: 10, scope: !1305)
!1500 = !DILocation(line: 600, column: 7, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 600, column: 6)
!1502 = !DILocation(line: 600, column: 6, scope: !1305)
!1503 = !DILocation(line: 601, column: 10, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 600, column: 16)
!1505 = !DILocation(line: 602, column: 3, scope: !1504)
!1506 = !DILocation(line: 605, column: 2, scope: !1305)
!1507 = !DILocation(line: 605, column: 10, scope: !1305)
!1508 = !DILocation(line: 612, column: 28, scope: !1305)
!1509 = !DILocation(line: 612, column: 11, scope: !1305)
!1510 = !DILocation(line: 612, column: 9, scope: !1305)
!1511 = !DILocation(line: 613, column: 27, scope: !1305)
!1512 = !DILocation(line: 613, column: 2, scope: !1305)
!1513 = !DILocation(line: 615, column: 6, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 615, column: 6)
!1515 = !DILocation(line: 615, column: 6, scope: !1305)
!1516 = !DILocation(line: 616, column: 3, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 615, column: 28)
!1518 = !DILocation(line: 619, column: 6, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 619, column: 6)
!1520 = !DILocation(line: 619, column: 15, scope: !1519)
!1521 = !DILocation(line: 619, column: 6, scope: !1305)
!1522 = !DILocation(line: 620, column: 3, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 619, column: 36)
!1524 = !DILocation(line: 620, column: 15, scope: !1523)
!1525 = !DILocation(line: 620, column: 22, scope: !1523)
!1526 = !DILocation(line: 620, column: 28, scope: !1523)
!1527 = !DILocation(line: 621, column: 2, scope: !1523)
!1528 = !DILocation(line: 622, column: 3, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 621, column: 9)
!1530 = !DILocation(line: 622, column: 15, scope: !1529)
!1531 = !DILocation(line: 622, column: 22, scope: !1529)
!1532 = !DILocation(line: 622, column: 28, scope: !1529)
!1533 = !DILocation(line: 619, column: 18, scope: !1519)
!1534 = !DILabel(scope: !1305, name: "cleanup2", file: !3, line: 625)
!1535 = !DILocation(line: 625, column: 1, scope: !1305)
!1536 = !DILocation(line: 626, column: 27, scope: !1305)
!1537 = !DILocation(line: 626, column: 2, scope: !1305)
!1538 = !DILabel(scope: !1305, name: "cleanup1", file: !3, line: 628)
!1539 = !DILocation(line: 628, column: 1, scope: !1305)
!1540 = !DILocation(line: 629, column: 2, scope: !1305)
!1541 = !DILocation(line: 630, column: 2, scope: !1305)
!1542 = !DILocation(line: 631, column: 1, scope: !1305)
!1543 = distinct !DISubprogram(name: "acpi_ev_attach_region", scope: !3, file: !3, line: 473, type: !1544, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !56)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!15, !103, !103, !22}
!1546 = !DILocalVariable(name: "handler_obj", arg: 1, scope: !1543, file: !3, line: 473, type: !103)
!1547 = !DILocation(line: 473, column: 50, scope: !1543)
!1548 = !DILocalVariable(name: "region_obj", arg: 2, scope: !1543, file: !3, line: 474, type: !103)
!1549 = !DILocation(line: 474, column: 36, scope: !1543)
!1550 = !DILocalVariable(name: "acpi_ns_is_locked", arg: 3, scope: !1543, file: !3, line: 475, type: !22)
!1551 = !DILocation(line: 475, column: 12, scope: !1543)
!1552 = !DILocation(line: 482, column: 6, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 482, column: 6)
!1554 = !DILocation(line: 482, column: 18, scope: !1553)
!1555 = !DILocation(line: 482, column: 25, scope: !1553)
!1556 = !DILocation(line: 482, column: 6, scope: !1543)
!1557 = !DILocation(line: 483, column: 3, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 482, column: 34)
!1559 = !DILocation(line: 495, column: 28, scope: !1543)
!1560 = !DILocation(line: 495, column: 41, scope: !1543)
!1561 = !DILocation(line: 495, column: 55, scope: !1543)
!1562 = !DILocation(line: 495, column: 2, scope: !1543)
!1563 = !DILocation(line: 495, column: 14, scope: !1543)
!1564 = !DILocation(line: 495, column: 21, scope: !1543)
!1565 = !DILocation(line: 495, column: 26, scope: !1543)
!1566 = !DILocation(line: 496, column: 43, scope: !1543)
!1567 = !DILocation(line: 496, column: 2, scope: !1543)
!1568 = !DILocation(line: 496, column: 15, scope: !1543)
!1569 = !DILocation(line: 496, column: 29, scope: !1543)
!1570 = !DILocation(line: 496, column: 41, scope: !1543)
!1571 = !DILocation(line: 497, column: 31, scope: !1543)
!1572 = !DILocation(line: 497, column: 2, scope: !1543)
!1573 = !DILocation(line: 497, column: 14, scope: !1543)
!1574 = !DILocation(line: 497, column: 21, scope: !1543)
!1575 = !DILocation(line: 497, column: 29, scope: !1543)
!1576 = !DILocation(line: 498, column: 24, scope: !1543)
!1577 = !DILocation(line: 498, column: 2, scope: !1543)
!1578 = !DILocation(line: 500, column: 2, scope: !1543)
!1579 = !DILocation(line: 501, column: 1, scope: !1543)
!1580 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1581, file: !1581, line: 55, type: !1582, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !56)
!1581 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!14, !27}
!1584 = !DILocalVariable(name: "flags", arg: 1, scope: !1585, file: !1586, line: 162, type: !33)
!1585 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1586, file: !1586, line: 162, type: !1587, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !56)
!1586 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!1589, !33}
!1589 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1590 = !DILocation(line: 162, column: 67, scope: !1585, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 57, column: 23, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !1581, line: 57, column: 23)
!1593 = distinct !DILexicalBlock(scope: !1580, file: !1581, line: 57, column: 23)
!1594 = !DILocalVariable(name: "size", arg: 1, scope: !1580, file: !1581, line: 55, type: !27)
!1595 = !DILocation(line: 55, column: 55, scope: !1580)
!1596 = !DILocation(line: 57, column: 17, scope: !1580)
!1597 = !DILocalVariable(name: "_flags", scope: !1593, file: !1581, line: 57, type: !33)
!1598 = !DILocation(line: 57, column: 23, scope: !1593)
!1599 = !DILocalVariable(name: "__dummy", scope: !1600, file: !1581, line: 57, type: !33)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !1581, line: 57, column: 23)
!1601 = distinct !DILexicalBlock(scope: !1593, file: !1581, line: 57, column: 23)
!1602 = !DILocation(line: 57, column: 23, scope: !1600)
!1603 = !DILocalVariable(name: "__dummy2", scope: !1600, file: !1581, line: 57, type: !33)
!1604 = !DILocation(line: 57, column: 23, scope: !1601)
!1605 = !DILocalVariable(name: "__dummy", scope: !1606, file: !1581, line: 57, type: !33)
!1606 = distinct !DILexicalBlock(scope: !1592, file: !1581, line: 57, column: 23)
!1607 = !DILocation(line: 57, column: 23, scope: !1606)
!1608 = !DILocalVariable(name: "__dummy2", scope: !1606, file: !1581, line: 57, type: !33)
!1609 = !DILocation(line: 57, column: 23, scope: !1592)
!1610 = !DILocation(line: 164, column: 11, scope: !1585, inlinedAt: !1591)
!1611 = !DILocation(line: 164, column: 17, scope: !1585, inlinedAt: !1591)
!1612 = !DILocation(line: 164, column: 9, scope: !1585, inlinedAt: !1591)
!1613 = !DILocation(line: 57, column: 23, scope: !1580)
!1614 = !DILocation(line: 57, column: 9, scope: !1580)
!1615 = !DILocation(line: 57, column: 2, scope: !1580)
!1616 = distinct !DISubprogram(name: "acpi_os_free", scope: !1581, file: !1581, line: 60, type: !1617, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !56)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{null, !14}
!1619 = !DILocalVariable(name: "memory", arg: 1, scope: !1616, file: !1581, line: 60, type: !14)
!1620 = !DILocation(line: 60, column: 39, scope: !1616)
!1621 = !DILocation(line: 62, column: 8, scope: !1616)
!1622 = !DILocation(line: 62, column: 2, scope: !1616)
!1623 = !DILocation(line: 63, column: 1, scope: !1616)
!1624 = distinct !DISubprogram(name: "acpi_ev_reg_run", scope: !3, file: !3, line: 712, type: !784, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !56)
!1625 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !1624, file: !3, line: 712, type: !434)
!1626 = !DILocation(line: 712, column: 29, scope: !1624)
!1627 = !DILocalVariable(name: "level", arg: 2, scope: !1624, file: !3, line: 713, type: !17)
!1628 = !DILocation(line: 713, column: 7, scope: !1624)
!1629 = !DILocalVariable(name: "context", arg: 3, scope: !1624, file: !3, line: 713, type: !14)
!1630 = !DILocation(line: 713, column: 20, scope: !1624)
!1631 = !DILocalVariable(name: "return_value", arg: 4, scope: !1624, file: !3, line: 713, type: !786)
!1632 = !DILocation(line: 713, column: 36, scope: !1624)
!1633 = !DILocalVariable(name: "obj_desc", scope: !1624, file: !3, line: 715, type: !103)
!1634 = !DILocation(line: 715, column: 29, scope: !1624)
!1635 = !DILocalVariable(name: "node", scope: !1624, file: !3, line: 716, type: !99)
!1636 = !DILocation(line: 716, column: 30, scope: !1624)
!1637 = !DILocalVariable(name: "status", scope: !1624, file: !3, line: 717, type: !15)
!1638 = !DILocation(line: 717, column: 14, scope: !1624)
!1639 = !DILocalVariable(name: "info", scope: !1624, file: !3, line: 718, type: !34)
!1640 = !DILocation(line: 718, column: 29, scope: !1624)
!1641 = !DILocation(line: 720, column: 9, scope: !1624)
!1642 = !DILocation(line: 720, column: 7, scope: !1624)
!1643 = !DILocation(line: 724, column: 33, scope: !1624)
!1644 = !DILocation(line: 724, column: 9, scope: !1624)
!1645 = !DILocation(line: 724, column: 7, scope: !1624)
!1646 = !DILocation(line: 725, column: 7, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 725, column: 6)
!1648 = !DILocation(line: 725, column: 6, scope: !1624)
!1649 = !DILocation(line: 726, column: 3, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 725, column: 13)
!1651 = !DILocation(line: 733, column: 7, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 733, column: 6)
!1653 = !DILocation(line: 733, column: 13, scope: !1652)
!1654 = !DILocation(line: 733, column: 18, scope: !1652)
!1655 = !DILocation(line: 733, column: 39, scope: !1652)
!1656 = !DILocation(line: 733, column: 43, scope: !1652)
!1657 = !DILocation(line: 733, column: 51, scope: !1652)
!1658 = !DILocation(line: 733, column: 48, scope: !1652)
!1659 = !DILocation(line: 733, column: 6, scope: !1624)
!1660 = !DILocation(line: 734, column: 3, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 733, column: 72)
!1662 = !DILocation(line: 739, column: 41, scope: !1624)
!1663 = !DILocation(line: 739, column: 13, scope: !1624)
!1664 = !DILocation(line: 739, column: 11, scope: !1624)
!1665 = !DILocation(line: 740, column: 7, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 740, column: 6)
!1667 = !DILocation(line: 740, column: 6, scope: !1624)
!1668 = !DILocation(line: 744, column: 3, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 740, column: 17)
!1670 = !DILocation(line: 749, column: 6, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 749, column: 6)
!1672 = !DILocation(line: 749, column: 16, scope: !1671)
!1673 = !DILocation(line: 749, column: 23, scope: !1671)
!1674 = !DILocation(line: 749, column: 35, scope: !1671)
!1675 = !DILocation(line: 749, column: 41, scope: !1671)
!1676 = !DILocation(line: 749, column: 32, scope: !1671)
!1677 = !DILocation(line: 749, column: 6, scope: !1624)
!1678 = !DILocation(line: 753, column: 3, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 749, column: 51)
!1680 = !DILocation(line: 756, column: 2, scope: !1624)
!1681 = !DILocation(line: 756, column: 8, scope: !1624)
!1682 = !DILocation(line: 756, column: 21, scope: !1624)
!1683 = !DILocation(line: 757, column: 38, scope: !1624)
!1684 = !DILocation(line: 757, column: 48, scope: !1624)
!1685 = !DILocation(line: 757, column: 54, scope: !1624)
!1686 = !DILocation(line: 757, column: 11, scope: !1624)
!1687 = !DILocation(line: 757, column: 9, scope: !1624)
!1688 = !DILocation(line: 758, column: 10, scope: !1624)
!1689 = !DILocation(line: 758, column: 2, scope: !1624)
!1690 = !DILocation(line: 759, column: 1, scope: !1624)
!1691 = distinct !DISubprogram(name: "acpi_ev_orphan_ec_reg_method", scope: !3, file: !3, line: 787, type: !1692, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !56)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{null, !99}
!1694 = !DILocalVariable(name: "ec_device_node", arg: 1, scope: !1691, file: !3, line: 787, type: !99)
!1695 = !DILocation(line: 787, column: 58, scope: !1691)
!1696 = !DILocalVariable(name: "reg_method", scope: !1691, file: !3, line: 789, type: !434)
!1697 = !DILocation(line: 789, column: 14, scope: !1691)
!1698 = !DILocalVariable(name: "next_node", scope: !1691, file: !3, line: 790, type: !99)
!1699 = !DILocation(line: 790, column: 30, scope: !1691)
!1700 = !DILocalVariable(name: "status", scope: !1691, file: !3, line: 791, type: !15)
!1701 = !DILocation(line: 791, column: 14, scope: !1691)
!1702 = !DILocalVariable(name: "args", scope: !1691, file: !3, line: 792, type: !1703)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !16, line: 947, size: 128, elements: !1704)
!1704 = !{!1705, !1706}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1703, file: !16, line: 948, baseType: !17, size: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1703, file: !16, line: 949, baseType: !1707, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !16, line: 899, size: 192, elements: !1709)
!1709 = !{!1710, !1712, !1717, !1723, !1729, !1735, !1741, !1748}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1708, file: !16, line: 900, baseType: !1711, size: 32)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !16, line: 635, baseType: !17)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1708, file: !16, line: 904, baseType: !1713, size: 128)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1708, file: !16, line: 901, size: 128, elements: !1714)
!1714 = !{!1715, !1716}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1713, file: !16, line: 902, baseType: !1711, size: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1713, file: !16, line: 903, baseType: !28, size: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1708, file: !16, line: 910, baseType: !1718, size: 128)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1708, file: !16, line: 906, size: 128, elements: !1719)
!1719 = !{!1720, !1721, !1722}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1718, file: !16, line: 907, baseType: !1711, size: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1718, file: !16, line: 908, baseType: !17, size: 32, offset: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1718, file: !16, line: 909, baseType: !140, size: 64, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1708, file: !16, line: 916, baseType: !1724, size: 128)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1708, file: !16, line: 912, size: 128, elements: !1725)
!1725 = !{!1726, !1727, !1728}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1724, file: !16, line: 913, baseType: !1711, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1724, file: !16, line: 914, baseType: !17, size: 32, offset: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1724, file: !16, line: 915, baseType: !151, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !1708, file: !16, line: 922, baseType: !1730, size: 128)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1708, file: !16, line: 918, size: 128, elements: !1731)
!1731 = !{!1732, !1733, !1734}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1730, file: !16, line: 919, baseType: !1711, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1730, file: !16, line: 920, baseType: !17, size: 32, offset: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1730, file: !16, line: 921, baseType: !1707, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1708, file: !16, line: 928, baseType: !1736, size: 128)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1708, file: !16, line: 924, size: 128, elements: !1737)
!1737 = !{!1738, !1739, !1740}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1736, file: !16, line: 925, baseType: !1711, size: 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !1736, file: !16, line: 926, baseType: !1711, size: 32, offset: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1736, file: !16, line: 927, baseType: !434, size: 64, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !1708, file: !16, line: 935, baseType: !1742, size: 192)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1708, file: !16, line: 930, size: 192, elements: !1743)
!1743 = !{!1744, !1745, !1746, !1747}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1742, file: !16, line: 931, baseType: !1711, size: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1742, file: !16, line: 932, baseType: !17, size: 32, offset: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !1742, file: !16, line: 933, baseType: !642, size: 64, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !1742, file: !16, line: 934, baseType: !17, size: 32, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !1708, file: !16, line: 941, baseType: !1749, size: 96)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1708, file: !16, line: 937, size: 96, elements: !1750)
!1750 = !{!1751, !1752, !1753}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1749, file: !16, line: 938, baseType: !1711, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1749, file: !16, line: 939, baseType: !17, size: 32, offset: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1749, file: !16, line: 940, baseType: !17, size: 32, offset: 64)
!1754 = !DILocation(line: 792, column: 26, scope: !1691)
!1755 = !DILocalVariable(name: "objects", scope: !1691, file: !3, line: 793, type: !1756)
!1756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1708, size: 384, elements: !536)
!1757 = !DILocation(line: 793, column: 20, scope: !1691)
!1758 = !DILocation(line: 797, column: 7, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 797, column: 6)
!1760 = !DILocation(line: 797, column: 6, scope: !1691)
!1761 = !DILocation(line: 798, column: 3, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 797, column: 23)
!1763 = !DILocation(line: 803, column: 8, scope: !1691)
!1764 = !DILocation(line: 807, column: 27, scope: !1691)
!1765 = !DILocation(line: 807, column: 11, scope: !1691)
!1766 = !DILocation(line: 807, column: 9, scope: !1691)
!1767 = !DILocation(line: 808, column: 6, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 808, column: 6)
!1769 = !DILocation(line: 808, column: 6, scope: !1691)
!1770 = !DILocation(line: 809, column: 3, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1768, file: !3, line: 808, column: 28)
!1772 = !DILocation(line: 819, column: 36, scope: !1691)
!1773 = !DILocation(line: 819, column: 14, scope: !1691)
!1774 = !DILocation(line: 819, column: 12, scope: !1691)
!1775 = !DILocation(line: 820, column: 2, scope: !1691)
!1776 = !DILocation(line: 820, column: 9, scope: !1691)
!1777 = !DILocation(line: 821, column: 8, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 821, column: 7)
!1779 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 820, column: 20)
!1780 = !DILocation(line: 821, column: 19, scope: !1778)
!1781 = !DILocation(line: 821, column: 24, scope: !1778)
!1782 = !DILocation(line: 821, column: 45, scope: !1778)
!1783 = !DILocation(line: 822, column: 8, scope: !1778)
!1784 = !DILocation(line: 822, column: 19, scope: !1778)
!1785 = !DILocation(line: 822, column: 7, scope: !1778)
!1786 = !DILocation(line: 822, column: 27, scope: !1778)
!1787 = !DILocation(line: 823, column: 8, scope: !1778)
!1788 = !DILocation(line: 823, column: 19, scope: !1778)
!1789 = !DILocation(line: 823, column: 27, scope: !1778)
!1790 = !DILocation(line: 823, column: 34, scope: !1778)
!1791 = !DILocation(line: 823, column: 43, scope: !1778)
!1792 = !DILocation(line: 821, column: 7, scope: !1779)
!1793 = !DILocation(line: 824, column: 4, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 823, column: 66)
!1795 = !DILocation(line: 827, column: 37, scope: !1779)
!1796 = !DILocation(line: 827, column: 53, scope: !1779)
!1797 = !DILocation(line: 827, column: 15, scope: !1779)
!1798 = !DILocation(line: 827, column: 13, scope: !1779)
!1799 = distinct !{!1799, !1775, !1800}
!1800 = !DILocation(line: 828, column: 2, scope: !1691)
!1801 = !DILocation(line: 832, column: 7, scope: !1691)
!1802 = !DILocation(line: 832, column: 13, scope: !1691)
!1803 = !DILocation(line: 833, column: 17, scope: !1691)
!1804 = !DILocation(line: 833, column: 7, scope: !1691)
!1805 = !DILocation(line: 833, column: 15, scope: !1691)
!1806 = !DILocation(line: 834, column: 2, scope: !1691)
!1807 = !DILocation(line: 834, column: 13, scope: !1691)
!1808 = !DILocation(line: 834, column: 18, scope: !1691)
!1809 = !DILocation(line: 835, column: 2, scope: !1691)
!1810 = !DILocation(line: 835, column: 13, scope: !1691)
!1811 = !DILocation(line: 835, column: 21, scope: !1691)
!1812 = !DILocation(line: 835, column: 27, scope: !1691)
!1813 = !DILocation(line: 836, column: 2, scope: !1691)
!1814 = !DILocation(line: 836, column: 13, scope: !1691)
!1815 = !DILocation(line: 836, column: 18, scope: !1691)
!1816 = !DILocation(line: 837, column: 2, scope: !1691)
!1817 = !DILocation(line: 837, column: 13, scope: !1691)
!1818 = !DILocation(line: 837, column: 21, scope: !1691)
!1819 = !DILocation(line: 837, column: 27, scope: !1691)
!1820 = !DILocation(line: 839, column: 29, scope: !1691)
!1821 = !DILocation(line: 839, column: 8, scope: !1691)
!1822 = !DILocation(line: 839, column: 2, scope: !1691)
!1823 = !DILabel(scope: !1691, name: "exit", file: !3, line: 841)
!1824 = !DILocation(line: 841, column: 1, scope: !1691)
!1825 = !DILocation(line: 844, column: 8, scope: !1691)
!1826 = !DILocation(line: 845, column: 2, scope: !1691)
!1827 = !DILocation(line: 846, column: 1, scope: !1691)
!1828 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !1829, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !56)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!14, !1831, !31}
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 55, baseType: !1832)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1833, line: 72, baseType: !1834)
!1833 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1833, line: 16, baseType: !33)
!1835 = !DILocalVariable(name: "s", arg: 1, scope: !1836, file: !6, line: 445, type: !1839)
!1836 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !1837, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !56)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!14, !1839, !31, !1831}
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1841, line: 117, flags: DIFlagFwdDecl)
!1841 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1842 = !DILocation(line: 445, column: 72, scope: !1836, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 552, column: 10, scope: !1844, inlinedAt: !1847)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !6, line: 540, column: 34)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !6, line: 540, column: 6)
!1846 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !1829, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !56)
!1847 = distinct !DILocation(line: 664, column: 9, scope: !1828)
!1848 = !DILocalVariable(name: "flags", arg: 2, scope: !1836, file: !6, line: 446, type: !31)
!1849 = !DILocation(line: 446, column: 9, scope: !1836, inlinedAt: !1843)
!1850 = !DILocalVariable(name: "size", arg: 3, scope: !1836, file: !6, line: 446, type: !1831)
!1851 = !DILocation(line: 446, column: 23, scope: !1836, inlinedAt: !1843)
!1852 = !DILocalVariable(name: "ret", scope: !1836, file: !6, line: 448, type: !14)
!1853 = !DILocation(line: 448, column: 8, scope: !1836, inlinedAt: !1843)
!1854 = !DILocalVariable(name: "flags", arg: 1, scope: !1855, file: !6, line: 318, type: !31)
!1855 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !1856, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !56)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!5, !31}
!1858 = !DILocation(line: 318, column: 67, scope: !1855, inlinedAt: !1859)
!1859 = distinct !DILocation(line: 553, column: 20, scope: !1844, inlinedAt: !1847)
!1860 = !DILocalVariable(name: "size", arg: 1, scope: !1861, file: !6, line: 346, type: !1831)
!1861 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !1862, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !56)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!7, !1831}
!1864 = !DILocation(line: 346, column: 58, scope: !1861, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 547, column: 11, scope: !1844, inlinedAt: !1847)
!1866 = !DILocalVariable(name: "size", arg: 1, scope: !1867, file: !6, line: 472, type: !1831)
!1867 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !1868, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !56)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!14, !1831, !31, !7}
!1870 = !DILocation(line: 472, column: 28, scope: !1867, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 481, column: 9, scope: !1872, inlinedAt: !1873)
!1872 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !1829, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !56)
!1873 = distinct !DILocation(line: 545, column: 11, scope: !1874, inlinedAt: !1847)
!1874 = distinct !DILexicalBlock(scope: !1844, file: !6, line: 544, column: 7)
!1875 = !DILocalVariable(name: "flags", arg: 2, scope: !1867, file: !6, line: 472, type: !31)
!1876 = !DILocation(line: 472, column: 40, scope: !1867, inlinedAt: !1871)
!1877 = !DILocalVariable(name: "order", arg: 3, scope: !1867, file: !6, line: 472, type: !7)
!1878 = !DILocation(line: 472, column: 60, scope: !1867, inlinedAt: !1871)
!1879 = !DILocalVariable(name: "size", arg: 1, scope: !1872, file: !6, line: 478, type: !1831)
!1880 = !DILocation(line: 478, column: 51, scope: !1872, inlinedAt: !1873)
!1881 = !DILocalVariable(name: "flags", arg: 2, scope: !1872, file: !6, line: 478, type: !31)
!1882 = !DILocation(line: 478, column: 63, scope: !1872, inlinedAt: !1873)
!1883 = !DILocalVariable(name: "order", scope: !1872, file: !6, line: 480, type: !7)
!1884 = !DILocation(line: 480, column: 15, scope: !1872, inlinedAt: !1873)
!1885 = !DILocalVariable(name: "size", arg: 1, scope: !1846, file: !6, line: 538, type: !1831)
!1886 = !DILocation(line: 538, column: 45, scope: !1846, inlinedAt: !1847)
!1887 = !DILocalVariable(name: "flags", arg: 2, scope: !1846, file: !6, line: 538, type: !31)
!1888 = !DILocation(line: 538, column: 57, scope: !1846, inlinedAt: !1847)
!1889 = !DILocalVariable(name: "index", scope: !1844, file: !6, line: 542, type: !7)
!1890 = !DILocation(line: 542, column: 16, scope: !1844, inlinedAt: !1847)
!1891 = !DILocalVariable(name: "size", arg: 1, scope: !1828, file: !6, line: 662, type: !1831)
!1892 = !DILocation(line: 662, column: 36, scope: !1828)
!1893 = !DILocalVariable(name: "flags", arg: 2, scope: !1828, file: !6, line: 662, type: !31)
!1894 = !DILocation(line: 662, column: 48, scope: !1828)
!1895 = !DILocation(line: 664, column: 17, scope: !1828)
!1896 = !DILocation(line: 664, column: 23, scope: !1828)
!1897 = !DILocation(line: 664, column: 29, scope: !1828)
!1898 = !DILocation(line: 540, column: 27, scope: !1845, inlinedAt: !1847)
!1899 = !DILocation(line: 540, column: 6, scope: !1845, inlinedAt: !1847)
!1900 = !DILocation(line: 540, column: 6, scope: !1846, inlinedAt: !1847)
!1901 = !DILocation(line: 544, column: 7, scope: !1874, inlinedAt: !1847)
!1902 = !DILocation(line: 544, column: 12, scope: !1874, inlinedAt: !1847)
!1903 = !DILocation(line: 544, column: 7, scope: !1844, inlinedAt: !1847)
!1904 = !DILocation(line: 545, column: 25, scope: !1874, inlinedAt: !1847)
!1905 = !DILocation(line: 545, column: 31, scope: !1874, inlinedAt: !1847)
!1906 = !DILocation(line: 480, column: 33, scope: !1872, inlinedAt: !1873)
!1907 = !DILocation(line: 480, column: 23, scope: !1872, inlinedAt: !1873)
!1908 = !DILocation(line: 481, column: 29, scope: !1872, inlinedAt: !1873)
!1909 = !DILocation(line: 481, column: 35, scope: !1872, inlinedAt: !1873)
!1910 = !DILocation(line: 481, column: 42, scope: !1872, inlinedAt: !1873)
!1911 = !DILocation(line: 474, column: 23, scope: !1867, inlinedAt: !1871)
!1912 = !DILocation(line: 474, column: 29, scope: !1867, inlinedAt: !1871)
!1913 = !DILocation(line: 474, column: 36, scope: !1867, inlinedAt: !1871)
!1914 = !DILocation(line: 474, column: 9, scope: !1867, inlinedAt: !1871)
!1915 = !DILocation(line: 545, column: 4, scope: !1874, inlinedAt: !1847)
!1916 = !DILocation(line: 547, column: 25, scope: !1844, inlinedAt: !1847)
!1917 = !DILocation(line: 348, column: 7, scope: !1918, inlinedAt: !1865)
!1918 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 348, column: 6)
!1919 = !DILocation(line: 348, column: 6, scope: !1861, inlinedAt: !1865)
!1920 = !DILocation(line: 349, column: 3, scope: !1918, inlinedAt: !1865)
!1921 = !DILocation(line: 351, column: 6, scope: !1922, inlinedAt: !1865)
!1922 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 351, column: 6)
!1923 = !DILocation(line: 351, column: 11, scope: !1922, inlinedAt: !1865)
!1924 = !DILocation(line: 351, column: 6, scope: !1861, inlinedAt: !1865)
!1925 = !DILocation(line: 352, column: 3, scope: !1922, inlinedAt: !1865)
!1926 = !DILocation(line: 354, column: 32, scope: !1927, inlinedAt: !1865)
!1927 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 354, column: 6)
!1928 = !DILocation(line: 354, column: 37, scope: !1927, inlinedAt: !1865)
!1929 = !DILocation(line: 354, column: 42, scope: !1927, inlinedAt: !1865)
!1930 = !DILocation(line: 354, column: 45, scope: !1927, inlinedAt: !1865)
!1931 = !DILocation(line: 354, column: 50, scope: !1927, inlinedAt: !1865)
!1932 = !DILocation(line: 354, column: 6, scope: !1861, inlinedAt: !1865)
!1933 = !DILocation(line: 355, column: 3, scope: !1927, inlinedAt: !1865)
!1934 = !DILocation(line: 356, column: 32, scope: !1935, inlinedAt: !1865)
!1935 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 356, column: 6)
!1936 = !DILocation(line: 356, column: 37, scope: !1935, inlinedAt: !1865)
!1937 = !DILocation(line: 356, column: 43, scope: !1935, inlinedAt: !1865)
!1938 = !DILocation(line: 356, column: 46, scope: !1935, inlinedAt: !1865)
!1939 = !DILocation(line: 356, column: 51, scope: !1935, inlinedAt: !1865)
!1940 = !DILocation(line: 356, column: 6, scope: !1861, inlinedAt: !1865)
!1941 = !DILocation(line: 357, column: 3, scope: !1935, inlinedAt: !1865)
!1942 = !DILocation(line: 358, column: 6, scope: !1943, inlinedAt: !1865)
!1943 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 358, column: 6)
!1944 = !DILocation(line: 358, column: 11, scope: !1943, inlinedAt: !1865)
!1945 = !DILocation(line: 358, column: 6, scope: !1861, inlinedAt: !1865)
!1946 = !DILocation(line: 358, column: 26, scope: !1943, inlinedAt: !1865)
!1947 = !DILocation(line: 359, column: 6, scope: !1948, inlinedAt: !1865)
!1948 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 359, column: 6)
!1949 = !DILocation(line: 359, column: 11, scope: !1948, inlinedAt: !1865)
!1950 = !DILocation(line: 359, column: 6, scope: !1861, inlinedAt: !1865)
!1951 = !DILocation(line: 359, column: 26, scope: !1948, inlinedAt: !1865)
!1952 = !DILocation(line: 360, column: 6, scope: !1953, inlinedAt: !1865)
!1953 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 360, column: 6)
!1954 = !DILocation(line: 360, column: 11, scope: !1953, inlinedAt: !1865)
!1955 = !DILocation(line: 360, column: 6, scope: !1861, inlinedAt: !1865)
!1956 = !DILocation(line: 360, column: 26, scope: !1953, inlinedAt: !1865)
!1957 = !DILocation(line: 361, column: 6, scope: !1958, inlinedAt: !1865)
!1958 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 361, column: 6)
!1959 = !DILocation(line: 361, column: 11, scope: !1958, inlinedAt: !1865)
!1960 = !DILocation(line: 361, column: 6, scope: !1861, inlinedAt: !1865)
!1961 = !DILocation(line: 361, column: 26, scope: !1958, inlinedAt: !1865)
!1962 = !DILocation(line: 362, column: 6, scope: !1963, inlinedAt: !1865)
!1963 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 362, column: 6)
!1964 = !DILocation(line: 362, column: 11, scope: !1963, inlinedAt: !1865)
!1965 = !DILocation(line: 362, column: 6, scope: !1861, inlinedAt: !1865)
!1966 = !DILocation(line: 362, column: 26, scope: !1963, inlinedAt: !1865)
!1967 = !DILocation(line: 363, column: 6, scope: !1968, inlinedAt: !1865)
!1968 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 363, column: 6)
!1969 = !DILocation(line: 363, column: 11, scope: !1968, inlinedAt: !1865)
!1970 = !DILocation(line: 363, column: 6, scope: !1861, inlinedAt: !1865)
!1971 = !DILocation(line: 363, column: 26, scope: !1968, inlinedAt: !1865)
!1972 = !DILocation(line: 364, column: 6, scope: !1973, inlinedAt: !1865)
!1973 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 364, column: 6)
!1974 = !DILocation(line: 364, column: 11, scope: !1973, inlinedAt: !1865)
!1975 = !DILocation(line: 364, column: 6, scope: !1861, inlinedAt: !1865)
!1976 = !DILocation(line: 364, column: 26, scope: !1973, inlinedAt: !1865)
!1977 = !DILocation(line: 365, column: 6, scope: !1978, inlinedAt: !1865)
!1978 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 365, column: 6)
!1979 = !DILocation(line: 365, column: 11, scope: !1978, inlinedAt: !1865)
!1980 = !DILocation(line: 365, column: 6, scope: !1861, inlinedAt: !1865)
!1981 = !DILocation(line: 365, column: 26, scope: !1978, inlinedAt: !1865)
!1982 = !DILocation(line: 366, column: 6, scope: !1983, inlinedAt: !1865)
!1983 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 366, column: 6)
!1984 = !DILocation(line: 366, column: 11, scope: !1983, inlinedAt: !1865)
!1985 = !DILocation(line: 366, column: 6, scope: !1861, inlinedAt: !1865)
!1986 = !DILocation(line: 366, column: 26, scope: !1983, inlinedAt: !1865)
!1987 = !DILocation(line: 367, column: 6, scope: !1988, inlinedAt: !1865)
!1988 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 367, column: 6)
!1989 = !DILocation(line: 367, column: 11, scope: !1988, inlinedAt: !1865)
!1990 = !DILocation(line: 367, column: 6, scope: !1861, inlinedAt: !1865)
!1991 = !DILocation(line: 367, column: 26, scope: !1988, inlinedAt: !1865)
!1992 = !DILocation(line: 368, column: 6, scope: !1993, inlinedAt: !1865)
!1993 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 368, column: 6)
!1994 = !DILocation(line: 368, column: 11, scope: !1993, inlinedAt: !1865)
!1995 = !DILocation(line: 368, column: 6, scope: !1861, inlinedAt: !1865)
!1996 = !DILocation(line: 368, column: 26, scope: !1993, inlinedAt: !1865)
!1997 = !DILocation(line: 369, column: 6, scope: !1998, inlinedAt: !1865)
!1998 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 369, column: 6)
!1999 = !DILocation(line: 369, column: 11, scope: !1998, inlinedAt: !1865)
!2000 = !DILocation(line: 369, column: 6, scope: !1861, inlinedAt: !1865)
!2001 = !DILocation(line: 369, column: 26, scope: !1998, inlinedAt: !1865)
!2002 = !DILocation(line: 370, column: 6, scope: !2003, inlinedAt: !1865)
!2003 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 370, column: 6)
!2004 = !DILocation(line: 370, column: 11, scope: !2003, inlinedAt: !1865)
!2005 = !DILocation(line: 370, column: 6, scope: !1861, inlinedAt: !1865)
!2006 = !DILocation(line: 370, column: 26, scope: !2003, inlinedAt: !1865)
!2007 = !DILocation(line: 371, column: 6, scope: !2008, inlinedAt: !1865)
!2008 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 371, column: 6)
!2009 = !DILocation(line: 371, column: 11, scope: !2008, inlinedAt: !1865)
!2010 = !DILocation(line: 371, column: 6, scope: !1861, inlinedAt: !1865)
!2011 = !DILocation(line: 371, column: 26, scope: !2008, inlinedAt: !1865)
!2012 = !DILocation(line: 372, column: 6, scope: !2013, inlinedAt: !1865)
!2013 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 372, column: 6)
!2014 = !DILocation(line: 372, column: 11, scope: !2013, inlinedAt: !1865)
!2015 = !DILocation(line: 372, column: 6, scope: !1861, inlinedAt: !1865)
!2016 = !DILocation(line: 372, column: 26, scope: !2013, inlinedAt: !1865)
!2017 = !DILocation(line: 373, column: 6, scope: !2018, inlinedAt: !1865)
!2018 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 373, column: 6)
!2019 = !DILocation(line: 373, column: 11, scope: !2018, inlinedAt: !1865)
!2020 = !DILocation(line: 373, column: 6, scope: !1861, inlinedAt: !1865)
!2021 = !DILocation(line: 373, column: 26, scope: !2018, inlinedAt: !1865)
!2022 = !DILocation(line: 374, column: 6, scope: !2023, inlinedAt: !1865)
!2023 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 374, column: 6)
!2024 = !DILocation(line: 374, column: 11, scope: !2023, inlinedAt: !1865)
!2025 = !DILocation(line: 374, column: 6, scope: !1861, inlinedAt: !1865)
!2026 = !DILocation(line: 374, column: 26, scope: !2023, inlinedAt: !1865)
!2027 = !DILocation(line: 375, column: 6, scope: !2028, inlinedAt: !1865)
!2028 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 375, column: 6)
!2029 = !DILocation(line: 375, column: 11, scope: !2028, inlinedAt: !1865)
!2030 = !DILocation(line: 375, column: 6, scope: !1861, inlinedAt: !1865)
!2031 = !DILocation(line: 375, column: 27, scope: !2028, inlinedAt: !1865)
!2032 = !DILocation(line: 376, column: 6, scope: !2033, inlinedAt: !1865)
!2033 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 376, column: 6)
!2034 = !DILocation(line: 376, column: 11, scope: !2033, inlinedAt: !1865)
!2035 = !DILocation(line: 376, column: 6, scope: !1861, inlinedAt: !1865)
!2036 = !DILocation(line: 376, column: 32, scope: !2033, inlinedAt: !1865)
!2037 = !DILocation(line: 377, column: 6, scope: !2038, inlinedAt: !1865)
!2038 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 377, column: 6)
!2039 = !DILocation(line: 377, column: 11, scope: !2038, inlinedAt: !1865)
!2040 = !DILocation(line: 377, column: 6, scope: !1861, inlinedAt: !1865)
!2041 = !DILocation(line: 377, column: 32, scope: !2038, inlinedAt: !1865)
!2042 = !DILocation(line: 378, column: 6, scope: !2043, inlinedAt: !1865)
!2043 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 378, column: 6)
!2044 = !DILocation(line: 378, column: 11, scope: !2043, inlinedAt: !1865)
!2045 = !DILocation(line: 378, column: 6, scope: !1861, inlinedAt: !1865)
!2046 = !DILocation(line: 378, column: 32, scope: !2043, inlinedAt: !1865)
!2047 = !DILocation(line: 379, column: 6, scope: !2048, inlinedAt: !1865)
!2048 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 379, column: 6)
!2049 = !DILocation(line: 379, column: 11, scope: !2048, inlinedAt: !1865)
!2050 = !DILocation(line: 379, column: 6, scope: !1861, inlinedAt: !1865)
!2051 = !DILocation(line: 379, column: 33, scope: !2048, inlinedAt: !1865)
!2052 = !DILocation(line: 380, column: 6, scope: !2053, inlinedAt: !1865)
!2053 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 380, column: 6)
!2054 = !DILocation(line: 380, column: 11, scope: !2053, inlinedAt: !1865)
!2055 = !DILocation(line: 380, column: 6, scope: !1861, inlinedAt: !1865)
!2056 = !DILocation(line: 380, column: 33, scope: !2053, inlinedAt: !1865)
!2057 = !DILocation(line: 381, column: 6, scope: !2058, inlinedAt: !1865)
!2058 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 381, column: 6)
!2059 = !DILocation(line: 381, column: 11, scope: !2058, inlinedAt: !1865)
!2060 = !DILocation(line: 381, column: 6, scope: !1861, inlinedAt: !1865)
!2061 = !DILocation(line: 381, column: 33, scope: !2058, inlinedAt: !1865)
!2062 = !DILocation(line: 382, column: 2, scope: !2063, inlinedAt: !1865)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !6, line: 382, column: 2)
!2064 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 382, column: 2)
!2065 = !{i32 -2144095358, i32 -2144095329, i32 -2144095283, i32 -2144095225, i32 -2144095171, i32 -2144095117, i32 -2144095062, i32 -2144095031}
!2066 = !DILocation(line: 382, column: 2, scope: !2067, inlinedAt: !1865)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !6, line: 382, column: 2)
!2068 = distinct !DILexicalBlock(scope: !2064, file: !6, line: 382, column: 2)
!2069 = !{i32 -2144094588, i32 -2144094581, i32 -2144094527, i32 -2144094496, i32 -2144094466}
!2070 = !DILocation(line: 382, column: 2, scope: !2068, inlinedAt: !1865)
!2071 = !DILocation(line: 386, column: 1, scope: !1861, inlinedAt: !1865)
!2072 = !DILocation(line: 547, column: 9, scope: !1844, inlinedAt: !1847)
!2073 = !DILocation(line: 549, column: 8, scope: !2074, inlinedAt: !1847)
!2074 = distinct !DILexicalBlock(scope: !1844, file: !6, line: 549, column: 7)
!2075 = !DILocation(line: 549, column: 7, scope: !1844, inlinedAt: !1847)
!2076 = !DILocation(line: 550, column: 4, scope: !2074, inlinedAt: !1847)
!2077 = !DILocation(line: 553, column: 33, scope: !1844, inlinedAt: !1847)
!2078 = !DILocation(line: 325, column: 6, scope: !2079, inlinedAt: !1859)
!2079 = distinct !DILexicalBlock(scope: !1855, file: !6, line: 325, column: 6)
!2080 = !DILocation(line: 325, column: 6, scope: !1855, inlinedAt: !1859)
!2081 = !DILocation(line: 326, column: 3, scope: !2079, inlinedAt: !1859)
!2082 = !DILocation(line: 332, column: 9, scope: !1855, inlinedAt: !1859)
!2083 = !DILocation(line: 332, column: 15, scope: !1855, inlinedAt: !1859)
!2084 = !DILocation(line: 332, column: 2, scope: !1855, inlinedAt: !1859)
!2085 = !DILocation(line: 336, column: 1, scope: !1855, inlinedAt: !1859)
!2086 = !DILocation(line: 553, column: 5, scope: !1844, inlinedAt: !1847)
!2087 = !DILocation(line: 553, column: 41, scope: !1844, inlinedAt: !1847)
!2088 = !DILocation(line: 554, column: 5, scope: !1844, inlinedAt: !1847)
!2089 = !DILocation(line: 554, column: 12, scope: !1844, inlinedAt: !1847)
!2090 = !DILocation(line: 448, column: 31, scope: !1836, inlinedAt: !1843)
!2091 = !DILocation(line: 448, column: 34, scope: !1836, inlinedAt: !1843)
!2092 = !DILocation(line: 448, column: 14, scope: !1836, inlinedAt: !1843)
!2093 = !DILocation(line: 450, column: 22, scope: !1836, inlinedAt: !1843)
!2094 = !DILocation(line: 450, column: 25, scope: !1836, inlinedAt: !1843)
!2095 = !DILocation(line: 450, column: 30, scope: !1836, inlinedAt: !1843)
!2096 = !DILocation(line: 450, column: 36, scope: !1836, inlinedAt: !1843)
!2097 = !DILocation(line: 450, column: 8, scope: !1836, inlinedAt: !1843)
!2098 = !DILocation(line: 450, column: 6, scope: !1836, inlinedAt: !1843)
!2099 = !DILocation(line: 451, column: 9, scope: !1836, inlinedAt: !1843)
!2100 = !DILocation(line: 552, column: 3, scope: !1844, inlinedAt: !1847)
!2101 = !DILocation(line: 557, column: 19, scope: !1846, inlinedAt: !1847)
!2102 = !DILocation(line: 557, column: 25, scope: !1846, inlinedAt: !1847)
!2103 = !DILocation(line: 557, column: 9, scope: !1846, inlinedAt: !1847)
!2104 = !DILocation(line: 557, column: 2, scope: !1846, inlinedAt: !1847)
!2105 = !DILocation(line: 558, column: 1, scope: !1846, inlinedAt: !1847)
!2106 = !DILocation(line: 664, column: 2, scope: !1828)
!2107 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2108, file: !2108, line: 646, type: !2109, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !56)
!2108 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!33}
!2111 = !DILocalVariable(name: "__ret", scope: !2112, file: !2108, line: 648, type: !33)
!2112 = distinct !DILexicalBlock(scope: !2107, file: !2108, line: 648, column: 9)
!2113 = !DILocation(line: 648, column: 9, scope: !2112)
!2114 = !DILocalVariable(name: "__edi", scope: !2112, file: !2108, line: 648, type: !33)
!2115 = !DILocalVariable(name: "__esi", scope: !2112, file: !2108, line: 648, type: !33)
!2116 = !DILocalVariable(name: "__edx", scope: !2112, file: !2108, line: 648, type: !33)
!2117 = !DILocalVariable(name: "__ecx", scope: !2112, file: !2108, line: 648, type: !33)
!2118 = !DILocalVariable(name: "__eax", scope: !2112, file: !2108, line: 648, type: !33)
!2119 = !DILocation(line: 648, column: 9, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !2108, line: 648, column: 9)
!2121 = distinct !DILexicalBlock(scope: !2112, file: !2108, line: 648, column: 9)
!2122 = !{i32 -2145768964, i32 -2145766649, i32 -2145766415, i32 -2145766364, i32 -2145766336, i32 -2145766311, i32 -2145766627, i32 -2145766614, i32 -2145766176, i32 -2145766057, i32 -2145766522, i32 -2145766495, i32 -2145766467, i32 -2145766437}
!2123 = !DILocalVariable(name: "__mask", scope: !2124, file: !2108, line: 648, type: !33)
!2124 = distinct !DILexicalBlock(scope: !2120, file: !2108, line: 648, column: 9)
!2125 = !DILocation(line: 648, column: 9, scope: !2124)
!2126 = !DILocation(line: 648, column: 9, scope: !2121)
!2127 = !DILocation(line: 648, column: 2, scope: !2107)
!2128 = distinct !DISubprogram(name: "get_order", scope: !2129, file: !2129, line: 29, type: !1587, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !56)
!2129 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2130 = !DILocalVariable(name: "x", arg: 1, scope: !2131, file: !2132, line: 366, type: !29)
!2131 = distinct !DISubprogram(name: "fls64", scope: !2132, file: !2132, line: 366, type: !2133, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !56)
!2132 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!1589, !29}
!2135 = !DILocation(line: 366, column: 40, scope: !2131, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 46, column: 9, scope: !2128)
!2137 = !DILocalVariable(name: "bitpos", scope: !2131, file: !2132, line: 368, type: !1589)
!2138 = !DILocation(line: 368, column: 6, scope: !2131, inlinedAt: !2136)
!2139 = !DILocalVariable(name: "size", arg: 1, scope: !2128, file: !2129, line: 29, type: !33)
!2140 = !DILocation(line: 29, column: 63, scope: !2128)
!2141 = !DILocation(line: 31, column: 27, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2128, file: !2129, line: 31, column: 6)
!2143 = !DILocation(line: 31, column: 6, scope: !2142)
!2144 = !DILocation(line: 31, column: 6, scope: !2128)
!2145 = !DILocation(line: 32, column: 8, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !2129, line: 32, column: 7)
!2147 = distinct !DILexicalBlock(scope: !2142, file: !2129, line: 31, column: 34)
!2148 = !DILocation(line: 32, column: 7, scope: !2147)
!2149 = !DILocation(line: 33, column: 4, scope: !2146)
!2150 = !DILocation(line: 35, column: 7, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2147, file: !2129, line: 35, column: 7)
!2152 = !DILocation(line: 35, column: 12, scope: !2151)
!2153 = !DILocation(line: 35, column: 7, scope: !2147)
!2154 = !DILocation(line: 36, column: 4, scope: !2151)
!2155 = !DILocation(line: 38, column: 10, scope: !2147)
!2156 = !DILocation(line: 38, column: 28, scope: !2147)
!2157 = !DILocation(line: 38, column: 41, scope: !2147)
!2158 = !DILocation(line: 38, column: 3, scope: !2147)
!2159 = !DILocation(line: 41, column: 6, scope: !2128)
!2160 = !DILocation(line: 42, column: 7, scope: !2128)
!2161 = !DILocation(line: 46, column: 15, scope: !2128)
!2162 = !DILocation(line: 374, column: 2, scope: !2131, inlinedAt: !2136)
!2163 = !DILocation(line: 376, column: 14, scope: !2131, inlinedAt: !2136)
!2164 = !{i32 675844}
!2165 = !DILocation(line: 377, column: 9, scope: !2131, inlinedAt: !2136)
!2166 = !DILocation(line: 377, column: 16, scope: !2131, inlinedAt: !2136)
!2167 = !DILocation(line: 46, column: 2, scope: !2128)
!2168 = !DILocation(line: 48, column: 1, scope: !2128)
!2169 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2170, file: !2170, line: 30, type: !2171, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !56)
!2170 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!1589, !28}
!2173 = !DILocation(line: 366, column: 40, scope: !2131, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 32, column: 9, scope: !2169)
!2175 = !DILocation(line: 368, column: 6, scope: !2131, inlinedAt: !2174)
!2176 = !DILocalVariable(name: "n", arg: 1, scope: !2169, file: !2170, line: 30, type: !28)
!2177 = !DILocation(line: 30, column: 21, scope: !2169)
!2178 = !DILocation(line: 32, column: 15, scope: !2169)
!2179 = !DILocation(line: 374, column: 2, scope: !2131, inlinedAt: !2174)
!2180 = !DILocation(line: 376, column: 14, scope: !2131, inlinedAt: !2174)
!2181 = !DILocation(line: 377, column: 9, scope: !2131, inlinedAt: !2174)
!2182 = !DILocation(line: 377, column: 16, scope: !2131, inlinedAt: !2174)
!2183 = !DILocation(line: 32, column: 18, scope: !2169)
!2184 = !DILocation(line: 32, column: 2, scope: !2169)
!2185 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2186, file: !2186, line: 137, type: !2187, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !56)
!2186 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!14, !1839, !2189, !1831, !31}
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2191 = !DILocalVariable(name: "s", arg: 1, scope: !2185, file: !2186, line: 137, type: !1839)
!2192 = !DILocation(line: 137, column: 54, scope: !2185)
!2193 = !DILocalVariable(name: "object", arg: 2, scope: !2185, file: !2186, line: 137, type: !2189)
!2194 = !DILocation(line: 137, column: 69, scope: !2185)
!2195 = !DILocalVariable(name: "size", arg: 3, scope: !2185, file: !2186, line: 138, type: !1831)
!2196 = !DILocation(line: 138, column: 12, scope: !2185)
!2197 = !DILocalVariable(name: "flags", arg: 4, scope: !2185, file: !2186, line: 138, type: !31)
!2198 = !DILocation(line: 138, column: 24, scope: !2185)
!2199 = !DILocation(line: 140, column: 17, scope: !2185)
!2200 = !DILocation(line: 140, column: 2, scope: !2185)
