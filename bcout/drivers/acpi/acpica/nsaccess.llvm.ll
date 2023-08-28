; ModuleID = '../bcout/drivers/acpi/acpica/nsaccess.llvm.bc'
source_filename = "drivers/acpi/acpica/nsaccess.c"
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
%struct.acpi_predefined_names = type { i8*, i8, i8* }
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
%struct.acpi_object_method = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %union.acpi_operand_object*, %union.acpi_operand_object*, i8*, %union.anon, i32, i16, i8 }
%union.anon = type { i32 (%struct.acpi_walk_state*)* }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_string = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32 }
%struct.acpi_scope_state = type { i8*, i8, i8, i16, i16, %struct.acpi_namespace_node* }
%union.acpi_descriptor = type { %union.acpi_parse_object }
%struct.acpi_common_descriptor = type { i8*, i8 }

@acpi_gbl_root_node = external dso_local global %struct.acpi_namespace_node*, align 8
@acpi_gbl_root_node_struct = external dso_local global %struct.acpi_namespace_node, align 8
@acpi_gbl_pre_defined_names = external dso_local constant [10 x %struct.acpi_predefined_names], align 16
@.str = private unnamed_addr constant [5 x i8] c"_OSI\00", align 1
@acpi_gbl_create_osi_method = external dso_local global i8, align 1
@_acpi_module_name = internal constant [9 x i8] c"nsaccess\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not override predefined %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_GL_\00", align 1
@acpi_gbl_global_lock_mutex = external dso_local global %union.acpi_operand_object*, align 8
@acpi_gbl_global_lock_semaphore = external dso_local global i8*, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Unsupported initial type value 0x%X\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"\\_GPE\00", align 1
@acpi_gbl_fadt_gpe_device = external dso_local global %struct.acpi_namespace_node*, align 8
@acpi_gbl_ns_lookup_count = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"%p is not a namespace node [%s]\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"%s: Path has too many parent prefixes (^)\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"\013ACPI BIOS Error (bug): Object does not exist: %4.4s\0A\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"NsLookup: Type mismatch on %4.4s (%s), searching for (%s)\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.10 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_root_initialize() #0 !dbg !818 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %init_val = alloca %struct.acpi_predefined_names*, align 8
  %new_node = alloca %struct.acpi_namespace_node*, align 8
  %prev_node = alloca %struct.acpi_namespace_node*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %val = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i32* %status, metadata !822, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.declare(metadata %struct.acpi_predefined_names** %init_val, metadata !824, metadata !DIExpression()), !dbg !833
  store %struct.acpi_predefined_names* null, %struct.acpi_predefined_names** %init_val, align 8, !dbg !833
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %new_node, metadata !834, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %prev_node, metadata !836, metadata !DIExpression()), !dbg !837
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %prev_node, align 8, !dbg !837
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !838, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.declare(metadata i8** %val, metadata !840, metadata !DIExpression()), !dbg !842
  store i8* null, i8** %val, align 8, !dbg !842
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #8, !dbg !843
  store i32 %call, i32* %status, align 4, !dbg !844
  %0 = load i32, i32* %status, align 4, !dbg !845
  %tobool = icmp ne i32 %0, 0, !dbg !845
  br i1 %tobool, label %if.then, label %if.end, !dbg !847

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4, !dbg !848
  store i32 %1, i32* %retval, align 4, !dbg !848
  br label %return, !dbg !848

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !850
  %tobool1 = icmp ne %struct.acpi_namespace_node* %2, null, !dbg !850
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !852

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %status, align 4, !dbg !853
  br label %unlock_and_exit, !dbg !855

if.end3:                                          ; preds = %if.end
  store %struct.acpi_namespace_node* @acpi_gbl_root_node_struct, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !856
  store %struct.acpi_predefined_names* getelementptr inbounds ([10 x %struct.acpi_predefined_names], [10 x %struct.acpi_predefined_names]* @acpi_gbl_pre_defined_names, i64 0, i64 0), %struct.acpi_predefined_names** %init_val, align 8, !dbg !857
  br label %for.cond, !dbg !859

for.cond:                                         ; preds = %for.inc, %if.end3
  %3 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %init_val, align 8, !dbg !860
  %name = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %3, i32 0, i32 0, !dbg !862
  %4 = load i8*, i8** %name, align 8, !dbg !862
  %tobool4 = icmp ne i8* %4, null, !dbg !863
  br i1 %tobool4, label %for.body, label %for.end, !dbg !863

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %status, align 4, !dbg !864
  %5 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %init_val, align 8, !dbg !866
  %name5 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %5, i32 0, i32 0, !dbg !868
  %6 = load i8*, i8** %name5, align 8, !dbg !868
  %call6 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #8, !dbg !869
  %tobool7 = icmp ne i32 %call6, 0, !dbg !869
  br i1 %tobool7, label %if.end10, label %land.lhs.true, !dbg !870

land.lhs.true:                                    ; preds = %for.body
  %7 = load i8, i8* @acpi_gbl_create_osi_method, align 1, !dbg !871
  %tobool8 = icmp ne i8 %7, 0, !dbg !871
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !872

if.then9:                                         ; preds = %land.lhs.true
  br label %for.inc, !dbg !873

if.end10:                                         ; preds = %land.lhs.true, %for.body
  %call11 = call i8* @acpi_os_allocate_zeroed(i64 48) #8, !dbg !875
  %8 = bitcast i8* %call11 to %struct.acpi_namespace_node*, !dbg !875
  store %struct.acpi_namespace_node* %8, %struct.acpi_namespace_node** %new_node, align 8, !dbg !876
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %new_node, align 8, !dbg !877
  %tobool12 = icmp ne %struct.acpi_namespace_node* %9, null, !dbg !877
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !879

if.then13:                                        ; preds = %if.end10
  store i32 4, i32* %status, align 4, !dbg !880
  br label %unlock_and_exit, !dbg !882

if.end14:                                         ; preds = %if.end10
  %10 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %init_val, align 8, !dbg !883
  %name15 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %10, i32 0, i32 0, !dbg !883
  %11 = load i8*, i8** %name15, align 8, !dbg !883
  %12 = bitcast i8* %11 to i32*, !dbg !883
  %13 = load i32, i32* %12, align 4, !dbg !883
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %new_node, align 8, !dbg !883
  %name16 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %14, i32 0, i32 4, !dbg !883
  %ascii = bitcast %union.acpi_name_union* %name16 to [4 x i8]*, !dbg !883
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ascii, i64 0, i64 0, !dbg !883
  %15 = bitcast i8* %arraydecay to i32*, !dbg !883
  store i32 %13, i32* %15, align 4, !dbg !883
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %new_node, align 8, !dbg !884
  %descriptor_type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %16, i32 0, i32 1, !dbg !885
  store i8 15, i8* %descriptor_type, align 8, !dbg !886
  %17 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %init_val, align 8, !dbg !887
  %type = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %17, i32 0, i32 1, !dbg !888
  %18 = load i8, i8* %type, align 8, !dbg !888
  %19 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %new_node, align 8, !dbg !889
  %type17 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %19, i32 0, i32 2, !dbg !890
  store i8 %18, i8* %type17, align 1, !dbg !891
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prev_node, align 8, !dbg !892
  %tobool18 = icmp ne %struct.acpi_namespace_node* %20, null, !dbg !892
  br i1 %tobool18, label %if.else, label %if.then19, !dbg !894

if.then19:                                        ; preds = %if.end14
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %new_node, align 8, !dbg !895
  store %struct.acpi_namespace_node* %21, %struct.acpi_namespace_node** getelementptr inbounds (%struct.acpi_namespace_node, %struct.acpi_namespace_node* @acpi_gbl_root_node_struct, i32 0, i32 6), align 8, !dbg !897
  br label %if.end20, !dbg !898

if.else:                                          ; preds = %if.end14
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %new_node, align 8, !dbg !899
  %23 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prev_node, align 8, !dbg !901
  %peer = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %23, i32 0, i32 7, !dbg !902
  store %struct.acpi_namespace_node* %22, %struct.acpi_namespace_node** %peer, align 8, !dbg !903
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then19
  %24 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %new_node, align 8, !dbg !904
  %parent = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %24, i32 0, i32 5, !dbg !905
  store %struct.acpi_namespace_node* @acpi_gbl_root_node_struct, %struct.acpi_namespace_node** %parent, align 8, !dbg !906
  %25 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %new_node, align 8, !dbg !907
  store %struct.acpi_namespace_node* %25, %struct.acpi_namespace_node** %prev_node, align 8, !dbg !908
  %26 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %init_val, align 8, !dbg !909
  %val21 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %26, i32 0, i32 2, !dbg !911
  %27 = load i8*, i8** %val21, align 8, !dbg !911
  %tobool22 = icmp ne i8* %27, null, !dbg !909
  br i1 %tobool22, label %if.then23, label %if.end82, !dbg !912

if.then23:                                        ; preds = %if.end20
  %28 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %init_val, align 8, !dbg !913
  %call24 = call i32 @acpi_os_predefined_override(%struct.acpi_predefined_names* %28, i8** %val) #8, !dbg !915
  store i32 %call24, i32* %status, align 4, !dbg !916
  %29 = load i32, i32* %status, align 4, !dbg !917
  %tobool25 = icmp ne i32 %29, 0, !dbg !917
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !919

if.then26:                                        ; preds = %if.then23
  %30 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %init_val, align 8, !dbg !920
  %name27 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %30, i32 0, i32 0, !dbg !920
  %31 = load i8*, i8** %name27, align 8, !dbg !920
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %31) #8, !dbg !920
  br label %if.end28, !dbg !922

if.end28:                                         ; preds = %if.then26, %if.then23
  %32 = load i8*, i8** %val, align 8, !dbg !923
  %tobool29 = icmp ne i8* %32, null, !dbg !923
  br i1 %tobool29, label %if.end32, label %if.then30, !dbg !925

if.then30:                                        ; preds = %if.end28
  %33 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %init_val, align 8, !dbg !926
  %val31 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %33, i32 0, i32 2, !dbg !928
  %34 = load i8*, i8** %val31, align 8, !dbg !928
  store i8* %34, i8** %val, align 8, !dbg !929
  br label %if.end32, !dbg !930

if.end32:                                         ; preds = %if.then30, %if.end28
  %35 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %init_val, align 8, !dbg !931
  %type33 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %35, i32 0, i32 1, !dbg !931
  %36 = load i8, i8* %type33, align 8, !dbg !931
  %conv = zext i8 %36 to i32, !dbg !931
  %call34 = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 142, i32 16, i32 %conv) #8, !dbg !931
  store %union.acpi_operand_object* %call34, %union.acpi_operand_object** %obj_desc, align 8, !dbg !932
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !933
  %tobool35 = icmp ne %union.acpi_operand_object* %37, null, !dbg !933
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !935

if.then36:                                        ; preds = %if.end32
  store i32 4, i32* %status, align 4, !dbg !936
  br label %unlock_and_exit, !dbg !938

if.end37:                                         ; preds = %if.end32
  %38 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %init_val, align 8, !dbg !939
  %type38 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %38, i32 0, i32 1, !dbg !940
  %39 = load i8, i8* %type38, align 8, !dbg !940
  %conv39 = zext i8 %39 to i32, !dbg !939
  switch i32 %conv39, label %sw.default [
    i32 8, label %sw.bb
    i32 1, label %sw.bb45
    i32 2, label %sw.bb48
    i32 9, label %sw.bb57
  ], !dbg !941

sw.bb:                                            ; preds = %if.end37
  %40 = load i8*, i8** %val, align 8, !dbg !942
  %sub.ptr.lhs.cast = ptrtoint i8* %40 to i64, !dbg !942
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0, !dbg !942
  %conv40 = trunc i64 %sub.ptr.sub to i8, !dbg !944
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !945
  %method = bitcast %union.acpi_operand_object* %41 to %struct.acpi_object_method*, !dbg !946
  %param_count = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method, i32 0, i32 6, !dbg !947
  store i8 %conv40, i8* %param_count, align 2, !dbg !948
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !949
  %common = bitcast %union.acpi_operand_object* %42 to %struct.acpi_object_common*, !dbg !950
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 4, !dbg !951
  %43 = load i8, i8* %flags, align 4, !dbg !952
  %conv41 = zext i8 %43 to i32, !dbg !952
  %or = or i32 %conv41, 4, !dbg !952
  %conv42 = trunc i32 %or to i8, !dbg !952
  store i8 %conv42, i8* %flags, align 4, !dbg !952
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !953
  %method43 = bitcast %union.acpi_operand_object* %44 to %struct.acpi_object_method*, !dbg !954
  %info_flags = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method43, i32 0, i32 5, !dbg !955
  store i8 2, i8* %info_flags, align 1, !dbg !956
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !957
  %method44 = bitcast %union.acpi_operand_object* %45 to %struct.acpi_object_method*, !dbg !958
  %dispatch = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method44, i32 0, i32 11, !dbg !959
  %implementation = bitcast %union.anon* %dispatch to i32 (%struct.acpi_walk_state*)**, !dbg !960
  store i32 (%struct.acpi_walk_state*)* @acpi_ut_osi_implementation, i32 (%struct.acpi_walk_state*)** %implementation, align 8, !dbg !961
  br label %sw.epilog, !dbg !962

sw.bb45:                                          ; preds = %if.end37
  %46 = load i8*, i8** %val, align 8, !dbg !963
  %sub.ptr.lhs.cast46 = ptrtoint i8* %46 to i64, !dbg !963
  %sub.ptr.sub47 = sub i64 %sub.ptr.lhs.cast46, 0, !dbg !963
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !964
  %integer = bitcast %union.acpi_operand_object* %47 to %struct.acpi_object_integer*, !dbg !965
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !966
  store i64 %sub.ptr.sub47, i64* %value, align 8, !dbg !967
  br label %sw.epilog, !dbg !968

sw.bb48:                                          ; preds = %if.end37
  %48 = load i8*, i8** %val, align 8, !dbg !969
  %call49 = call i64 @strlen(i8* %48) #8, !dbg !970
  %conv50 = trunc i64 %call49 to i32, !dbg !971
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !972
  %string = bitcast %union.acpi_operand_object* %49 to %struct.acpi_object_string*, !dbg !973
  %length = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 6, !dbg !974
  store i32 %conv50, i32* %length, align 8, !dbg !975
  %50 = load i8*, i8** %val, align 8, !dbg !976
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !977
  %string51 = bitcast %union.acpi_operand_object* %51 to %struct.acpi_object_string*, !dbg !978
  %pointer = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string51, i32 0, i32 5, !dbg !979
  store i8* %50, i8** %pointer, align 8, !dbg !980
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !981
  %common52 = bitcast %union.acpi_operand_object* %52 to %struct.acpi_object_common*, !dbg !982
  %flags53 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common52, i32 0, i32 4, !dbg !983
  %53 = load i8, i8* %flags53, align 4, !dbg !984
  %conv54 = zext i8 %53 to i32, !dbg !984
  %or55 = or i32 %conv54, 2, !dbg !984
  %conv56 = trunc i32 %or55 to i8, !dbg !984
  store i8 %conv56, i8* %flags53, align 4, !dbg !984
  br label %sw.epilog, !dbg !985

sw.bb57:                                          ; preds = %if.end37
  %54 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %new_node, align 8, !dbg !986
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !987
  %mutex = bitcast %union.acpi_operand_object* %55 to %struct.acpi_object_mutex*, !dbg !988
  %node = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex, i32 0, i32 12, !dbg !989
  store %struct.acpi_namespace_node* %54, %struct.acpi_namespace_node** %node, align 8, !dbg !990
  %56 = load i8*, i8** %val, align 8, !dbg !991
  %sub.ptr.lhs.cast58 = ptrtoint i8* %56 to i64, !dbg !991
  %sub.ptr.sub59 = sub i64 %sub.ptr.lhs.cast58, 0, !dbg !991
  %sub = sub i64 %sub.ptr.sub59, 1, !dbg !992
  %conv60 = trunc i64 %sub to i8, !dbg !993
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !994
  %mutex61 = bitcast %union.acpi_operand_object* %57 to %struct.acpi_object_mutex*, !dbg !995
  %sync_level = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex61, i32 0, i32 5, !dbg !996
  store i8 %conv60, i8* %sync_level, align 1, !dbg !997
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !998
  %mutex62 = bitcast %union.acpi_operand_object* %58 to %struct.acpi_object_mutex*, !dbg !998
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex62, i32 0, i32 7, !dbg !998
  %call63 = call i32 @acpi_os_create_semaphore(i32 1, i32 1, i8** %os_mutex) #8, !dbg !998
  store i32 %call63, i32* %status, align 4, !dbg !999
  %59 = load i32, i32* %status, align 4, !dbg !1000
  %tobool64 = icmp ne i32 %59, 0, !dbg !1000
  br i1 %tobool64, label %if.then65, label %if.end66, !dbg !1002

if.then65:                                        ; preds = %sw.bb57
  %60 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1003
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %60) #8, !dbg !1005
  br label %unlock_and_exit, !dbg !1006

if.end66:                                         ; preds = %sw.bb57
  %61 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %init_val, align 8, !dbg !1007
  %name67 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %61, i32 0, i32 0, !dbg !1009
  %62 = load i8*, i8** %name67, align 8, !dbg !1009
  %call68 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1010
  %cmp = icmp eq i32 %call68, 0, !dbg !1011
  br i1 %cmp, label %if.then70, label %if.end75, !dbg !1012

if.then70:                                        ; preds = %if.end66
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1013
  store %union.acpi_operand_object* %63, %union.acpi_operand_object** @acpi_gbl_global_lock_mutex, align 8, !dbg !1015
  %call71 = call i32 @acpi_os_create_semaphore(i32 1, i32 0, i8** @acpi_gbl_global_lock_semaphore) #8, !dbg !1016
  store i32 %call71, i32* %status, align 4, !dbg !1017
  %64 = load i32, i32* %status, align 4, !dbg !1018
  %tobool72 = icmp ne i32 %64, 0, !dbg !1018
  br i1 %tobool72, label %if.then73, label %if.end74, !dbg !1020

if.then73:                                        ; preds = %if.then70
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1021
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %65) #8, !dbg !1023
  br label %unlock_and_exit, !dbg !1024

if.end74:                                         ; preds = %if.then70
  br label %if.end75, !dbg !1025

if.end75:                                         ; preds = %if.end74, %if.end66
  br label %sw.epilog, !dbg !1026

sw.default:                                       ; preds = %if.end37
  %66 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %init_val, align 8, !dbg !1027
  %type76 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %66, i32 0, i32 1, !dbg !1027
  %67 = load i8, i8* %type76, align 8, !dbg !1027
  %conv77 = zext i8 %67 to i32, !dbg !1027
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 225, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %conv77) #8, !dbg !1027
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1028
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %68) #8, !dbg !1029
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1030
  br label %for.inc, !dbg !1031

sw.epilog:                                        ; preds = %if.end75, %sw.bb48, %sw.bb45, %sw.bb
  %69 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %new_node, align 8, !dbg !1032
  %70 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1033
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1034
  %common78 = bitcast %union.acpi_operand_object* %71 to %struct.acpi_object_common*, !dbg !1035
  %type79 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common78, i32 0, i32 2, !dbg !1036
  %72 = load i8, i8* %type79, align 1, !dbg !1036
  %conv80 = zext i8 %72 to i32, !dbg !1034
  %call81 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %69, %union.acpi_operand_object* %70, i32 %conv80) #8, !dbg !1037
  store i32 %call81, i32* %status, align 4, !dbg !1038
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1039
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %73) #8, !dbg !1040
  br label %if.end82, !dbg !1041

if.end82:                                         ; preds = %sw.epilog, %if.end20
  br label %for.inc, !dbg !1042

for.inc:                                          ; preds = %if.end82, %sw.default, %if.then9
  %74 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %init_val, align 8, !dbg !1043
  %incdec.ptr = getelementptr %struct.acpi_predefined_names, %struct.acpi_predefined_names* %74, i32 1, !dbg !1043
  store %struct.acpi_predefined_names* %incdec.ptr, %struct.acpi_predefined_names** %init_val, align 8, !dbg !1043
  br label %for.cond, !dbg !1044, !llvm.loop !1045

for.end:                                          ; preds = %for.cond
  br label %unlock_and_exit, !dbg !1046

unlock_and_exit:                                  ; preds = %for.end, %if.then73, %if.then65, %if.then36, %if.then13, %if.then2
  call void @llvm.dbg.label(metadata !1047), !dbg !1048
  %call83 = call i32 @acpi_ut_release_mutex(i32 1) #8, !dbg !1049
  %75 = load i32, i32* %status, align 4, !dbg !1050
  %tobool84 = icmp ne i32 %75, 0, !dbg !1050
  br i1 %tobool84, label %if.end87, label %if.then85, !dbg !1052

if.then85:                                        ; preds = %unlock_and_exit
  %call86 = call i32 @acpi_ns_get_node(%struct.acpi_namespace_node* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 0, %struct.acpi_namespace_node** @acpi_gbl_fadt_gpe_device) #8, !dbg !1053
  store i32 %call86, i32* %status, align 4, !dbg !1055
  br label %if.end87, !dbg !1056

if.end87:                                         ; preds = %if.then85, %unlock_and_exit
  %76 = load i32, i32* %status, align 4, !dbg !1057
  store i32 %76, i32* %retval, align 4, !dbg !1057
  br label %return, !dbg !1057

