; ModuleID = '../bcout/drivers/acpi/acpica/nsinit.llvm.bc'
source_filename = "drivers/acpi/acpica/nsinit.c"
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
%struct.acpi_init_walk_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_device_walk_info = type { %struct.acpi_table_desc*, %struct.acpi_evaluate_info*, i32, i32, i32 }
%struct.acpi_table_desc = type { i64, %struct.acpi_table_header*, i32, %union.acpi_name_union, i16, i8, i16 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_evaluate_info = type { %struct.acpi_namespace_node*, i8*, %union.acpi_operand_object**, %struct.acpi_namespace_node*, %union.acpi_operand_object*, i8*, %union.acpi_predefined_info*, %union.acpi_operand_object*, %union.acpi_operand_object*, i32, i32, i16, i16, i8, i8, i8 }
%union.acpi_predefined_info = type { %struct.acpi_name_info }
%struct.acpi_name_info = type <{ [4 x i8], i16, i8 }>
%struct.acpi_object_package = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i32, i32 }

@_acpi_module_name = internal constant [7 x i8] c"nsinit\00", align 1, !dbg !0
@.str = private unnamed_addr constant [21 x i8] c"During WalkNamespace\00", align 1
@acpi_gbl_root_node = external dso_local global %struct.acpi_namespace_node*, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"_INI\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\\_SB\00", align 1
@acpi_gbl_osi_data = external dso_local global i8, align 1
@acpi_gbl_truncate_io_addresses = external dso_local global i8, align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"During device initialization\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"Opcode is not deferred [%4.4s] (%s)\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Could not execute arguments for [%4.4s] (%s)\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"_SB_\00", align 1
@acpi_gbl_init_handler = external dso_local global i32 (i8*, i32)*, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_initialize_objects() #0 !dbg !920 {
entry:
  %status = alloca i32, align 4
  %info = alloca %struct.acpi_init_walk_info, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !924, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.declare(metadata %struct.acpi_init_walk_info* %info, metadata !926, metadata !DIExpression()), !dbg !927
  %0 = bitcast %struct.acpi_init_walk_info* %info to i8*, !dbg !928
  call void @llvm.memset.p0i8.i64(i8* align 4 %0, i8 0, i64 64, i1 false), !dbg !928
  %1 = bitcast %struct.acpi_init_walk_info* %info to i8*, !dbg !929
  %call = call i32 @acpi_walk_namespace(i32 0, i8* inttoptr (i64 -1 to i8*), i32 -1, i32 (i8*, i32, i8*, i8**)* @acpi_ns_init_one_object, i32 (i8*, i32, i8*, i8**)* null, i8* %1, i8** null) #9, !dbg !930
  store i32 %call, i32* %status, align 4, !dbg !931
  %2 = load i32, i32* %status, align 4, !dbg !932
  %tobool = icmp ne i32 %2, 0, !dbg !932
  br i1 %tobool, label %if.then, label %if.end, !dbg !934

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !935
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 75, i32 %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0)) #9, !dbg !935
  br label %if.end, !dbg !937

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !938
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_walk_namespace(i32, i8*, i32, i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)*, i8*, i8**) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ns_init_one_object(i8* %obj_handle, i32 %level, i8* %context, i8** %return_value) #0 !dbg !939 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca i8*, align 8
  %level.addr = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %return_value.addr = alloca i8**, align 8
  %type = alloca i32, align 4
  %status = alloca i32, align 4
  %info = alloca %struct.acpi_init_walk_info*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  store i8* %obj_handle, i8** %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %obj_handle.addr, metadata !940, metadata !DIExpression()), !dbg !941
  store i32 %level, i32* %level.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %level.addr, metadata !942, metadata !DIExpression()), !dbg !943
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !944, metadata !DIExpression()), !dbg !945
  store i8** %return_value, i8*** %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %return_value.addr, metadata !946, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.declare(metadata i32* %type, metadata !948, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.declare(metadata i32* %status, metadata !951, metadata !DIExpression()), !dbg !952
  store i32 0, i32* %status, align 4, !dbg !952
  call void @llvm.dbg.declare(metadata %struct.acpi_init_walk_info** %info, metadata !953, metadata !DIExpression()), !dbg !954
  %0 = load i8*, i8** %context.addr, align 8, !dbg !955
  %1 = bitcast i8* %0 to %struct.acpi_init_walk_info*, !dbg !956
  store %struct.acpi_init_walk_info* %1, %struct.acpi_init_walk_info** %info, align 8, !dbg !954
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !957, metadata !DIExpression()), !dbg !958
  %2 = load i8*, i8** %obj_handle.addr, align 8, !dbg !959
  %3 = bitcast i8* %2 to %struct.acpi_namespace_node*, !dbg !960
  store %struct.acpi_namespace_node* %3, %struct.acpi_namespace_node** %node, align 8, !dbg !958
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !961, metadata !DIExpression()), !dbg !962
  %4 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %info, align 8, !dbg !963
  %object_count = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %4, i32 0, i32 1, !dbg !964
  %5 = load i32, i32* %object_count, align 4, !dbg !965
  %inc = add i32 %5, 1, !dbg !965
  store i32 %inc, i32* %object_count, align 4, !dbg !965
  %6 = load i8*, i8** %obj_handle.addr, align 8, !dbg !966
  %7 = bitcast i8* %6 to %struct.acpi_namespace_node*, !dbg !966
  %call = call i32 @acpi_ns_get_type(%struct.acpi_namespace_node* %7) #9, !dbg !967
  store i32 %call, i32* %type, align 4, !dbg !968
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !969
  %call1 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %8) #9, !dbg !970
  store %union.acpi_operand_object* %call1, %union.acpi_operand_object** %obj_desc, align 8, !dbg !971
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !972
  %tobool = icmp ne %union.acpi_operand_object* %9, null, !dbg !972
  br i1 %tobool, label %if.end, label %if.then, !dbg !974

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !975
  br label %return, !dbg !975

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %type, align 4, !dbg !977
  switch i32 %10, label %sw.default [
    i32 10, label %sw.bb
    i32 14, label %sw.bb3
    i32 18, label %sw.bb5
    i32 3, label %sw.bb8
    i32 4, label %sw.bb10
  ], !dbg !978

sw.bb:                                            ; preds = %if.end
  %11 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %info, align 8, !dbg !979
  %op_region_count = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %11, i32 0, i32 7, !dbg !981
  %12 = load i32, i32* %op_region_count, align 4, !dbg !982
  %inc2 = add i32 %12, 1, !dbg !982
  store i32 %inc2, i32* %op_region_count, align 4, !dbg !982
  br label %sw.epilog, !dbg !983

sw.bb3:                                           ; preds = %if.end
  %13 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %info, align 8, !dbg !984
  %field_count = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %13, i32 0, i32 8, !dbg !985
  %14 = load i32, i32* %field_count, align 4, !dbg !986
  %inc4 = add i32 %14, 1, !dbg !986
  store i32 %inc4, i32* %field_count, align 4, !dbg !986
  br label %sw.epilog, !dbg !987

sw.bb5:                                           ; preds = %if.end
  %15 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %info, align 8, !dbg !988
  %field_count6 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %15, i32 0, i32 8, !dbg !989
  %16 = load i32, i32* %field_count6, align 4, !dbg !990
  %inc7 = add i32 %16, 1, !dbg !990
  store i32 %inc7, i32* %field_count6, align 4, !dbg !990
  br label %sw.epilog, !dbg !991

sw.bb8:                                           ; preds = %if.end
  %17 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %info, align 8, !dbg !992
  %buffer_count = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %17, i32 0, i32 9, !dbg !993
  %18 = load i32, i32* %buffer_count, align 4, !dbg !994
  %inc9 = add i32 %18, 1, !dbg !994
  store i32 %inc9, i32* %buffer_count, align 4, !dbg !994
  br label %sw.epilog, !dbg !995

sw.bb10:                                          ; preds = %if.end
  %19 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %info, align 8, !dbg !996
  %package_count = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %19, i32 0, i32 10, !dbg !997
  %20 = load i32, i32* %package_count, align 4, !dbg !998
  %inc11 = add i32 %20, 1, !dbg !998
  store i32 %inc11, i32* %package_count, align 4, !dbg !998
  br label %sw.epilog, !dbg !999

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1000
  br label %return, !dbg !1000

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb8, %sw.bb5, %sw.bb3, %sw.bb
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1001
  %common = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_common*, !dbg !1003
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 4, !dbg !1004
  %22 = load i8, i8* %flags, align 4, !dbg !1004
  %conv = zext i8 %22 to i32, !dbg !1001
  %and = and i32 %conv, 4, !dbg !1005
  %tobool12 = icmp ne i32 %and, 0, !dbg !1005
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !1006

if.then13:                                        ; preds = %sw.epilog
  store i32 0, i32* %retval, align 4, !dbg !1007
  br label %return, !dbg !1007

if.end14:                                         ; preds = %sw.epilog
  call void @acpi_ex_enter_interpreter() #9, !dbg !1009
  %23 = load i32, i32* %type, align 4, !dbg !1010
  switch i32 %23, label %sw.default21 [
    i32 18, label %sw.bb15
    i32 4, label %sw.bb18
  ], !dbg !1011

sw.bb15:                                          ; preds = %if.end14
  %24 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %info, align 8, !dbg !1012
  %field_init = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %24, i32 0, i32 12, !dbg !1014
  %25 = load i32, i32* %field_init, align 4, !dbg !1015
  %inc16 = add i32 %25, 1, !dbg !1015
  store i32 %inc16, i32* %field_init, align 4, !dbg !1015
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1016
  %call17 = call i32 @acpi_ds_get_bank_field_arguments(%union.acpi_operand_object* %26) #9, !dbg !1017
  store i32 %call17, i32* %status, align 4, !dbg !1018
  br label %sw.epilog24, !dbg !1019

sw.bb18:                                          ; preds = %if.end14
  %27 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %info, align 8, !dbg !1020
  %package_init = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %27, i32 0, i32 14, !dbg !1021
  %28 = load i32, i32* %package_init, align 4, !dbg !1022
  %inc19 = add i32 %28, 1, !dbg !1022
  store i32 %inc19, i32* %package_init, align 4, !dbg !1022
  %29 = load i8*, i8** %obj_handle.addr, align 8, !dbg !1023
  %30 = load i32, i32* %level.addr, align 4, !dbg !1024
  %call20 = call i32 @acpi_ns_init_one_package(i8* %29, i32 %30, i8* null, i8** null) #9, !dbg !1025
  store i32 %call20, i32* %status, align 4, !dbg !1026
  br label %sw.epilog24, !dbg !1027

sw.default21:                                     ; preds = %if.end14
  store i32 8, i32* %status, align 4, !dbg !1028
  %31 = load i32, i32* %status, align 4, !dbg !1029
  %32 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1029
  %33 = bitcast %struct.acpi_namespace_node* %32 to i8*, !dbg !1029
  %call22 = call i8* @acpi_ut_get_node_name(i8* %33) #9, !dbg !1029
  %34 = load i32, i32* %type, align 4, !dbg !1029
  %call23 = call i8* @acpi_ut_get_type_name(i32 %34) #9, !dbg !1029
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 411, i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %call22, i8* %call23) #9, !dbg !1029
  br label %sw.epilog24, !dbg !1030

sw.epilog24:                                      ; preds = %sw.default21, %sw.bb18, %sw.bb15
  %35 = load i32, i32* %status, align 4, !dbg !1031
  %tobool25 = icmp ne i32 %35, 0, !dbg !1031
  br i1 %tobool25, label %if.then26, label %if.end29, !dbg !1033

if.then26:                                        ; preds = %sw.epilog24
  %36 = load i32, i32* %status, align 4, !dbg !1034
  %37 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1034
  %38 = bitcast %struct.acpi_namespace_node* %37 to i8*, !dbg !1034
  %call27 = call i8* @acpi_ut_get_node_name(i8* %38) #9, !dbg !1034
  %39 = load i32, i32* %type, align 4, !dbg !1034
  %call28 = call i8* @acpi_ut_get_type_name(i32 %39) #9, !dbg !1034
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 419, i32 %36, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i8* %call27, i8* %call28) #9, !dbg !1034
  br label %if.end29, !dbg !1036

if.end29:                                         ; preds = %if.then26, %sw.epilog24
  call void @acpi_ex_exit_interpreter() #9, !dbg !1037
  store i32 0, i32* %retval, align 4, !dbg !1038
  br label %return, !dbg !1038

return:                                           ; preds = %if.end29, %if.then13, %sw.default, %if.then
  %40 = load i32, i32* %retval, align 4, !dbg !1039
  ret i32 %40, !dbg !1039
}

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_initialize_devices(i32 %flags) #0 !dbg !1040 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %info = alloca %struct.acpi_device_walk_info, align 8
  %handle = alloca i8*, align 8
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1043, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1045, metadata !DIExpression()), !dbg !1046
  store i32 0, i32* %status, align 4, !dbg !1046
  call void @llvm.dbg.declare(metadata %struct.acpi_device_walk_info* %info, metadata !1047, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !1049, metadata !DIExpression()), !dbg !1050
  %0 = load i32, i32* %flags.addr, align 4, !dbg !1051
  %and = and i32 %0, 64, !dbg !1053
  %tobool = icmp ne i32 %and, 0, !dbg !1053
  br i1 %tobool, label %if.end39, label %if.then, !dbg !1054

if.then:                                          ; preds = %entry
  %device_count = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %info, i32 0, i32 2, !dbg !1055
  store i32 0, i32* %device_count, align 8, !dbg !1057
  %num_STA = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %info, i32 0, i32 3, !dbg !1058
  store i32 0, i32* %num_STA, align 4, !dbg !1059
  %num_INI = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %info, i32 0, i32 4, !dbg !1060
  store i32 0, i32* %num_INI, align 8, !dbg !1061
  %1 = bitcast %struct.acpi_device_walk_info* %info to i8*, !dbg !1062
  %call = call i32 @acpi_ns_walk_namespace(i32 0, i8* inttoptr (i64 -1 to i8*), i32 -1, i32 0, i32 (i8*, i32, i8*, i8**)* @acpi_ns_find_ini_methods, i32 (i8*, i32, i8*, i8**)* null, i8* %1, i8** null) #9, !dbg !1063
  store i32 %call, i32* %status, align 4, !dbg !1064
  %2 = load i32, i32* %status, align 4, !dbg !1065
  %tobool1 = icmp ne i32 %2, 0, !dbg !1065
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !1067

if.then2:                                         ; preds = %if.then
  br label %error_exit, !dbg !1068

if.end:                                           ; preds = %if.then
  %call3 = call i8* @acpi_os_allocate_zeroed(i64 88) #9, !dbg !1070
  %3 = bitcast i8* %call3 to %struct.acpi_evaluate_info*, !dbg !1070
  %evaluate_info = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %info, i32 0, i32 1, !dbg !1071
  store %struct.acpi_evaluate_info* %3, %struct.acpi_evaluate_info** %evaluate_info, align 8, !dbg !1072
  %evaluate_info4 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %info, i32 0, i32 1, !dbg !1073
  %4 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %evaluate_info4, align 8, !dbg !1073
  %tobool5 = icmp ne %struct.acpi_evaluate_info* %4, null, !dbg !1075
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !1076

if.then6:                                         ; preds = %if.end
  store i32 4, i32* %status, align 4, !dbg !1077
  br label %error_exit, !dbg !1079

if.end7:                                          ; preds = %if.end
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !1080
  %evaluate_info8 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %info, i32 0, i32 1, !dbg !1081
  %6 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %evaluate_info8, align 8, !dbg !1081
  %prefix_node = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %6, i32 0, i32 0, !dbg !1082
  store %struct.acpi_namespace_node* %5, %struct.acpi_namespace_node** %prefix_node, align 8, !dbg !1083
  %evaluate_info9 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %info, i32 0, i32 1, !dbg !1084
  %7 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %evaluate_info9, align 8, !dbg !1084
  %relative_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %7, i32 0, i32 1, !dbg !1085
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %relative_pathname, align 8, !dbg !1086
  %evaluate_info10 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %info, i32 0, i32 1, !dbg !1087
  %8 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %evaluate_info10, align 8, !dbg !1087
  %parameters = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %8, i32 0, i32 2, !dbg !1088
  store %union.acpi_operand_object** null, %union.acpi_operand_object*** %parameters, align 8, !dbg !1089
  %evaluate_info11 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %info, i32 0, i32 1, !dbg !1090
  %9 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %evaluate_info11, align 8, !dbg !1090
  %flags12 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %9, i32 0, i32 15, !dbg !1091
  store i8 1, i8* %flags12, align 2, !dbg !1092
  %evaluate_info13 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %info, i32 0, i32 1, !dbg !1093
  %10 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %evaluate_info13, align 8, !dbg !1093
  %call14 = call i32 @acpi_ns_evaluate(%struct.acpi_evaluate_info* %10) #9, !dbg !1094
  store i32 %call14, i32* %status, align 4, !dbg !1095
  %11 = load i32, i32* %status, align 4, !dbg !1096
  %tobool15 = icmp ne i32 %11, 0, !dbg !1096
  br i1 %tobool15, label %if.end18, label %if.then16, !dbg !1098

if.then16:                                        ; preds = %if.end7
  %num_INI17 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %info, i32 0, i32 4, !dbg !1099
  %12 = load i32, i32* %num_INI17, align 8, !dbg !1101
  %inc = add i32 %12, 1, !dbg !1101
  store i32 %inc, i32* %num_INI17, align 8, !dbg !1101
  br label %if.end18, !dbg !1102

if.end18:                                         ; preds = %if.then16, %if.end7
  %call19 = call i32 @acpi_get_handle(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %handle) #9, !dbg !1103
  store i32 %call19, i32* %status, align 4, !dbg !1104
  %13 = load i32, i32* %status, align 4, !dbg !1105
  %tobool20 = icmp ne i32 %13, 0, !dbg !1105
  br i1 %tobool20, label %if.end38, label %if.then21, !dbg !1107

if.then21:                                        ; preds = %if.end18
  %evaluate_info22 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %info, i32 0, i32 1, !dbg !1108
  %14 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %evaluate_info22, align 8, !dbg !1108
  %15 = bitcast %struct.acpi_evaluate_info* %14 to i8*, !dbg !1110
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 88, i1 false), !dbg !1110
  %16 = load i8*, i8** %handle, align 8, !dbg !1111
  %17 = bitcast i8* %16 to %struct.acpi_namespace_node*, !dbg !1111
  %evaluate_info23 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %info, i32 0, i32 1, !dbg !1112
  %18 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %evaluate_info23, align 8, !dbg !1112
  %prefix_node24 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %18, i32 0, i32 0, !dbg !1113
  store %struct.acpi_namespace_node* %17, %struct.acpi_namespace_node** %prefix_node24, align 8, !dbg !1114
  %evaluate_info25 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %info, i32 0, i32 1, !dbg !1115
  %19 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %evaluate_info25, align 8, !dbg !1115
  %relative_pathname26 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %19, i32 0, i32 1, !dbg !1116
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %relative_pathname26, align 8, !dbg !1117
  %evaluate_info27 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %info, i32 0, i32 1, !dbg !1118
  %20 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %evaluate_info27, align 8, !dbg !1118
  %parameters28 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %20, i32 0, i32 2, !dbg !1119
  store %union.acpi_operand_object** null, %union.acpi_operand_object*** %parameters28, align 8, !dbg !1120
  %evaluate_info29 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %info, i32 0, i32 1, !dbg !1121
  %21 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %evaluate_info29, align 8, !dbg !1121
  %flags30 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %21, i32 0, i32 15, !dbg !1122
  store i8 1, i8* %flags30, align 2, !dbg !1123
  %evaluate_info31 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %info, i32 0, i32 1, !dbg !1124
  %22 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %evaluate_info31, align 8, !dbg !1124
  %call32 = call i32 @acpi_ns_evaluate(%struct.acpi_evaluate_info* %22) #9, !dbg !1125
  store i32 %call32, i32* %status, align 4, !dbg !1126
  %23 = load i32, i32* %status, align 4, !dbg !1127
  %tobool33 = icmp ne i32 %23, 0, !dbg !1127
  br i1 %tobool33, label %if.end37, label %if.then34, !dbg !1129

if.then34:                                        ; preds = %if.then21
  %num_INI35 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %info, i32 0, i32 4, !dbg !1130
  %24 = load i32, i32* %num_INI35, align 8, !dbg !1132
  %inc36 = add i32 %24, 1, !dbg !1132
  store i32 %inc36, i32* %num_INI35, align 8, !dbg !1132
  br label %if.end37, !dbg !1133

if.end37:                                         ; preds = %if.then34, %if.then21
  br label %if.end38, !dbg !1134

if.end38:                                         ; preds = %if.end37, %if.end18
  br label %if.end39, !dbg !1135

if.end39:                                         ; preds = %if.end38, %entry
  %25 = load i32, i32* %flags.addr, align 4, !dbg !1136
  %and40 = and i32 %25, 128, !dbg !1138
  %tobool41 = icmp ne i32 %and40, 0, !dbg !1138
  br i1 %tobool41, label %if.end47, label %if.then42, !dbg !1139

if.then42:                                        ; preds = %if.end39
  %call43 = call i32 @acpi_ev_initialize_op_regions() #9, !dbg !1140
  store i32 %call43, i32* %status, align 4, !dbg !1142
  %26 = load i32, i32* %status, align 4, !dbg !1143
  %tobool44 = icmp ne i32 %26, 0, !dbg !1143
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !1145

if.then45:                                        ; preds = %if.then42
  br label %error_exit, !dbg !1146

if.end46:                                         ; preds = %if.then42
  br label %if.end47, !dbg !1148

if.end47:                                         ; preds = %if.end46, %if.end39
  %27 = load i32, i32* %flags.addr, align 4, !dbg !1149
  %and48 = and i32 %27, 64, !dbg !1151
  %tobool49 = icmp ne i32 %and48, 0, !dbg !1151
  br i1 %tobool49, label %if.end59, label %if.then50, !dbg !1152

if.then50:                                        ; preds = %if.end47
  %28 = bitcast %struct.acpi_device_walk_info* %info to i8*, !dbg !1153
  %call51 = call i32 @acpi_ns_walk_namespace(i32 0, i8* inttoptr (i64 -1 to i8*), i32 -1, i32 0, i32 (i8*, i32, i8*, i8**)* @acpi_ns_init_one_device, i32 (i8*, i32, i8*, i8**)* null, i8* %28, i8** null) #9, !dbg !1155
  store i32 %call51, i32* %status, align 4, !dbg !1156
  %29 = load i8, i8* @acpi_gbl_osi_data, align 1, !dbg !1157
  %conv = zext i8 %29 to i32, !dbg !1157
  %cmp = icmp sge i32 %conv, 1, !dbg !1159
  br i1 %cmp, label %if.then53, label %if.end54, !dbg !1160

if.then53:                                        ; preds = %if.then50
  store i8 1, i8* @acpi_gbl_truncate_io_addresses, align 1, !dbg !1161
  br label %if.end54, !dbg !1163

if.end54:                                         ; preds = %if.then53, %if.then50
  %evaluate_info55 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %info, i32 0, i32 1, !dbg !1164
  %30 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %evaluate_info55, align 8, !dbg !1164
  %31 = bitcast %struct.acpi_evaluate_info* %30 to i8*, !dbg !1164
  call void @acpi_os_free(i8* %31) #9, !dbg !1164
  %32 = load i32, i32* %status, align 4, !dbg !1165
  %tobool56 = icmp ne i32 %32, 0, !dbg !1165
  br i1 %tobool56, label %if.then57, label %if.end58, !dbg !1167

if.then57:                                        ; preds = %if.end54
  br label %error_exit, !dbg !1168