return:                                           ; preds = %if.end87, %if.then
  %77 = load i32, i32* %retval, align 4, !dbg !1058
  ret i32 %77, !dbg !1058
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !1059 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1063, metadata !DIExpression()), !dbg !1069
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1073, metadata !DIExpression()), !dbg !1074
  %0 = load i64, i64* %size.addr, align 8, !dbg !1075
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1076, metadata !DIExpression()), !dbg !1077
  br label %do.body, !dbg !1077

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1078, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1082, metadata !DIExpression()), !dbg !1081
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1081
  %conv = zext i1 %cmp to i32, !dbg !1081
  store i32 1, i32* %tmp, align 4, !dbg !1081
  %1 = load i32, i32* %tmp, align 4, !dbg !1081
  %call = call i64 @arch_local_save_flags() #8, !dbg !1083
  store i64 %call, i64* %_flags, align 8, !dbg !1083
  br label %do.end, !dbg !1083

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1084, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1087, metadata !DIExpression()), !dbg !1086
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1086
  %conv6 = zext i1 %cmp5 to i32, !dbg !1086
  store i32 1, i32* %tmp7, align 4, !dbg !1086
  %2 = load i32, i32* %tmp7, align 4, !dbg !1086
  %3 = load i64, i64* %_flags, align 8, !dbg !1088
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1089
  %and.i = and i64 %4, 512, !dbg !1090
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1091
  %lnot.i = xor i1 %tobool.i, true, !dbg !1091
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1091
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1088
  %5 = load i32, i32* %tmp8, align 4, !dbg !1088
  store i32 %5, i32* %tmp1, align 4, !dbg !1083
  %6 = load i32, i32* %tmp1, align 4, !dbg !1077
  %tobool = icmp ne i32 %6, 0, !dbg !1092
  %7 = zext i1 %tobool to i64, !dbg !1092
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1092
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #8, !dbg !1093
  ret i8* %call10, !dbg !1094
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_predefined_override(%struct.acpi_predefined_names*, i8**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_osi_implementation(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_create_semaphore(i32, i32, i8**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_release_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_get_node(%struct.acpi_namespace_node*, i8*, i32, %struct.acpi_namespace_node**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_lookup(%union.acpi_generic_state* %scope_info, i8* %pathname, i32 %type, i32 %interpreter_mode, i32 %flags, %struct.acpi_walk_state* %walk_state, %struct.acpi_namespace_node** %return_node) #0 !dbg !1095 {
entry:
  %retval = alloca i32, align 4
  %scope_info.addr = alloca %union.acpi_generic_state*, align 8
  %pathname.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %interpreter_mode.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %return_node.addr = alloca %struct.acpi_namespace_node**, align 8
  %status = alloca i32, align 4
  %path = alloca i8*, align 8
  %external_path = alloca i8*, align 8
  %prefix_node = alloca %struct.acpi_namespace_node*, align 8
  %current_node = alloca %struct.acpi_namespace_node*, align 8
  %this_node = alloca %struct.acpi_namespace_node*, align 8
  %num_segments = alloca i32, align 4
  %num_carats = alloca i32, align 4
  %simple_name = alloca i32, align 4
  %type_to_check_for = alloca i32, align 4
  %this_search_type = alloca i32, align 4
  %search_parent_flag = alloca i32, align 4
  %local_flags = alloca i32, align 4
  %local_interpreter_mode = alloca i32, align 4
  store %union.acpi_generic_state* %scope_info, %union.acpi_generic_state** %scope_info.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %scope_info.addr, metadata !1101, metadata !DIExpression()), !dbg !1102
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !1103, metadata !DIExpression()), !dbg !1104
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !1105, metadata !DIExpression()), !dbg !1106
  store i32 %interpreter_mode, i32* %interpreter_mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %interpreter_mode.addr, metadata !1107, metadata !DIExpression()), !dbg !1108
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1109, metadata !DIExpression()), !dbg !1110
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1111, metadata !DIExpression()), !dbg !1112
  store %struct.acpi_namespace_node** %return_node, %struct.acpi_namespace_node*** %return_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node*** %return_node.addr, metadata !1113, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1115, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.declare(metadata i8** %path, metadata !1117, metadata !DIExpression()), !dbg !1118
  %0 = load i8*, i8** %pathname.addr, align 8, !dbg !1119
  store i8* %0, i8** %path, align 8, !dbg !1118
  call void @llvm.dbg.declare(metadata i8** %external_path, metadata !1120, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %prefix_node, metadata !1122, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %current_node, metadata !1124, metadata !DIExpression()), !dbg !1125
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %current_node, align 8, !dbg !1125
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %this_node, metadata !1126, metadata !DIExpression()), !dbg !1127
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %this_node, align 8, !dbg !1127
  call void @llvm.dbg.declare(metadata i32* %num_segments, metadata !1128, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.declare(metadata i32* %num_carats, metadata !1130, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.declare(metadata i32* %simple_name, metadata !1132, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.declare(metadata i32* %type_to_check_for, metadata !1135, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.declare(metadata i32* %this_search_type, metadata !1137, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.declare(metadata i32* %search_parent_flag, metadata !1139, metadata !DIExpression()), !dbg !1140
  store i32 1, i32* %search_parent_flag, align 4, !dbg !1140
  call void @llvm.dbg.declare(metadata i32* %local_flags, metadata !1141, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.declare(metadata i32* %local_interpreter_mode, metadata !1143, metadata !DIExpression()), !dbg !1144
  %1 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !1145
  %tobool = icmp ne %struct.acpi_namespace_node** %1, null, !dbg !1145
  br i1 %tobool, label %if.end, label %if.then, !dbg !1147

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !1148
  br label %return, !dbg !1148

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %flags.addr, align 4, !dbg !1150
  %and = and i32 %2, -138, !dbg !1151
  store i32 %and, i32* %local_flags, align 4, !dbg !1152
  %3 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !1153
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %3, align 8, !dbg !1154
  %4 = load i32, i32* @acpi_gbl_ns_lookup_count, align 4, !dbg !1155
  %inc = add i32 %4, 1, !dbg !1155
  store i32 %inc, i32* @acpi_gbl_ns_lookup_count, align 4, !dbg !1155
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !1156
  %tobool1 = icmp ne %struct.acpi_namespace_node* %5, null, !dbg !1156
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1158

if.then2:                                         ; preds = %if.end
  store i32 3, i32* %retval, align 4, !dbg !1159
  br label %return, !dbg !1159

if.end3:                                          ; preds = %if.end
  %6 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info.addr, align 8, !dbg !1161
  %tobool4 = icmp ne %union.acpi_generic_state* %6, null, !dbg !1161
  br i1 %tobool4, label %lor.lhs.false, label %if.then6, !dbg !1163

lor.lhs.false:                                    ; preds = %if.end3
  %7 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info.addr, align 8, !dbg !1164
  %scope = bitcast %union.acpi_generic_state* %7 to %struct.acpi_scope_state*, !dbg !1165
  %node = getelementptr inbounds %struct.acpi_scope_state, %struct.acpi_scope_state* %scope, i32 0, i32 5, !dbg !1166
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1166
  %tobool5 = icmp ne %struct.acpi_namespace_node* %8, null, !dbg !1164
  br i1 %tobool5, label %if.else, label %if.then6, !dbg !1167

if.then6:                                         ; preds = %lor.lhs.false, %if.end3
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !1168
  store %struct.acpi_namespace_node* %9, %struct.acpi_namespace_node** %prefix_node, align 8, !dbg !1170
  br label %if.end24, !dbg !1171

if.else:                                          ; preds = %lor.lhs.false
  %10 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info.addr, align 8, !dbg !1172
  %scope7 = bitcast %union.acpi_generic_state* %10 to %struct.acpi_scope_state*, !dbg !1174
  %node8 = getelementptr inbounds %struct.acpi_scope_state, %struct.acpi_scope_state* %scope7, i32 0, i32 5, !dbg !1175
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node8, align 8, !dbg !1175
  store %struct.acpi_namespace_node* %11, %struct.acpi_namespace_node** %prefix_node, align 8, !dbg !1176
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prefix_node, align 8, !dbg !1177
  %13 = bitcast %struct.acpi_namespace_node* %12 to i8*, !dbg !1177
  %14 = bitcast i8* %13 to %union.acpi_descriptor*, !dbg !1177
  %common = bitcast %union.acpi_descriptor* %14 to %struct.acpi_common_descriptor*, !dbg !1177
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !1177
  %15 = load i8, i8* %descriptor_type, align 8, !dbg !1177
  %conv = zext i8 %15 to i32, !dbg !1177
  %cmp = icmp ne i32 %conv, 15, !dbg !1179
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !1180

if.then10:                                        ; preds = %if.else
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prefix_node, align 8, !dbg !1181
  %17 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prefix_node, align 8, !dbg !1181
  %18 = bitcast %struct.acpi_namespace_node* %17 to i8*, !dbg !1181
  %call = call i8* @acpi_ut_get_descriptor_name(i8* %18) #8, !dbg !1181
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 332, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), %struct.acpi_namespace_node* %16, i8* %call) #8, !dbg !1181
  store i32 12303, i32* %retval, align 4, !dbg !1183
  br label %return, !dbg !1183

if.end11:                                         ; preds = %if.else
  %19 = load i32, i32* %flags.addr, align 4, !dbg !1184
  %and12 = and i32 %19, 16, !dbg !1186
  %tobool13 = icmp ne i32 %and12, 0, !dbg !1186
  br i1 %tobool13, label %if.end23, label %if.then14, !dbg !1187

if.then14:                                        ; preds = %if.end11
  br label %while.cond, !dbg !1188

while.cond:                                       ; preds = %while.body, %if.then14
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prefix_node, align 8, !dbg !1190
  %type15 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %20, i32 0, i32 2, !dbg !1191
  %21 = load i8, i8* %type15, align 1, !dbg !1191
  %conv16 = zext i8 %21 to i32, !dbg !1190
  %call17 = call i32 @acpi_ns_opens_scope(i32 %conv16) #8, !dbg !1192
  %tobool18 = icmp ne i32 %call17, 0, !dbg !1192
  br i1 %tobool18, label %land.end, label %land.rhs, !dbg !1193

land.rhs:                                         ; preds = %while.cond
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prefix_node, align 8, !dbg !1194
  %type19 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %22, i32 0, i32 2, !dbg !1195
  %23 = load i8, i8* %type19, align 1, !dbg !1195
  %conv20 = zext i8 %23 to i32, !dbg !1194
  %cmp21 = icmp ne i32 %conv20, 0, !dbg !1196
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %24 = phi i1 [ false, %while.cond ], [ %cmp21, %land.rhs ], !dbg !1197
  br i1 %24, label %while.body, label %while.end, !dbg !1188

while.body:                                       ; preds = %land.end
  %25 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prefix_node, align 8, !dbg !1198
  %parent = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %25, i32 0, i32 5, !dbg !1200
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent, align 8, !dbg !1200
  store %struct.acpi_namespace_node* %26, %struct.acpi_namespace_node** %prefix_node, align 8, !dbg !1201
  br label %while.cond, !dbg !1188, !llvm.loop !1202

while.end:                                        ; preds = %land.end
  br label %if.end23, !dbg !1204

if.end23:                                         ; preds = %while.end, %if.end11
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then6
  %27 = load i32, i32* %type.addr, align 4, !dbg !1205
  store i32 %27, i32* %type_to_check_for, align 4, !dbg !1206
  %28 = load i8*, i8** %pathname.addr, align 8, !dbg !1207
  %tobool25 = icmp ne i8* %28, null, !dbg !1207
  br i1 %tobool25, label %if.else27, label %if.then26, !dbg !1209

if.then26:                                        ; preds = %if.end24
  store i32 0, i32* %num_segments, align 4, !dbg !1210
  %29 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !1212
  store %struct.acpi_namespace_node* %29, %struct.acpi_namespace_node** %this_node, align 8, !dbg !1213
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8** %path, align 8, !dbg !1214
  br label %if.end63, !dbg !1215

if.else27:                                        ; preds = %if.end24
  %30 = load i8*, i8** %path, align 8, !dbg !1216
  %31 = load i8, i8* %30, align 1, !dbg !1219
  %conv28 = sext i8 %31 to i32, !dbg !1219
  %cmp29 = icmp eq i32 %conv28, 92, !dbg !1220
  br i1 %cmp29, label %if.then31, label %if.else32, !dbg !1221

if.then31:                                        ; preds = %if.else27
  %32 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !1222
  store %struct.acpi_namespace_node* %32, %struct.acpi_namespace_node** %this_node, align 8, !dbg !1224
  store i32 0, i32* %search_parent_flag, align 4, !dbg !1225
  %33 = load i8*, i8** %path, align 8, !dbg !1226
  %incdec.ptr = getelementptr i8, i8* %33, i32 1, !dbg !1226
  store i8* %incdec.ptr, i8** %path, align 8, !dbg !1226
  br label %if.end53, !dbg !1227

if.else32:                                        ; preds = %if.else27
  %34 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prefix_node, align 8, !dbg !1228
  store %struct.acpi_namespace_node* %34, %struct.acpi_namespace_node** %this_node, align 8, !dbg !1230
  store i32 0, i32* %num_carats, align 4, !dbg !1231
  br label %while.cond33, !dbg !1232

while.cond33:                                     ; preds = %if.end47, %if.else32
  %35 = load i8*, i8** %path, align 8, !dbg !1233
  %36 = load i8, i8* %35, align 1, !dbg !1234
  %conv34 = sext i8 %36 to i32, !dbg !1234
  %cmp35 = icmp eq i32 %conv34, 94, !dbg !1235
  br i1 %cmp35, label %while.body37, label %while.end48, !dbg !1232

while.body37:                                     ; preds = %while.cond33
  store i32 0, i32* %search_parent_flag, align 4, !dbg !1236
  %37 = load i8*, i8** %path, align 8, !dbg !1238
  %incdec.ptr38 = getelementptr i8, i8* %37, i32 1, !dbg !1238
  store i8* %incdec.ptr38, i8** %path, align 8, !dbg !1238
  %38 = load i32, i32* %num_carats, align 4, !dbg !1239
  %inc39 = add i32 %38, 1, !dbg !1239
  store i32 %inc39, i32* %num_carats, align 4, !dbg !1239
  %39 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %this_node, align 8, !dbg !1240
  %parent40 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %39, i32 0, i32 5, !dbg !1241
  %40 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent40, align 8, !dbg !1241
  store %struct.acpi_namespace_node* %40, %struct.acpi_namespace_node** %this_node, align 8, !dbg !1242
  %41 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %this_node, align 8, !dbg !1243
  %tobool41 = icmp ne %struct.acpi_namespace_node* %41, null, !dbg !1243
  br i1 %tobool41, label %if.end47, label %if.then42, !dbg !1245

if.then42:                                        ; preds = %while.body37
  %42 = load i8*, i8** %pathname.addr, align 8, !dbg !1246
  %call43 = call i32 @acpi_ns_externalize_name(i32 -1, i8* %42, i32* null, i8** %external_path) #8, !dbg !1248
  store i32 %call43, i32* %status, align 4, !dbg !1249
  %43 = load i32, i32* %status, align 4, !dbg !1250
  %tobool44 = icmp ne i32 %43, 0, !dbg !1250
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !1252

if.then45:                                        ; preds = %if.then42
  %44 = load i8*, i8** %external_path, align 8, !dbg !1253
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 437, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* %44) #8, !dbg !1253
  %45 = load i8*, i8** %external_path, align 8, !dbg !1255
  call void @acpi_os_free(i8* %45) #8, !dbg !1255
  br label %if.end46, !dbg !1256

if.end46:                                         ; preds = %if.then45, %if.then42
  store i32 5, i32* %retval, align 4, !dbg !1257
  br label %return, !dbg !1257

if.end47:                                         ; preds = %while.body37
  br label %while.cond33, !dbg !1232, !llvm.loop !1258

while.end48:                                      ; preds = %while.cond33
  %46 = load i32, i32* %search_parent_flag, align 4, !dbg !1260
  %cmp49 = icmp eq i32 %46, 0, !dbg !1262
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !1263

if.then51:                                        ; preds = %while.end48
  br label %if.end52, !dbg !1264

if.end52:                                         ; preds = %if.then51, %while.end48
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then31
  %47 = load i8*, i8** %path, align 8, !dbg !1266
  %48 = load i8, i8* %47, align 1, !dbg !1267
  %conv54 = sext i8 %48 to i32, !dbg !1267
  switch i32 %conv54, label %sw.default [
    i32 0, label %sw.bb
    i32 46, label %sw.bb57
    i32 47, label %sw.bb59
  ], !dbg !1268

sw.bb:                                            ; preds = %if.end53
  store i32 0, i32* %num_segments, align 4, !dbg !1269
  %49 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %this_node, align 8, !dbg !1271
  %type55 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %49, i32 0, i32 2, !dbg !1272
  %50 = load i8, i8* %type55, align 1, !dbg !1272
  %conv56 = zext i8 %50 to i32, !dbg !1271
  store i32 %conv56, i32* %type.addr, align 4, !dbg !1273
  br label %sw.epilog, !dbg !1274

sw.bb57:                                          ; preds = %if.end53
  store i32 0, i32* %search_parent_flag, align 4, !dbg !1275
  store i32 2, i32* %num_segments, align 4, !dbg !1276
  %51 = load i8*, i8** %path, align 8, !dbg !1277
  %incdec.ptr58 = getelementptr i8, i8* %51, i32 1, !dbg !1277
  store i8* %incdec.ptr58, i8** %path, align 8, !dbg !1277
  br label %sw.epilog, !dbg !1278

sw.bb59:                                          ; preds = %if.end53
  store i32 0, i32* %search_parent_flag, align 4, !dbg !1279
  %52 = load i8*, i8** %path, align 8, !dbg !1280
  %incdec.ptr60 = getelementptr i8, i8* %52, i32 1, !dbg !1280
  store i8* %incdec.ptr60, i8** %path, align 8, !dbg !1280
  %53 = load i8*, i8** %path, align 8, !dbg !1281
  %54 = load i8, i8* %53, align 1, !dbg !1282
  %conv61 = zext i8 %54 to i32, !dbg !1283
  store i32 %conv61, i32* %num_segments, align 4, !dbg !1284
  %55 = load i8*, i8** %path, align 8, !dbg !1285
  %incdec.ptr62 = getelementptr i8, i8* %55, i32 1, !dbg !1285
  store i8* %incdec.ptr62, i8** %path, align 8, !dbg !1285
  br label %sw.epilog, !dbg !1286

sw.default:                                       ; preds = %if.end53
  store i32 1, i32* %num_segments, align 4, !dbg !1287
  br label %sw.epilog, !dbg !1288

sw.epilog:                                        ; preds = %sw.default, %sw.bb59, %sw.bb57, %sw.bb
  br label %if.end63

if.end63:                                         ; preds = %sw.epilog, %if.then26
  store i32 0, i32* %this_search_type, align 4, !dbg !1289
  %56 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %this_node, align 8, !dbg !1290
  store %struct.acpi_namespace_node* %56, %struct.acpi_namespace_node** %current_node, align 8, !dbg !1291
  br label %while.cond64, !dbg !1292

while.cond64:                                     ; preds = %if.end162, %if.end63
  %57 = load i32, i32* %num_segments, align 4, !dbg !1293
  %tobool65 = icmp ne i32 %57, 0, !dbg !1293
  br i1 %tobool65, label %land.rhs66, label %land.end68, !dbg !1294

land.rhs66:                                       ; preds = %while.cond64
  %58 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %current_node, align 8, !dbg !1295
  %tobool67 = icmp ne %struct.acpi_namespace_node* %58, null, !dbg !1294
  br label %land.end68

land.end68:                                       ; preds = %land.rhs66, %while.cond64
  %59 = phi i1 [ false, %while.cond64 ], [ %tobool67, %land.rhs66 ], !dbg !1296
  br i1 %59, label %while.body69, label %while.end163, !dbg !1292

while.body69:                                     ; preds = %land.end68
  %60 = load i32, i32* %num_segments, align 4, !dbg !1297
  %dec = add i32 %60, -1, !dbg !1297
  store i32 %dec, i32* %num_segments, align 4, !dbg !1297
  %61 = load i32, i32* %num_segments, align 4, !dbg !1299
  %tobool70 = icmp ne i32 %61, 0, !dbg !1299
  br i1 %tobool70, label %if.end88, label %if.then71, !dbg !1301

if.then71:                                        ; preds = %while.body69
  %62 = load i32, i32* %type.addr, align 4, !dbg !1302
  store i32 %62, i32* %this_search_type, align 4, !dbg !1304
  %63 = load i32, i32* %search_parent_flag, align 4, !dbg !1305
  %cmp72 = icmp ne i32 %63, 0, !dbg !1307
  br i1 %cmp72, label %land.lhs.true, label %if.end77, !dbg !1308

land.lhs.true:                                    ; preds = %if.then71
  %64 = load i32, i32* %flags.addr, align 4, !dbg !1309
  %and74 = and i32 %64, 1, !dbg !1310
  %tobool75 = icmp ne i32 %and74, 0, !dbg !1310
  br i1 %tobool75, label %if.then76, label %if.end77, !dbg !1311

if.then76:                                        ; preds = %land.lhs.true
  %65 = load i32, i32* %local_flags, align 4, !dbg !1312
  %or = or i32 %65, 1, !dbg !1312
  store i32 %or, i32* %local_flags, align 4, !dbg !1312
  br label %if.end77, !dbg !1314

if.end77:                                         ; preds = %if.then76, %land.lhs.true, %if.then71
  %66 = load i32, i32* %flags.addr, align 4, !dbg !1315
  %and78 = and i32 %66, 8, !dbg !1317
  %tobool79 = icmp ne i32 %and78, 0, !dbg !1317
  br i1 %tobool79, label %if.then80, label %if.end82, !dbg !1318

if.then80:                                        ; preds = %if.end77
  %67 = load i32, i32* %local_flags, align 4, !dbg !1319
  %or81 = or i32 %67, 8, !dbg !1319
  store i32 %or81, i32* %local_flags, align 4, !dbg !1319
  br label %if.end82, !dbg !1321

if.end82:                                         ; preds = %if.then80, %if.end77
  %68 = load i32, i32* %flags.addr, align 4, !dbg !1322
  %and83 = and i32 %68, 128, !dbg !1324
  %tobool84 = icmp ne i32 %and83, 0, !dbg !1324
  br i1 %tobool84, label %if.then85, label %if.end87, !dbg !1325

if.then85:                                        ; preds = %if.end82
  %69 = load i32, i32* %local_flags, align 4, !dbg !1326
  %or86 = or i32 %69, 128, !dbg !1326
  store i32 %or86, i32* %local_flags, align 4, !dbg !1326
  br label %if.end87, !dbg !1328

if.end87:                                         ; preds = %if.then85, %if.end82
  br label %if.end88, !dbg !1329

if.end88:                                         ; preds = %if.end87, %while.body69
  %70 = load i32, i32* %interpreter_mode.addr, align 4, !dbg !1330
  store i32 %70, i32* %local_interpreter_mode, align 4, !dbg !1331
  %71 = load i32, i32* %flags.addr, align 4, !dbg !1332
  %and89 = and i32 %71, 512, !dbg !1334
  %tobool90 = icmp ne i32 %and89, 0, !dbg !1334
  br i1 %tobool90, label %land.lhs.true91, label %if.end95, !dbg !1335

land.lhs.true91:                                  ; preds = %if.end88
  %72 = load i32, i32* %num_segments, align 4, !dbg !1336
  %cmp92 = icmp ugt i32 %72, 0, !dbg !1337
  br i1 %cmp92, label %if.then94, label %if.end95, !dbg !1338

if.then94:                                        ; preds = %land.lhs.true91
  store i32 3, i32* %local_interpreter_mode, align 4, !dbg !1339
  br label %if.end95, !dbg !1341

if.end95:                                         ; preds = %if.then94, %land.lhs.true91, %if.end88
  %73 = load i8*, i8** %path, align 8, !dbg !1342
  %74 = bitcast i8* %73 to i32*, !dbg !1342
  %75 = load i32, i32* %74, align 4, !dbg !1342
  %76 = bitcast i32* %simple_name to i8*, !dbg !1342
  %77 = bitcast i8* %76 to i32*, !dbg !1342
  store i32 %75, i32* %77, align 4, !dbg !1342
  %78 = load i32, i32* %simple_name, align 4, !dbg !1343
  %79 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1344
  %80 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %current_node, align 8, !dbg !1345
  %81 = load i32, i32* %local_interpreter_mode, align 4, !dbg !1346
  %82 = load i32, i32* %this_search_type, align 4, !dbg !1347
  %83 = load i32, i32* %local_flags, align 4, !dbg !1348
  %call96 = call i32 @acpi_ns_search_and_enter(i32 %78, %struct.acpi_walk_state* %79, %struct.acpi_namespace_node* %80, i32 %81, i32 %82, i32 %83, %struct.acpi_namespace_node** %this_node) #8, !dbg !1349
  store i32 %call96, i32* %status, align 4, !dbg !1350
  %84 = load i32, i32* %status, align 4, !dbg !1351
  %tobool97 = icmp ne i32 %84, 0, !dbg !1351
  br i1 %tobool97, label %if.then98, label %if.end107, !dbg !1353

if.then98:                                        ; preds = %if.end95
  %85 = load i32, i32* %status, align 4, !dbg !1354
  %cmp99 = icmp eq i32 %85, 5, !dbg !1357
  br i1 %cmp99, label %if.then101, label %if.end106, !dbg !1358

if.then101:                                       ; preds = %if.then98
  %86 = load i32, i32* %flags.addr, align 4, !dbg !1359
  %and102 = and i32 %86, 512, !dbg !1362
  %tobool103 = icmp ne i32 %and102, 0, !dbg !1362
  br i1 %tobool103, label %if.then104, label %if.end105, !dbg !1363

if.then104:                                       ; preds = %if.then101
  %87 = bitcast i32* %simple_name to i8*, !dbg !1364
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i8* %87) #8, !dbg !1366
  br label %if.end105, !dbg !1367

if.end105:                                        ; preds = %if.then104, %if.then101
  br label %if.end106, !dbg !1368

if.end106:                                        ; preds = %if.end105, %if.then98
  %88 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %this_node, align 8, !dbg !1369
  %89 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !1370
  store %struct.acpi_namespace_node* %88, %struct.acpi_namespace_node** %89, align 8, !dbg !1371
  %90 = load i32, i32* %status, align 4, !dbg !1372
  store i32 %90, i32* %retval, align 4, !dbg !1372
  br label %return, !dbg !1372

if.end107:                                        ; preds = %if.end95
  %91 = load i32, i32* %num_segments, align 4, !dbg !1373
  %cmp108 = icmp ugt i32 %91, 0, !dbg !1375
  br i1 %cmp108, label %if.then110, label %if.else128, !dbg !1376

if.then110:                                       ; preds = %if.end107
  %92 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %this_node, align 8, !dbg !1377
  %type111 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %92, i32 0, i32 2, !dbg !1380
  %93 = load i8, i8* %type111, align 1, !dbg !1380
  %conv112 = zext i8 %93 to i32, !dbg !1377
  %cmp113 = icmp eq i32 %conv112, 21, !dbg !1381
  br i1 %cmp113, label %if.then115, label %if.end127, !dbg !1382

if.then115:                                       ; preds = %if.then110
  %94 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %this_node, align 8, !dbg !1383
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %94, i32 0, i32 0, !dbg !1386
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1386
  %tobool116 = icmp ne %union.acpi_operand_object* %95, null, !dbg !1383
  br i1 %tobool116, label %if.end118, label %if.then117, !dbg !1387

if.then117:                                       ; preds = %if.then115
  store i32 6, i32* %retval, align 4, !dbg !1388
  br label %return, !dbg !1388

if.end118:                                        ; preds = %if.then115
  %96 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %this_node, align 8, !dbg !1390
  %object119 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %96, i32 0, i32 0, !dbg !1392
  %97 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object119, align 8, !dbg !1392
  %98 = bitcast %union.acpi_operand_object* %97 to %struct.acpi_namespace_node*, !dbg !1393
  %type120 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %98, i32 0, i32 2, !dbg !1393
  %99 = load i8, i8* %type120, align 1, !dbg !1393
  %conv121 = zext i8 %99 to i32, !dbg !1394
  %call122 = call i32 @acpi_ns_opens_scope(i32 %conv121) #8, !dbg !1395
  %tobool123 = icmp ne i32 %call122, 0, !dbg !1395
  br i1 %tobool123, label %if.then124, label %if.end126, !dbg !1396

if.then124:                                       ; preds = %if.end118
  %100 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %this_node, align 8, !dbg !1397
  %object125 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %100, i32 0, i32 0, !dbg !1399
  %101 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object125, align 8, !dbg !1399
  %102 = bitcast %union.acpi_operand_object* %101 to %struct.acpi_namespace_node*, !dbg !1400
  store %struct.acpi_namespace_node* %102, %struct.acpi_namespace_node** %this_node, align 8, !dbg !1401
  br label %if.end126, !dbg !1402

if.end126:                                        ; preds = %if.then124, %if.end118
  br label %if.end127, !dbg !1403

if.end127:                                        ; preds = %if.end126, %if.then110
  br label %if.end162, !dbg !1404

if.else128:                                       ; preds = %if.end107
  %103 = load i32, i32* %type_to_check_for, align 4, !dbg !1405
  %cmp129 = icmp ne i32 %103, 0, !dbg !1408
  br i1 %cmp129, label %land.lhs.true131, label %if.end155, !dbg !1409

land.lhs.true131:                                 ; preds = %if.else128
  %104 = load i32, i32* %type_to_check_for, align 4, !dbg !1410
  %cmp132 = icmp ne i32 %104, 21, !dbg !1411
  br i1 %cmp132, label %land.lhs.true134, label %if.end155, !dbg !1412

land.lhs.true134:                                 ; preds = %land.lhs.true131
  %105 = load i32, i32* %type_to_check_for, align 4, !dbg !1413
  %cmp135 = icmp ne i32 %105, 22, !dbg !1414
  br i1 %cmp135, label %land.lhs.true137, label %if.end155, !dbg !1415

land.lhs.true137:                                 ; preds = %land.lhs.true134
  %106 = load i32, i32* %type_to_check_for, align 4, !dbg !1416
  %cmp138 = icmp ne i32 %106, 27, !dbg !1417
  br i1 %cmp138, label %land.lhs.true140, label %if.end155, !dbg !1418

land.lhs.true140:                                 ; preds = %land.lhs.true137
  %107 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %this_node, align 8, !dbg !1419
  %type141 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %107, i32 0, i32 2, !dbg !1420
  %108 = load i8, i8* %type141, align 1, !dbg !1420
  %conv142 = zext i8 %108 to i32, !dbg !1419
  %cmp143 = icmp ne i32 %conv142, 0, !dbg !1421
  br i1 %cmp143, label %land.lhs.true145, label %if.end155, !dbg !1422

land.lhs.true145:                                 ; preds = %land.lhs.true140
  %109 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %this_node, align 8, !dbg !1423
  %type146 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %109, i32 0, i32 2, !dbg !1424
  %110 = load i8, i8* %type146, align 1, !dbg !1424
  %conv147 = zext i8 %110 to i32, !dbg !1423
  %111 = load i32, i32* %type_to_check_for, align 4, !dbg !1425
  %cmp148 = icmp ne i32 %conv147, %111, !dbg !1426
  br i1 %cmp148, label %if.then150, label %if.end155, !dbg !1427

if.then150:                                       ; preds = %land.lhs.true145
  %112 = bitcast i32* %simple_name to i8*, !dbg !1428
  %113 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %this_node, align 8, !dbg !1428
  %type151 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %113, i32 0, i32 2, !dbg !1428
  %114 = load i8, i8* %type151, align 1, !dbg !1428
  %conv152 = zext i8 %114 to i32, !dbg !1428
  %call153 = call i8* @acpi_ut_get_type_name(i32 %conv152) #8, !dbg !1428
  %115 = load i32, i32* %type_to_check_for, align 4, !dbg !1428
  %call154 = call i8* @acpi_ut_get_type_name(i32 %115) #8, !dbg !1428
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 697, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i64 0, i64 0), i8* %112, i8* %call153, i8* %call154) #8, !dbg !1428
  br label %if.end155, !dbg !1430

if.end155:                                        ; preds = %if.then150, %land.lhs.true145, %land.lhs.true140, %land.lhs.true137, %land.lhs.true134, %land.lhs.true131, %if.else128
  %116 = load i32, i32* %type.addr, align 4, !dbg !1431
  %cmp156 = icmp eq i32 %116, 0, !dbg !1433
  br i1 %cmp156, label %if.then158, label %if.end161, !dbg !1434

if.then158:                                       ; preds = %if.end155
  %117 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %this_node, align 8, !dbg !1435
  %type159 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %117, i32 0, i32 2, !dbg !1437
  %118 = load i8, i8* %type159, align 1, !dbg !1437
  %conv160 = zext i8 %118 to i32, !dbg !1435
  store i32 %conv160, i32* %type.addr, align 4, !dbg !1438
  br label %if.end161, !dbg !1439

if.end161:                                        ; preds = %if.then158, %if.end155
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %if.end127
  %119 = load i8*, i8** %path, align 8, !dbg !1440
  %add.ptr = getelementptr i8, i8* %119, i64 4, !dbg !1440
  store i8* %add.ptr, i8** %path, align 8, !dbg !1440
  %120 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %this_node, align 8, !dbg !1441
  store %struct.acpi_namespace_node* %120, %struct.acpi_namespace_node** %current_node, align 8, !dbg !1442
  br label %while.cond64, !dbg !1292, !llvm.loop !1443

while.end163:                                     ; preds = %land.end68
  %121 = load i32, i32* %flags.addr, align 4, !dbg !1445
  %and164 = and i32 %121, 2, !dbg !1447
  %tobool165 = icmp ne i32 %and164, 0, !dbg !1447
  br i1 %tobool165, label %if.end177, label %land.lhs.true166, !dbg !1448

land.lhs.true166:                                 ; preds = %while.end163
  %122 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1449
  %tobool167 = icmp ne %struct.acpi_walk_state* %122, null, !dbg !1450
  br i1 %tobool167, label %if.then168, label %if.end177, !dbg !1451

if.then168:                                       ; preds = %land.lhs.true166
  %123 = load i32, i32* %type.addr, align 4, !dbg !1452
  %call169 = call i32 @acpi_ns_opens_scope(i32 %123) #8, !dbg !1455
  %tobool170 = icmp ne i32 %call169, 0, !dbg !1455
  br i1 %tobool170, label %if.then171, label %if.end176, !dbg !1456

if.then171:                                       ; preds = %if.then168
  %124 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %this_node, align 8, !dbg !1457
  %125 = load i32, i32* %type.addr, align 4, !dbg !1459
  %126 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1460
  %call172 = call i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node* %124, i32 %125, %struct.acpi_walk_state* %126) #8, !dbg !1461
  store i32 %call172, i32* %status, align 4, !dbg !1462
  %127 = load i32, i32* %status, align 4, !dbg !1463
  %tobool173 = icmp ne i32 %127, 0, !dbg !1463
  br i1 %tobool173, label %if.then174, label %if.end175, !dbg !1465

if.then174:                                       ; preds = %if.then171
  %128 = load i32, i32* %status, align 4, !dbg !1466
  store i32 %128, i32* %retval, align 4, !dbg !1466
  br label %return, !dbg !1466

if.end175:                                        ; preds = %if.then171
  br label %if.end176, !dbg !1468

if.end176:                                        ; preds = %if.end175, %if.then168
  br label %if.end177, !dbg !1469

if.end177:                                        ; preds = %if.end176, %land.lhs.true166, %while.end163
  %129 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %this_node, align 8, !dbg !1470
  %130 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !1471
  store %struct.acpi_namespace_node* %129, %struct.acpi_namespace_node** %130, align 8, !dbg !1472
  store i32 0, i32* %retval, align 4, !dbg !1473
  br label %return, !dbg !1473