if.end58:                                         ; preds = %if.end54
  br label %if.end59, !dbg !1170

if.end59:                                         ; preds = %if.end58, %if.end47
  %33 = load i32, i32* %status, align 4, !dbg !1171
  store i32 %33, i32* %retval, align 4, !dbg !1171
  br label %return, !dbg !1171

error_exit:                                       ; preds = %if.then57, %if.then45, %if.then6, %if.then2
  call void @llvm.dbg.label(metadata !1172), !dbg !1173
  %34 = load i32, i32* %status, align 4, !dbg !1174
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 239, i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !1174
  %35 = load i32, i32* %status, align 4, !dbg !1175
  store i32 %35, i32* %retval, align 4, !dbg !1175
  br label %return, !dbg !1175

return:                                           ; preds = %error_exit, %if.end59
  %36 = load i32, i32* %retval, align 4, !dbg !1176
  ret i32 %36, !dbg !1176
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_walk_namespace(i32, i8*, i32, i32, i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)*, i8*, i8**) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ns_find_ini_methods(i8* %obj_handle, i32 %nesting_level, i8* %context, i8** %return_value) #0 !dbg !1177 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca i8*, align 8
  %nesting_level.addr = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %return_value.addr = alloca i8**, align 8
  %info = alloca %struct.acpi_device_walk_info*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %parent_node = alloca %struct.acpi_namespace_node*, align 8
  store i8* %obj_handle, i8** %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %obj_handle.addr, metadata !1178, metadata !DIExpression()), !dbg !1179
  store i32 %nesting_level, i32* %nesting_level.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nesting_level.addr, metadata !1180, metadata !DIExpression()), !dbg !1181
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1182, metadata !DIExpression()), !dbg !1183
  store i8** %return_value, i8*** %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %return_value.addr, metadata !1184, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.declare(metadata %struct.acpi_device_walk_info** %info, metadata !1186, metadata !DIExpression()), !dbg !1187
  %0 = load i8*, i8** %context.addr, align 8, !dbg !1188
  %1 = bitcast i8* %0 to %struct.acpi_device_walk_info*, !dbg !1188
  store %struct.acpi_device_walk_info* %1, %struct.acpi_device_walk_info** %info, align 8, !dbg !1187
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1189, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %parent_node, metadata !1191, metadata !DIExpression()), !dbg !1192
  %2 = load i8*, i8** %obj_handle.addr, align 8, !dbg !1193
  %3 = bitcast i8* %2 to %struct.acpi_namespace_node*, !dbg !1193
  store %struct.acpi_namespace_node* %3, %struct.acpi_namespace_node** %node, align 8, !dbg !1194
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1195
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %4, i32 0, i32 2, !dbg !1197
  %5 = load i8, i8* %type, align 1, !dbg !1197
  %conv = zext i8 %5 to i32, !dbg !1195
  %cmp = icmp eq i32 %conv, 6, !dbg !1198
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1199

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1200
  %type2 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %6, i32 0, i32 2, !dbg !1201
  %7 = load i8, i8* %type2, align 1, !dbg !1201
  %conv3 = zext i8 %7 to i32, !dbg !1200
  %cmp4 = icmp eq i32 %conv3, 12, !dbg !1202
  br i1 %cmp4, label %if.then, label %lor.lhs.false6, !dbg !1203

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1204
  %type7 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %8, i32 0, i32 2, !dbg !1205
  %9 = load i8, i8* %type7, align 1, !dbg !1205
  %conv8 = zext i8 %9 to i32, !dbg !1204
  %cmp9 = icmp eq i32 %conv8, 13, !dbg !1206
  br i1 %cmp9, label %if.then, label %if.end, !dbg !1207

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false, %entry
  %10 = load %struct.acpi_device_walk_info*, %struct.acpi_device_walk_info** %info, align 8, !dbg !1208
  %device_count = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %10, i32 0, i32 2, !dbg !1210
  %11 = load i32, i32* %device_count, align 8, !dbg !1211
  %inc = add i32 %11, 1, !dbg !1211
  store i32 %inc, i32* %device_count, align 8, !dbg !1211
  store i32 0, i32* %retval, align 4, !dbg !1212
  br label %return, !dbg !1212

if.end:                                           ; preds = %lor.lhs.false6
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1213
  %name = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %12, i32 0, i32 4, !dbg !1213
  %ascii = bitcast %union.acpi_name_union* %name to [4 x i8]*, !dbg !1213
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ascii, i64 0, i64 0, !dbg !1213
  %13 = bitcast i8* %arraydecay to i32*, !dbg !1213
  %14 = load i32, i32* %13, align 4, !dbg !1213
  %15 = load i32, i32* bitcast ([5 x i8]* @.str.1 to i32*), align 4, !dbg !1213
  %cmp11 = icmp eq i32 %14, %15, !dbg !1213
  br i1 %cmp11, label %if.end14, label %if.then13, !dbg !1215

if.then13:                                        ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1216
  br label %return, !dbg !1216

if.end14:                                         ; preds = %if.end
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1218
  %parent = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %16, i32 0, i32 5, !dbg !1219
  %17 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent, align 8, !dbg !1219
  store %struct.acpi_namespace_node* %17, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1220
  %18 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1221
  %type15 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %18, i32 0, i32 2, !dbg !1222
  %19 = load i8, i8* %type15, align 1, !dbg !1222
  %conv16 = zext i8 %19 to i32, !dbg !1221
  switch i32 %conv16, label %sw.default [
    i32 6, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
  ], !dbg !1223

sw.bb:                                            ; preds = %if.end14, %if.end14, %if.end14
  br label %while.cond, !dbg !1224

while.cond:                                       ; preds = %while.body, %sw.bb
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1226
  %tobool = icmp ne %struct.acpi_namespace_node* %20, null, !dbg !1224
  br i1 %tobool, label %while.body, label %while.end, !dbg !1224

while.body:                                       ; preds = %while.cond
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1227
  %flags = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %21, i32 0, i32 3, !dbg !1229
  %22 = load i16, i16* %flags, align 2, !dbg !1230
  %conv17 = zext i16 %22 to i32, !dbg !1230
  %or = or i32 %conv17, 16, !dbg !1230
  %conv18 = trunc i32 %or to i16, !dbg !1230
  store i16 %conv18, i16* %flags, align 2, !dbg !1230
  %23 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1231
  %parent19 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %23, i32 0, i32 5, !dbg !1232
  %24 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent19, align 8, !dbg !1232
  store %struct.acpi_namespace_node* %24, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1233
  br label %while.cond, !dbg !1224, !llvm.loop !1234

while.end:                                        ; preds = %while.cond
  br label %sw.epilog, !dbg !1236

sw.default:                                       ; preds = %if.end14
  br label %sw.epilog, !dbg !1237

sw.epilog:                                        ; preds = %sw.default, %while.end
  store i32 0, i32* %retval, align 4, !dbg !1238
  br label %return, !dbg !1238

return:                                           ; preds = %sw.epilog, %if.then13, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !1239
  ret i32 %25, !dbg !1239
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !1240 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1244, metadata !DIExpression()), !dbg !1250
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1254, metadata !DIExpression()), !dbg !1255
  %0 = load i64, i64* %size.addr, align 8, !dbg !1256
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1257, metadata !DIExpression()), !dbg !1258
  br label %do.body, !dbg !1258

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1259, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1263, metadata !DIExpression()), !dbg !1262
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1262
  %conv = zext i1 %cmp to i32, !dbg !1262
  store i32 1, i32* %tmp, align 4, !dbg !1262
  %1 = load i32, i32* %tmp, align 4, !dbg !1262
  %call = call i64 @arch_local_save_flags() #9, !dbg !1264
  store i64 %call, i64* %_flags, align 8, !dbg !1264
  br label %do.end, !dbg !1264

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1265, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1268, metadata !DIExpression()), !dbg !1267
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1267
  %conv6 = zext i1 %cmp5 to i32, !dbg !1267
  store i32 1, i32* %tmp7, align 4, !dbg !1267
  %2 = load i32, i32* %tmp7, align 4, !dbg !1267
  %3 = load i64, i64* %_flags, align 8, !dbg !1269
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1270
  %and.i = and i64 %4, 512, !dbg !1271
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1272
  %lnot.i = xor i1 %tobool.i, true, !dbg !1272
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1272
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1269
  %5 = load i32, i32* %tmp8, align 4, !dbg !1269
  store i32 %5, i32* %tmp1, align 4, !dbg !1264
  %6 = load i32, i32* %tmp1, align 4, !dbg !1258
  %tobool = icmp ne i32 %6, 0, !dbg !1273
  %7 = zext i1 %tobool to i64, !dbg !1273
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1273
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #9, !dbg !1274
  ret i8* %call10, !dbg !1275
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_evaluate(%struct.acpi_evaluate_info*) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_handle(i8*, i8*, i8**) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_initialize_op_regions() #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ns_init_one_device(i8* %obj_handle, i32 %nesting_level, i8* %context, i8** %return_value) #0 !dbg !1276 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca i8*, align 8
  %nesting_level.addr = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %return_value.addr = alloca i8**, align 8
  %walk_info = alloca %struct.acpi_device_walk_info*, align 8
  %info = alloca %struct.acpi_evaluate_info*, align 8
  %flags = alloca i32, align 4
  %status = alloca i32, align 4
  %device_node = alloca %struct.acpi_namespace_node*, align 8
  store i8* %obj_handle, i8** %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %obj_handle.addr, metadata !1277, metadata !DIExpression()), !dbg !1278
  store i32 %nesting_level, i32* %nesting_level.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nesting_level.addr, metadata !1279, metadata !DIExpression()), !dbg !1280
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1281, metadata !DIExpression()), !dbg !1282
  store i8** %return_value, i8*** %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %return_value.addr, metadata !1283, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.declare(metadata %struct.acpi_device_walk_info** %walk_info, metadata !1285, metadata !DIExpression()), !dbg !1286
  %0 = load i8*, i8** %context.addr, align 8, !dbg !1287
  %1 = bitcast i8* %0 to %struct.acpi_device_walk_info*, !dbg !1287
  store %struct.acpi_device_walk_info* %1, %struct.acpi_device_walk_info** %walk_info, align 8, !dbg !1286
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info, metadata !1288, metadata !DIExpression()), !dbg !1289
  %2 = load %struct.acpi_device_walk_info*, %struct.acpi_device_walk_info** %walk_info, align 8, !dbg !1290
  %evaluate_info = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %2, i32 0, i32 1, !dbg !1291
  %3 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %evaluate_info, align 8, !dbg !1291
  store %struct.acpi_evaluate_info* %3, %struct.acpi_evaluate_info** %info, align 8, !dbg !1289
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !1292, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1294, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %device_node, metadata !1296, metadata !DIExpression()), !dbg !1297
  %4 = load i8*, i8** %obj_handle.addr, align 8, !dbg !1298
  %5 = bitcast i8* %4 to %struct.acpi_namespace_node*, !dbg !1298
  store %struct.acpi_namespace_node* %5, %struct.acpi_namespace_node** %device_node, align 8, !dbg !1299
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %device_node, align 8, !dbg !1300
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %6, i32 0, i32 2, !dbg !1302
  %7 = load i8, i8* %type, align 1, !dbg !1302
  %conv = zext i8 %7 to i32, !dbg !1300
  %cmp = icmp ne i32 %conv, 6, !dbg !1303
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1304

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %device_node, align 8, !dbg !1305
  %type2 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %8, i32 0, i32 2, !dbg !1306
  %9 = load i8, i8* %type2, align 1, !dbg !1306
  %conv3 = zext i8 %9 to i32, !dbg !1305
  %cmp4 = icmp ne i32 %conv3, 12, !dbg !1307
  br i1 %cmp4, label %land.lhs.true6, label %if.end, !dbg !1308

land.lhs.true6:                                   ; preds = %land.lhs.true
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %device_node, align 8, !dbg !1309
  %type7 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %10, i32 0, i32 2, !dbg !1310
  %11 = load i8, i8* %type7, align 1, !dbg !1310
  %conv8 = zext i8 %11 to i32, !dbg !1309
  %cmp9 = icmp ne i32 %conv8, 13, !dbg !1311
  br i1 %cmp9, label %if.then, label %if.end, !dbg !1312

if.then:                                          ; preds = %land.lhs.true6
  store i32 0, i32* %retval, align 4, !dbg !1313
  br label %return, !dbg !1313

if.end:                                           ; preds = %land.lhs.true6, %land.lhs.true, %entry
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %device_node, align 8, !dbg !1315
  %flags11 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %12, i32 0, i32 3, !dbg !1317
  %13 = load i16, i16* %flags11, align 2, !dbg !1317
  %conv12 = zext i16 %13 to i32, !dbg !1315
  %and = and i32 %conv12, 16, !dbg !1318
  %tobool = icmp ne i32 %and, 0, !dbg !1318
  br i1 %tobool, label %if.end14, label %if.then13, !dbg !1319

if.then13:                                        ; preds = %if.end
  store i32 16390, i32* %retval, align 4, !dbg !1320
  br label %return, !dbg !1320

if.end14:                                         ; preds = %if.end
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %device_node, align 8, !dbg !1322
  %call = call i32 @acpi_ut_execute_STA(%struct.acpi_namespace_node* %14, i32* %flags) #9, !dbg !1323
  store i32 %call, i32* %status, align 4, !dbg !1324
  %15 = load i32, i32* %status, align 4, !dbg !1325
  %tobool15 = icmp ne i32 %15, 0, !dbg !1325
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !1327

if.then16:                                        ; preds = %if.end14
  store i32 0, i32* %retval, align 4, !dbg !1328
  br label %return, !dbg !1328

if.end17:                                         ; preds = %if.end14
  %16 = load i32, i32* %flags, align 4, !dbg !1330
  %cmp18 = icmp ne i32 %16, -1, !dbg !1332
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !1333

if.then20:                                        ; preds = %if.end17
  %17 = load %struct.acpi_device_walk_info*, %struct.acpi_device_walk_info** %walk_info, align 8, !dbg !1334
  %num_STA = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %17, i32 0, i32 3, !dbg !1336
  %18 = load i32, i32* %num_STA, align 4, !dbg !1337
  %inc = add i32 %18, 1, !dbg !1337
  store i32 %inc, i32* %num_STA, align 4, !dbg !1337
  br label %if.end21, !dbg !1338

if.end21:                                         ; preds = %if.then20, %if.end17
  %19 = load i32, i32* %flags, align 4, !dbg !1339
  %and22 = and i32 %19, 1, !dbg !1341
  %tobool23 = icmp ne i32 %and22, 0, !dbg !1341
  br i1 %tobool23, label %if.end28, label %if.then24, !dbg !1342

if.then24:                                        ; preds = %if.end21
  %20 = load i32, i32* %flags, align 4, !dbg !1343
  %and25 = and i32 %20, 8, !dbg !1346
  %tobool26 = icmp ne i32 %and25, 0, !dbg !1346
  br i1 %tobool26, label %if.then27, label %if.else, !dbg !1347

if.then27:                                        ; preds = %if.then24
  store i32 0, i32* %retval, align 4, !dbg !1348
  br label %return, !dbg !1348

if.else:                                          ; preds = %if.then24
  store i32 16390, i32* %retval, align 4, !dbg !1350
  br label %return, !dbg !1350

if.end28:                                         ; preds = %if.end21
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %device_node, align 8, !dbg !1352
  %name = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %21, i32 0, i32 4, !dbg !1352
  %ascii = bitcast %union.acpi_name_union* %name to [4 x i8]*, !dbg !1352
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ascii, i64 0, i64 0, !dbg !1352
  %22 = bitcast i8* %arraydecay to i32*, !dbg !1352
  %23 = load i32, i32* %22, align 4, !dbg !1352
  %24 = load i32, i32* bitcast ([5 x i8]* @.str.7 to i32*), align 4, !dbg !1352
  %cmp29 = icmp eq i32 %23, %24, !dbg !1352
  br i1 %cmp29, label %lor.lhs.false, label %if.then33, !dbg !1354

lor.lhs.false:                                    ; preds = %if.end28
  %25 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %device_node, align 8, !dbg !1355
  %parent = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %25, i32 0, i32 5, !dbg !1356
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent, align 8, !dbg !1356
  %27 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !1357
  %cmp31 = icmp ne %struct.acpi_namespace_node* %26, %27, !dbg !1358
  br i1 %cmp31, label %if.then33, label %if.end40, !dbg !1359

if.then33:                                        ; preds = %lor.lhs.false, %if.end28
  %28 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1360
  %29 = bitcast %struct.acpi_evaluate_info* %28 to i8*, !dbg !1362
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 88, i1 false), !dbg !1362
  %30 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %device_node, align 8, !dbg !1363
  %31 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1364
  %prefix_node = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %31, i32 0, i32 0, !dbg !1365
  store %struct.acpi_namespace_node* %30, %struct.acpi_namespace_node** %prefix_node, align 8, !dbg !1366
  %32 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1367
  %relative_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %32, i32 0, i32 1, !dbg !1368
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %relative_pathname, align 8, !dbg !1369
  %33 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1370
  %parameters = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %33, i32 0, i32 2, !dbg !1371
  store %union.acpi_operand_object** null, %union.acpi_operand_object*** %parameters, align 8, !dbg !1372
  %34 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1373
  %flags34 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %34, i32 0, i32 15, !dbg !1374
  store i8 1, i8* %flags34, align 2, !dbg !1375
  %35 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1376
  %call35 = call i32 @acpi_ns_evaluate(%struct.acpi_evaluate_info* %35) #9, !dbg !1377
  store i32 %call35, i32* %status, align 4, !dbg !1378
  %36 = load i32, i32* %status, align 4, !dbg !1379
  %tobool36 = icmp ne i32 %36, 0, !dbg !1379
  br i1 %tobool36, label %if.end39, label %if.then37, !dbg !1381

if.then37:                                        ; preds = %if.then33
  %37 = load %struct.acpi_device_walk_info*, %struct.acpi_device_walk_info** %walk_info, align 8, !dbg !1382
  %num_INI = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %37, i32 0, i32 4, !dbg !1384
  %38 = load i32, i32* %num_INI, align 8, !dbg !1385
  %inc38 = add i32 %38, 1, !dbg !1385
  store i32 %inc38, i32* %num_INI, align 8, !dbg !1385
  br label %if.end39, !dbg !1386

if.end39:                                         ; preds = %if.then37, %if.then33
  br label %if.end40, !dbg !1387

if.end40:                                         ; preds = %if.end39, %lor.lhs.false
  store i32 0, i32* %status, align 4, !dbg !1388
  %39 = load i32 (i8*, i32)*, i32 (i8*, i32)** @acpi_gbl_init_handler, align 8, !dbg !1389
  %tobool41 = icmp ne i32 (i8*, i32)* %39, null, !dbg !1389
  br i1 %tobool41, label %if.then42, label %if.end44, !dbg !1391

if.then42:                                        ; preds = %if.end40
  %40 = load i32 (i8*, i32)*, i32 (i8*, i32)** @acpi_gbl_init_handler, align 8, !dbg !1392
  %41 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %device_node, align 8, !dbg !1394
  %42 = bitcast %struct.acpi_namespace_node* %41 to i8*, !dbg !1394
  %call43 = call i32 %40(i8* %42, i32 1) #9, !dbg !1392
  store i32 %call43, i32* %status, align 4, !dbg !1395
  br label %if.end44, !dbg !1396

if.end44:                                         ; preds = %if.then42, %if.end40
  %43 = load i32, i32* %status, align 4, !dbg !1397
  store i32 %43, i32* %retval, align 4, !dbg !1397
  br label %return, !dbg !1397

return:                                           ; preds = %if.end44, %if.else, %if.then27, %if.then16, %if.then13, %if.then
  %44 = load i32, i32* %retval, align 4, !dbg !1398
  ret i32 %44, !dbg !1398
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1399 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1402, metadata !DIExpression()), !dbg !1403
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1404
  call void @kfree(i8* %0) #9, !dbg !1405
  ret void, !dbg !1406
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_init_one_package(i8* %obj_handle, i32 %level, i8* %context, i8** %return_value) #0 !dbg !1407 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca i8*, align 8
  %level.addr = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %return_value.addr = alloca i8**, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  store i8* %obj_handle, i8** %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %obj_handle.addr, metadata !1408, metadata !DIExpression()), !dbg !1409
  store i32 %level, i32* %level.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %level.addr, metadata !1410, metadata !DIExpression()), !dbg !1411
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1412, metadata !DIExpression()), !dbg !1413
  store i8** %return_value, i8*** %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %return_value.addr, metadata !1414, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1416, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1418, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1420, metadata !DIExpression()), !dbg !1421
  %0 = load i8*, i8** %obj_handle.addr, align 8, !dbg !1422
  %1 = bitcast i8* %0 to %struct.acpi_namespace_node*, !dbg !1423
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %node, align 8, !dbg !1421
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1424
  %call = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %2) #9, !dbg !1425
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1426
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1427
  %tobool = icmp ne %union.acpi_operand_object* %3, null, !dbg !1427
  br i1 %tobool, label %if.end, label %if.then, !dbg !1429

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1430
  br label %return, !dbg !1430

if.end:                                           ; preds = %entry
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1432
  %package = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_package*, !dbg !1434
  %flags = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 4, !dbg !1435
  %5 = load i8, i8* %flags, align 4, !dbg !1435
  %conv = zext i8 %5 to i32, !dbg !1432
  %and = and i32 %conv, 4, !dbg !1436
  %tobool1 = icmp ne i32 %and, 0, !dbg !1436
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1437

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1438
  br label %return, !dbg !1438

if.end3:                                          ; preds = %if.end
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1440
  %call4 = call i32 @acpi_ds_get_package_arguments(%union.acpi_operand_object* %6) #9, !dbg !1441
  store i32 %call4, i32* %status, align 4, !dbg !1442
  %7 = load i32, i32* %status, align 4, !dbg !1443
  %tobool5 = icmp ne i32 %7, 0, !dbg !1443
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !1445

if.then6:                                         ; preds = %if.end3
  store i32 0, i32* %retval, align 4, !dbg !1446
  br label %return, !dbg !1446

if.end7:                                          ; preds = %if.end3
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1448
  %call8 = call i32 @acpi_ut_walk_package_tree(%union.acpi_operand_object* %8, i8* null, i32 (i8, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)* @acpi_ds_init_package_element, i8* null) #9, !dbg !1449
  store i32 %call8, i32* %status, align 4, !dbg !1450
  %9 = load i32, i32* %status, align 4, !dbg !1451
  %tobool9 = icmp ne i32 %9, 0, !dbg !1451
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !1453

if.then10:                                        ; preds = %if.end7
  store i32 0, i32* %retval, align 4, !dbg !1454
  br label %return, !dbg !1454

if.end11:                                         ; preds = %if.end7
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1456
  %package12 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_package*, !dbg !1457
  %flags13 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package12, i32 0, i32 4, !dbg !1458
  %11 = load i8, i8* %flags13, align 4, !dbg !1459
  %conv14 = zext i8 %11 to i32, !dbg !1459
  %or = or i32 %conv14, 4, !dbg !1459
  %conv15 = trunc i32 %or to i8, !dbg !1459
  store i8 %conv15, i8* %flags13, align 4, !dbg !1459
  store i32 0, i32* %retval, align 4, !dbg !1460
  br label %return, !dbg !1460

return:                                           ; preds = %if.end11, %if.then10, %if.then6, %if.then2, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !1461
  ret i32 %12, !dbg !1461
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_get_package_arguments(%union.acpi_operand_object*) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_walk_package_tree(%union.acpi_operand_object*, i8*, i32 (i8, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)*, i8*) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_init_package_element(i8 zeroext, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1462 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1469, metadata !DIExpression()), !dbg !1476
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1482, metadata !DIExpression()), !dbg !1483
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1484, metadata !DIExpression()), !dbg !1485
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1486, metadata !DIExpression()), !dbg !1487
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1488, metadata !DIExpression()), !dbg !1492
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1494, metadata !DIExpression()), !dbg !1498
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1500, metadata !DIExpression()), !dbg !1504
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1509, metadata !DIExpression()), !dbg !1510
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1511, metadata !DIExpression()), !dbg !1512
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1513, metadata !DIExpression()), !dbg !1514
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1515, metadata !DIExpression()), !dbg !1516
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1517, metadata !DIExpression()), !dbg !1518
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1519, metadata !DIExpression()), !dbg !1520
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1521, metadata !DIExpression()), !dbg !1522
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1523, metadata !DIExpression()), !dbg !1524
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1525, metadata !DIExpression()), !dbg !1526
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1527, metadata !DIExpression()), !dbg !1528
  %0 = load i64, i64* %size.addr, align 8, !dbg !1529
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1530
  %or = or i32 %1, 256, !dbg !1531
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1532
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !1533
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1534

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1535
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1536
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1537

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1538
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1539
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1540
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !1541
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1518
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1542
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1543
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1544
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1545
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1546
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1547
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !1548
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1548
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1548
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1548
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !1548
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1549
  br label %kmalloc.exit, !dbg !1549

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1550
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1551
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1551
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1553

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1554
  br label %kmalloc_index.exit.i, !dbg !1554

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1555
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1557
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1558

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1559
  br label %kmalloc_index.exit.i, !dbg !1559

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1560
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1562
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1563

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1564
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1565
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1566

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1567
  br label %kmalloc_index.exit.i, !dbg !1567

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1568
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1570
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1571

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1572
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1573
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1574

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1575
  br label %kmalloc_index.exit.i, !dbg !1575

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1576
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1578
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1579

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1580
  br label %kmalloc_index.exit.i, !dbg !1580

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1581
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1583
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1584

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1585
  br label %kmalloc_index.exit.i, !dbg !1585

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1586
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1588
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1589

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1590
  br label %kmalloc_index.exit.i, !dbg !1590

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1591
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1593
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1594

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1595
  br label %kmalloc_index.exit.i, !dbg !1595

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1596
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1598
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1599

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1600
  br label %kmalloc_index.exit.i, !dbg !1600

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1601
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1603
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1604

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1605
  br label %kmalloc_index.exit.i, !dbg !1605

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1606
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1608
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1609

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1610
  br label %kmalloc_index.exit.i, !dbg !1610

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1611
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1613
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1614

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1615
  br label %kmalloc_index.exit.i, !dbg !1615

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1616
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1618
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1619

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1620
  br label %kmalloc_index.exit.i, !dbg !1620

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1621
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1623
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1624

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1625
  br label %kmalloc_index.exit.i, !dbg !1625

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1626
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1628
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1629

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1630
  br label %kmalloc_index.exit.i, !dbg !1630

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1631
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1633
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1634

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1635
  br label %kmalloc_index.exit.i, !dbg !1635

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1636
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1638
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1639

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1640
  br label %kmalloc_index.exit.i, !dbg !1640

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1641
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1643
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1644

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1645
  br label %kmalloc_index.exit.i, !dbg !1645

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1646
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1648
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1649

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1650
  br label %kmalloc_index.exit.i, !dbg !1650

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1651
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1653
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1654

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1655
  br label %kmalloc_index.exit.i, !dbg !1655

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1656
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1658
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1659

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1660
  br label %kmalloc_index.exit.i, !dbg !1660

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1661
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1663
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1664

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1665
  br label %kmalloc_index.exit.i, !dbg !1665

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1666
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1668
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1669

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1670
  br label %kmalloc_index.exit.i, !dbg !1670

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1671
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1673
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1674

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1675
  br label %kmalloc_index.exit.i, !dbg !1675

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1676
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1678
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1679

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1680
  br label %kmalloc_index.exit.i, !dbg !1680

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1681
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1683
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1684

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1685
  br label %kmalloc_index.exit.i, !dbg !1685

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1686
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1688
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1689

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1690
  br label %kmalloc_index.exit.i, !dbg !1690

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1691
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1693
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1694

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1695
  br label %kmalloc_index.exit.i, !dbg !1695

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !1696, !srcloc !1699
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #8, !dbg !1700, !srcloc !1703
  unreachable, !dbg !1704

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1705
  store i32 %45, i32* %index.i, align 4, !dbg !1706
  %46 = load i32, i32* %index.i, align 4, !dbg !1707
  %tobool.i = icmp ne i32 %46, 0, !dbg !1707
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1709

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1710
  br label %kmalloc.exit, !dbg !1710

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1711
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1712
  %and.i.i = and i32 %48, 17, !dbg !1712
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1712
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1712
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1712
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1712
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1714

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1715
  br label %kmalloc_type.exit.i, !dbg !1715

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1716
  %and2.i.i = and i32 %49, 1, !dbg !1717
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1716
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1716
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1716
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1718
  br label %kmalloc_type.exit.i, !dbg !1718

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1719
  %idxprom.i = zext i32 %51 to i64, !dbg !1720
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1720
  %52 = load i32, i32* %index.i, align 4, !dbg !1721
  %idxprom6.i = zext i32 %52 to i64, !dbg !1720
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1720
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1720
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1722
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1723
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1724
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1725
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !1726
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1726
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1726
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1726
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !1726
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1487
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1727
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1728
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1729
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1730
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !1731
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1732
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1733
  store i8* %62, i8** %retval.i, align 8, !dbg !1734
  br label %kmalloc.exit, !dbg !1734

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1735
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1736
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !1737
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1737
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1737
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1737
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !1737
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1738
  br label %kmalloc.exit, !dbg !1738

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1739
  ret i8* %65, !dbg !1740
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1741 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1745, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1748, metadata !DIExpression()), !dbg !1747
  %0 = load i64, i64* %__edi, align 8, !dbg !1747
  store i64 %0, i64* %__edi, align 8, !dbg !1747
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1749, metadata !DIExpression()), !dbg !1747
  %1 = load i64, i64* %__esi, align 8, !dbg !1747
  store i64 %1, i64* %__esi, align 8, !dbg !1747
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1750, metadata !DIExpression()), !dbg !1747
  %2 = load i64, i64* %__edx, align 8, !dbg !1747
  store i64 %2, i64* %__edx, align 8, !dbg !1747
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1751, metadata !DIExpression()), !dbg !1747
  %3 = load i64, i64* %__ecx, align 8, !dbg !1747
  store i64 %3, i64* %__ecx, align 8, !dbg !1747
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1752, metadata !DIExpression()), !dbg !1747
  %4 = load i64, i64* %__eax, align 8, !dbg !1747
  store i64 %4, i64* %__eax, align 8, !dbg !1747
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1747
  %6 = call i64 @llvm.read_register.i64(metadata !914), !dbg !1753
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !1753, !srcloc !1756
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1753
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1753
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1753
  call void @llvm.write_register.i64(metadata !914, i64 %asmresult1), !dbg !1753
  %8 = load i64, i64* %__eax, align 8, !dbg !1753
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1757, metadata !DIExpression()), !dbg !1759
  store i64 -1, i64* %__mask, align 8, !dbg !1759
  %9 = load i64, i64* %__mask, align 8, !dbg !1759
  store i64 %9, i64* %tmp, align 8, !dbg !1759
  %10 = load i64, i64* %tmp, align 8, !dbg !1759
  %and = and i64 %8, %10, !dbg !1753
  store i64 %and, i64* %__ret, align 8, !dbg !1753
  %11 = load i64, i64* %__ret, align 8, !dbg !1747
  store i64 %11, i64* %tmp2, align 8, !dbg !1760
  %12 = load i64, i64* %tmp2, align 8, !dbg !1747
  ret i64 %12, !dbg !1761
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !1762 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1764, metadata !DIExpression()), !dbg !1769
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1771, metadata !DIExpression()), !dbg !1772
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1773, metadata !DIExpression()), !dbg !1774
  %0 = load i64, i64* %size.addr, align 8, !dbg !1775
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1777
  br i1 %1, label %if.then, label %if.end447, !dbg !1778

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1779
  %tobool = icmp ne i64 %2, 0, !dbg !1779
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1782

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1783
  br label %return, !dbg !1783

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1784
  %cmp = icmp ult i64 %3, 4096, !dbg !1786
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1787

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1788
  br label %return, !dbg !1788

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub = sub i64 %4, 1, !dbg !1789
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1789
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1789

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub4 = sub i64 %6, 1, !dbg !1789
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1789
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1789

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub6 = sub i64 %8, 1, !dbg !1789
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1789
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1789

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1789

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub9 = sub i64 %9, 1, !dbg !1789
  %and = and i64 %sub9, -9223372036854775808, !dbg !1789
  %tobool10 = icmp ne i64 %and, 0, !dbg !1789
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1789

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1789

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub13 = sub i64 %10, 1, !dbg !1789
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1789
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1789
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1789

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1789

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub18 = sub i64 %11, 1, !dbg !1789
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1789
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1789
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1789

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1789

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub23 = sub i64 %12, 1, !dbg !1789
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1789
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1789
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1789

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1789

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub28 = sub i64 %13, 1, !dbg !1789
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1789
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1789
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1789

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1789

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub33 = sub i64 %14, 1, !dbg !1789
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1789
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1789
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1789

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1789

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub38 = sub i64 %15, 1, !dbg !1789
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1789
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1789
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1789

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1789

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub43 = sub i64 %16, 1, !dbg !1789
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1789
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1789
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1789

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1789

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub48 = sub i64 %17, 1, !dbg !1789
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1789
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1789
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1789

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1789

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub53 = sub i64 %18, 1, !dbg !1789
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1789
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1789
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1789

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1789

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub58 = sub i64 %19, 1, !dbg !1789
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1789
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1789
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1789

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1789

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub63 = sub i64 %20, 1, !dbg !1789
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1789
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1789
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1789

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1789

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub68 = sub i64 %21, 1, !dbg !1789
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1789
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1789
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1789

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1789

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub73 = sub i64 %22, 1, !dbg !1789
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1789
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1789
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1789

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1789

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub78 = sub i64 %23, 1, !dbg !1789
  %and79 = and i64 %sub78, 562949953421312, !dbg !1789
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1789
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1789

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1789

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub83 = sub i64 %24, 1, !dbg !1789
  %and84 = and i64 %sub83, 281474976710656, !dbg !1789
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1789
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1789

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1789

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub88 = sub i64 %25, 1, !dbg !1789
  %and89 = and i64 %sub88, 140737488355328, !dbg !1789
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1789
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1789

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1789

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub93 = sub i64 %26, 1, !dbg !1789
  %and94 = and i64 %sub93, 70368744177664, !dbg !1789
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1789
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1789

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1789

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub98 = sub i64 %27, 1, !dbg !1789
  %and99 = and i64 %sub98, 35184372088832, !dbg !1789
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1789
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1789

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1789

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub103 = sub i64 %28, 1, !dbg !1789
  %and104 = and i64 %sub103, 17592186044416, !dbg !1789
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1789
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1789

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1789

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub108 = sub i64 %29, 1, !dbg !1789
  %and109 = and i64 %sub108, 8796093022208, !dbg !1789
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1789
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1789

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1789

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub113 = sub i64 %30, 1, !dbg !1789
  %and114 = and i64 %sub113, 4398046511104, !dbg !1789
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1789
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1789

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1789

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub118 = sub i64 %31, 1, !dbg !1789
  %and119 = and i64 %sub118, 2199023255552, !dbg !1789
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1789
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1789

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1789

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub123 = sub i64 %32, 1, !dbg !1789
  %and124 = and i64 %sub123, 1099511627776, !dbg !1789
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1789
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1789

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1789

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub128 = sub i64 %33, 1, !dbg !1789
  %and129 = and i64 %sub128, 549755813888, !dbg !1789
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1789
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1789

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1789

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub133 = sub i64 %34, 1, !dbg !1789
  %and134 = and i64 %sub133, 274877906944, !dbg !1789
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1789
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1789

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1789

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub138 = sub i64 %35, 1, !dbg !1789
  %and139 = and i64 %sub138, 137438953472, !dbg !1789
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1789
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1789

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1789

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub143 = sub i64 %36, 1, !dbg !1789
  %and144 = and i64 %sub143, 68719476736, !dbg !1789
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1789
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1789

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1789

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub148 = sub i64 %37, 1, !dbg !1789
  %and149 = and i64 %sub148, 34359738368, !dbg !1789
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1789
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1789

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1789

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub153 = sub i64 %38, 1, !dbg !1789
  %and154 = and i64 %sub153, 17179869184, !dbg !1789
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1789
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1789

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1789

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub158 = sub i64 %39, 1, !dbg !1789
  %and159 = and i64 %sub158, 8589934592, !dbg !1789
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1789
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1789

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1789

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub163 = sub i64 %40, 1, !dbg !1789
  %and164 = and i64 %sub163, 4294967296, !dbg !1789
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1789
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1789

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1789

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub168 = sub i64 %41, 1, !dbg !1789
  %and169 = and i64 %sub168, 2147483648, !dbg !1789
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1789
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1789

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1789

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub173 = sub i64 %42, 1, !dbg !1789
  %and174 = and i64 %sub173, 1073741824, !dbg !1789
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1789
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1789

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1789

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub178 = sub i64 %43, 1, !dbg !1789
  %and179 = and i64 %sub178, 536870912, !dbg !1789
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1789
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1789

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1789

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub183 = sub i64 %44, 1, !dbg !1789
  %and184 = and i64 %sub183, 268435456, !dbg !1789
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1789
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1789

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1789

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub188 = sub i64 %45, 1, !dbg !1789
  %and189 = and i64 %sub188, 134217728, !dbg !1789
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1789
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1789

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1789

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub193 = sub i64 %46, 1, !dbg !1789
  %and194 = and i64 %sub193, 67108864, !dbg !1789
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1789
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1789

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1789

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub198 = sub i64 %47, 1, !dbg !1789
  %and199 = and i64 %sub198, 33554432, !dbg !1789
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1789
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1789

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1789

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub203 = sub i64 %48, 1, !dbg !1789
  %and204 = and i64 %sub203, 16777216, !dbg !1789
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1789
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1789

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1789

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub208 = sub i64 %49, 1, !dbg !1789
  %and209 = and i64 %sub208, 8388608, !dbg !1789
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1789
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1789

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1789

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub213 = sub i64 %50, 1, !dbg !1789
  %and214 = and i64 %sub213, 4194304, !dbg !1789
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1789
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1789

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1789

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub218 = sub i64 %51, 1, !dbg !1789
  %and219 = and i64 %sub218, 2097152, !dbg !1789
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1789
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1789

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1789

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub223 = sub i64 %52, 1, !dbg !1789
  %and224 = and i64 %sub223, 1048576, !dbg !1789
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1789
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1789

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1789

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub228 = sub i64 %53, 1, !dbg !1789
  %and229 = and i64 %sub228, 524288, !dbg !1789
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1789
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1789

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1789

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub233 = sub i64 %54, 1, !dbg !1789
  %and234 = and i64 %sub233, 262144, !dbg !1789
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1789
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1789

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1789

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub238 = sub i64 %55, 1, !dbg !1789
  %and239 = and i64 %sub238, 131072, !dbg !1789
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1789
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1789

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1789

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub243 = sub i64 %56, 1, !dbg !1789
  %and244 = and i64 %sub243, 65536, !dbg !1789
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1789
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1789

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1789

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub248 = sub i64 %57, 1, !dbg !1789
  %and249 = and i64 %sub248, 32768, !dbg !1789
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1789
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1789

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1789

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub253 = sub i64 %58, 1, !dbg !1789
  %and254 = and i64 %sub253, 16384, !dbg !1789
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1789
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1789

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1789

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub258 = sub i64 %59, 1, !dbg !1789
  %and259 = and i64 %sub258, 8192, !dbg !1789
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1789
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1789

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1789

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub263 = sub i64 %60, 1, !dbg !1789
  %and264 = and i64 %sub263, 4096, !dbg !1789
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1789
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1789

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1789

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub268 = sub i64 %61, 1, !dbg !1789
  %and269 = and i64 %sub268, 2048, !dbg !1789
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1789
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1789

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1789

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub273 = sub i64 %62, 1, !dbg !1789
  %and274 = and i64 %sub273, 1024, !dbg !1789
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1789
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1789

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1789

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub278 = sub i64 %63, 1, !dbg !1789
  %and279 = and i64 %sub278, 512, !dbg !1789
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1789
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1789

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1789

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub283 = sub i64 %64, 1, !dbg !1789
  %and284 = and i64 %sub283, 256, !dbg !1789
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1789
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1789

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1789

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub288 = sub i64 %65, 1, !dbg !1789
  %and289 = and i64 %sub288, 128, !dbg !1789
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1789
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1789

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1789

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub293 = sub i64 %66, 1, !dbg !1789
  %and294 = and i64 %sub293, 64, !dbg !1789
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1789
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1789

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1789

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub298 = sub i64 %67, 1, !dbg !1789
  %and299 = and i64 %sub298, 32, !dbg !1789
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1789
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1789

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1789

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub303 = sub i64 %68, 1, !dbg !1789
  %and304 = and i64 %sub303, 16, !dbg !1789
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1789
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1789

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1789

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub308 = sub i64 %69, 1, !dbg !1789
  %and309 = and i64 %sub308, 8, !dbg !1789
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1789
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1789

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1789

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub313 = sub i64 %70, 1, !dbg !1789
  %and314 = and i64 %sub313, 4, !dbg !1789
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1789
  %71 = zext i1 %tobool315 to i64, !dbg !1789
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1789
  br label %cond.end, !dbg !1789

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1789
  br label %cond.end317, !dbg !1789

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1789
  br label %cond.end319, !dbg !1789

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1789
  br label %cond.end321, !dbg !1789

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1789
  br label %cond.end323, !dbg !1789

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1789
  br label %cond.end325, !dbg !1789

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1789
  br label %cond.end327, !dbg !1789

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1789
  br label %cond.end329, !dbg !1789

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1789
  br label %cond.end331, !dbg !1789

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1789
  br label %cond.end333, !dbg !1789

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1789
  br label %cond.end335, !dbg !1789

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1789
  br label %cond.end337, !dbg !1789

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1789
  br label %cond.end339, !dbg !1789

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1789
  br label %cond.end341, !dbg !1789

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1789
  br label %cond.end343, !dbg !1789

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1789
  br label %cond.end345, !dbg !1789

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1789
  br label %cond.end347, !dbg !1789

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1789
  br label %cond.end349, !dbg !1789

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1789
  br label %cond.end351, !dbg !1789

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1789
  br label %cond.end353, !dbg !1789

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1789
  br label %cond.end355, !dbg !1789

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1789
  br label %cond.end357, !dbg !1789

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1789
  br label %cond.end359, !dbg !1789

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1789
  br label %cond.end361, !dbg !1789

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1789
  br label %cond.end363, !dbg !1789

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1789
  br label %cond.end365, !dbg !1789

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1789
  br label %cond.end367, !dbg !1789

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1789
  br label %cond.end369, !dbg !1789

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1789
  br label %cond.end371, !dbg !1789

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1789
  br label %cond.end373, !dbg !1789

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1789
  br label %cond.end375, !dbg !1789

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1789
  br label %cond.end377, !dbg !1789

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1789
  br label %cond.end379, !dbg !1789

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1789
  br label %cond.end381, !dbg !1789

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1789
  br label %cond.end383, !dbg !1789

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1789
  br label %cond.end385, !dbg !1789

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1789
  br label %cond.end387, !dbg !1789

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1789
  br label %cond.end389, !dbg !1789

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1789
  br label %cond.end391, !dbg !1789

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1789
  br label %cond.end393, !dbg !1789

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1789
  br label %cond.end395, !dbg !1789

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1789
  br label %cond.end397, !dbg !1789

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1789
  br label %cond.end399, !dbg !1789

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1789
  br label %cond.end401, !dbg !1789

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1789
  br label %cond.end403, !dbg !1789

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1789
  br label %cond.end405, !dbg !1789

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1789
  br label %cond.end407, !dbg !1789

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1789
  br label %cond.end409, !dbg !1789

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1789
  br label %cond.end411, !dbg !1789

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1789
  br label %cond.end413, !dbg !1789

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1789
  br label %cond.end415, !dbg !1789

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1789
  br label %cond.end417, !dbg !1789

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1789
  br label %cond.end419, !dbg !1789

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1789
  br label %cond.end421, !dbg !1789

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1789
  br label %cond.end423, !dbg !1789

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1789
  br label %cond.end425, !dbg !1789

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1789
  br label %cond.end427, !dbg !1789

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1789
  br label %cond.end429, !dbg !1789

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1789
  br label %cond.end431, !dbg !1789

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1789
  br label %cond.end433, !dbg !1789

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1789
  br label %cond.end435, !dbg !1789

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1789
  br label %cond.end437, !dbg !1789

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1789
  br label %cond.end440, !dbg !1789

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1789

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1789
  br label %cond.end444, !dbg !1789

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1789
  %sub443 = sub i64 %72, 1, !dbg !1789
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !1789
  br label %cond.end444, !dbg !1789

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1789
  %sub446 = sub i32 %cond445, 12, !dbg !1790
  %add = add i32 %sub446, 1, !dbg !1791
  store i32 %add, i32* %retval, align 4, !dbg !1792
  br label %return, !dbg !1792

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1793
  %dec = add i64 %73, -1, !dbg !1793
  store i64 %dec, i64* %size.addr, align 8, !dbg !1793
  %74 = load i64, i64* %size.addr, align 8, !dbg !1794
  %shr = lshr i64 %74, 12, !dbg !1794
  store i64 %shr, i64* %size.addr, align 8, !dbg !1794
  %75 = load i64, i64* %size.addr, align 8, !dbg !1795
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1772
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1796
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1797
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !1796, !srcloc !1798
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1796
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1799
  %add.i = add i32 %79, 1, !dbg !1800
  store i32 %add.i, i32* %retval, align 4, !dbg !1801
  br label %return, !dbg !1801

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1802
  ret i32 %80, !dbg !1802
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !1803 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1764, metadata !DIExpression()), !dbg !1807
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1771, metadata !DIExpression()), !dbg !1809
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1810, metadata !DIExpression()), !dbg !1811
  %0 = load i64, i64* %n.addr, align 8, !dbg !1812
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1809
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1813
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1814
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !1813, !srcloc !1798
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1813
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1815
  %add.i = add i32 %4, 1, !dbg !1816
  %sub = sub i32 %add.i, 1, !dbg !1817
  ret i32 %sub, !dbg !1818
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1819 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1825, metadata !DIExpression()), !dbg !1826
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1827, metadata !DIExpression()), !dbg !1828
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1829, metadata !DIExpression()), !dbg !1830
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1831, metadata !DIExpression()), !dbg !1832
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1833
  ret i8* %0, !dbg !1834
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_get_type(%struct.acpi_namespace_node*) #3

; Function Attrs: noredzone
declare dso_local void @acpi_ex_enter_interpreter() #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_get_bank_field_arguments(%union.acpi_operand_object*) #3

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_node_name(i8*) #3

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_type_name(i32) #3