return:                                           ; preds = %if.end177, %if.then174, %if.then117, %if.end106, %if.end46, %if.then10, %if.then2, %if.then
  %131 = load i32, i32* %retval, align 4, !dbg !1474
  ret i32 %131, !dbg !1474
}

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_descriptor_name(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_opens_scope(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_externalize_name(i32, i8*, i32*, i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1475 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1478, metadata !DIExpression()), !dbg !1479
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1480
  call void @kfree(i8* %0) #8, !dbg !1481
  ret void, !dbg !1482
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_search_and_enter(i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node*, i32, i32, i32, %struct.acpi_namespace_node**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_os_printf(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_warning(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_type_name(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node*, i32, %struct.acpi_walk_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1483 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1490, metadata !DIExpression()), !dbg !1497
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1503, metadata !DIExpression()), !dbg !1504
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1505, metadata !DIExpression()), !dbg !1506
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1507, metadata !DIExpression()), !dbg !1508
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1509, metadata !DIExpression()), !dbg !1513
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1515, metadata !DIExpression()), !dbg !1519
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1521, metadata !DIExpression()), !dbg !1525
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1530, metadata !DIExpression()), !dbg !1531
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1532, metadata !DIExpression()), !dbg !1533
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1534, metadata !DIExpression()), !dbg !1535
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1536, metadata !DIExpression()), !dbg !1537
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1538, metadata !DIExpression()), !dbg !1539
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1540, metadata !DIExpression()), !dbg !1541
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1542, metadata !DIExpression()), !dbg !1543
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1544, metadata !DIExpression()), !dbg !1545
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1546, metadata !DIExpression()), !dbg !1547
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1548, metadata !DIExpression()), !dbg !1549
  %0 = load i64, i64* %size.addr, align 8, !dbg !1550
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1551
  %or = or i32 %1, 256, !dbg !1552
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1553
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !1554
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1555

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1556
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1557
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1558

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1559
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1560
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1561
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !1562
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1539
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1563
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1564
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1565
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1566
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1567
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1568
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !1569
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1569
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1569
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1569
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !1569
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1570
  br label %kmalloc.exit, !dbg !1570

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1571
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1572
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1572
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1574

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1575
  br label %kmalloc_index.exit.i, !dbg !1575

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1576
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1578
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1579

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1580
  br label %kmalloc_index.exit.i, !dbg !1580

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1581
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1583
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1584

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1585
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1586
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1587

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1588
  br label %kmalloc_index.exit.i, !dbg !1588

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1589
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1591
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1592

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1593
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1594
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1595

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1596
  br label %kmalloc_index.exit.i, !dbg !1596

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1597
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1599
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1600

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1601
  br label %kmalloc_index.exit.i, !dbg !1601

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1602
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1604
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1605

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1606
  br label %kmalloc_index.exit.i, !dbg !1606

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1607
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1609
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1610

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1611
  br label %kmalloc_index.exit.i, !dbg !1611

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1612
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1614
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1615

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1616
  br label %kmalloc_index.exit.i, !dbg !1616

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1617
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1619
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1620

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1621
  br label %kmalloc_index.exit.i, !dbg !1621

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1622
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1624
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1625

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1626
  br label %kmalloc_index.exit.i, !dbg !1626

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1627
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1629
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1630

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1631
  br label %kmalloc_index.exit.i, !dbg !1631

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1632
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1634
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1635

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1636
  br label %kmalloc_index.exit.i, !dbg !1636

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1637
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1639
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1640

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1641
  br label %kmalloc_index.exit.i, !dbg !1641

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1642
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1644
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1645

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1646
  br label %kmalloc_index.exit.i, !dbg !1646

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1647
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1649
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1650

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1651
  br label %kmalloc_index.exit.i, !dbg !1651

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1652
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1654
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1655

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1656
  br label %kmalloc_index.exit.i, !dbg !1656

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1657
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1659
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1660

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1661
  br label %kmalloc_index.exit.i, !dbg !1661

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1662
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1664
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1665

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1666
  br label %kmalloc_index.exit.i, !dbg !1666

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1667
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1669
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1670

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1671
  br label %kmalloc_index.exit.i, !dbg !1671

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1672
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1674
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1675

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1676
  br label %kmalloc_index.exit.i, !dbg !1676

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1677
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1679
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1680

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1681
  br label %kmalloc_index.exit.i, !dbg !1681

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1682
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1684
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1685

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1686
  br label %kmalloc_index.exit.i, !dbg !1686

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1687
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1689
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1690

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1691
  br label %kmalloc_index.exit.i, !dbg !1691

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1692
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1694
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1695

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1696
  br label %kmalloc_index.exit.i, !dbg !1696

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1697
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1699
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1700

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1701
  br label %kmalloc_index.exit.i, !dbg !1701

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1702
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1704
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1705

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1706
  br label %kmalloc_index.exit.i, !dbg !1706

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1707
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1709
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1710

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1711
  br label %kmalloc_index.exit.i, !dbg !1711

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1712
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1714
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1715

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1716
  br label %kmalloc_index.exit.i, !dbg !1716

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !1717, !srcloc !1720
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #7, !dbg !1721, !srcloc !1724
  unreachable, !dbg !1725

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1726
  store i32 %45, i32* %index.i, align 4, !dbg !1727
  %46 = load i32, i32* %index.i, align 4, !dbg !1728
  %tobool.i = icmp ne i32 %46, 0, !dbg !1728
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1730

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1731
  br label %kmalloc.exit, !dbg !1731

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1732
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1733
  %and.i.i = and i32 %48, 17, !dbg !1733
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1733
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1733
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1733
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1733
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1735

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1736
  br label %kmalloc_type.exit.i, !dbg !1736

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1737
  %and2.i.i = and i32 %49, 1, !dbg !1738
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1737
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1737
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1737
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1739
  br label %kmalloc_type.exit.i, !dbg !1739

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1740
  %idxprom.i = zext i32 %51 to i64, !dbg !1741
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1741
  %52 = load i32, i32* %index.i, align 4, !dbg !1742
  %idxprom6.i = zext i32 %52 to i64, !dbg !1741
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1741
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1741
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1743
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1744
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1745
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1746
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !1747
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1747
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1747
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1747
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !1747
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1508
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1748
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1749
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1750
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1751
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !1752
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1753
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1754
  store i8* %62, i8** %retval.i, align 8, !dbg !1755
  br label %kmalloc.exit, !dbg !1755

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1756
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1757
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !1758
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1758
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1758
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1758
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !1758
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1759
  br label %kmalloc.exit, !dbg !1759

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1760
  ret i8* %65, !dbg !1761
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1762 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1766, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1769, metadata !DIExpression()), !dbg !1768
  %0 = load i64, i64* %__edi, align 8, !dbg !1768
  store i64 %0, i64* %__edi, align 8, !dbg !1768
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1770, metadata !DIExpression()), !dbg !1768
  %1 = load i64, i64* %__esi, align 8, !dbg !1768
  store i64 %1, i64* %__esi, align 8, !dbg !1768
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1771, metadata !DIExpression()), !dbg !1768
  %2 = load i64, i64* %__edx, align 8, !dbg !1768
  store i64 %2, i64* %__edx, align 8, !dbg !1768
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1772, metadata !DIExpression()), !dbg !1768
  %3 = load i64, i64* %__ecx, align 8, !dbg !1768
  store i64 %3, i64* %__ecx, align 8, !dbg !1768
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1773, metadata !DIExpression()), !dbg !1768
  %4 = load i64, i64* %__eax, align 8, !dbg !1768
  store i64 %4, i64* %__eax, align 8, !dbg !1768
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1768
  %6 = call i64 @llvm.read_register.i64(metadata !812), !dbg !1774
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !1774, !srcloc !1777
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1774
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1774
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1774
  call void @llvm.write_register.i64(metadata !812, i64 %asmresult1), !dbg !1774
  %8 = load i64, i64* %__eax, align 8, !dbg !1774
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1778, metadata !DIExpression()), !dbg !1780
  store i64 -1, i64* %__mask, align 8, !dbg !1780
  %9 = load i64, i64* %__mask, align 8, !dbg !1780
  store i64 %9, i64* %tmp, align 8, !dbg !1780
  %10 = load i64, i64* %tmp, align 8, !dbg !1780
  %and = and i64 %8, %10, !dbg !1774
  store i64 %and, i64* %__ret, align 8, !dbg !1774
  %11 = load i64, i64* %__ret, align 8, !dbg !1768
  store i64 %11, i64* %tmp2, align 8, !dbg !1781
  %12 = load i64, i64* %tmp2, align 8, !dbg !1768
  ret i64 %12, !dbg !1782
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !1783 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1785, metadata !DIExpression()), !dbg !1790
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1792, metadata !DIExpression()), !dbg !1793
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1794, metadata !DIExpression()), !dbg !1795
  %0 = load i64, i64* %size.addr, align 8, !dbg !1796
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1798
  br i1 %1, label %if.then, label %if.end447, !dbg !1799

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1800
  %tobool = icmp ne i64 %2, 0, !dbg !1800
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1803

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1804
  br label %return, !dbg !1804

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1805
  %cmp = icmp ult i64 %3, 4096, !dbg !1807
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1808

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1809
  br label %return, !dbg !1809

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub = sub i64 %4, 1, !dbg !1810
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1810
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1810

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub4 = sub i64 %6, 1, !dbg !1810
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1810
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1810

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub6 = sub i64 %8, 1, !dbg !1810
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1810
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1810

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1810

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub9 = sub i64 %9, 1, !dbg !1810
  %and = and i64 %sub9, -9223372036854775808, !dbg !1810
  %tobool10 = icmp ne i64 %and, 0, !dbg !1810
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1810

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1810

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub13 = sub i64 %10, 1, !dbg !1810
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1810
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1810
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1810

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1810

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub18 = sub i64 %11, 1, !dbg !1810
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1810
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1810
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1810

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1810

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub23 = sub i64 %12, 1, !dbg !1810
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1810
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1810
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1810

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1810

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub28 = sub i64 %13, 1, !dbg !1810
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1810
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1810
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1810

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1810

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub33 = sub i64 %14, 1, !dbg !1810
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1810
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1810
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1810

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1810

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub38 = sub i64 %15, 1, !dbg !1810
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1810
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1810
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1810

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1810

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub43 = sub i64 %16, 1, !dbg !1810
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1810
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1810
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1810

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1810

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub48 = sub i64 %17, 1, !dbg !1810
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1810
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1810
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1810

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1810

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub53 = sub i64 %18, 1, !dbg !1810
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1810
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1810
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1810

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1810

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub58 = sub i64 %19, 1, !dbg !1810
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1810
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1810
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1810

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1810

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub63 = sub i64 %20, 1, !dbg !1810
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1810
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1810
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1810

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1810

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub68 = sub i64 %21, 1, !dbg !1810
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1810
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1810
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1810

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1810

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub73 = sub i64 %22, 1, !dbg !1810
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1810
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1810
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1810

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1810

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub78 = sub i64 %23, 1, !dbg !1810
  %and79 = and i64 %sub78, 562949953421312, !dbg !1810
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1810
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1810

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1810

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub83 = sub i64 %24, 1, !dbg !1810
  %and84 = and i64 %sub83, 281474976710656, !dbg !1810
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1810
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1810

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1810

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub88 = sub i64 %25, 1, !dbg !1810
  %and89 = and i64 %sub88, 140737488355328, !dbg !1810
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1810
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1810

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1810

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub93 = sub i64 %26, 1, !dbg !1810
  %and94 = and i64 %sub93, 70368744177664, !dbg !1810
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1810
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1810

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1810

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub98 = sub i64 %27, 1, !dbg !1810
  %and99 = and i64 %sub98, 35184372088832, !dbg !1810
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1810
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1810

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1810

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub103 = sub i64 %28, 1, !dbg !1810
  %and104 = and i64 %sub103, 17592186044416, !dbg !1810
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1810
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1810

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1810

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub108 = sub i64 %29, 1, !dbg !1810
  %and109 = and i64 %sub108, 8796093022208, !dbg !1810
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1810
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1810

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1810

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub113 = sub i64 %30, 1, !dbg !1810
  %and114 = and i64 %sub113, 4398046511104, !dbg !1810
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1810
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1810

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1810

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub118 = sub i64 %31, 1, !dbg !1810
  %and119 = and i64 %sub118, 2199023255552, !dbg !1810
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1810
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1810

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1810

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub123 = sub i64 %32, 1, !dbg !1810
  %and124 = and i64 %sub123, 1099511627776, !dbg !1810
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1810
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1810

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1810

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub128 = sub i64 %33, 1, !dbg !1810
  %and129 = and i64 %sub128, 549755813888, !dbg !1810
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1810
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1810

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1810

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub133 = sub i64 %34, 1, !dbg !1810
  %and134 = and i64 %sub133, 274877906944, !dbg !1810
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1810
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1810

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1810

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub138 = sub i64 %35, 1, !dbg !1810
  %and139 = and i64 %sub138, 137438953472, !dbg !1810
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1810
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1810

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1810

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub143 = sub i64 %36, 1, !dbg !1810
  %and144 = and i64 %sub143, 68719476736, !dbg !1810
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1810
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1810

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1810

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub148 = sub i64 %37, 1, !dbg !1810
  %and149 = and i64 %sub148, 34359738368, !dbg !1810
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1810
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1810

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1810

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub153 = sub i64 %38, 1, !dbg !1810
  %and154 = and i64 %sub153, 17179869184, !dbg !1810
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1810
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1810

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1810

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub158 = sub i64 %39, 1, !dbg !1810
  %and159 = and i64 %sub158, 8589934592, !dbg !1810
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1810
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1810

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1810

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub163 = sub i64 %40, 1, !dbg !1810
  %and164 = and i64 %sub163, 4294967296, !dbg !1810
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1810
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1810

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1810

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub168 = sub i64 %41, 1, !dbg !1810
  %and169 = and i64 %sub168, 2147483648, !dbg !1810
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1810
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1810

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1810

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub173 = sub i64 %42, 1, !dbg !1810
  %and174 = and i64 %sub173, 1073741824, !dbg !1810
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1810
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1810

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1810

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub178 = sub i64 %43, 1, !dbg !1810
  %and179 = and i64 %sub178, 536870912, !dbg !1810
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1810
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1810

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1810

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub183 = sub i64 %44, 1, !dbg !1810
  %and184 = and i64 %sub183, 268435456, !dbg !1810
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1810
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1810

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1810

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub188 = sub i64 %45, 1, !dbg !1810
  %and189 = and i64 %sub188, 134217728, !dbg !1810
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1810
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1810

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1810

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub193 = sub i64 %46, 1, !dbg !1810
  %and194 = and i64 %sub193, 67108864, !dbg !1810
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1810
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1810

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1810

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub198 = sub i64 %47, 1, !dbg !1810
  %and199 = and i64 %sub198, 33554432, !dbg !1810
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1810
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1810

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1810

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub203 = sub i64 %48, 1, !dbg !1810
  %and204 = and i64 %sub203, 16777216, !dbg !1810
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1810
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1810

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1810

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub208 = sub i64 %49, 1, !dbg !1810
  %and209 = and i64 %sub208, 8388608, !dbg !1810
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1810
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1810

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1810

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub213 = sub i64 %50, 1, !dbg !1810
  %and214 = and i64 %sub213, 4194304, !dbg !1810
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1810
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1810

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1810

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub218 = sub i64 %51, 1, !dbg !1810
  %and219 = and i64 %sub218, 2097152, !dbg !1810
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1810
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1810

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1810

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub223 = sub i64 %52, 1, !dbg !1810
  %and224 = and i64 %sub223, 1048576, !dbg !1810
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1810
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1810

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1810

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub228 = sub i64 %53, 1, !dbg !1810
  %and229 = and i64 %sub228, 524288, !dbg !1810
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1810
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1810

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1810

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub233 = sub i64 %54, 1, !dbg !1810
  %and234 = and i64 %sub233, 262144, !dbg !1810
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1810
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1810

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1810

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub238 = sub i64 %55, 1, !dbg !1810
  %and239 = and i64 %sub238, 131072, !dbg !1810
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1810
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1810

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1810

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub243 = sub i64 %56, 1, !dbg !1810
  %and244 = and i64 %sub243, 65536, !dbg !1810
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1810
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1810

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1810

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub248 = sub i64 %57, 1, !dbg !1810
  %and249 = and i64 %sub248, 32768, !dbg !1810
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1810
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1810

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1810

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub253 = sub i64 %58, 1, !dbg !1810
  %and254 = and i64 %sub253, 16384, !dbg !1810
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1810
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1810

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1810

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub258 = sub i64 %59, 1, !dbg !1810
  %and259 = and i64 %sub258, 8192, !dbg !1810
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1810
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1810

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1810

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub263 = sub i64 %60, 1, !dbg !1810
  %and264 = and i64 %sub263, 4096, !dbg !1810
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1810
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1810

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1810

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub268 = sub i64 %61, 1, !dbg !1810
  %and269 = and i64 %sub268, 2048, !dbg !1810
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1810
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1810

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1810

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub273 = sub i64 %62, 1, !dbg !1810
  %and274 = and i64 %sub273, 1024, !dbg !1810
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1810
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1810

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1810

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub278 = sub i64 %63, 1, !dbg !1810
  %and279 = and i64 %sub278, 512, !dbg !1810
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1810
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1810

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1810

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub283 = sub i64 %64, 1, !dbg !1810
  %and284 = and i64 %sub283, 256, !dbg !1810
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1810
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1810

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1810

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub288 = sub i64 %65, 1, !dbg !1810
  %and289 = and i64 %sub288, 128, !dbg !1810
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1810
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1810

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1810

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub293 = sub i64 %66, 1, !dbg !1810
  %and294 = and i64 %sub293, 64, !dbg !1810
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1810
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1810

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1810

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub298 = sub i64 %67, 1, !dbg !1810
  %and299 = and i64 %sub298, 32, !dbg !1810
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1810
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1810

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1810

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub303 = sub i64 %68, 1, !dbg !1810
  %and304 = and i64 %sub303, 16, !dbg !1810
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1810
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1810

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1810

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub308 = sub i64 %69, 1, !dbg !1810
  %and309 = and i64 %sub308, 8, !dbg !1810
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1810
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1810

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1810

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub313 = sub i64 %70, 1, !dbg !1810
  %and314 = and i64 %sub313, 4, !dbg !1810
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1810
  %71 = zext i1 %tobool315 to i64, !dbg !1810
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1810
  br label %cond.end, !dbg !1810

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1810
  br label %cond.end317, !dbg !1810

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1810
  br label %cond.end319, !dbg !1810

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1810
  br label %cond.end321, !dbg !1810

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1810
  br label %cond.end323, !dbg !1810

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1810
  br label %cond.end325, !dbg !1810

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1810
  br label %cond.end327, !dbg !1810

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1810
  br label %cond.end329, !dbg !1810

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1810
  br label %cond.end331, !dbg !1810

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1810
  br label %cond.end333, !dbg !1810

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1810
  br label %cond.end335, !dbg !1810

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1810
  br label %cond.end337, !dbg !1810

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1810
  br label %cond.end339, !dbg !1810

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1810
  br label %cond.end341, !dbg !1810

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1810
  br label %cond.end343, !dbg !1810

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1810
  br label %cond.end345, !dbg !1810

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1810
  br label %cond.end347, !dbg !1810

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1810
  br label %cond.end349, !dbg !1810

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1810
  br label %cond.end351, !dbg !1810

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1810
  br label %cond.end353, !dbg !1810

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1810
  br label %cond.end355, !dbg !1810

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1810
  br label %cond.end357, !dbg !1810

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1810
  br label %cond.end359, !dbg !1810

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1810
  br label %cond.end361, !dbg !1810

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1810
  br label %cond.end363, !dbg !1810

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1810
  br label %cond.end365, !dbg !1810

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1810
  br label %cond.end367, !dbg !1810

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1810
  br label %cond.end369, !dbg !1810

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1810
  br label %cond.end371, !dbg !1810

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1810
  br label %cond.end373, !dbg !1810

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1810
  br label %cond.end375, !dbg !1810

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1810
  br label %cond.end377, !dbg !1810

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1810
  br label %cond.end379, !dbg !1810

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1810
  br label %cond.end381, !dbg !1810

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1810
  br label %cond.end383, !dbg !1810

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1810
  br label %cond.end385, !dbg !1810

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1810
  br label %cond.end387, !dbg !1810

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1810
  br label %cond.end389, !dbg !1810

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1810
  br label %cond.end391, !dbg !1810

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1810
  br label %cond.end393, !dbg !1810

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1810
  br label %cond.end395, !dbg !1810

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1810
  br label %cond.end397, !dbg !1810

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1810
  br label %cond.end399, !dbg !1810

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1810
  br label %cond.end401, !dbg !1810

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1810
  br label %cond.end403, !dbg !1810

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1810
  br label %cond.end405, !dbg !1810

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1810
  br label %cond.end407, !dbg !1810

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1810
  br label %cond.end409, !dbg !1810

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1810
  br label %cond.end411, !dbg !1810

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1810
  br label %cond.end413, !dbg !1810

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1810
  br label %cond.end415, !dbg !1810

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1810
  br label %cond.end417, !dbg !1810

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1810
  br label %cond.end419, !dbg !1810

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1810
  br label %cond.end421, !dbg !1810

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1810
  br label %cond.end423, !dbg !1810

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1810
  br label %cond.end425, !dbg !1810

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1810
  br label %cond.end427, !dbg !1810

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1810
  br label %cond.end429, !dbg !1810

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1810
  br label %cond.end431, !dbg !1810

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1810
  br label %cond.end433, !dbg !1810

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1810
  br label %cond.end435, !dbg !1810

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1810
  br label %cond.end437, !dbg !1810

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1810
  br label %cond.end440, !dbg !1810

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1810

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1810
  br label %cond.end444, !dbg !1810

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1810
  %sub443 = sub i64 %72, 1, !dbg !1810
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !1810
  br label %cond.end444, !dbg !1810

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1810
  %sub446 = sub i32 %cond445, 12, !dbg !1811
  %add = add i32 %sub446, 1, !dbg !1812
  store i32 %add, i32* %retval, align 4, !dbg !1813
  br label %return, !dbg !1813

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1814
  %dec = add i64 %73, -1, !dbg !1814
  store i64 %dec, i64* %size.addr, align 8, !dbg !1814
  %74 = load i64, i64* %size.addr, align 8, !dbg !1815
  %shr = lshr i64 %74, 12, !dbg !1815
  store i64 %shr, i64* %size.addr, align 8, !dbg !1815
  %75 = load i64, i64* %size.addr, align 8, !dbg !1816
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1793
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1817
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1818
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !1817, !srcloc !1819
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1817
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1820
  %add.i = add i32 %79, 1, !dbg !1821
  store i32 %add.i, i32* %retval, align 4, !dbg !1822
  br label %return, !dbg !1822

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1823
  ret i32 %80, !dbg !1823
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !1824 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1785, metadata !DIExpression()), !dbg !1828
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1792, metadata !DIExpression()), !dbg !1830
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1831, metadata !DIExpression()), !dbg !1832
  %0 = load i64, i64* %n.addr, align 8, !dbg !1833
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1830
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1834
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1835
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !1834, !srcloc !1819
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1834
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1836
  %add.i = add i32 %4, 1, !dbg !1837
  %sub = sub i32 %add.i, 1, !dbg !1838
  ret i32 %sub, !dbg !1839
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1840 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1846, metadata !DIExpression()), !dbg !1847
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1848, metadata !DIExpression()), !dbg !1849
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1850, metadata !DIExpression()), !dbg !1851
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1852, metadata !DIExpression()), !dbg !1853
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1854
  ret i8* %0, !dbg !1855
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
!llvm.named.register.rsp = !{!812}
!llvm.module.flags = !{!813, !814, !815, !816}
!llvm.ident = !{!817}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 19, type: !810, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !809, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsaccess.c", directory: "/home/lizy2001/genbc/linux")
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
!19 = !{!20, !26, !30, !31, !32, !35, !22, !36, !56, !82, !98, !806, !808}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !21, line: 421, baseType: !22)
!21 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !23, line: 21, baseType: !24)
!23 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !25, line: 27, baseType: !7)
!25 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !21, line: 127, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !23, line: 23, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !25, line: 31, baseType: !29)
!29 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !23, line: 17, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !25, line: 21, baseType: !34)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !38, line: 432, size: 1600, elements: !39)
!38 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!39 = !{!40, !45, !804, !805}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !37, file: !38, line: 433, baseType: !41, size: 128)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !38, line: 427, size: 128, elements: !42)
!42 = !{!43, !44}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !41, file: !38, line: 428, baseType: !31, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !41, file: !38, line: 429, baseType: !32, size: 8, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !37, file: !38, line: 434, baseType: !46, size: 576)
!46 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !38, line: 367, size: 576, elements: !47)
!47 = !{!48, !60, !73, !85, !119, !133, !142, !455, !472, !487, !500, !578, !590, !604, !614, !632, !654, !673, !692, !711, !724, !750, !767, !780, !794, !803}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !46, file: !38, line: 368, baseType: !49, size: 128)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !38, line: 73, size: 128, elements: !50)
!50 = !{!51, !53, !54, !55, !59}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !49, file: !38, line: 74, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !49, file: !38, line: 74, baseType: !32, size: 8, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !49, file: !38, line: 74, baseType: !32, size: 8, offset: 72)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !49, file: !38, line: 74, baseType: !56, size: 16, offset: 80)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !23, line: 19, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !25, line: 24, baseType: !58)
!58 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !49, file: !38, line: 74, baseType: !32, size: 8, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !46, file: !38, line: 369, baseType: !61, size: 192)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !38, line: 76, size: 192, elements: !62)
!62 = !{!63, !64, !65, !66, !67, !68, !72}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !61, file: !38, line: 77, baseType: !52, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !61, file: !38, line: 77, baseType: !32, size: 8, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !61, file: !38, line: 77, baseType: !32, size: 8, offset: 72)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !61, file: !38, line: 77, baseType: !56, size: 16, offset: 80)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !61, file: !38, line: 77, baseType: !32, size: 8, offset: 96)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !61, file: !38, line: 77, baseType: !69, size: 24, offset: 104)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 24, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 3)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !61, file: !38, line: 78, baseType: !27, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !46, file: !38, line: 370, baseType: !74, size: 256)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !38, line: 93, size: 256, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !81, !84}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !74, file: !38, line: 94, baseType: !52, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !74, file: !38, line: 94, baseType: !32, size: 8, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !74, file: !38, line: 94, baseType: !32, size: 8, offset: 72)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !74, file: !38, line: 94, baseType: !56, size: 16, offset: 80)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !74, file: !38, line: 94, baseType: !32, size: 8, offset: 96)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !74, file: !38, line: 94, baseType: !82, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !74, file: !38, line: 94, baseType: !22, size: 32, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !46, file: !38, line: 371, baseType: !86, size: 384)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !38, line: 97, size: 384, elements: !87)
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !86, file: !38, line: 98, baseType: !52, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !86, file: !38, line: 98, baseType: !32, size: 8, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !86, file: !38, line: 98, baseType: !32, size: 8, offset: 72)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !86, file: !38, line: 98, baseType: !56, size: 16, offset: 80)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !86, file: !38, line: 98, baseType: !32, size: 8, offset: 96)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !86, file: !38, line: 98, baseType: !35, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !86, file: !38, line: 98, baseType: !22, size: 32, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !86, file: !38, line: 99, baseType: !22, size: 32, offset: 224)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !86, file: !38, line: 100, baseType: !35, size: 64, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !86, file: !38, line: 101, baseType: !98, size: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !100)
!100 = !{!101, !102, !103, !104, !105, !114, !115, !116, !117}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !99, file: !6, line: 134, baseType: !52, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !99, file: !6, line: 135, baseType: !32, size: 8, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !99, file: !6, line: 136, baseType: !32, size: 8, offset: 72)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !99, file: !6, line: 137, baseType: !56, size: 16, offset: 80)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !99, file: !6, line: 138, baseType: !106, size: 32, offset: 96)
!106 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !107, line: 327, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !106, file: !107, line: 328, baseType: !22, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !106, file: !107, line: 329, baseType: !111, size: 32)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 32, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 4)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !99, file: !6, line: 139, baseType: !98, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !99, file: !6, line: 140, baseType: !98, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !99, file: !6, line: 141, baseType: !98, size: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !99, file: !6, line: 142, baseType: !118, size: 16, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !21, line: 445, baseType: !56)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !46, file: !38, line: 372, baseType: !120, size: 384)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !38, line: 104, size: 384, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127, !128, !130, !131, !132}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !120, file: !38, line: 105, baseType: !52, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !120, file: !38, line: 105, baseType: !32, size: 8, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !120, file: !38, line: 105, baseType: !32, size: 8, offset: 72)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !120, file: !38, line: 105, baseType: !56, size: 16, offset: 80)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !120, file: !38, line: 105, baseType: !32, size: 8, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !120, file: !38, line: 105, baseType: !98, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !120, file: !38, line: 106, baseType: !129, size: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !120, file: !38, line: 107, baseType: !35, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !120, file: !38, line: 108, baseType: !22, size: 32, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !120, file: !38, line: 109, baseType: !22, size: 32, offset: 352)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !46, file: !38, line: 373, baseType: !134, size: 192)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !38, line: 118, size: 192, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !134, file: !38, line: 119, baseType: !52, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !134, file: !38, line: 119, baseType: !32, size: 8, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !134, file: !38, line: 119, baseType: !32, size: 8, offset: 72)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !134, file: !38, line: 119, baseType: !56, size: 16, offset: 80)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !38, line: 119, baseType: !32, size: 8, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !134, file: !38, line: 119, baseType: !31, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !46, file: !38, line: 374, baseType: !143, size: 448)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !38, line: 143, size: 448, elements: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !452, !453, !454}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !143, file: !38, line: 144, baseType: !52, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !143, file: !38, line: 144, baseType: !32, size: 8, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !38, line: 144, baseType: !32, size: 8, offset: 72)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !143, file: !38, line: 144, baseType: !56, size: 16, offset: 80)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !143, file: !38, line: 144, baseType: !32, size: 8, offset: 96)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !143, file: !38, line: 144, baseType: !32, size: 8, offset: 104)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !143, file: !38, line: 145, baseType: !32, size: 8, offset: 112)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !143, file: !38, line: 146, baseType: !32, size: 8, offset: 120)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !143, file: !38, line: 147, baseType: !52, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !143, file: !38, line: 148, baseType: !52, size: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !143, file: !38, line: 149, baseType: !35, size: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !143, file: !38, line: 153, baseType: !157, size: 64, offset: 320)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !143, file: !38, line: 150, size: 64, elements: !158)
!158 = !{!159, !451}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !157, file: !38, line: 151, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!20, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !166, line: 37, size: 9024, elements: !167)
!166 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !397, !398, !399, !400, !401, !405, !407, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !434, !435, !436, !437, !438, !439, !440, !441, !443, !449}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !165, file: !166, line: 38, baseType: !164, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !165, file: !166, line: 39, baseType: !32, size: 8, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !165, file: !166, line: 40, baseType: !32, size: 8, offset: 72)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !165, file: !166, line: 41, baseType: !56, size: 16, offset: 80)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !165, file: !166, line: 42, baseType: !32, size: 8, offset: 96)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !165, file: !166, line: 43, baseType: !32, size: 8, offset: 104)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !165, file: !166, line: 44, baseType: !32, size: 8, offset: 112)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !165, file: !166, line: 45, baseType: !118, size: 16, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !165, file: !166, line: 46, baseType: !32, size: 8, offset: 144)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !165, file: !166, line: 47, baseType: !32, size: 8, offset: 152)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !165, file: !166, line: 48, baseType: !32, size: 8, offset: 160)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !165, file: !166, line: 49, baseType: !32, size: 8, offset: 168)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !165, file: !166, line: 50, baseType: !32, size: 8, offset: 176)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !165, file: !166, line: 51, baseType: !32, size: 8, offset: 184)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !165, file: !166, line: 52, baseType: !32, size: 8, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !165, file: !166, line: 53, baseType: !32, size: 8, offset: 200)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !165, file: !166, line: 54, baseType: !35, size: 64, offset: 256)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !165, file: !166, line: 55, baseType: !22, size: 32, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !165, file: !166, line: 56, baseType: !22, size: 32, offset: 352)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !165, file: !166, line: 57, baseType: !22, size: 32, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !165, file: !166, line: 58, baseType: !22, size: 32, offset: 416)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !165, file: !166, line: 60, baseType: !190, size: 640, offset: 448)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 893, size: 640, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197, !278, !279, !395, !396}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !190, file: !6, line: 894, baseType: !35, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !190, file: !6, line: 895, baseType: !35, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !190, file: !6, line: 896, baseType: !35, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !190, file: !6, line: 897, baseType: !35, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !190, file: !6, line: 898, baseType: !35, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !190, file: !6, line: 899, baseType: !198, size: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 875, size: 1600, elements: !200)
!200 = !{!201, !221, !237}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !199, file: !6, line: 876, baseType: !202, size: 448)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 828, size: 448, elements: !203)
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !220}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !202, file: !6, line: 829, baseType: !198, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !202, file: !6, line: 829, baseType: !32, size: 8, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !202, file: !6, line: 829, baseType: !32, size: 8, offset: 72)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !202, file: !6, line: 829, baseType: !56, size: 16, offset: 80)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !202, file: !6, line: 829, baseType: !35, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !202, file: !6, line: 829, baseType: !198, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !202, file: !6, line: 829, baseType: !98, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !202, file: !6, line: 829, baseType: !212, size: 64, offset: 320)
!212 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 716, size: 64, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !212, file: !6, line: 717, baseType: !27, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !212, file: !6, line: 718, baseType: !22, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !212, file: !6, line: 719, baseType: !82, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !212, file: !6, line: 720, baseType: !35, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !212, file: !6, line: 721, baseType: !82, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !212, file: !6, line: 722, baseType: !198, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !202, file: !6, line: 829, baseType: !32, size: 8, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !199, file: !6, line: 877, baseType: !222, size: 640)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 835, size: 640, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !222, file: !6, line: 836, baseType: !198, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !222, file: !6, line: 836, baseType: !32, size: 8, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !222, file: !6, line: 836, baseType: !32, size: 8, offset: 72)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !222, file: !6, line: 836, baseType: !56, size: 16, offset: 80)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !222, file: !6, line: 836, baseType: !35, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !6, line: 836, baseType: !198, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !222, file: !6, line: 836, baseType: !98, size: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !222, file: !6, line: 836, baseType: !212, size: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !222, file: !6, line: 836, baseType: !32, size: 8, offset: 384)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !222, file: !6, line: 836, baseType: !82, size: 64, offset: 448)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !222, file: !6, line: 837, baseType: !35, size: 64, offset: 512)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !222, file: !6, line: 838, baseType: !22, size: 32, offset: 576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !222, file: !6, line: 839, baseType: !22, size: 32, offset: 608)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !199, file: !6, line: 878, baseType: !238, size: 1600)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 846, size: 1600, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !238, file: !6, line: 847, baseType: !198, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !238, file: !6, line: 847, baseType: !32, size: 8, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !238, file: !6, line: 847, baseType: !32, size: 8, offset: 72)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !238, file: !6, line: 847, baseType: !56, size: 16, offset: 80)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !238, file: !6, line: 847, baseType: !35, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !238, file: !6, line: 847, baseType: !198, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !238, file: !6, line: 847, baseType: !98, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !238, file: !6, line: 847, baseType: !212, size: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !238, file: !6, line: 847, baseType: !32, size: 8, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !238, file: !6, line: 847, baseType: !198, size: 64, offset: 448)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !238, file: !6, line: 848, baseType: !198, size: 64, offset: 512)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !238, file: !6, line: 849, baseType: !82, size: 64, offset: 576)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !238, file: !6, line: 850, baseType: !32, size: 8, offset: 640)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !238, file: !6, line: 851, baseType: !82, size: 64, offset: 704)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !238, file: !6, line: 852, baseType: !82, size: 64, offset: 768)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !238, file: !6, line: 853, baseType: !82, size: 64, offset: 832)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !238, file: !6, line: 854, baseType: !111, size: 32, offset: 896)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !238, file: !6, line: 855, baseType: !22, size: 32, offset: 928)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !238, file: !6, line: 856, baseType: !22, size: 32, offset: 960)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !238, file: !6, line: 857, baseType: !22, size: 32, offset: 992)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !238, file: !6, line: 858, baseType: !22, size: 32, offset: 1024)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !238, file: !6, line: 859, baseType: !22, size: 32, offset: 1056)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !238, file: !6, line: 860, baseType: !22, size: 32, offset: 1088)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !238, file: !6, line: 861, baseType: !22, size: 32, offset: 1120)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !238, file: !6, line: 862, baseType: !22, size: 32, offset: 1152)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !238, file: !6, line: 863, baseType: !22, size: 32, offset: 1184)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !238, file: !6, line: 864, baseType: !22, size: 32, offset: 1216)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !238, file: !6, line: 865, baseType: !22, size: 32, offset: 1248)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !238, file: !6, line: 866, baseType: !22, size: 32, offset: 1280)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !238, file: !6, line: 867, baseType: !22, size: 32, offset: 1312)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !238, file: !6, line: 868, baseType: !56, size: 16, offset: 1344)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !238, file: !6, line: 869, baseType: !32, size: 8, offset: 1360)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !238, file: !6, line: 870, baseType: !32, size: 8, offset: 1368)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !238, file: !6, line: 871, baseType: !32, size: 8, offset: 1376)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !238, file: !6, line: 872, baseType: !275, size: 160, offset: 1384)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 160, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 20)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !190, file: !6, line: 900, baseType: !98, size: 64, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !190, file: !6, line: 901, baseType: !280, size: 64, offset: 448)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 663, size: 640, elements: !282)
!282 = !{!283, !291, !304, !313, !322, !335, !349, !361, !373}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !281, file: !6, line: 664, baseType: !284, size: 128)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 567, size: 128, elements: !285)
!285 = !{!286, !287, !288, !289, !290}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !284, file: !6, line: 568, baseType: !31, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !284, file: !6, line: 568, baseType: !32, size: 8, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !284, file: !6, line: 568, baseType: !32, size: 8, offset: 72)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !284, file: !6, line: 568, baseType: !56, size: 16, offset: 80)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !284, file: !6, line: 568, baseType: !56, size: 16, offset: 96)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !281, file: !6, line: 665, baseType: !292, size: 384)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 593, size: 384, elements: !293)
!293 = !{!294, !295, !296, !297, !298, !299, !300, !301, !302, !303}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !292, file: !6, line: 594, baseType: !31, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !292, file: !6, line: 594, baseType: !32, size: 8, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !292, file: !6, line: 594, baseType: !32, size: 8, offset: 72)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !292, file: !6, line: 594, baseType: !56, size: 16, offset: 80)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !292, file: !6, line: 594, baseType: !56, size: 16, offset: 96)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !292, file: !6, line: 594, baseType: !56, size: 16, offset: 112)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !292, file: !6, line: 595, baseType: !198, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !292, file: !6, line: 596, baseType: !35, size: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !292, file: !6, line: 597, baseType: !35, size: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !292, file: !6, line: 598, baseType: !27, size: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !281, file: !6, line: 666, baseType: !305, size: 192)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 573, size: 192, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !6, line: 574, baseType: !31, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !305, file: !6, line: 574, baseType: !32, size: 8, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !6, line: 574, baseType: !32, size: 8, offset: 72)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !305, file: !6, line: 574, baseType: !56, size: 16, offset: 80)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !305, file: !6, line: 574, baseType: !56, size: 16, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !305, file: !6, line: 574, baseType: !52, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !281, file: !6, line: 667, baseType: !314, size: 192)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 604, size: 192, elements: !315)
!315 = !{!316, !317, !318, !319, !320, !321}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !6, line: 605, baseType: !31, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !314, file: !6, line: 605, baseType: !32, size: 8, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !314, file: !6, line: 605, baseType: !32, size: 8, offset: 72)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !314, file: !6, line: 605, baseType: !56, size: 16, offset: 80)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !314, file: !6, line: 605, baseType: !56, size: 16, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !314, file: !6, line: 605, baseType: !98, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !281, file: !6, line: 668, baseType: !323, size: 448)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 608, size: 448, elements: !324)
!324 = !{!325, !326, !327, !328, !329, !330, !331, !332, !333, !334}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !323, file: !6, line: 609, baseType: !31, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !323, file: !6, line: 609, baseType: !32, size: 8, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !323, file: !6, line: 609, baseType: !32, size: 8, offset: 72)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !323, file: !6, line: 609, baseType: !56, size: 16, offset: 80)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !323, file: !6, line: 609, baseType: !56, size: 16, offset: 96)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !323, file: !6, line: 609, baseType: !22, size: 32, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !323, file: !6, line: 610, baseType: !198, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !323, file: !6, line: 611, baseType: !35, size: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !323, file: !6, line: 612, baseType: !35, size: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !323, file: !6, line: 613, baseType: !22, size: 32, offset: 384)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !281, file: !6, line: 669, baseType: !336, size: 512)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 580, size: 512, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !336, file: !6, line: 581, baseType: !31, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !336, file: !6, line: 581, baseType: !32, size: 8, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !6, line: 581, baseType: !32, size: 8, offset: 72)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !336, file: !6, line: 581, baseType: !56, size: 16, offset: 80)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !336, file: !6, line: 581, baseType: !56, size: 16, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !336, file: !6, line: 581, baseType: !22, size: 32, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !336, file: !6, line: 582, baseType: !52, size: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !336, file: !6, line: 583, baseType: !52, size: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !336, file: !6, line: 584, baseType: !164, size: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !336, file: !6, line: 585, baseType: !31, size: 64, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !336, file: !6, line: 586, baseType: !22, size: 32, offset: 448)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !281, file: !6, line: 670, baseType: !350, size: 320)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 620, size: 320, elements: !351)
!351 = !{!352, !353, !354, !355, !356, !357, !358, !359, !360}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !350, file: !6, line: 621, baseType: !31, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !350, file: !6, line: 621, baseType: !32, size: 8, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !350, file: !6, line: 621, baseType: !32, size: 8, offset: 72)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !350, file: !6, line: 621, baseType: !56, size: 16, offset: 80)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !350, file: !6, line: 621, baseType: !56, size: 16, offset: 96)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !350, file: !6, line: 621, baseType: !32, size: 8, offset: 112)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !350, file: !6, line: 622, baseType: !164, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !350, file: !6, line: 623, baseType: !52, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !350, file: !6, line: 624, baseType: !27, size: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !281, file: !6, line: 671, baseType: !362, size: 640)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 631, size: 640, elements: !363)
!363 = !{!364, !365, !366, !367, !368, !369}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !362, file: !6, line: 632, baseType: !31, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !362, file: !6, line: 632, baseType: !32, size: 8, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !362, file: !6, line: 632, baseType: !32, size: 8, offset: 72)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !362, file: !6, line: 632, baseType: !56, size: 16, offset: 80)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !362, file: !6, line: 632, baseType: !56, size: 16, offset: 96)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !362, file: !6, line: 633, baseType: !370, size: 512, offset: 128)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 512, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 8)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !281, file: !6, line: 672, baseType: !374, size: 320)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 654, size: 320, elements: !375)
!375 = !{!376, !377, !378, !379, !380, !381, !382, !383, !384}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !374, file: !6, line: 655, baseType: !31, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !374, file: !6, line: 655, baseType: !32, size: 8, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !374, file: !6, line: 655, baseType: !32, size: 8, offset: 72)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !374, file: !6, line: 655, baseType: !56, size: 16, offset: 80)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !374, file: !6, line: 655, baseType: !56, size: 16, offset: 96)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !374, file: !6, line: 655, baseType: !32, size: 8, offset: 112)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !374, file: !6, line: 656, baseType: !98, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !374, file: !6, line: 657, baseType: !52, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !374, file: !6, line: 658, baseType: !385, size: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 645, size: 128, elements: !387)
!387 = !{!388, !394}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !386, file: !6, line: 646, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !21, line: 1052, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !393, !22, !31}
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !21, line: 424, baseType: !31)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !386, file: !6, line: 647, baseType: !31, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !190, file: !6, line: 902, baseType: !198, size: 64, offset: 512)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !190, file: !6, line: 903, baseType: !22, size: 32, offset: 576)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !165, file: !166, line: 61, baseType: !22, size: 32, offset: 1088)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !165, file: !166, line: 62, baseType: !22, size: 32, offset: 1120)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !165, file: !166, line: 63, baseType: !56, size: 16, offset: 1152)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !165, file: !166, line: 64, baseType: !32, size: 8, offset: 1168)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !165, file: !166, line: 66, baseType: !402, size: 2688, offset: 1216)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 2688, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 7)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !165, file: !166, line: 67, baseType: !406, size: 3072, offset: 3904)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 3072, elements: !371)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !165, file: !166, line: 68, baseType: !408, size: 576, offset: 6976)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 576, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 9)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !165, file: !166, line: 69, baseType: !129, size: 64, offset: 7552)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !165, file: !166, line: 71, baseType: !35, size: 64, offset: 7616)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !165, file: !166, line: 72, baseType: !129, size: 64, offset: 7680)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !165, file: !166, line: 73, baseType: !280, size: 64, offset: 7744)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !165, file: !166, line: 74, baseType: !98, size: 64, offset: 7808)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !165, file: !166, line: 75, baseType: !52, size: 64, offset: 7872)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !165, file: !166, line: 76, baseType: !98, size: 64, offset: 7936)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !165, file: !166, line: 77, baseType: !198, size: 64, offset: 8000)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !165, file: !166, line: 78, baseType: !52, size: 64, offset: 8064)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !165, file: !166, line: 79, baseType: !98, size: 64, offset: 8128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !165, file: !166, line: 80, baseType: !82, size: 64, offset: 8192)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !165, file: !166, line: 81, baseType: !198, size: 64, offset: 8256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !165, file: !166, line: 82, baseType: !424, size: 64, offset: 8320)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 702, size: 128, elements: !427)
!427 = !{!428, !429, !430, !431, !432, !433}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !426, file: !6, line: 706, baseType: !22, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !426, file: !6, line: 707, baseType: !22, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !426, file: !6, line: 708, baseType: !56, size: 16, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !426, file: !6, line: 709, baseType: !32, size: 8, offset: 80)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !426, file: !6, line: 710, baseType: !32, size: 8, offset: 88)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !426, file: !6, line: 711, baseType: !32, size: 8, offset: 96)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !165, file: !166, line: 83, baseType: !198, size: 64, offset: 8384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !165, file: !166, line: 84, baseType: !52, size: 64, offset: 8448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !165, file: !166, line: 85, baseType: !280, size: 64, offset: 8512)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !165, file: !166, line: 86, baseType: !52, size: 64, offset: 8576)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !165, file: !166, line: 87, baseType: !280, size: 64, offset: 8640)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !165, file: !166, line: 88, baseType: !198, size: 64, offset: 8704)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !165, file: !166, line: 89, baseType: !198, size: 64, offset: 8768)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !165, file: !166, line: 90, baseType: !442, size: 64, offset: 8832)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !165, file: !166, line: 91, baseType: !444, size: 64, offset: 8896)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 637, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!20, !164, !448}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !165, file: !166, line: 92, baseType: !450, size: 64, offset: 8960)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 641, baseType: !161)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !157, file: !38, line: 152, baseType: !52, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !143, file: !38, line: 155, baseType: !22, size: 32, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !143, file: !38, line: 156, baseType: !118, size: 16, offset: 416)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !143, file: !38, line: 157, baseType: !32, size: 8, offset: 432)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !46, file: !38, line: 375, baseType: !456, size: 576)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !38, line: 122, size: 576, elements: !457)
!457 = !{!458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !456, file: !38, line: 123, baseType: !52, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !456, file: !38, line: 123, baseType: !32, size: 8, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !456, file: !38, line: 123, baseType: !32, size: 8, offset: 72)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !456, file: !38, line: 123, baseType: !56, size: 16, offset: 80)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !456, file: !38, line: 123, baseType: !32, size: 8, offset: 96)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !456, file: !38, line: 123, baseType: !32, size: 8, offset: 104)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !456, file: !38, line: 124, baseType: !56, size: 16, offset: 112)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !456, file: !38, line: 125, baseType: !31, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !456, file: !38, line: 126, baseType: !27, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !456, file: !38, line: 127, baseType: !442, size: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !456, file: !38, line: 128, baseType: !52, size: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !456, file: !38, line: 129, baseType: !52, size: 64, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !456, file: !38, line: 130, baseType: !98, size: 64, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !456, file: !38, line: 131, baseType: !32, size: 8, offset: 512)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !46, file: !38, line: 376, baseType: !473, size: 448)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !38, line: 134, size: 448, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !486}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !473, file: !38, line: 135, baseType: !52, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !473, file: !38, line: 135, baseType: !32, size: 8, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !473, file: !38, line: 135, baseType: !32, size: 8, offset: 72)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !473, file: !38, line: 135, baseType: !56, size: 16, offset: 80)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !473, file: !38, line: 135, baseType: !32, size: 8, offset: 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !473, file: !38, line: 135, baseType: !32, size: 8, offset: 104)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !473, file: !38, line: 136, baseType: !98, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !473, file: !38, line: 137, baseType: !52, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !473, file: !38, line: 138, baseType: !52, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !473, file: !38, line: 139, baseType: !485, size: 64, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !21, line: 129, baseType: !27)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !473, file: !38, line: 140, baseType: !22, size: 32, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !46, file: !38, line: 377, baseType: !488, size: 320)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !38, line: 184, size: 320, elements: !489)
!489 = !{!490, !491, !492, !493, !494, !495, !499}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !488, file: !38, line: 185, baseType: !52, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !488, file: !38, line: 185, baseType: !32, size: 8, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !488, file: !38, line: 185, baseType: !32, size: 8, offset: 72)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !488, file: !38, line: 185, baseType: !56, size: 16, offset: 80)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !488, file: !38, line: 185, baseType: !32, size: 8, offset: 96)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !488, file: !38, line: 185, baseType: !496, size: 128, offset: 128)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 128, elements: !497)
!497 = !{!498}
!498 = !DISubrange(count: 2)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !488, file: !38, line: 185, baseType: !52, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !46, file: !38, line: 378, baseType: !501, size: 384)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !38, line: 187, size: 384, elements: !502)
!502 = !{!503, !504, !505, !506, !507, !508, !509, !510}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !501, file: !38, line: 188, baseType: !52, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !501, file: !38, line: 188, baseType: !32, size: 8, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !501, file: !38, line: 188, baseType: !32, size: 8, offset: 72)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !501, file: !38, line: 188, baseType: !56, size: 16, offset: 80)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !501, file: !38, line: 188, baseType: !32, size: 8, offset: 96)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !501, file: !38, line: 189, baseType: !496, size: 128, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !501, file: !38, line: 189, baseType: !52, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !501, file: !38, line: 189, baseType: !511, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !513)
!513 = !{!514, !515, !516, !517, !525, !540, !572, !573, !574, !575, !576, !577}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !512, file: !6, line: 481, baseType: !98, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !512, file: !6, line: 482, baseType: !511, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !512, file: !6, line: 483, baseType: !511, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !512, file: !6, line: 484, baseType: !518, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !520)
!520 = !{!521, !522, !523, !524}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !519, file: !6, line: 498, baseType: !518, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !519, file: !6, line: 499, baseType: !518, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !519, file: !6, line: 500, baseType: !511, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !519, file: !6, line: 501, baseType: !22, size: 32, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !512, file: !6, line: 485, baseType: !526, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !528)
!528 = !{!529, !534, !535, !536, !537, !538, !539}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !527, file: !6, line: 467, baseType: !530, size: 128)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !531)
!531 = !{!532, !533}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !530, file: !6, line: 460, baseType: !32, size: 8)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !530, file: !6, line: 461, baseType: !27, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !527, file: !6, line: 468, baseType: !530, size: 128, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !527, file: !6, line: 469, baseType: !56, size: 16, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !527, file: !6, line: 470, baseType: !32, size: 8, offset: 272)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !527, file: !6, line: 471, baseType: !32, size: 8, offset: 280)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !527, file: !6, line: 472, baseType: !32, size: 8, offset: 288)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !527, file: !6, line: 473, baseType: !32, size: 8, offset: 296)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !512, file: !6, line: 486, baseType: !541, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !543)
!543 = !{!544, !567, !568, !569, !570, !571}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !542, file: !6, line: 449, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !546)
!546 = !{!547, !548, !561}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !545, file: !6, line: 439, baseType: !98, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !545, file: !6, line: 440, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !551)
!551 = !{!552, !557, !558, !559, !560}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !550, file: !6, line: 420, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !21, line: 1049, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!22, !393, !22, !31}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !550, file: !6, line: 421, baseType: !31, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !550, file: !6, line: 422, baseType: !98, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !550, file: !6, line: 423, baseType: !32, size: 8, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !550, file: !6, line: 424, baseType: !32, size: 8, offset: 200)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !545, file: !6, line: 441, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !563, file: !6, line: 430, baseType: !98, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !563, file: !6, line: 431, baseType: !562, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !542, file: !6, line: 450, baseType: !526, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !542, file: !6, line: 451, baseType: !32, size: 8, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !542, file: !6, line: 452, baseType: !32, size: 8, offset: 136)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !542, file: !6, line: 453, baseType: !32, size: 8, offset: 144)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !542, file: !6, line: 454, baseType: !32, size: 8, offset: 152)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !512, file: !6, line: 487, baseType: !27, size: 64, offset: 384)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !512, file: !6, line: 488, baseType: !22, size: 32, offset: 448)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !512, file: !6, line: 489, baseType: !56, size: 16, offset: 480)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !512, file: !6, line: 490, baseType: !56, size: 16, offset: 496)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !512, file: !6, line: 491, baseType: !32, size: 8, offset: 512)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !512, file: !6, line: 492, baseType: !32, size: 8, offset: 520)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !46, file: !38, line: 379, baseType: !579, size: 384)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !38, line: 192, size: 384, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !586, !587, !588, !589}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !579, file: !38, line: 193, baseType: !52, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !579, file: !38, line: 193, baseType: !32, size: 8, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !579, file: !38, line: 193, baseType: !32, size: 8, offset: 72)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !579, file: !38, line: 193, baseType: !56, size: 16, offset: 80)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !579, file: !38, line: 193, baseType: !32, size: 8, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !579, file: !38, line: 193, baseType: !496, size: 128, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !579, file: !38, line: 193, baseType: !52, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !579, file: !38, line: 193, baseType: !22, size: 32, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !579, file: !38, line: 194, baseType: !22, size: 32, offset: 352)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !46, file: !38, line: 380, baseType: !591, size: 384)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !38, line: 197, size: 384, elements: !592)
!592 = !{!593, !594, !595, !596, !597, !598, !599, !600, !601, !602}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !591, file: !38, line: 198, baseType: !52, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !591, file: !38, line: 198, baseType: !32, size: 8, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !591, file: !38, line: 198, baseType: !32, size: 8, offset: 72)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !591, file: !38, line: 198, baseType: !56, size: 16, offset: 80)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !591, file: !38, line: 198, baseType: !32, size: 8, offset: 96)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !591, file: !38, line: 200, baseType: !32, size: 8, offset: 104)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !591, file: !38, line: 201, baseType: !32, size: 8, offset: 112)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !591, file: !38, line: 202, baseType: !496, size: 128, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !591, file: !38, line: 202, baseType: !52, size: 64, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !591, file: !38, line: 202, baseType: !603, size: 64, offset: 320)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !21, line: 128, baseType: !27)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !46, file: !38, line: 381, baseType: !605, size: 320)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !38, line: 205, size: 320, elements: !606)
!606 = !{!607, !608, !609, !610, !611, !612, !613}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !605, file: !38, line: 206, baseType: !52, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !605, file: !38, line: 206, baseType: !32, size: 8, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !605, file: !38, line: 206, baseType: !32, size: 8, offset: 72)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !605, file: !38, line: 206, baseType: !56, size: 16, offset: 80)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !605, file: !38, line: 206, baseType: !32, size: 8, offset: 96)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !605, file: !38, line: 206, baseType: !496, size: 128, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !605, file: !38, line: 206, baseType: !52, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !46, file: !38, line: 382, baseType: !615, size: 384)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !38, line: 233, size: 384, elements: !616)
!616 = !{!617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !615, file: !38, line: 234, baseType: !52, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !615, file: !38, line: 234, baseType: !32, size: 8, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !615, file: !38, line: 234, baseType: !32, size: 8, offset: 72)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !615, file: !38, line: 234, baseType: !56, size: 16, offset: 80)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !615, file: !38, line: 234, baseType: !32, size: 8, offset: 96)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !615, file: !38, line: 234, baseType: !32, size: 8, offset: 104)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !615, file: !38, line: 234, baseType: !32, size: 8, offset: 112)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !615, file: !38, line: 234, baseType: !32, size: 8, offset: 120)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !615, file: !38, line: 234, baseType: !98, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !615, file: !38, line: 234, baseType: !22, size: 32, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !615, file: !38, line: 234, baseType: !22, size: 32, offset: 224)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !615, file: !38, line: 234, baseType: !22, size: 32, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !615, file: !38, line: 234, baseType: !32, size: 8, offset: 288)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !615, file: !38, line: 234, baseType: !32, size: 8, offset: 296)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !615, file: !38, line: 234, baseType: !52, size: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !46, file: !38, line: 383, baseType: !633, size: 576)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !38, line: 237, size: 576, elements: !634)
!634 = !{!635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !633, file: !38, line: 238, baseType: !52, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !633, file: !38, line: 238, baseType: !32, size: 8, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !633, file: !38, line: 238, baseType: !32, size: 8, offset: 72)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !633, file: !38, line: 238, baseType: !56, size: 16, offset: 80)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !38, line: 238, baseType: !32, size: 8, offset: 96)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !633, file: !38, line: 238, baseType: !32, size: 8, offset: 104)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !633, file: !38, line: 238, baseType: !32, size: 8, offset: 112)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !633, file: !38, line: 238, baseType: !32, size: 8, offset: 120)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !633, file: !38, line: 238, baseType: !98, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !633, file: !38, line: 238, baseType: !22, size: 32, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !633, file: !38, line: 238, baseType: !22, size: 32, offset: 224)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !633, file: !38, line: 238, baseType: !22, size: 32, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !633, file: !38, line: 238, baseType: !32, size: 8, offset: 288)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !633, file: !38, line: 238, baseType: !32, size: 8, offset: 296)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !633, file: !38, line: 238, baseType: !56, size: 16, offset: 304)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !633, file: !38, line: 239, baseType: !52, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !633, file: !38, line: 240, baseType: !35, size: 64, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !633, file: !38, line: 241, baseType: !56, size: 16, offset: 448)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !633, file: !38, line: 242, baseType: !35, size: 64, offset: 512)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !46, file: !38, line: 384, baseType: !655, size: 384)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !38, line: 262, size: 384, elements: !656)
!656 = !{!657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !655, file: !38, line: 263, baseType: !52, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !655, file: !38, line: 263, baseType: !32, size: 8, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !655, file: !38, line: 263, baseType: !32, size: 8, offset: 72)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !655, file: !38, line: 263, baseType: !56, size: 16, offset: 80)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !655, file: !38, line: 263, baseType: !32, size: 8, offset: 96)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !655, file: !38, line: 263, baseType: !32, size: 8, offset: 104)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !655, file: !38, line: 263, baseType: !32, size: 8, offset: 112)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !655, file: !38, line: 263, baseType: !32, size: 8, offset: 120)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !655, file: !38, line: 263, baseType: !98, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !655, file: !38, line: 263, baseType: !22, size: 32, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !655, file: !38, line: 263, baseType: !22, size: 32, offset: 224)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !655, file: !38, line: 263, baseType: !22, size: 32, offset: 256)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !655, file: !38, line: 263, baseType: !32, size: 8, offset: 288)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !655, file: !38, line: 263, baseType: !32, size: 8, offset: 296)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !655, file: !38, line: 263, baseType: !32, size: 8, offset: 304)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !655, file: !38, line: 264, baseType: !52, size: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !46, file: !38, line: 385, baseType: !674, size: 448)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !38, line: 245, size: 448, elements: !675)
!675 = !{!676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !674, file: !38, line: 246, baseType: !52, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !674, file: !38, line: 246, baseType: !32, size: 8, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !674, file: !38, line: 246, baseType: !32, size: 8, offset: 72)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !674, file: !38, line: 246, baseType: !56, size: 16, offset: 80)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !674, file: !38, line: 246, baseType: !32, size: 8, offset: 96)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !674, file: !38, line: 246, baseType: !32, size: 8, offset: 104)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !674, file: !38, line: 246, baseType: !32, size: 8, offset: 112)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !674, file: !38, line: 246, baseType: !32, size: 8, offset: 120)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !674, file: !38, line: 246, baseType: !98, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !674, file: !38, line: 246, baseType: !22, size: 32, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !674, file: !38, line: 246, baseType: !22, size: 32, offset: 224)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !674, file: !38, line: 246, baseType: !22, size: 32, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !674, file: !38, line: 246, baseType: !32, size: 8, offset: 288)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !674, file: !38, line: 246, baseType: !32, size: 8, offset: 296)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !674, file: !38, line: 246, baseType: !52, size: 64, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !674, file: !38, line: 247, baseType: !52, size: 64, offset: 384)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !46, file: !38, line: 386, baseType: !693, size: 448)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !38, line: 250, size: 448, elements: !694)
!694 = !{!695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !693, file: !38, line: 251, baseType: !52, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !693, file: !38, line: 251, baseType: !32, size: 8, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !693, file: !38, line: 251, baseType: !32, size: 8, offset: 72)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !693, file: !38, line: 251, baseType: !56, size: 16, offset: 80)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !693, file: !38, line: 251, baseType: !32, size: 8, offset: 96)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !693, file: !38, line: 251, baseType: !32, size: 8, offset: 104)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !693, file: !38, line: 251, baseType: !32, size: 8, offset: 112)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !693, file: !38, line: 251, baseType: !32, size: 8, offset: 120)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !693, file: !38, line: 251, baseType: !98, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !693, file: !38, line: 251, baseType: !22, size: 32, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !693, file: !38, line: 251, baseType: !22, size: 32, offset: 224)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !693, file: !38, line: 251, baseType: !22, size: 32, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !693, file: !38, line: 251, baseType: !32, size: 8, offset: 288)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !693, file: !38, line: 251, baseType: !32, size: 8, offset: 296)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !693, file: !38, line: 256, baseType: !52, size: 64, offset: 320)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !693, file: !38, line: 257, baseType: !52, size: 64, offset: 384)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !46, file: !38, line: 387, baseType: !712, size: 512)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !38, line: 273, size: 512, elements: !713)
!713 = !{!714, !715, !716, !717, !718, !719, !720, !721, !722, !723}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !712, file: !38, line: 274, baseType: !52, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !712, file: !38, line: 274, baseType: !32, size: 8, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !712, file: !38, line: 274, baseType: !32, size: 8, offset: 72)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !712, file: !38, line: 274, baseType: !56, size: 16, offset: 80)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !712, file: !38, line: 274, baseType: !32, size: 8, offset: 96)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !712, file: !38, line: 274, baseType: !98, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !712, file: !38, line: 275, baseType: !22, size: 32, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !712, file: !38, line: 276, baseType: !389, size: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !712, file: !38, line: 277, baseType: !31, size: 64, offset: 320)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !712, file: !38, line: 278, baseType: !496, size: 128, offset: 384)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !46, file: !38, line: 388, baseType: !725, size: 512)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !38, line: 281, size: 512, elements: !726)
!726 = !{!727, !728, !729, !730, !731, !732, !733, !734, !740, !741, !742, !748, !749}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !725, file: !38, line: 282, baseType: !52, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !725, file: !38, line: 282, baseType: !32, size: 8, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !725, file: !38, line: 282, baseType: !32, size: 8, offset: 72)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !725, file: !38, line: 282, baseType: !56, size: 16, offset: 80)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !725, file: !38, line: 282, baseType: !32, size: 8, offset: 96)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !725, file: !38, line: 282, baseType: !32, size: 8, offset: 104)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !725, file: !38, line: 283, baseType: !32, size: 8, offset: 112)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !725, file: !38, line: 284, baseType: !735, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !21, line: 1084, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!20, !22, !485, !22, !739, !31, !31}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !725, file: !38, line: 285, baseType: !98, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !725, file: !38, line: 286, baseType: !31, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !725, file: !38, line: 287, baseType: !743, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !21, line: 1102, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!20, !393, !22, !31, !747}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !725, file: !38, line: 288, baseType: !52, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !725, file: !38, line: 289, baseType: !52, size: 64, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !46, file: !38, line: 389, baseType: !751, size: 512)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !38, line: 307, size: 512, elements: !752)
!752 = !{!753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !751, file: !38, line: 308, baseType: !52, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !751, file: !38, line: 308, baseType: !32, size: 8, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !751, file: !38, line: 308, baseType: !32, size: 8, offset: 72)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !751, file: !38, line: 308, baseType: !56, size: 16, offset: 80)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !751, file: !38, line: 308, baseType: !32, size: 8, offset: 96)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !751, file: !38, line: 308, baseType: !32, size: 8, offset: 104)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !751, file: !38, line: 309, baseType: !32, size: 8, offset: 112)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !751, file: !38, line: 310, baseType: !32, size: 8, offset: 120)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !751, file: !38, line: 311, baseType: !31, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !751, file: !38, line: 312, baseType: !98, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !751, file: !38, line: 313, baseType: !129, size: 64, offset: 256)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !751, file: !38, line: 314, baseType: !35, size: 64, offset: 320)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !751, file: !38, line: 315, baseType: !35, size: 64, offset: 384)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !751, file: !38, line: 316, baseType: !22, size: 32, offset: 448)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !46, file: !38, line: 390, baseType: !768, size: 448)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !38, line: 340, size: 448, elements: !769)
!769 = !{!770, !771, !772, !773, !774, !775, !776, !777, !778, !779}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !768, file: !38, line: 341, baseType: !52, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !768, file: !38, line: 341, baseType: !32, size: 8, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !768, file: !38, line: 341, baseType: !32, size: 8, offset: 72)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !768, file: !38, line: 341, baseType: !56, size: 16, offset: 80)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !768, file: !38, line: 341, baseType: !32, size: 8, offset: 96)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !768, file: !38, line: 341, baseType: !98, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !768, file: !38, line: 342, baseType: !98, size: 64, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !768, file: !38, line: 343, baseType: !31, size: 64, offset: 256)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !768, file: !38, line: 344, baseType: !35, size: 64, offset: 320)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !768, file: !38, line: 345, baseType: !22, size: 32, offset: 384)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !46, file: !38, line: 391, baseType: !781, size: 256)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !38, line: 350, size: 256, elements: !782)
!782 = !{!783, !784, !785, !786, !787, !788, !793}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !781, file: !38, line: 351, baseType: !52, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !781, file: !38, line: 351, baseType: !32, size: 8, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !781, file: !38, line: 351, baseType: !32, size: 8, offset: 72)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !781, file: !38, line: 351, baseType: !56, size: 16, offset: 80)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !38, line: 351, baseType: !32, size: 8, offset: 96)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !781, file: !38, line: 351, baseType: !789, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !21, line: 1055, baseType: !790)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !393, !31}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !781, file: !38, line: 352, baseType: !31, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !46, file: !38, line: 392, baseType: !795, size: 192)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !38, line: 357, size: 192, elements: !796)
!796 = !{!797, !798, !799, !800, !801, !802}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !795, file: !38, line: 358, baseType: !52, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !795, file: !38, line: 358, baseType: !32, size: 8, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !795, file: !38, line: 358, baseType: !32, size: 8, offset: 72)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !795, file: !38, line: 358, baseType: !56, size: 16, offset: 80)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !795, file: !38, line: 358, baseType: !32, size: 8, offset: 96)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !795, file: !38, line: 358, baseType: !52, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !46, file: !38, line: 399, baseType: !99, size: 384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !37, file: !38, line: 435, baseType: !99, size: 384)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !37, file: !38, line: 436, baseType: !199, size: 1600)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !807, line: 148, baseType: !7)
!807 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!808 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!809 = !{!0}
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 72, elements: !409)
!811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!812 = !{!"rsp"}
!813 = !{i32 7, !"Dwarf Version", i32 4}
!814 = !{i32 2, !"Debug Info Version", i32 3}
!815 = !{i32 1, !"wchar_size", i32 2}
!816 = !{i32 1, !"Code Model", i32 2}
!817 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!818 = distinct !DISubprogram(name: "acpi_ns_root_initialize", scope: !3, file: !3, line: 34, type: !819, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !821)
!819 = !DISubroutineType(types: !820)
!820 = !{!20}
!821 = !{}
!822 = !DILocalVariable(name: "status", scope: !818, file: !3, line: 36, type: !20)
!823 = !DILocation(line: 36, column: 14, scope: !818)
!824 = !DILocalVariable(name: "init_val", scope: !818, file: !3, line: 37, type: !825)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_predefined_names", file: !21, line: 985, size: 192, elements: !828)
!828 = !{!829, !831, !832}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !827, file: !21, line: 986, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !827, file: !21, line: 987, baseType: !32, size: 8, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !827, file: !21, line: 988, baseType: !82, size: 64, offset: 128)
!833 = !DILocation(line: 37, column: 38, scope: !818)
!834 = !DILocalVariable(name: "new_node", scope: !818, file: !3, line: 38, type: !98)
!835 = !DILocation(line: 38, column: 30, scope: !818)
!836 = !DILocalVariable(name: "prev_node", scope: !818, file: !3, line: 39, type: !98)
!837 = !DILocation(line: 39, column: 30, scope: !818)
!838 = !DILocalVariable(name: "obj_desc", scope: !818, file: !3, line: 40, type: !52)
!839 = !DILocation(line: 40, column: 29, scope: !818)
!840 = !DILocalVariable(name: "val", scope: !818, file: !3, line: 41, type: !841)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !21, line: 423, baseType: !82)
!842 = !DILocation(line: 41, column: 14, scope: !818)
!843 = !DILocation(line: 45, column: 11, scope: !818)
!844 = !DILocation(line: 45, column: 9, scope: !818)
!845 = !DILocation(line: 46, column: 6, scope: !846)
!846 = distinct !DILexicalBlock(scope: !818, file: !3, line: 46, column: 6)
!847 = !DILocation(line: 46, column: 6, scope: !818)
!848 = !DILocation(line: 47, column: 3, scope: !849)
!849 = distinct !DILexicalBlock(scope: !846, file: !3, line: 46, column: 28)
!850 = !DILocation(line: 54, column: 6, scope: !851)
!851 = distinct !DILexicalBlock(scope: !818, file: !3, line: 54, column: 6)
!852 = !DILocation(line: 54, column: 6, scope: !818)
!853 = !DILocation(line: 55, column: 10, scope: !854)
!854 = distinct !DILexicalBlock(scope: !851, file: !3, line: 54, column: 26)
!855 = !DILocation(line: 56, column: 3, scope: !854)
!856 = !DILocation(line: 63, column: 21, scope: !818)
!857 = !DILocation(line: 85, column: 16, scope: !858)
!858 = distinct !DILexicalBlock(scope: !818, file: !3, line: 85, column: 2)
!859 = !DILocation(line: 85, column: 7, scope: !858)
!860 = !DILocation(line: 85, column: 46, scope: !861)
!861 = distinct !DILexicalBlock(scope: !858, file: !3, line: 85, column: 2)
!862 = !DILocation(line: 85, column: 56, scope: !861)
!863 = !DILocation(line: 85, column: 2, scope: !858)
!864 = !DILocation(line: 86, column: 10, scope: !865)
!865 = distinct !DILexicalBlock(scope: !861, file: !3, line: 85, column: 74)
!866 = !DILocation(line: 90, column: 15, scope: !867)
!867 = distinct !DILexicalBlock(scope: !865, file: !3, line: 90, column: 7)
!868 = !DILocation(line: 90, column: 25, scope: !867)
!869 = !DILocation(line: 90, column: 8, scope: !867)
!870 = !DILocation(line: 91, column: 7, scope: !867)
!871 = !DILocation(line: 91, column: 11, scope: !867)
!872 = !DILocation(line: 90, column: 7, scope: !865)
!873 = !DILocation(line: 92, column: 4, scope: !874)
!874 = distinct !DILexicalBlock(scope: !867, file: !3, line: 91, column: 39)
!875 = !DILocation(line: 102, column: 7, scope: !865)
!876 = !DILocation(line: 101, column: 12, scope: !865)
!877 = !DILocation(line: 103, column: 8, scope: !878)
!878 = distinct !DILexicalBlock(scope: !865, file: !3, line: 103, column: 7)
!879 = !DILocation(line: 103, column: 7, scope: !865)
!880 = !DILocation(line: 104, column: 11, scope: !881)
!881 = distinct !DILexicalBlock(scope: !878, file: !3, line: 103, column: 18)
!882 = !DILocation(line: 105, column: 4, scope: !881)
!883 = !DILocation(line: 108, column: 3, scope: !865)
!884 = !DILocation(line: 109, column: 3, scope: !865)
!885 = !DILocation(line: 109, column: 13, scope: !865)
!886 = !DILocation(line: 109, column: 29, scope: !865)
!887 = !DILocation(line: 110, column: 20, scope: !865)
!888 = !DILocation(line: 110, column: 30, scope: !865)
!889 = !DILocation(line: 110, column: 3, scope: !865)
!890 = !DILocation(line: 110, column: 13, scope: !865)
!891 = !DILocation(line: 110, column: 18, scope: !865)
!892 = !DILocation(line: 112, column: 8, scope: !893)
!893 = distinct !DILexicalBlock(scope: !865, file: !3, line: 112, column: 7)
!894 = !DILocation(line: 112, column: 7, scope: !865)
!895 = !DILocation(line: 113, column: 38, scope: !896)
!896 = distinct !DILexicalBlock(scope: !893, file: !3, line: 112, column: 19)
!897 = !DILocation(line: 113, column: 36, scope: !896)
!898 = !DILocation(line: 114, column: 3, scope: !896)
!899 = !DILocation(line: 115, column: 22, scope: !900)
!900 = distinct !DILexicalBlock(scope: !893, file: !3, line: 114, column: 10)
!901 = !DILocation(line: 115, column: 4, scope: !900)
!902 = !DILocation(line: 115, column: 15, scope: !900)
!903 = !DILocation(line: 115, column: 20, scope: !900)
!904 = !DILocation(line: 118, column: 3, scope: !865)
!905 = !DILocation(line: 118, column: 13, scope: !865)
!906 = !DILocation(line: 118, column: 20, scope: !865)
!907 = !DILocation(line: 119, column: 15, scope: !865)
!908 = !DILocation(line: 119, column: 13, scope: !865)
!909 = !DILocation(line: 125, column: 7, scope: !910)
!910 = distinct !DILexicalBlock(scope: !865, file: !3, line: 125, column: 7)
!911 = !DILocation(line: 125, column: 17, scope: !910)
!912 = !DILocation(line: 125, column: 7, scope: !865)
!913 = !DILocation(line: 126, column: 41, scope: !914)
!914 = distinct !DILexicalBlock(scope: !910, file: !3, line: 125, column: 22)
!915 = !DILocation(line: 126, column: 13, scope: !914)
!916 = !DILocation(line: 126, column: 11, scope: !914)
!917 = !DILocation(line: 127, column: 8, scope: !918)
!918 = distinct !DILexicalBlock(scope: !914, file: !3, line: 127, column: 8)
!919 = !DILocation(line: 127, column: 8, scope: !914)
!920 = !DILocation(line: 128, column: 5, scope: !921)
!921 = distinct !DILexicalBlock(scope: !918, file: !3, line: 127, column: 30)
!922 = !DILocation(line: 131, column: 4, scope: !921)
!923 = !DILocation(line: 133, column: 9, scope: !924)
!924 = distinct !DILexicalBlock(scope: !914, file: !3, line: 133, column: 8)
!925 = !DILocation(line: 133, column: 8, scope: !914)
!926 = !DILocation(line: 134, column: 11, scope: !927)
!927 = distinct !DILexicalBlock(scope: !924, file: !3, line: 133, column: 14)
!928 = !DILocation(line: 134, column: 21, scope: !927)
!929 = !DILocation(line: 134, column: 9, scope: !927)
!930 = !DILocation(line: 135, column: 4, scope: !927)
!931 = !DILocation(line: 142, column: 8, scope: !914)
!932 = !DILocation(line: 141, column: 13, scope: !914)
!933 = !DILocation(line: 143, column: 9, scope: !934)
!934 = distinct !DILexicalBlock(scope: !914, file: !3, line: 143, column: 8)
!935 = !DILocation(line: 143, column: 8, scope: !914)
!936 = !DILocation(line: 144, column: 12, scope: !937)
!937 = distinct !DILexicalBlock(scope: !934, file: !3, line: 143, column: 19)
!938 = !DILocation(line: 145, column: 5, scope: !937)
!939 = !DILocation(line: 153, column: 12, scope: !914)
!940 = !DILocation(line: 153, column: 22, scope: !914)
!941 = !DILocation(line: 153, column: 4, scope: !914)
!942 = !DILocation(line: 157, column: 14, scope: !943)
!943 = distinct !DILexicalBlock(scope: !914, file: !3, line: 153, column: 28)
!944 = !DILocation(line: 157, column: 9, scope: !943)
!945 = !DILocation(line: 156, column: 5, scope: !943)
!946 = !DILocation(line: 156, column: 15, scope: !943)
!947 = !DILocation(line: 156, column: 22, scope: !943)
!948 = !DILocation(line: 156, column: 34, scope: !943)
!949 = !DILocation(line: 158, column: 5, scope: !943)
!950 = !DILocation(line: 158, column: 15, scope: !943)
!951 = !DILocation(line: 158, column: 22, scope: !943)
!952 = !DILocation(line: 158, column: 28, scope: !943)
!953 = !DILocation(line: 168, column: 5, scope: !943)
!954 = !DILocation(line: 168, column: 15, scope: !943)
!955 = !DILocation(line: 168, column: 22, scope: !943)
!956 = !DILocation(line: 168, column: 33, scope: !943)
!957 = !DILocation(line: 170, column: 5, scope: !943)
!958 = !DILocation(line: 170, column: 15, scope: !943)
!959 = !DILocation(line: 170, column: 22, scope: !943)
!960 = !DILocation(line: 170, column: 31, scope: !943)
!961 = !DILocation(line: 170, column: 46, scope: !943)
!962 = !DILocation(line: 173, column: 5, scope: !943)
!963 = !DILocation(line: 177, column: 31, scope: !943)
!964 = !DILocation(line: 177, column: 5, scope: !943)
!965 = !DILocation(line: 177, column: 15, scope: !943)
!966 = !DILocation(line: 177, column: 23, scope: !943)
!967 = !DILocation(line: 177, column: 29, scope: !943)
!968 = !DILocation(line: 178, column: 5, scope: !943)
!969 = !DILocation(line: 184, column: 43, scope: !943)
!970 = !DILocation(line: 184, column: 36, scope: !943)
!971 = !DILocation(line: 184, column: 31, scope: !943)
!972 = !DILocation(line: 184, column: 5, scope: !943)
!973 = !DILocation(line: 184, column: 15, scope: !943)
!974 = !DILocation(line: 184, column: 22, scope: !943)
!975 = !DILocation(line: 184, column: 29, scope: !943)
!976 = !DILocation(line: 185, column: 32, scope: !943)
!977 = !DILocation(line: 185, column: 5, scope: !943)
!978 = !DILocation(line: 185, column: 15, scope: !943)
!979 = !DILocation(line: 185, column: 22, scope: !943)
!980 = !DILocation(line: 185, column: 30, scope: !943)
!981 = !DILocation(line: 186, column: 5, scope: !943)
!982 = !DILocation(line: 186, column: 15, scope: !943)
!983 = !DILocation(line: 186, column: 22, scope: !943)
!984 = !DILocation(line: 186, column: 28, scope: !943)
!985 = !DILocation(line: 187, column: 5, scope: !943)
!986 = !DILocation(line: 191, column: 28, scope: !943)
!987 = !DILocation(line: 191, column: 5, scope: !943)
!988 = !DILocation(line: 191, column: 15, scope: !943)
!989 = !DILocation(line: 191, column: 21, scope: !943)
!990 = !DILocation(line: 191, column: 26, scope: !943)
!991 = !DILocation(line: 193, column: 15, scope: !943)
!992 = !DILocation(line: 193, column: 36, scope: !943)
!993 = !DILocation(line: 193, column: 9, scope: !943)
!994 = !DILocation(line: 192, column: 5, scope: !943)
!995 = !DILocation(line: 192, column: 15, scope: !943)
!996 = !DILocation(line: 192, column: 21, scope: !943)
!997 = !DILocation(line: 192, column: 32, scope: !943)
!998 = !DILocation(line: 198, column: 9, scope: !943)
!999 = !DILocation(line: 197, column: 12, scope: !943)
!1000 = !DILocation(line: 200, column: 9, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !943, file: !3, line: 200, column: 9)
!1002 = !DILocation(line: 200, column: 9, scope: !943)
!1003 = !DILocation(line: 201, column: 31, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 200, column: 31)
!1005 = !DILocation(line: 201, column: 6, scope: !1004)
!1006 = !DILocation(line: 202, column: 6, scope: !1004)
!1007 = !DILocation(line: 207, column: 16, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !943, file: !3, line: 207, column: 9)
!1009 = !DILocation(line: 207, column: 26, scope: !1008)
!1010 = !DILocation(line: 207, column: 9, scope: !1008)
!1011 = !DILocation(line: 207, column: 40, scope: !1008)
!1012 = !DILocation(line: 207, column: 9, scope: !943)
!1013 = !DILocation(line: 208, column: 35, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 207, column: 46)
!1015 = !DILocation(line: 208, column: 33, scope: !1014)
!1016 = !DILocation(line: 213, column: 10, scope: !1014)
!1017 = !DILocation(line: 212, column: 13, scope: !1014)
!1018 = !DILocation(line: 215, column: 10, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 215, column: 10)
!1020 = !DILocation(line: 215, column: 10, scope: !1014)
!1021 = !DILocation(line: 217, column: 12, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 215, column: 32)
!1023 = !DILocation(line: 216, column: 7, scope: !1022)
!1024 = !DILocation(line: 218, column: 7, scope: !1022)
!1025 = !DILocation(line: 220, column: 5, scope: !1014)
!1026 = !DILocation(line: 221, column: 5, scope: !943)
!1027 = !DILocation(line: 225, column: 5, scope: !943)
!1028 = !DILocation(line: 228, column: 30, scope: !943)
!1029 = !DILocation(line: 228, column: 5, scope: !943)
!1030 = !DILocation(line: 229, column: 14, scope: !943)
!1031 = !DILocation(line: 230, column: 5, scope: !943)
!1032 = !DILocation(line: 235, column: 35, scope: !914)
!1033 = !DILocation(line: 235, column: 45, scope: !914)
!1034 = !DILocation(line: 236, column: 14, scope: !914)
!1035 = !DILocation(line: 236, column: 24, scope: !914)
!1036 = !DILocation(line: 236, column: 31, scope: !914)
!1037 = !DILocation(line: 235, column: 13, scope: !914)
!1038 = !DILocation(line: 235, column: 11, scope: !914)
!1039 = !DILocation(line: 240, column: 29, scope: !914)
!1040 = !DILocation(line: 240, column: 4, scope: !914)
!1041 = !DILocation(line: 241, column: 3, scope: !914)
!1042 = !DILocation(line: 242, column: 2, scope: !865)
!1043 = !DILocation(line: 85, column: 70, scope: !861)
!1044 = !DILocation(line: 85, column: 2, scope: !861)
!1045 = distinct !{!1045, !863, !1046}
!1046 = !DILocation(line: 242, column: 2, scope: !858)
!1047 = !DILabel(scope: !818, name: "unlock_and_exit", file: !3, line: 244)
!1048 = !DILocation(line: 244, column: 1, scope: !818)
!1049 = !DILocation(line: 245, column: 8, scope: !818)
!1050 = !DILocation(line: 249, column: 6, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !818, file: !3, line: 249, column: 6)
!1052 = !DILocation(line: 249, column: 6, scope: !818)
!1053 = !DILocation(line: 250, column: 12, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 249, column: 28)
!1055 = !DILocation(line: 250, column: 10, scope: !1054)
!1056 = !DILocation(line: 252, column: 2, scope: !1054)
!1057 = !DILocation(line: 254, column: 2, scope: !818)
!1058 = !DILocation(line: 255, column: 1, scope: !818)
!1059 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1060, file: !1060, line: 55, type: !1061, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !821)
!1060 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!31, !26}
!1063 = !DILocalVariable(name: "flags", arg: 1, scope: !1064, file: !1065, line: 162, type: !808)
!1064 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1065, file: !1065, line: 162, type: !1066, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !821)
!1065 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!1068, !808}
!1068 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1069 = !DILocation(line: 162, column: 67, scope: !1064, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 57, column: 23, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !1060, line: 57, column: 23)
!1072 = distinct !DILexicalBlock(scope: !1059, file: !1060, line: 57, column: 23)
!1073 = !DILocalVariable(name: "size", arg: 1, scope: !1059, file: !1060, line: 55, type: !26)
!1074 = !DILocation(line: 55, column: 55, scope: !1059)
!1075 = !DILocation(line: 57, column: 17, scope: !1059)
!1076 = !DILocalVariable(name: "_flags", scope: !1072, file: !1060, line: 57, type: !808)
!1077 = !DILocation(line: 57, column: 23, scope: !1072)
!1078 = !DILocalVariable(name: "__dummy", scope: !1079, file: !1060, line: 57, type: !808)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !1060, line: 57, column: 23)
!1080 = distinct !DILexicalBlock(scope: !1072, file: !1060, line: 57, column: 23)
!1081 = !DILocation(line: 57, column: 23, scope: !1079)
!1082 = !DILocalVariable(name: "__dummy2", scope: !1079, file: !1060, line: 57, type: !808)
!1083 = !DILocation(line: 57, column: 23, scope: !1080)
!1084 = !DILocalVariable(name: "__dummy", scope: !1085, file: !1060, line: 57, type: !808)
!1085 = distinct !DILexicalBlock(scope: !1071, file: !1060, line: 57, column: 23)
!1086 = !DILocation(line: 57, column: 23, scope: !1085)
!1087 = !DILocalVariable(name: "__dummy2", scope: !1085, file: !1060, line: 57, type: !808)
!1088 = !DILocation(line: 57, column: 23, scope: !1071)
!1089 = !DILocation(line: 164, column: 11, scope: !1064, inlinedAt: !1070)
!1090 = !DILocation(line: 164, column: 17, scope: !1064, inlinedAt: !1070)
!1091 = !DILocation(line: 164, column: 9, scope: !1064, inlinedAt: !1070)
!1092 = !DILocation(line: 57, column: 23, scope: !1059)
!1093 = !DILocation(line: 57, column: 9, scope: !1059)
!1094 = !DILocation(line: 57, column: 2, scope: !1059)
!1095 = distinct !DISubprogram(name: "acpi_ns_lookup", scope: !3, file: !3, line: 281, type: !1096, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !821)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!20, !280, !82, !1098, !1099, !22, !164, !1100}
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !21, line: 635, baseType: !22)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_interpreter_mode", file: !6, line: 120, baseType: !5)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!1101 = !DILocalVariable(name: "scope_info", arg: 1, scope: !1095, file: !3, line: 281, type: !280)
!1102 = !DILocation(line: 281, column: 42, scope: !1095)
!1103 = !DILocalVariable(name: "pathname", arg: 2, scope: !1095, file: !3, line: 282, type: !82)
!1104 = !DILocation(line: 282, column: 15, scope: !1095)
!1105 = !DILocalVariable(name: "type", arg: 3, scope: !1095, file: !3, line: 283, type: !1098)
!1106 = !DILocation(line: 283, column: 26, scope: !1095)
!1107 = !DILocalVariable(name: "interpreter_mode", arg: 4, scope: !1095, file: !3, line: 284, type: !1099)
!1108 = !DILocation(line: 284, column: 31, scope: !1095)
!1109 = !DILocalVariable(name: "flags", arg: 5, scope: !1095, file: !3, line: 285, type: !22)
!1110 = !DILocation(line: 285, column: 13, scope: !1095)
!1111 = !DILocalVariable(name: "walk_state", arg: 6, scope: !1095, file: !3, line: 286, type: !164)
!1112 = !DILocation(line: 286, column: 33, scope: !1095)
!1113 = !DILocalVariable(name: "return_node", arg: 7, scope: !1095, file: !3, line: 287, type: !1100)
!1114 = !DILocation(line: 287, column: 38, scope: !1095)
!1115 = !DILocalVariable(name: "status", scope: !1095, file: !3, line: 289, type: !20)
!1116 = !DILocation(line: 289, column: 14, scope: !1095)
!1117 = !DILocalVariable(name: "path", scope: !1095, file: !3, line: 290, type: !82)
!1118 = !DILocation(line: 290, column: 8, scope: !1095)
!1119 = !DILocation(line: 290, column: 15, scope: !1095)
!1120 = !DILocalVariable(name: "external_path", scope: !1095, file: !3, line: 291, type: !82)
!1121 = !DILocation(line: 291, column: 8, scope: !1095)
!1122 = !DILocalVariable(name: "prefix_node", scope: !1095, file: !3, line: 292, type: !98)
!1123 = !DILocation(line: 292, column: 30, scope: !1095)
!1124 = !DILocalVariable(name: "current_node", scope: !1095, file: !3, line: 293, type: !98)
!1125 = !DILocation(line: 293, column: 30, scope: !1095)
!1126 = !DILocalVariable(name: "this_node", scope: !1095, file: !3, line: 294, type: !98)
!1127 = !DILocation(line: 294, column: 30, scope: !1095)
!1128 = !DILocalVariable(name: "num_segments", scope: !1095, file: !3, line: 295, type: !22)
!1129 = !DILocation(line: 295, column: 6, scope: !1095)
!1130 = !DILocalVariable(name: "num_carats", scope: !1095, file: !3, line: 296, type: !22)
!1131 = !DILocation(line: 296, column: 6, scope: !1095)
!1132 = !DILocalVariable(name: "simple_name", scope: !1095, file: !3, line: 297, type: !1133)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_name", file: !21, line: 422, baseType: !22)
!1134 = !DILocation(line: 297, column: 12, scope: !1095)
!1135 = !DILocalVariable(name: "type_to_check_for", scope: !1095, file: !3, line: 298, type: !1098)
!1136 = !DILocation(line: 298, column: 19, scope: !1095)
!1137 = !DILocalVariable(name: "this_search_type", scope: !1095, file: !3, line: 299, type: !1098)
!1138 = !DILocation(line: 299, column: 19, scope: !1095)
!1139 = !DILocalVariable(name: "search_parent_flag", scope: !1095, file: !3, line: 300, type: !22)
!1140 = !DILocation(line: 300, column: 6, scope: !1095)
!1141 = !DILocalVariable(name: "local_flags", scope: !1095, file: !3, line: 301, type: !22)
!1142 = !DILocation(line: 301, column: 6, scope: !1095)
!1143 = !DILocalVariable(name: "local_interpreter_mode", scope: !1095, file: !3, line: 302, type: !1099)
!1144 = !DILocation(line: 302, column: 24, scope: !1095)
!1145 = !DILocation(line: 306, column: 7, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 306, column: 6)
!1147 = !DILocation(line: 306, column: 6, scope: !1095)
!1148 = !DILocation(line: 307, column: 3, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 306, column: 20)
!1150 = !DILocation(line: 310, column: 16, scope: !1095)
!1151 = !DILocation(line: 310, column: 22, scope: !1095)
!1152 = !DILocation(line: 310, column: 14, scope: !1095)
!1153 = !DILocation(line: 313, column: 3, scope: !1095)
!1154 = !DILocation(line: 313, column: 15, scope: !1095)
!1155 = !DILocation(line: 314, column: 26, scope: !1095)
!1156 = !DILocation(line: 316, column: 7, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 316, column: 6)
!1158 = !DILocation(line: 316, column: 6, scope: !1095)
!1159 = !DILocation(line: 317, column: 3, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 316, column: 27)
!1161 = !DILocation(line: 322, column: 8, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 322, column: 6)
!1163 = !DILocation(line: 322, column: 20, scope: !1162)
!1164 = !DILocation(line: 322, column: 25, scope: !1162)
!1165 = !DILocation(line: 322, column: 37, scope: !1162)
!1166 = !DILocation(line: 322, column: 43, scope: !1162)
!1167 = !DILocation(line: 322, column: 6, scope: !1095)
!1168 = !DILocation(line: 327, column: 17, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 322, column: 50)
!1170 = !DILocation(line: 327, column: 15, scope: !1169)
!1171 = !DILocation(line: 328, column: 2, scope: !1169)
!1172 = !DILocation(line: 329, column: 17, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 328, column: 9)
!1174 = !DILocation(line: 329, column: 29, scope: !1173)
!1175 = !DILocation(line: 329, column: 35, scope: !1173)
!1176 = !DILocation(line: 329, column: 15, scope: !1173)
!1177 = !DILocation(line: 330, column: 7, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 330, column: 7)
!1179 = !DILocation(line: 330, column: 45, scope: !1178)
!1180 = !DILocation(line: 330, column: 7, scope: !1173)
!1181 = !DILocation(line: 332, column: 4, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 331, column: 29)
!1183 = !DILocation(line: 335, column: 4, scope: !1182)
!1184 = !DILocation(line: 338, column: 9, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 338, column: 7)
!1186 = !DILocation(line: 338, column: 15, scope: !1185)
!1187 = !DILocation(line: 338, column: 7, scope: !1173)
!1188 = !DILocation(line: 344, column: 4, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 338, column: 43)
!1190 = !DILocation(line: 344, column: 32, scope: !1189)
!1191 = !DILocation(line: 344, column: 45, scope: !1189)
!1192 = !DILocation(line: 344, column: 12, scope: !1189)
!1193 = !DILocation(line: 344, column: 51, scope: !1189)
!1194 = !DILocation(line: 345, column: 11, scope: !1189)
!1195 = !DILocation(line: 345, column: 24, scope: !1189)
!1196 = !DILocation(line: 345, column: 29, scope: !1189)
!1197 = !DILocation(line: 0, scope: !1189)
!1198 = !DILocation(line: 346, column: 19, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 345, column: 47)
!1200 = !DILocation(line: 346, column: 32, scope: !1199)
!1201 = !DILocation(line: 346, column: 17, scope: !1199)
!1202 = distinct !{!1202, !1188, !1203}
!1203 = !DILocation(line: 347, column: 4, scope: !1189)
!1204 = !DILocation(line: 348, column: 3, scope: !1189)
!1205 = !DILocation(line: 353, column: 22, scope: !1095)
!1206 = !DILocation(line: 353, column: 20, scope: !1095)
!1207 = !DILocation(line: 358, column: 7, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 358, column: 6)
!1209 = !DILocation(line: 358, column: 6, scope: !1095)
!1210 = !DILocation(line: 362, column: 16, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 358, column: 17)
!1212 = !DILocation(line: 363, column: 15, scope: !1211)
!1213 = !DILocation(line: 363, column: 13, scope: !1211)
!1214 = !DILocation(line: 364, column: 8, scope: !1211)
!1215 = !DILocation(line: 369, column: 2, scope: !1211)
!1216 = !DILocation(line: 383, column: 8, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 383, column: 7)
!1218 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 369, column: 9)
!1219 = !DILocation(line: 383, column: 7, scope: !1217)
!1220 = !DILocation(line: 383, column: 13, scope: !1217)
!1221 = !DILocation(line: 383, column: 7, scope: !1218)
!1222 = !DILocation(line: 387, column: 16, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 383, column: 38)
!1224 = !DILocation(line: 387, column: 14, scope: !1223)
!1225 = !DILocation(line: 388, column: 23, scope: !1223)
!1226 = !DILocation(line: 392, column: 8, scope: !1223)
!1227 = !DILocation(line: 397, column: 3, scope: !1223)
!1228 = !DILocation(line: 409, column: 16, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 397, column: 10)
!1230 = !DILocation(line: 409, column: 14, scope: !1229)
!1231 = !DILocation(line: 410, column: 15, scope: !1229)
!1232 = !DILocation(line: 411, column: 4, scope: !1229)
!1233 = !DILocation(line: 411, column: 12, scope: !1229)
!1234 = !DILocation(line: 411, column: 11, scope: !1229)
!1235 = !DILocation(line: 411, column: 17, scope: !1229)
!1236 = !DILocation(line: 415, column: 24, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 411, column: 44)
!1238 = !DILocation(line: 421, column: 9, scope: !1237)
!1239 = !DILocation(line: 425, column: 15, scope: !1237)
!1240 = !DILocation(line: 426, column: 17, scope: !1237)
!1241 = !DILocation(line: 426, column: 28, scope: !1237)
!1242 = !DILocation(line: 426, column: 15, scope: !1237)
!1243 = !DILocation(line: 427, column: 10, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 427, column: 9)
!1245 = !DILocation(line: 427, column: 9, scope: !1237)
!1246 = !DILocation(line: 434, column: 28, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 427, column: 21)
!1248 = !DILocation(line: 433, column: 10, scope: !1247)
!1249 = !DILocation(line: 432, column: 13, scope: !1247)
!1250 = !DILocation(line: 436, column: 10, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 436, column: 10)
!1252 = !DILocation(line: 436, column: 10, scope: !1247)
!1253 = !DILocation(line: 437, column: 7, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 436, column: 32)
!1255 = !DILocation(line: 441, column: 7, scope: !1254)
!1256 = !DILocation(line: 442, column: 6, scope: !1254)
!1257 = !DILocation(line: 444, column: 6, scope: !1247)
!1258 = distinct !{!1258, !1232, !1259}
!1259 = !DILocation(line: 446, column: 4, scope: !1229)
!1260 = !DILocation(line: 448, column: 8, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 448, column: 8)
!1262 = !DILocation(line: 448, column: 27, scope: !1261)
!1263 = !DILocation(line: 448, column: 8, scope: !1229)
!1264 = !DILocation(line: 453, column: 4, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 448, column: 51)
!1266 = !DILocation(line: 469, column: 12, scope: !1218)
!1267 = !DILocation(line: 469, column: 11, scope: !1218)
!1268 = !DILocation(line: 469, column: 3, scope: !1218)
!1269 = !DILocation(line: 475, column: 17, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 469, column: 18)
!1271 = !DILocation(line: 476, column: 11, scope: !1270)
!1272 = !DILocation(line: 476, column: 22, scope: !1270)
!1273 = !DILocation(line: 476, column: 9, scope: !1270)
!1274 = !DILocation(line: 481, column: 4, scope: !1270)
!1275 = !DILocation(line: 487, column: 23, scope: !1270)
!1276 = !DILocation(line: 491, column: 17, scope: !1270)
!1277 = !DILocation(line: 492, column: 8, scope: !1270)
!1278 = !DILocation(line: 497, column: 4, scope: !1270)
!1279 = !DILocation(line: 503, column: 23, scope: !1270)
!1280 = !DILocation(line: 507, column: 8, scope: !1270)
!1281 = !DILocation(line: 508, column: 32, scope: !1270)
!1282 = !DILocation(line: 508, column: 30, scope: !1270)
!1283 = !DILocation(line: 508, column: 19, scope: !1270)
!1284 = !DILocation(line: 508, column: 17, scope: !1270)
!1285 = !DILocation(line: 509, column: 8, scope: !1270)
!1286 = !DILocation(line: 514, column: 4, scope: !1270)
!1287 = !DILocation(line: 521, column: 17, scope: !1270)
!1288 = !DILocation(line: 526, column: 4, scope: !1270)
!1289 = !DILocation(line: 540, column: 19, scope: !1095)
!1290 = !DILocation(line: 541, column: 17, scope: !1095)
!1291 = !DILocation(line: 541, column: 15, scope: !1095)
!1292 = !DILocation(line: 543, column: 2, scope: !1095)
!1293 = !DILocation(line: 543, column: 9, scope: !1095)
!1294 = !DILocation(line: 543, column: 22, scope: !1095)
!1295 = !DILocation(line: 543, column: 25, scope: !1095)
!1296 = !DILocation(line: 0, scope: !1095)
!1297 = !DILocation(line: 544, column: 15, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 543, column: 39)
!1299 = !DILocation(line: 545, column: 8, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 545, column: 7)
!1301 = !DILocation(line: 545, column: 7, scope: !1298)
!1302 = !DILocation(line: 549, column: 23, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 545, column: 22)
!1304 = !DILocation(line: 549, column: 21, scope: !1303)
!1305 = !DILocation(line: 555, column: 9, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 555, column: 8)
!1307 = !DILocation(line: 555, column: 28, scope: !1306)
!1308 = !DILocation(line: 555, column: 52, scope: !1306)
!1309 = !DILocation(line: 556, column: 9, scope: !1306)
!1310 = !DILocation(line: 556, column: 15, scope: !1306)
!1311 = !DILocation(line: 555, column: 8, scope: !1303)
!1312 = !DILocation(line: 557, column: 17, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 556, column: 41)
!1314 = !DILocation(line: 558, column: 4, scope: !1313)
!1315 = !DILocation(line: 562, column: 8, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 562, column: 8)
!1317 = !DILocation(line: 562, column: 14, scope: !1316)
!1318 = !DILocation(line: 562, column: 8, scope: !1303)
!1319 = !DILocation(line: 563, column: 17, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 562, column: 40)
!1321 = !DILocation(line: 564, column: 4, scope: !1320)
!1322 = !DILocation(line: 568, column: 8, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 568, column: 8)
!1324 = !DILocation(line: 568, column: 14, scope: !1323)
!1325 = !DILocation(line: 568, column: 8, scope: !1303)
!1326 = !DILocation(line: 569, column: 17, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 568, column: 43)
!1328 = !DILocation(line: 570, column: 4, scope: !1327)
!1329 = !DILocation(line: 571, column: 3, scope: !1303)
!1330 = !DILocation(line: 575, column: 28, scope: !1298)
!1331 = !DILocation(line: 575, column: 26, scope: !1298)
!1332 = !DILocation(line: 576, column: 8, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 576, column: 7)
!1334 = !DILocation(line: 576, column: 14, scope: !1333)
!1335 = !DILocation(line: 576, column: 43, scope: !1333)
!1336 = !DILocation(line: 576, column: 47, scope: !1333)
!1337 = !DILocation(line: 576, column: 60, scope: !1333)
!1338 = !DILocation(line: 576, column: 7, scope: !1298)
!1339 = !DILocation(line: 580, column: 27, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 576, column: 66)
!1341 = !DILocation(line: 581, column: 3, scope: !1340)
!1342 = !DILocation(line: 585, column: 3, scope: !1298)
!1343 = !DILocation(line: 590, column: 32, scope: !1298)
!1344 = !DILocation(line: 590, column: 45, scope: !1298)
!1345 = !DILocation(line: 591, column: 11, scope: !1298)
!1346 = !DILocation(line: 592, column: 11, scope: !1298)
!1347 = !DILocation(line: 593, column: 11, scope: !1298)
!1348 = !DILocation(line: 593, column: 29, scope: !1298)
!1349 = !DILocation(line: 590, column: 7, scope: !1298)
!1350 = !DILocation(line: 589, column: 10, scope: !1298)
!1351 = !DILocation(line: 595, column: 7, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 595, column: 7)
!1353 = !DILocation(line: 595, column: 7, scope: !1298)
!1354 = !DILocation(line: 596, column: 8, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 596, column: 8)
!1356 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 595, column: 29)
!1357 = !DILocation(line: 596, column: 15, scope: !1355)
!1358 = !DILocation(line: 596, column: 8, scope: !1356)
!1359 = !DILocation(line: 598, column: 9, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 598, column: 9)
!1361 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 596, column: 32)
!1362 = !DILocation(line: 598, column: 15, scope: !1360)
!1363 = !DILocation(line: 598, column: 9, scope: !1361)
!1364 = !DILocation(line: 601, column: 14, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 598, column: 44)
!1366 = !DILocation(line: 599, column: 6, scope: !1365)
!1367 = !DILocation(line: 602, column: 5, scope: !1365)
!1368 = !DILocation(line: 611, column: 4, scope: !1361)
!1369 = !DILocation(line: 644, column: 19, scope: !1356)
!1370 = !DILocation(line: 644, column: 5, scope: !1356)
!1371 = !DILocation(line: 644, column: 17, scope: !1356)
!1372 = !DILocation(line: 645, column: 4, scope: !1356)
!1373 = !DILocation(line: 650, column: 7, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 650, column: 7)
!1375 = !DILocation(line: 650, column: 20, scope: !1374)
!1376 = !DILocation(line: 650, column: 7, scope: !1298)
!1377 = !DILocation(line: 657, column: 8, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 657, column: 8)
!1379 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 650, column: 25)
!1380 = !DILocation(line: 657, column: 19, scope: !1378)
!1381 = !DILocation(line: 657, column: 24, scope: !1378)
!1382 = !DILocation(line: 657, column: 8, scope: !1379)
!1383 = !DILocation(line: 658, column: 10, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 658, column: 9)
!1385 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 657, column: 50)
!1386 = !DILocation(line: 658, column: 21, scope: !1384)
!1387 = !DILocation(line: 658, column: 9, scope: !1385)
!1388 = !DILocation(line: 659, column: 6, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 658, column: 29)
!1390 = !DILocation(line: 664, column: 11, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 662, column: 9)
!1392 = !DILocation(line: 664, column: 22, scope: !1391)
!1393 = !DILocation(line: 664, column: 31, scope: !1391)
!1394 = !DILocation(line: 663, column: 10, scope: !1391)
!1395 = !DILocation(line: 662, column: 9, scope: !1391)
!1396 = !DILocation(line: 662, column: 9, scope: !1385)
!1397 = !DILocation(line: 667, column: 10, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 664, column: 38)
!1399 = !DILocation(line: 667, column: 21, scope: !1398)
!1400 = !DILocation(line: 666, column: 10, scope: !1398)
!1401 = !DILocation(line: 665, column: 16, scope: !1398)
!1402 = !DILocation(line: 668, column: 5, scope: !1398)
!1403 = !DILocation(line: 669, column: 4, scope: !1385)
!1404 = !DILocation(line: 670, column: 3, scope: !1379)
!1405 = !DILocation(line: 688, column: 9, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 688, column: 8)
!1407 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 674, column: 8)
!1408 = !DILocation(line: 688, column: 27, scope: !1406)
!1409 = !DILocation(line: 688, column: 45, scope: !1406)
!1410 = !DILocation(line: 689, column: 9, scope: !1406)
!1411 = !DILocation(line: 689, column: 27, scope: !1406)
!1412 = !DILocation(line: 689, column: 53, scope: !1406)
!1413 = !DILocation(line: 690, column: 9, scope: !1406)
!1414 = !DILocation(line: 690, column: 27, scope: !1406)
!1415 = !DILocation(line: 691, column: 8, scope: !1406)
!1416 = !DILocation(line: 691, column: 12, scope: !1406)
!1417 = !DILocation(line: 691, column: 30, scope: !1406)
!1418 = !DILocation(line: 692, column: 8, scope: !1406)
!1419 = !DILocation(line: 692, column: 12, scope: !1406)
!1420 = !DILocation(line: 692, column: 23, scope: !1406)
!1421 = !DILocation(line: 692, column: 28, scope: !1406)
!1422 = !DILocation(line: 693, column: 8, scope: !1406)
!1423 = !DILocation(line: 693, column: 12, scope: !1406)
!1424 = !DILocation(line: 693, column: 23, scope: !1406)
!1425 = !DILocation(line: 693, column: 31, scope: !1406)
!1426 = !DILocation(line: 693, column: 28, scope: !1406)
!1427 = !DILocation(line: 688, column: 8, scope: !1407)
!1428 = !DILocation(line: 697, column: 5, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 693, column: 51)
!1430 = !DILocation(line: 704, column: 4, scope: !1429)
!1431 = !DILocation(line: 711, column: 8, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 711, column: 8)
!1433 = !DILocation(line: 711, column: 13, scope: !1432)
!1434 = !DILocation(line: 711, column: 8, scope: !1407)
!1435 = !DILocation(line: 712, column: 12, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 711, column: 31)
!1437 = !DILocation(line: 712, column: 23, scope: !1436)
!1438 = !DILocation(line: 712, column: 10, scope: !1436)
!1439 = !DILocation(line: 713, column: 4, scope: !1436)
!1440 = !DILocation(line: 718, column: 8, scope: !1298)
!1441 = !DILocation(line: 719, column: 18, scope: !1298)
!1442 = !DILocation(line: 719, column: 16, scope: !1298)
!1443 = distinct !{!1443, !1292, !1444}
!1444 = !DILocation(line: 720, column: 2, scope: !1095)
!1445 = !DILocation(line: 724, column: 8, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 724, column: 6)
!1447 = !DILocation(line: 724, column: 14, scope: !1446)
!1448 = !DILocation(line: 724, column: 41, scope: !1446)
!1449 = !DILocation(line: 724, column: 45, scope: !1446)
!1450 = !DILocation(line: 724, column: 44, scope: !1446)
!1451 = !DILocation(line: 724, column: 6, scope: !1095)
!1452 = !DILocation(line: 729, column: 27, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 729, column: 7)
!1454 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 724, column: 58)
!1455 = !DILocation(line: 729, column: 7, scope: !1453)
!1456 = !DILocation(line: 729, column: 7, scope: !1454)
!1457 = !DILocation(line: 731, column: 33, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 729, column: 34)
!1459 = !DILocation(line: 731, column: 44, scope: !1458)
!1460 = !DILocation(line: 732, column: 12, scope: !1458)
!1461 = !DILocation(line: 731, column: 8, scope: !1458)
!1462 = !DILocation(line: 730, column: 11, scope: !1458)
!1463 = !DILocation(line: 733, column: 8, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 733, column: 8)
!1465 = !DILocation(line: 733, column: 8, scope: !1458)
!1466 = !DILocation(line: 734, column: 5, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 733, column: 30)
!1468 = !DILocation(line: 736, column: 3, scope: !1458)
!1469 = !DILocation(line: 737, column: 2, scope: !1454)
!1470 = !DILocation(line: 744, column: 17, scope: !1095)
!1471 = !DILocation(line: 744, column: 3, scope: !1095)
!1472 = !DILocation(line: 744, column: 15, scope: !1095)
!1473 = !DILocation(line: 745, column: 2, scope: !1095)
!1474 = !DILocation(line: 746, column: 1, scope: !1095)
!1475 = distinct !DISubprogram(name: "acpi_os_free", scope: !1060, file: !1060, line: 60, type: !1476, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !821)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{null, !31}
!1478 = !DILocalVariable(name: "memory", arg: 1, scope: !1475, file: !1060, line: 60, type: !31)
!1479 = !DILocation(line: 60, column: 39, scope: !1475)
!1480 = !DILocation(line: 62, column: 8, scope: !1475)
!1481 = !DILocation(line: 62, column: 2, scope: !1475)
!1482 = !DILocation(line: 63, column: 1, scope: !1475)
!1483 = distinct !DISubprogram(name: "kzalloc", scope: !13, file: !13, line: 662, type: !1484, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !821)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!31, !1486, !806}
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !807, line: 55, baseType: !1487)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1488, line: 72, baseType: !1489)
!1488 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1488, line: 16, baseType: !808)
!1490 = !DILocalVariable(name: "s", arg: 1, scope: !1491, file: !13, line: 445, type: !1494)
!1491 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !13, file: !13, line: 445, type: !1492, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !821)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!31, !1494, !806, !1486}
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1496, line: 117, flags: DIFlagFwdDecl)
!1496 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1497 = !DILocation(line: 445, column: 72, scope: !1491, inlinedAt: !1498)
!1498 = distinct !DILocation(line: 552, column: 10, scope: !1499, inlinedAt: !1502)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !13, line: 540, column: 34)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !13, line: 540, column: 6)
!1501 = distinct !DISubprogram(name: "kmalloc", scope: !13, file: !13, line: 538, type: !1484, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !821)
!1502 = distinct !DILocation(line: 664, column: 9, scope: !1483)
!1503 = !DILocalVariable(name: "flags", arg: 2, scope: !1491, file: !13, line: 446, type: !806)
!1504 = !DILocation(line: 446, column: 9, scope: !1491, inlinedAt: !1498)
!1505 = !DILocalVariable(name: "size", arg: 3, scope: !1491, file: !13, line: 446, type: !1486)
!1506 = !DILocation(line: 446, column: 23, scope: !1491, inlinedAt: !1498)
!1507 = !DILocalVariable(name: "ret", scope: !1491, file: !13, line: 448, type: !31)
!1508 = !DILocation(line: 448, column: 8, scope: !1491, inlinedAt: !1498)
!1509 = !DILocalVariable(name: "flags", arg: 1, scope: !1510, file: !13, line: 318, type: !806)
!1510 = distinct !DISubprogram(name: "kmalloc_type", scope: !13, file: !13, line: 318, type: !1511, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !821)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!12, !806}
!1513 = !DILocation(line: 318, column: 67, scope: !1510, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 553, column: 20, scope: !1499, inlinedAt: !1502)
!1515 = !DILocalVariable(name: "size", arg: 1, scope: !1516, file: !13, line: 346, type: !1486)
!1516 = distinct !DISubprogram(name: "kmalloc_index", scope: !13, file: !13, line: 346, type: !1517, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !821)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!7, !1486}
!1519 = !DILocation(line: 346, column: 58, scope: !1516, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 547, column: 11, scope: !1499, inlinedAt: !1502)
!1521 = !DILocalVariable(name: "size", arg: 1, scope: !1522, file: !13, line: 472, type: !1486)
!1522 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !13, file: !13, line: 472, type: !1523, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !821)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!31, !1486, !806, !7}
!1525 = !DILocation(line: 472, column: 28, scope: !1522, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 481, column: 9, scope: !1527, inlinedAt: !1528)
!1527 = distinct !DISubprogram(name: "kmalloc_large", scope: !13, file: !13, line: 478, type: !1484, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !821)
!1528 = distinct !DILocation(line: 545, column: 11, scope: !1529, inlinedAt: !1502)
!1529 = distinct !DILexicalBlock(scope: !1499, file: !13, line: 544, column: 7)
!1530 = !DILocalVariable(name: "flags", arg: 2, scope: !1522, file: !13, line: 472, type: !806)
!1531 = !DILocation(line: 472, column: 40, scope: !1522, inlinedAt: !1526)
!1532 = !DILocalVariable(name: "order", arg: 3, scope: !1522, file: !13, line: 472, type: !7)
!1533 = !DILocation(line: 472, column: 60, scope: !1522, inlinedAt: !1526)
!1534 = !DILocalVariable(name: "size", arg: 1, scope: !1527, file: !13, line: 478, type: !1486)
!1535 = !DILocation(line: 478, column: 51, scope: !1527, inlinedAt: !1528)
!1536 = !DILocalVariable(name: "flags", arg: 2, scope: !1527, file: !13, line: 478, type: !806)
!1537 = !DILocation(line: 478, column: 63, scope: !1527, inlinedAt: !1528)
!1538 = !DILocalVariable(name: "order", scope: !1527, file: !13, line: 480, type: !7)
!1539 = !DILocation(line: 480, column: 15, scope: !1527, inlinedAt: !1528)
!1540 = !DILocalVariable(name: "size", arg: 1, scope: !1501, file: !13, line: 538, type: !1486)
!1541 = !DILocation(line: 538, column: 45, scope: !1501, inlinedAt: !1502)
!1542 = !DILocalVariable(name: "flags", arg: 2, scope: !1501, file: !13, line: 538, type: !806)
!1543 = !DILocation(line: 538, column: 57, scope: !1501, inlinedAt: !1502)
!1544 = !DILocalVariable(name: "index", scope: !1499, file: !13, line: 542, type: !7)
!1545 = !DILocation(line: 542, column: 16, scope: !1499, inlinedAt: !1502)
!1546 = !DILocalVariable(name: "size", arg: 1, scope: !1483, file: !13, line: 662, type: !1486)
!1547 = !DILocation(line: 662, column: 36, scope: !1483)
!1548 = !DILocalVariable(name: "flags", arg: 2, scope: !1483, file: !13, line: 662, type: !806)
!1549 = !DILocation(line: 662, column: 48, scope: !1483)
!1550 = !DILocation(line: 664, column: 17, scope: !1483)
!1551 = !DILocation(line: 664, column: 23, scope: !1483)
!1552 = !DILocation(line: 664, column: 29, scope: !1483)
!1553 = !DILocation(line: 540, column: 27, scope: !1500, inlinedAt: !1502)
!1554 = !DILocation(line: 540, column: 6, scope: !1500, inlinedAt: !1502)
!1555 = !DILocation(line: 540, column: 6, scope: !1501, inlinedAt: !1502)
!1556 = !DILocation(line: 544, column: 7, scope: !1529, inlinedAt: !1502)
!1557 = !DILocation(line: 544, column: 12, scope: !1529, inlinedAt: !1502)
!1558 = !DILocation(line: 544, column: 7, scope: !1499, inlinedAt: !1502)
!1559 = !DILocation(line: 545, column: 25, scope: !1529, inlinedAt: !1502)
!1560 = !DILocation(line: 545, column: 31, scope: !1529, inlinedAt: !1502)
!1561 = !DILocation(line: 480, column: 33, scope: !1527, inlinedAt: !1528)
!1562 = !DILocation(line: 480, column: 23, scope: !1527, inlinedAt: !1528)
!1563 = !DILocation(line: 481, column: 29, scope: !1527, inlinedAt: !1528)
!1564 = !DILocation(line: 481, column: 35, scope: !1527, inlinedAt: !1528)
!1565 = !DILocation(line: 481, column: 42, scope: !1527, inlinedAt: !1528)
!1566 = !DILocation(line: 474, column: 23, scope: !1522, inlinedAt: !1526)
!1567 = !DILocation(line: 474, column: 29, scope: !1522, inlinedAt: !1526)
!1568 = !DILocation(line: 474, column: 36, scope: !1522, inlinedAt: !1526)
!1569 = !DILocation(line: 474, column: 9, scope: !1522, inlinedAt: !1526)
!1570 = !DILocation(line: 545, column: 4, scope: !1529, inlinedAt: !1502)
!1571 = !DILocation(line: 547, column: 25, scope: !1499, inlinedAt: !1502)
!1572 = !DILocation(line: 348, column: 7, scope: !1573, inlinedAt: !1520)
!1573 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 348, column: 6)
!1574 = !DILocation(line: 348, column: 6, scope: !1516, inlinedAt: !1520)
!1575 = !DILocation(line: 349, column: 3, scope: !1573, inlinedAt: !1520)
!1576 = !DILocation(line: 351, column: 6, scope: !1577, inlinedAt: !1520)
!1577 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 351, column: 6)
!1578 = !DILocation(line: 351, column: 11, scope: !1577, inlinedAt: !1520)
!1579 = !DILocation(line: 351, column: 6, scope: !1516, inlinedAt: !1520)
!1580 = !DILocation(line: 352, column: 3, scope: !1577, inlinedAt: !1520)
!1581 = !DILocation(line: 354, column: 32, scope: !1582, inlinedAt: !1520)
!1582 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 354, column: 6)
!1583 = !DILocation(line: 354, column: 37, scope: !1582, inlinedAt: !1520)
!1584 = !DILocation(line: 354, column: 42, scope: !1582, inlinedAt: !1520)
!1585 = !DILocation(line: 354, column: 45, scope: !1582, inlinedAt: !1520)
!1586 = !DILocation(line: 354, column: 50, scope: !1582, inlinedAt: !1520)
!1587 = !DILocation(line: 354, column: 6, scope: !1516, inlinedAt: !1520)
!1588 = !DILocation(line: 355, column: 3, scope: !1582, inlinedAt: !1520)
!1589 = !DILocation(line: 356, column: 32, scope: !1590, inlinedAt: !1520)
!1590 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 356, column: 6)
!1591 = !DILocation(line: 356, column: 37, scope: !1590, inlinedAt: !1520)
!1592 = !DILocation(line: 356, column: 43, scope: !1590, inlinedAt: !1520)
!1593 = !DILocation(line: 356, column: 46, scope: !1590, inlinedAt: !1520)
!1594 = !DILocation(line: 356, column: 51, scope: !1590, inlinedAt: !1520)
!1595 = !DILocation(line: 356, column: 6, scope: !1516, inlinedAt: !1520)
!1596 = !DILocation(line: 357, column: 3, scope: !1590, inlinedAt: !1520)
!1597 = !DILocation(line: 358, column: 6, scope: !1598, inlinedAt: !1520)
!1598 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 358, column: 6)
!1599 = !DILocation(line: 358, column: 11, scope: !1598, inlinedAt: !1520)
!1600 = !DILocation(line: 358, column: 6, scope: !1516, inlinedAt: !1520)
!1601 = !DILocation(line: 358, column: 26, scope: !1598, inlinedAt: !1520)
!1602 = !DILocation(line: 359, column: 6, scope: !1603, inlinedAt: !1520)
!1603 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 359, column: 6)
!1604 = !DILocation(line: 359, column: 11, scope: !1603, inlinedAt: !1520)
!1605 = !DILocation(line: 359, column: 6, scope: !1516, inlinedAt: !1520)
!1606 = !DILocation(line: 359, column: 26, scope: !1603, inlinedAt: !1520)
!1607 = !DILocation(line: 360, column: 6, scope: !1608, inlinedAt: !1520)
!1608 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 360, column: 6)
!1609 = !DILocation(line: 360, column: 11, scope: !1608, inlinedAt: !1520)
!1610 = !DILocation(line: 360, column: 6, scope: !1516, inlinedAt: !1520)
!1611 = !DILocation(line: 360, column: 26, scope: !1608, inlinedAt: !1520)
!1612 = !DILocation(line: 361, column: 6, scope: !1613, inlinedAt: !1520)
!1613 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 361, column: 6)
!1614 = !DILocation(line: 361, column: 11, scope: !1613, inlinedAt: !1520)
!1615 = !DILocation(line: 361, column: 6, scope: !1516, inlinedAt: !1520)
!1616 = !DILocation(line: 361, column: 26, scope: !1613, inlinedAt: !1520)
!1617 = !DILocation(line: 362, column: 6, scope: !1618, inlinedAt: !1520)
!1618 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 362, column: 6)
!1619 = !DILocation(line: 362, column: 11, scope: !1618, inlinedAt: !1520)
!1620 = !DILocation(line: 362, column: 6, scope: !1516, inlinedAt: !1520)
!1621 = !DILocation(line: 362, column: 26, scope: !1618, inlinedAt: !1520)
!1622 = !DILocation(line: 363, column: 6, scope: !1623, inlinedAt: !1520)
!1623 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 363, column: 6)
!1624 = !DILocation(line: 363, column: 11, scope: !1623, inlinedAt: !1520)
!1625 = !DILocation(line: 363, column: 6, scope: !1516, inlinedAt: !1520)
!1626 = !DILocation(line: 363, column: 26, scope: !1623, inlinedAt: !1520)
!1627 = !DILocation(line: 364, column: 6, scope: !1628, inlinedAt: !1520)
!1628 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 364, column: 6)
!1629 = !DILocation(line: 364, column: 11, scope: !1628, inlinedAt: !1520)
!1630 = !DILocation(line: 364, column: 6, scope: !1516, inlinedAt: !1520)
!1631 = !DILocation(line: 364, column: 26, scope: !1628, inlinedAt: !1520)
!1632 = !DILocation(line: 365, column: 6, scope: !1633, inlinedAt: !1520)
!1633 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 365, column: 6)
!1634 = !DILocation(line: 365, column: 11, scope: !1633, inlinedAt: !1520)
!1635 = !DILocation(line: 365, column: 6, scope: !1516, inlinedAt: !1520)
!1636 = !DILocation(line: 365, column: 26, scope: !1633, inlinedAt: !1520)
!1637 = !DILocation(line: 366, column: 6, scope: !1638, inlinedAt: !1520)
!1638 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 366, column: 6)
!1639 = !DILocation(line: 366, column: 11, scope: !1638, inlinedAt: !1520)
!1640 = !DILocation(line: 366, column: 6, scope: !1516, inlinedAt: !1520)
!1641 = !DILocation(line: 366, column: 26, scope: !1638, inlinedAt: !1520)
!1642 = !DILocation(line: 367, column: 6, scope: !1643, inlinedAt: !1520)
!1643 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 367, column: 6)
!1644 = !DILocation(line: 367, column: 11, scope: !1643, inlinedAt: !1520)
!1645 = !DILocation(line: 367, column: 6, scope: !1516, inlinedAt: !1520)
!1646 = !DILocation(line: 367, column: 26, scope: !1643, inlinedAt: !1520)
!1647 = !DILocation(line: 368, column: 6, scope: !1648, inlinedAt: !1520)
!1648 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 368, column: 6)
!1649 = !DILocation(line: 368, column: 11, scope: !1648, inlinedAt: !1520)
!1650 = !DILocation(line: 368, column: 6, scope: !1516, inlinedAt: !1520)
!1651 = !DILocation(line: 368, column: 26, scope: !1648, inlinedAt: !1520)
!1652 = !DILocation(line: 369, column: 6, scope: !1653, inlinedAt: !1520)
!1653 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 369, column: 6)
!1654 = !DILocation(line: 369, column: 11, scope: !1653, inlinedAt: !1520)
!1655 = !DILocation(line: 369, column: 6, scope: !1516, inlinedAt: !1520)
!1656 = !DILocation(line: 369, column: 26, scope: !1653, inlinedAt: !1520)
!1657 = !DILocation(line: 370, column: 6, scope: !1658, inlinedAt: !1520)
!1658 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 370, column: 6)
!1659 = !DILocation(line: 370, column: 11, scope: !1658, inlinedAt: !1520)
!1660 = !DILocation(line: 370, column: 6, scope: !1516, inlinedAt: !1520)
!1661 = !DILocation(line: 370, column: 26, scope: !1658, inlinedAt: !1520)
!1662 = !DILocation(line: 371, column: 6, scope: !1663, inlinedAt: !1520)
!1663 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 371, column: 6)
!1664 = !DILocation(line: 371, column: 11, scope: !1663, inlinedAt: !1520)
!1665 = !DILocation(line: 371, column: 6, scope: !1516, inlinedAt: !1520)
!1666 = !DILocation(line: 371, column: 26, scope: !1663, inlinedAt: !1520)
!1667 = !DILocation(line: 372, column: 6, scope: !1668, inlinedAt: !1520)
!1668 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 372, column: 6)
!1669 = !DILocation(line: 372, column: 11, scope: !1668, inlinedAt: !1520)
!1670 = !DILocation(line: 372, column: 6, scope: !1516, inlinedAt: !1520)
!1671 = !DILocation(line: 372, column: 26, scope: !1668, inlinedAt: !1520)
!1672 = !DILocation(line: 373, column: 6, scope: !1673, inlinedAt: !1520)
!1673 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 373, column: 6)
!1674 = !DILocation(line: 373, column: 11, scope: !1673, inlinedAt: !1520)
!1675 = !DILocation(line: 373, column: 6, scope: !1516, inlinedAt: !1520)
!1676 = !DILocation(line: 373, column: 26, scope: !1673, inlinedAt: !1520)
!1677 = !DILocation(line: 374, column: 6, scope: !1678, inlinedAt: !1520)
!1678 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 374, column: 6)
!1679 = !DILocation(line: 374, column: 11, scope: !1678, inlinedAt: !1520)
!1680 = !DILocation(line: 374, column: 6, scope: !1516, inlinedAt: !1520)
!1681 = !DILocation(line: 374, column: 26, scope: !1678, inlinedAt: !1520)
!1682 = !DILocation(line: 375, column: 6, scope: !1683, inlinedAt: !1520)
!1683 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 375, column: 6)
!1684 = !DILocation(line: 375, column: 11, scope: !1683, inlinedAt: !1520)
!1685 = !DILocation(line: 375, column: 6, scope: !1516, inlinedAt: !1520)
!1686 = !DILocation(line: 375, column: 27, scope: !1683, inlinedAt: !1520)
!1687 = !DILocation(line: 376, column: 6, scope: !1688, inlinedAt: !1520)
!1688 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 376, column: 6)
!1689 = !DILocation(line: 376, column: 11, scope: !1688, inlinedAt: !1520)
!1690 = !DILocation(line: 376, column: 6, scope: !1516, inlinedAt: !1520)
!1691 = !DILocation(line: 376, column: 32, scope: !1688, inlinedAt: !1520)
!1692 = !DILocation(line: 377, column: 6, scope: !1693, inlinedAt: !1520)
!1693 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 377, column: 6)
!1694 = !DILocation(line: 377, column: 11, scope: !1693, inlinedAt: !1520)
!1695 = !DILocation(line: 377, column: 6, scope: !1516, inlinedAt: !1520)
!1696 = !DILocation(line: 377, column: 32, scope: !1693, inlinedAt: !1520)
!1697 = !DILocation(line: 378, column: 6, scope: !1698, inlinedAt: !1520)
!1698 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 378, column: 6)
!1699 = !DILocation(line: 378, column: 11, scope: !1698, inlinedAt: !1520)
!1700 = !DILocation(line: 378, column: 6, scope: !1516, inlinedAt: !1520)
!1701 = !DILocation(line: 378, column: 32, scope: !1698, inlinedAt: !1520)
!1702 = !DILocation(line: 379, column: 6, scope: !1703, inlinedAt: !1520)
!1703 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 379, column: 6)
!1704 = !DILocation(line: 379, column: 11, scope: !1703, inlinedAt: !1520)
!1705 = !DILocation(line: 379, column: 6, scope: !1516, inlinedAt: !1520)
!1706 = !DILocation(line: 379, column: 33, scope: !1703, inlinedAt: !1520)
!1707 = !DILocation(line: 380, column: 6, scope: !1708, inlinedAt: !1520)
!1708 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 380, column: 6)
!1709 = !DILocation(line: 380, column: 11, scope: !1708, inlinedAt: !1520)
!1710 = !DILocation(line: 380, column: 6, scope: !1516, inlinedAt: !1520)
!1711 = !DILocation(line: 380, column: 33, scope: !1708, inlinedAt: !1520)
!1712 = !DILocation(line: 381, column: 6, scope: !1713, inlinedAt: !1520)
!1713 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 381, column: 6)
!1714 = !DILocation(line: 381, column: 11, scope: !1713, inlinedAt: !1520)
!1715 = !DILocation(line: 381, column: 6, scope: !1516, inlinedAt: !1520)
!1716 = !DILocation(line: 381, column: 33, scope: !1713, inlinedAt: !1520)
!1717 = !DILocation(line: 382, column: 2, scope: !1718, inlinedAt: !1520)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !13, line: 382, column: 2)
!1719 = distinct !DILexicalBlock(scope: !1516, file: !13, line: 382, column: 2)
!1720 = !{i32 -2144099529, i32 -2144099500, i32 -2144099454, i32 -2144099396, i32 -2144099342, i32 -2144099288, i32 -2144099233, i32 -2144099202}
!1721 = !DILocation(line: 382, column: 2, scope: !1722, inlinedAt: !1520)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !13, line: 382, column: 2)
!1723 = distinct !DILexicalBlock(scope: !1719, file: !13, line: 382, column: 2)
!1724 = !{i32 -2144098759, i32 -2144098752, i32 -2144098698, i32 -2144098667, i32 -2144098637}
!1725 = !DILocation(line: 382, column: 2, scope: !1723, inlinedAt: !1520)
!1726 = !DILocation(line: 386, column: 1, scope: !1516, inlinedAt: !1520)
!1727 = !DILocation(line: 547, column: 9, scope: !1499, inlinedAt: !1502)
!1728 = !DILocation(line: 549, column: 8, scope: !1729, inlinedAt: !1502)
!1729 = distinct !DILexicalBlock(scope: !1499, file: !13, line: 549, column: 7)
!1730 = !DILocation(line: 549, column: 7, scope: !1499, inlinedAt: !1502)
!1731 = !DILocation(line: 550, column: 4, scope: !1729, inlinedAt: !1502)
!1732 = !DILocation(line: 553, column: 33, scope: !1499, inlinedAt: !1502)
!1733 = !DILocation(line: 325, column: 6, scope: !1734, inlinedAt: !1514)
!1734 = distinct !DILexicalBlock(scope: !1510, file: !13, line: 325, column: 6)
!1735 = !DILocation(line: 325, column: 6, scope: !1510, inlinedAt: !1514)
!1736 = !DILocation(line: 326, column: 3, scope: !1734, inlinedAt: !1514)
!1737 = !DILocation(line: 332, column: 9, scope: !1510, inlinedAt: !1514)
!1738 = !DILocation(line: 332, column: 15, scope: !1510, inlinedAt: !1514)
!1739 = !DILocation(line: 332, column: 2, scope: !1510, inlinedAt: !1514)
!1740 = !DILocation(line: 336, column: 1, scope: !1510, inlinedAt: !1514)
!1741 = !DILocation(line: 553, column: 5, scope: !1499, inlinedAt: !1502)
!1742 = !DILocation(line: 553, column: 41, scope: !1499, inlinedAt: !1502)
!1743 = !DILocation(line: 554, column: 5, scope: !1499, inlinedAt: !1502)
!1744 = !DILocation(line: 554, column: 12, scope: !1499, inlinedAt: !1502)
!1745 = !DILocation(line: 448, column: 31, scope: !1491, inlinedAt: !1498)
!1746 = !DILocation(line: 448, column: 34, scope: !1491, inlinedAt: !1498)
!1747 = !DILocation(line: 448, column: 14, scope: !1491, inlinedAt: !1498)
!1748 = !DILocation(line: 450, column: 22, scope: !1491, inlinedAt: !1498)
!1749 = !DILocation(line: 450, column: 25, scope: !1491, inlinedAt: !1498)
!1750 = !DILocation(line: 450, column: 30, scope: !1491, inlinedAt: !1498)
!1751 = !DILocation(line: 450, column: 36, scope: !1491, inlinedAt: !1498)
!1752 = !DILocation(line: 450, column: 8, scope: !1491, inlinedAt: !1498)
!1753 = !DILocation(line: 450, column: 6, scope: !1491, inlinedAt: !1498)
!1754 = !DILocation(line: 451, column: 9, scope: !1491, inlinedAt: !1498)
!1755 = !DILocation(line: 552, column: 3, scope: !1499, inlinedAt: !1502)
!1756 = !DILocation(line: 557, column: 19, scope: !1501, inlinedAt: !1502)
!1757 = !DILocation(line: 557, column: 25, scope: !1501, inlinedAt: !1502)
!1758 = !DILocation(line: 557, column: 9, scope: !1501, inlinedAt: !1502)
!1759 = !DILocation(line: 557, column: 2, scope: !1501, inlinedAt: !1502)
!1760 = !DILocation(line: 558, column: 1, scope: !1501, inlinedAt: !1502)
!1761 = !DILocation(line: 664, column: 2, scope: !1483)
!1762 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1763, file: !1763, line: 646, type: !1764, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !821)
!1763 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!808}
!1766 = !DILocalVariable(name: "__ret", scope: !1767, file: !1763, line: 648, type: !808)
!1767 = distinct !DILexicalBlock(scope: !1762, file: !1763, line: 648, column: 9)
!1768 = !DILocation(line: 648, column: 9, scope: !1767)
!1769 = !DILocalVariable(name: "__edi", scope: !1767, file: !1763, line: 648, type: !808)
!1770 = !DILocalVariable(name: "__esi", scope: !1767, file: !1763, line: 648, type: !808)
!1771 = !DILocalVariable(name: "__edx", scope: !1767, file: !1763, line: 648, type: !808)
!1772 = !DILocalVariable(name: "__ecx", scope: !1767, file: !1763, line: 648, type: !808)
!1773 = !DILocalVariable(name: "__eax", scope: !1767, file: !1763, line: 648, type: !808)
!1774 = !DILocation(line: 648, column: 9, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !1763, line: 648, column: 9)
!1776 = distinct !DILexicalBlock(scope: !1767, file: !1763, line: 648, column: 9)
!1777 = !{i32 -2145773135, i32 -2145770820, i32 -2145770586, i32 -2145770535, i32 -2145770507, i32 -2145770482, i32 -2145770798, i32 -2145770785, i32 -2145770347, i32 -2145770228, i32 -2145770693, i32 -2145770666, i32 -2145770638, i32 -2145770608}
!1778 = !DILocalVariable(name: "__mask", scope: !1779, file: !1763, line: 648, type: !808)
!1779 = distinct !DILexicalBlock(scope: !1775, file: !1763, line: 648, column: 9)
!1780 = !DILocation(line: 648, column: 9, scope: !1779)
!1781 = !DILocation(line: 648, column: 9, scope: !1776)
!1782 = !DILocation(line: 648, column: 2, scope: !1762)
!1783 = distinct !DISubprogram(name: "get_order", scope: !1784, file: !1784, line: 29, type: !1066, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !821)
!1784 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1785 = !DILocalVariable(name: "x", arg: 1, scope: !1786, file: !1787, line: 366, type: !28)
!1786 = distinct !DISubprogram(name: "fls64", scope: !1787, file: !1787, line: 366, type: !1788, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !821)
!1787 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!1068, !28}
!1790 = !DILocation(line: 366, column: 40, scope: !1786, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 46, column: 9, scope: !1783)
!1792 = !DILocalVariable(name: "bitpos", scope: !1786, file: !1787, line: 368, type: !1068)
!1793 = !DILocation(line: 368, column: 6, scope: !1786, inlinedAt: !1791)
!1794 = !DILocalVariable(name: "size", arg: 1, scope: !1783, file: !1784, line: 29, type: !808)
!1795 = !DILocation(line: 29, column: 63, scope: !1783)
!1796 = !DILocation(line: 31, column: 27, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1783, file: !1784, line: 31, column: 6)
!1798 = !DILocation(line: 31, column: 6, scope: !1797)
!1799 = !DILocation(line: 31, column: 6, scope: !1783)
!1800 = !DILocation(line: 32, column: 8, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !1784, line: 32, column: 7)
!1802 = distinct !DILexicalBlock(scope: !1797, file: !1784, line: 31, column: 34)
!1803 = !DILocation(line: 32, column: 7, scope: !1802)
!1804 = !DILocation(line: 33, column: 4, scope: !1801)
!1805 = !DILocation(line: 35, column: 7, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1802, file: !1784, line: 35, column: 7)
!1807 = !DILocation(line: 35, column: 12, scope: !1806)
!1808 = !DILocation(line: 35, column: 7, scope: !1802)
!1809 = !DILocation(line: 36, column: 4, scope: !1806)
!1810 = !DILocation(line: 38, column: 10, scope: !1802)
!1811 = !DILocation(line: 38, column: 28, scope: !1802)
!1812 = !DILocation(line: 38, column: 41, scope: !1802)
!1813 = !DILocation(line: 38, column: 3, scope: !1802)
!1814 = !DILocation(line: 41, column: 6, scope: !1783)
!1815 = !DILocation(line: 42, column: 7, scope: !1783)
!1816 = !DILocation(line: 46, column: 15, scope: !1783)
!1817 = !DILocation(line: 374, column: 2, scope: !1786, inlinedAt: !1791)
!1818 = !DILocation(line: 376, column: 14, scope: !1786, inlinedAt: !1791)
!1819 = !{i32 671673}
!1820 = !DILocation(line: 377, column: 9, scope: !1786, inlinedAt: !1791)
!1821 = !DILocation(line: 377, column: 16, scope: !1786, inlinedAt: !1791)
!1822 = !DILocation(line: 46, column: 2, scope: !1783)
!1823 = !DILocation(line: 48, column: 1, scope: !1783)
!1824 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1825, file: !1825, line: 30, type: !1826, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !821)
!1825 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!1068, !27}
!1828 = !DILocation(line: 366, column: 40, scope: !1786, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 32, column: 9, scope: !1824)
!1830 = !DILocation(line: 368, column: 6, scope: !1786, inlinedAt: !1829)
!1831 = !DILocalVariable(name: "n", arg: 1, scope: !1824, file: !1825, line: 30, type: !27)
!1832 = !DILocation(line: 30, column: 21, scope: !1824)
!1833 = !DILocation(line: 32, column: 15, scope: !1824)
!1834 = !DILocation(line: 374, column: 2, scope: !1786, inlinedAt: !1829)
!1835 = !DILocation(line: 376, column: 14, scope: !1786, inlinedAt: !1829)
!1836 = !DILocation(line: 377, column: 9, scope: !1786, inlinedAt: !1829)
!1837 = !DILocation(line: 377, column: 16, scope: !1786, inlinedAt: !1829)
!1838 = !DILocation(line: 32, column: 18, scope: !1824)
!1839 = !DILocation(line: 32, column: 2, scope: !1824)
!1840 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1841, file: !1841, line: 137, type: !1842, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !821)
!1841 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!31, !1494, !1844, !1486, !806}
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1846 = !DILocalVariable(name: "s", arg: 1, scope: !1840, file: !1841, line: 137, type: !1494)
!1847 = !DILocation(line: 137, column: 54, scope: !1840)
!1848 = !DILocalVariable(name: "object", arg: 2, scope: !1840, file: !1841, line: 137, type: !1844)
!1849 = !DILocation(line: 137, column: 69, scope: !1840)
!1850 = !DILocalVariable(name: "size", arg: 3, scope: !1840, file: !1841, line: 138, type: !1486)
!1851 = !DILocation(line: 138, column: 12, scope: !1840)
!1852 = !DILocalVariable(name: "flags", arg: 4, scope: !1840, file: !1841, line: 138, type: !806)
!1853 = !DILocation(line: 138, column: 24, scope: !1840)
!1854 = !DILocation(line: 140, column: 17, scope: !1840)
!1855 = !DILocation(line: 140, column: 2, scope: !1840)