; Function Attrs: noredzone
declare dso_local void @acpi_ex_exit_interpreter() #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_execute_STA(%struct.acpi_namespace_node*, i32*) #3

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
!llvm.named.register.rsp = !{!914}
!llvm.module.flags = !{!915, !916, !917, !918}
!llvm.ident = !{!919}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !913, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !912, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsinit.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !16, !17, !18, !23, !25, !26, !789, !791, !792, !811, !911}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !15, line: 424, baseType: !16)
!15 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !15, line: 127, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !19, line: 23, baseType: !20)
!19 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !21, line: 31, baseType: !22)
!21 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!22 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !19, line: 21, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !21, line: 27, baseType: !7)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !15, line: 421, baseType: !23)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !28, line: 133, size: 384, elements: !29)
!28 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!29 = !{!30, !776, !777, !778, !779, !785, !786, !787, !788}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !27, file: !28, line: 134, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !33, line: 367, size: 576, elements: !34)
!33 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!34 = !{!35, !49, !62, !74, !88, !102, !111, !427, !444, !459, !472, !550, !562, !576, !586, !604, !626, !645, !664, !683, !696, !722, !739, !752, !766, !775}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !32, file: !33, line: 368, baseType: !36, size: 128)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !33, line: 73, size: 128, elements: !37)
!37 = !{!38, !39, !43, !44, !48}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !36, file: !33, line: 74, baseType: !31, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !36, file: !33, line: 74, baseType: !40, size: 8, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !19, line: 17, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !21, line: 21, baseType: !42)
!42 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !36, file: !33, line: 74, baseType: !40, size: 8, offset: 72)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !36, file: !33, line: 74, baseType: !45, size: 16, offset: 80)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !19, line: 19, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !21, line: 24, baseType: !47)
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !36, file: !33, line: 74, baseType: !40, size: 8, offset: 96)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !32, file: !33, line: 369, baseType: !50, size: 192)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !33, line: 76, size: 192, elements: !51)
!51 = !{!52, !53, !54, !55, !56, !57, !61}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !50, file: !33, line: 77, baseType: !31, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !50, file: !33, line: 77, baseType: !40, size: 8, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !50, file: !33, line: 77, baseType: !40, size: 8, offset: 72)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !50, file: !33, line: 77, baseType: !45, size: 16, offset: 80)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !50, file: !33, line: 77, baseType: !40, size: 8, offset: 96)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !50, file: !33, line: 77, baseType: !58, size: 24, offset: 104)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 24, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 3)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !50, file: !33, line: 78, baseType: !18, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !32, file: !33, line: 370, baseType: !63, size: 256)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !33, line: 93, size: 256, elements: !64)
!64 = !{!65, !66, !67, !68, !69, !70, !73}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !63, file: !33, line: 94, baseType: !31, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !63, file: !33, line: 94, baseType: !40, size: 8, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !63, file: !33, line: 94, baseType: !40, size: 8, offset: 72)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !63, file: !33, line: 94, baseType: !45, size: 16, offset: 80)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !63, file: !33, line: 94, baseType: !40, size: 8, offset: 96)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !63, file: !33, line: 94, baseType: !71, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !63, file: !33, line: 94, baseType: !23, size: 32, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !32, file: !33, line: 371, baseType: !75, size: 384)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !33, line: 97, size: 384, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !84, !85, !86, !87}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !75, file: !33, line: 98, baseType: !31, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !75, file: !33, line: 98, baseType: !40, size: 8, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !33, line: 98, baseType: !40, size: 8, offset: 72)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !75, file: !33, line: 98, baseType: !45, size: 16, offset: 80)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !33, line: 98, baseType: !40, size: 8, offset: 96)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !75, file: !33, line: 98, baseType: !83, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !75, file: !33, line: 98, baseType: !23, size: 32, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !75, file: !33, line: 99, baseType: !23, size: 32, offset: 224)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !75, file: !33, line: 100, baseType: !83, size: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !75, file: !33, line: 101, baseType: !26, size: 64, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !32, file: !33, line: 372, baseType: !89, size: 384)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !33, line: 104, size: 384, elements: !90)
!90 = !{!91, !92, !93, !94, !95, !96, !97, !99, !100, !101}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !89, file: !33, line: 105, baseType: !31, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !89, file: !33, line: 105, baseType: !40, size: 8, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !33, line: 105, baseType: !40, size: 8, offset: 72)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !89, file: !33, line: 105, baseType: !45, size: 16, offset: 80)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !89, file: !33, line: 105, baseType: !40, size: 8, offset: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !89, file: !33, line: 105, baseType: !26, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !89, file: !33, line: 106, baseType: !98, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !89, file: !33, line: 107, baseType: !83, size: 64, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !89, file: !33, line: 108, baseType: !23, size: 32, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !89, file: !33, line: 109, baseType: !23, size: 32, offset: 352)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !32, file: !33, line: 373, baseType: !103, size: 192)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !33, line: 118, size: 192, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !103, file: !33, line: 119, baseType: !31, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !103, file: !33, line: 119, baseType: !40, size: 8, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !33, line: 119, baseType: !40, size: 8, offset: 72)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !103, file: !33, line: 119, baseType: !45, size: 16, offset: 80)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !103, file: !33, line: 119, baseType: !40, size: 8, offset: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !103, file: !33, line: 119, baseType: !16, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !32, file: !33, line: 374, baseType: !112, size: 448)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !33, line: 143, size: 448, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !424, !425, !426}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !112, file: !33, line: 144, baseType: !31, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !112, file: !33, line: 144, baseType: !40, size: 8, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !112, file: !33, line: 144, baseType: !40, size: 8, offset: 72)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !112, file: !33, line: 144, baseType: !45, size: 16, offset: 80)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !112, file: !33, line: 144, baseType: !40, size: 8, offset: 96)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !112, file: !33, line: 144, baseType: !40, size: 8, offset: 104)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !112, file: !33, line: 145, baseType: !40, size: 8, offset: 112)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !112, file: !33, line: 146, baseType: !40, size: 8, offset: 120)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !112, file: !33, line: 147, baseType: !31, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !112, file: !33, line: 148, baseType: !31, size: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !112, file: !33, line: 149, baseType: !83, size: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !112, file: !33, line: 153, baseType: !126, size: 64, offset: 320)
!126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !112, file: !33, line: 150, size: 64, elements: !127)
!127 = !{!128, !423}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !126, file: !33, line: 151, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !28, line: 248, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!25, !133}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !135, line: 37, size: 9024, elements: !136)
!135 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !369, !370, !371, !372, !373, !377, !379, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !406, !407, !408, !409, !410, !411, !412, !413, !415, !421}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !134, file: !135, line: 38, baseType: !133, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !134, file: !135, line: 39, baseType: !40, size: 8, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !134, file: !135, line: 40, baseType: !40, size: 8, offset: 72)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !134, file: !135, line: 41, baseType: !45, size: 16, offset: 80)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !134, file: !135, line: 42, baseType: !40, size: 8, offset: 96)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !134, file: !135, line: 43, baseType: !40, size: 8, offset: 104)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !134, file: !135, line: 44, baseType: !40, size: 8, offset: 112)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !134, file: !135, line: 45, baseType: !145, size: 16, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !15, line: 445, baseType: !45)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !134, file: !135, line: 46, baseType: !40, size: 8, offset: 144)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !134, file: !135, line: 47, baseType: !40, size: 8, offset: 152)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !134, file: !135, line: 48, baseType: !40, size: 8, offset: 160)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !134, file: !135, line: 49, baseType: !40, size: 8, offset: 168)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !134, file: !135, line: 50, baseType: !40, size: 8, offset: 176)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !134, file: !135, line: 51, baseType: !40, size: 8, offset: 184)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !134, file: !135, line: 52, baseType: !40, size: 8, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !134, file: !135, line: 53, baseType: !40, size: 8, offset: 200)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !134, file: !135, line: 54, baseType: !83, size: 64, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !134, file: !135, line: 55, baseType: !23, size: 32, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !134, file: !135, line: 56, baseType: !23, size: 32, offset: 352)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !134, file: !135, line: 57, baseType: !23, size: 32, offset: 384)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !134, file: !135, line: 58, baseType: !23, size: 32, offset: 416)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !134, file: !135, line: 60, baseType: !160, size: 640, offset: 448)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !28, line: 893, size: 640, elements: !161)
!161 = !{!162, !163, !164, !165, !166, !167, !251, !252, !367, !368}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !160, file: !28, line: 894, baseType: !83, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !160, file: !28, line: 895, baseType: !83, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !160, file: !28, line: 896, baseType: !83, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !160, file: !28, line: 897, baseType: !83, size: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !160, file: !28, line: 898, baseType: !83, size: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !160, file: !28, line: 899, baseType: !168, size: 64, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !28, line: 875, size: 1600, elements: !170)
!170 = !{!171, !191, !207}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !169, file: !28, line: 876, baseType: !172, size: 448)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !28, line: 828, size: 448, elements: !173)
!173 = !{!174, !175, !176, !177, !178, !179, !180, !181, !190}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !172, file: !28, line: 829, baseType: !168, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !172, file: !28, line: 829, baseType: !40, size: 8, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !172, file: !28, line: 829, baseType: !40, size: 8, offset: 72)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !172, file: !28, line: 829, baseType: !45, size: 16, offset: 80)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !172, file: !28, line: 829, baseType: !83, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !28, line: 829, baseType: !168, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !172, file: !28, line: 829, baseType: !26, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !172, file: !28, line: 829, baseType: !182, size: 64, offset: 320)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !28, line: 716, size: 64, elements: !183)
!183 = !{!184, !185, !186, !187, !188, !189}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !182, file: !28, line: 717, baseType: !18, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !182, file: !28, line: 718, baseType: !23, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !182, file: !28, line: 719, baseType: !71, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !182, file: !28, line: 720, baseType: !83, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !28, line: 721, baseType: !71, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !182, file: !28, line: 722, baseType: !168, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !172, file: !28, line: 829, baseType: !40, size: 8, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !169, file: !28, line: 877, baseType: !192, size: 640)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !28, line: 835, size: 640, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !192, file: !28, line: 836, baseType: !168, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !192, file: !28, line: 836, baseType: !40, size: 8, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !192, file: !28, line: 836, baseType: !40, size: 8, offset: 72)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !192, file: !28, line: 836, baseType: !45, size: 16, offset: 80)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !192, file: !28, line: 836, baseType: !83, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !192, file: !28, line: 836, baseType: !168, size: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !192, file: !28, line: 836, baseType: !26, size: 64, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !192, file: !28, line: 836, baseType: !182, size: 64, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !192, file: !28, line: 836, baseType: !40, size: 8, offset: 384)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !192, file: !28, line: 836, baseType: !71, size: 64, offset: 448)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !192, file: !28, line: 837, baseType: !83, size: 64, offset: 512)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !192, file: !28, line: 838, baseType: !23, size: 32, offset: 576)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !192, file: !28, line: 839, baseType: !23, size: 32, offset: 608)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !169, file: !28, line: 878, baseType: !208, size: 1600)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !28, line: 846, size: 1600, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !208, file: !28, line: 847, baseType: !168, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !208, file: !28, line: 847, baseType: !40, size: 8, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !208, file: !28, line: 847, baseType: !40, size: 8, offset: 72)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !208, file: !28, line: 847, baseType: !45, size: 16, offset: 80)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !208, file: !28, line: 847, baseType: !83, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !28, line: 847, baseType: !168, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !208, file: !28, line: 847, baseType: !26, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !208, file: !28, line: 847, baseType: !182, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !208, file: !28, line: 847, baseType: !40, size: 8, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !208, file: !28, line: 847, baseType: !168, size: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !208, file: !28, line: 848, baseType: !168, size: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !208, file: !28, line: 849, baseType: !71, size: 64, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !208, file: !28, line: 850, baseType: !40, size: 8, offset: 640)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !208, file: !28, line: 851, baseType: !71, size: 64, offset: 704)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !208, file: !28, line: 852, baseType: !71, size: 64, offset: 768)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !208, file: !28, line: 853, baseType: !71, size: 64, offset: 832)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !208, file: !28, line: 854, baseType: !227, size: 32, offset: 896)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 32, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 4)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !208, file: !28, line: 855, baseType: !23, size: 32, offset: 928)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !208, file: !28, line: 856, baseType: !23, size: 32, offset: 960)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !208, file: !28, line: 857, baseType: !23, size: 32, offset: 992)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !208, file: !28, line: 858, baseType: !23, size: 32, offset: 1024)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !208, file: !28, line: 859, baseType: !23, size: 32, offset: 1056)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !208, file: !28, line: 860, baseType: !23, size: 32, offset: 1088)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !208, file: !28, line: 861, baseType: !23, size: 32, offset: 1120)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !208, file: !28, line: 862, baseType: !23, size: 32, offset: 1152)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !208, file: !28, line: 863, baseType: !23, size: 32, offset: 1184)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !208, file: !28, line: 864, baseType: !23, size: 32, offset: 1216)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !208, file: !28, line: 865, baseType: !23, size: 32, offset: 1248)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !208, file: !28, line: 866, baseType: !23, size: 32, offset: 1280)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !208, file: !28, line: 867, baseType: !23, size: 32, offset: 1312)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !208, file: !28, line: 868, baseType: !45, size: 16, offset: 1344)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !208, file: !28, line: 869, baseType: !40, size: 8, offset: 1360)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !208, file: !28, line: 870, baseType: !40, size: 8, offset: 1368)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !208, file: !28, line: 871, baseType: !40, size: 8, offset: 1376)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !208, file: !28, line: 872, baseType: !248, size: 160, offset: 1384)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 160, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 20)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !160, file: !28, line: 900, baseType: !26, size: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !160, file: !28, line: 901, baseType: !253, size: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !28, line: 663, size: 640, elements: !255)
!255 = !{!256, !264, !277, !286, !295, !308, !322, !334, !346}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !254, file: !28, line: 664, baseType: !257, size: 128)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !28, line: 567, size: 128, elements: !258)
!258 = !{!259, !260, !261, !262, !263}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !257, file: !28, line: 568, baseType: !16, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !257, file: !28, line: 568, baseType: !40, size: 8, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !257, file: !28, line: 568, baseType: !40, size: 8, offset: 72)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !257, file: !28, line: 568, baseType: !45, size: 16, offset: 80)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !257, file: !28, line: 568, baseType: !45, size: 16, offset: 96)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !254, file: !28, line: 665, baseType: !265, size: 384)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !28, line: 593, size: 384, elements: !266)
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !28, line: 594, baseType: !16, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !265, file: !28, line: 594, baseType: !40, size: 8, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !265, file: !28, line: 594, baseType: !40, size: 8, offset: 72)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !265, file: !28, line: 594, baseType: !45, size: 16, offset: 80)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !265, file: !28, line: 594, baseType: !45, size: 16, offset: 96)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !265, file: !28, line: 594, baseType: !45, size: 16, offset: 112)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !265, file: !28, line: 595, baseType: !168, size: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !265, file: !28, line: 596, baseType: !83, size: 64, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !265, file: !28, line: 597, baseType: !83, size: 64, offset: 256)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !265, file: !28, line: 598, baseType: !18, size: 64, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !254, file: !28, line: 666, baseType: !278, size: 192)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !28, line: 573, size: 192, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !28, line: 574, baseType: !16, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !278, file: !28, line: 574, baseType: !40, size: 8, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !28, line: 574, baseType: !40, size: 8, offset: 72)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !278, file: !28, line: 574, baseType: !45, size: 16, offset: 80)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !278, file: !28, line: 574, baseType: !45, size: 16, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !278, file: !28, line: 574, baseType: !31, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !254, file: !28, line: 667, baseType: !287, size: 192)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !28, line: 604, size: 192, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !28, line: 605, baseType: !16, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !287, file: !28, line: 605, baseType: !40, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !28, line: 605, baseType: !40, size: 8, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !287, file: !28, line: 605, baseType: !45, size: 16, offset: 80)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !287, file: !28, line: 605, baseType: !45, size: 16, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !287, file: !28, line: 605, baseType: !26, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !254, file: !28, line: 668, baseType: !296, size: 448)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !28, line: 608, size: 448, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303, !304, !305, !306, !307}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !28, line: 609, baseType: !16, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !296, file: !28, line: 609, baseType: !40, size: 8, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !28, line: 609, baseType: !40, size: 8, offset: 72)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !296, file: !28, line: 609, baseType: !45, size: 16, offset: 80)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !296, file: !28, line: 609, baseType: !45, size: 16, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !296, file: !28, line: 609, baseType: !23, size: 32, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !296, file: !28, line: 610, baseType: !168, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !296, file: !28, line: 611, baseType: !83, size: 64, offset: 256)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !296, file: !28, line: 612, baseType: !83, size: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !296, file: !28, line: 613, baseType: !23, size: 32, offset: 384)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !254, file: !28, line: 669, baseType: !309, size: 512)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !28, line: 580, size: 512, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !28, line: 581, baseType: !16, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !309, file: !28, line: 581, baseType: !40, size: 8, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !28, line: 581, baseType: !40, size: 8, offset: 72)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !309, file: !28, line: 581, baseType: !45, size: 16, offset: 80)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !309, file: !28, line: 581, baseType: !45, size: 16, offset: 96)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !309, file: !28, line: 581, baseType: !23, size: 32, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !309, file: !28, line: 582, baseType: !31, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !309, file: !28, line: 583, baseType: !31, size: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !309, file: !28, line: 584, baseType: !133, size: 64, offset: 320)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !309, file: !28, line: 585, baseType: !16, size: 64, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !309, file: !28, line: 586, baseType: !23, size: 32, offset: 448)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !254, file: !28, line: 670, baseType: !323, size: 320)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !28, line: 620, size: 320, elements: !324)
!324 = !{!325, !326, !327, !328, !329, !330, !331, !332, !333}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !323, file: !28, line: 621, baseType: !16, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !323, file: !28, line: 621, baseType: !40, size: 8, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !323, file: !28, line: 621, baseType: !40, size: 8, offset: 72)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !323, file: !28, line: 621, baseType: !45, size: 16, offset: 80)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !323, file: !28, line: 621, baseType: !45, size: 16, offset: 96)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !323, file: !28, line: 621, baseType: !40, size: 8, offset: 112)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !323, file: !28, line: 622, baseType: !133, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !323, file: !28, line: 623, baseType: !31, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !323, file: !28, line: 624, baseType: !18, size: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !254, file: !28, line: 671, baseType: !335, size: 640)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !28, line: 631, size: 640, elements: !336)
!336 = !{!337, !338, !339, !340, !341, !342}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !335, file: !28, line: 632, baseType: !16, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !335, file: !28, line: 632, baseType: !40, size: 8, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !335, file: !28, line: 632, baseType: !40, size: 8, offset: 72)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !335, file: !28, line: 632, baseType: !45, size: 16, offset: 80)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !335, file: !28, line: 632, baseType: !45, size: 16, offset: 96)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !335, file: !28, line: 633, baseType: !343, size: 512, offset: 128)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 512, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 8)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !254, file: !28, line: 672, baseType: !347, size: 320)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !28, line: 654, size: 320, elements: !348)
!348 = !{!349, !350, !351, !352, !353, !354, !355, !356, !357}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !28, line: 655, baseType: !16, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !347, file: !28, line: 655, baseType: !40, size: 8, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !347, file: !28, line: 655, baseType: !40, size: 8, offset: 72)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !347, file: !28, line: 655, baseType: !45, size: 16, offset: 80)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !347, file: !28, line: 655, baseType: !45, size: 16, offset: 96)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !347, file: !28, line: 655, baseType: !40, size: 8, offset: 112)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !347, file: !28, line: 656, baseType: !26, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !347, file: !28, line: 657, baseType: !31, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !347, file: !28, line: 658, baseType: !358, size: 64, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !28, line: 645, size: 128, elements: !360)
!360 = !{!361, !366}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !359, file: !28, line: 646, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !15, line: 1052, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !14, !23, !16}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !359, file: !28, line: 647, baseType: !16, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !160, file: !28, line: 902, baseType: !168, size: 64, offset: 512)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !160, file: !28, line: 903, baseType: !23, size: 32, offset: 576)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !134, file: !135, line: 61, baseType: !23, size: 32, offset: 1088)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !134, file: !135, line: 62, baseType: !23, size: 32, offset: 1120)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !134, file: !135, line: 63, baseType: !45, size: 16, offset: 1152)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !134, file: !135, line: 64, baseType: !40, size: 8, offset: 1168)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !134, file: !135, line: 66, baseType: !374, size: 2688, offset: 1216)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2688, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 7)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !134, file: !135, line: 67, baseType: !378, size: 3072, offset: 3904)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 3072, elements: !344)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !134, file: !135, line: 68, baseType: !380, size: 576, offset: 6976)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 576, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 9)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !134, file: !135, line: 69, baseType: !98, size: 64, offset: 7552)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !134, file: !135, line: 71, baseType: !83, size: 64, offset: 7616)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !134, file: !135, line: 72, baseType: !98, size: 64, offset: 7680)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !134, file: !135, line: 73, baseType: !253, size: 64, offset: 7744)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !134, file: !135, line: 74, baseType: !26, size: 64, offset: 7808)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !134, file: !135, line: 75, baseType: !31, size: 64, offset: 7872)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !134, file: !135, line: 76, baseType: !26, size: 64, offset: 7936)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !134, file: !135, line: 77, baseType: !168, size: 64, offset: 8000)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !134, file: !135, line: 78, baseType: !31, size: 64, offset: 8064)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !134, file: !135, line: 79, baseType: !26, size: 64, offset: 8128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !134, file: !135, line: 80, baseType: !71, size: 64, offset: 8192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !134, file: !135, line: 81, baseType: !168, size: 64, offset: 8256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !134, file: !135, line: 82, baseType: !396, size: 64, offset: 8320)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !28, line: 702, size: 128, elements: !399)
!399 = !{!400, !401, !402, !403, !404, !405}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !398, file: !28, line: 706, baseType: !23, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !398, file: !28, line: 707, baseType: !23, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !398, file: !28, line: 708, baseType: !45, size: 16, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !398, file: !28, line: 709, baseType: !40, size: 8, offset: 80)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !398, file: !28, line: 710, baseType: !40, size: 8, offset: 88)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !398, file: !28, line: 711, baseType: !40, size: 8, offset: 96)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !134, file: !135, line: 83, baseType: !168, size: 64, offset: 8384)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !134, file: !135, line: 84, baseType: !31, size: 64, offset: 8448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !134, file: !135, line: 85, baseType: !253, size: 64, offset: 8512)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !134, file: !135, line: 86, baseType: !31, size: 64, offset: 8576)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !134, file: !135, line: 87, baseType: !253, size: 64, offset: 8640)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !134, file: !135, line: 88, baseType: !168, size: 64, offset: 8704)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !134, file: !135, line: 89, baseType: !168, size: 64, offset: 8768)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !134, file: !135, line: 90, baseType: !414, size: 64, offset: 8832)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !134, file: !135, line: 91, baseType: !416, size: 64, offset: 8896)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !28, line: 637, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!25, !133, !420}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !134, file: !135, line: 92, baseType: !422, size: 64, offset: 8960)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !28, line: 641, baseType: !130)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !126, file: !33, line: 152, baseType: !31, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !112, file: !33, line: 155, baseType: !23, size: 32, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !112, file: !33, line: 156, baseType: !145, size: 16, offset: 416)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !112, file: !33, line: 157, baseType: !40, size: 8, offset: 432)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !32, file: !33, line: 375, baseType: !428, size: 576)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !33, line: 122, size: 576, elements: !429)
!429 = !{!430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !428, file: !33, line: 123, baseType: !31, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !428, file: !33, line: 123, baseType: !40, size: 8, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !428, file: !33, line: 123, baseType: !40, size: 8, offset: 72)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !428, file: !33, line: 123, baseType: !45, size: 16, offset: 80)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !428, file: !33, line: 123, baseType: !40, size: 8, offset: 96)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !428, file: !33, line: 123, baseType: !40, size: 8, offset: 104)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !428, file: !33, line: 124, baseType: !45, size: 16, offset: 112)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !428, file: !33, line: 125, baseType: !16, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !428, file: !33, line: 126, baseType: !18, size: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !428, file: !33, line: 127, baseType: !414, size: 64, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !428, file: !33, line: 128, baseType: !31, size: 64, offset: 320)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !428, file: !33, line: 129, baseType: !31, size: 64, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !428, file: !33, line: 130, baseType: !26, size: 64, offset: 448)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !428, file: !33, line: 131, baseType: !40, size: 8, offset: 512)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !32, file: !33, line: 376, baseType: !445, size: 448)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !33, line: 134, size: 448, elements: !446)
!446 = !{!447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !458}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !445, file: !33, line: 135, baseType: !31, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !445, file: !33, line: 135, baseType: !40, size: 8, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !445, file: !33, line: 135, baseType: !40, size: 8, offset: 72)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !445, file: !33, line: 135, baseType: !45, size: 16, offset: 80)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !445, file: !33, line: 135, baseType: !40, size: 8, offset: 96)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !445, file: !33, line: 135, baseType: !40, size: 8, offset: 104)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !445, file: !33, line: 136, baseType: !26, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !445, file: !33, line: 137, baseType: !31, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !445, file: !33, line: 138, baseType: !31, size: 64, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !445, file: !33, line: 139, baseType: !457, size: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !15, line: 129, baseType: !18)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !445, file: !33, line: 140, baseType: !23, size: 32, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !32, file: !33, line: 377, baseType: !460, size: 320)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !33, line: 184, size: 320, elements: !461)
!461 = !{!462, !463, !464, !465, !466, !467, !471}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !460, file: !33, line: 185, baseType: !31, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !460, file: !33, line: 185, baseType: !40, size: 8, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !460, file: !33, line: 185, baseType: !40, size: 8, offset: 72)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !460, file: !33, line: 185, baseType: !45, size: 16, offset: 80)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !460, file: !33, line: 185, baseType: !40, size: 8, offset: 96)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !460, file: !33, line: 185, baseType: !468, size: 128, offset: 128)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 128, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 2)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !460, file: !33, line: 185, baseType: !31, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !32, file: !33, line: 378, baseType: !473, size: 384)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !33, line: 187, size: 384, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !473, file: !33, line: 188, baseType: !31, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !473, file: !33, line: 188, baseType: !40, size: 8, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !473, file: !33, line: 188, baseType: !40, size: 8, offset: 72)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !473, file: !33, line: 188, baseType: !45, size: 16, offset: 80)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !473, file: !33, line: 188, baseType: !40, size: 8, offset: 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !473, file: !33, line: 189, baseType: !468, size: 128, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !473, file: !33, line: 189, baseType: !31, size: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !473, file: !33, line: 189, baseType: !483, size: 64, offset: 320)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !28, line: 480, size: 576, elements: !485)
!485 = !{!486, !487, !488, !489, !497, !512, !544, !545, !546, !547, !548, !549}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !484, file: !28, line: 481, baseType: !26, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !484, file: !28, line: 482, baseType: !483, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !484, file: !28, line: 483, baseType: !483, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !484, file: !28, line: 484, baseType: !490, size: 64, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !28, line: 497, size: 256, elements: !492)
!492 = !{!493, !494, !495, !496}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !491, file: !28, line: 498, baseType: !490, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !491, file: !28, line: 499, baseType: !490, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !491, file: !28, line: 500, baseType: !483, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !491, file: !28, line: 501, baseType: !23, size: 32, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !484, file: !28, line: 485, baseType: !498, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !28, line: 466, size: 320, elements: !500)
!500 = !{!501, !506, !507, !508, !509, !510, !511}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !499, file: !28, line: 467, baseType: !502, size: 128)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !28, line: 459, size: 128, elements: !503)
!503 = !{!504, !505}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !502, file: !28, line: 460, baseType: !40, size: 8)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !502, file: !28, line: 461, baseType: !18, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !499, file: !28, line: 468, baseType: !502, size: 128, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !499, file: !28, line: 469, baseType: !45, size: 16, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !499, file: !28, line: 470, baseType: !40, size: 8, offset: 272)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !499, file: !28, line: 471, baseType: !40, size: 8, offset: 280)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !499, file: !28, line: 472, baseType: !40, size: 8, offset: 288)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !499, file: !28, line: 473, baseType: !40, size: 8, offset: 296)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !484, file: !28, line: 486, baseType: !513, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !28, line: 448, size: 192, elements: !515)
!515 = !{!516, !539, !540, !541, !542, !543}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !514, file: !28, line: 449, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !28, line: 438, size: 64, elements: !518)
!518 = !{!519, !520, !533}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !517, file: !28, line: 439, baseType: !26, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !517, file: !28, line: 440, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !28, line: 419, size: 256, elements: !523)
!523 = !{!524, !529, !530, !531, !532}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !522, file: !28, line: 420, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !15, line: 1049, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!23, !14, !23, !16}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !522, file: !28, line: 421, baseType: !16, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !522, file: !28, line: 422, baseType: !26, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !522, file: !28, line: 423, baseType: !40, size: 8, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !522, file: !28, line: 424, baseType: !40, size: 8, offset: 200)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !517, file: !28, line: 441, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !28, line: 429, size: 128, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !535, file: !28, line: 430, baseType: !26, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !535, file: !28, line: 431, baseType: !534, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !514, file: !28, line: 450, baseType: !498, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !514, file: !28, line: 451, baseType: !40, size: 8, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !514, file: !28, line: 452, baseType: !40, size: 8, offset: 136)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !514, file: !28, line: 453, baseType: !40, size: 8, offset: 144)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !514, file: !28, line: 454, baseType: !40, size: 8, offset: 152)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !484, file: !28, line: 487, baseType: !18, size: 64, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !484, file: !28, line: 488, baseType: !23, size: 32, offset: 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !484, file: !28, line: 489, baseType: !45, size: 16, offset: 480)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !484, file: !28, line: 490, baseType: !45, size: 16, offset: 496)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !484, file: !28, line: 491, baseType: !40, size: 8, offset: 512)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !484, file: !28, line: 492, baseType: !40, size: 8, offset: 520)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !32, file: !33, line: 379, baseType: !551, size: 384)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !33, line: 192, size: 384, elements: !552)
!552 = !{!553, !554, !555, !556, !557, !558, !559, !560, !561}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !551, file: !33, line: 193, baseType: !31, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !551, file: !33, line: 193, baseType: !40, size: 8, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !551, file: !33, line: 193, baseType: !40, size: 8, offset: 72)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !551, file: !33, line: 193, baseType: !45, size: 16, offset: 80)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !551, file: !33, line: 193, baseType: !40, size: 8, offset: 96)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !551, file: !33, line: 193, baseType: !468, size: 128, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !551, file: !33, line: 193, baseType: !31, size: 64, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !551, file: !33, line: 193, baseType: !23, size: 32, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !551, file: !33, line: 194, baseType: !23, size: 32, offset: 352)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !32, file: !33, line: 380, baseType: !563, size: 384)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !33, line: 197, size: 384, elements: !564)
!564 = !{!565, !566, !567, !568, !569, !570, !571, !572, !573, !574}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !563, file: !33, line: 198, baseType: !31, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !563, file: !33, line: 198, baseType: !40, size: 8, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !563, file: !33, line: 198, baseType: !40, size: 8, offset: 72)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !563, file: !33, line: 198, baseType: !45, size: 16, offset: 80)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !563, file: !33, line: 198, baseType: !40, size: 8, offset: 96)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !563, file: !33, line: 200, baseType: !40, size: 8, offset: 104)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !563, file: !33, line: 201, baseType: !40, size: 8, offset: 112)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !563, file: !33, line: 202, baseType: !468, size: 128, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !563, file: !33, line: 202, baseType: !31, size: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !563, file: !33, line: 202, baseType: !575, size: 64, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !15, line: 128, baseType: !18)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !32, file: !33, line: 381, baseType: !577, size: 320)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !33, line: 205, size: 320, elements: !578)
!578 = !{!579, !580, !581, !582, !583, !584, !585}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !577, file: !33, line: 206, baseType: !31, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !577, file: !33, line: 206, baseType: !40, size: 8, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !577, file: !33, line: 206, baseType: !40, size: 8, offset: 72)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !577, file: !33, line: 206, baseType: !45, size: 16, offset: 80)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !577, file: !33, line: 206, baseType: !40, size: 8, offset: 96)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !577, file: !33, line: 206, baseType: !468, size: 128, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !577, file: !33, line: 206, baseType: !31, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !32, file: !33, line: 382, baseType: !587, size: 384)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !33, line: 233, size: 384, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !587, file: !33, line: 234, baseType: !31, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !587, file: !33, line: 234, baseType: !40, size: 8, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !587, file: !33, line: 234, baseType: !40, size: 8, offset: 72)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !587, file: !33, line: 234, baseType: !45, size: 16, offset: 80)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !33, line: 234, baseType: !40, size: 8, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !587, file: !33, line: 234, baseType: !40, size: 8, offset: 104)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !587, file: !33, line: 234, baseType: !40, size: 8, offset: 112)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !587, file: !33, line: 234, baseType: !40, size: 8, offset: 120)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !587, file: !33, line: 234, baseType: !26, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !587, file: !33, line: 234, baseType: !23, size: 32, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !587, file: !33, line: 234, baseType: !23, size: 32, offset: 224)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !587, file: !33, line: 234, baseType: !23, size: 32, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !587, file: !33, line: 234, baseType: !40, size: 8, offset: 288)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !587, file: !33, line: 234, baseType: !40, size: 8, offset: 296)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !587, file: !33, line: 234, baseType: !31, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !32, file: !33, line: 383, baseType: !605, size: 576)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !33, line: 237, size: 576, elements: !606)
!606 = !{!607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !605, file: !33, line: 238, baseType: !31, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !605, file: !33, line: 238, baseType: !40, size: 8, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !605, file: !33, line: 238, baseType: !40, size: 8, offset: 72)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !605, file: !33, line: 238, baseType: !45, size: 16, offset: 80)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !605, file: !33, line: 238, baseType: !40, size: 8, offset: 96)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !605, file: !33, line: 238, baseType: !40, size: 8, offset: 104)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !605, file: !33, line: 238, baseType: !40, size: 8, offset: 112)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !605, file: !33, line: 238, baseType: !40, size: 8, offset: 120)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !605, file: !33, line: 238, baseType: !26, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !605, file: !33, line: 238, baseType: !23, size: 32, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !605, file: !33, line: 238, baseType: !23, size: 32, offset: 224)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !605, file: !33, line: 238, baseType: !23, size: 32, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !605, file: !33, line: 238, baseType: !40, size: 8, offset: 288)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !605, file: !33, line: 238, baseType: !40, size: 8, offset: 296)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !605, file: !33, line: 238, baseType: !45, size: 16, offset: 304)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !605, file: !33, line: 239, baseType: !31, size: 64, offset: 320)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !605, file: !33, line: 240, baseType: !83, size: 64, offset: 384)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !605, file: !33, line: 241, baseType: !45, size: 16, offset: 448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !605, file: !33, line: 242, baseType: !83, size: 64, offset: 512)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !32, file: !33, line: 384, baseType: !627, size: 384)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !33, line: 262, size: 384, elements: !628)
!628 = !{!629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !627, file: !33, line: 263, baseType: !31, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !627, file: !33, line: 263, baseType: !40, size: 8, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !627, file: !33, line: 263, baseType: !40, size: 8, offset: 72)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !627, file: !33, line: 263, baseType: !45, size: 16, offset: 80)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !627, file: !33, line: 263, baseType: !40, size: 8, offset: 96)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !627, file: !33, line: 263, baseType: !40, size: 8, offset: 104)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !627, file: !33, line: 263, baseType: !40, size: 8, offset: 112)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !627, file: !33, line: 263, baseType: !40, size: 8, offset: 120)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !627, file: !33, line: 263, baseType: !26, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !627, file: !33, line: 263, baseType: !23, size: 32, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !627, file: !33, line: 263, baseType: !23, size: 32, offset: 224)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !627, file: !33, line: 263, baseType: !23, size: 32, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !627, file: !33, line: 263, baseType: !40, size: 8, offset: 288)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !627, file: !33, line: 263, baseType: !40, size: 8, offset: 296)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !627, file: !33, line: 263, baseType: !40, size: 8, offset: 304)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !627, file: !33, line: 264, baseType: !31, size: 64, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !32, file: !33, line: 385, baseType: !646, size: 448)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !33, line: 245, size: 448, elements: !647)
!647 = !{!648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !646, file: !33, line: 246, baseType: !31, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !646, file: !33, line: 246, baseType: !40, size: 8, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !646, file: !33, line: 246, baseType: !40, size: 8, offset: 72)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !646, file: !33, line: 246, baseType: !45, size: 16, offset: 80)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !646, file: !33, line: 246, baseType: !40, size: 8, offset: 96)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !646, file: !33, line: 246, baseType: !40, size: 8, offset: 104)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !646, file: !33, line: 246, baseType: !40, size: 8, offset: 112)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !646, file: !33, line: 246, baseType: !40, size: 8, offset: 120)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !646, file: !33, line: 246, baseType: !26, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !646, file: !33, line: 246, baseType: !23, size: 32, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !646, file: !33, line: 246, baseType: !23, size: 32, offset: 224)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !646, file: !33, line: 246, baseType: !23, size: 32, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !646, file: !33, line: 246, baseType: !40, size: 8, offset: 288)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !646, file: !33, line: 246, baseType: !40, size: 8, offset: 296)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !646, file: !33, line: 246, baseType: !31, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !646, file: !33, line: 247, baseType: !31, size: 64, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !32, file: !33, line: 386, baseType: !665, size: 448)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !33, line: 250, size: 448, elements: !666)
!666 = !{!667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !665, file: !33, line: 251, baseType: !31, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !665, file: !33, line: 251, baseType: !40, size: 8, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !665, file: !33, line: 251, baseType: !40, size: 8, offset: 72)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !665, file: !33, line: 251, baseType: !45, size: 16, offset: 80)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !665, file: !33, line: 251, baseType: !40, size: 8, offset: 96)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !665, file: !33, line: 251, baseType: !40, size: 8, offset: 104)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !665, file: !33, line: 251, baseType: !40, size: 8, offset: 112)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !665, file: !33, line: 251, baseType: !40, size: 8, offset: 120)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !665, file: !33, line: 251, baseType: !26, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !665, file: !33, line: 251, baseType: !23, size: 32, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !665, file: !33, line: 251, baseType: !23, size: 32, offset: 224)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !665, file: !33, line: 251, baseType: !23, size: 32, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !665, file: !33, line: 251, baseType: !40, size: 8, offset: 288)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !665, file: !33, line: 251, baseType: !40, size: 8, offset: 296)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !665, file: !33, line: 256, baseType: !31, size: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !665, file: !33, line: 257, baseType: !31, size: 64, offset: 384)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !32, file: !33, line: 387, baseType: !684, size: 512)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !33, line: 273, size: 512, elements: !685)
!685 = !{!686, !687, !688, !689, !690, !691, !692, !693, !694, !695}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !684, file: !33, line: 274, baseType: !31, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !684, file: !33, line: 274, baseType: !40, size: 8, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !684, file: !33, line: 274, baseType: !40, size: 8, offset: 72)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !684, file: !33, line: 274, baseType: !45, size: 16, offset: 80)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !684, file: !33, line: 274, baseType: !40, size: 8, offset: 96)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !684, file: !33, line: 274, baseType: !26, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !684, file: !33, line: 275, baseType: !23, size: 32, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !684, file: !33, line: 276, baseType: !362, size: 64, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !684, file: !33, line: 277, baseType: !16, size: 64, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !684, file: !33, line: 278, baseType: !468, size: 128, offset: 384)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !32, file: !33, line: 388, baseType: !697, size: 512)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !33, line: 281, size: 512, elements: !698)
!698 = !{!699, !700, !701, !702, !703, !704, !705, !706, !712, !713, !714, !720, !721}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !697, file: !33, line: 282, baseType: !31, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !697, file: !33, line: 282, baseType: !40, size: 8, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !697, file: !33, line: 282, baseType: !40, size: 8, offset: 72)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !697, file: !33, line: 282, baseType: !45, size: 16, offset: 80)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !697, file: !33, line: 282, baseType: !40, size: 8, offset: 96)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !697, file: !33, line: 282, baseType: !40, size: 8, offset: 104)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !697, file: !33, line: 283, baseType: !40, size: 8, offset: 112)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !697, file: !33, line: 284, baseType: !707, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !15, line: 1084, baseType: !708)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!25, !23, !457, !23, !711, !16, !16}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !697, file: !33, line: 285, baseType: !26, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !697, file: !33, line: 286, baseType: !16, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !697, file: !33, line: 287, baseType: !715, size: 64, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !15, line: 1102, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!25, !14, !23, !16, !719}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !697, file: !33, line: 288, baseType: !31, size: 64, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !697, file: !33, line: 289, baseType: !31, size: 64, offset: 448)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !32, file: !33, line: 389, baseType: !723, size: 512)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !33, line: 307, size: 512, elements: !724)
!724 = !{!725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !723, file: !33, line: 308, baseType: !31, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !723, file: !33, line: 308, baseType: !40, size: 8, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !723, file: !33, line: 308, baseType: !40, size: 8, offset: 72)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !723, file: !33, line: 308, baseType: !45, size: 16, offset: 80)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !723, file: !33, line: 308, baseType: !40, size: 8, offset: 96)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !723, file: !33, line: 308, baseType: !40, size: 8, offset: 104)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !723, file: !33, line: 309, baseType: !40, size: 8, offset: 112)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !723, file: !33, line: 310, baseType: !40, size: 8, offset: 120)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !723, file: !33, line: 311, baseType: !16, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !723, file: !33, line: 312, baseType: !26, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !723, file: !33, line: 313, baseType: !98, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !723, file: !33, line: 314, baseType: !83, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !723, file: !33, line: 315, baseType: !83, size: 64, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !723, file: !33, line: 316, baseType: !23, size: 32, offset: 448)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !32, file: !33, line: 390, baseType: !740, size: 448)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !33, line: 340, size: 448, elements: !741)
!741 = !{!742, !743, !744, !745, !746, !747, !748, !749, !750, !751}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !740, file: !33, line: 341, baseType: !31, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !740, file: !33, line: 341, baseType: !40, size: 8, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !740, file: !33, line: 341, baseType: !40, size: 8, offset: 72)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !740, file: !33, line: 341, baseType: !45, size: 16, offset: 80)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !740, file: !33, line: 341, baseType: !40, size: 8, offset: 96)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !740, file: !33, line: 341, baseType: !26, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !740, file: !33, line: 342, baseType: !26, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !740, file: !33, line: 343, baseType: !16, size: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !740, file: !33, line: 344, baseType: !83, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !740, file: !33, line: 345, baseType: !23, size: 32, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !32, file: !33, line: 391, baseType: !753, size: 256)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !33, line: 350, size: 256, elements: !754)
!754 = !{!755, !756, !757, !758, !759, !760, !765}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !753, file: !33, line: 351, baseType: !31, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !753, file: !33, line: 351, baseType: !40, size: 8, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !753, file: !33, line: 351, baseType: !40, size: 8, offset: 72)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !753, file: !33, line: 351, baseType: !45, size: 16, offset: 80)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !753, file: !33, line: 351, baseType: !40, size: 8, offset: 96)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !753, file: !33, line: 351, baseType: !761, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !15, line: 1055, baseType: !762)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !14, !16}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !753, file: !33, line: 352, baseType: !16, size: 64, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !32, file: !33, line: 392, baseType: !767, size: 192)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !33, line: 357, size: 192, elements: !768)
!768 = !{!769, !770, !771, !772, !773, !774}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !767, file: !33, line: 358, baseType: !31, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !767, file: !33, line: 358, baseType: !40, size: 8, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !767, file: !33, line: 358, baseType: !40, size: 8, offset: 72)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !767, file: !33, line: 358, baseType: !45, size: 16, offset: 80)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !33, line: 358, baseType: !40, size: 8, offset: 96)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !767, file: !33, line: 358, baseType: !31, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !32, file: !33, line: 399, baseType: !27, size: 384)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !27, file: !28, line: 135, baseType: !40, size: 8, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !27, file: !28, line: 136, baseType: !40, size: 8, offset: 72)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !27, file: !28, line: 137, baseType: !45, size: 16, offset: 80)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !27, file: !28, line: 138, baseType: !780, size: 32, offset: 96)
!780 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !781, line: 327, size: 32, elements: !782)
!781 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !780, file: !781, line: 328, baseType: !23, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !780, file: !781, line: 329, baseType: !227, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !27, file: !28, line: 139, baseType: !26, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !27, file: !28, line: 140, baseType: !26, size: 64, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !27, file: !28, line: 141, baseType: !26, size: 64, offset: 256)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !27, file: !28, line: 142, baseType: !145, size: 16, offset: 320)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !790, line: 148, baseType: !7)
!790 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!791 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_init_walk_info", file: !135, line: 97, size: 512, elements: !794)
!794 = !{!795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "table_index", scope: !793, file: !135, line: 98, baseType: !23, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "object_count", scope: !793, file: !135, line: 99, baseType: !23, size: 32, offset: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "method_count", scope: !793, file: !135, line: 100, baseType: !23, size: 32, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "serial_method_count", scope: !793, file: !135, line: 101, baseType: !23, size: 32, offset: 96)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "non_serial_method_count", scope: !793, file: !135, line: 102, baseType: !23, size: 32, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "serialized_method_count", scope: !793, file: !135, line: 103, baseType: !23, size: 32, offset: 160)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "device_count", scope: !793, file: !135, line: 104, baseType: !23, size: 32, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "op_region_count", scope: !793, file: !135, line: 105, baseType: !23, size: 32, offset: 224)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "field_count", scope: !793, file: !135, line: 106, baseType: !23, size: 32, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_count", scope: !793, file: !135, line: 107, baseType: !23, size: 32, offset: 288)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "package_count", scope: !793, file: !135, line: 108, baseType: !23, size: 32, offset: 320)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "op_region_init", scope: !793, file: !135, line: 109, baseType: !23, size: 32, offset: 352)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "field_init", scope: !793, file: !135, line: 110, baseType: !23, size: 32, offset: 384)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_init", scope: !793, file: !135, line: 111, baseType: !23, size: 32, offset: 416)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "package_init", scope: !793, file: !135, line: 112, baseType: !23, size: 32, offset: 448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !793, file: !135, line: 113, baseType: !145, size: 16, offset: 480)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_walk_info", file: !135, line: 187, size: 256, elements: !813)
!813 = !{!814, !841, !908, !909, !910}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "table_desc", scope: !812, file: !135, line: 188, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_desc", file: !781, line: 334, size: 256, elements: !817)
!817 = !{!818, !819, !836, !837, !838, !839, !840}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !816, file: !781, line: 335, baseType: !457, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !816, file: !781, line: 336, baseType: !820, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !781, line: 68, size: 288, elements: !822)
!822 = !{!823, !824, !825, !826, !827, !831, !833, !834, !835}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !821, file: !781, line: 69, baseType: !227, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !821, file: !781, line: 70, baseType: !23, size: 32, offset: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !821, file: !781, line: 71, baseType: !40, size: 8, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !821, file: !781, line: 72, baseType: !40, size: 8, offset: 72)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !821, file: !781, line: 73, baseType: !828, size: 48, offset: 80)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 48, elements: !829)
!829 = !{!830}
!830 = !DISubrange(count: 6)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !821, file: !781, line: 74, baseType: !832, size: 64, offset: 128)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 64, elements: !344)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !821, file: !781, line: 75, baseType: !23, size: 32, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !821, file: !781, line: 76, baseType: !227, size: 32, offset: 224)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !821, file: !781, line: 77, baseType: !23, size: 32, offset: 256)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !816, file: !781, line: 337, baseType: !23, size: 32, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !816, file: !781, line: 338, baseType: !780, size: 32, offset: 160)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !816, file: !781, line: 339, baseType: !145, size: 16, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !816, file: !781, line: 340, baseType: !40, size: 8, offset: 208)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "validation_count", scope: !816, file: !781, line: 341, baseType: !45, size: 16, offset: 224)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "evaluate_info", scope: !812, file: !135, line: 189, baseType: !842, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !135, line: 152, size: 704, elements: !844)
!844 = !{!845, !846, !849, !850, !851, !852, !853, !899, !900, !901, !902, !903, !904, !905, !906, !907}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !843, file: !135, line: 155, baseType: !26, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !843, file: !135, line: 156, baseType: !847, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !843, file: !135, line: 157, baseType: !98, size: 64, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !843, file: !135, line: 159, baseType: !26, size: 64, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !843, file: !135, line: 160, baseType: !31, size: 64, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !843, file: !135, line: 161, baseType: !71, size: 64, offset: 320)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !843, file: !135, line: 163, baseType: !854, size: 64, offset: 384)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !856)
!856 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !28, line: 351, size: 56, elements: !857)
!857 = !{!858, !864, !873, !881, !890}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !856, file: !28, line: 352, baseType: !859, size: 56)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !28, line: 295, size: 56, elements: !860)
!860 = !{!861, !862, !863}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !859, file: !28, line: 296, baseType: !227, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !859, file: !28, line: 297, baseType: !45, size: 16, offset: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !859, file: !28, line: 298, baseType: !40, size: 8, offset: 48)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !856, file: !28, line: 353, baseType: !865, size: 56)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !28, line: 314, size: 56, elements: !866)
!866 = !{!867, !868, !869, !870, !871, !872}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !865, file: !28, line: 315, baseType: !40, size: 8)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !865, file: !28, line: 316, baseType: !40, size: 8, offset: 8)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !865, file: !28, line: 317, baseType: !40, size: 8, offset: 16)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !865, file: !28, line: 318, baseType: !40, size: 8, offset: 24)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !865, file: !28, line: 319, baseType: !40, size: 8, offset: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !865, file: !28, line: 320, baseType: !45, size: 16, offset: 40)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !856, file: !28, line: 354, baseType: !874, size: 56)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !28, line: 325, size: 56, elements: !875)
!875 = !{!876, !877, !878, !880}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !874, file: !28, line: 326, baseType: !40, size: 8)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !874, file: !28, line: 327, baseType: !40, size: 8, offset: 8)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !874, file: !28, line: 328, baseType: !879, size: 32, offset: 16)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 32, elements: !228)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !874, file: !28, line: 329, baseType: !40, size: 8, offset: 48)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !856, file: !28, line: 355, baseType: !882, size: 56)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !28, line: 334, size: 56, elements: !883)
!883 = !{!884, !885, !886, !888, !889}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !882, file: !28, line: 335, baseType: !40, size: 8)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !882, file: !28, line: 336, baseType: !40, size: 8, offset: 8)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !882, file: !28, line: 337, baseType: !887, size: 16, offset: 16)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 16, elements: !469)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !882, file: !28, line: 338, baseType: !40, size: 8, offset: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !882, file: !28, line: 339, baseType: !45, size: 16, offset: 40)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !856, file: !28, line: 356, baseType: !891, size: 56)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !28, line: 342, size: 56, elements: !892)
!892 = !{!893, !894, !895, !896, !897, !898}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !891, file: !28, line: 343, baseType: !40, size: 8)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !891, file: !28, line: 344, baseType: !40, size: 8, offset: 8)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !891, file: !28, line: 345, baseType: !40, size: 8, offset: 16)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !891, file: !28, line: 346, baseType: !40, size: 8, offset: 24)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !891, file: !28, line: 347, baseType: !40, size: 8, offset: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !891, file: !28, line: 348, baseType: !45, size: 16, offset: 40)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !843, file: !135, line: 164, baseType: !31, size: 64, offset: 448)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !843, file: !135, line: 165, baseType: !31, size: 64, offset: 512)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !843, file: !135, line: 167, baseType: !23, size: 32, offset: 576)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !843, file: !135, line: 168, baseType: !23, size: 32, offset: 608)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !843, file: !135, line: 169, baseType: !45, size: 16, offset: 640)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !843, file: !135, line: 170, baseType: !45, size: 16, offset: 656)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !843, file: !135, line: 171, baseType: !40, size: 8, offset: 672)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !843, file: !135, line: 172, baseType: !40, size: 8, offset: 680)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !843, file: !135, line: 173, baseType: !40, size: 8, offset: 688)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "device_count", scope: !812, file: !135, line: 190, baseType: !23, size: 32, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "num_STA", scope: !812, file: !135, line: 191, baseType: !23, size: 32, offset: 160)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "num_INI", scope: !812, file: !135, line: 192, baseType: !23, size: 32, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!912 = !{!0}
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !848, size: 56, elements: !375)
!914 = !{!"rsp"}
!915 = !{i32 7, !"Dwarf Version", i32 4}
!916 = !{i32 2, !"Debug Info Version", i32 3}
!917 = !{i32 1, !"wchar_size", i32 2}
!918 = !{i32 1, !"Code Model", i32 2}
!919 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!920 = distinct !DISubprogram(name: "acpi_ns_initialize_objects", scope: !3, file: !3, line: 46, type: !921, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !923)
!921 = !DISubroutineType(types: !922)
!922 = !{!25}
!923 = !{}
!924 = !DILocalVariable(name: "status", scope: !920, file: !3, line: 48, type: !25)
!925 = !DILocation(line: 48, column: 14, scope: !920)
!926 = !DILocalVariable(name: "info", scope: !920, file: !3, line: 49, type: !793)
!927 = !DILocation(line: 49, column: 29, scope: !920)
!928 = !DILocation(line: 62, column: 2, scope: !920)
!929 = !DILocation(line: 73, column: 16, scope: !920)
!930 = !DILocation(line: 71, column: 11, scope: !920)
!931 = !DILocation(line: 71, column: 9, scope: !920)
!932 = !DILocation(line: 74, column: 6, scope: !933)
!933 = distinct !DILexicalBlock(scope: !920, file: !3, line: 74, column: 6)
!934 = !DILocation(line: 74, column: 6, scope: !920)
!935 = !DILocation(line: 75, column: 3, scope: !936)
!936 = distinct !DILexicalBlock(scope: !933, file: !3, line: 74, column: 28)
!937 = !DILocation(line: 76, column: 2, scope: !936)
!938 = !DILocation(line: 86, column: 2, scope: !920)
!939 = distinct !DISubprogram(name: "acpi_ns_init_one_object", scope: !3, file: !3, line: 316, type: !717, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !923)
!940 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !939, file: !3, line: 316, type: !14)
!941 = !DILocation(line: 316, column: 37, scope: !939)
!942 = !DILocalVariable(name: "level", arg: 2, scope: !939, file: !3, line: 317, type: !23)
!943 = !DILocation(line: 317, column: 8, scope: !939)
!944 = !DILocalVariable(name: "context", arg: 3, scope: !939, file: !3, line: 317, type: !16)
!945 = !DILocation(line: 317, column: 21, scope: !939)
!946 = !DILocalVariable(name: "return_value", arg: 4, scope: !939, file: !3, line: 317, type: !719)
!947 = !DILocation(line: 317, column: 37, scope: !939)
!948 = !DILocalVariable(name: "type", scope: !939, file: !3, line: 319, type: !949)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !15, line: 635, baseType: !23)
!950 = !DILocation(line: 319, column: 19, scope: !939)
!951 = !DILocalVariable(name: "status", scope: !939, file: !3, line: 320, type: !25)
!952 = !DILocation(line: 320, column: 14, scope: !939)
!953 = !DILocalVariable(name: "info", scope: !939, file: !3, line: 321, type: !792)
!954 = !DILocation(line: 321, column: 30, scope: !939)
!955 = !DILocation(line: 322, column: 36, scope: !939)
!956 = !DILocation(line: 322, column: 6, scope: !939)
!957 = !DILocalVariable(name: "node", scope: !939, file: !3, line: 323, type: !26)
!958 = !DILocation(line: 323, column: 30, scope: !939)
!959 = !DILocation(line: 324, column: 36, scope: !939)
!960 = !DILocation(line: 324, column: 6, scope: !939)
!961 = !DILocalVariable(name: "obj_desc", scope: !939, file: !3, line: 325, type: !31)
!962 = !DILocation(line: 325, column: 29, scope: !939)
!963 = !DILocation(line: 329, column: 2, scope: !939)
!964 = !DILocation(line: 329, column: 8, scope: !939)
!965 = !DILocation(line: 329, column: 20, scope: !939)
!966 = !DILocation(line: 333, column: 26, scope: !939)
!967 = !DILocation(line: 333, column: 9, scope: !939)
!968 = !DILocation(line: 333, column: 7, scope: !939)
!969 = !DILocation(line: 334, column: 41, scope: !939)
!970 = !DILocation(line: 334, column: 13, scope: !939)
!971 = !DILocation(line: 334, column: 11, scope: !939)
!972 = !DILocation(line: 335, column: 7, scope: !973)
!973 = distinct !DILexicalBlock(scope: !939, file: !3, line: 335, column: 6)
!974 = !DILocation(line: 335, column: 6, scope: !939)
!975 = !DILocation(line: 336, column: 3, scope: !976)
!976 = distinct !DILexicalBlock(scope: !973, file: !3, line: 335, column: 17)
!977 = !DILocation(line: 341, column: 10, scope: !939)
!978 = !DILocation(line: 341, column: 2, scope: !939)
!979 = !DILocation(line: 344, column: 3, scope: !980)
!980 = distinct !DILexicalBlock(scope: !939, file: !3, line: 341, column: 16)
!981 = !DILocation(line: 344, column: 9, scope: !980)
!982 = !DILocation(line: 344, column: 24, scope: !980)
!983 = !DILocation(line: 345, column: 3, scope: !980)
!984 = !DILocation(line: 349, column: 3, scope: !980)
!985 = !DILocation(line: 349, column: 9, scope: !980)
!986 = !DILocation(line: 349, column: 20, scope: !980)
!987 = !DILocation(line: 350, column: 3, scope: !980)
!988 = !DILocation(line: 354, column: 3, scope: !980)
!989 = !DILocation(line: 354, column: 9, scope: !980)
!990 = !DILocation(line: 354, column: 20, scope: !980)
!991 = !DILocation(line: 355, column: 3, scope: !980)
!992 = !DILocation(line: 359, column: 3, scope: !980)
!993 = !DILocation(line: 359, column: 9, scope: !980)
!994 = !DILocation(line: 359, column: 21, scope: !980)
!995 = !DILocation(line: 360, column: 3, scope: !980)
!996 = !DILocation(line: 364, column: 3, scope: !980)
!997 = !DILocation(line: 364, column: 9, scope: !980)
!998 = !DILocation(line: 364, column: 22, scope: !980)
!999 = !DILocation(line: 365, column: 3, scope: !980)
!1000 = !DILocation(line: 371, column: 3, scope: !980)
!1001 = !DILocation(line: 376, column: 6, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !939, file: !3, line: 376, column: 6)
!1003 = !DILocation(line: 376, column: 16, scope: !1002)
!1004 = !DILocation(line: 376, column: 23, scope: !1002)
!1005 = !DILocation(line: 376, column: 29, scope: !1002)
!1006 = !DILocation(line: 376, column: 6, scope: !939)
!1007 = !DILocation(line: 377, column: 3, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 376, column: 50)
!1009 = !DILocation(line: 382, column: 2, scope: !939)
!1010 = !DILocation(line: 388, column: 10, scope: !939)
!1011 = !DILocation(line: 388, column: 2, scope: !939)
!1012 = !DILocation(line: 393, column: 3, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !939, file: !3, line: 388, column: 16)
!1014 = !DILocation(line: 393, column: 9, scope: !1013)
!1015 = !DILocation(line: 393, column: 19, scope: !1013)
!1016 = !DILocation(line: 394, column: 45, scope: !1013)
!1017 = !DILocation(line: 394, column: 12, scope: !1013)
!1018 = !DILocation(line: 394, column: 10, scope: !1013)
!1019 = !DILocation(line: 395, column: 3, scope: !1013)
!1020 = !DILocation(line: 401, column: 3, scope: !1013)
!1021 = !DILocation(line: 401, column: 9, scope: !1013)
!1022 = !DILocation(line: 401, column: 21, scope: !1013)
!1023 = !DILocation(line: 403, column: 32, scope: !1013)
!1024 = !DILocation(line: 403, column: 44, scope: !1013)
!1025 = !DILocation(line: 403, column: 7, scope: !1013)
!1026 = !DILocation(line: 402, column: 10, scope: !1013)
!1027 = !DILocation(line: 404, column: 3, scope: !1013)
!1028 = !DILocation(line: 410, column: 10, scope: !1013)
!1029 = !DILocation(line: 411, column: 3, scope: !1013)
!1030 = !DILocation(line: 415, column: 3, scope: !1013)
!1031 = !DILocation(line: 418, column: 6, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !939, file: !3, line: 418, column: 6)
!1033 = !DILocation(line: 418, column: 6, scope: !939)
!1034 = !DILocation(line: 419, column: 3, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 418, column: 28)
!1036 = !DILocation(line: 423, column: 2, scope: !1035)
!1037 = !DILocation(line: 429, column: 2, scope: !939)
!1038 = !DILocation(line: 430, column: 2, scope: !939)
!1039 = !DILocation(line: 431, column: 1, scope: !939)
!1040 = distinct !DISubprogram(name: "acpi_ns_initialize_devices", scope: !3, file: !3, line: 105, type: !1041, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !923)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!25, !23}
!1043 = !DILocalVariable(name: "flags", arg: 1, scope: !1040, file: !3, line: 105, type: !23)
!1044 = !DILocation(line: 105, column: 44, scope: !1040)
!1045 = !DILocalVariable(name: "status", scope: !1040, file: !3, line: 107, type: !25)
!1046 = !DILocation(line: 107, column: 14, scope: !1040)
!1047 = !DILocalVariable(name: "info", scope: !1040, file: !3, line: 108, type: !812)
!1048 = !DILocation(line: 108, column: 31, scope: !1040)
!1049 = !DILocalVariable(name: "handle", scope: !1040, file: !3, line: 109, type: !14)
!1050 = !DILocation(line: 109, column: 14, scope: !1040)
!1051 = !DILocation(line: 113, column: 8, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 113, column: 6)
!1053 = !DILocation(line: 113, column: 14, scope: !1052)
!1054 = !DILocation(line: 113, column: 6, scope: !1040)
!1055 = !DILocation(line: 119, column: 8, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 113, column: 38)
!1057 = !DILocation(line: 119, column: 21, scope: !1056)
!1058 = !DILocation(line: 120, column: 8, scope: !1056)
!1059 = !DILocation(line: 120, column: 16, scope: !1056)
!1060 = !DILocation(line: 121, column: 8, scope: !1056)
!1061 = !DILocation(line: 121, column: 16, scope: !1056)
!1062 = !DILocation(line: 132, column: 7, scope: !1056)
!1063 = !DILocation(line: 129, column: 12, scope: !1056)
!1064 = !DILocation(line: 129, column: 10, scope: !1056)
!1065 = !DILocation(line: 133, column: 7, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 133, column: 7)
!1067 = !DILocation(line: 133, column: 7, scope: !1056)
!1068 = !DILocation(line: 134, column: 4, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 133, column: 29)
!1070 = !DILocation(line: 140, column: 7, scope: !1056)
!1071 = !DILocation(line: 139, column: 8, scope: !1056)
!1072 = !DILocation(line: 139, column: 22, scope: !1056)
!1073 = !DILocation(line: 141, column: 13, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 141, column: 7)
!1075 = !DILocation(line: 141, column: 8, scope: !1074)
!1076 = !DILocation(line: 141, column: 7, scope: !1056)
!1077 = !DILocation(line: 142, column: 11, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 141, column: 28)
!1079 = !DILocation(line: 143, column: 4, scope: !1078)
!1080 = !DILocation(line: 151, column: 37, scope: !1056)
!1081 = !DILocation(line: 151, column: 8, scope: !1056)
!1082 = !DILocation(line: 151, column: 23, scope: !1056)
!1083 = !DILocation(line: 151, column: 35, scope: !1056)
!1084 = !DILocation(line: 152, column: 8, scope: !1056)
!1085 = !DILocation(line: 152, column: 23, scope: !1056)
!1086 = !DILocation(line: 152, column: 41, scope: !1056)
!1087 = !DILocation(line: 153, column: 8, scope: !1056)
!1088 = !DILocation(line: 153, column: 23, scope: !1056)
!1089 = !DILocation(line: 153, column: 34, scope: !1056)
!1090 = !DILocation(line: 154, column: 8, scope: !1056)
!1091 = !DILocation(line: 154, column: 23, scope: !1056)
!1092 = !DILocation(line: 154, column: 29, scope: !1056)
!1093 = !DILocation(line: 156, column: 34, scope: !1056)
!1094 = !DILocation(line: 156, column: 12, scope: !1056)
!1095 = !DILocation(line: 156, column: 10, scope: !1056)
!1096 = !DILocation(line: 157, column: 7, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 157, column: 7)
!1098 = !DILocation(line: 157, column: 7, scope: !1056)
!1099 = !DILocation(line: 158, column: 9, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 157, column: 29)
!1101 = !DILocation(line: 158, column: 16, scope: !1100)
!1102 = !DILocation(line: 159, column: 3, scope: !1100)
!1103 = !DILocation(line: 166, column: 12, scope: !1056)
!1104 = !DILocation(line: 166, column: 10, scope: !1056)
!1105 = !DILocation(line: 167, column: 7, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 167, column: 7)
!1107 = !DILocation(line: 167, column: 7, scope: !1056)
!1108 = !DILocation(line: 168, column: 16, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 167, column: 29)
!1110 = !DILocation(line: 168, column: 4, scope: !1109)
!1111 = !DILocation(line: 170, column: 38, scope: !1109)
!1112 = !DILocation(line: 170, column: 9, scope: !1109)
!1113 = !DILocation(line: 170, column: 24, scope: !1109)
!1114 = !DILocation(line: 170, column: 36, scope: !1109)
!1115 = !DILocation(line: 171, column: 9, scope: !1109)
!1116 = !DILocation(line: 171, column: 24, scope: !1109)
!1117 = !DILocation(line: 171, column: 42, scope: !1109)
!1118 = !DILocation(line: 173, column: 9, scope: !1109)
!1119 = !DILocation(line: 173, column: 24, scope: !1109)
!1120 = !DILocation(line: 173, column: 35, scope: !1109)
!1121 = !DILocation(line: 174, column: 9, scope: !1109)
!1122 = !DILocation(line: 174, column: 24, scope: !1109)
!1123 = !DILocation(line: 174, column: 30, scope: !1109)
!1124 = !DILocation(line: 176, column: 35, scope: !1109)
!1125 = !DILocation(line: 176, column: 13, scope: !1109)
!1126 = !DILocation(line: 176, column: 11, scope: !1109)
!1127 = !DILocation(line: 177, column: 8, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 177, column: 8)
!1129 = !DILocation(line: 177, column: 8, scope: !1109)
!1130 = !DILocation(line: 178, column: 10, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 177, column: 30)
!1132 = !DILocation(line: 178, column: 17, scope: !1131)
!1133 = !DILocation(line: 179, column: 4, scope: !1131)
!1134 = !DILocation(line: 180, column: 3, scope: !1109)
!1135 = !DILocation(line: 181, column: 2, scope: !1056)
!1136 = !DILocation(line: 196, column: 8, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 196, column: 6)
!1138 = !DILocation(line: 196, column: 14, scope: !1137)
!1139 = !DILocation(line: 196, column: 6, scope: !1040)
!1140 = !DILocation(line: 200, column: 12, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 196, column: 45)
!1142 = !DILocation(line: 200, column: 10, scope: !1141)
!1143 = !DILocation(line: 201, column: 7, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 201, column: 7)
!1145 = !DILocation(line: 201, column: 7, scope: !1141)
!1146 = !DILocation(line: 202, column: 4, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 201, column: 29)
!1148 = !DILocation(line: 204, column: 2, scope: !1141)
!1149 = !DILocation(line: 206, column: 8, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 206, column: 6)
!1151 = !DILocation(line: 206, column: 14, scope: !1150)
!1152 = !DILocation(line: 206, column: 6, scope: !1040)
!1153 = !DILocation(line: 213, column: 7, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 206, column: 38)
!1155 = !DILocation(line: 210, column: 12, scope: !1154)
!1156 = !DILocation(line: 210, column: 10, scope: !1154)
!1157 = !DILocation(line: 220, column: 7, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 220, column: 7)
!1159 = !DILocation(line: 220, column: 25, scope: !1158)
!1160 = !DILocation(line: 220, column: 7, scope: !1154)
!1161 = !DILocation(line: 221, column: 35, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 220, column: 47)
!1163 = !DILocation(line: 222, column: 3, scope: !1162)
!1164 = !DILocation(line: 224, column: 3, scope: !1154)
!1165 = !DILocation(line: 225, column: 7, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 225, column: 7)
!1167 = !DILocation(line: 225, column: 7, scope: !1154)
!1168 = !DILocation(line: 226, column: 4, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 225, column: 29)
!1170 = !DILocation(line: 234, column: 2, scope: !1154)
!1171 = !DILocation(line: 236, column: 2, scope: !1040)
!1172 = !DILabel(scope: !1040, name: "error_exit", file: !3, line: 238)
!1173 = !DILocation(line: 238, column: 1, scope: !1040)
!1174 = !DILocation(line: 239, column: 2, scope: !1040)
!1175 = !DILocation(line: 240, column: 2, scope: !1040)
!1176 = !DILocation(line: 241, column: 1, scope: !1040)
!1177 = distinct !DISubprogram(name: "acpi_ns_find_ini_methods", scope: !3, file: !3, line: 450, type: !717, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !923)
!1178 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !1177, file: !3, line: 450, type: !14)
!1179 = !DILocation(line: 450, column: 38, scope: !1177)
!1180 = !DILocalVariable(name: "nesting_level", arg: 2, scope: !1177, file: !3, line: 451, type: !23)
!1181 = !DILocation(line: 451, column: 9, scope: !1177)
!1182 = !DILocalVariable(name: "context", arg: 3, scope: !1177, file: !3, line: 451, type: !16)
!1183 = !DILocation(line: 451, column: 30, scope: !1177)
!1184 = !DILocalVariable(name: "return_value", arg: 4, scope: !1177, file: !3, line: 451, type: !719)
!1185 = !DILocation(line: 451, column: 46, scope: !1177)
!1186 = !DILocalVariable(name: "info", scope: !1177, file: !3, line: 453, type: !811)
!1187 = !DILocation(line: 453, column: 32, scope: !1177)
!1188 = !DILocation(line: 454, column: 6, scope: !1177)
!1189 = !DILocalVariable(name: "node", scope: !1177, file: !3, line: 455, type: !26)
!1190 = !DILocation(line: 455, column: 30, scope: !1177)
!1191 = !DILocalVariable(name: "parent_node", scope: !1177, file: !3, line: 456, type: !26)
!1192 = !DILocation(line: 456, column: 30, scope: !1177)
!1193 = !DILocation(line: 460, column: 9, scope: !1177)
!1194 = !DILocation(line: 460, column: 7, scope: !1177)
!1195 = !DILocation(line: 461, column: 7, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 461, column: 6)
!1197 = !DILocation(line: 461, column: 13, scope: !1196)
!1198 = !DILocation(line: 461, column: 18, scope: !1196)
!1199 = !DILocation(line: 461, column: 39, scope: !1196)
!1200 = !DILocation(line: 462, column: 7, scope: !1196)
!1201 = !DILocation(line: 462, column: 13, scope: !1196)
!1202 = !DILocation(line: 462, column: 18, scope: !1196)
!1203 = !DILocation(line: 462, column: 42, scope: !1196)
!1204 = !DILocation(line: 463, column: 7, scope: !1196)
!1205 = !DILocation(line: 463, column: 13, scope: !1196)
!1206 = !DILocation(line: 463, column: 18, scope: !1196)
!1207 = !DILocation(line: 461, column: 6, scope: !1177)
!1208 = !DILocation(line: 464, column: 3, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 463, column: 41)
!1210 = !DILocation(line: 464, column: 9, scope: !1209)
!1211 = !DILocation(line: 464, column: 21, scope: !1209)
!1212 = !DILocation(line: 465, column: 3, scope: !1209)
!1213 = !DILocation(line: 470, column: 7, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 470, column: 6)
!1215 = !DILocation(line: 470, column: 6, scope: !1177)
!1216 = !DILocation(line: 471, column: 3, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 470, column: 65)
!1218 = !DILocation(line: 478, column: 16, scope: !1177)
!1219 = !DILocation(line: 478, column: 22, scope: !1177)
!1220 = !DILocation(line: 478, column: 14, scope: !1177)
!1221 = !DILocation(line: 479, column: 10, scope: !1177)
!1222 = !DILocation(line: 479, column: 23, scope: !1177)
!1223 = !DILocation(line: 479, column: 2, scope: !1177)
!1224 = !DILocation(line: 486, column: 3, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 479, column: 29)
!1226 = !DILocation(line: 486, column: 10, scope: !1225)
!1227 = !DILocation(line: 487, column: 4, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 486, column: 23)
!1229 = !DILocation(line: 487, column: 17, scope: !1228)
!1230 = !DILocation(line: 487, column: 23, scope: !1228)
!1231 = !DILocation(line: 488, column: 18, scope: !1228)
!1232 = !DILocation(line: 488, column: 31, scope: !1228)
!1233 = !DILocation(line: 488, column: 16, scope: !1228)
!1234 = distinct !{!1234, !1224, !1235}
!1235 = !DILocation(line: 489, column: 3, scope: !1225)
!1236 = !DILocation(line: 490, column: 3, scope: !1225)
!1237 = !DILocation(line: 494, column: 3, scope: !1225)
!1238 = !DILocation(line: 497, column: 2, scope: !1177)
!1239 = !DILocation(line: 498, column: 1, scope: !1177)
!1240 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1241, file: !1241, line: 55, type: !1242, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !923)
!1241 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!16, !17}
!1244 = !DILocalVariable(name: "flags", arg: 1, scope: !1245, file: !1246, line: 162, type: !791)
!1245 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1246, file: !1246, line: 162, type: !1247, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !923)
!1246 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!1249, !791}
!1249 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1250 = !DILocation(line: 162, column: 67, scope: !1245, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 57, column: 23, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !1241, line: 57, column: 23)
!1253 = distinct !DILexicalBlock(scope: !1240, file: !1241, line: 57, column: 23)
!1254 = !DILocalVariable(name: "size", arg: 1, scope: !1240, file: !1241, line: 55, type: !17)
!1255 = !DILocation(line: 55, column: 55, scope: !1240)
!1256 = !DILocation(line: 57, column: 17, scope: !1240)
!1257 = !DILocalVariable(name: "_flags", scope: !1253, file: !1241, line: 57, type: !791)
!1258 = !DILocation(line: 57, column: 23, scope: !1253)
!1259 = !DILocalVariable(name: "__dummy", scope: !1260, file: !1241, line: 57, type: !791)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !1241, line: 57, column: 23)
!1261 = distinct !DILexicalBlock(scope: !1253, file: !1241, line: 57, column: 23)
!1262 = !DILocation(line: 57, column: 23, scope: !1260)
!1263 = !DILocalVariable(name: "__dummy2", scope: !1260, file: !1241, line: 57, type: !791)
!1264 = !DILocation(line: 57, column: 23, scope: !1261)
!1265 = !DILocalVariable(name: "__dummy", scope: !1266, file: !1241, line: 57, type: !791)
!1266 = distinct !DILexicalBlock(scope: !1252, file: !1241, line: 57, column: 23)
!1267 = !DILocation(line: 57, column: 23, scope: !1266)
!1268 = !DILocalVariable(name: "__dummy2", scope: !1266, file: !1241, line: 57, type: !791)
!1269 = !DILocation(line: 57, column: 23, scope: !1252)
!1270 = !DILocation(line: 164, column: 11, scope: !1245, inlinedAt: !1251)
!1271 = !DILocation(line: 164, column: 17, scope: !1245, inlinedAt: !1251)
!1272 = !DILocation(line: 164, column: 9, scope: !1245, inlinedAt: !1251)
!1273 = !DILocation(line: 57, column: 23, scope: !1240)
!1274 = !DILocation(line: 57, column: 9, scope: !1240)
!1275 = !DILocation(line: 57, column: 2, scope: !1240)
!1276 = distinct !DISubprogram(name: "acpi_ns_init_one_device", scope: !3, file: !3, line: 515, type: !717, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !923)
!1277 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !1276, file: !3, line: 515, type: !14)
!1278 = !DILocation(line: 515, column: 37, scope: !1276)
!1279 = !DILocalVariable(name: "nesting_level", arg: 2, scope: !1276, file: !3, line: 516, type: !23)
!1280 = !DILocation(line: 516, column: 8, scope: !1276)
!1281 = !DILocalVariable(name: "context", arg: 3, scope: !1276, file: !3, line: 516, type: !16)
!1282 = !DILocation(line: 516, column: 29, scope: !1276)
!1283 = !DILocalVariable(name: "return_value", arg: 4, scope: !1276, file: !3, line: 516, type: !719)
!1284 = !DILocation(line: 516, column: 45, scope: !1276)
!1285 = !DILocalVariable(name: "walk_info", scope: !1276, file: !3, line: 518, type: !811)
!1286 = !DILocation(line: 518, column: 32, scope: !1276)
!1287 = !DILocation(line: 519, column: 6, scope: !1276)
!1288 = !DILocalVariable(name: "info", scope: !1276, file: !3, line: 520, type: !842)
!1289 = !DILocation(line: 520, column: 29, scope: !1276)
!1290 = !DILocation(line: 520, column: 36, scope: !1276)
!1291 = !DILocation(line: 520, column: 47, scope: !1276)
!1292 = !DILocalVariable(name: "flags", scope: !1276, file: !3, line: 521, type: !23)
!1293 = !DILocation(line: 521, column: 6, scope: !1276)
!1294 = !DILocalVariable(name: "status", scope: !1276, file: !3, line: 522, type: !25)
!1295 = !DILocation(line: 522, column: 14, scope: !1276)
!1296 = !DILocalVariable(name: "device_node", scope: !1276, file: !3, line: 523, type: !26)
!1297 = !DILocation(line: 523, column: 30, scope: !1276)
!1298 = !DILocation(line: 529, column: 16, scope: !1276)
!1299 = !DILocation(line: 529, column: 14, scope: !1276)
!1300 = !DILocation(line: 530, column: 7, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 530, column: 6)
!1302 = !DILocation(line: 530, column: 20, scope: !1301)
!1303 = !DILocation(line: 530, column: 25, scope: !1301)
!1304 = !DILocation(line: 530, column: 46, scope: !1301)
!1305 = !DILocation(line: 531, column: 7, scope: !1301)
!1306 = !DILocation(line: 531, column: 20, scope: !1301)
!1307 = !DILocation(line: 531, column: 25, scope: !1301)
!1308 = !DILocation(line: 531, column: 49, scope: !1301)
!1309 = !DILocation(line: 532, column: 7, scope: !1301)
!1310 = !DILocation(line: 532, column: 20, scope: !1301)
!1311 = !DILocation(line: 532, column: 25, scope: !1301)
!1312 = !DILocation(line: 530, column: 6, scope: !1276)
!1313 = !DILocation(line: 533, column: 3, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 532, column: 48)
!1315 = !DILocation(line: 543, column: 8, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 543, column: 6)
!1317 = !DILocation(line: 543, column: 21, scope: !1316)
!1318 = !DILocation(line: 543, column: 27, scope: !1316)
!1319 = !DILocation(line: 543, column: 6, scope: !1276)
!1320 = !DILocation(line: 544, column: 3, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 543, column: 53)
!1322 = !DILocation(line: 561, column: 31, scope: !1276)
!1323 = !DILocation(line: 561, column: 11, scope: !1276)
!1324 = !DILocation(line: 561, column: 9, scope: !1276)
!1325 = !DILocation(line: 562, column: 6, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 562, column: 6)
!1327 = !DILocation(line: 562, column: 6, scope: !1276)
!1328 = !DILocation(line: 566, column: 3, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 562, column: 28)
!1330 = !DILocation(line: 579, column: 6, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 579, column: 6)
!1332 = !DILocation(line: 579, column: 12, scope: !1331)
!1333 = !DILocation(line: 579, column: 6, scope: !1276)
!1334 = !DILocation(line: 580, column: 3, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 579, column: 32)
!1336 = !DILocation(line: 580, column: 14, scope: !1335)
!1337 = !DILocation(line: 580, column: 21, scope: !1335)
!1338 = !DILocation(line: 581, column: 2, scope: !1335)
!1339 = !DILocation(line: 589, column: 8, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 589, column: 6)
!1341 = !DILocation(line: 589, column: 14, scope: !1340)
!1342 = !DILocation(line: 589, column: 6, scope: !1276)
!1343 = !DILocation(line: 593, column: 7, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 593, column: 7)
!1345 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 589, column: 42)
!1346 = !DILocation(line: 593, column: 13, scope: !1344)
!1347 = !DILocation(line: 593, column: 7, scope: !1345)
!1348 = !DILocation(line: 609, column: 4, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 593, column: 44)
!1350 = !DILocation(line: 622, column: 4, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 610, column: 10)
!1352 = !DILocation(line: 633, column: 7, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 633, column: 6)
!1354 = !DILocation(line: 633, column: 61, scope: !1353)
!1355 = !DILocation(line: 634, column: 6, scope: !1353)
!1356 = !DILocation(line: 634, column: 19, scope: !1353)
!1357 = !DILocation(line: 634, column: 29, scope: !1353)
!1358 = !DILocation(line: 634, column: 26, scope: !1353)
!1359 = !DILocation(line: 633, column: 6, scope: !1276)
!1360 = !DILocation(line: 639, column: 10, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 634, column: 49)
!1362 = !DILocation(line: 639, column: 3, scope: !1361)
!1363 = !DILocation(line: 640, column: 23, scope: !1361)
!1364 = !DILocation(line: 640, column: 3, scope: !1361)
!1365 = !DILocation(line: 640, column: 9, scope: !1361)
!1366 = !DILocation(line: 640, column: 21, scope: !1361)
!1367 = !DILocation(line: 641, column: 3, scope: !1361)
!1368 = !DILocation(line: 641, column: 9, scope: !1361)
!1369 = !DILocation(line: 641, column: 27, scope: !1361)
!1370 = !DILocation(line: 642, column: 3, scope: !1361)
!1371 = !DILocation(line: 642, column: 9, scope: !1361)
!1372 = !DILocation(line: 642, column: 20, scope: !1361)
!1373 = !DILocation(line: 643, column: 3, scope: !1361)
!1374 = !DILocation(line: 643, column: 9, scope: !1361)
!1375 = !DILocation(line: 643, column: 15, scope: !1361)
!1376 = !DILocation(line: 645, column: 29, scope: !1361)
!1377 = !DILocation(line: 645, column: 12, scope: !1361)
!1378 = !DILocation(line: 645, column: 10, scope: !1361)
!1379 = !DILocation(line: 646, column: 7, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 646, column: 7)
!1381 = !DILocation(line: 646, column: 7, scope: !1361)
!1382 = !DILocation(line: 647, column: 4, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 646, column: 29)
!1384 = !DILocation(line: 647, column: 15, scope: !1383)
!1385 = !DILocation(line: 647, column: 22, scope: !1383)
!1386 = !DILocation(line: 648, column: 3, scope: !1383)
!1387 = !DILocation(line: 663, column: 2, scope: !1361)
!1388 = !DILocation(line: 667, column: 9, scope: !1276)
!1389 = !DILocation(line: 673, column: 6, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 673, column: 6)
!1391 = !DILocation(line: 673, column: 6, scope: !1276)
!1392 = !DILocation(line: 675, column: 7, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 673, column: 29)
!1394 = !DILocation(line: 675, column: 29, scope: !1393)
!1395 = !DILocation(line: 674, column: 10, scope: !1393)
!1396 = !DILocation(line: 676, column: 2, scope: !1393)
!1397 = !DILocation(line: 678, column: 2, scope: !1276)
!1398 = !DILocation(line: 679, column: 1, scope: !1276)
!1399 = distinct !DISubprogram(name: "acpi_os_free", scope: !1241, file: !1241, line: 60, type: !1400, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !923)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{null, !16}
!1402 = !DILocalVariable(name: "memory", arg: 1, scope: !1399, file: !1241, line: 60, type: !16)
!1403 = !DILocation(line: 60, column: 39, scope: !1399)
!1404 = !DILocation(line: 62, column: 8, scope: !1399)
!1405 = !DILocation(line: 62, column: 2, scope: !1399)
!1406 = !DILocation(line: 63, column: 1, scope: !1399)
!1407 = distinct !DISubprogram(name: "acpi_ns_init_one_package", scope: !3, file: !3, line: 260, type: !717, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !923)
!1408 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !1407, file: !3, line: 260, type: !14)
!1409 = !DILocation(line: 260, column: 38, scope: !1407)
!1410 = !DILocalVariable(name: "level", arg: 2, scope: !1407, file: !3, line: 261, type: !23)
!1411 = !DILocation(line: 261, column: 9, scope: !1407)
!1412 = !DILocalVariable(name: "context", arg: 3, scope: !1407, file: !3, line: 261, type: !16)
!1413 = !DILocation(line: 261, column: 22, scope: !1407)
!1414 = !DILocalVariable(name: "return_value", arg: 4, scope: !1407, file: !3, line: 261, type: !719)
!1415 = !DILocation(line: 261, column: 38, scope: !1407)
!1416 = !DILocalVariable(name: "status", scope: !1407, file: !3, line: 263, type: !25)
!1417 = !DILocation(line: 263, column: 14, scope: !1407)
!1418 = !DILocalVariable(name: "obj_desc", scope: !1407, file: !3, line: 264, type: !31)
!1419 = !DILocation(line: 264, column: 29, scope: !1407)
!1420 = !DILocalVariable(name: "node", scope: !1407, file: !3, line: 265, type: !26)
!1421 = !DILocation(line: 265, column: 30, scope: !1407)
!1422 = !DILocation(line: 266, column: 36, scope: !1407)
!1423 = !DILocation(line: 266, column: 6, scope: !1407)
!1424 = !DILocation(line: 268, column: 41, scope: !1407)
!1425 = !DILocation(line: 268, column: 13, scope: !1407)
!1426 = !DILocation(line: 268, column: 11, scope: !1407)
!1427 = !DILocation(line: 269, column: 7, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 269, column: 6)
!1429 = !DILocation(line: 269, column: 6, scope: !1407)
!1430 = !DILocation(line: 270, column: 3, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 269, column: 17)
!1432 = !DILocation(line: 275, column: 6, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 275, column: 6)
!1434 = !DILocation(line: 275, column: 16, scope: !1433)
!1435 = !DILocation(line: 275, column: 24, scope: !1433)
!1436 = !DILocation(line: 275, column: 30, scope: !1433)
!1437 = !DILocation(line: 275, column: 6, scope: !1407)
!1438 = !DILocation(line: 276, column: 3, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 275, column: 51)
!1440 = !DILocation(line: 279, column: 41, scope: !1407)
!1441 = !DILocation(line: 279, column: 11, scope: !1407)
!1442 = !DILocation(line: 279, column: 9, scope: !1407)
!1443 = !DILocation(line: 280, column: 6, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 280, column: 6)
!1445 = !DILocation(line: 280, column: 6, scope: !1407)
!1446 = !DILocation(line: 281, column: 3, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 280, column: 28)
!1448 = !DILocation(line: 285, column: 32, scope: !1407)
!1449 = !DILocation(line: 285, column: 6, scope: !1407)
!1450 = !DILocation(line: 284, column: 9, scope: !1407)
!1451 = !DILocation(line: 287, column: 6, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 287, column: 6)
!1453 = !DILocation(line: 287, column: 6, scope: !1407)
!1454 = !DILocation(line: 288, column: 3, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 287, column: 28)
!1456 = !DILocation(line: 291, column: 2, scope: !1407)
!1457 = !DILocation(line: 291, column: 12, scope: !1407)
!1458 = !DILocation(line: 291, column: 20, scope: !1407)
!1459 = !DILocation(line: 291, column: 26, scope: !1407)
!1460 = !DILocation(line: 292, column: 2, scope: !1407)
!1461 = !DILocation(line: 293, column: 1, scope: !1407)
!1462 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !1463, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !923)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!16, !1465, !789}
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !790, line: 55, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1467, line: 72, baseType: !1468)
!1467 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1467, line: 16, baseType: !791)
!1469 = !DILocalVariable(name: "s", arg: 1, scope: !1470, file: !6, line: 445, type: !1473)
!1470 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !1471, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !923)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!16, !1473, !789, !1465}
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1475, line: 117, flags: DIFlagFwdDecl)
!1475 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1476 = !DILocation(line: 445, column: 72, scope: !1470, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 552, column: 10, scope: !1478, inlinedAt: !1481)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !6, line: 540, column: 34)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !6, line: 540, column: 6)
!1480 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !1463, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !923)
!1481 = distinct !DILocation(line: 664, column: 9, scope: !1462)
!1482 = !DILocalVariable(name: "flags", arg: 2, scope: !1470, file: !6, line: 446, type: !789)
!1483 = !DILocation(line: 446, column: 9, scope: !1470, inlinedAt: !1477)
!1484 = !DILocalVariable(name: "size", arg: 3, scope: !1470, file: !6, line: 446, type: !1465)
!1485 = !DILocation(line: 446, column: 23, scope: !1470, inlinedAt: !1477)
!1486 = !DILocalVariable(name: "ret", scope: !1470, file: !6, line: 448, type: !16)
!1487 = !DILocation(line: 448, column: 8, scope: !1470, inlinedAt: !1477)
!1488 = !DILocalVariable(name: "flags", arg: 1, scope: !1489, file: !6, line: 318, type: !789)
!1489 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !1490, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !923)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!5, !789}
!1492 = !DILocation(line: 318, column: 67, scope: !1489, inlinedAt: !1493)
!1493 = distinct !DILocation(line: 553, column: 20, scope: !1478, inlinedAt: !1481)
!1494 = !DILocalVariable(name: "size", arg: 1, scope: !1495, file: !6, line: 346, type: !1465)
!1495 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !1496, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !923)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!7, !1465}
!1498 = !DILocation(line: 346, column: 58, scope: !1495, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 547, column: 11, scope: !1478, inlinedAt: !1481)
!1500 = !DILocalVariable(name: "size", arg: 1, scope: !1501, file: !6, line: 472, type: !1465)
!1501 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !1502, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !923)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!16, !1465, !789, !7}
!1504 = !DILocation(line: 472, column: 28, scope: !1501, inlinedAt: !1505)
!1505 = distinct !DILocation(line: 481, column: 9, scope: !1506, inlinedAt: !1507)
!1506 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !1463, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !923)
!1507 = distinct !DILocation(line: 545, column: 11, scope: !1508, inlinedAt: !1481)
!1508 = distinct !DILexicalBlock(scope: !1478, file: !6, line: 544, column: 7)
!1509 = !DILocalVariable(name: "flags", arg: 2, scope: !1501, file: !6, line: 472, type: !789)
!1510 = !DILocation(line: 472, column: 40, scope: !1501, inlinedAt: !1505)
!1511 = !DILocalVariable(name: "order", arg: 3, scope: !1501, file: !6, line: 472, type: !7)
!1512 = !DILocation(line: 472, column: 60, scope: !1501, inlinedAt: !1505)
!1513 = !DILocalVariable(name: "size", arg: 1, scope: !1506, file: !6, line: 478, type: !1465)
!1514 = !DILocation(line: 478, column: 51, scope: !1506, inlinedAt: !1507)
!1515 = !DILocalVariable(name: "flags", arg: 2, scope: !1506, file: !6, line: 478, type: !789)
!1516 = !DILocation(line: 478, column: 63, scope: !1506, inlinedAt: !1507)
!1517 = !DILocalVariable(name: "order", scope: !1506, file: !6, line: 480, type: !7)
!1518 = !DILocation(line: 480, column: 15, scope: !1506, inlinedAt: !1507)
!1519 = !DILocalVariable(name: "size", arg: 1, scope: !1480, file: !6, line: 538, type: !1465)
!1520 = !DILocation(line: 538, column: 45, scope: !1480, inlinedAt: !1481)
!1521 = !DILocalVariable(name: "flags", arg: 2, scope: !1480, file: !6, line: 538, type: !789)
!1522 = !DILocation(line: 538, column: 57, scope: !1480, inlinedAt: !1481)
!1523 = !DILocalVariable(name: "index", scope: !1478, file: !6, line: 542, type: !7)
!1524 = !DILocation(line: 542, column: 16, scope: !1478, inlinedAt: !1481)
!1525 = !DILocalVariable(name: "size", arg: 1, scope: !1462, file: !6, line: 662, type: !1465)
!1526 = !DILocation(line: 662, column: 36, scope: !1462)
!1527 = !DILocalVariable(name: "flags", arg: 2, scope: !1462, file: !6, line: 662, type: !789)
!1528 = !DILocation(line: 662, column: 48, scope: !1462)
!1529 = !DILocation(line: 664, column: 17, scope: !1462)
!1530 = !DILocation(line: 664, column: 23, scope: !1462)
!1531 = !DILocation(line: 664, column: 29, scope: !1462)
!1532 = !DILocation(line: 540, column: 27, scope: !1479, inlinedAt: !1481)
!1533 = !DILocation(line: 540, column: 6, scope: !1479, inlinedAt: !1481)
!1534 = !DILocation(line: 540, column: 6, scope: !1480, inlinedAt: !1481)
!1535 = !DILocation(line: 544, column: 7, scope: !1508, inlinedAt: !1481)
!1536 = !DILocation(line: 544, column: 12, scope: !1508, inlinedAt: !1481)
!1537 = !DILocation(line: 544, column: 7, scope: !1478, inlinedAt: !1481)
!1538 = !DILocation(line: 545, column: 25, scope: !1508, inlinedAt: !1481)
!1539 = !DILocation(line: 545, column: 31, scope: !1508, inlinedAt: !1481)
!1540 = !DILocation(line: 480, column: 33, scope: !1506, inlinedAt: !1507)
!1541 = !DILocation(line: 480, column: 23, scope: !1506, inlinedAt: !1507)
!1542 = !DILocation(line: 481, column: 29, scope: !1506, inlinedAt: !1507)
!1543 = !DILocation(line: 481, column: 35, scope: !1506, inlinedAt: !1507)
!1544 = !DILocation(line: 481, column: 42, scope: !1506, inlinedAt: !1507)
!1545 = !DILocation(line: 474, column: 23, scope: !1501, inlinedAt: !1505)
!1546 = !DILocation(line: 474, column: 29, scope: !1501, inlinedAt: !1505)
!1547 = !DILocation(line: 474, column: 36, scope: !1501, inlinedAt: !1505)
!1548 = !DILocation(line: 474, column: 9, scope: !1501, inlinedAt: !1505)
!1549 = !DILocation(line: 545, column: 4, scope: !1508, inlinedAt: !1481)
!1550 = !DILocation(line: 547, column: 25, scope: !1478, inlinedAt: !1481)
!1551 = !DILocation(line: 348, column: 7, scope: !1552, inlinedAt: !1499)
!1552 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 348, column: 6)
!1553 = !DILocation(line: 348, column: 6, scope: !1495, inlinedAt: !1499)
!1554 = !DILocation(line: 349, column: 3, scope: !1552, inlinedAt: !1499)
!1555 = !DILocation(line: 351, column: 6, scope: !1556, inlinedAt: !1499)
!1556 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 351, column: 6)
!1557 = !DILocation(line: 351, column: 11, scope: !1556, inlinedAt: !1499)
!1558 = !DILocation(line: 351, column: 6, scope: !1495, inlinedAt: !1499)
!1559 = !DILocation(line: 352, column: 3, scope: !1556, inlinedAt: !1499)
!1560 = !DILocation(line: 354, column: 32, scope: !1561, inlinedAt: !1499)
!1561 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 354, column: 6)
!1562 = !DILocation(line: 354, column: 37, scope: !1561, inlinedAt: !1499)
!1563 = !DILocation(line: 354, column: 42, scope: !1561, inlinedAt: !1499)
!1564 = !DILocation(line: 354, column: 45, scope: !1561, inlinedAt: !1499)
!1565 = !DILocation(line: 354, column: 50, scope: !1561, inlinedAt: !1499)
!1566 = !DILocation(line: 354, column: 6, scope: !1495, inlinedAt: !1499)
!1567 = !DILocation(line: 355, column: 3, scope: !1561, inlinedAt: !1499)
!1568 = !DILocation(line: 356, column: 32, scope: !1569, inlinedAt: !1499)
!1569 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 356, column: 6)
!1570 = !DILocation(line: 356, column: 37, scope: !1569, inlinedAt: !1499)
!1571 = !DILocation(line: 356, column: 43, scope: !1569, inlinedAt: !1499)
!1572 = !DILocation(line: 356, column: 46, scope: !1569, inlinedAt: !1499)
!1573 = !DILocation(line: 356, column: 51, scope: !1569, inlinedAt: !1499)
!1574 = !DILocation(line: 356, column: 6, scope: !1495, inlinedAt: !1499)
!1575 = !DILocation(line: 357, column: 3, scope: !1569, inlinedAt: !1499)
!1576 = !DILocation(line: 358, column: 6, scope: !1577, inlinedAt: !1499)
!1577 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 358, column: 6)
!1578 = !DILocation(line: 358, column: 11, scope: !1577, inlinedAt: !1499)
!1579 = !DILocation(line: 358, column: 6, scope: !1495, inlinedAt: !1499)
!1580 = !DILocation(line: 358, column: 26, scope: !1577, inlinedAt: !1499)
!1581 = !DILocation(line: 359, column: 6, scope: !1582, inlinedAt: !1499)
!1582 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 359, column: 6)
!1583 = !DILocation(line: 359, column: 11, scope: !1582, inlinedAt: !1499)
!1584 = !DILocation(line: 359, column: 6, scope: !1495, inlinedAt: !1499)
!1585 = !DILocation(line: 359, column: 26, scope: !1582, inlinedAt: !1499)
!1586 = !DILocation(line: 360, column: 6, scope: !1587, inlinedAt: !1499)
!1587 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 360, column: 6)
!1588 = !DILocation(line: 360, column: 11, scope: !1587, inlinedAt: !1499)
!1589 = !DILocation(line: 360, column: 6, scope: !1495, inlinedAt: !1499)
!1590 = !DILocation(line: 360, column: 26, scope: !1587, inlinedAt: !1499)
!1591 = !DILocation(line: 361, column: 6, scope: !1592, inlinedAt: !1499)
!1592 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 361, column: 6)
!1593 = !DILocation(line: 361, column: 11, scope: !1592, inlinedAt: !1499)
!1594 = !DILocation(line: 361, column: 6, scope: !1495, inlinedAt: !1499)
!1595 = !DILocation(line: 361, column: 26, scope: !1592, inlinedAt: !1499)
!1596 = !DILocation(line: 362, column: 6, scope: !1597, inlinedAt: !1499)
!1597 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 362, column: 6)
!1598 = !DILocation(line: 362, column: 11, scope: !1597, inlinedAt: !1499)
!1599 = !DILocation(line: 362, column: 6, scope: !1495, inlinedAt: !1499)
!1600 = !DILocation(line: 362, column: 26, scope: !1597, inlinedAt: !1499)
!1601 = !DILocation(line: 363, column: 6, scope: !1602, inlinedAt: !1499)
!1602 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 363, column: 6)
!1603 = !DILocation(line: 363, column: 11, scope: !1602, inlinedAt: !1499)
!1604 = !DILocation(line: 363, column: 6, scope: !1495, inlinedAt: !1499)
!1605 = !DILocation(line: 363, column: 26, scope: !1602, inlinedAt: !1499)
!1606 = !DILocation(line: 364, column: 6, scope: !1607, inlinedAt: !1499)
!1607 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 364, column: 6)
!1608 = !DILocation(line: 364, column: 11, scope: !1607, inlinedAt: !1499)
!1609 = !DILocation(line: 364, column: 6, scope: !1495, inlinedAt: !1499)
!1610 = !DILocation(line: 364, column: 26, scope: !1607, inlinedAt: !1499)
!1611 = !DILocation(line: 365, column: 6, scope: !1612, inlinedAt: !1499)
!1612 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 365, column: 6)
!1613 = !DILocation(line: 365, column: 11, scope: !1612, inlinedAt: !1499)
!1614 = !DILocation(line: 365, column: 6, scope: !1495, inlinedAt: !1499)
!1615 = !DILocation(line: 365, column: 26, scope: !1612, inlinedAt: !1499)
!1616 = !DILocation(line: 366, column: 6, scope: !1617, inlinedAt: !1499)
!1617 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 366, column: 6)
!1618 = !DILocation(line: 366, column: 11, scope: !1617, inlinedAt: !1499)
!1619 = !DILocation(line: 366, column: 6, scope: !1495, inlinedAt: !1499)
!1620 = !DILocation(line: 366, column: 26, scope: !1617, inlinedAt: !1499)
!1621 = !DILocation(line: 367, column: 6, scope: !1622, inlinedAt: !1499)
!1622 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 367, column: 6)
!1623 = !DILocation(line: 367, column: 11, scope: !1622, inlinedAt: !1499)
!1624 = !DILocation(line: 367, column: 6, scope: !1495, inlinedAt: !1499)
!1625 = !DILocation(line: 367, column: 26, scope: !1622, inlinedAt: !1499)
!1626 = !DILocation(line: 368, column: 6, scope: !1627, inlinedAt: !1499)
!1627 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 368, column: 6)
!1628 = !DILocation(line: 368, column: 11, scope: !1627, inlinedAt: !1499)
!1629 = !DILocation(line: 368, column: 6, scope: !1495, inlinedAt: !1499)
!1630 = !DILocation(line: 368, column: 26, scope: !1627, inlinedAt: !1499)
!1631 = !DILocation(line: 369, column: 6, scope: !1632, inlinedAt: !1499)
!1632 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 369, column: 6)
!1633 = !DILocation(line: 369, column: 11, scope: !1632, inlinedAt: !1499)
!1634 = !DILocation(line: 369, column: 6, scope: !1495, inlinedAt: !1499)
!1635 = !DILocation(line: 369, column: 26, scope: !1632, inlinedAt: !1499)
!1636 = !DILocation(line: 370, column: 6, scope: !1637, inlinedAt: !1499)
!1637 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 370, column: 6)
!1638 = !DILocation(line: 370, column: 11, scope: !1637, inlinedAt: !1499)
!1639 = !DILocation(line: 370, column: 6, scope: !1495, inlinedAt: !1499)
!1640 = !DILocation(line: 370, column: 26, scope: !1637, inlinedAt: !1499)
!1641 = !DILocation(line: 371, column: 6, scope: !1642, inlinedAt: !1499)
!1642 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 371, column: 6)
!1643 = !DILocation(line: 371, column: 11, scope: !1642, inlinedAt: !1499)
!1644 = !DILocation(line: 371, column: 6, scope: !1495, inlinedAt: !1499)
!1645 = !DILocation(line: 371, column: 26, scope: !1642, inlinedAt: !1499)
!1646 = !DILocation(line: 372, column: 6, scope: !1647, inlinedAt: !1499)
!1647 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 372, column: 6)
!1648 = !DILocation(line: 372, column: 11, scope: !1647, inlinedAt: !1499)
!1649 = !DILocation(line: 372, column: 6, scope: !1495, inlinedAt: !1499)
!1650 = !DILocation(line: 372, column: 26, scope: !1647, inlinedAt: !1499)
!1651 = !DILocation(line: 373, column: 6, scope: !1652, inlinedAt: !1499)
!1652 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 373, column: 6)
!1653 = !DILocation(line: 373, column: 11, scope: !1652, inlinedAt: !1499)
!1654 = !DILocation(line: 373, column: 6, scope: !1495, inlinedAt: !1499)
!1655 = !DILocation(line: 373, column: 26, scope: !1652, inlinedAt: !1499)
!1656 = !DILocation(line: 374, column: 6, scope: !1657, inlinedAt: !1499)
!1657 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 374, column: 6)
!1658 = !DILocation(line: 374, column: 11, scope: !1657, inlinedAt: !1499)
!1659 = !DILocation(line: 374, column: 6, scope: !1495, inlinedAt: !1499)
!1660 = !DILocation(line: 374, column: 26, scope: !1657, inlinedAt: !1499)
!1661 = !DILocation(line: 375, column: 6, scope: !1662, inlinedAt: !1499)
!1662 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 375, column: 6)
!1663 = !DILocation(line: 375, column: 11, scope: !1662, inlinedAt: !1499)
!1664 = !DILocation(line: 375, column: 6, scope: !1495, inlinedAt: !1499)
!1665 = !DILocation(line: 375, column: 27, scope: !1662, inlinedAt: !1499)
!1666 = !DILocation(line: 376, column: 6, scope: !1667, inlinedAt: !1499)
!1667 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 376, column: 6)
!1668 = !DILocation(line: 376, column: 11, scope: !1667, inlinedAt: !1499)
!1669 = !DILocation(line: 376, column: 6, scope: !1495, inlinedAt: !1499)
!1670 = !DILocation(line: 376, column: 32, scope: !1667, inlinedAt: !1499)
!1671 = !DILocation(line: 377, column: 6, scope: !1672, inlinedAt: !1499)
!1672 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 377, column: 6)
!1673 = !DILocation(line: 377, column: 11, scope: !1672, inlinedAt: !1499)
!1674 = !DILocation(line: 377, column: 6, scope: !1495, inlinedAt: !1499)
!1675 = !DILocation(line: 377, column: 32, scope: !1672, inlinedAt: !1499)
!1676 = !DILocation(line: 378, column: 6, scope: !1677, inlinedAt: !1499)
!1677 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 378, column: 6)
!1678 = !DILocation(line: 378, column: 11, scope: !1677, inlinedAt: !1499)
!1679 = !DILocation(line: 378, column: 6, scope: !1495, inlinedAt: !1499)
!1680 = !DILocation(line: 378, column: 32, scope: !1677, inlinedAt: !1499)
!1681 = !DILocation(line: 379, column: 6, scope: !1682, inlinedAt: !1499)
!1682 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 379, column: 6)
!1683 = !DILocation(line: 379, column: 11, scope: !1682, inlinedAt: !1499)
!1684 = !DILocation(line: 379, column: 6, scope: !1495, inlinedAt: !1499)
!1685 = !DILocation(line: 379, column: 33, scope: !1682, inlinedAt: !1499)
!1686 = !DILocation(line: 380, column: 6, scope: !1687, inlinedAt: !1499)
!1687 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 380, column: 6)
!1688 = !DILocation(line: 380, column: 11, scope: !1687, inlinedAt: !1499)
!1689 = !DILocation(line: 380, column: 6, scope: !1495, inlinedAt: !1499)
!1690 = !DILocation(line: 380, column: 33, scope: !1687, inlinedAt: !1499)
!1691 = !DILocation(line: 381, column: 6, scope: !1692, inlinedAt: !1499)
!1692 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 381, column: 6)
!1693 = !DILocation(line: 381, column: 11, scope: !1692, inlinedAt: !1499)
!1694 = !DILocation(line: 381, column: 6, scope: !1495, inlinedAt: !1499)
!1695 = !DILocation(line: 381, column: 33, scope: !1692, inlinedAt: !1499)
!1696 = !DILocation(line: 382, column: 2, scope: !1697, inlinedAt: !1499)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !6, line: 382, column: 2)
!1698 = distinct !DILexicalBlock(scope: !1495, file: !6, line: 382, column: 2)
!1699 = !{i32 -2144100901, i32 -2144100872, i32 -2144100826, i32 -2144100768, i32 -2144100714, i32 -2144100660, i32 -2144100605, i32 -2144100574}
!1700 = !DILocation(line: 382, column: 2, scope: !1701, inlinedAt: !1499)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !6, line: 382, column: 2)
!1702 = distinct !DILexicalBlock(scope: !1698, file: !6, line: 382, column: 2)
!1703 = !{i32 -2144100131, i32 -2144100124, i32 -2144100070, i32 -2144100039, i32 -2144100009}
!1704 = !DILocation(line: 382, column: 2, scope: !1702, inlinedAt: !1499)
!1705 = !DILocation(line: 386, column: 1, scope: !1495, inlinedAt: !1499)
!1706 = !DILocation(line: 547, column: 9, scope: !1478, inlinedAt: !1481)
!1707 = !DILocation(line: 549, column: 8, scope: !1708, inlinedAt: !1481)
!1708 = distinct !DILexicalBlock(scope: !1478, file: !6, line: 549, column: 7)
!1709 = !DILocation(line: 549, column: 7, scope: !1478, inlinedAt: !1481)
!1710 = !DILocation(line: 550, column: 4, scope: !1708, inlinedAt: !1481)
!1711 = !DILocation(line: 553, column: 33, scope: !1478, inlinedAt: !1481)
!1712 = !DILocation(line: 325, column: 6, scope: !1713, inlinedAt: !1493)
!1713 = distinct !DILexicalBlock(scope: !1489, file: !6, line: 325, column: 6)
!1714 = !DILocation(line: 325, column: 6, scope: !1489, inlinedAt: !1493)
!1715 = !DILocation(line: 326, column: 3, scope: !1713, inlinedAt: !1493)
!1716 = !DILocation(line: 332, column: 9, scope: !1489, inlinedAt: !1493)
!1717 = !DILocation(line: 332, column: 15, scope: !1489, inlinedAt: !1493)
!1718 = !DILocation(line: 332, column: 2, scope: !1489, inlinedAt: !1493)
!1719 = !DILocation(line: 336, column: 1, scope: !1489, inlinedAt: !1493)
!1720 = !DILocation(line: 553, column: 5, scope: !1478, inlinedAt: !1481)
!1721 = !DILocation(line: 553, column: 41, scope: !1478, inlinedAt: !1481)
!1722 = !DILocation(line: 554, column: 5, scope: !1478, inlinedAt: !1481)
!1723 = !DILocation(line: 554, column: 12, scope: !1478, inlinedAt: !1481)
!1724 = !DILocation(line: 448, column: 31, scope: !1470, inlinedAt: !1477)
!1725 = !DILocation(line: 448, column: 34, scope: !1470, inlinedAt: !1477)
!1726 = !DILocation(line: 448, column: 14, scope: !1470, inlinedAt: !1477)
!1727 = !DILocation(line: 450, column: 22, scope: !1470, inlinedAt: !1477)
!1728 = !DILocation(line: 450, column: 25, scope: !1470, inlinedAt: !1477)
!1729 = !DILocation(line: 450, column: 30, scope: !1470, inlinedAt: !1477)
!1730 = !DILocation(line: 450, column: 36, scope: !1470, inlinedAt: !1477)
!1731 = !DILocation(line: 450, column: 8, scope: !1470, inlinedAt: !1477)
!1732 = !DILocation(line: 450, column: 6, scope: !1470, inlinedAt: !1477)
!1733 = !DILocation(line: 451, column: 9, scope: !1470, inlinedAt: !1477)
!1734 = !DILocation(line: 552, column: 3, scope: !1478, inlinedAt: !1481)
!1735 = !DILocation(line: 557, column: 19, scope: !1480, inlinedAt: !1481)
!1736 = !DILocation(line: 557, column: 25, scope: !1480, inlinedAt: !1481)
!1737 = !DILocation(line: 557, column: 9, scope: !1480, inlinedAt: !1481)
!1738 = !DILocation(line: 557, column: 2, scope: !1480, inlinedAt: !1481)
!1739 = !DILocation(line: 558, column: 1, scope: !1480, inlinedAt: !1481)
!1740 = !DILocation(line: 664, column: 2, scope: !1462)
!1741 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1742, file: !1742, line: 646, type: !1743, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !923)
!1742 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!791}
!1745 = !DILocalVariable(name: "__ret", scope: !1746, file: !1742, line: 648, type: !791)
!1746 = distinct !DILexicalBlock(scope: !1741, file: !1742, line: 648, column: 9)
!1747 = !DILocation(line: 648, column: 9, scope: !1746)
!1748 = !DILocalVariable(name: "__edi", scope: !1746, file: !1742, line: 648, type: !791)
!1749 = !DILocalVariable(name: "__esi", scope: !1746, file: !1742, line: 648, type: !791)
!1750 = !DILocalVariable(name: "__edx", scope: !1746, file: !1742, line: 648, type: !791)
!1751 = !DILocalVariable(name: "__ecx", scope: !1746, file: !1742, line: 648, type: !791)
!1752 = !DILocalVariable(name: "__eax", scope: !1746, file: !1742, line: 648, type: !791)
!1753 = !DILocation(line: 648, column: 9, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !1742, line: 648, column: 9)
!1755 = distinct !DILexicalBlock(scope: !1746, file: !1742, line: 648, column: 9)
!1756 = !{i32 -2145774507, i32 -2145772192, i32 -2145771958, i32 -2145771907, i32 -2145771879, i32 -2145771854, i32 -2145772170, i32 -2145772157, i32 -2145771719, i32 -2145771600, i32 -2145772065, i32 -2145772038, i32 -2145772010, i32 -2145771980}
!1757 = !DILocalVariable(name: "__mask", scope: !1758, file: !1742, line: 648, type: !791)
!1758 = distinct !DILexicalBlock(scope: !1754, file: !1742, line: 648, column: 9)
!1759 = !DILocation(line: 648, column: 9, scope: !1758)
!1760 = !DILocation(line: 648, column: 9, scope: !1755)
!1761 = !DILocation(line: 648, column: 2, scope: !1741)
!1762 = distinct !DISubprogram(name: "get_order", scope: !1763, file: !1763, line: 29, type: !1247, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !923)
!1763 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1764 = !DILocalVariable(name: "x", arg: 1, scope: !1765, file: !1766, line: 366, type: !20)
!1765 = distinct !DISubprogram(name: "fls64", scope: !1766, file: !1766, line: 366, type: !1767, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !923)
!1766 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!1249, !20}
!1769 = !DILocation(line: 366, column: 40, scope: !1765, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 46, column: 9, scope: !1762)
!1771 = !DILocalVariable(name: "bitpos", scope: !1765, file: !1766, line: 368, type: !1249)
!1772 = !DILocation(line: 368, column: 6, scope: !1765, inlinedAt: !1770)
!1773 = !DILocalVariable(name: "size", arg: 1, scope: !1762, file: !1763, line: 29, type: !791)
!1774 = !DILocation(line: 29, column: 63, scope: !1762)
!1775 = !DILocation(line: 31, column: 27, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1762, file: !1763, line: 31, column: 6)
!1777 = !DILocation(line: 31, column: 6, scope: !1776)
!1778 = !DILocation(line: 31, column: 6, scope: !1762)
!1779 = !DILocation(line: 32, column: 8, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !1763, line: 32, column: 7)
!1781 = distinct !DILexicalBlock(scope: !1776, file: !1763, line: 31, column: 34)
!1782 = !DILocation(line: 32, column: 7, scope: !1781)
!1783 = !DILocation(line: 33, column: 4, scope: !1780)
!1784 = !DILocation(line: 35, column: 7, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1781, file: !1763, line: 35, column: 7)
!1786 = !DILocation(line: 35, column: 12, scope: !1785)
!1787 = !DILocation(line: 35, column: 7, scope: !1781)
!1788 = !DILocation(line: 36, column: 4, scope: !1785)
!1789 = !DILocation(line: 38, column: 10, scope: !1781)
!1790 = !DILocation(line: 38, column: 28, scope: !1781)
!1791 = !DILocation(line: 38, column: 41, scope: !1781)
!1792 = !DILocation(line: 38, column: 3, scope: !1781)
!1793 = !DILocation(line: 41, column: 6, scope: !1762)
!1794 = !DILocation(line: 42, column: 7, scope: !1762)
!1795 = !DILocation(line: 46, column: 15, scope: !1762)
!1796 = !DILocation(line: 374, column: 2, scope: !1765, inlinedAt: !1770)
!1797 = !DILocation(line: 376, column: 14, scope: !1765, inlinedAt: !1770)
!1798 = !{i32 670301}
!1799 = !DILocation(line: 377, column: 9, scope: !1765, inlinedAt: !1770)
!1800 = !DILocation(line: 377, column: 16, scope: !1765, inlinedAt: !1770)
!1801 = !DILocation(line: 46, column: 2, scope: !1762)
!1802 = !DILocation(line: 48, column: 1, scope: !1762)
!1803 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1804, file: !1804, line: 30, type: !1805, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !923)
!1804 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!1249, !18}
!1807 = !DILocation(line: 366, column: 40, scope: !1765, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 32, column: 9, scope: !1803)
!1809 = !DILocation(line: 368, column: 6, scope: !1765, inlinedAt: !1808)
!1810 = !DILocalVariable(name: "n", arg: 1, scope: !1803, file: !1804, line: 30, type: !18)
!1811 = !DILocation(line: 30, column: 21, scope: !1803)
!1812 = !DILocation(line: 32, column: 15, scope: !1803)
!1813 = !DILocation(line: 374, column: 2, scope: !1765, inlinedAt: !1808)
!1814 = !DILocation(line: 376, column: 14, scope: !1765, inlinedAt: !1808)
!1815 = !DILocation(line: 377, column: 9, scope: !1765, inlinedAt: !1808)
!1816 = !DILocation(line: 377, column: 16, scope: !1765, inlinedAt: !1808)
!1817 = !DILocation(line: 32, column: 18, scope: !1803)
!1818 = !DILocation(line: 32, column: 2, scope: !1803)
!1819 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1820, file: !1820, line: 137, type: !1821, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !923)
!1820 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!16, !1473, !1823, !1465, !789}
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1825 = !DILocalVariable(name: "s", arg: 1, scope: !1819, file: !1820, line: 137, type: !1473)
!1826 = !DILocation(line: 137, column: 54, scope: !1819)
!1827 = !DILocalVariable(name: "object", arg: 2, scope: !1819, file: !1820, line: 137, type: !1823)
!1828 = !DILocation(line: 137, column: 69, scope: !1819)
!1829 = !DILocalVariable(name: "size", arg: 3, scope: !1819, file: !1820, line: 138, type: !1465)
!1830 = !DILocation(line: 138, column: 12, scope: !1819)
!1831 = !DILocalVariable(name: "flags", arg: 4, scope: !1819, file: !1820, line: 138, type: !789)
!1832 = !DILocation(line: 138, column: 24, scope: !1819)
!1833 = !DILocation(line: 140, column: 17, scope: !1819)
!1834 = !DILocation(line: 140, column: 2, scope: !1819)
