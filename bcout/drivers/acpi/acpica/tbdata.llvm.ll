; ModuleID = '../bcout/drivers/acpi/acpica/tbdata.llvm.bc'
source_filename = "drivers/acpi/acpica/tbdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_table_list = type { %struct.acpi_table_desc*, i32, i32, i8 }
%struct.acpi_table_desc = type { i64, %struct.acpi_table_header*, i32, %union.acpi_name_union, i16, i8, i16 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%union.acpi_name_union = type { i32 }
%struct.acpi_rw_lock = type { i8*, i8*, i32 }
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

@acpi_gbl_enable_table_validation = external dso_local global i8, align 1
@_acpi_module_name = internal constant [7 x i8] c"tbdata\00", align 1, !dbg !0
@.str = private unnamed_addr constant [53 x i8] c"Invalid signature 0x%X for ACPI table, expected [%s]\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"%4.4s 0x%8.8X%8.8X Attempted table install failed\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"????\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"%4.4s 0x%8.8X%8.8X Table is already loaded\00", align 1
@acpi_gbl_root_table_list = external dso_local global %struct.acpi_table_list, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"Resize of Root Table Array is not allowed\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Could not allocate new root table array\00", align 1
@acpi_gbl_namespace_rw_lock = external dso_local global %struct.acpi_rw_lock, align 8
@acpi_gbl_root_node = external dso_local global %struct.acpi_namespace_node*, align 8
@acpi_gbl_table_handler = external dso_local global i32 (i32, i8*, i8*)*, align 8
@acpi_gbl_table_handler_context = external dso_local global i8*, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_tb_init_table_descriptor(%struct.acpi_table_desc* %table_desc, i64 %address, i8 zeroext %flags, %struct.acpi_table_header* %table) #0 !dbg !66 {
entry:
  %table_desc.addr = alloca %struct.acpi_table_desc*, align 8
  %address.addr = alloca i64, align 8
  %flags.addr = alloca i8, align 1
  %table.addr = alloca %struct.acpi_table_header*, align 8
  store %struct.acpi_table_desc* %table_desc, %struct.acpi_table_desc** %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc** %table_desc.addr, metadata !89, metadata !DIExpression()), !dbg !90
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !91, metadata !DIExpression()), !dbg !92
  store i8 %flags, i8* %flags.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %flags.addr, metadata !93, metadata !DIExpression()), !dbg !94
  store %struct.acpi_table_header* %table, %struct.acpi_table_header** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table.addr, metadata !95, metadata !DIExpression()), !dbg !96
  %0 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !97
  %1 = bitcast %struct.acpi_table_desc* %0 to i8*, !dbg !98
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 32, i1 false), !dbg !98
  %2 = load i64, i64* %address.addr, align 8, !dbg !99
  %3 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !100
  %address1 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %3, i32 0, i32 0, !dbg !101
  store i64 %2, i64* %address1, align 8, !dbg !102
  %4 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table.addr, align 8, !dbg !103
  %length = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %4, i32 0, i32 1, !dbg !104
  %5 = load i32, i32* %length, align 1, !dbg !104
  %6 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !105
  %length2 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %6, i32 0, i32 2, !dbg !106
  store i32 %5, i32* %length2, align 8, !dbg !107
  %7 = load i8, i8* %flags.addr, align 1, !dbg !108
  %8 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !109
  %flags3 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %8, i32 0, i32 5, !dbg !110
  store i8 %7, i8* %flags3, align 2, !dbg !111
  %9 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table.addr, align 8, !dbg !112
  %signature = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %9, i32 0, i32 0, !dbg !112
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %signature, i64 0, i64 0, !dbg !112
  %10 = bitcast i8* %arraydecay to i32*, !dbg !112
  %11 = load i32, i32* %10, align 4, !dbg !112
  %12 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !112
  %signature4 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %12, i32 0, i32 3, !dbg !112
  %ascii = bitcast %union.acpi_name_union* %signature4 to [4 x i8]*, !dbg !112
  %arraydecay5 = getelementptr inbounds [4 x i8], [4 x i8]* %ascii, i64 0, i64 0, !dbg !112
  %13 = bitcast i8* %arraydecay5 to i32*, !dbg !112
  store i32 %11, i32* %13, align 4, !dbg !112
  ret void, !dbg !113
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_tb_acquire_table(%struct.acpi_table_desc* %table_desc, %struct.acpi_table_header** %table_ptr, i32* %table_length, i8* %table_flags) #0 !dbg !114 {
entry:
  %retval = alloca i32, align 4
  %table_desc.addr = alloca %struct.acpi_table_desc*, align 8
  %table_ptr.addr = alloca %struct.acpi_table_header**, align 8
  %table_length.addr = alloca i32*, align 8
  %table_flags.addr = alloca i8*, align 8
  %table = alloca %struct.acpi_table_header*, align 8
  store %struct.acpi_table_desc* %table_desc, %struct.acpi_table_desc** %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc** %table_desc.addr, metadata !119, metadata !DIExpression()), !dbg !120
  store %struct.acpi_table_header** %table_ptr, %struct.acpi_table_header*** %table_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header*** %table_ptr.addr, metadata !121, metadata !DIExpression()), !dbg !122
  store i32* %table_length, i32** %table_length.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %table_length.addr, metadata !123, metadata !DIExpression()), !dbg !124
  store i8* %table_flags, i8** %table_flags.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %table_flags.addr, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table, metadata !127, metadata !DIExpression()), !dbg !128
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %table, align 8, !dbg !128
  %0 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !129
  %flags = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %0, i32 0, i32 5, !dbg !130
  %1 = load i8, i8* %flags, align 2, !dbg !130
  %conv = zext i8 %1 to i32, !dbg !129
  %and = and i32 %conv, 3, !dbg !131
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 0, label %sw.bb2
  ], !dbg !132

sw.bb:                                            ; preds = %entry
  %2 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !133
  %address = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %2, i32 0, i32 0, !dbg !135
  %3 = load i64, i64* %address, align 8, !dbg !135
  %4 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !136
  %length = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %4, i32 0, i32 2, !dbg !137
  %5 = load i32, i32* %length, align 8, !dbg !137
  %conv1 = zext i32 %5 to i64, !dbg !136
  %call = call i8* @acpi_os_map_memory(i64 %3, i64 %conv1) #9, !dbg !138
  %6 = bitcast i8* %call to %struct.acpi_table_header*, !dbg !138
  store %struct.acpi_table_header* %6, %struct.acpi_table_header** %table, align 8, !dbg !139
  br label %sw.epilog, !dbg !140

sw.bb2:                                           ; preds = %entry, %entry
  %7 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !141
  %address3 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %7, i32 0, i32 0, !dbg !141
  %8 = load i64, i64* %address3, align 8, !dbg !141
  %9 = inttoptr i64 %8 to i8*, !dbg !141
  %10 = bitcast i8* %9 to %struct.acpi_table_header*, !dbg !141
  store %struct.acpi_table_header* %10, %struct.acpi_table_header** %table, align 8, !dbg !142
  br label %sw.epilog, !dbg !143

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !144

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  %11 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !145
  %tobool = icmp ne %struct.acpi_table_header* %11, null, !dbg !145
  br i1 %tobool, label %if.end, label %if.then, !dbg !147

if.then:                                          ; preds = %sw.epilog
  store i32 4, i32* %retval, align 4, !dbg !148
  br label %return, !dbg !148

if.end:                                           ; preds = %sw.epilog
  %12 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !150
  %13 = load %struct.acpi_table_header**, %struct.acpi_table_header*** %table_ptr.addr, align 8, !dbg !151
  store %struct.acpi_table_header* %12, %struct.acpi_table_header** %13, align 8, !dbg !152
  %14 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !153
  %length4 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %14, i32 0, i32 2, !dbg !154
  %15 = load i32, i32* %length4, align 8, !dbg !154
  %16 = load i32*, i32** %table_length.addr, align 8, !dbg !155
  store i32 %15, i32* %16, align 4, !dbg !156
  %17 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !157
  %flags5 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %17, i32 0, i32 5, !dbg !158
  %18 = load i8, i8* %flags5, align 2, !dbg !158
  %19 = load i8*, i8** %table_flags.addr, align 8, !dbg !159
  store i8 %18, i8* %19, align 1, !dbg !160
  store i32 0, i32* %retval, align 4, !dbg !161
  br label %return, !dbg !161

return:                                           ; preds = %if.end, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !162
  ret i32 %20, !dbg !162
}

; Function Attrs: noredzone
declare dso_local i8* @acpi_os_map_memory(i64, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_tb_release_table(%struct.acpi_table_header* %table, i32 %table_length, i8 zeroext %table_flags) #0 !dbg !163 {
entry:
  %table.addr = alloca %struct.acpi_table_header*, align 8
  %table_length.addr = alloca i32, align 4
  %table_flags.addr = alloca i8, align 1
  store %struct.acpi_table_header* %table, %struct.acpi_table_header** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table.addr, metadata !166, metadata !DIExpression()), !dbg !167
  store i32 %table_length, i32* %table_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %table_length.addr, metadata !168, metadata !DIExpression()), !dbg !169
  store i8 %table_flags, i8* %table_flags.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %table_flags.addr, metadata !170, metadata !DIExpression()), !dbg !171
  %0 = load i8, i8* %table_flags.addr, align 1, !dbg !172
  %conv = zext i8 %0 to i32, !dbg !172
  %and = and i32 %conv, 3, !dbg !173
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 0, label %sw.bb2
  ], !dbg !174

sw.bb:                                            ; preds = %entry
  %1 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table.addr, align 8, !dbg !175
  %2 = bitcast %struct.acpi_table_header* %1 to i8*, !dbg !175
  %3 = load i32, i32* %table_length.addr, align 4, !dbg !177
  %conv1 = zext i32 %3 to i64, !dbg !177
  call void @acpi_os_unmap_memory(i8* %2, i64 %conv1) #9, !dbg !178
  br label %sw.epilog, !dbg !179

sw.bb2:                                           ; preds = %entry, %entry
  br label %sw.default, !dbg !179

sw.default:                                       ; preds = %entry, %sw.bb2
  br label %sw.epilog, !dbg !180

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void, !dbg !181
}

; Function Attrs: noredzone
declare dso_local void @acpi_os_unmap_memory(i8*, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_tb_acquire_temp_table(%struct.acpi_table_desc* %table_desc, i64 %address, i8 zeroext %flags) #0 !dbg !182 {
entry:
  %retval = alloca i32, align 4
  %table_desc.addr = alloca %struct.acpi_table_desc*, align 8
  %address.addr = alloca i64, align 8
  %flags.addr = alloca i8, align 1
  %table_header = alloca %struct.acpi_table_header*, align 8
  store %struct.acpi_table_desc* %table_desc, %struct.acpi_table_desc** %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc** %table_desc.addr, metadata !185, metadata !DIExpression()), !dbg !186
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !187, metadata !DIExpression()), !dbg !188
  store i8 %flags, i8* %flags.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %flags.addr, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table_header, metadata !191, metadata !DIExpression()), !dbg !192
  %0 = load i8, i8* %flags.addr, align 1, !dbg !193
  %conv = zext i8 %0 to i32, !dbg !193
  %and = and i32 %conv, 3, !dbg !194
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 0, label %sw.bb1
  ], !dbg !195

sw.bb:                                            ; preds = %entry
  %1 = load i64, i64* %address.addr, align 8, !dbg !196
  %call = call i8* @acpi_os_map_memory(i64 %1, i64 36) #9, !dbg !198
  %2 = bitcast i8* %call to %struct.acpi_table_header*, !dbg !198
  store %struct.acpi_table_header* %2, %struct.acpi_table_header** %table_header, align 8, !dbg !199
  %3 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header, align 8, !dbg !200
  %tobool = icmp ne %struct.acpi_table_header* %3, null, !dbg !200
  br i1 %tobool, label %if.end, label %if.then, !dbg !202

if.then:                                          ; preds = %sw.bb
  store i32 4, i32* %retval, align 4, !dbg !203
  br label %return, !dbg !203

if.end:                                           ; preds = %sw.bb
  %4 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !205
  %5 = load i64, i64* %address.addr, align 8, !dbg !206
  %6 = load i8, i8* %flags.addr, align 1, !dbg !207
  %7 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header, align 8, !dbg !208
  call void @acpi_tb_init_table_descriptor(%struct.acpi_table_desc* %4, i64 %5, i8 zeroext %6, %struct.acpi_table_header* %7) #9, !dbg !209
  %8 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header, align 8, !dbg !210
  %9 = bitcast %struct.acpi_table_header* %8 to i8*, !dbg !210
  call void @acpi_os_unmap_memory(i8* %9, i64 36) #9, !dbg !211
  store i32 0, i32* %retval, align 4, !dbg !212
  br label %return, !dbg !212

sw.bb1:                                           ; preds = %entry, %entry
  %10 = load i64, i64* %address.addr, align 8, !dbg !213
  %11 = inttoptr i64 %10 to i8*, !dbg !213
  %12 = bitcast i8* %11 to %struct.acpi_table_header*, !dbg !213
  store %struct.acpi_table_header* %12, %struct.acpi_table_header** %table_header, align 8, !dbg !214
  %13 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header, align 8, !dbg !215
  %tobool2 = icmp ne %struct.acpi_table_header* %13, null, !dbg !215
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !217

if.then3:                                         ; preds = %sw.bb1
  store i32 4, i32* %retval, align 4, !dbg !218
  br label %return, !dbg !218

if.end4:                                          ; preds = %sw.bb1
  %14 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !220
  %15 = load i64, i64* %address.addr, align 8, !dbg !221
  %16 = load i8, i8* %flags.addr, align 1, !dbg !222
  %17 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table_header, align 8, !dbg !223
  call void @acpi_tb_init_table_descriptor(%struct.acpi_table_desc* %14, i64 %15, i8 zeroext %16, %struct.acpi_table_header* %17) #9, !dbg !224
  store i32 0, i32* %retval, align 4, !dbg !225
  br label %return, !dbg !225

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !226

sw.epilog:                                        ; preds = %sw.default
  store i32 4, i32* %retval, align 4, !dbg !227
  br label %return, !dbg !227

return:                                           ; preds = %sw.epilog, %if.end4, %if.then3, %if.end, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !228
  ret i32 %18, !dbg !228
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_tb_release_temp_table(%struct.acpi_table_desc* %table_desc) #0 !dbg !229 {
entry:
  %table_desc.addr = alloca %struct.acpi_table_desc*, align 8
  store %struct.acpi_table_desc* %table_desc, %struct.acpi_table_desc** %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc** %table_desc.addr, metadata !232, metadata !DIExpression()), !dbg !233
  %0 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !234
  call void @acpi_tb_invalidate_table(%struct.acpi_table_desc* %0) #9, !dbg !235
  ret void, !dbg !236
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_tb_invalidate_table(%struct.acpi_table_desc* %table_desc) #0 !dbg !237 {
entry:
  %table_desc.addr = alloca %struct.acpi_table_desc*, align 8
  store %struct.acpi_table_desc* %table_desc, %struct.acpi_table_desc** %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc** %table_desc.addr, metadata !238, metadata !DIExpression()), !dbg !239
  %0 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !240
  %pointer = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %0, i32 0, i32 1, !dbg !242
  %1 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer, align 8, !dbg !242
  %tobool = icmp ne %struct.acpi_table_header* %1, null, !dbg !240
  br i1 %tobool, label %if.end, label %if.then, !dbg !243

if.then:                                          ; preds = %entry
  br label %return, !dbg !244

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !246
  %pointer1 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %2, i32 0, i32 1, !dbg !247
  %3 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer1, align 8, !dbg !247
  %4 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !248
  %length = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %4, i32 0, i32 2, !dbg !249
  %5 = load i32, i32* %length, align 8, !dbg !249
  %6 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !250
  %flags = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %6, i32 0, i32 5, !dbg !251
  %7 = load i8, i8* %flags, align 2, !dbg !251
  call void @acpi_tb_release_table(%struct.acpi_table_header* %3, i32 %5, i8 zeroext %7) #9, !dbg !252
  %8 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !253
  %pointer2 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %8, i32 0, i32 1, !dbg !254
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %pointer2, align 8, !dbg !255
  br label %return, !dbg !256

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !257
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_tb_validate_table(%struct.acpi_table_desc* %table_desc) #0 !dbg !258 {
entry:
  %table_desc.addr = alloca %struct.acpi_table_desc*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_table_desc* %table_desc, %struct.acpi_table_desc** %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc** %table_desc.addr, metadata !261, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.declare(metadata i32* %status, metadata !263, metadata !DIExpression()), !dbg !264
  store i32 0, i32* %status, align 4, !dbg !264
  %0 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !265
  %pointer = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %0, i32 0, i32 1, !dbg !267
  %1 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer, align 8, !dbg !267
  %tobool = icmp ne %struct.acpi_table_header* %1, null, !dbg !265
  br i1 %tobool, label %if.end5, label %if.then, !dbg !268

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !269
  %3 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !271
  %pointer1 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %3, i32 0, i32 1, !dbg !272
  %4 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !273
  %length = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %4, i32 0, i32 2, !dbg !274
  %5 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !275
  %flags = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %5, i32 0, i32 5, !dbg !276
  %call = call i32 @acpi_tb_acquire_table(%struct.acpi_table_desc* %2, %struct.acpi_table_header** %pointer1, i32* %length, i8* %flags) #9, !dbg !277
  store i32 %call, i32* %status, align 4, !dbg !278
  %6 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !279
  %pointer2 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %6, i32 0, i32 1, !dbg !281
  %7 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer2, align 8, !dbg !281
  %tobool3 = icmp ne %struct.acpi_table_header* %7, null, !dbg !279
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !282

if.then4:                                         ; preds = %if.then
  store i32 4, i32* %status, align 4, !dbg !283
  br label %if.end, !dbg !285

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end5, !dbg !286

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* %status, align 4, !dbg !287
  ret i32 %8, !dbg !287
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_tb_validate_temp_table(%struct.acpi_table_desc* %table_desc) #0 !dbg !288 {
entry:
  %table_desc.addr = alloca %struct.acpi_table_desc*, align 8
  store %struct.acpi_table_desc* %table_desc, %struct.acpi_table_desc** %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc** %table_desc.addr, metadata !289, metadata !DIExpression()), !dbg !290
  %0 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !291
  %pointer = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %0, i32 0, i32 1, !dbg !293
  %1 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer, align 8, !dbg !293
  %tobool = icmp ne %struct.acpi_table_header* %1, null, !dbg !291
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !294

land.lhs.true:                                    ; preds = %entry
  %2 = load i8, i8* @acpi_gbl_enable_table_validation, align 1, !dbg !295
  %tobool1 = icmp ne i8 %2, 0, !dbg !295
  br i1 %tobool1, label %if.end, label %if.then, !dbg !296

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !297
  %length = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %3, i32 0, i32 2, !dbg !299
  store i32 36, i32* %length, align 8, !dbg !300
  br label %if.end, !dbg !301

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !302
  %call = call i32 @acpi_tb_validate_table(%struct.acpi_table_desc* %4) #9, !dbg !303
  ret i32 %call, !dbg !304
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_tb_verify_temp_table(%struct.acpi_table_desc* %table_desc, i8* %signature, i32* %table_index) #0 !dbg !305 {
entry:
  %retval = alloca i32, align 4
  %table_desc.addr = alloca %struct.acpi_table_desc*, align 8
  %signature.addr = alloca i8*, align 8
  %table_index.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_table_desc* %table_desc, %struct.acpi_table_desc** %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc** %table_desc.addr, metadata !309, metadata !DIExpression()), !dbg !310
  store i8* %signature, i8** %signature.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %signature.addr, metadata !311, metadata !DIExpression()), !dbg !312
  store i32* %table_index, i32** %table_index.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %table_index.addr, metadata !313, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.declare(metadata i32* %status, metadata !315, metadata !DIExpression()), !dbg !316
  store i32 0, i32* %status, align 4, !dbg !316
  %0 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !317
  %call = call i32 @acpi_tb_validate_temp_table(%struct.acpi_table_desc* %0) #9, !dbg !318
  store i32 %call, i32* %status, align 4, !dbg !319
  %1 = load i32, i32* %status, align 4, !dbg !320
  %tobool = icmp ne i32 %1, 0, !dbg !320
  br i1 %tobool, label %if.then, label %if.end, !dbg !322

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !323
  br label %return, !dbg !323

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %signature.addr, align 8, !dbg !325
  %tobool1 = icmp ne i8* %2, null, !dbg !325
  br i1 %tobool1, label %land.lhs.true, label %if.end5, !dbg !327

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !328
  %signature2 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %3, i32 0, i32 3, !dbg !328
  %4 = bitcast %union.acpi_name_union* %signature2 to i8*, !dbg !328
  %5 = bitcast i8* %4 to i32*, !dbg !328
  %6 = load i32, i32* %5, align 4, !dbg !328
  %7 = load i8*, i8** %signature.addr, align 8, !dbg !328
  %8 = bitcast i8* %7 to i32*, !dbg !328
  %9 = load i32, i32* %8, align 4, !dbg !328
  %cmp = icmp eq i32 %6, %9, !dbg !328
  br i1 %cmp, label %if.end5, label %if.then3, !dbg !329

if.then3:                                         ; preds = %land.lhs.true
  %10 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !330
  %signature4 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %10, i32 0, i32 3, !dbg !330
  %integer = bitcast %union.acpi_name_union* %signature4 to i32*, !dbg !330
  %11 = load i32, i32* %integer, align 4, !dbg !330
  %12 = load i8*, i8** %signature.addr, align 8, !dbg !330
  call void (i8*, i32, i8*, ...) @acpi_bios_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 485, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %11, i8* %12) #9, !dbg !330
  store i32 8193, i32* %status, align 4, !dbg !332
  br label %invalidate_and_exit, !dbg !333

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %13 = load i8, i8* @acpi_gbl_enable_table_validation, align 1, !dbg !334
  %tobool6 = icmp ne i8 %13, 0, !dbg !334
  br i1 %tobool6, label %if.then7, label %if.end52, !dbg !336

if.then7:                                         ; preds = %if.end5
  %14 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !337
  %pointer = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %14, i32 0, i32 1, !dbg !339
  %15 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer, align 8, !dbg !339
  %16 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !340
  %length = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %16, i32 0, i32 2, !dbg !341
  %17 = load i32, i32* %length, align 8, !dbg !341
  %call8 = call i32 @acpi_tb_verify_checksum(%struct.acpi_table_header* %15, i32 %17) #9, !dbg !342
  store i32 %call8, i32* %status, align 4, !dbg !343
  %18 = load i32, i32* %status, align 4, !dbg !344
  %tobool9 = icmp ne i32 %18, 0, !dbg !344
  br i1 %tobool9, label %if.then10, label %if.end20, !dbg !346

if.then10:                                        ; preds = %if.then7
  %19 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !347
  %signature11 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %19, i32 0, i32 3, !dbg !347
  %ascii = bitcast %union.acpi_name_union* %signature11 to [4 x i8]*, !dbg !347
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ascii, i64 0, i64 0, !dbg !347
  %call12 = call zeroext i8 @acpi_ut_valid_nameseg(i8* %arraydecay) #9, !dbg !347
  %conv = zext i8 %call12 to i32, !dbg !347
  %tobool13 = icmp ne i32 %conv, 0, !dbg !347
  br i1 %tobool13, label %cond.true, label %cond.false, !dbg !347

cond.true:                                        ; preds = %if.then10
  %20 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !347
  %signature14 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %20, i32 0, i32 3, !dbg !347
  %ascii15 = bitcast %union.acpi_name_union* %signature14 to [4 x i8]*, !dbg !347
  %arraydecay16 = getelementptr inbounds [4 x i8], [4 x i8]* %ascii15, i64 0, i64 0, !dbg !347
  br label %cond.end, !dbg !347

cond.false:                                       ; preds = %if.then10
  br label %cond.end, !dbg !347

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %arraydecay16, %cond.true ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %cond.false ], !dbg !347
  %21 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !347
  %address = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %21, i32 0, i32 0, !dbg !347
  %22 = load i64, i64* %address, align 8, !dbg !347
  %shr = lshr i64 %22, 32, !dbg !347
  %conv17 = trunc i64 %shr to i32, !dbg !347
  %23 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !347
  %address18 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %23, i32 0, i32 0, !dbg !347
  %24 = load i64, i64* %address18, align 8, !dbg !347
  %conv19 = trunc i64 %24 to i32, !dbg !347
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 500, i32 4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %cond, i32 %conv17, i32 %conv19) #9, !dbg !347
  br label %invalidate_and_exit, !dbg !349

if.end20:                                         ; preds = %if.then7
  %25 = load i32*, i32** %table_index.addr, align 8, !dbg !350
  %tobool21 = icmp ne i32* %25, null, !dbg !350
  br i1 %tobool21, label %if.then22, label %if.end49, !dbg !352

if.then22:                                        ; preds = %if.end20
  %26 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !353
  %27 = load i32*, i32** %table_index.addr, align 8, !dbg !355
  %call23 = call i32 @acpi_tb_check_duplication(%struct.acpi_table_desc* %26, i32* %27) #9, !dbg !356
  store i32 %call23, i32* %status, align 4, !dbg !357
  %28 = load i32, i32* %status, align 4, !dbg !358
  %tobool24 = icmp ne i32 %28, 0, !dbg !358
  br i1 %tobool24, label %if.then25, label %if.end48, !dbg !360

if.then25:                                        ; preds = %if.then22
  %29 = load i32, i32* %status, align 4, !dbg !361
  %cmp26 = icmp ne i32 %29, 16387, !dbg !364
  br i1 %cmp26, label %if.then28, label %if.end47, !dbg !365

if.then28:                                        ; preds = %if.then25
  %30 = load i32, i32* %status, align 4, !dbg !366
  %31 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !366
  %signature29 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %31, i32 0, i32 3, !dbg !366
  %ascii30 = bitcast %union.acpi_name_union* %signature29 to [4 x i8]*, !dbg !366
  %arraydecay31 = getelementptr inbounds [4 x i8], [4 x i8]* %ascii30, i64 0, i64 0, !dbg !366
  %call32 = call zeroext i8 @acpi_ut_valid_nameseg(i8* %arraydecay31) #9, !dbg !366
  %conv33 = zext i8 %call32 to i32, !dbg !366
  %tobool34 = icmp ne i32 %conv33, 0, !dbg !366
  br i1 %tobool34, label %cond.true35, label %cond.false39, !dbg !366

cond.true35:                                      ; preds = %if.then28
  %32 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !366
  %signature36 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %32, i32 0, i32 3, !dbg !366
  %ascii37 = bitcast %union.acpi_name_union* %signature36 to [4 x i8]*, !dbg !366
  %arraydecay38 = getelementptr inbounds [4 x i8], [4 x i8]* %ascii37, i64 0, i64 0, !dbg !366
  br label %cond.end40, !dbg !366

cond.false39:                                     ; preds = %if.then28
  br label %cond.end40, !dbg !366

cond.end40:                                       ; preds = %cond.false39, %cond.true35
  %cond41 = phi i8* [ %arraydecay38, %cond.true35 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %cond.false39 ], !dbg !366
  %33 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !366
  %address42 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %33, i32 0, i32 0, !dbg !366
  %34 = load i64, i64* %address42, align 8, !dbg !366
  %shr43 = lshr i64 %34, 32, !dbg !366
  %conv44 = trunc i64 %shr43 to i32, !dbg !366
  %35 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !366
  %address45 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %35, i32 0, i32 0, !dbg !366
  %36 = load i64, i64* %address45, align 8, !dbg !366
  %conv46 = trunc i64 %36 to i32, !dbg !366
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 520, i32 %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %cond41, i32 %conv44, i32 %conv46) #9, !dbg !366
  br label %if.end47, !dbg !368

if.end47:                                         ; preds = %cond.end40, %if.then25
  br label %invalidate_and_exit, !dbg !369

if.end48:                                         ; preds = %if.then22
  br label %if.end49, !dbg !370

if.end49:                                         ; preds = %if.end48, %if.end20
  %37 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !371
  %flags = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %37, i32 0, i32 5, !dbg !372
  %38 = load i8, i8* %flags, align 2, !dbg !373
  %conv50 = zext i8 %38 to i32, !dbg !373
  %or = or i32 %conv50, 4, !dbg !373
  %conv51 = trunc i32 %or to i8, !dbg !373
  store i8 %conv51, i8* %flags, align 2, !dbg !373
  br label %if.end52, !dbg !374

if.end52:                                         ; preds = %if.end49, %if.end5
  %39 = load i32, i32* %status, align 4, !dbg !375
  store i32 %39, i32* %retval, align 4, !dbg !375
  br label %return, !dbg !375

invalidate_and_exit:                              ; preds = %if.end47, %cond.end, %if.then3
  call void @llvm.dbg.label(metadata !376), !dbg !377
  %40 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !378
  call void @acpi_tb_invalidate_table(%struct.acpi_table_desc* %40) #9, !dbg !379
  %41 = load i32, i32* %status, align 4, !dbg !380
  store i32 %41, i32* %retval, align 4, !dbg !380
  br label %return, !dbg !380

return:                                           ; preds = %invalidate_and_exit, %if.end52, %if.then
  %42 = load i32, i32* %retval, align 4, !dbg !381
  ret i32 %42, !dbg !381
}

; Function Attrs: noredzone
declare dso_local void @acpi_bios_error(i8*, i32, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_verify_checksum(%struct.acpi_table_header*, i32) #3

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ut_valid_nameseg(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_tb_check_duplication(%struct.acpi_table_desc* %table_desc, i32* %table_index) #0 !dbg !382 {
entry:
  %retval = alloca i32, align 4
  %table_desc.addr = alloca %struct.acpi_table_desc*, align 8
  %table_index.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store %struct.acpi_table_desc* %table_desc, %struct.acpi_table_desc** %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc** %table_desc.addr, metadata !385, metadata !DIExpression()), !dbg !386
  store i32* %table_index, i32** %table_index.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %table_index.addr, metadata !387, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.declare(metadata i32* %i, metadata !389, metadata !DIExpression()), !dbg !390
  store i32 0, i32* %i, align 4, !dbg !391
  br label %for.cond, !dbg !393

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !394
  %1 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !396
  %cmp = icmp ult i32 %0, %1, !dbg !397
  br i1 %cmp, label %for.body, label %for.end, !dbg !398

for.body:                                         ; preds = %for.cond
  %2 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !399
  %3 = load i32, i32* %i, align 4, !dbg !402
  %idxprom = zext i32 %3 to i64, !dbg !403
  %arrayidx = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %2, i64 %idxprom, !dbg !403
  %flags = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx, i32 0, i32 5, !dbg !404
  %4 = load i8, i8* %flags, align 2, !dbg !404
  %conv = zext i8 %4 to i32, !dbg !403
  %and = and i32 %conv, 4, !dbg !405
  %tobool = icmp ne i32 %and, 0, !dbg !405
  br i1 %tobool, label %if.end, label %if.then, !dbg !406

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !407

if.end:                                           ; preds = %for.body
  %5 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !409
  %6 = load i32, i32* %i, align 4, !dbg !411
  %call = call zeroext i8 @acpi_tb_compare_tables(%struct.acpi_table_desc* %5, i32 %6) #9, !dbg !412
  %tobool1 = icmp ne i8 %call, 0, !dbg !412
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !413

if.then2:                                         ; preds = %if.end
  br label %for.inc, !dbg !414

if.end3:                                          ; preds = %if.end
  %7 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !416
  %8 = load i32, i32* %i, align 4, !dbg !418
  %idxprom4 = zext i32 %8 to i64, !dbg !419
  %arrayidx5 = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %7, i64 %idxprom4, !dbg !419
  %flags6 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx5, i32 0, i32 5, !dbg !420
  %9 = load i8, i8* %flags6, align 2, !dbg !420
  %conv7 = zext i8 %9 to i32, !dbg !419
  %and8 = and i32 %conv7, 8, !dbg !421
  %tobool9 = icmp ne i32 %and8, 0, !dbg !421
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !422

if.then10:                                        ; preds = %if.end3
  store i32 7, i32* %retval, align 4, !dbg !423
  br label %return, !dbg !423

if.else:                                          ; preds = %if.end3
  %10 = load i32, i32* %i, align 4, !dbg !425
  %11 = load i32*, i32** %table_index.addr, align 8, !dbg !427
  store i32 %10, i32* %11, align 4, !dbg !428
  store i32 16387, i32* %retval, align 4, !dbg !429
  br label %return, !dbg !429

for.inc:                                          ; preds = %if.then2, %if.then
  %12 = load i32, i32* %i, align 4, !dbg !430
  %inc = add i32 %12, 1, !dbg !430
  store i32 %inc, i32* %i, align 4, !dbg !430
  br label %for.cond, !dbg !431, !llvm.loop !432

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !434
  br label %return, !dbg !434

return:                                           ; preds = %for.end, %if.else, %if.then10
  %13 = load i32, i32* %retval, align 4, !dbg !435
  ret i32 %13, !dbg !435
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_tb_resize_root_table_list() #0 !dbg !436 {
entry:
  %retval = alloca i32, align 4
  %tables = alloca %struct.acpi_table_desc*, align 8
  %table_count = alloca i32, align 4
  %current_table_count = alloca i32, align 4
  %max_table_count = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc** %tables, metadata !439, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.declare(metadata i32* %table_count, metadata !441, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.declare(metadata i32* %current_table_count, metadata !443, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.declare(metadata i32* %max_table_count, metadata !445, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.declare(metadata i32* %i, metadata !447, metadata !DIExpression()), !dbg !448
  %0 = load i8, i8* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !449
  %conv = zext i8 %0 to i32, !dbg !451
  %and = and i32 %conv, 2, !dbg !452
  %tobool = icmp ne i32 %and, 0, !dbg !452
  br i1 %tobool, label %if.end, label %if.then, !dbg !453

if.then:                                          ; preds = %entry
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 570, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !454
  store i32 15, i32* %retval, align 4, !dbg !456
  br label %return, !dbg !456

if.end:                                           ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !457
  %conv1 = zext i8 %1 to i32, !dbg !459
  %and2 = and i32 %conv1, 1, !dbg !460
  %tobool3 = icmp ne i32 %and2, 0, !dbg !460
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !461

if.then4:                                         ; preds = %if.end
  %2 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 2), align 4, !dbg !462
  store i32 %2, i32* %table_count, align 4, !dbg !464
  br label %if.end5, !dbg !465

if.else:                                          ; preds = %if.end
  %3 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !466
  store i32 %3, i32* %table_count, align 4, !dbg !468
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %4 = load i32, i32* %table_count, align 4, !dbg !469
  %add = add i32 %4, 4, !dbg !470
  store i32 %add, i32* %max_table_count, align 4, !dbg !471
  %5 = load i32, i32* %max_table_count, align 4, !dbg !472
  %conv6 = zext i32 %5 to i64, !dbg !472
  %mul = mul i64 %conv6, 32, !dbg !472
  %call = call i8* @acpi_os_allocate_zeroed(i64 %mul) #9, !dbg !472
  %6 = bitcast i8* %call to %struct.acpi_table_desc*, !dbg !472
  store %struct.acpi_table_desc* %6, %struct.acpi_table_desc** %tables, align 8, !dbg !473
  %7 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %tables, align 8, !dbg !474
  %tobool7 = icmp ne %struct.acpi_table_desc* %7, null, !dbg !474
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !476

if.then8:                                         ; preds = %if.end5
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 587, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !477
  store i32 4, i32* %retval, align 4, !dbg !479
  br label %return, !dbg !479

if.end9:                                          ; preds = %if.end5
  store i32 0, i32* %current_table_count, align 4, !dbg !480
  %8 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !481
  %tobool10 = icmp ne %struct.acpi_table_desc* %8, null, !dbg !483
  br i1 %tobool10, label %if.then11, label %if.end24, !dbg !484

if.then11:                                        ; preds = %if.end9
  store i32 0, i32* %i, align 4, !dbg !485
  br label %for.cond, !dbg !488

for.cond:                                         ; preds = %for.inc, %if.then11
  %9 = load i32, i32* %i, align 4, !dbg !489
  %10 = load i32, i32* %table_count, align 4, !dbg !491
  %cmp = icmp ult i32 %9, %10, !dbg !492
  br i1 %cmp, label %for.body, label %for.end, !dbg !493

for.body:                                         ; preds = %for.cond
  %11 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !494
  %12 = load i32, i32* %i, align 4, !dbg !497
  %idxprom = zext i32 %12 to i64, !dbg !498
  %arrayidx = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %11, i64 %idxprom, !dbg !498
  %address = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx, i32 0, i32 0, !dbg !499
  %13 = load i64, i64* %address, align 8, !dbg !499
  %tobool13 = icmp ne i64 %13, 0, !dbg !498
  br i1 %tobool13, label %if.then14, label %if.end17, !dbg !500

if.then14:                                        ; preds = %for.body
  %14 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %tables, align 8, !dbg !501
  %15 = load i32, i32* %current_table_count, align 4, !dbg !503
  %idx.ext = zext i32 %15 to i64, !dbg !504
  %add.ptr = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %14, i64 %idx.ext, !dbg !504
  %16 = bitcast %struct.acpi_table_desc* %add.ptr to i8*, !dbg !505
  %17 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !506
  %18 = load i32, i32* %i, align 4, !dbg !507
  %idx.ext15 = zext i32 %18 to i64, !dbg !508
  %add.ptr16 = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %17, i64 %idx.ext15, !dbg !508
  %19 = bitcast %struct.acpi_table_desc* %add.ptr16 to i8*, !dbg !505
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %19, i64 32, i1 false), !dbg !505
  %20 = load i32, i32* %current_table_count, align 4, !dbg !509
  %inc = add i32 %20, 1, !dbg !509
  store i32 %inc, i32* %current_table_count, align 4, !dbg !509
  br label %if.end17, !dbg !510

if.end17:                                         ; preds = %if.then14, %for.body
  br label %for.inc, !dbg !511

for.inc:                                          ; preds = %if.end17
  %21 = load i32, i32* %i, align 4, !dbg !512
  %inc18 = add i32 %21, 1, !dbg !512
  store i32 %inc18, i32* %i, align 4, !dbg !512
  br label %for.cond, !dbg !513, !llvm.loop !514

for.end:                                          ; preds = %for.cond
  %22 = load i8, i8* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !516
  %conv19 = zext i8 %22 to i32, !dbg !518
  %and20 = and i32 %conv19, 1, !dbg !519
  %tobool21 = icmp ne i32 %and20, 0, !dbg !519
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !520

if.then22:                                        ; preds = %for.end
  %23 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !521
  %24 = bitcast %struct.acpi_table_desc* %23 to i8*, !dbg !521
  call void @acpi_os_free(i8* %24) #9, !dbg !521
  br label %if.end23, !dbg !523

if.end23:                                         ; preds = %if.then22, %for.end
  br label %if.end24, !dbg !524

if.end24:                                         ; preds = %if.end23, %if.end9
  %25 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %tables, align 8, !dbg !525
  store %struct.acpi_table_desc* %25, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !526
  %26 = load i32, i32* %max_table_count, align 4, !dbg !527
  store i32 %26, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 2), align 4, !dbg !528
  %27 = load i32, i32* %current_table_count, align 4, !dbg !529
  store i32 %27, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !530
  %28 = load i8, i8* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !531
  %conv25 = zext i8 %28 to i32, !dbg !531
  %or = or i32 %conv25, 1, !dbg !531
  %conv26 = trunc i32 %or to i8, !dbg !531
  store i8 %conv26, i8* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !531
  store i32 0, i32* %retval, align 4, !dbg !532
  br label %return, !dbg !532

return:                                           ; preds = %if.end24, %if.then8, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !533
  ret i32 %29, !dbg !533
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !534 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !538, metadata !DIExpression()), !dbg !544
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !548, metadata !DIExpression()), !dbg !549
  %0 = load i64, i64* %size.addr, align 8, !dbg !550
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !551, metadata !DIExpression()), !dbg !552
  br label %do.body, !dbg !552

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !553, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !557, metadata !DIExpression()), !dbg !556
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !556
  %conv = zext i1 %cmp to i32, !dbg !556
  store i32 1, i32* %tmp, align 4, !dbg !556
  %1 = load i32, i32* %tmp, align 4, !dbg !556
  %call = call i64 @arch_local_save_flags() #9, !dbg !558
  store i64 %call, i64* %_flags, align 8, !dbg !558
  br label %do.end, !dbg !558

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !559, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !562, metadata !DIExpression()), !dbg !561
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !561
  %conv6 = zext i1 %cmp5 to i32, !dbg !561
  store i32 1, i32* %tmp7, align 4, !dbg !561
  %2 = load i32, i32* %tmp7, align 4, !dbg !561
  %3 = load i64, i64* %_flags, align 8, !dbg !563
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !564
  %and.i = and i64 %4, 512, !dbg !565
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !566
  %lnot.i = xor i1 %tobool.i, true, !dbg !566
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !566
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !563
  %5 = load i32, i32* %tmp8, align 4, !dbg !563
  store i32 %5, i32* %tmp1, align 4, !dbg !558
  %6 = load i32, i32* %tmp1, align 4, !dbg !552
  %tobool = icmp ne i32 %6, 0, !dbg !567
  %7 = zext i1 %tobool to i64, !dbg !567
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !567
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #9, !dbg !568
  ret i8* %call10, !dbg !569
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !570 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !573, metadata !DIExpression()), !dbg !574
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !575
  call void @kfree(i8* %0) #9, !dbg !576
  ret void, !dbg !577
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_tb_get_next_table_descriptor(i32* %table_index, %struct.acpi_table_desc** %table_desc) #0 !dbg !578 {
entry:
  %retval = alloca i32, align 4
  %table_index.addr = alloca i32*, align 8
  %table_desc.addr = alloca %struct.acpi_table_desc**, align 8
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %table_index, i32** %table_index.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %table_index.addr, metadata !582, metadata !DIExpression()), !dbg !583
  store %struct.acpi_table_desc** %table_desc, %struct.acpi_table_desc*** %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc*** %table_desc.addr, metadata !584, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.declare(metadata i32* %status, metadata !586, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.declare(metadata i32* %i, metadata !588, metadata !DIExpression()), !dbg !589
  %0 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !590
  %1 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 2), align 4, !dbg !592
  %cmp = icmp uge i32 %0, %1, !dbg !593
  br i1 %cmp, label %if.then, label %if.end2, !dbg !594

if.then:                                          ; preds = %entry
  %call = call i32 @acpi_tb_resize_root_table_list() #9, !dbg !595
  store i32 %call, i32* %status, align 4, !dbg !597
  %2 = load i32, i32* %status, align 4, !dbg !598
  %tobool = icmp ne i32 %2, 0, !dbg !598
  br i1 %tobool, label %if.then1, label %if.end, !dbg !600

if.then1:                                         ; preds = %if.then
  %3 = load i32, i32* %status, align 4, !dbg !601
  store i32 %3, i32* %retval, align 4, !dbg !603
  br label %return, !dbg !603

if.end:                                           ; preds = %if.then
  br label %if.end2, !dbg !604

if.end2:                                          ; preds = %if.end, %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !605
  store i32 %4, i32* %i, align 4, !dbg !606
  %5 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !607
  %inc = add i32 %5, 1, !dbg !607
  store i32 %inc, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !607
  %6 = load i32*, i32** %table_index.addr, align 8, !dbg !608
  %tobool3 = icmp ne i32* %6, null, !dbg !608
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !610

if.then4:                                         ; preds = %if.end2
  %7 = load i32, i32* %i, align 4, !dbg !611
  %8 = load i32*, i32** %table_index.addr, align 8, !dbg !613
  store i32 %7, i32* %8, align 4, !dbg !614
  br label %if.end5, !dbg !615

if.end5:                                          ; preds = %if.then4, %if.end2
  %9 = load %struct.acpi_table_desc**, %struct.acpi_table_desc*** %table_desc.addr, align 8, !dbg !616
  %tobool6 = icmp ne %struct.acpi_table_desc** %9, null, !dbg !616
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !618

if.then7:                                         ; preds = %if.end5
  %10 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !619
  %11 = load i32, i32* %i, align 4, !dbg !621
  %idxprom = zext i32 %11 to i64, !dbg !622
  %arrayidx = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %10, i64 %idxprom, !dbg !622
  %12 = load %struct.acpi_table_desc**, %struct.acpi_table_desc*** %table_desc.addr, align 8, !dbg !623
  store %struct.acpi_table_desc* %arrayidx, %struct.acpi_table_desc** %12, align 8, !dbg !624
  br label %if.end8, !dbg !625

if.end8:                                          ; preds = %if.then7, %if.end5
  store i32 0, i32* %retval, align 4, !dbg !626
  br label %return, !dbg !626

return:                                           ; preds = %if.end8, %if.then1
  %13 = load i32, i32* %retval, align 4, !dbg !627
  ret i32 %13, !dbg !627
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_tb_terminate() #0 !dbg !628 {
entry:
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !631, metadata !DIExpression()), !dbg !632
  %call = call i32 @acpi_ut_acquire_mutex(i32 2) #9, !dbg !633
  store i32 0, i32* %i, align 4, !dbg !634
  br label %for.cond, !dbg !636

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !637
  %1 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !639
  %cmp = icmp ult i32 %0, %1, !dbg !640
  br i1 %cmp, label %for.body, label %for.end, !dbg !641

for.body:                                         ; preds = %for.cond
  %2 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !642
  %3 = load i32, i32* %i, align 4, !dbg !644
  %idxprom = zext i32 %3 to i64, !dbg !645
  %arrayidx = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %2, i64 %idxprom, !dbg !645
  call void @acpi_tb_uninstall_table(%struct.acpi_table_desc* %arrayidx) #9, !dbg !646
  br label %for.inc, !dbg !647

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !648
  %inc = add i32 %4, 1, !dbg !648
  store i32 %inc, i32* %i, align 4, !dbg !648
  br label %for.cond, !dbg !649, !llvm.loop !650

for.end:                                          ; preds = %for.cond
  %5 = load i8, i8* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !652
  %conv = zext i8 %5 to i32, !dbg !654
  %and = and i32 %conv, 1, !dbg !655
  %tobool = icmp ne i32 %and, 0, !dbg !655
  br i1 %tobool, label %if.then, label %if.end, !dbg !656

if.then:                                          ; preds = %for.end
  %6 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !657
  %7 = bitcast %struct.acpi_table_desc* %6 to i8*, !dbg !657
  call void @acpi_os_free(i8* %7) #9, !dbg !657
  br label %if.end, !dbg !659

if.end:                                           ; preds = %if.then, %for.end
  store %struct.acpi_table_desc* null, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !660
  store i8 0, i8* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 3), align 8, !dbg !661
  store i32 0, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !662
  %call1 = call i32 @acpi_ut_release_mutex(i32 2) #9, !dbg !663
  ret void, !dbg !664
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_mutex(i32) #3

; Function Attrs: noredzone
declare dso_local void @acpi_tb_uninstall_table(%struct.acpi_table_desc*) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_release_mutex(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_tb_delete_namespace_by_owner(i32 %table_index) #0 !dbg !665 {
entry:
  %retval = alloca i32, align 4
  %table_index.addr = alloca i32, align 4
  %owner_id = alloca i16, align 2
  %status = alloca i32, align 4
  store i32 %table_index, i32* %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %table_index.addr, metadata !668, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.declare(metadata i16* %owner_id, metadata !670, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.declare(metadata i32* %status, metadata !672, metadata !DIExpression()), !dbg !673
  %call = call i32 @acpi_ut_acquire_mutex(i32 2) #9, !dbg !674
  store i32 %call, i32* %status, align 4, !dbg !675
  %0 = load i32, i32* %status, align 4, !dbg !676
  %tobool = icmp ne i32 %0, 0, !dbg !676
  br i1 %tobool, label %if.then, label %if.end, !dbg !678

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4, !dbg !679
  store i32 %1, i32* %retval, align 4, !dbg !679
  br label %return, !dbg !679

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %table_index.addr, align 4, !dbg !681
  %3 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !683
  %cmp = icmp uge i32 %2, %3, !dbg !684
  br i1 %cmp, label %if.then1, label %if.end3, !dbg !685

if.then1:                                         ; preds = %if.end
  %call2 = call i32 @acpi_ut_release_mutex(i32 2) #9, !dbg !686
  store i32 6, i32* %retval, align 4, !dbg !688
  br label %return, !dbg !688

if.end3:                                          ; preds = %if.end
  %4 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !689
  %5 = load i32, i32* %table_index.addr, align 4, !dbg !690
  %idxprom = zext i32 %5 to i64, !dbg !691
  %arrayidx = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %4, i64 %idxprom, !dbg !691
  %owner_id4 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx, i32 0, i32 4, !dbg !692
  %6 = load i16, i16* %owner_id4, align 8, !dbg !692
  store i16 %6, i16* %owner_id, align 2, !dbg !693
  %call5 = call i32 @acpi_ut_release_mutex(i32 2) #9, !dbg !694
  %call6 = call i32 @acpi_ut_acquire_write_lock(%struct.acpi_rw_lock* @acpi_gbl_namespace_rw_lock) #9, !dbg !695
  store i32 %call6, i32* %status, align 4, !dbg !696
  %7 = load i32, i32* %status, align 4, !dbg !697
  %tobool7 = icmp ne i32 %7, 0, !dbg !697
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !699

if.then8:                                         ; preds = %if.end3
  %8 = load i32, i32* %status, align 4, !dbg !700
  store i32 %8, i32* %retval, align 4, !dbg !700
  br label %return, !dbg !700

if.end9:                                          ; preds = %if.end3
  %9 = load i16, i16* %owner_id, align 2, !dbg !702
  call void @acpi_ns_delete_namespace_by_owner(i16 zeroext %9) #9, !dbg !703
  call void @acpi_ut_release_write_lock(%struct.acpi_rw_lock* @acpi_gbl_namespace_rw_lock) #9, !dbg !704
  %10 = load i32, i32* %status, align 4, !dbg !705
  store i32 %10, i32* %retval, align 4, !dbg !705
  br label %return, !dbg !705

return:                                           ; preds = %if.end9, %if.then8, %if.then1, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !706
  ret i32 %11, !dbg !706
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_write_lock(%struct.acpi_rw_lock*) #3

; Function Attrs: noredzone
declare dso_local void @acpi_ns_delete_namespace_by_owner(i16 zeroext) #3

; Function Attrs: noredzone
declare dso_local void @acpi_ut_release_write_lock(%struct.acpi_rw_lock*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_tb_allocate_owner_id(i32 %table_index) #0 !dbg !707 {
entry:
  %table_index.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 %table_index, i32* %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %table_index.addr, metadata !708, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.declare(metadata i32* %status, metadata !710, metadata !DIExpression()), !dbg !711
  store i32 4097, i32* %status, align 4, !dbg !711
  %call = call i32 @acpi_ut_acquire_mutex(i32 2) #9, !dbg !712
  %0 = load i32, i32* %table_index.addr, align 4, !dbg !713
  %1 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !715
  %cmp = icmp ult i32 %0, %1, !dbg !716
  br i1 %cmp, label %if.then, label %if.end, !dbg !717

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !718
  %3 = load i32, i32* %table_index.addr, align 4, !dbg !720
  %idxprom = zext i32 %3 to i64, !dbg !721
  %arrayidx = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %2, i64 %idxprom, !dbg !721
  %owner_id = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx, i32 0, i32 4, !dbg !722
  %call1 = call i32 @acpi_ut_allocate_owner_id(i16* %owner_id) #9, !dbg !723
  store i32 %call1, i32* %status, align 4, !dbg !724
  br label %if.end, !dbg !725

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @acpi_ut_release_mutex(i32 2) #9, !dbg !726
  %4 = load i32, i32* %status, align 4, !dbg !727
  ret i32 %4, !dbg !727
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_allocate_owner_id(i16*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_tb_release_owner_id(i32 %table_index) #0 !dbg !728 {
entry:
  %table_index.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 %table_index, i32* %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %table_index.addr, metadata !729, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.declare(metadata i32* %status, metadata !731, metadata !DIExpression()), !dbg !732
  store i32 4097, i32* %status, align 4, !dbg !732
  %call = call i32 @acpi_ut_acquire_mutex(i32 2) #9, !dbg !733
  %0 = load i32, i32* %table_index.addr, align 4, !dbg !734
  %1 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !736
  %cmp = icmp ult i32 %0, %1, !dbg !737
  br i1 %cmp, label %if.then, label %if.end, !dbg !738

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !739
  %3 = load i32, i32* %table_index.addr, align 4, !dbg !741
  %idxprom = zext i32 %3 to i64, !dbg !742
  %arrayidx = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %2, i64 %idxprom, !dbg !742
  %owner_id = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx, i32 0, i32 4, !dbg !743
  call void @acpi_ut_release_owner_id(i16* %owner_id) #9, !dbg !744
  store i32 0, i32* %status, align 4, !dbg !745
  br label %if.end, !dbg !746

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @acpi_ut_release_mutex(i32 2) #9, !dbg !747
  %4 = load i32, i32* %status, align 4, !dbg !748
  ret i32 %4, !dbg !748
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_release_owner_id(i16*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_tb_get_owner_id(i32 %table_index, i16* %owner_id) #0 !dbg !749 {
entry:
  %table_index.addr = alloca i32, align 4
  %owner_id.addr = alloca i16*, align 8
  %status = alloca i32, align 4
  store i32 %table_index, i32* %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %table_index.addr, metadata !753, metadata !DIExpression()), !dbg !754
  store i16* %owner_id, i16** %owner_id.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %owner_id.addr, metadata !755, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.declare(metadata i32* %status, metadata !757, metadata !DIExpression()), !dbg !758
  store i32 4097, i32* %status, align 4, !dbg !758
  %call = call i32 @acpi_ut_acquire_mutex(i32 2) #9, !dbg !759
  %0 = load i32, i32* %table_index.addr, align 4, !dbg !760
  %1 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !762
  %cmp = icmp ult i32 %0, %1, !dbg !763
  br i1 %cmp, label %if.then, label %if.end, !dbg !764

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !765
  %3 = load i32, i32* %table_index.addr, align 4, !dbg !767
  %idxprom = zext i32 %3 to i64, !dbg !768
  %arrayidx = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %2, i64 %idxprom, !dbg !768
  %owner_id1 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx, i32 0, i32 4, !dbg !769
  %4 = load i16, i16* %owner_id1, align 8, !dbg !769
  %5 = load i16*, i16** %owner_id.addr, align 8, !dbg !770
  store i16 %4, i16* %5, align 2, !dbg !771
  store i32 0, i32* %status, align 4, !dbg !772
  br label %if.end, !dbg !773

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @acpi_ut_release_mutex(i32 2) #9, !dbg !774
  %6 = load i32, i32* %status, align 4, !dbg !775
  ret i32 %6, !dbg !775
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @acpi_tb_is_table_loaded(i32 %table_index) #0 !dbg !776 {
entry:
  %table_index.addr = alloca i32, align 4
  %is_loaded = alloca i8, align 1
  store i32 %table_index, i32* %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %table_index.addr, metadata !779, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.declare(metadata i8* %is_loaded, metadata !781, metadata !DIExpression()), !dbg !782
  store i8 0, i8* %is_loaded, align 1, !dbg !782
  %call = call i32 @acpi_ut_acquire_mutex(i32 2) #9, !dbg !783
  %0 = load i32, i32* %table_index.addr, align 4, !dbg !784
  %1 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !786
  %cmp = icmp ult i32 %0, %1, !dbg !787
  br i1 %cmp, label %if.then, label %if.end, !dbg !788

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !789
  %3 = load i32, i32* %table_index.addr, align 4, !dbg !791
  %idxprom = zext i32 %3 to i64, !dbg !792
  %arrayidx = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %2, i64 %idxprom, !dbg !792
  %flags = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx, i32 0, i32 5, !dbg !793
  %4 = load i8, i8* %flags, align 2, !dbg !793
  %conv = zext i8 %4 to i32, !dbg !792
  %and = and i32 %conv, 8, !dbg !794
  %conv1 = trunc i32 %and to i8, !dbg !795
  store i8 %conv1, i8* %is_loaded, align 1, !dbg !796
  br label %if.end, !dbg !797

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @acpi_ut_release_mutex(i32 2) #9, !dbg !798
  %5 = load i8, i8* %is_loaded, align 1, !dbg !799
  ret i8 %5, !dbg !800
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_tb_set_table_loaded_flag(i32 %table_index, i8 zeroext %is_loaded) #0 !dbg !801 {
entry:
  %table_index.addr = alloca i32, align 4
  %is_loaded.addr = alloca i8, align 1
  store i32 %table_index, i32* %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %table_index.addr, metadata !804, metadata !DIExpression()), !dbg !805
  store i8 %is_loaded, i8* %is_loaded.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %is_loaded.addr, metadata !806, metadata !DIExpression()), !dbg !807
  %call = call i32 @acpi_ut_acquire_mutex(i32 2) #9, !dbg !808
  %0 = load i32, i32* %table_index.addr, align 4, !dbg !809
  %1 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !811
  %cmp = icmp ult i32 %0, %1, !dbg !812
  br i1 %cmp, label %if.then, label %if.end8, !dbg !813

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %is_loaded.addr, align 1, !dbg !814
  %tobool = icmp ne i8 %2, 0, !dbg !814
  br i1 %tobool, label %if.then1, label %if.else, !dbg !817

if.then1:                                         ; preds = %if.then
  %3 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !818
  %4 = load i32, i32* %table_index.addr, align 4, !dbg !820
  %idxprom = zext i32 %4 to i64, !dbg !821
  %arrayidx = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %3, i64 %idxprom, !dbg !821
  %flags = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx, i32 0, i32 5, !dbg !822
  %5 = load i8, i8* %flags, align 2, !dbg !823
  %conv = zext i8 %5 to i32, !dbg !823
  %or = or i32 %conv, 8, !dbg !823
  %conv2 = trunc i32 %or to i8, !dbg !823
  store i8 %conv2, i8* %flags, align 2, !dbg !823
  br label %if.end, !dbg !824

if.else:                                          ; preds = %if.then
  %6 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !825
  %7 = load i32, i32* %table_index.addr, align 4, !dbg !827
  %idxprom3 = zext i32 %7 to i64, !dbg !828
  %arrayidx4 = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %6, i64 %idxprom3, !dbg !828
  %flags5 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx4, i32 0, i32 5, !dbg !829
  %8 = load i8, i8* %flags5, align 2, !dbg !830
  %conv6 = zext i8 %8 to i32, !dbg !830
  %and = and i32 %conv6, -9, !dbg !830
  %conv7 = trunc i32 %and to i8, !dbg !830
  store i8 %conv7, i8* %flags5, align 2, !dbg !830
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end8, !dbg !831

if.end8:                                          ; preds = %if.end, %entry
  %call9 = call i32 @acpi_ut_release_mutex(i32 2) #9, !dbg !832
  ret void, !dbg !833
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_tb_load_table(i32 %table_index, %struct.acpi_namespace_node* %parent_node) #0 !dbg !834 {
entry:
  %retval = alloca i32, align 4
  %table_index.addr = alloca i32, align 4
  %parent_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %table = alloca %struct.acpi_table_header*, align 8
  %status = alloca i32, align 4
  %owner_id = alloca i16, align 2
  store i32 %table_index, i32* %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %table_index.addr, metadata !1578, metadata !DIExpression()), !dbg !1579
  store %struct.acpi_namespace_node* %parent_node, %struct.acpi_namespace_node** %parent_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %parent_node.addr, metadata !1580, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table, metadata !1582, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1584, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.declare(metadata i16* %owner_id, metadata !1586, metadata !DIExpression()), !dbg !1587
  %0 = load i32, i32* %table_index.addr, align 4, !dbg !1588
  %call = call i32 @acpi_get_table_by_index(i32 %0, %struct.acpi_table_header** %table) #9, !dbg !1589
  store i32 %call, i32* %status, align 4, !dbg !1590
  %1 = load i32, i32* %status, align 4, !dbg !1591
  %tobool = icmp ne i32 %1, 0, !dbg !1591
  br i1 %tobool, label %if.then, label %if.end, !dbg !1593

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !1594
  store i32 %2, i32* %retval, align 4, !dbg !1594
  br label %return, !dbg !1594

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %table_index.addr, align 4, !dbg !1596
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node.addr, align 8, !dbg !1597
  %call1 = call i32 @acpi_ns_load_table(i32 %3, %struct.acpi_namespace_node* %4) #9, !dbg !1598
  store i32 %call1, i32* %status, align 4, !dbg !1599
  %5 = load i32, i32* %status, align 4, !dbg !1600
  %tobool2 = icmp ne i32 %5, 0, !dbg !1600
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1602

if.then3:                                         ; preds = %if.end
  %6 = load i32, i32* %status, align 4, !dbg !1603
  store i32 %6, i32* %retval, align 4, !dbg !1603
  br label %return, !dbg !1603

if.end4:                                          ; preds = %if.end
  %7 = load i32, i32* %table_index.addr, align 4, !dbg !1605
  %call5 = call i32 @acpi_tb_get_owner_id(i32 %7, i16* %owner_id) #9, !dbg !1606
  store i32 %call5, i32* %status, align 4, !dbg !1607
  %8 = load i32, i32* %status, align 4, !dbg !1608
  %tobool6 = icmp ne i32 %8, 0, !dbg !1608
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1610

if.then7:                                         ; preds = %if.end4
  %9 = load i16, i16* %owner_id, align 2, !dbg !1611
  call void @acpi_ev_update_gpes(i16 zeroext %9) #9, !dbg !1613
  br label %if.end8, !dbg !1614

if.end8:                                          ; preds = %if.then7, %if.end4
  %10 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !1615
  %11 = bitcast %struct.acpi_table_header* %10 to i8*, !dbg !1615
  call void @acpi_tb_notify_table(i32 0, i8* %11) #9, !dbg !1616
  %12 = load i32, i32* %status, align 4, !dbg !1617
  store i32 %12, i32* %retval, align 4, !dbg !1617
  br label %return, !dbg !1617

return:                                           ; preds = %if.end8, %if.then3, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !1618
  ret i32 %13, !dbg !1618
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_table_by_index(i32, %struct.acpi_table_header**) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_load_table(i32, %struct.acpi_namespace_node*) #3

; Function Attrs: noredzone
declare dso_local void @acpi_ev_update_gpes(i16 zeroext) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_tb_notify_table(i32 %event, i8* %table) #0 !dbg !1619 {
entry:
  %event.addr = alloca i32, align 4
  %table.addr = alloca i8*, align 8
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !1622, metadata !DIExpression()), !dbg !1623
  store i8* %table, i8** %table.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %table.addr, metadata !1624, metadata !DIExpression()), !dbg !1625
  %0 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** @acpi_gbl_table_handler, align 8, !dbg !1626
  %tobool = icmp ne i32 (i32, i8*, i8*)* %0, null, !dbg !1626
  br i1 %tobool, label %if.then, label %if.end, !dbg !1628

if.then:                                          ; preds = %entry
  %1 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** @acpi_gbl_table_handler, align 8, !dbg !1629
  %2 = load i32, i32* %event.addr, align 4, !dbg !1631
  %3 = load i8*, i8** %table.addr, align 8, !dbg !1632
  %4 = load i8*, i8** @acpi_gbl_table_handler_context, align 8, !dbg !1633
  %call = call i32 %1(i32 %2, i8* %3, i8* %4) #9, !dbg !1629
  br label %if.end, !dbg !1634

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1635
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_tb_install_and_load_table(i64 %address, i8 zeroext %flags, i8 zeroext %override, i32* %table_index) #0 !dbg !1636 {
entry:
  %address.addr = alloca i64, align 8
  %flags.addr = alloca i8, align 1
  %override.addr = alloca i8, align 1
  %table_index.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !1639, metadata !DIExpression()), !dbg !1640
  store i8 %flags, i8* %flags.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %flags.addr, metadata !1641, metadata !DIExpression()), !dbg !1642
  store i8 %override, i8* %override.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %override.addr, metadata !1643, metadata !DIExpression()), !dbg !1644
  store i32* %table_index, i32** %table_index.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %table_index.addr, metadata !1645, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1647, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1649, metadata !DIExpression()), !dbg !1650
  %0 = load i64, i64* %address.addr, align 8, !dbg !1651
  %1 = load i8, i8* %flags.addr, align 1, !dbg !1652
  %2 = load i8, i8* %override.addr, align 1, !dbg !1653
  %call = call i32 @acpi_tb_install_standard_table(i64 %0, i8 zeroext %1, i8 zeroext 1, i8 zeroext %2, i32* %i) #9, !dbg !1654
  store i32 %call, i32* %status, align 4, !dbg !1655
  %3 = load i32, i32* %status, align 4, !dbg !1656
  %tobool = icmp ne i32 %3, 0, !dbg !1656
  br i1 %tobool, label %if.then, label %if.end, !dbg !1658

if.then:                                          ; preds = %entry
  br label %exit, !dbg !1659

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %i, align 4, !dbg !1661
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !1662
  %call1 = call i32 @acpi_tb_load_table(i32 %4, %struct.acpi_namespace_node* %5) #9, !dbg !1663
  store i32 %call1, i32* %status, align 4, !dbg !1664
  br label %exit, !dbg !1665

exit:                                             ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !1666), !dbg !1667
  %6 = load i32, i32* %i, align 4, !dbg !1668
  %7 = load i32*, i32** %table_index.addr, align 8, !dbg !1669
  store i32 %6, i32* %7, align 4, !dbg !1670
  %8 = load i32, i32* %status, align 4, !dbg !1671
  ret i32 %8, !dbg !1671
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_install_standard_table(i64, i8 zeroext, i8 zeroext, i8 zeroext, i32*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_tb_unload_table(i32 %table_index) #0 !dbg !1672 {
entry:
  %retval = alloca i32, align 4
  %table_index.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %table = alloca %struct.acpi_table_header*, align 8
  store i32 %table_index, i32* %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %table_index.addr, metadata !1673, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1675, metadata !DIExpression()), !dbg !1676
  store i32 0, i32* %status, align 4, !dbg !1676
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table, metadata !1677, metadata !DIExpression()), !dbg !1678
  %0 = load i32, i32* %table_index.addr, align 4, !dbg !1679
  %call = call zeroext i8 @acpi_tb_is_table_loaded(i32 %0) #9, !dbg !1681
  %tobool = icmp ne i8 %call, 0, !dbg !1681
  br i1 %tobool, label %if.end, label %if.then, !dbg !1682

if.then:                                          ; preds = %entry
  store i32 6, i32* %retval, align 4, !dbg !1683
  br label %return, !dbg !1683

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %table_index.addr, align 4, !dbg !1685
  %call1 = call i32 @acpi_get_table_by_index(i32 %1, %struct.acpi_table_header** %table) #9, !dbg !1686
  store i32 %call1, i32* %status, align 4, !dbg !1687
  %2 = load i32, i32* %status, align 4, !dbg !1688
  %tobool2 = icmp ne i32 %2, 0, !dbg !1688
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1690

if.then3:                                         ; preds = %if.end
  %3 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !1691
  %4 = bitcast %struct.acpi_table_header* %3 to i8*, !dbg !1691
  call void @acpi_tb_notify_table(i32 1, i8* %4) #9, !dbg !1693
  br label %if.end4, !dbg !1694

if.end4:                                          ; preds = %if.then3, %if.end
  %5 = load i32, i32* %table_index.addr, align 4, !dbg !1695
  %call5 = call i32 @acpi_tb_delete_namespace_by_owner(i32 %5) #9, !dbg !1696
  store i32 %call5, i32* %status, align 4, !dbg !1697
  %6 = load i32, i32* %status, align 4, !dbg !1698
  %tobool6 = icmp ne i32 %6, 0, !dbg !1698
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1700

if.then7:                                         ; preds = %if.end4
  %7 = load i32, i32* %status, align 4, !dbg !1701
  store i32 %7, i32* %retval, align 4, !dbg !1701
  br label %return, !dbg !1701

if.end8:                                          ; preds = %if.end4
  %8 = load i32, i32* %table_index.addr, align 4, !dbg !1703
  %call9 = call i32 @acpi_tb_release_owner_id(i32 %8) #9, !dbg !1704
  %9 = load i32, i32* %table_index.addr, align 4, !dbg !1705
  call void @acpi_tb_set_table_loaded_flag(i32 %9, i8 zeroext 0) #9, !dbg !1706
  %10 = load i32, i32* %status, align 4, !dbg !1707
  store i32 %10, i32* %retval, align 4, !dbg !1707
  br label %return, !dbg !1707

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !1708
  ret i32 %11, !dbg !1708
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @acpi_tb_compare_tables(%struct.acpi_table_desc* %table_desc, i32 %table_index) #0 !dbg !1709 {
entry:
  %retval = alloca i8, align 1
  %table_desc.addr = alloca %struct.acpi_table_desc*, align 8
  %table_index.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %is_identical = alloca i8, align 1
  %table = alloca %struct.acpi_table_header*, align 8
  %table_length = alloca i32, align 4
  %table_flags = alloca i8, align 1
  store %struct.acpi_table_desc* %table_desc, %struct.acpi_table_desc** %table_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc** %table_desc.addr, metadata !1712, metadata !DIExpression()), !dbg !1713
  store i32 %table_index, i32* %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %table_index.addr, metadata !1714, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1716, metadata !DIExpression()), !dbg !1717
  store i32 0, i32* %status, align 4, !dbg !1717
  call void @llvm.dbg.declare(metadata i8* %is_identical, metadata !1718, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table, metadata !1720, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.declare(metadata i32* %table_length, metadata !1722, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.declare(metadata i8* %table_flags, metadata !1724, metadata !DIExpression()), !dbg !1725
  %0 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !1726
  %1 = load i32, i32* %table_index.addr, align 4, !dbg !1727
  %idxprom = zext i32 %1 to i64, !dbg !1728
  %arrayidx = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %0, i64 %idxprom, !dbg !1728
  %call = call i32 @acpi_tb_acquire_table(%struct.acpi_table_desc* %arrayidx, %struct.acpi_table_header** %table, i32* %table_length, i8* %table_flags) #9, !dbg !1729
  store i32 %call, i32* %status, align 4, !dbg !1730
  %2 = load i32, i32* %status, align 4, !dbg !1731
  %tobool = icmp ne i32 %2, 0, !dbg !1731
  br i1 %tobool, label %if.then, label %if.end, !dbg !1733

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !1734
  br label %return, !dbg !1734

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !1736
  %length = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %3, i32 0, i32 2, !dbg !1737
  %4 = load i32, i32* %length, align 8, !dbg !1737
  %5 = load i32, i32* %table_length, align 4, !dbg !1738
  %cmp = icmp ne i32 %4, %5, !dbg !1739
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !1740

lor.rhs:                                          ; preds = %if.end
  %6 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table_desc.addr, align 8, !dbg !1741
  %pointer = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %6, i32 0, i32 1, !dbg !1742
  %7 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer, align 8, !dbg !1742
  %8 = bitcast %struct.acpi_table_header* %7 to i8*, !dbg !1741
  %9 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !1743
  %10 = bitcast %struct.acpi_table_header* %9 to i8*, !dbg !1743
  %11 = load i32, i32* %table_length, align 4, !dbg !1744
  %conv = zext i32 %11 to i64, !dbg !1744
  %call1 = call i32 @memcmp(i8* %8, i8* %10, i64 %conv) #9, !dbg !1745
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1740
  br label %lor.end, !dbg !1740

lor.end:                                          ; preds = %lor.rhs, %if.end
  %12 = phi i1 [ true, %if.end ], [ %tobool2, %lor.rhs ]
  %13 = zext i1 %12 to i64, !dbg !1746
  %cond = select i1 %12, i32 0, i32 1, !dbg !1746
  %conv3 = trunc i32 %cond to i8, !dbg !1747
  store i8 %conv3, i8* %is_identical, align 1, !dbg !1748
  %14 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !1749
  %15 = load i32, i32* %table_length, align 4, !dbg !1750
  %16 = load i8, i8* %table_flags, align 1, !dbg !1751
  call void @acpi_tb_release_table(%struct.acpi_table_header* %14, i32 %15, i8 zeroext %16) #9, !dbg !1752
  %17 = load i8, i8* %is_identical, align 1, !dbg !1753
  store i8 %17, i8* %retval, align 1, !dbg !1754
  br label %return, !dbg !1754

return:                                           ; preds = %lor.end, %if.then
  %18 = load i8, i8* %retval, align 1, !dbg !1755
  ret i8 %18, !dbg !1755
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1756 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1763, metadata !DIExpression()), !dbg !1770
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1776, metadata !DIExpression()), !dbg !1777
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1778, metadata !DIExpression()), !dbg !1779
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1780, metadata !DIExpression()), !dbg !1781
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1782, metadata !DIExpression()), !dbg !1786
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1788, metadata !DIExpression()), !dbg !1792
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1794, metadata !DIExpression()), !dbg !1798
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1803, metadata !DIExpression()), !dbg !1804
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1805, metadata !DIExpression()), !dbg !1806
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1807, metadata !DIExpression()), !dbg !1808
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1809, metadata !DIExpression()), !dbg !1810
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1811, metadata !DIExpression()), !dbg !1812
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1813, metadata !DIExpression()), !dbg !1814
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1815, metadata !DIExpression()), !dbg !1816
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1817, metadata !DIExpression()), !dbg !1818
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1819, metadata !DIExpression()), !dbg !1820
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1821, metadata !DIExpression()), !dbg !1822
  %0 = load i64, i64* %size.addr, align 8, !dbg !1823
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1824
  %or = or i32 %1, 256, !dbg !1825
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1826
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !1827
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1828

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1829
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1830
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1831

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1832
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1833
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1834
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !1835
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1812
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1836
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1837
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1838
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1839
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1840
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1841
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !1842
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1842
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1842
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1842
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !1842
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1843
  br label %kmalloc.exit, !dbg !1843

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1844
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1845
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1845
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1847

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1848
  br label %kmalloc_index.exit.i, !dbg !1848

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1849
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1851
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1852

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1853
  br label %kmalloc_index.exit.i, !dbg !1853

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1854
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1856
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1857

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1858
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1859
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1860

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1861
  br label %kmalloc_index.exit.i, !dbg !1861

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1862
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1864
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1865

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1866
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1867
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1868

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1869
  br label %kmalloc_index.exit.i, !dbg !1869

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1870
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1872
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1873

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1874
  br label %kmalloc_index.exit.i, !dbg !1874

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1875
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1877
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1878

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1879
  br label %kmalloc_index.exit.i, !dbg !1879

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1880
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1882
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1883

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1884
  br label %kmalloc_index.exit.i, !dbg !1884

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1885
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1887
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1888

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1889
  br label %kmalloc_index.exit.i, !dbg !1889

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1890
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1892
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1893

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1894
  br label %kmalloc_index.exit.i, !dbg !1894

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1895
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1897
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1898

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1899
  br label %kmalloc_index.exit.i, !dbg !1899

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1900
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1902
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1903

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1904
  br label %kmalloc_index.exit.i, !dbg !1904

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1905
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1907
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1908

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1909
  br label %kmalloc_index.exit.i, !dbg !1909

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1910
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1912
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1913

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1914
  br label %kmalloc_index.exit.i, !dbg !1914

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1915
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1917
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1918

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1919
  br label %kmalloc_index.exit.i, !dbg !1919

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1920
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1922
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1923

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1924
  br label %kmalloc_index.exit.i, !dbg !1924

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1925
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1927
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1928

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1929
  br label %kmalloc_index.exit.i, !dbg !1929

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1930
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1932
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1933

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1934
  br label %kmalloc_index.exit.i, !dbg !1934

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1935
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1937
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1938

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1939
  br label %kmalloc_index.exit.i, !dbg !1939

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1940
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1942
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1943

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1944
  br label %kmalloc_index.exit.i, !dbg !1944

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1945
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1947
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1948

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1949
  br label %kmalloc_index.exit.i, !dbg !1949

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1950
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1952
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1953

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1954
  br label %kmalloc_index.exit.i, !dbg !1954

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1955
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1957
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1958

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1959
  br label %kmalloc_index.exit.i, !dbg !1959

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1960
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1962
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1963

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1964
  br label %kmalloc_index.exit.i, !dbg !1964

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1965
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1967
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1968

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1969
  br label %kmalloc_index.exit.i, !dbg !1969

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1970
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1972
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1973

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1974
  br label %kmalloc_index.exit.i, !dbg !1974

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1975
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1977
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1978

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1979
  br label %kmalloc_index.exit.i, !dbg !1979

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1980
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1982
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1983

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1984
  br label %kmalloc_index.exit.i, !dbg !1984

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1985
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1987
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1988

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1989
  br label %kmalloc_index.exit.i, !dbg !1989

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !1990, !srcloc !1993
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #8, !dbg !1994, !srcloc !1997
  unreachable, !dbg !1998

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1999
  store i32 %45, i32* %index.i, align 4, !dbg !2000
  %46 = load i32, i32* %index.i, align 4, !dbg !2001
  %tobool.i = icmp ne i32 %46, 0, !dbg !2001
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2003

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2004
  br label %kmalloc.exit, !dbg !2004

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2005
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2006
  %and.i.i = and i32 %48, 17, !dbg !2006
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2006
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2006
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2006
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2006
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2008

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2009
  br label %kmalloc_type.exit.i, !dbg !2009

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2010
  %and2.i.i = and i32 %49, 1, !dbg !2011
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2010
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2010
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2010
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2012
  br label %kmalloc_type.exit.i, !dbg !2012

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2013
  %idxprom.i = zext i32 %51 to i64, !dbg !2014
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2014
  %52 = load i32, i32* %index.i, align 4, !dbg !2015
  %idxprom6.i = zext i32 %52 to i64, !dbg !2014
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2014
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2014
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2016
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2017
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2018
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2019
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !2020
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2020
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2020
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2020
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !2020
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1781
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2021
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2022
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2023
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2024
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !2025
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2026
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2027
  store i8* %62, i8** %retval.i, align 8, !dbg !2028
  br label %kmalloc.exit, !dbg !2028

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2029
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2030
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !2031
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2031
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2031
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2031
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !2031
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2032
  br label %kmalloc.exit, !dbg !2032

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2033
  ret i8* %65, !dbg !2034
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !2035 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !2039, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2042, metadata !DIExpression()), !dbg !2041
  %0 = load i64, i64* %__edi, align 8, !dbg !2041
  store i64 %0, i64* %__edi, align 8, !dbg !2041
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2043, metadata !DIExpression()), !dbg !2041
  %1 = load i64, i64* %__esi, align 8, !dbg !2041
  store i64 %1, i64* %__esi, align 8, !dbg !2041
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2044, metadata !DIExpression()), !dbg !2041
  %2 = load i64, i64* %__edx, align 8, !dbg !2041
  store i64 %2, i64* %__edx, align 8, !dbg !2041
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2045, metadata !DIExpression()), !dbg !2041
  %3 = load i64, i64* %__ecx, align 8, !dbg !2041
  store i64 %3, i64* %__ecx, align 8, !dbg !2041
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2046, metadata !DIExpression()), !dbg !2041
  %4 = load i64, i64* %__eax, align 8, !dbg !2041
  store i64 %4, i64* %__eax, align 8, !dbg !2041
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !2041
  %6 = call i64 @llvm.read_register.i64(metadata !60), !dbg !2047
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !2047, !srcloc !2050
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !2047
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !2047
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2047
  call void @llvm.write_register.i64(metadata !60, i64 %asmresult1), !dbg !2047
  %8 = load i64, i64* %__eax, align 8, !dbg !2047
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !2051, metadata !DIExpression()), !dbg !2053
  store i64 -1, i64* %__mask, align 8, !dbg !2053
  %9 = load i64, i64* %__mask, align 8, !dbg !2053
  store i64 %9, i64* %tmp, align 8, !dbg !2053
  %10 = load i64, i64* %tmp, align 8, !dbg !2053
  %and = and i64 %8, %10, !dbg !2047
  store i64 %and, i64* %__ret, align 8, !dbg !2047
  %11 = load i64, i64* %__ret, align 8, !dbg !2041
  store i64 %11, i64* %tmp2, align 8, !dbg !2054
  %12 = load i64, i64* %tmp2, align 8, !dbg !2041
  ret i64 %12, !dbg !2055
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !2056 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2058, metadata !DIExpression()), !dbg !2063
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2065, metadata !DIExpression()), !dbg !2066
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2067, metadata !DIExpression()), !dbg !2068
  %0 = load i64, i64* %size.addr, align 8, !dbg !2069
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2071
  br i1 %1, label %if.then, label %if.end447, !dbg !2072

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2073
  %tobool = icmp ne i64 %2, 0, !dbg !2073
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2076

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !2077
  br label %return, !dbg !2077

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !2078
  %cmp = icmp ult i64 %3, 4096, !dbg !2080
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2081

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2082
  br label %return, !dbg !2082

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub = sub i64 %4, 1, !dbg !2083
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2083
  br i1 %5, label %cond.true, label %cond.false442, !dbg !2083

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub4 = sub i64 %6, 1, !dbg !2083
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !2083
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !2083

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub6 = sub i64 %8, 1, !dbg !2083
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !2083
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !2083

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !2083

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub9 = sub i64 %9, 1, !dbg !2083
  %and = and i64 %sub9, -9223372036854775808, !dbg !2083
  %tobool10 = icmp ne i64 %and, 0, !dbg !2083
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !2083

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !2083

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub13 = sub i64 %10, 1, !dbg !2083
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !2083
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2083
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2083

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !2083

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub18 = sub i64 %11, 1, !dbg !2083
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !2083
  %tobool20 = icmp ne i64 %and19, 0, !dbg !2083
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2083

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !2083

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub23 = sub i64 %12, 1, !dbg !2083
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !2083
  %tobool25 = icmp ne i64 %and24, 0, !dbg !2083
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !2083

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !2083

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub28 = sub i64 %13, 1, !dbg !2083
  %and29 = and i64 %sub28, 576460752303423488, !dbg !2083
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2083
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !2083

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !2083

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub33 = sub i64 %14, 1, !dbg !2083
  %and34 = and i64 %sub33, 288230376151711744, !dbg !2083
  %tobool35 = icmp ne i64 %and34, 0, !dbg !2083
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !2083

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !2083

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub38 = sub i64 %15, 1, !dbg !2083
  %and39 = and i64 %sub38, 144115188075855872, !dbg !2083
  %tobool40 = icmp ne i64 %and39, 0, !dbg !2083
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2083

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !2083

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub43 = sub i64 %16, 1, !dbg !2083
  %and44 = and i64 %sub43, 72057594037927936, !dbg !2083
  %tobool45 = icmp ne i64 %and44, 0, !dbg !2083
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !2083

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !2083

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub48 = sub i64 %17, 1, !dbg !2083
  %and49 = and i64 %sub48, 36028797018963968, !dbg !2083
  %tobool50 = icmp ne i64 %and49, 0, !dbg !2083
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !2083

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !2083

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub53 = sub i64 %18, 1, !dbg !2083
  %and54 = and i64 %sub53, 18014398509481984, !dbg !2083
  %tobool55 = icmp ne i64 %and54, 0, !dbg !2083
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !2083

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !2083

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub58 = sub i64 %19, 1, !dbg !2083
  %and59 = and i64 %sub58, 9007199254740992, !dbg !2083
  %tobool60 = icmp ne i64 %and59, 0, !dbg !2083
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2083

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !2083

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub63 = sub i64 %20, 1, !dbg !2083
  %and64 = and i64 %sub63, 4503599627370496, !dbg !2083
  %tobool65 = icmp ne i64 %and64, 0, !dbg !2083
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !2083

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !2083

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub68 = sub i64 %21, 1, !dbg !2083
  %and69 = and i64 %sub68, 2251799813685248, !dbg !2083
  %tobool70 = icmp ne i64 %and69, 0, !dbg !2083
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !2083

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !2083

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub73 = sub i64 %22, 1, !dbg !2083
  %and74 = and i64 %sub73, 1125899906842624, !dbg !2083
  %tobool75 = icmp ne i64 %and74, 0, !dbg !2083
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !2083

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !2083

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub78 = sub i64 %23, 1, !dbg !2083
  %and79 = and i64 %sub78, 562949953421312, !dbg !2083
  %tobool80 = icmp ne i64 %and79, 0, !dbg !2083
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !2083

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !2083

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub83 = sub i64 %24, 1, !dbg !2083
  %and84 = and i64 %sub83, 281474976710656, !dbg !2083
  %tobool85 = icmp ne i64 %and84, 0, !dbg !2083
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !2083

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !2083

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub88 = sub i64 %25, 1, !dbg !2083
  %and89 = and i64 %sub88, 140737488355328, !dbg !2083
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2083
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !2083

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !2083

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub93 = sub i64 %26, 1, !dbg !2083
  %and94 = and i64 %sub93, 70368744177664, !dbg !2083
  %tobool95 = icmp ne i64 %and94, 0, !dbg !2083
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !2083

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !2083

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub98 = sub i64 %27, 1, !dbg !2083
  %and99 = and i64 %sub98, 35184372088832, !dbg !2083
  %tobool100 = icmp ne i64 %and99, 0, !dbg !2083
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !2083

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !2083

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub103 = sub i64 %28, 1, !dbg !2083
  %and104 = and i64 %sub103, 17592186044416, !dbg !2083
  %tobool105 = icmp ne i64 %and104, 0, !dbg !2083
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !2083

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !2083

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub108 = sub i64 %29, 1, !dbg !2083
  %and109 = and i64 %sub108, 8796093022208, !dbg !2083
  %tobool110 = icmp ne i64 %and109, 0, !dbg !2083
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !2083

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !2083

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub113 = sub i64 %30, 1, !dbg !2083
  %and114 = and i64 %sub113, 4398046511104, !dbg !2083
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2083
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !2083

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !2083

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub118 = sub i64 %31, 1, !dbg !2083
  %and119 = and i64 %sub118, 2199023255552, !dbg !2083
  %tobool120 = icmp ne i64 %and119, 0, !dbg !2083
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !2083

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !2083

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub123 = sub i64 %32, 1, !dbg !2083
  %and124 = and i64 %sub123, 1099511627776, !dbg !2083
  %tobool125 = icmp ne i64 %and124, 0, !dbg !2083
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !2083

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !2083

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub128 = sub i64 %33, 1, !dbg !2083
  %and129 = and i64 %sub128, 549755813888, !dbg !2083
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2083
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !2083

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !2083

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub133 = sub i64 %34, 1, !dbg !2083
  %and134 = and i64 %sub133, 274877906944, !dbg !2083
  %tobool135 = icmp ne i64 %and134, 0, !dbg !2083
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !2083

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !2083

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub138 = sub i64 %35, 1, !dbg !2083
  %and139 = and i64 %sub138, 137438953472, !dbg !2083
  %tobool140 = icmp ne i64 %and139, 0, !dbg !2083
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !2083

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !2083

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub143 = sub i64 %36, 1, !dbg !2083
  %and144 = and i64 %sub143, 68719476736, !dbg !2083
  %tobool145 = icmp ne i64 %and144, 0, !dbg !2083
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !2083

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !2083

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub148 = sub i64 %37, 1, !dbg !2083
  %and149 = and i64 %sub148, 34359738368, !dbg !2083
  %tobool150 = icmp ne i64 %and149, 0, !dbg !2083
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !2083

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !2083

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub153 = sub i64 %38, 1, !dbg !2083
  %and154 = and i64 %sub153, 17179869184, !dbg !2083
  %tobool155 = icmp ne i64 %and154, 0, !dbg !2083
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !2083

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !2083

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub158 = sub i64 %39, 1, !dbg !2083
  %and159 = and i64 %sub158, 8589934592, !dbg !2083
  %tobool160 = icmp ne i64 %and159, 0, !dbg !2083
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !2083

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !2083

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub163 = sub i64 %40, 1, !dbg !2083
  %and164 = and i64 %sub163, 4294967296, !dbg !2083
  %tobool165 = icmp ne i64 %and164, 0, !dbg !2083
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !2083

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !2083

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub168 = sub i64 %41, 1, !dbg !2083
  %and169 = and i64 %sub168, 2147483648, !dbg !2083
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2083
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !2083

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !2083

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub173 = sub i64 %42, 1, !dbg !2083
  %and174 = and i64 %sub173, 1073741824, !dbg !2083
  %tobool175 = icmp ne i64 %and174, 0, !dbg !2083
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !2083

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !2083

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub178 = sub i64 %43, 1, !dbg !2083
  %and179 = and i64 %sub178, 536870912, !dbg !2083
  %tobool180 = icmp ne i64 %and179, 0, !dbg !2083
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !2083

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !2083

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub183 = sub i64 %44, 1, !dbg !2083
  %and184 = and i64 %sub183, 268435456, !dbg !2083
  %tobool185 = icmp ne i64 %and184, 0, !dbg !2083
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !2083

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !2083

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub188 = sub i64 %45, 1, !dbg !2083
  %and189 = and i64 %sub188, 134217728, !dbg !2083
  %tobool190 = icmp ne i64 %and189, 0, !dbg !2083
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !2083

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !2083

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub193 = sub i64 %46, 1, !dbg !2083
  %and194 = and i64 %sub193, 67108864, !dbg !2083
  %tobool195 = icmp ne i64 %and194, 0, !dbg !2083
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !2083

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !2083

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub198 = sub i64 %47, 1, !dbg !2083
  %and199 = and i64 %sub198, 33554432, !dbg !2083
  %tobool200 = icmp ne i64 %and199, 0, !dbg !2083
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !2083

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !2083

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub203 = sub i64 %48, 1, !dbg !2083
  %and204 = and i64 %sub203, 16777216, !dbg !2083
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2083
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !2083

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !2083

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub208 = sub i64 %49, 1, !dbg !2083
  %and209 = and i64 %sub208, 8388608, !dbg !2083
  %tobool210 = icmp ne i64 %and209, 0, !dbg !2083
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !2083

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !2083

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub213 = sub i64 %50, 1, !dbg !2083
  %and214 = and i64 %sub213, 4194304, !dbg !2083
  %tobool215 = icmp ne i64 %and214, 0, !dbg !2083
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !2083

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !2083

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub218 = sub i64 %51, 1, !dbg !2083
  %and219 = and i64 %sub218, 2097152, !dbg !2083
  %tobool220 = icmp ne i64 %and219, 0, !dbg !2083
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !2083

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !2083

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub223 = sub i64 %52, 1, !dbg !2083
  %and224 = and i64 %sub223, 1048576, !dbg !2083
  %tobool225 = icmp ne i64 %and224, 0, !dbg !2083
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !2083

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !2083

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub228 = sub i64 %53, 1, !dbg !2083
  %and229 = and i64 %sub228, 524288, !dbg !2083
  %tobool230 = icmp ne i64 %and229, 0, !dbg !2083
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !2083

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !2083

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub233 = sub i64 %54, 1, !dbg !2083
  %and234 = and i64 %sub233, 262144, !dbg !2083
  %tobool235 = icmp ne i64 %and234, 0, !dbg !2083
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !2083

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !2083

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub238 = sub i64 %55, 1, !dbg !2083
  %and239 = and i64 %sub238, 131072, !dbg !2083
  %tobool240 = icmp ne i64 %and239, 0, !dbg !2083
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !2083

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !2083

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub243 = sub i64 %56, 1, !dbg !2083
  %and244 = and i64 %sub243, 65536, !dbg !2083
  %tobool245 = icmp ne i64 %and244, 0, !dbg !2083
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !2083

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !2083

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub248 = sub i64 %57, 1, !dbg !2083
  %and249 = and i64 %sub248, 32768, !dbg !2083
  %tobool250 = icmp ne i64 %and249, 0, !dbg !2083
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !2083

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !2083

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub253 = sub i64 %58, 1, !dbg !2083
  %and254 = and i64 %sub253, 16384, !dbg !2083
  %tobool255 = icmp ne i64 %and254, 0, !dbg !2083
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !2083

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !2083

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub258 = sub i64 %59, 1, !dbg !2083
  %and259 = and i64 %sub258, 8192, !dbg !2083
  %tobool260 = icmp ne i64 %and259, 0, !dbg !2083
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !2083

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !2083

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub263 = sub i64 %60, 1, !dbg !2083
  %and264 = and i64 %sub263, 4096, !dbg !2083
  %tobool265 = icmp ne i64 %and264, 0, !dbg !2083
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !2083

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !2083

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub268 = sub i64 %61, 1, !dbg !2083
  %and269 = and i64 %sub268, 2048, !dbg !2083
  %tobool270 = icmp ne i64 %and269, 0, !dbg !2083
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !2083

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !2083

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub273 = sub i64 %62, 1, !dbg !2083
  %and274 = and i64 %sub273, 1024, !dbg !2083
  %tobool275 = icmp ne i64 %and274, 0, !dbg !2083
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !2083

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !2083

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub278 = sub i64 %63, 1, !dbg !2083
  %and279 = and i64 %sub278, 512, !dbg !2083
  %tobool280 = icmp ne i64 %and279, 0, !dbg !2083
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !2083

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !2083

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub283 = sub i64 %64, 1, !dbg !2083
  %and284 = and i64 %sub283, 256, !dbg !2083
  %tobool285 = icmp ne i64 %and284, 0, !dbg !2083
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !2083

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !2083

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub288 = sub i64 %65, 1, !dbg !2083
  %and289 = and i64 %sub288, 128, !dbg !2083
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2083
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !2083

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !2083

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub293 = sub i64 %66, 1, !dbg !2083
  %and294 = and i64 %sub293, 64, !dbg !2083
  %tobool295 = icmp ne i64 %and294, 0, !dbg !2083
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !2083

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !2083

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub298 = sub i64 %67, 1, !dbg !2083
  %and299 = and i64 %sub298, 32, !dbg !2083
  %tobool300 = icmp ne i64 %and299, 0, !dbg !2083
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !2083

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !2083

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub303 = sub i64 %68, 1, !dbg !2083
  %and304 = and i64 %sub303, 16, !dbg !2083
  %tobool305 = icmp ne i64 %and304, 0, !dbg !2083
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !2083

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !2083

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub308 = sub i64 %69, 1, !dbg !2083
  %and309 = and i64 %sub308, 8, !dbg !2083
  %tobool310 = icmp ne i64 %and309, 0, !dbg !2083
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !2083

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !2083

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub313 = sub i64 %70, 1, !dbg !2083
  %and314 = and i64 %sub313, 4, !dbg !2083
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2083
  %71 = zext i1 %tobool315 to i64, !dbg !2083
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !2083
  br label %cond.end, !dbg !2083

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !2083
  br label %cond.end317, !dbg !2083

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !2083
  br label %cond.end319, !dbg !2083

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !2083
  br label %cond.end321, !dbg !2083

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !2083
  br label %cond.end323, !dbg !2083

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !2083
  br label %cond.end325, !dbg !2083

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !2083
  br label %cond.end327, !dbg !2083

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !2083
  br label %cond.end329, !dbg !2083

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !2083
  br label %cond.end331, !dbg !2083

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !2083
  br label %cond.end333, !dbg !2083

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !2083
  br label %cond.end335, !dbg !2083

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !2083
  br label %cond.end337, !dbg !2083

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !2083
  br label %cond.end339, !dbg !2083

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !2083
  br label %cond.end341, !dbg !2083

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !2083
  br label %cond.end343, !dbg !2083

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !2083
  br label %cond.end345, !dbg !2083

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !2083
  br label %cond.end347, !dbg !2083

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !2083
  br label %cond.end349, !dbg !2083

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !2083
  br label %cond.end351, !dbg !2083

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !2083
  br label %cond.end353, !dbg !2083

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !2083
  br label %cond.end355, !dbg !2083

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !2083
  br label %cond.end357, !dbg !2083

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !2083
  br label %cond.end359, !dbg !2083

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !2083
  br label %cond.end361, !dbg !2083

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !2083
  br label %cond.end363, !dbg !2083

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !2083
  br label %cond.end365, !dbg !2083

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !2083
  br label %cond.end367, !dbg !2083

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !2083
  br label %cond.end369, !dbg !2083

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !2083
  br label %cond.end371, !dbg !2083

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !2083
  br label %cond.end373, !dbg !2083

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !2083
  br label %cond.end375, !dbg !2083

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !2083
  br label %cond.end377, !dbg !2083

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !2083
  br label %cond.end379, !dbg !2083

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !2083
  br label %cond.end381, !dbg !2083

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !2083
  br label %cond.end383, !dbg !2083

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !2083
  br label %cond.end385, !dbg !2083

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !2083
  br label %cond.end387, !dbg !2083

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !2083
  br label %cond.end389, !dbg !2083

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !2083
  br label %cond.end391, !dbg !2083

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !2083
  br label %cond.end393, !dbg !2083

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !2083
  br label %cond.end395, !dbg !2083

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !2083
  br label %cond.end397, !dbg !2083

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !2083
  br label %cond.end399, !dbg !2083

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !2083
  br label %cond.end401, !dbg !2083

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !2083
  br label %cond.end403, !dbg !2083

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !2083
  br label %cond.end405, !dbg !2083

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !2083
  br label %cond.end407, !dbg !2083

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !2083
  br label %cond.end409, !dbg !2083

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !2083
  br label %cond.end411, !dbg !2083

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !2083
  br label %cond.end413, !dbg !2083

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !2083
  br label %cond.end415, !dbg !2083

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !2083
  br label %cond.end417, !dbg !2083

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !2083
  br label %cond.end419, !dbg !2083

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !2083
  br label %cond.end421, !dbg !2083

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !2083
  br label %cond.end423, !dbg !2083

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !2083
  br label %cond.end425, !dbg !2083

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !2083
  br label %cond.end427, !dbg !2083

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !2083
  br label %cond.end429, !dbg !2083

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !2083
  br label %cond.end431, !dbg !2083

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !2083
  br label %cond.end433, !dbg !2083

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !2083
  br label %cond.end435, !dbg !2083

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !2083
  br label %cond.end437, !dbg !2083

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !2083
  br label %cond.end440, !dbg !2083

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !2083

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !2083
  br label %cond.end444, !dbg !2083

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !2083
  %sub443 = sub i64 %72, 1, !dbg !2083
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !2083
  br label %cond.end444, !dbg !2083

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !2083
  %sub446 = sub i32 %cond445, 12, !dbg !2084
  %add = add i32 %sub446, 1, !dbg !2085
  store i32 %add, i32* %retval, align 4, !dbg !2086
  br label %return, !dbg !2086

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !2087
  %dec = add i64 %73, -1, !dbg !2087
  store i64 %dec, i64* %size.addr, align 8, !dbg !2087
  %74 = load i64, i64* %size.addr, align 8, !dbg !2088
  %shr = lshr i64 %74, 12, !dbg !2088
  store i64 %shr, i64* %size.addr, align 8, !dbg !2088
  %75 = load i64, i64* %size.addr, align 8, !dbg !2089
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2066
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2090
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2091
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !2090, !srcloc !2092
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2090
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2093
  %add.i = add i32 %79, 1, !dbg !2094
  store i32 %add.i, i32* %retval, align 4, !dbg !2095
  br label %return, !dbg !2095

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2096
  ret i32 %80, !dbg !2096
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !2097 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2058, metadata !DIExpression()), !dbg !2101
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2065, metadata !DIExpression()), !dbg !2103
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2104, metadata !DIExpression()), !dbg !2105
  %0 = load i64, i64* %n.addr, align 8, !dbg !2106
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2103
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2107
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2108
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !2107, !srcloc !2092
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2107
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2109
  %add.i = add i32 %4, 1, !dbg !2110
  %sub = sub i32 %add.i, 1, !dbg !2111
  ret i32 %sub, !dbg !2112
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !2113 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2119, metadata !DIExpression()), !dbg !2120
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2121, metadata !DIExpression()), !dbg !2122
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2123, metadata !DIExpression()), !dbg !2124
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2125, metadata !DIExpression()), !dbg !2126
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2127
  ret i8* %0, !dbg !2128
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
!llvm.named.register.rsp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !56, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !55, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/tbdata.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !19, !20, !46, !51, !15, !48, !31, !52, !54}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !16, line: 21, baseType: !17)
!16 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !18, line: 27, baseType: !7)
!18 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !22, line: 68, size: 288, elements: !23)
!22 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!23 = !{!24, !29, !30, !34, !35, !39, !43, !44, !45}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !21, file: !22, line: 69, baseType: !25, size: 32)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !27)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !{!28}
!28 = !DISubrange(count: 4)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !21, file: !22, line: 70, baseType: !15, size: 32, offset: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !21, file: !22, line: 71, baseType: !31, size: 8, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !16, line: 17, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !18, line: 21, baseType: !33)
!33 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !21, file: !22, line: 72, baseType: !31, size: 8, offset: 72)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !21, file: !22, line: 73, baseType: !36, size: 48, offset: 80)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 48, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 6)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !21, file: !22, line: 74, baseType: !40, size: 64, offset: 128)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 8)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !21, file: !22, line: 75, baseType: !15, size: 32, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !21, file: !22, line: 76, baseType: !25, size: 32, offset: 224)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !21, file: !22, line: 77, baseType: !15, size: 32, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !47, line: 127, baseType: !48)
!47 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !16, line: 23, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !18, line: 31, baseType: !50)
!50 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !47, line: 421, baseType: !15)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !53, line: 148, baseType: !7)
!53 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!54 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!55 = !{!0}
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 56, elements: !58)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!58 = !{!59}
!59 = !DISubrange(count: 7)
!60 = !{!"rsp"}
!61 = !{i32 7, !"Dwarf Version", i32 4}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"Code Model", i32 2}
!65 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!66 = distinct !DISubprogram(name: "acpi_tb_init_table_descriptor", scope: !3, file: !3, line: 86, type: !67, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !88)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !69, !73, !31, !20}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_desc", file: !22, line: 334, size: 256, elements: !71)
!71 = !{!72, !74, !75, !76, !81, !86, !87}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !70, file: !22, line: 335, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !47, line: 129, baseType: !48)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !70, file: !22, line: 336, baseType: !20, size: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !70, file: !22, line: 337, baseType: !15, size: 32, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !70, file: !22, line: 338, baseType: !77, size: 32, offset: 160)
!77 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !22, line: 327, size: 32, elements: !78)
!78 = !{!79, !80}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !77, file: !22, line: 328, baseType: !15, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !77, file: !22, line: 329, baseType: !25, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !70, file: !22, line: 339, baseType: !82, size: 16, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !47, line: 445, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !16, line: 19, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !18, line: 24, baseType: !85)
!85 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !70, file: !22, line: 340, baseType: !31, size: 8, offset: 208)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "validation_count", scope: !70, file: !22, line: 341, baseType: !83, size: 16, offset: 224)
!88 = !{}
!89 = !DILocalVariable(name: "table_desc", arg: 1, scope: !66, file: !3, line: 86, type: !69)
!90 = !DILocation(line: 86, column: 55, scope: !66)
!91 = !DILocalVariable(name: "address", arg: 2, scope: !66, file: !3, line: 87, type: !73)
!92 = !DILocation(line: 87, column: 32, scope: !66)
!93 = !DILocalVariable(name: "flags", arg: 3, scope: !66, file: !3, line: 88, type: !31)
!94 = !DILocation(line: 88, column: 13, scope: !66)
!95 = !DILocalVariable(name: "table", arg: 4, scope: !66, file: !3, line: 88, type: !20)
!96 = !DILocation(line: 88, column: 46, scope: !66)
!97 = !DILocation(line: 95, column: 9, scope: !66)
!98 = !DILocation(line: 95, column: 2, scope: !66)
!99 = !DILocation(line: 96, column: 24, scope: !66)
!100 = !DILocation(line: 96, column: 2, scope: !66)
!101 = !DILocation(line: 96, column: 14, scope: !66)
!102 = !DILocation(line: 96, column: 22, scope: !66)
!103 = !DILocation(line: 97, column: 23, scope: !66)
!104 = !DILocation(line: 97, column: 30, scope: !66)
!105 = !DILocation(line: 97, column: 2, scope: !66)
!106 = !DILocation(line: 97, column: 14, scope: !66)
!107 = !DILocation(line: 97, column: 21, scope: !66)
!108 = !DILocation(line: 98, column: 22, scope: !66)
!109 = !DILocation(line: 98, column: 2, scope: !66)
!110 = !DILocation(line: 98, column: 14, scope: !66)
!111 = !DILocation(line: 98, column: 20, scope: !66)
!112 = !DILocation(line: 99, column: 2, scope: !66)
!113 = !DILocation(line: 100, column: 1, scope: !66)
!114 = distinct !DISubprogram(name: "acpi_tb_acquire_table", scope: !3, file: !3, line: 119, type: !115, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !88)
!115 = !DISubroutineType(types: !116)
!116 = !{!51, !69, !117, !14, !118}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!119 = !DILocalVariable(name: "table_desc", arg: 1, scope: !114, file: !3, line: 119, type: !69)
!120 = !DILocation(line: 119, column: 47, scope: !114)
!121 = !DILocalVariable(name: "table_ptr", arg: 2, scope: !114, file: !3, line: 120, type: !117)
!122 = !DILocation(line: 120, column: 36, scope: !114)
!123 = !DILocalVariable(name: "table_length", arg: 3, scope: !114, file: !3, line: 121, type: !14)
!124 = !DILocation(line: 121, column: 14, scope: !114)
!125 = !DILocalVariable(name: "table_flags", arg: 4, scope: !114, file: !3, line: 121, type: !118)
!126 = !DILocation(line: 121, column: 32, scope: !114)
!127 = !DILocalVariable(name: "table", scope: !114, file: !3, line: 123, type: !20)
!128 = !DILocation(line: 123, column: 28, scope: !114)
!129 = !DILocation(line: 125, column: 10, scope: !114)
!130 = !DILocation(line: 125, column: 22, scope: !114)
!131 = !DILocation(line: 125, column: 28, scope: !114)
!132 = !DILocation(line: 125, column: 2, scope: !114)
!133 = !DILocation(line: 129, column: 26, scope: !134)
!134 = distinct !DILexicalBlock(scope: !114, file: !3, line: 125, column: 54)
!135 = !DILocation(line: 129, column: 38, scope: !134)
!136 = !DILocation(line: 129, column: 47, scope: !134)
!137 = !DILocation(line: 129, column: 59, scope: !134)
!138 = !DILocation(line: 129, column: 7, scope: !134)
!139 = !DILocation(line: 128, column: 9, scope: !134)
!140 = !DILocation(line: 130, column: 3, scope: !134)
!141 = !DILocation(line: 135, column: 11, scope: !134)
!142 = !DILocation(line: 135, column: 9, scope: !134)
!143 = !DILocation(line: 138, column: 3, scope: !134)
!144 = !DILocation(line: 142, column: 3, scope: !134)
!145 = !DILocation(line: 147, column: 7, scope: !146)
!146 = distinct !DILexicalBlock(scope: !114, file: !3, line: 147, column: 6)
!147 = !DILocation(line: 147, column: 6, scope: !114)
!148 = !DILocation(line: 148, column: 3, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !3, line: 147, column: 14)
!150 = !DILocation(line: 153, column: 15, scope: !114)
!151 = !DILocation(line: 153, column: 3, scope: !114)
!152 = !DILocation(line: 153, column: 13, scope: !114)
!153 = !DILocation(line: 154, column: 18, scope: !114)
!154 = !DILocation(line: 154, column: 30, scope: !114)
!155 = !DILocation(line: 154, column: 3, scope: !114)
!156 = !DILocation(line: 154, column: 16, scope: !114)
!157 = !DILocation(line: 155, column: 17, scope: !114)
!158 = !DILocation(line: 155, column: 29, scope: !114)
!159 = !DILocation(line: 155, column: 3, scope: !114)
!160 = !DILocation(line: 155, column: 15, scope: !114)
!161 = !DILocation(line: 156, column: 2, scope: !114)
!162 = !DILocation(line: 157, column: 1, scope: !114)
!163 = distinct !DISubprogram(name: "acpi_tb_release_table", scope: !3, file: !3, line: 174, type: !164, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !88)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !20, !15, !31}
!166 = !DILocalVariable(name: "table", arg: 1, scope: !163, file: !3, line: 174, type: !20)
!167 = !DILocation(line: 174, column: 49, scope: !163)
!168 = !DILocalVariable(name: "table_length", arg: 2, scope: !163, file: !3, line: 175, type: !15)
!169 = !DILocation(line: 175, column: 13, scope: !163)
!170 = !DILocalVariable(name: "table_flags", arg: 3, scope: !163, file: !3, line: 175, type: !31)
!171 = !DILocation(line: 175, column: 30, scope: !163)
!172 = !DILocation(line: 178, column: 10, scope: !163)
!173 = !DILocation(line: 178, column: 22, scope: !163)
!174 = !DILocation(line: 178, column: 2, scope: !163)
!175 = !DILocation(line: 181, column: 24, scope: !176)
!176 = distinct !DILexicalBlock(scope: !163, file: !3, line: 178, column: 48)
!177 = !DILocation(line: 181, column: 31, scope: !176)
!178 = !DILocation(line: 181, column: 3, scope: !176)
!179 = !DILocation(line: 182, column: 3, scope: !176)
!180 = !DILocation(line: 188, column: 3, scope: !176)
!181 = !DILocation(line: 190, column: 1, scope: !163)
!182 = distinct !DISubprogram(name: "acpi_tb_acquire_temp_table", scope: !3, file: !3, line: 210, type: !183, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !88)
!183 = !DISubroutineType(types: !184)
!184 = !{!51, !69, !73, !31}
!185 = !DILocalVariable(name: "table_desc", arg: 1, scope: !182, file: !3, line: 210, type: !69)
!186 = !DILocation(line: 210, column: 52, scope: !182)
!187 = !DILocalVariable(name: "address", arg: 2, scope: !182, file: !3, line: 211, type: !73)
!188 = !DILocation(line: 211, column: 29, scope: !182)
!189 = !DILocalVariable(name: "flags", arg: 3, scope: !182, file: !3, line: 211, type: !31)
!190 = !DILocation(line: 211, column: 41, scope: !182)
!191 = !DILocalVariable(name: "table_header", scope: !182, file: !3, line: 213, type: !20)
!192 = !DILocation(line: 213, column: 28, scope: !182)
!193 = !DILocation(line: 215, column: 10, scope: !182)
!194 = !DILocation(line: 215, column: 16, scope: !182)
!195 = !DILocation(line: 215, column: 2, scope: !182)
!196 = !DILocation(line: 221, column: 26, scope: !197)
!197 = distinct !DILexicalBlock(scope: !182, file: !3, line: 215, column: 42)
!198 = !DILocation(line: 221, column: 7, scope: !197)
!199 = !DILocation(line: 220, column: 16, scope: !197)
!200 = !DILocation(line: 223, column: 8, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !3, line: 223, column: 7)
!202 = !DILocation(line: 223, column: 7, scope: !197)
!203 = !DILocation(line: 224, column: 4, scope: !204)
!204 = distinct !DILexicalBlock(scope: !201, file: !3, line: 223, column: 22)
!205 = !DILocation(line: 227, column: 33, scope: !197)
!206 = !DILocation(line: 227, column: 45, scope: !197)
!207 = !DILocation(line: 227, column: 54, scope: !197)
!208 = !DILocation(line: 228, column: 12, scope: !197)
!209 = !DILocation(line: 227, column: 3, scope: !197)
!210 = !DILocation(line: 229, column: 24, scope: !197)
!211 = !DILocation(line: 229, column: 3, scope: !197)
!212 = !DILocation(line: 231, column: 3, scope: !197)
!213 = !DILocation(line: 236, column: 18, scope: !197)
!214 = !DILocation(line: 236, column: 16, scope: !197)
!215 = !DILocation(line: 238, column: 8, scope: !216)
!216 = distinct !DILexicalBlock(scope: !197, file: !3, line: 238, column: 7)
!217 = !DILocation(line: 238, column: 7, scope: !197)
!218 = !DILocation(line: 239, column: 4, scope: !219)
!219 = distinct !DILexicalBlock(scope: !216, file: !3, line: 238, column: 22)
!220 = !DILocation(line: 242, column: 33, scope: !197)
!221 = !DILocation(line: 242, column: 45, scope: !197)
!222 = !DILocation(line: 242, column: 54, scope: !197)
!223 = !DILocation(line: 243, column: 12, scope: !197)
!224 = !DILocation(line: 242, column: 3, scope: !197)
!225 = !DILocation(line: 244, column: 3, scope: !197)
!226 = !DILocation(line: 248, column: 3, scope: !197)
!227 = !DILocation(line: 253, column: 2, scope: !182)
!228 = !DILocation(line: 254, column: 1, scope: !182)
!229 = distinct !DISubprogram(name: "acpi_tb_release_temp_table", scope: !3, file: !3, line: 268, type: !230, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !88)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !69}
!232 = !DILocalVariable(name: "table_desc", arg: 1, scope: !229, file: !3, line: 268, type: !69)
!233 = !DILocation(line: 268, column: 57, scope: !229)
!234 = !DILocation(line: 276, column: 27, scope: !229)
!235 = !DILocation(line: 276, column: 2, scope: !229)
!236 = !DILocation(line: 277, column: 1, scope: !229)
!237 = distinct !DISubprogram(name: "acpi_tb_invalidate_table", scope: !3, file: !3, line: 325, type: !230, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !88)
!238 = !DILocalVariable(name: "table_desc", arg: 1, scope: !237, file: !3, line: 325, type: !69)
!239 = !DILocation(line: 325, column: 55, scope: !237)
!240 = !DILocation(line: 332, column: 7, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !3, line: 332, column: 6)
!242 = !DILocation(line: 332, column: 19, scope: !241)
!243 = !DILocation(line: 332, column: 6, scope: !237)
!244 = !DILocation(line: 333, column: 3, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !3, line: 332, column: 28)
!246 = !DILocation(line: 336, column: 24, scope: !237)
!247 = !DILocation(line: 336, column: 36, scope: !237)
!248 = !DILocation(line: 336, column: 45, scope: !237)
!249 = !DILocation(line: 336, column: 57, scope: !237)
!250 = !DILocation(line: 337, column: 10, scope: !237)
!251 = !DILocation(line: 337, column: 22, scope: !237)
!252 = !DILocation(line: 336, column: 2, scope: !237)
!253 = !DILocation(line: 338, column: 2, scope: !237)
!254 = !DILocation(line: 338, column: 14, scope: !237)
!255 = !DILocation(line: 338, column: 22, scope: !237)
!256 = !DILocation(line: 340, column: 2, scope: !237)
!257 = !DILocation(line: 341, column: 1, scope: !237)
!258 = distinct !DISubprogram(name: "acpi_tb_validate_table", scope: !3, file: !3, line: 292, type: !259, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !88)
!259 = !DISubroutineType(types: !260)
!260 = !{!51, !69}
!261 = !DILocalVariable(name: "table_desc", arg: 1, scope: !258, file: !3, line: 292, type: !69)
!262 = !DILocation(line: 292, column: 60, scope: !258)
!263 = !DILocalVariable(name: "status", scope: !258, file: !3, line: 294, type: !51)
!264 = !DILocation(line: 294, column: 14, scope: !258)
!265 = !DILocation(line: 300, column: 7, scope: !266)
!266 = distinct !DILexicalBlock(scope: !258, file: !3, line: 300, column: 6)
!267 = !DILocation(line: 300, column: 19, scope: !266)
!268 = !DILocation(line: 300, column: 6, scope: !258)
!269 = !DILocation(line: 301, column: 34, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !3, line: 300, column: 28)
!271 = !DILocation(line: 301, column: 47, scope: !270)
!272 = !DILocation(line: 301, column: 59, scope: !270)
!273 = !DILocation(line: 302, column: 14, scope: !270)
!274 = !DILocation(line: 302, column: 26, scope: !270)
!275 = !DILocation(line: 303, column: 14, scope: !270)
!276 = !DILocation(line: 303, column: 26, scope: !270)
!277 = !DILocation(line: 301, column: 12, scope: !270)
!278 = !DILocation(line: 301, column: 10, scope: !270)
!279 = !DILocation(line: 304, column: 8, scope: !280)
!280 = distinct !DILexicalBlock(scope: !270, file: !3, line: 304, column: 7)
!281 = !DILocation(line: 304, column: 20, scope: !280)
!282 = !DILocation(line: 304, column: 7, scope: !270)
!283 = !DILocation(line: 305, column: 11, scope: !284)
!284 = distinct !DILexicalBlock(scope: !280, file: !3, line: 304, column: 29)
!285 = !DILocation(line: 306, column: 3, scope: !284)
!286 = !DILocation(line: 307, column: 2, scope: !270)
!287 = !DILocation(line: 309, column: 2, scope: !258)
!288 = distinct !DISubprogram(name: "acpi_tb_validate_temp_table", scope: !3, file: !3, line: 356, type: !259, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !88)
!289 = !DILocalVariable(name: "table_desc", arg: 1, scope: !288, file: !3, line: 356, type: !69)
!290 = !DILocation(line: 356, column: 65, scope: !288)
!291 = !DILocation(line: 359, column: 7, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !3, line: 359, column: 6)
!293 = !DILocation(line: 359, column: 19, scope: !292)
!294 = !DILocation(line: 359, column: 27, scope: !292)
!295 = !DILocation(line: 359, column: 31, scope: !292)
!296 = !DILocation(line: 359, column: 6, scope: !288)
!297 = !DILocation(line: 369, column: 3, scope: !298)
!298 = distinct !DILexicalBlock(scope: !292, file: !3, line: 359, column: 65)
!299 = !DILocation(line: 369, column: 15, scope: !298)
!300 = !DILocation(line: 369, column: 22, scope: !298)
!301 = !DILocation(line: 370, column: 2, scope: !298)
!302 = !DILocation(line: 372, column: 33, scope: !288)
!303 = !DILocation(line: 372, column: 10, scope: !288)
!304 = !DILocation(line: 372, column: 2, scope: !288)
!305 = distinct !DISubprogram(name: "acpi_tb_verify_temp_table", scope: !3, file: !3, line: 467, type: !306, scopeLine: 469, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !88)
!306 = !DISubroutineType(types: !307)
!307 = !{!51, !69, !308, !14}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!309 = !DILocalVariable(name: "table_desc", arg: 1, scope: !305, file: !3, line: 467, type: !69)
!310 = !DILocation(line: 467, column: 51, scope: !305)
!311 = !DILocalVariable(name: "signature", arg: 2, scope: !305, file: !3, line: 468, type: !308)
!312 = !DILocation(line: 468, column: 12, scope: !305)
!313 = !DILocalVariable(name: "table_index", arg: 3, scope: !305, file: !3, line: 468, type: !14)
!314 = !DILocation(line: 468, column: 28, scope: !305)
!315 = !DILocalVariable(name: "status", scope: !305, file: !3, line: 470, type: !51)
!316 = !DILocation(line: 470, column: 14, scope: !305)
!317 = !DILocation(line: 476, column: 39, scope: !305)
!318 = !DILocation(line: 476, column: 11, scope: !305)
!319 = !DILocation(line: 476, column: 9, scope: !305)
!320 = !DILocation(line: 477, column: 6, scope: !321)
!321 = distinct !DILexicalBlock(scope: !305, file: !3, line: 477, column: 6)
!322 = !DILocation(line: 477, column: 6, scope: !305)
!323 = !DILocation(line: 478, column: 3, scope: !324)
!324 = distinct !DILexicalBlock(scope: !321, file: !3, line: 477, column: 28)
!325 = !DILocation(line: 483, column: 6, scope: !326)
!326 = distinct !DILexicalBlock(scope: !305, file: !3, line: 483, column: 6)
!327 = !DILocation(line: 483, column: 16, scope: !326)
!328 = !DILocation(line: 484, column: 7, scope: !326)
!329 = !DILocation(line: 483, column: 6, scope: !305)
!330 = !DILocation(line: 485, column: 3, scope: !331)
!331 = distinct !DILexicalBlock(scope: !326, file: !3, line: 484, column: 64)
!332 = !DILocation(line: 488, column: 10, scope: !331)
!333 = !DILocation(line: 489, column: 3, scope: !331)
!334 = !DILocation(line: 492, column: 6, scope: !335)
!335 = distinct !DILexicalBlock(scope: !305, file: !3, line: 492, column: 6)
!336 = !DILocation(line: 492, column: 6, scope: !305)
!337 = !DILocation(line: 497, column: 31, scope: !338)
!338 = distinct !DILexicalBlock(scope: !335, file: !3, line: 492, column: 40)
!339 = !DILocation(line: 497, column: 43, scope: !338)
!340 = !DILocation(line: 498, column: 10, scope: !338)
!341 = !DILocation(line: 498, column: 22, scope: !338)
!342 = !DILocation(line: 497, column: 7, scope: !338)
!343 = !DILocation(line: 496, column: 10, scope: !338)
!344 = !DILocation(line: 499, column: 7, scope: !345)
!345 = distinct !DILexicalBlock(scope: !338, file: !3, line: 499, column: 7)
!346 = !DILocation(line: 499, column: 7, scope: !338)
!347 = !DILocation(line: 500, column: 4, scope: !348)
!348 = distinct !DILexicalBlock(scope: !345, file: !3, line: 499, column: 29)
!349 = !DILocation(line: 510, column: 4, scope: !348)
!350 = !DILocation(line: 515, column: 7, scope: !351)
!351 = distinct !DILexicalBlock(scope: !338, file: !3, line: 515, column: 7)
!352 = !DILocation(line: 515, column: 7, scope: !338)
!353 = !DILocation(line: 517, column: 34, scope: !354)
!354 = distinct !DILexicalBlock(scope: !351, file: !3, line: 515, column: 20)
!355 = !DILocation(line: 517, column: 46, scope: !354)
!356 = !DILocation(line: 517, column: 8, scope: !354)
!357 = !DILocation(line: 516, column: 11, scope: !354)
!358 = !DILocation(line: 518, column: 8, scope: !359)
!359 = distinct !DILexicalBlock(scope: !354, file: !3, line: 518, column: 8)
!360 = !DILocation(line: 518, column: 8, scope: !354)
!361 = !DILocation(line: 519, column: 9, scope: !362)
!362 = distinct !DILexicalBlock(scope: !363, file: !3, line: 519, column: 9)
!363 = distinct !DILexicalBlock(scope: !359, file: !3, line: 518, column: 30)
!364 = !DILocation(line: 519, column: 16, scope: !362)
!365 = !DILocation(line: 519, column: 9, scope: !363)
!366 = !DILocation(line: 520, column: 6, scope: !367)
!367 = distinct !DILexicalBlock(scope: !362, file: !3, line: 519, column: 38)
!368 = !DILocation(line: 530, column: 5, scope: !367)
!369 = !DILocation(line: 532, column: 5, scope: !363)
!370 = !DILocation(line: 534, column: 3, scope: !354)
!371 = !DILocation(line: 536, column: 3, scope: !338)
!372 = !DILocation(line: 536, column: 15, scope: !338)
!373 = !DILocation(line: 536, column: 21, scope: !338)
!374 = !DILocation(line: 537, column: 2, scope: !338)
!375 = !DILocation(line: 539, column: 2, scope: !305)
!376 = !DILabel(scope: !305, name: "invalidate_and_exit", file: !3, line: 541)
!377 = !DILocation(line: 541, column: 1, scope: !305)
!378 = !DILocation(line: 542, column: 27, scope: !305)
!379 = !DILocation(line: 542, column: 2, scope: !305)
!380 = !DILocation(line: 543, column: 2, scope: !305)
!381 = !DILocation(line: 544, column: 1, scope: !305)
!382 = distinct !DISubprogram(name: "acpi_tb_check_duplication", scope: !3, file: !3, line: 392, type: !383, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !88)
!383 = !DISubroutineType(types: !384)
!384 = !{!51, !69, !14}
!385 = !DILocalVariable(name: "table_desc", arg: 1, scope: !382, file: !3, line: 392, type: !69)
!386 = !DILocation(line: 392, column: 51, scope: !382)
!387 = !DILocalVariable(name: "table_index", arg: 2, scope: !382, file: !3, line: 392, type: !14)
!388 = !DILocation(line: 392, column: 68, scope: !382)
!389 = !DILocalVariable(name: "i", scope: !382, file: !3, line: 394, type: !15)
!390 = !DILocation(line: 394, column: 6, scope: !382)
!391 = !DILocation(line: 400, column: 9, scope: !392)
!392 = distinct !DILexicalBlock(scope: !382, file: !3, line: 400, column: 2)
!393 = !DILocation(line: 400, column: 7, scope: !392)
!394 = !DILocation(line: 400, column: 14, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !3, line: 400, column: 2)
!396 = !DILocation(line: 400, column: 43, scope: !395)
!397 = !DILocation(line: 400, column: 16, scope: !395)
!398 = !DILocation(line: 400, column: 2, scope: !392)
!399 = !DILocation(line: 405, column: 33, scope: !400)
!400 = distinct !DILexicalBlock(scope: !401, file: !3, line: 404, column: 7)
!401 = distinct !DILexicalBlock(scope: !395, file: !3, line: 400, column: 69)
!402 = !DILocation(line: 405, column: 40, scope: !400)
!403 = !DILocation(line: 405, column: 8, scope: !400)
!404 = !DILocation(line: 406, column: 8, scope: !400)
!405 = !DILocation(line: 406, column: 14, scope: !400)
!406 = !DILocation(line: 404, column: 7, scope: !401)
!407 = !DILocation(line: 407, column: 4, scope: !408)
!408 = distinct !DILexicalBlock(scope: !400, file: !3, line: 406, column: 41)
!409 = !DILocation(line: 414, column: 31, scope: !410)
!410 = distinct !DILexicalBlock(scope: !401, file: !3, line: 414, column: 7)
!411 = !DILocation(line: 414, column: 43, scope: !410)
!412 = !DILocation(line: 414, column: 8, scope: !410)
!413 = !DILocation(line: 414, column: 7, scope: !401)
!414 = !DILocation(line: 415, column: 4, scope: !415)
!415 = distinct !DILexicalBlock(scope: !410, file: !3, line: 414, column: 47)
!416 = !DILocation(line: 432, column: 32, scope: !417)
!417 = distinct !DILexicalBlock(scope: !401, file: !3, line: 432, column: 7)
!418 = !DILocation(line: 432, column: 39, scope: !417)
!419 = !DILocation(line: 432, column: 7, scope: !417)
!420 = !DILocation(line: 432, column: 42, scope: !417)
!421 = !DILocation(line: 432, column: 48, scope: !417)
!422 = !DILocation(line: 432, column: 7, scope: !401)
!423 = !DILocation(line: 437, column: 4, scope: !424)
!424 = distinct !DILexicalBlock(scope: !417, file: !3, line: 433, column: 29)
!425 = !DILocation(line: 439, column: 19, scope: !426)
!426 = distinct !DILexicalBlock(scope: !417, file: !3, line: 438, column: 10)
!427 = !DILocation(line: 439, column: 5, scope: !426)
!428 = !DILocation(line: 439, column: 17, scope: !426)
!429 = !DILocation(line: 440, column: 4, scope: !426)
!430 = !DILocation(line: 400, column: 64, scope: !395)
!431 = !DILocation(line: 400, column: 2, scope: !395)
!432 = distinct !{!432, !398, !433}
!433 = !DILocation(line: 442, column: 2, scope: !392)
!434 = !DILocation(line: 446, column: 2, scope: !382)
!435 = !DILocation(line: 447, column: 1, scope: !382)
!436 = distinct !DISubprogram(name: "acpi_tb_resize_root_table_list", scope: !3, file: !3, line: 558, type: !437, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !88)
!437 = !DISubroutineType(types: !438)
!438 = !{!51}
!439 = !DILocalVariable(name: "tables", scope: !436, file: !3, line: 560, type: !69)
!440 = !DILocation(line: 560, column: 26, scope: !436)
!441 = !DILocalVariable(name: "table_count", scope: !436, file: !3, line: 561, type: !15)
!442 = !DILocation(line: 561, column: 6, scope: !436)
!443 = !DILocalVariable(name: "current_table_count", scope: !436, file: !3, line: 562, type: !15)
!444 = !DILocation(line: 562, column: 6, scope: !436)
!445 = !DILocalVariable(name: "max_table_count", scope: !436, file: !3, line: 562, type: !15)
!446 = !DILocation(line: 562, column: 27, scope: !436)
!447 = !DILocalVariable(name: "i", scope: !436, file: !3, line: 563, type: !15)
!448 = !DILocation(line: 563, column: 6, scope: !436)
!449 = !DILocation(line: 569, column: 33, scope: !450)
!450 = distinct !DILexicalBlock(scope: !436, file: !3, line: 569, column: 6)
!451 = !DILocation(line: 569, column: 8, scope: !450)
!452 = !DILocation(line: 569, column: 39, scope: !450)
!453 = !DILocation(line: 569, column: 6, scope: !436)
!454 = !DILocation(line: 570, column: 3, scope: !455)
!455 = distinct !DILexicalBlock(scope: !450, file: !3, line: 569, column: 66)
!456 = !DILocation(line: 572, column: 3, scope: !455)
!457 = !DILocation(line: 577, column: 31, scope: !458)
!458 = distinct !DILexicalBlock(scope: !436, file: !3, line: 577, column: 6)
!459 = !DILocation(line: 577, column: 6, scope: !458)
!460 = !DILocation(line: 577, column: 37, scope: !458)
!461 = !DILocation(line: 577, column: 6, scope: !436)
!462 = !DILocation(line: 578, column: 42, scope: !463)
!463 = distinct !DILexicalBlock(scope: !458, file: !3, line: 577, column: 67)
!464 = !DILocation(line: 578, column: 15, scope: !463)
!465 = !DILocation(line: 579, column: 2, scope: !463)
!466 = !DILocation(line: 580, column: 42, scope: !467)
!467 = distinct !DILexicalBlock(scope: !458, file: !3, line: 579, column: 9)
!468 = !DILocation(line: 580, column: 15, scope: !467)
!469 = !DILocation(line: 583, column: 20, scope: !436)
!470 = !DILocation(line: 583, column: 32, scope: !436)
!471 = !DILocation(line: 583, column: 18, scope: !436)
!472 = !DILocation(line: 584, column: 11, scope: !436)
!473 = !DILocation(line: 584, column: 9, scope: !436)
!474 = !DILocation(line: 586, column: 7, scope: !475)
!475 = distinct !DILexicalBlock(scope: !436, file: !3, line: 586, column: 6)
!476 = !DILocation(line: 586, column: 6, scope: !436)
!477 = !DILocation(line: 587, column: 3, scope: !478)
!478 = distinct !DILexicalBlock(scope: !475, file: !3, line: 586, column: 15)
!479 = !DILocation(line: 589, column: 3, scope: !478)
!480 = !DILocation(line: 594, column: 22, scope: !436)
!481 = !DILocation(line: 595, column: 31, scope: !482)
!482 = distinct !DILexicalBlock(scope: !436, file: !3, line: 595, column: 6)
!483 = !DILocation(line: 595, column: 6, scope: !482)
!484 = !DILocation(line: 595, column: 6, scope: !436)
!485 = !DILocation(line: 596, column: 10, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !3, line: 596, column: 3)
!487 = distinct !DILexicalBlock(scope: !482, file: !3, line: 595, column: 39)
!488 = !DILocation(line: 596, column: 8, scope: !486)
!489 = !DILocation(line: 596, column: 15, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !3, line: 596, column: 3)
!491 = !DILocation(line: 596, column: 19, scope: !490)
!492 = !DILocation(line: 596, column: 17, scope: !490)
!493 = !DILocation(line: 596, column: 3, scope: !486)
!494 = !DILocation(line: 597, column: 33, scope: !495)
!495 = distinct !DILexicalBlock(scope: !496, file: !3, line: 597, column: 8)
!496 = distinct !DILexicalBlock(scope: !490, file: !3, line: 596, column: 37)
!497 = !DILocation(line: 597, column: 40, scope: !495)
!498 = !DILocation(line: 597, column: 8, scope: !495)
!499 = !DILocation(line: 597, column: 43, scope: !495)
!500 = !DILocation(line: 597, column: 8, scope: !496)
!501 = !DILocation(line: 598, column: 12, scope: !502)
!502 = distinct !DILexicalBlock(scope: !495, file: !3, line: 597, column: 52)
!503 = !DILocation(line: 598, column: 21, scope: !502)
!504 = !DILocation(line: 598, column: 19, scope: !502)
!505 = !DILocation(line: 598, column: 5, scope: !502)
!506 = !DILocation(line: 599, column: 37, scope: !502)
!507 = !DILocation(line: 599, column: 46, scope: !502)
!508 = !DILocation(line: 599, column: 44, scope: !502)
!509 = !DILocation(line: 601, column: 24, scope: !502)
!510 = !DILocation(line: 602, column: 4, scope: !502)
!511 = !DILocation(line: 603, column: 3, scope: !496)
!512 = !DILocation(line: 596, column: 33, scope: !490)
!513 = !DILocation(line: 596, column: 3, scope: !490)
!514 = distinct !{!514, !493, !515}
!515 = !DILocation(line: 603, column: 3, scope: !486)
!516 = !DILocation(line: 605, column: 32, scope: !517)
!517 = distinct !DILexicalBlock(scope: !487, file: !3, line: 605, column: 7)
!518 = !DILocation(line: 605, column: 7, scope: !517)
!519 = !DILocation(line: 605, column: 38, scope: !517)
!520 = !DILocation(line: 605, column: 7, scope: !487)
!521 = !DILocation(line: 606, column: 4, scope: !522)
!522 = distinct !DILexicalBlock(scope: !517, file: !3, line: 605, column: 68)
!523 = !DILocation(line: 607, column: 3, scope: !522)
!524 = !DILocation(line: 608, column: 2, scope: !487)
!525 = !DILocation(line: 610, column: 36, scope: !436)
!526 = !DILocation(line: 610, column: 34, scope: !436)
!527 = !DILocation(line: 611, column: 45, scope: !436)
!528 = !DILocation(line: 611, column: 43, scope: !436)
!529 = !DILocation(line: 612, column: 49, scope: !436)
!530 = !DILocation(line: 612, column: 47, scope: !436)
!531 = !DILocation(line: 613, column: 33, scope: !436)
!532 = !DILocation(line: 615, column: 2, scope: !436)
!533 = !DILocation(line: 616, column: 1, scope: !436)
!534 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !535, file: !535, line: 55, type: !536, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !88)
!535 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!536 = !DISubroutineType(types: !537)
!537 = !{!19, !46}
!538 = !DILocalVariable(name: "flags", arg: 1, scope: !539, file: !540, line: 162, type: !54)
!539 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !540, file: !540, line: 162, type: !541, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !88)
!540 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!541 = !DISubroutineType(types: !542)
!542 = !{!543, !54}
!543 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!544 = !DILocation(line: 162, column: 67, scope: !539, inlinedAt: !545)
!545 = distinct !DILocation(line: 57, column: 23, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !535, line: 57, column: 23)
!547 = distinct !DILexicalBlock(scope: !534, file: !535, line: 57, column: 23)
!548 = !DILocalVariable(name: "size", arg: 1, scope: !534, file: !535, line: 55, type: !46)
!549 = !DILocation(line: 55, column: 55, scope: !534)
!550 = !DILocation(line: 57, column: 17, scope: !534)
!551 = !DILocalVariable(name: "_flags", scope: !547, file: !535, line: 57, type: !54)
!552 = !DILocation(line: 57, column: 23, scope: !547)
!553 = !DILocalVariable(name: "__dummy", scope: !554, file: !535, line: 57, type: !54)
!554 = distinct !DILexicalBlock(scope: !555, file: !535, line: 57, column: 23)
!555 = distinct !DILexicalBlock(scope: !547, file: !535, line: 57, column: 23)
!556 = !DILocation(line: 57, column: 23, scope: !554)
!557 = !DILocalVariable(name: "__dummy2", scope: !554, file: !535, line: 57, type: !54)
!558 = !DILocation(line: 57, column: 23, scope: !555)
!559 = !DILocalVariable(name: "__dummy", scope: !560, file: !535, line: 57, type: !54)
!560 = distinct !DILexicalBlock(scope: !546, file: !535, line: 57, column: 23)
!561 = !DILocation(line: 57, column: 23, scope: !560)
!562 = !DILocalVariable(name: "__dummy2", scope: !560, file: !535, line: 57, type: !54)
!563 = !DILocation(line: 57, column: 23, scope: !546)
!564 = !DILocation(line: 164, column: 11, scope: !539, inlinedAt: !545)
!565 = !DILocation(line: 164, column: 17, scope: !539, inlinedAt: !545)
!566 = !DILocation(line: 164, column: 9, scope: !539, inlinedAt: !545)
!567 = !DILocation(line: 57, column: 23, scope: !534)
!568 = !DILocation(line: 57, column: 9, scope: !534)
!569 = !DILocation(line: 57, column: 2, scope: !534)
!570 = distinct !DISubprogram(name: "acpi_os_free", scope: !535, file: !535, line: 60, type: !571, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !88)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !19}
!573 = !DILocalVariable(name: "memory", arg: 1, scope: !570, file: !535, line: 60, type: !19)
!574 = !DILocation(line: 60, column: 39, scope: !570)
!575 = !DILocation(line: 62, column: 8, scope: !570)
!576 = !DILocation(line: 62, column: 2, scope: !570)
!577 = !DILocation(line: 63, column: 1, scope: !570)
!578 = distinct !DISubprogram(name: "acpi_tb_get_next_table_descriptor", scope: !3, file: !3, line: 632, type: !579, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !88)
!579 = !DISubroutineType(types: !580)
!580 = !{!51, !14, !581}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!582 = !DILocalVariable(name: "table_index", arg: 1, scope: !578, file: !3, line: 632, type: !14)
!583 = !DILocation(line: 632, column: 40, scope: !578)
!584 = !DILocalVariable(name: "table_desc", arg: 2, scope: !578, file: !3, line: 633, type: !581)
!585 = !DILocation(line: 633, column: 32, scope: !578)
!586 = !DILocalVariable(name: "status", scope: !578, file: !3, line: 635, type: !51)
!587 = !DILocation(line: 635, column: 14, scope: !578)
!588 = !DILocalVariable(name: "i", scope: !578, file: !3, line: 636, type: !15)
!589 = !DILocation(line: 636, column: 6, scope: !578)
!590 = !DILocation(line: 640, column: 31, scope: !591)
!591 = distinct !DILexicalBlock(scope: !578, file: !3, line: 640, column: 6)
!592 = !DILocation(line: 641, column: 31, scope: !591)
!593 = !DILocation(line: 640, column: 51, scope: !591)
!594 = !DILocation(line: 640, column: 6, scope: !578)
!595 = !DILocation(line: 642, column: 12, scope: !596)
!596 = distinct !DILexicalBlock(scope: !591, file: !3, line: 641, column: 48)
!597 = !DILocation(line: 642, column: 10, scope: !596)
!598 = !DILocation(line: 643, column: 7, scope: !599)
!599 = distinct !DILexicalBlock(scope: !596, file: !3, line: 643, column: 7)
!600 = !DILocation(line: 643, column: 7, scope: !596)
!601 = !DILocation(line: 644, column: 12, scope: !602)
!602 = distinct !DILexicalBlock(scope: !599, file: !3, line: 643, column: 29)
!603 = !DILocation(line: 644, column: 4, scope: !602)
!604 = !DILocation(line: 646, column: 2, scope: !596)
!605 = !DILocation(line: 648, column: 31, scope: !578)
!606 = !DILocation(line: 648, column: 4, scope: !578)
!607 = !DILocation(line: 649, column: 46, scope: !578)
!608 = !DILocation(line: 651, column: 6, scope: !609)
!609 = distinct !DILexicalBlock(scope: !578, file: !3, line: 651, column: 6)
!610 = !DILocation(line: 651, column: 6, scope: !578)
!611 = !DILocation(line: 652, column: 18, scope: !612)
!612 = distinct !DILexicalBlock(scope: !609, file: !3, line: 651, column: 19)
!613 = !DILocation(line: 652, column: 4, scope: !612)
!614 = !DILocation(line: 652, column: 16, scope: !612)
!615 = !DILocation(line: 653, column: 2, scope: !612)
!616 = !DILocation(line: 654, column: 6, scope: !617)
!617 = distinct !DILexicalBlock(scope: !578, file: !3, line: 654, column: 6)
!618 = !DILocation(line: 654, column: 6, scope: !578)
!619 = !DILocation(line: 655, column: 43, scope: !620)
!620 = distinct !DILexicalBlock(scope: !617, file: !3, line: 654, column: 18)
!621 = !DILocation(line: 655, column: 50, scope: !620)
!622 = !DILocation(line: 655, column: 18, scope: !620)
!623 = !DILocation(line: 655, column: 4, scope: !620)
!624 = !DILocation(line: 655, column: 15, scope: !620)
!625 = !DILocation(line: 656, column: 2, scope: !620)
!626 = !DILocation(line: 658, column: 2, scope: !578)
!627 = !DILocation(line: 659, column: 1, scope: !578)
!628 = distinct !DISubprogram(name: "acpi_tb_terminate", scope: !3, file: !3, line: 673, type: !629, scopeLine: 674, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !88)
!629 = !DISubroutineType(types: !630)
!630 = !{null}
!631 = !DILocalVariable(name: "i", scope: !628, file: !3, line: 675, type: !15)
!632 = !DILocation(line: 675, column: 6, scope: !628)
!633 = !DILocation(line: 679, column: 8, scope: !628)
!634 = !DILocation(line: 683, column: 9, scope: !635)
!635 = distinct !DILexicalBlock(scope: !628, file: !3, line: 683, column: 2)
!636 = !DILocation(line: 683, column: 7, scope: !635)
!637 = !DILocation(line: 683, column: 14, scope: !638)
!638 = distinct !DILexicalBlock(scope: !635, file: !3, line: 683, column: 2)
!639 = !DILocation(line: 683, column: 43, scope: !638)
!640 = !DILocation(line: 683, column: 16, scope: !638)
!641 = !DILocation(line: 683, column: 2, scope: !635)
!642 = !DILocation(line: 684, column: 53, scope: !643)
!643 = distinct !DILexicalBlock(scope: !638, file: !3, line: 683, column: 69)
!644 = !DILocation(line: 684, column: 60, scope: !643)
!645 = !DILocation(line: 684, column: 28, scope: !643)
!646 = !DILocation(line: 684, column: 3, scope: !643)
!647 = !DILocation(line: 685, column: 2, scope: !643)
!648 = !DILocation(line: 683, column: 65, scope: !638)
!649 = !DILocation(line: 683, column: 2, scope: !638)
!650 = distinct !{!650, !641, !651}
!651 = !DILocation(line: 685, column: 2, scope: !635)
!652 = !DILocation(line: 691, column: 31, scope: !653)
!653 = distinct !DILexicalBlock(scope: !628, file: !3, line: 691, column: 6)
!654 = !DILocation(line: 691, column: 6, scope: !653)
!655 = !DILocation(line: 691, column: 37, scope: !653)
!656 = !DILocation(line: 691, column: 6, scope: !628)
!657 = !DILocation(line: 692, column: 3, scope: !658)
!658 = distinct !DILexicalBlock(scope: !653, file: !3, line: 691, column: 67)
!659 = !DILocation(line: 693, column: 2, scope: !658)
!660 = !DILocation(line: 695, column: 34, scope: !628)
!661 = !DILocation(line: 696, column: 33, scope: !628)
!662 = !DILocation(line: 697, column: 47, scope: !628)
!663 = !DILocation(line: 701, column: 8, scope: !628)
!664 = !DILocation(line: 702, column: 2, scope: !628)
!665 = distinct !DISubprogram(name: "acpi_tb_delete_namespace_by_owner", scope: !3, file: !3, line: 717, type: !666, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !88)
!666 = !DISubroutineType(types: !667)
!667 = !{!51, !15}
!668 = !DILocalVariable(name: "table_index", arg: 1, scope: !665, file: !3, line: 717, type: !15)
!669 = !DILocation(line: 717, column: 51, scope: !665)
!670 = !DILocalVariable(name: "owner_id", scope: !665, file: !3, line: 719, type: !82)
!671 = !DILocation(line: 719, column: 16, scope: !665)
!672 = !DILocalVariable(name: "status", scope: !665, file: !3, line: 720, type: !51)
!673 = !DILocation(line: 720, column: 14, scope: !665)
!674 = !DILocation(line: 724, column: 11, scope: !665)
!675 = !DILocation(line: 724, column: 9, scope: !665)
!676 = !DILocation(line: 725, column: 6, scope: !677)
!677 = distinct !DILexicalBlock(scope: !665, file: !3, line: 725, column: 6)
!678 = !DILocation(line: 725, column: 6, scope: !665)
!679 = !DILocation(line: 726, column: 3, scope: !680)
!680 = distinct !DILexicalBlock(scope: !677, file: !3, line: 725, column: 28)
!681 = !DILocation(line: 729, column: 6, scope: !682)
!682 = distinct !DILexicalBlock(scope: !665, file: !3, line: 729, column: 6)
!683 = !DILocation(line: 729, column: 46, scope: !682)
!684 = !DILocation(line: 729, column: 18, scope: !682)
!685 = !DILocation(line: 729, column: 6, scope: !665)
!686 = !DILocation(line: 733, column: 9, scope: !687)
!687 = distinct !DILexicalBlock(scope: !682, file: !3, line: 729, column: 67)
!688 = !DILocation(line: 734, column: 3, scope: !687)
!689 = !DILocation(line: 739, column: 38, scope: !665)
!690 = !DILocation(line: 739, column: 45, scope: !665)
!691 = !DILocation(line: 739, column: 13, scope: !665)
!692 = !DILocation(line: 739, column: 58, scope: !665)
!693 = !DILocation(line: 739, column: 11, scope: !665)
!694 = !DILocation(line: 740, column: 8, scope: !665)
!695 = !DILocation(line: 749, column: 11, scope: !665)
!696 = !DILocation(line: 749, column: 9, scope: !665)
!697 = !DILocation(line: 750, column: 6, scope: !698)
!698 = distinct !DILexicalBlock(scope: !665, file: !3, line: 750, column: 6)
!699 = !DILocation(line: 750, column: 6, scope: !665)
!700 = !DILocation(line: 751, column: 3, scope: !701)
!701 = distinct !DILexicalBlock(scope: !698, file: !3, line: 750, column: 28)
!702 = !DILocation(line: 754, column: 36, scope: !665)
!703 = !DILocation(line: 754, column: 2, scope: !665)
!704 = !DILocation(line: 755, column: 2, scope: !665)
!705 = !DILocation(line: 756, column: 2, scope: !665)
!706 = !DILocation(line: 757, column: 1, scope: !665)
!707 = distinct !DISubprogram(name: "acpi_tb_allocate_owner_id", scope: !3, file: !3, line: 771, type: !666, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !88)
!708 = !DILocalVariable(name: "table_index", arg: 1, scope: !707, file: !3, line: 771, type: !15)
!709 = !DILocation(line: 771, column: 43, scope: !707)
!710 = !DILocalVariable(name: "status", scope: !707, file: !3, line: 773, type: !51)
!711 = !DILocation(line: 773, column: 14, scope: !707)
!712 = !DILocation(line: 777, column: 8, scope: !707)
!713 = !DILocation(line: 778, column: 6, scope: !714)
!714 = distinct !DILexicalBlock(scope: !707, file: !3, line: 778, column: 6)
!715 = !DILocation(line: 778, column: 45, scope: !714)
!716 = !DILocation(line: 778, column: 18, scope: !714)
!717 = !DILocation(line: 778, column: 6, scope: !707)
!718 = !DILocation(line: 782, column: 13, scope: !719)
!719 = distinct !DILexicalBlock(scope: !714, file: !3, line: 778, column: 66)
!720 = !DILocation(line: 782, column: 20, scope: !719)
!721 = !DILocation(line: 781, column: 13, scope: !719)
!722 = !DILocation(line: 782, column: 33, scope: !719)
!723 = !DILocation(line: 780, column: 7, scope: !719)
!724 = !DILocation(line: 779, column: 10, scope: !719)
!725 = !DILocation(line: 783, column: 2, scope: !719)
!726 = !DILocation(line: 785, column: 8, scope: !707)
!727 = !DILocation(line: 786, column: 2, scope: !707)
!728 = distinct !DISubprogram(name: "acpi_tb_release_owner_id", scope: !3, file: !3, line: 801, type: !666, scopeLine: 802, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !88)
!729 = !DILocalVariable(name: "table_index", arg: 1, scope: !728, file: !3, line: 801, type: !15)
!730 = !DILocation(line: 801, column: 42, scope: !728)
!731 = !DILocalVariable(name: "status", scope: !728, file: !3, line: 803, type: !51)
!732 = !DILocation(line: 803, column: 14, scope: !728)
!733 = !DILocation(line: 807, column: 8, scope: !728)
!734 = !DILocation(line: 808, column: 6, scope: !735)
!735 = distinct !DILexicalBlock(scope: !728, file: !3, line: 808, column: 6)
!736 = !DILocation(line: 808, column: 45, scope: !735)
!737 = !DILocation(line: 808, column: 18, scope: !735)
!738 = !DILocation(line: 808, column: 6, scope: !728)
!739 = !DILocation(line: 811, column: 8, scope: !740)
!740 = distinct !DILexicalBlock(scope: !735, file: !3, line: 808, column: 66)
!741 = !DILocation(line: 811, column: 15, scope: !740)
!742 = !DILocation(line: 810, column: 8, scope: !740)
!743 = !DILocation(line: 811, column: 28, scope: !740)
!744 = !DILocation(line: 809, column: 3, scope: !740)
!745 = !DILocation(line: 812, column: 10, scope: !740)
!746 = !DILocation(line: 813, column: 2, scope: !740)
!747 = !DILocation(line: 815, column: 8, scope: !728)
!748 = !DILocation(line: 816, column: 2, scope: !728)
!749 = distinct !DISubprogram(name: "acpi_tb_get_owner_id", scope: !3, file: !3, line: 832, type: !750, scopeLine: 833, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !88)
!750 = !DISubroutineType(types: !751)
!751 = !{!51, !15, !752}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!753 = !DILocalVariable(name: "table_index", arg: 1, scope: !749, file: !3, line: 832, type: !15)
!754 = !DILocation(line: 832, column: 38, scope: !749)
!755 = !DILocalVariable(name: "owner_id", arg: 2, scope: !749, file: !3, line: 832, type: !752)
!756 = !DILocation(line: 832, column: 66, scope: !749)
!757 = !DILocalVariable(name: "status", scope: !749, file: !3, line: 834, type: !51)
!758 = !DILocation(line: 834, column: 14, scope: !749)
!759 = !DILocation(line: 838, column: 8, scope: !749)
!760 = !DILocation(line: 839, column: 6, scope: !761)
!761 = distinct !DILexicalBlock(scope: !749, file: !3, line: 839, column: 6)
!762 = !DILocation(line: 839, column: 45, scope: !761)
!763 = !DILocation(line: 839, column: 18, scope: !761)
!764 = !DILocation(line: 839, column: 6, scope: !749)
!765 = !DILocation(line: 841, column: 32, scope: !766)
!766 = distinct !DILexicalBlock(scope: !761, file: !3, line: 839, column: 66)
!767 = !DILocation(line: 841, column: 39, scope: !766)
!768 = !DILocation(line: 841, column: 7, scope: !766)
!769 = !DILocation(line: 841, column: 52, scope: !766)
!770 = !DILocation(line: 840, column: 4, scope: !766)
!771 = !DILocation(line: 840, column: 13, scope: !766)
!772 = !DILocation(line: 842, column: 10, scope: !766)
!773 = !DILocation(line: 843, column: 2, scope: !766)
!774 = !DILocation(line: 845, column: 8, scope: !749)
!775 = !DILocation(line: 846, column: 2, scope: !749)
!776 = distinct !DISubprogram(name: "acpi_tb_is_table_loaded", scope: !3, file: !3, line: 859, type: !777, scopeLine: 860, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !88)
!777 = !DISubroutineType(types: !778)
!778 = !{!31, !15}
!779 = !DILocalVariable(name: "table_index", arg: 1, scope: !776, file: !3, line: 859, type: !15)
!780 = !DILocation(line: 859, column: 32, scope: !776)
!781 = !DILocalVariable(name: "is_loaded", scope: !776, file: !3, line: 861, type: !31)
!782 = !DILocation(line: 861, column: 5, scope: !776)
!783 = !DILocation(line: 863, column: 8, scope: !776)
!784 = !DILocation(line: 864, column: 6, scope: !785)
!785 = distinct !DILexicalBlock(scope: !776, file: !3, line: 864, column: 6)
!786 = !DILocation(line: 864, column: 45, scope: !785)
!787 = !DILocation(line: 864, column: 18, scope: !785)
!788 = !DILocation(line: 864, column: 6, scope: !776)
!789 = !DILocation(line: 866, column: 33, scope: !790)
!790 = distinct !DILexicalBlock(scope: !785, file: !3, line: 864, column: 66)
!791 = !DILocation(line: 866, column: 40, scope: !790)
!792 = !DILocation(line: 866, column: 8, scope: !790)
!793 = !DILocation(line: 866, column: 53, scope: !790)
!794 = !DILocation(line: 866, column: 59, scope: !790)
!795 = !DILocation(line: 865, column: 15, scope: !790)
!796 = !DILocation(line: 865, column: 13, scope: !790)
!797 = !DILocation(line: 868, column: 2, scope: !790)
!798 = !DILocation(line: 870, column: 8, scope: !776)
!799 = !DILocation(line: 871, column: 10, scope: !776)
!800 = !DILocation(line: 871, column: 2, scope: !776)
!801 = distinct !DISubprogram(name: "acpi_tb_set_table_loaded_flag", scope: !3, file: !3, line: 887, type: !802, scopeLine: 888, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !88)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !15, !31}
!804 = !DILocalVariable(name: "table_index", arg: 1, scope: !801, file: !3, line: 887, type: !15)
!805 = !DILocation(line: 887, column: 40, scope: !801)
!806 = !DILocalVariable(name: "is_loaded", arg: 2, scope: !801, file: !3, line: 887, type: !31)
!807 = !DILocation(line: 887, column: 56, scope: !801)
!808 = !DILocation(line: 890, column: 8, scope: !801)
!809 = !DILocation(line: 891, column: 6, scope: !810)
!810 = distinct !DILexicalBlock(scope: !801, file: !3, line: 891, column: 6)
!811 = !DILocation(line: 891, column: 45, scope: !810)
!812 = !DILocation(line: 891, column: 18, scope: !810)
!813 = !DILocation(line: 891, column: 6, scope: !801)
!814 = !DILocation(line: 892, column: 7, scope: !815)
!815 = distinct !DILexicalBlock(scope: !816, file: !3, line: 892, column: 7)
!816 = distinct !DILexicalBlock(scope: !810, file: !3, line: 891, column: 66)
!817 = !DILocation(line: 892, column: 7, scope: !816)
!818 = !DILocation(line: 893, column: 29, scope: !819)
!819 = distinct !DILexicalBlock(scope: !815, file: !3, line: 892, column: 18)
!820 = !DILocation(line: 893, column: 36, scope: !819)
!821 = !DILocation(line: 893, column: 4, scope: !819)
!822 = !DILocation(line: 893, column: 49, scope: !819)
!823 = !DILocation(line: 893, column: 55, scope: !819)
!824 = !DILocation(line: 895, column: 3, scope: !819)
!825 = !DILocation(line: 896, column: 29, scope: !826)
!826 = distinct !DILexicalBlock(scope: !815, file: !3, line: 895, column: 10)
!827 = !DILocation(line: 896, column: 36, scope: !826)
!828 = !DILocation(line: 896, column: 4, scope: !826)
!829 = !DILocation(line: 896, column: 49, scope: !826)
!830 = !DILocation(line: 896, column: 55, scope: !826)
!831 = !DILocation(line: 899, column: 2, scope: !816)
!832 = !DILocation(line: 901, column: 8, scope: !801)
!833 = !DILocation(line: 902, column: 1, scope: !801)
!834 = distinct !DISubprogram(name: "acpi_tb_load_table", scope: !3, file: !3, line: 918, type: !835, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !88)
!835 = !DISubroutineType(types: !836)
!836 = !{!51, !15, !837}
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !839, line: 133, size: 384, elements: !840)
!839 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!840 = !{!841, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !838, file: !839, line: 134, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !844, line: 367, size: 576, elements: !845)
!844 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!845 = !{!846, !854, !867, !877, !890, !904, !913, !1222, !1239, !1253, !1266, !1344, !1356, !1370, !1380, !1398, !1420, !1439, !1458, !1477, !1490, !1516, !1533, !1546, !1560, !1569}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !843, file: !844, line: 368, baseType: !847, size: 128)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !844, line: 73, size: 128, elements: !848)
!848 = !{!849, !850, !851, !852, !853}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !847, file: !844, line: 74, baseType: !842, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !847, file: !844, line: 74, baseType: !31, size: 8, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !847, file: !844, line: 74, baseType: !31, size: 8, offset: 72)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !847, file: !844, line: 74, baseType: !83, size: 16, offset: 80)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !847, file: !844, line: 74, baseType: !31, size: 8, offset: 96)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !843, file: !844, line: 369, baseType: !855, size: 192)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !844, line: 76, size: 192, elements: !856)
!856 = !{!857, !858, !859, !860, !861, !862, !866}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !855, file: !844, line: 77, baseType: !842, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !855, file: !844, line: 77, baseType: !31, size: 8, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !855, file: !844, line: 77, baseType: !31, size: 8, offset: 72)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !855, file: !844, line: 77, baseType: !83, size: 16, offset: 80)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !855, file: !844, line: 77, baseType: !31, size: 8, offset: 96)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !855, file: !844, line: 77, baseType: !863, size: 24, offset: 104)
!863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 24, elements: !864)
!864 = !{!865}
!865 = !DISubrange(count: 3)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !855, file: !844, line: 78, baseType: !48, size: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !843, file: !844, line: 370, baseType: !868, size: 256)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !844, line: 93, size: 256, elements: !869)
!869 = !{!870, !871, !872, !873, !874, !875, !876}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !868, file: !844, line: 94, baseType: !842, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !868, file: !844, line: 94, baseType: !31, size: 8, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !868, file: !844, line: 94, baseType: !31, size: 8, offset: 72)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !868, file: !844, line: 94, baseType: !83, size: 16, offset: 80)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !868, file: !844, line: 94, baseType: !31, size: 8, offset: 96)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !868, file: !844, line: 94, baseType: !308, size: 64, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !868, file: !844, line: 94, baseType: !15, size: 32, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !843, file: !844, line: 371, baseType: !878, size: 384)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !844, line: 97, size: 384, elements: !879)
!879 = !{!880, !881, !882, !883, !884, !885, !886, !887, !888, !889}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !878, file: !844, line: 98, baseType: !842, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !878, file: !844, line: 98, baseType: !31, size: 8, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !878, file: !844, line: 98, baseType: !31, size: 8, offset: 72)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !878, file: !844, line: 98, baseType: !83, size: 16, offset: 80)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !878, file: !844, line: 98, baseType: !31, size: 8, offset: 96)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !878, file: !844, line: 98, baseType: !118, size: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !878, file: !844, line: 98, baseType: !15, size: 32, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !878, file: !844, line: 99, baseType: !15, size: 32, offset: 224)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !878, file: !844, line: 100, baseType: !118, size: 64, offset: 256)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !878, file: !844, line: 101, baseType: !837, size: 64, offset: 320)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !843, file: !844, line: 372, baseType: !891, size: 384)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !844, line: 104, size: 384, elements: !892)
!892 = !{!893, !894, !895, !896, !897, !898, !899, !901, !902, !903}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !891, file: !844, line: 105, baseType: !842, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !891, file: !844, line: 105, baseType: !31, size: 8, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !891, file: !844, line: 105, baseType: !31, size: 8, offset: 72)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !891, file: !844, line: 105, baseType: !83, size: 16, offset: 80)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !891, file: !844, line: 105, baseType: !31, size: 8, offset: 96)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !891, file: !844, line: 105, baseType: !837, size: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !891, file: !844, line: 106, baseType: !900, size: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !891, file: !844, line: 107, baseType: !118, size: 64, offset: 256)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !891, file: !844, line: 108, baseType: !15, size: 32, offset: 320)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !891, file: !844, line: 109, baseType: !15, size: 32, offset: 352)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !843, file: !844, line: 373, baseType: !905, size: 192)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !844, line: 118, size: 192, elements: !906)
!906 = !{!907, !908, !909, !910, !911, !912}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !905, file: !844, line: 119, baseType: !842, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !905, file: !844, line: 119, baseType: !31, size: 8, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !905, file: !844, line: 119, baseType: !31, size: 8, offset: 72)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !905, file: !844, line: 119, baseType: !83, size: 16, offset: 80)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !905, file: !844, line: 119, baseType: !31, size: 8, offset: 96)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !905, file: !844, line: 119, baseType: !19, size: 64, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !843, file: !844, line: 374, baseType: !914, size: 448)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !844, line: 143, size: 448, elements: !915)
!915 = !{!916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !1219, !1220, !1221}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !914, file: !844, line: 144, baseType: !842, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !914, file: !844, line: 144, baseType: !31, size: 8, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !914, file: !844, line: 144, baseType: !31, size: 8, offset: 72)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !914, file: !844, line: 144, baseType: !83, size: 16, offset: 80)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !914, file: !844, line: 144, baseType: !31, size: 8, offset: 96)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !914, file: !844, line: 144, baseType: !31, size: 8, offset: 104)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !914, file: !844, line: 145, baseType: !31, size: 8, offset: 112)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !914, file: !844, line: 146, baseType: !31, size: 8, offset: 120)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !914, file: !844, line: 147, baseType: !842, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !914, file: !844, line: 148, baseType: !842, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !914, file: !844, line: 149, baseType: !118, size: 64, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !914, file: !844, line: 153, baseType: !928, size: 64, offset: 320)
!928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !914, file: !844, line: 150, size: 64, elements: !929)
!929 = !{!930, !1218}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !928, file: !844, line: 151, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !839, line: 248, baseType: !932)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!51, !935}
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !937, line: 37, size: 9024, elements: !938)
!937 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!938 = !{!939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !1166, !1167, !1168, !1169, !1170, !1172, !1174, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1210, !1216}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !936, file: !937, line: 38, baseType: !935, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !936, file: !937, line: 39, baseType: !31, size: 8, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !936, file: !937, line: 40, baseType: !31, size: 8, offset: 72)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !936, file: !937, line: 41, baseType: !83, size: 16, offset: 80)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !936, file: !937, line: 42, baseType: !31, size: 8, offset: 96)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !936, file: !937, line: 43, baseType: !31, size: 8, offset: 104)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !936, file: !937, line: 44, baseType: !31, size: 8, offset: 112)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !936, file: !937, line: 45, baseType: !82, size: 16, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !936, file: !937, line: 46, baseType: !31, size: 8, offset: 144)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !936, file: !937, line: 47, baseType: !31, size: 8, offset: 152)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !936, file: !937, line: 48, baseType: !31, size: 8, offset: 160)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !936, file: !937, line: 49, baseType: !31, size: 8, offset: 168)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !936, file: !937, line: 50, baseType: !31, size: 8, offset: 176)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !936, file: !937, line: 51, baseType: !31, size: 8, offset: 184)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !936, file: !937, line: 52, baseType: !31, size: 8, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !936, file: !937, line: 53, baseType: !31, size: 8, offset: 200)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !936, file: !937, line: 54, baseType: !118, size: 64, offset: 256)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !936, file: !937, line: 55, baseType: !15, size: 32, offset: 320)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !936, file: !937, line: 56, baseType: !15, size: 32, offset: 352)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !936, file: !937, line: 57, baseType: !15, size: 32, offset: 384)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !936, file: !937, line: 58, baseType: !15, size: 32, offset: 416)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !936, file: !937, line: 60, baseType: !961, size: 640, offset: 448)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !839, line: 893, size: 640, elements: !962)
!962 = !{!963, !964, !965, !966, !967, !968, !1049, !1050, !1164, !1165}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !961, file: !839, line: 894, baseType: !118, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !961, file: !839, line: 895, baseType: !118, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !961, file: !839, line: 896, baseType: !118, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !961, file: !839, line: 897, baseType: !118, size: 64, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !961, file: !839, line: 898, baseType: !118, size: 64, offset: 256)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !961, file: !839, line: 899, baseType: !969, size: 64, offset: 320)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !839, line: 875, size: 1600, elements: !971)
!971 = !{!972, !992, !1008}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !970, file: !839, line: 876, baseType: !973, size: 448)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !839, line: 828, size: 448, elements: !974)
!974 = !{!975, !976, !977, !978, !979, !980, !981, !982, !991}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !973, file: !839, line: 829, baseType: !969, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !973, file: !839, line: 829, baseType: !31, size: 8, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !973, file: !839, line: 829, baseType: !31, size: 8, offset: 72)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !973, file: !839, line: 829, baseType: !83, size: 16, offset: 80)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !973, file: !839, line: 829, baseType: !118, size: 64, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !973, file: !839, line: 829, baseType: !969, size: 64, offset: 192)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !973, file: !839, line: 829, baseType: !837, size: 64, offset: 256)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !973, file: !839, line: 829, baseType: !983, size: 64, offset: 320)
!983 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !839, line: 716, size: 64, elements: !984)
!984 = !{!985, !986, !987, !988, !989, !990}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !983, file: !839, line: 717, baseType: !48, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !983, file: !839, line: 718, baseType: !15, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !983, file: !839, line: 719, baseType: !308, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !983, file: !839, line: 720, baseType: !118, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !983, file: !839, line: 721, baseType: !308, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !983, file: !839, line: 722, baseType: !969, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !973, file: !839, line: 829, baseType: !31, size: 8, offset: 384)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !970, file: !839, line: 877, baseType: !993, size: 640)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !839, line: 835, size: 640, elements: !994)
!994 = !{!995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !993, file: !839, line: 836, baseType: !969, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !993, file: !839, line: 836, baseType: !31, size: 8, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !993, file: !839, line: 836, baseType: !31, size: 8, offset: 72)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !993, file: !839, line: 836, baseType: !83, size: 16, offset: 80)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !993, file: !839, line: 836, baseType: !118, size: 64, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !993, file: !839, line: 836, baseType: !969, size: 64, offset: 192)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !993, file: !839, line: 836, baseType: !837, size: 64, offset: 256)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !993, file: !839, line: 836, baseType: !983, size: 64, offset: 320)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !993, file: !839, line: 836, baseType: !31, size: 8, offset: 384)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !993, file: !839, line: 836, baseType: !308, size: 64, offset: 448)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !993, file: !839, line: 837, baseType: !118, size: 64, offset: 512)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !993, file: !839, line: 838, baseType: !15, size: 32, offset: 576)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !993, file: !839, line: 839, baseType: !15, size: 32, offset: 608)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !970, file: !839, line: 878, baseType: !1009, size: 1600)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !839, line: 846, size: 1600, elements: !1010)
!1010 = !{!1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1009, file: !839, line: 847, baseType: !969, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1009, file: !839, line: 847, baseType: !31, size: 8, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1009, file: !839, line: 847, baseType: !31, size: 8, offset: 72)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !1009, file: !839, line: 847, baseType: !83, size: 16, offset: 80)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1009, file: !839, line: 847, baseType: !118, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1009, file: !839, line: 847, baseType: !969, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1009, file: !839, line: 847, baseType: !837, size: 64, offset: 256)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1009, file: !839, line: 847, baseType: !983, size: 64, offset: 320)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !1009, file: !839, line: 847, baseType: !31, size: 8, offset: 384)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1009, file: !839, line: 847, baseType: !969, size: 64, offset: 448)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !1009, file: !839, line: 848, baseType: !969, size: 64, offset: 512)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !1009, file: !839, line: 849, baseType: !308, size: 64, offset: 576)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !1009, file: !839, line: 850, baseType: !31, size: 8, offset: 640)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !1009, file: !839, line: 851, baseType: !308, size: 64, offset: 704)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !1009, file: !839, line: 852, baseType: !308, size: 64, offset: 768)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !1009, file: !839, line: 853, baseType: !308, size: 64, offset: 832)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !1009, file: !839, line: 854, baseType: !25, size: 32, offset: 896)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !1009, file: !839, line: 855, baseType: !15, size: 32, offset: 928)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !1009, file: !839, line: 856, baseType: !15, size: 32, offset: 960)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !1009, file: !839, line: 857, baseType: !15, size: 32, offset: 992)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !1009, file: !839, line: 858, baseType: !15, size: 32, offset: 1024)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !1009, file: !839, line: 859, baseType: !15, size: 32, offset: 1056)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !1009, file: !839, line: 860, baseType: !15, size: 32, offset: 1088)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !1009, file: !839, line: 861, baseType: !15, size: 32, offset: 1120)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !1009, file: !839, line: 862, baseType: !15, size: 32, offset: 1152)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1009, file: !839, line: 863, baseType: !15, size: 32, offset: 1184)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !1009, file: !839, line: 864, baseType: !15, size: 32, offset: 1216)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !1009, file: !839, line: 865, baseType: !15, size: 32, offset: 1248)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !1009, file: !839, line: 866, baseType: !15, size: 32, offset: 1280)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !1009, file: !839, line: 867, baseType: !15, size: 32, offset: 1312)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !1009, file: !839, line: 868, baseType: !83, size: 16, offset: 1344)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !1009, file: !839, line: 869, baseType: !31, size: 8, offset: 1360)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !1009, file: !839, line: 870, baseType: !31, size: 8, offset: 1368)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !1009, file: !839, line: 871, baseType: !31, size: 8, offset: 1376)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !1009, file: !839, line: 872, baseType: !1046, size: 160, offset: 1384)
!1046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 160, elements: !1047)
!1047 = !{!1048}
!1048 = !DISubrange(count: 20)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !961, file: !839, line: 900, baseType: !837, size: 64, offset: 384)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !961, file: !839, line: 901, baseType: !1051, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !839, line: 663, size: 640, elements: !1053)
!1053 = !{!1054, !1062, !1075, !1084, !1093, !1106, !1120, !1132, !1142}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1052, file: !839, line: 664, baseType: !1055, size: 128)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !839, line: 567, size: 128, elements: !1056)
!1056 = !{!1057, !1058, !1059, !1060, !1061}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1055, file: !839, line: 568, baseType: !19, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1055, file: !839, line: 568, baseType: !31, size: 8, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1055, file: !839, line: 568, baseType: !31, size: 8, offset: 72)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1055, file: !839, line: 568, baseType: !83, size: 16, offset: 80)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1055, file: !839, line: 568, baseType: !83, size: 16, offset: 96)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1052, file: !839, line: 665, baseType: !1063, size: 384)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !839, line: 593, size: 384, elements: !1064)
!1064 = !{!1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1063, file: !839, line: 594, baseType: !19, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1063, file: !839, line: 594, baseType: !31, size: 8, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1063, file: !839, line: 594, baseType: !31, size: 8, offset: 72)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1063, file: !839, line: 594, baseType: !83, size: 16, offset: 80)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1063, file: !839, line: 594, baseType: !83, size: 16, offset: 96)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !1063, file: !839, line: 594, baseType: !83, size: 16, offset: 112)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !1063, file: !839, line: 595, baseType: !969, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !1063, file: !839, line: 596, baseType: !118, size: 64, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !1063, file: !839, line: 597, baseType: !118, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !1063, file: !839, line: 598, baseType: !48, size: 64, offset: 320)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !1052, file: !839, line: 666, baseType: !1076, size: 192)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !839, line: 573, size: 192, elements: !1077)
!1077 = !{!1078, !1079, !1080, !1081, !1082, !1083}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1076, file: !839, line: 574, baseType: !19, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1076, file: !839, line: 574, baseType: !31, size: 8, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1076, file: !839, line: 574, baseType: !31, size: 8, offset: 72)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1076, file: !839, line: 574, baseType: !83, size: 16, offset: 80)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1076, file: !839, line: 574, baseType: !83, size: 16, offset: 96)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1076, file: !839, line: 574, baseType: !842, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !1052, file: !839, line: 667, baseType: !1085, size: 192)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !839, line: 604, size: 192, elements: !1086)
!1086 = !{!1087, !1088, !1089, !1090, !1091, !1092}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1085, file: !839, line: 605, baseType: !19, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1085, file: !839, line: 605, baseType: !31, size: 8, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1085, file: !839, line: 605, baseType: !31, size: 8, offset: 72)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1085, file: !839, line: 605, baseType: !83, size: 16, offset: 80)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1085, file: !839, line: 605, baseType: !83, size: 16, offset: 96)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1085, file: !839, line: 605, baseType: !837, size: 64, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !1052, file: !839, line: 668, baseType: !1094, size: 448)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !839, line: 608, size: 448, elements: !1095)
!1095 = !{!1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1094, file: !839, line: 609, baseType: !19, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1094, file: !839, line: 609, baseType: !31, size: 8, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1094, file: !839, line: 609, baseType: !31, size: 8, offset: 72)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1094, file: !839, line: 609, baseType: !83, size: 16, offset: 80)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1094, file: !839, line: 609, baseType: !83, size: 16, offset: 96)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !1094, file: !839, line: 609, baseType: !15, size: 32, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1094, file: !839, line: 610, baseType: !969, size: 64, offset: 192)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1094, file: !839, line: 611, baseType: !118, size: 64, offset: 256)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !1094, file: !839, line: 612, baseType: !118, size: 64, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !1094, file: !839, line: 613, baseType: !15, size: 32, offset: 384)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !1052, file: !839, line: 669, baseType: !1107, size: 512)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !839, line: 580, size: 512, elements: !1108)
!1108 = !{!1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1107, file: !839, line: 581, baseType: !19, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1107, file: !839, line: 581, baseType: !31, size: 8, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1107, file: !839, line: 581, baseType: !31, size: 8, offset: 72)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1107, file: !839, line: 581, baseType: !83, size: 16, offset: 80)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1107, file: !839, line: 581, baseType: !83, size: 16, offset: 96)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1107, file: !839, line: 581, baseType: !15, size: 32, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !1107, file: !839, line: 582, baseType: !842, size: 64, offset: 192)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !1107, file: !839, line: 583, baseType: !842, size: 64, offset: 256)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !1107, file: !839, line: 584, baseType: !935, size: 64, offset: 320)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !1107, file: !839, line: 585, baseType: !19, size: 64, offset: 384)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !1107, file: !839, line: 586, baseType: !15, size: 32, offset: 448)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1052, file: !839, line: 670, baseType: !1121, size: 320)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !839, line: 620, size: 320, elements: !1122)
!1122 = !{!1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1121, file: !839, line: 621, baseType: !19, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1121, file: !839, line: 621, baseType: !31, size: 8, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1121, file: !839, line: 621, baseType: !31, size: 8, offset: 72)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1121, file: !839, line: 621, baseType: !83, size: 16, offset: 80)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1121, file: !839, line: 621, baseType: !83, size: 16, offset: 96)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !1121, file: !839, line: 621, baseType: !31, size: 8, offset: 112)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !1121, file: !839, line: 622, baseType: !935, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !1121, file: !839, line: 623, baseType: !842, size: 64, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !1121, file: !839, line: 624, baseType: !48, size: 64, offset: 256)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !1052, file: !839, line: 671, baseType: !1133, size: 640)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !839, line: 631, size: 640, elements: !1134)
!1134 = !{!1135, !1136, !1137, !1138, !1139, !1140}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1133, file: !839, line: 632, baseType: !19, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1133, file: !839, line: 632, baseType: !31, size: 8, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1133, file: !839, line: 632, baseType: !31, size: 8, offset: 72)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1133, file: !839, line: 632, baseType: !83, size: 16, offset: 80)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1133, file: !839, line: 632, baseType: !83, size: 16, offset: 96)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !1133, file: !839, line: 633, baseType: !1141, size: 512, offset: 128)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !842, size: 512, elements: !41)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1052, file: !839, line: 672, baseType: !1143, size: 320)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !839, line: 654, size: 320, elements: !1144)
!1144 = !{!1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1143, file: !839, line: 655, baseType: !19, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1143, file: !839, line: 655, baseType: !31, size: 8, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1143, file: !839, line: 655, baseType: !31, size: 8, offset: 72)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1143, file: !839, line: 655, baseType: !83, size: 16, offset: 80)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1143, file: !839, line: 655, baseType: !83, size: 16, offset: 96)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !1143, file: !839, line: 655, baseType: !31, size: 8, offset: 112)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1143, file: !839, line: 656, baseType: !837, size: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !1143, file: !839, line: 657, baseType: !842, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !1143, file: !839, line: 658, baseType: !1154, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !839, line: 645, size: 128, elements: !1156)
!1156 = !{!1157, !1163}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1155, file: !839, line: 646, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !47, line: 1052, baseType: !1159)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{null, !1162, !15, !19}
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !47, line: 424, baseType: !19)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1155, file: !839, line: 647, baseType: !19, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !961, file: !839, line: 902, baseType: !969, size: 64, offset: 512)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !961, file: !839, line: 903, baseType: !15, size: 32, offset: 576)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !936, file: !937, line: 61, baseType: !15, size: 32, offset: 1088)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !936, file: !937, line: 62, baseType: !15, size: 32, offset: 1120)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !936, file: !937, line: 63, baseType: !83, size: 16, offset: 1152)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !936, file: !937, line: 64, baseType: !31, size: 8, offset: 1168)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !936, file: !937, line: 66, baseType: !1171, size: 2688, offset: 1216)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !838, size: 2688, elements: !58)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !936, file: !937, line: 67, baseType: !1173, size: 3072, offset: 3904)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !838, size: 3072, elements: !41)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !936, file: !937, line: 68, baseType: !1175, size: 576, offset: 6976)
!1175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !842, size: 576, elements: !1176)
!1176 = !{!1177}
!1177 = !DISubrange(count: 9)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !936, file: !937, line: 69, baseType: !900, size: 64, offset: 7552)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !936, file: !937, line: 71, baseType: !118, size: 64, offset: 7616)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !936, file: !937, line: 72, baseType: !900, size: 64, offset: 7680)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !936, file: !937, line: 73, baseType: !1051, size: 64, offset: 7744)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !936, file: !937, line: 74, baseType: !837, size: 64, offset: 7808)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !936, file: !937, line: 75, baseType: !842, size: 64, offset: 7872)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !936, file: !937, line: 76, baseType: !837, size: 64, offset: 7936)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !936, file: !937, line: 77, baseType: !969, size: 64, offset: 8000)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !936, file: !937, line: 78, baseType: !842, size: 64, offset: 8064)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !936, file: !937, line: 79, baseType: !837, size: 64, offset: 8128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !936, file: !937, line: 80, baseType: !308, size: 64, offset: 8192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !936, file: !937, line: 81, baseType: !969, size: 64, offset: 8256)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !936, file: !937, line: 82, baseType: !1191, size: 64, offset: 8320)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1193)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !839, line: 702, size: 128, elements: !1194)
!1194 = !{!1195, !1196, !1197, !1198, !1199, !1200}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !1193, file: !839, line: 706, baseType: !15, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !1193, file: !839, line: 707, baseType: !15, size: 32, offset: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1193, file: !839, line: 708, baseType: !83, size: 16, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1193, file: !839, line: 709, baseType: !31, size: 8, offset: 80)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1193, file: !839, line: 710, baseType: !31, size: 8, offset: 88)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1193, file: !839, line: 711, baseType: !31, size: 8, offset: 96)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !936, file: !937, line: 83, baseType: !969, size: 64, offset: 8384)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !936, file: !937, line: 84, baseType: !842, size: 64, offset: 8448)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !936, file: !937, line: 85, baseType: !1051, size: 64, offset: 8512)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !936, file: !937, line: 86, baseType: !842, size: 64, offset: 8576)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !936, file: !937, line: 87, baseType: !1051, size: 64, offset: 8640)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !936, file: !937, line: 88, baseType: !969, size: 64, offset: 8704)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !936, file: !937, line: 89, baseType: !969, size: 64, offset: 8768)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !936, file: !937, line: 90, baseType: !1209, size: 64, offset: 8832)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !936, file: !937, line: 91, baseType: !1211, size: 64, offset: 8896)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !839, line: 637, baseType: !1212)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!51, !935, !1215}
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !936, file: !937, line: 92, baseType: !1217, size: 64, offset: 8960)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !839, line: 641, baseType: !932)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !928, file: !844, line: 152, baseType: !842, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !914, file: !844, line: 155, baseType: !15, size: 32, offset: 384)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !914, file: !844, line: 156, baseType: !82, size: 16, offset: 416)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !914, file: !844, line: 157, baseType: !31, size: 8, offset: 432)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !843, file: !844, line: 375, baseType: !1223, size: 576)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !844, line: 122, size: 576, elements: !1224)
!1224 = !{!1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1223, file: !844, line: 123, baseType: !842, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1223, file: !844, line: 123, baseType: !31, size: 8, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1223, file: !844, line: 123, baseType: !31, size: 8, offset: 72)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1223, file: !844, line: 123, baseType: !83, size: 16, offset: 80)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1223, file: !844, line: 123, baseType: !31, size: 8, offset: 96)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !1223, file: !844, line: 123, baseType: !31, size: 8, offset: 104)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !1223, file: !844, line: 124, baseType: !83, size: 16, offset: 112)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !1223, file: !844, line: 125, baseType: !19, size: 64, offset: 128)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !1223, file: !844, line: 126, baseType: !48, size: 64, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !1223, file: !844, line: 127, baseType: !1209, size: 64, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1223, file: !844, line: 128, baseType: !842, size: 64, offset: 320)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1223, file: !844, line: 129, baseType: !842, size: 64, offset: 384)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1223, file: !844, line: 130, baseType: !837, size: 64, offset: 448)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !1223, file: !844, line: 131, baseType: !31, size: 8, offset: 512)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !843, file: !844, line: 376, baseType: !1240, size: 448)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !844, line: 134, size: 448, elements: !1241)
!1241 = !{!1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1240, file: !844, line: 135, baseType: !842, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1240, file: !844, line: 135, baseType: !31, size: 8, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1240, file: !844, line: 135, baseType: !31, size: 8, offset: 72)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1240, file: !844, line: 135, baseType: !83, size: 16, offset: 80)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1240, file: !844, line: 135, baseType: !31, size: 8, offset: 96)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1240, file: !844, line: 135, baseType: !31, size: 8, offset: 104)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1240, file: !844, line: 136, baseType: !837, size: 64, offset: 128)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1240, file: !844, line: 137, baseType: !842, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1240, file: !844, line: 138, baseType: !842, size: 64, offset: 256)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1240, file: !844, line: 139, baseType: !73, size: 64, offset: 320)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1240, file: !844, line: 140, baseType: !15, size: 32, offset: 384)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !843, file: !844, line: 377, baseType: !1254, size: 320)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !844, line: 184, size: 320, elements: !1255)
!1255 = !{!1256, !1257, !1258, !1259, !1260, !1261, !1265}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1254, file: !844, line: 185, baseType: !842, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1254, file: !844, line: 185, baseType: !31, size: 8, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1254, file: !844, line: 185, baseType: !31, size: 8, offset: 72)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1254, file: !844, line: 185, baseType: !83, size: 16, offset: 80)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1254, file: !844, line: 185, baseType: !31, size: 8, offset: 96)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1254, file: !844, line: 185, baseType: !1262, size: 128, offset: 128)
!1262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !842, size: 128, elements: !1263)
!1263 = !{!1264}
!1264 = !DISubrange(count: 2)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1254, file: !844, line: 185, baseType: !842, size: 64, offset: 256)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !843, file: !844, line: 378, baseType: !1267, size: 384)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !844, line: 187, size: 384, elements: !1268)
!1268 = !{!1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1267, file: !844, line: 188, baseType: !842, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1267, file: !844, line: 188, baseType: !31, size: 8, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1267, file: !844, line: 188, baseType: !31, size: 8, offset: 72)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1267, file: !844, line: 188, baseType: !83, size: 16, offset: 80)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1267, file: !844, line: 188, baseType: !31, size: 8, offset: 96)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1267, file: !844, line: 189, baseType: !1262, size: 128, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1267, file: !844, line: 189, baseType: !842, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !1267, file: !844, line: 189, baseType: !1277, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !839, line: 480, size: 576, elements: !1279)
!1279 = !{!1280, !1281, !1282, !1283, !1291, !1306, !1338, !1339, !1340, !1341, !1342, !1343}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1278, file: !839, line: 481, baseType: !837, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1278, file: !839, line: 482, baseType: !1277, size: 64, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1278, file: !839, line: 483, baseType: !1277, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !1278, file: !839, line: 484, baseType: !1284, size: 64, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !839, line: 497, size: 256, elements: !1286)
!1286 = !{!1287, !1288, !1289, !1290}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1285, file: !839, line: 498, baseType: !1284, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1285, file: !839, line: 499, baseType: !1284, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !1285, file: !839, line: 500, baseType: !1277, size: 64, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !1285, file: !839, line: 501, baseType: !15, size: 32, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !1278, file: !839, line: 485, baseType: !1292, size: 64, offset: 256)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !839, line: 466, size: 320, elements: !1294)
!1294 = !{!1295, !1300, !1301, !1302, !1303, !1304, !1305}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !1293, file: !839, line: 467, baseType: !1296, size: 128)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !839, line: 459, size: 128, elements: !1297)
!1297 = !{!1298, !1299}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1296, file: !839, line: 460, baseType: !31, size: 8)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1296, file: !839, line: 461, baseType: !48, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !1293, file: !839, line: 468, baseType: !1296, size: 128, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !1293, file: !839, line: 469, baseType: !83, size: 16, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !1293, file: !839, line: 470, baseType: !31, size: 8, offset: 272)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !1293, file: !839, line: 471, baseType: !31, size: 8, offset: 280)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !1293, file: !839, line: 472, baseType: !31, size: 8, offset: 288)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !1293, file: !839, line: 473, baseType: !31, size: 8, offset: 296)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !1278, file: !839, line: 486, baseType: !1307, size: 64, offset: 320)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !839, line: 448, size: 192, elements: !1309)
!1309 = !{!1310, !1333, !1334, !1335, !1336, !1337}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !1308, file: !839, line: 449, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !839, line: 438, size: 64, elements: !1312)
!1312 = !{!1313, !1314, !1327}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !1311, file: !839, line: 439, baseType: !837, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1311, file: !839, line: 440, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !839, line: 419, size: 256, elements: !1317)
!1317 = !{!1318, !1323, !1324, !1325, !1326}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1316, file: !839, line: 420, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !47, line: 1049, baseType: !1320)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!15, !1162, !15, !19}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1316, file: !839, line: 421, baseType: !19, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !1316, file: !839, line: 422, baseType: !837, size: 64, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !1316, file: !839, line: 423, baseType: !31, size: 8, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !1316, file: !839, line: 424, baseType: !31, size: 8, offset: 200)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1311, file: !839, line: 441, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !839, line: 429, size: 128, elements: !1330)
!1330 = !{!1331, !1332}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !1329, file: !839, line: 430, baseType: !837, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1329, file: !839, line: 431, baseType: !1328, size: 64, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !1308, file: !839, line: 450, baseType: !1292, size: 64, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1308, file: !839, line: 451, baseType: !31, size: 8, offset: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1308, file: !839, line: 452, baseType: !31, size: 8, offset: 136)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !1308, file: !839, line: 453, baseType: !31, size: 8, offset: 144)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !1308, file: !839, line: 454, baseType: !31, size: 8, offset: 152)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1278, file: !839, line: 487, baseType: !48, size: 64, offset: 384)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !1278, file: !839, line: 488, baseType: !15, size: 32, offset: 448)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !1278, file: !839, line: 489, baseType: !83, size: 16, offset: 480)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !1278, file: !839, line: 490, baseType: !83, size: 16, offset: 496)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1278, file: !839, line: 491, baseType: !31, size: 8, offset: 512)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1278, file: !839, line: 492, baseType: !31, size: 8, offset: 520)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !843, file: !844, line: 379, baseType: !1345, size: 384)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !844, line: 192, size: 384, elements: !1346)
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1345, file: !844, line: 193, baseType: !842, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1345, file: !844, line: 193, baseType: !31, size: 8, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1345, file: !844, line: 193, baseType: !31, size: 8, offset: 72)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1345, file: !844, line: 193, baseType: !83, size: 16, offset: 80)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1345, file: !844, line: 193, baseType: !31, size: 8, offset: 96)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1345, file: !844, line: 193, baseType: !1262, size: 128, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1345, file: !844, line: 193, baseType: !842, size: 64, offset: 256)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1345, file: !844, line: 193, baseType: !15, size: 32, offset: 320)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1345, file: !844, line: 194, baseType: !15, size: 32, offset: 352)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !843, file: !844, line: 380, baseType: !1357, size: 384)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !844, line: 197, size: 384, elements: !1358)
!1358 = !{!1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1357, file: !844, line: 198, baseType: !842, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1357, file: !844, line: 198, baseType: !31, size: 8, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1357, file: !844, line: 198, baseType: !31, size: 8, offset: 72)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1357, file: !844, line: 198, baseType: !83, size: 16, offset: 80)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1357, file: !844, line: 198, baseType: !31, size: 8, offset: 96)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1357, file: !844, line: 200, baseType: !31, size: 8, offset: 104)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1357, file: !844, line: 201, baseType: !31, size: 8, offset: 112)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1357, file: !844, line: 202, baseType: !1262, size: 128, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1357, file: !844, line: 202, baseType: !842, size: 64, offset: 256)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1357, file: !844, line: 202, baseType: !1369, size: 64, offset: 320)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !47, line: 128, baseType: !48)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !843, file: !844, line: 381, baseType: !1371, size: 320)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !844, line: 205, size: 320, elements: !1372)
!1372 = !{!1373, !1374, !1375, !1376, !1377, !1378, !1379}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1371, file: !844, line: 206, baseType: !842, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1371, file: !844, line: 206, baseType: !31, size: 8, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1371, file: !844, line: 206, baseType: !31, size: 8, offset: 72)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1371, file: !844, line: 206, baseType: !83, size: 16, offset: 80)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1371, file: !844, line: 206, baseType: !31, size: 8, offset: 96)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1371, file: !844, line: 206, baseType: !1262, size: 128, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1371, file: !844, line: 206, baseType: !842, size: 64, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !843, file: !844, line: 382, baseType: !1381, size: 384)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !844, line: 233, size: 384, elements: !1382)
!1382 = !{!1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1381, file: !844, line: 234, baseType: !842, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1381, file: !844, line: 234, baseType: !31, size: 8, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1381, file: !844, line: 234, baseType: !31, size: 8, offset: 72)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1381, file: !844, line: 234, baseType: !83, size: 16, offset: 80)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1381, file: !844, line: 234, baseType: !31, size: 8, offset: 96)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1381, file: !844, line: 234, baseType: !31, size: 8, offset: 104)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1381, file: !844, line: 234, baseType: !31, size: 8, offset: 112)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1381, file: !844, line: 234, baseType: !31, size: 8, offset: 120)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1381, file: !844, line: 234, baseType: !837, size: 64, offset: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1381, file: !844, line: 234, baseType: !15, size: 32, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1381, file: !844, line: 234, baseType: !15, size: 32, offset: 224)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1381, file: !844, line: 234, baseType: !15, size: 32, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1381, file: !844, line: 234, baseType: !31, size: 8, offset: 288)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1381, file: !844, line: 234, baseType: !31, size: 8, offset: 296)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1381, file: !844, line: 234, baseType: !842, size: 64, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !843, file: !844, line: 383, baseType: !1399, size: 576)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !844, line: 237, size: 576, elements: !1400)
!1400 = !{!1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1399, file: !844, line: 238, baseType: !842, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1399, file: !844, line: 238, baseType: !31, size: 8, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1399, file: !844, line: 238, baseType: !31, size: 8, offset: 72)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1399, file: !844, line: 238, baseType: !83, size: 16, offset: 80)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1399, file: !844, line: 238, baseType: !31, size: 8, offset: 96)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1399, file: !844, line: 238, baseType: !31, size: 8, offset: 104)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1399, file: !844, line: 238, baseType: !31, size: 8, offset: 112)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1399, file: !844, line: 238, baseType: !31, size: 8, offset: 120)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1399, file: !844, line: 238, baseType: !837, size: 64, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1399, file: !844, line: 238, baseType: !15, size: 32, offset: 192)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1399, file: !844, line: 238, baseType: !15, size: 32, offset: 224)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1399, file: !844, line: 238, baseType: !15, size: 32, offset: 256)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1399, file: !844, line: 238, baseType: !31, size: 8, offset: 288)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1399, file: !844, line: 238, baseType: !31, size: 8, offset: 296)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1399, file: !844, line: 238, baseType: !83, size: 16, offset: 304)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1399, file: !844, line: 239, baseType: !842, size: 64, offset: 320)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !1399, file: !844, line: 240, baseType: !118, size: 64, offset: 384)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !1399, file: !844, line: 241, baseType: !83, size: 16, offset: 448)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !1399, file: !844, line: 242, baseType: !118, size: 64, offset: 512)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !843, file: !844, line: 384, baseType: !1421, size: 384)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !844, line: 262, size: 384, elements: !1422)
!1422 = !{!1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1421, file: !844, line: 263, baseType: !842, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1421, file: !844, line: 263, baseType: !31, size: 8, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1421, file: !844, line: 263, baseType: !31, size: 8, offset: 72)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1421, file: !844, line: 263, baseType: !83, size: 16, offset: 80)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1421, file: !844, line: 263, baseType: !31, size: 8, offset: 96)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1421, file: !844, line: 263, baseType: !31, size: 8, offset: 104)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1421, file: !844, line: 263, baseType: !31, size: 8, offset: 112)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1421, file: !844, line: 263, baseType: !31, size: 8, offset: 120)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1421, file: !844, line: 263, baseType: !837, size: 64, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1421, file: !844, line: 263, baseType: !15, size: 32, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1421, file: !844, line: 263, baseType: !15, size: 32, offset: 224)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1421, file: !844, line: 263, baseType: !15, size: 32, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1421, file: !844, line: 263, baseType: !31, size: 8, offset: 288)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1421, file: !844, line: 263, baseType: !31, size: 8, offset: 296)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !1421, file: !844, line: 263, baseType: !31, size: 8, offset: 304)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !1421, file: !844, line: 264, baseType: !842, size: 64, offset: 320)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !843, file: !844, line: 385, baseType: !1440, size: 448)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !844, line: 245, size: 448, elements: !1441)
!1441 = !{!1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1440, file: !844, line: 246, baseType: !842, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1440, file: !844, line: 246, baseType: !31, size: 8, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1440, file: !844, line: 246, baseType: !31, size: 8, offset: 72)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1440, file: !844, line: 246, baseType: !83, size: 16, offset: 80)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1440, file: !844, line: 246, baseType: !31, size: 8, offset: 96)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1440, file: !844, line: 246, baseType: !31, size: 8, offset: 104)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1440, file: !844, line: 246, baseType: !31, size: 8, offset: 112)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1440, file: !844, line: 246, baseType: !31, size: 8, offset: 120)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1440, file: !844, line: 246, baseType: !837, size: 64, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1440, file: !844, line: 246, baseType: !15, size: 32, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1440, file: !844, line: 246, baseType: !15, size: 32, offset: 224)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1440, file: !844, line: 246, baseType: !15, size: 32, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1440, file: !844, line: 246, baseType: !31, size: 8, offset: 288)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1440, file: !844, line: 246, baseType: !31, size: 8, offset: 296)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1440, file: !844, line: 246, baseType: !842, size: 64, offset: 320)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !1440, file: !844, line: 247, baseType: !842, size: 64, offset: 384)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !843, file: !844, line: 386, baseType: !1459, size: 448)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !844, line: 250, size: 448, elements: !1460)
!1460 = !{!1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1459, file: !844, line: 251, baseType: !842, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1459, file: !844, line: 251, baseType: !31, size: 8, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1459, file: !844, line: 251, baseType: !31, size: 8, offset: 72)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1459, file: !844, line: 251, baseType: !83, size: 16, offset: 80)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1459, file: !844, line: 251, baseType: !31, size: 8, offset: 96)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1459, file: !844, line: 251, baseType: !31, size: 8, offset: 104)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1459, file: !844, line: 251, baseType: !31, size: 8, offset: 112)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1459, file: !844, line: 251, baseType: !31, size: 8, offset: 120)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1459, file: !844, line: 251, baseType: !837, size: 64, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1459, file: !844, line: 251, baseType: !15, size: 32, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1459, file: !844, line: 251, baseType: !15, size: 32, offset: 224)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1459, file: !844, line: 251, baseType: !15, size: 32, offset: 256)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1459, file: !844, line: 251, baseType: !31, size: 8, offset: 288)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1459, file: !844, line: 251, baseType: !31, size: 8, offset: 296)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !1459, file: !844, line: 256, baseType: !842, size: 64, offset: 320)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !1459, file: !844, line: 257, baseType: !842, size: 64, offset: 384)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !843, file: !844, line: 387, baseType: !1478, size: 512)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !844, line: 273, size: 512, elements: !1479)
!1479 = !{!1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1478, file: !844, line: 274, baseType: !842, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1478, file: !844, line: 274, baseType: !31, size: 8, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1478, file: !844, line: 274, baseType: !31, size: 8, offset: 72)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1478, file: !844, line: 274, baseType: !83, size: 16, offset: 80)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1478, file: !844, line: 274, baseType: !31, size: 8, offset: 96)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1478, file: !844, line: 274, baseType: !837, size: 64, offset: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !1478, file: !844, line: 275, baseType: !15, size: 32, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1478, file: !844, line: 276, baseType: !1158, size: 64, offset: 256)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1478, file: !844, line: 277, baseType: !19, size: 64, offset: 320)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1478, file: !844, line: 278, baseType: !1262, size: 128, offset: 384)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !843, file: !844, line: 388, baseType: !1491, size: 512)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !844, line: 281, size: 512, elements: !1492)
!1492 = !{!1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1506, !1507, !1508, !1514, !1515}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1491, file: !844, line: 282, baseType: !842, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1491, file: !844, line: 282, baseType: !31, size: 8, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1491, file: !844, line: 282, baseType: !31, size: 8, offset: 72)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1491, file: !844, line: 282, baseType: !83, size: 16, offset: 80)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1491, file: !844, line: 282, baseType: !31, size: 8, offset: 96)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1491, file: !844, line: 282, baseType: !31, size: 8, offset: 104)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !1491, file: !844, line: 283, baseType: !31, size: 8, offset: 112)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1491, file: !844, line: 284, baseType: !1501, size: 64, offset: 128)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !47, line: 1084, baseType: !1502)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!51, !15, !73, !15, !1505, !19, !19}
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1491, file: !844, line: 285, baseType: !837, size: 64, offset: 192)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1491, file: !844, line: 286, baseType: !19, size: 64, offset: 256)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1491, file: !844, line: 287, baseType: !1509, size: 64, offset: 320)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !47, line: 1102, baseType: !1510)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!51, !1162, !15, !19, !1513}
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !1491, file: !844, line: 288, baseType: !842, size: 64, offset: 384)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1491, file: !844, line: 289, baseType: !842, size: 64, offset: 448)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !843, file: !844, line: 389, baseType: !1517, size: 512)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !844, line: 307, size: 512, elements: !1518)
!1518 = !{!1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1517, file: !844, line: 308, baseType: !842, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1517, file: !844, line: 308, baseType: !31, size: 8, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1517, file: !844, line: 308, baseType: !31, size: 8, offset: 72)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1517, file: !844, line: 308, baseType: !83, size: 16, offset: 80)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1517, file: !844, line: 308, baseType: !31, size: 8, offset: 96)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1517, file: !844, line: 308, baseType: !31, size: 8, offset: 104)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !1517, file: !844, line: 309, baseType: !31, size: 8, offset: 112)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !1517, file: !844, line: 310, baseType: !31, size: 8, offset: 120)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1517, file: !844, line: 311, baseType: !19, size: 64, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1517, file: !844, line: 312, baseType: !837, size: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !1517, file: !844, line: 313, baseType: !900, size: 64, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !1517, file: !844, line: 314, baseType: !118, size: 64, offset: 320)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1517, file: !844, line: 315, baseType: !118, size: 64, offset: 384)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1517, file: !844, line: 316, baseType: !15, size: 32, offset: 448)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !843, file: !844, line: 390, baseType: !1534, size: 448)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !844, line: 340, size: 448, elements: !1535)
!1535 = !{!1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1534, file: !844, line: 341, baseType: !842, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1534, file: !844, line: 341, baseType: !31, size: 8, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1534, file: !844, line: 341, baseType: !31, size: 8, offset: 72)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1534, file: !844, line: 341, baseType: !83, size: 16, offset: 80)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1534, file: !844, line: 341, baseType: !31, size: 8, offset: 96)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !1534, file: !844, line: 341, baseType: !837, size: 64, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !1534, file: !844, line: 342, baseType: !837, size: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !1534, file: !844, line: 343, baseType: !19, size: 64, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !1534, file: !844, line: 344, baseType: !118, size: 64, offset: 320)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1534, file: !844, line: 345, baseType: !15, size: 32, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !843, file: !844, line: 391, baseType: !1547, size: 256)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !844, line: 350, size: 256, elements: !1548)
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1554, !1559}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1547, file: !844, line: 351, baseType: !842, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1547, file: !844, line: 351, baseType: !31, size: 8, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1547, file: !844, line: 351, baseType: !31, size: 8, offset: 72)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1547, file: !844, line: 351, baseType: !83, size: 16, offset: 80)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1547, file: !844, line: 351, baseType: !31, size: 8, offset: 96)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1547, file: !844, line: 351, baseType: !1555, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !47, line: 1055, baseType: !1556)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{null, !1162, !19}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1547, file: !844, line: 352, baseType: !19, size: 64, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !843, file: !844, line: 392, baseType: !1561, size: 192)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !844, line: 357, size: 192, elements: !1562)
!1562 = !{!1563, !1564, !1565, !1566, !1567, !1568}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1561, file: !844, line: 358, baseType: !842, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1561, file: !844, line: 358, baseType: !31, size: 8, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1561, file: !844, line: 358, baseType: !31, size: 8, offset: 72)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1561, file: !844, line: 358, baseType: !83, size: 16, offset: 80)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1561, file: !844, line: 358, baseType: !31, size: 8, offset: 96)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1561, file: !844, line: 358, baseType: !842, size: 64, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !843, file: !844, line: 399, baseType: !838, size: 384)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !838, file: !839, line: 135, baseType: !31, size: 8, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !838, file: !839, line: 136, baseType: !31, size: 8, offset: 72)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !838, file: !839, line: 137, baseType: !83, size: 16, offset: 80)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !838, file: !839, line: 138, baseType: !77, size: 32, offset: 96)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !838, file: !839, line: 139, baseType: !837, size: 64, offset: 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !838, file: !839, line: 140, baseType: !837, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !838, file: !839, line: 141, baseType: !837, size: 64, offset: 256)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !838, file: !839, line: 142, baseType: !82, size: 16, offset: 320)
!1578 = !DILocalVariable(name: "table_index", arg: 1, scope: !834, file: !3, line: 918, type: !15)
!1579 = !DILocation(line: 918, column: 24, scope: !834)
!1580 = !DILocalVariable(name: "parent_node", arg: 2, scope: !834, file: !3, line: 918, type: !837)
!1581 = !DILocation(line: 918, column: 65, scope: !834)
!1582 = !DILocalVariable(name: "table", scope: !834, file: !3, line: 920, type: !20)
!1583 = !DILocation(line: 920, column: 28, scope: !834)
!1584 = !DILocalVariable(name: "status", scope: !834, file: !3, line: 921, type: !51)
!1585 = !DILocation(line: 921, column: 14, scope: !834)
!1586 = !DILocalVariable(name: "owner_id", scope: !834, file: !3, line: 922, type: !82)
!1587 = !DILocation(line: 922, column: 16, scope: !834)
!1588 = !DILocation(line: 930, column: 35, scope: !834)
!1589 = !DILocation(line: 930, column: 11, scope: !834)
!1590 = !DILocation(line: 930, column: 9, scope: !834)
!1591 = !DILocation(line: 931, column: 6, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !834, file: !3, line: 931, column: 6)
!1593 = !DILocation(line: 931, column: 6, scope: !834)
!1594 = !DILocation(line: 932, column: 3, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 931, column: 28)
!1596 = !DILocation(line: 935, column: 30, scope: !834)
!1597 = !DILocation(line: 935, column: 43, scope: !834)
!1598 = !DILocation(line: 935, column: 11, scope: !834)
!1599 = !DILocation(line: 935, column: 9, scope: !834)
!1600 = !DILocation(line: 936, column: 6, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !834, file: !3, line: 936, column: 6)
!1602 = !DILocation(line: 936, column: 6, scope: !834)
!1603 = !DILocation(line: 937, column: 3, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 936, column: 28)
!1605 = !DILocation(line: 945, column: 32, scope: !834)
!1606 = !DILocation(line: 945, column: 11, scope: !834)
!1607 = !DILocation(line: 945, column: 9, scope: !834)
!1608 = !DILocation(line: 946, column: 6, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !834, file: !3, line: 946, column: 6)
!1610 = !DILocation(line: 946, column: 6, scope: !834)
!1611 = !DILocation(line: 947, column: 23, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 946, column: 28)
!1613 = !DILocation(line: 947, column: 3, scope: !1612)
!1614 = !DILocation(line: 948, column: 2, scope: !1612)
!1615 = !DILocation(line: 952, column: 46, scope: !834)
!1616 = !DILocation(line: 952, column: 2, scope: !834)
!1617 = !DILocation(line: 953, column: 2, scope: !834)
!1618 = !DILocation(line: 954, column: 1, scope: !834)
!1619 = distinct !DISubprogram(name: "acpi_tb_notify_table", scope: !3, file: !3, line: 1056, type: !1620, scopeLine: 1057, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !88)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{null, !15, !19}
!1622 = !DILocalVariable(name: "event", arg: 1, scope: !1619, file: !3, line: 1056, type: !15)
!1623 = !DILocation(line: 1056, column: 31, scope: !1619)
!1624 = !DILocalVariable(name: "table", arg: 2, scope: !1619, file: !3, line: 1056, type: !19)
!1625 = !DILocation(line: 1056, column: 44, scope: !1619)
!1626 = !DILocation(line: 1060, column: 6, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 1060, column: 6)
!1628 = !DILocation(line: 1060, column: 6, scope: !1619)
!1629 = !DILocation(line: 1061, column: 9, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 1060, column: 30)
!1631 = !DILocation(line: 1061, column: 32, scope: !1630)
!1632 = !DILocation(line: 1061, column: 39, scope: !1630)
!1633 = !DILocation(line: 1062, column: 11, scope: !1630)
!1634 = !DILocation(line: 1063, column: 2, scope: !1630)
!1635 = !DILocation(line: 1064, column: 1, scope: !1619)
!1636 = distinct !DISubprogram(name: "acpi_tb_install_and_load_table", scope: !3, file: !3, line: 972, type: !1637, scopeLine: 974, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !88)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!51, !73, !31, !31, !14}
!1639 = !DILocalVariable(name: "address", arg: 1, scope: !1636, file: !3, line: 972, type: !73)
!1640 = !DILocation(line: 972, column: 54, scope: !1636)
!1641 = !DILocalVariable(name: "flags", arg: 2, scope: !1636, file: !3, line: 973, type: !31)
!1642 = !DILocation(line: 973, column: 14, scope: !1636)
!1643 = !DILocalVariable(name: "override", arg: 3, scope: !1636, file: !3, line: 973, type: !31)
!1644 = !DILocation(line: 973, column: 24, scope: !1636)
!1645 = !DILocalVariable(name: "table_index", arg: 4, scope: !1636, file: !3, line: 973, type: !14)
!1646 = !DILocation(line: 973, column: 39, scope: !1636)
!1647 = !DILocalVariable(name: "status", scope: !1636, file: !3, line: 975, type: !51)
!1648 = !DILocation(line: 975, column: 14, scope: !1636)
!1649 = !DILocalVariable(name: "i", scope: !1636, file: !3, line: 976, type: !15)
!1650 = !DILocation(line: 976, column: 6, scope: !1636)
!1651 = !DILocation(line: 982, column: 42, scope: !1636)
!1652 = !DILocation(line: 982, column: 51, scope: !1636)
!1653 = !DILocation(line: 983, column: 7, scope: !1636)
!1654 = !DILocation(line: 982, column: 11, scope: !1636)
!1655 = !DILocation(line: 982, column: 9, scope: !1636)
!1656 = !DILocation(line: 984, column: 6, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 984, column: 6)
!1658 = !DILocation(line: 984, column: 6, scope: !1636)
!1659 = !DILocation(line: 985, column: 3, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 984, column: 28)
!1661 = !DILocation(line: 988, column: 30, scope: !1636)
!1662 = !DILocation(line: 988, column: 33, scope: !1636)
!1663 = !DILocation(line: 988, column: 11, scope: !1636)
!1664 = !DILocation(line: 988, column: 9, scope: !1636)
!1665 = !DILocation(line: 988, column: 2, scope: !1636)
!1666 = !DILabel(scope: !1636, name: "exit", file: !3, line: 990)
!1667 = !DILocation(line: 990, column: 1, scope: !1636)
!1668 = !DILocation(line: 991, column: 17, scope: !1636)
!1669 = !DILocation(line: 991, column: 3, scope: !1636)
!1670 = !DILocation(line: 991, column: 15, scope: !1636)
!1671 = !DILocation(line: 992, column: 2, scope: !1636)
!1672 = distinct !DISubprogram(name: "acpi_tb_unload_table", scope: !3, file: !3, line: 1009, type: !666, scopeLine: 1010, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !88)
!1673 = !DILocalVariable(name: "table_index", arg: 1, scope: !1672, file: !3, line: 1009, type: !15)
!1674 = !DILocation(line: 1009, column: 38, scope: !1672)
!1675 = !DILocalVariable(name: "status", scope: !1672, file: !3, line: 1011, type: !51)
!1676 = !DILocation(line: 1011, column: 14, scope: !1672)
!1677 = !DILocalVariable(name: "table", scope: !1672, file: !3, line: 1012, type: !20)
!1678 = !DILocation(line: 1012, column: 28, scope: !1672)
!1679 = !DILocation(line: 1018, column: 31, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 1018, column: 6)
!1681 = !DILocation(line: 1018, column: 7, scope: !1680)
!1682 = !DILocation(line: 1018, column: 6, scope: !1672)
!1683 = !DILocation(line: 1019, column: 3, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 1018, column: 45)
!1685 = !DILocation(line: 1024, column: 35, scope: !1672)
!1686 = !DILocation(line: 1024, column: 11, scope: !1672)
!1687 = !DILocation(line: 1024, column: 9, scope: !1672)
!1688 = !DILocation(line: 1025, column: 6, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 1025, column: 6)
!1690 = !DILocation(line: 1025, column: 6, scope: !1672)
!1691 = !DILocation(line: 1026, column: 49, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1689, file: !3, line: 1025, column: 28)
!1693 = !DILocation(line: 1026, column: 3, scope: !1692)
!1694 = !DILocation(line: 1027, column: 2, scope: !1692)
!1695 = !DILocation(line: 1031, column: 45, scope: !1672)
!1696 = !DILocation(line: 1031, column: 11, scope: !1672)
!1697 = !DILocation(line: 1031, column: 9, scope: !1672)
!1698 = !DILocation(line: 1032, column: 6, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 1032, column: 6)
!1700 = !DILocation(line: 1032, column: 6, scope: !1672)
!1701 = !DILocation(line: 1033, column: 3, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 1032, column: 28)
!1703 = !DILocation(line: 1036, column: 33, scope: !1672)
!1704 = !DILocation(line: 1036, column: 8, scope: !1672)
!1705 = !DILocation(line: 1037, column: 32, scope: !1672)
!1706 = !DILocation(line: 1037, column: 2, scope: !1672)
!1707 = !DILocation(line: 1038, column: 2, scope: !1672)
!1708 = !DILocation(line: 1039, column: 1, scope: !1672)
!1709 = distinct !DISubprogram(name: "acpi_tb_compare_tables", scope: !3, file: !3, line: 41, type: !1710, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !88)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!31, !69, !15}
!1712 = !DILocalVariable(name: "table_desc", arg: 1, scope: !1709, file: !3, line: 41, type: !69)
!1713 = !DILocation(line: 41, column: 48, scope: !1709)
!1714 = !DILocalVariable(name: "table_index", arg: 2, scope: !1709, file: !3, line: 41, type: !15)
!1715 = !DILocation(line: 41, column: 64, scope: !1709)
!1716 = !DILocalVariable(name: "status", scope: !1709, file: !3, line: 43, type: !51)
!1717 = !DILocation(line: 43, column: 14, scope: !1709)
!1718 = !DILocalVariable(name: "is_identical", scope: !1709, file: !3, line: 44, type: !31)
!1719 = !DILocation(line: 44, column: 5, scope: !1709)
!1720 = !DILocalVariable(name: "table", scope: !1709, file: !3, line: 45, type: !20)
!1721 = !DILocation(line: 45, column: 28, scope: !1709)
!1722 = !DILocalVariable(name: "table_length", scope: !1709, file: !3, line: 46, type: !15)
!1723 = !DILocation(line: 46, column: 6, scope: !1709)
!1724 = !DILocalVariable(name: "table_flags", scope: !1709, file: !3, line: 47, type: !31)
!1725 = !DILocation(line: 47, column: 5, scope: !1709)
!1726 = !DILocation(line: 50, column: 54, scope: !1709)
!1727 = !DILocation(line: 50, column: 61, scope: !1709)
!1728 = !DILocation(line: 50, column: 29, scope: !1709)
!1729 = !DILocation(line: 50, column: 6, scope: !1709)
!1730 = !DILocation(line: 49, column: 9, scope: !1709)
!1731 = !DILocation(line: 52, column: 6, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 52, column: 6)
!1733 = !DILocation(line: 52, column: 6, scope: !1709)
!1734 = !DILocation(line: 53, column: 3, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 52, column: 28)
!1736 = !DILocation(line: 60, column: 23, scope: !1709)
!1737 = !DILocation(line: 60, column: 35, scope: !1709)
!1738 = !DILocation(line: 60, column: 45, scope: !1709)
!1739 = !DILocation(line: 60, column: 42, scope: !1709)
!1740 = !DILocation(line: 60, column: 58, scope: !1709)
!1741 = !DILocation(line: 61, column: 16, scope: !1709)
!1742 = !DILocation(line: 61, column: 28, scope: !1709)
!1743 = !DILocation(line: 61, column: 37, scope: !1709)
!1744 = !DILocation(line: 61, column: 44, scope: !1709)
!1745 = !DILocation(line: 61, column: 9, scope: !1709)
!1746 = !DILocation(line: 60, column: 22, scope: !1709)
!1747 = !DILocation(line: 60, column: 17, scope: !1709)
!1748 = !DILocation(line: 60, column: 15, scope: !1709)
!1749 = !DILocation(line: 66, column: 24, scope: !1709)
!1750 = !DILocation(line: 66, column: 31, scope: !1709)
!1751 = !DILocation(line: 66, column: 45, scope: !1709)
!1752 = !DILocation(line: 66, column: 2, scope: !1709)
!1753 = !DILocation(line: 67, column: 10, scope: !1709)
!1754 = !DILocation(line: 67, column: 2, scope: !1709)
!1755 = !DILocation(line: 68, column: 1, scope: !1709)
!1756 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !1757, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !88)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!19, !1759, !52}
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !53, line: 55, baseType: !1760)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1761, line: 72, baseType: !1762)
!1761 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1761, line: 16, baseType: !54)
!1763 = !DILocalVariable(name: "s", arg: 1, scope: !1764, file: !6, line: 445, type: !1767)
!1764 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !1765, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !88)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!19, !1767, !52, !1759}
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1769, line: 117, flags: DIFlagFwdDecl)
!1769 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1770 = !DILocation(line: 445, column: 72, scope: !1764, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 552, column: 10, scope: !1772, inlinedAt: !1775)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !6, line: 540, column: 34)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !6, line: 540, column: 6)
!1774 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !1757, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !88)
!1775 = distinct !DILocation(line: 664, column: 9, scope: !1756)
!1776 = !DILocalVariable(name: "flags", arg: 2, scope: !1764, file: !6, line: 446, type: !52)
!1777 = !DILocation(line: 446, column: 9, scope: !1764, inlinedAt: !1771)
!1778 = !DILocalVariable(name: "size", arg: 3, scope: !1764, file: !6, line: 446, type: !1759)
!1779 = !DILocation(line: 446, column: 23, scope: !1764, inlinedAt: !1771)
!1780 = !DILocalVariable(name: "ret", scope: !1764, file: !6, line: 448, type: !19)
!1781 = !DILocation(line: 448, column: 8, scope: !1764, inlinedAt: !1771)
!1782 = !DILocalVariable(name: "flags", arg: 1, scope: !1783, file: !6, line: 318, type: !52)
!1783 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !1784, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !88)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!5, !52}
!1786 = !DILocation(line: 318, column: 67, scope: !1783, inlinedAt: !1787)
!1787 = distinct !DILocation(line: 553, column: 20, scope: !1772, inlinedAt: !1775)
!1788 = !DILocalVariable(name: "size", arg: 1, scope: !1789, file: !6, line: 346, type: !1759)
!1789 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !1790, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !88)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!7, !1759}
!1792 = !DILocation(line: 346, column: 58, scope: !1789, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 547, column: 11, scope: !1772, inlinedAt: !1775)
!1794 = !DILocalVariable(name: "size", arg: 1, scope: !1795, file: !6, line: 472, type: !1759)
!1795 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !1796, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !88)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!19, !1759, !52, !7}
!1798 = !DILocation(line: 472, column: 28, scope: !1795, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 481, column: 9, scope: !1800, inlinedAt: !1801)
!1800 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !1757, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !88)
!1801 = distinct !DILocation(line: 545, column: 11, scope: !1802, inlinedAt: !1775)
!1802 = distinct !DILexicalBlock(scope: !1772, file: !6, line: 544, column: 7)
!1803 = !DILocalVariable(name: "flags", arg: 2, scope: !1795, file: !6, line: 472, type: !52)
!1804 = !DILocation(line: 472, column: 40, scope: !1795, inlinedAt: !1799)
!1805 = !DILocalVariable(name: "order", arg: 3, scope: !1795, file: !6, line: 472, type: !7)
!1806 = !DILocation(line: 472, column: 60, scope: !1795, inlinedAt: !1799)
!1807 = !DILocalVariable(name: "size", arg: 1, scope: !1800, file: !6, line: 478, type: !1759)
!1808 = !DILocation(line: 478, column: 51, scope: !1800, inlinedAt: !1801)
!1809 = !DILocalVariable(name: "flags", arg: 2, scope: !1800, file: !6, line: 478, type: !52)
!1810 = !DILocation(line: 478, column: 63, scope: !1800, inlinedAt: !1801)
!1811 = !DILocalVariable(name: "order", scope: !1800, file: !6, line: 480, type: !7)
!1812 = !DILocation(line: 480, column: 15, scope: !1800, inlinedAt: !1801)
!1813 = !DILocalVariable(name: "size", arg: 1, scope: !1774, file: !6, line: 538, type: !1759)
!1814 = !DILocation(line: 538, column: 45, scope: !1774, inlinedAt: !1775)
!1815 = !DILocalVariable(name: "flags", arg: 2, scope: !1774, file: !6, line: 538, type: !52)
!1816 = !DILocation(line: 538, column: 57, scope: !1774, inlinedAt: !1775)
!1817 = !DILocalVariable(name: "index", scope: !1772, file: !6, line: 542, type: !7)
!1818 = !DILocation(line: 542, column: 16, scope: !1772, inlinedAt: !1775)
!1819 = !DILocalVariable(name: "size", arg: 1, scope: !1756, file: !6, line: 662, type: !1759)
!1820 = !DILocation(line: 662, column: 36, scope: !1756)
!1821 = !DILocalVariable(name: "flags", arg: 2, scope: !1756, file: !6, line: 662, type: !52)
!1822 = !DILocation(line: 662, column: 48, scope: !1756)
!1823 = !DILocation(line: 664, column: 17, scope: !1756)
!1824 = !DILocation(line: 664, column: 23, scope: !1756)
!1825 = !DILocation(line: 664, column: 29, scope: !1756)
!1826 = !DILocation(line: 540, column: 27, scope: !1773, inlinedAt: !1775)
!1827 = !DILocation(line: 540, column: 6, scope: !1773, inlinedAt: !1775)
!1828 = !DILocation(line: 540, column: 6, scope: !1774, inlinedAt: !1775)
!1829 = !DILocation(line: 544, column: 7, scope: !1802, inlinedAt: !1775)
!1830 = !DILocation(line: 544, column: 12, scope: !1802, inlinedAt: !1775)
!1831 = !DILocation(line: 544, column: 7, scope: !1772, inlinedAt: !1775)
!1832 = !DILocation(line: 545, column: 25, scope: !1802, inlinedAt: !1775)
!1833 = !DILocation(line: 545, column: 31, scope: !1802, inlinedAt: !1775)
!1834 = !DILocation(line: 480, column: 33, scope: !1800, inlinedAt: !1801)
!1835 = !DILocation(line: 480, column: 23, scope: !1800, inlinedAt: !1801)
!1836 = !DILocation(line: 481, column: 29, scope: !1800, inlinedAt: !1801)
!1837 = !DILocation(line: 481, column: 35, scope: !1800, inlinedAt: !1801)
!1838 = !DILocation(line: 481, column: 42, scope: !1800, inlinedAt: !1801)
!1839 = !DILocation(line: 474, column: 23, scope: !1795, inlinedAt: !1799)
!1840 = !DILocation(line: 474, column: 29, scope: !1795, inlinedAt: !1799)
!1841 = !DILocation(line: 474, column: 36, scope: !1795, inlinedAt: !1799)
!1842 = !DILocation(line: 474, column: 9, scope: !1795, inlinedAt: !1799)
!1843 = !DILocation(line: 545, column: 4, scope: !1802, inlinedAt: !1775)
!1844 = !DILocation(line: 547, column: 25, scope: !1772, inlinedAt: !1775)
!1845 = !DILocation(line: 348, column: 7, scope: !1846, inlinedAt: !1793)
!1846 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 348, column: 6)
!1847 = !DILocation(line: 348, column: 6, scope: !1789, inlinedAt: !1793)
!1848 = !DILocation(line: 349, column: 3, scope: !1846, inlinedAt: !1793)
!1849 = !DILocation(line: 351, column: 6, scope: !1850, inlinedAt: !1793)
!1850 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 351, column: 6)
!1851 = !DILocation(line: 351, column: 11, scope: !1850, inlinedAt: !1793)
!1852 = !DILocation(line: 351, column: 6, scope: !1789, inlinedAt: !1793)
!1853 = !DILocation(line: 352, column: 3, scope: !1850, inlinedAt: !1793)
!1854 = !DILocation(line: 354, column: 32, scope: !1855, inlinedAt: !1793)
!1855 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 354, column: 6)
!1856 = !DILocation(line: 354, column: 37, scope: !1855, inlinedAt: !1793)
!1857 = !DILocation(line: 354, column: 42, scope: !1855, inlinedAt: !1793)
!1858 = !DILocation(line: 354, column: 45, scope: !1855, inlinedAt: !1793)
!1859 = !DILocation(line: 354, column: 50, scope: !1855, inlinedAt: !1793)
!1860 = !DILocation(line: 354, column: 6, scope: !1789, inlinedAt: !1793)
!1861 = !DILocation(line: 355, column: 3, scope: !1855, inlinedAt: !1793)
!1862 = !DILocation(line: 356, column: 32, scope: !1863, inlinedAt: !1793)
!1863 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 356, column: 6)
!1864 = !DILocation(line: 356, column: 37, scope: !1863, inlinedAt: !1793)
!1865 = !DILocation(line: 356, column: 43, scope: !1863, inlinedAt: !1793)
!1866 = !DILocation(line: 356, column: 46, scope: !1863, inlinedAt: !1793)
!1867 = !DILocation(line: 356, column: 51, scope: !1863, inlinedAt: !1793)
!1868 = !DILocation(line: 356, column: 6, scope: !1789, inlinedAt: !1793)
!1869 = !DILocation(line: 357, column: 3, scope: !1863, inlinedAt: !1793)
!1870 = !DILocation(line: 358, column: 6, scope: !1871, inlinedAt: !1793)
!1871 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 358, column: 6)
!1872 = !DILocation(line: 358, column: 11, scope: !1871, inlinedAt: !1793)
!1873 = !DILocation(line: 358, column: 6, scope: !1789, inlinedAt: !1793)
!1874 = !DILocation(line: 358, column: 26, scope: !1871, inlinedAt: !1793)
!1875 = !DILocation(line: 359, column: 6, scope: !1876, inlinedAt: !1793)
!1876 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 359, column: 6)
!1877 = !DILocation(line: 359, column: 11, scope: !1876, inlinedAt: !1793)
!1878 = !DILocation(line: 359, column: 6, scope: !1789, inlinedAt: !1793)
!1879 = !DILocation(line: 359, column: 26, scope: !1876, inlinedAt: !1793)
!1880 = !DILocation(line: 360, column: 6, scope: !1881, inlinedAt: !1793)
!1881 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 360, column: 6)
!1882 = !DILocation(line: 360, column: 11, scope: !1881, inlinedAt: !1793)
!1883 = !DILocation(line: 360, column: 6, scope: !1789, inlinedAt: !1793)
!1884 = !DILocation(line: 360, column: 26, scope: !1881, inlinedAt: !1793)
!1885 = !DILocation(line: 361, column: 6, scope: !1886, inlinedAt: !1793)
!1886 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 361, column: 6)
!1887 = !DILocation(line: 361, column: 11, scope: !1886, inlinedAt: !1793)
!1888 = !DILocation(line: 361, column: 6, scope: !1789, inlinedAt: !1793)
!1889 = !DILocation(line: 361, column: 26, scope: !1886, inlinedAt: !1793)
!1890 = !DILocation(line: 362, column: 6, scope: !1891, inlinedAt: !1793)
!1891 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 362, column: 6)
!1892 = !DILocation(line: 362, column: 11, scope: !1891, inlinedAt: !1793)
!1893 = !DILocation(line: 362, column: 6, scope: !1789, inlinedAt: !1793)
!1894 = !DILocation(line: 362, column: 26, scope: !1891, inlinedAt: !1793)
!1895 = !DILocation(line: 363, column: 6, scope: !1896, inlinedAt: !1793)
!1896 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 363, column: 6)
!1897 = !DILocation(line: 363, column: 11, scope: !1896, inlinedAt: !1793)
!1898 = !DILocation(line: 363, column: 6, scope: !1789, inlinedAt: !1793)
!1899 = !DILocation(line: 363, column: 26, scope: !1896, inlinedAt: !1793)
!1900 = !DILocation(line: 364, column: 6, scope: !1901, inlinedAt: !1793)
!1901 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 364, column: 6)
!1902 = !DILocation(line: 364, column: 11, scope: !1901, inlinedAt: !1793)
!1903 = !DILocation(line: 364, column: 6, scope: !1789, inlinedAt: !1793)
!1904 = !DILocation(line: 364, column: 26, scope: !1901, inlinedAt: !1793)
!1905 = !DILocation(line: 365, column: 6, scope: !1906, inlinedAt: !1793)
!1906 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 365, column: 6)
!1907 = !DILocation(line: 365, column: 11, scope: !1906, inlinedAt: !1793)
!1908 = !DILocation(line: 365, column: 6, scope: !1789, inlinedAt: !1793)
!1909 = !DILocation(line: 365, column: 26, scope: !1906, inlinedAt: !1793)
!1910 = !DILocation(line: 366, column: 6, scope: !1911, inlinedAt: !1793)
!1911 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 366, column: 6)
!1912 = !DILocation(line: 366, column: 11, scope: !1911, inlinedAt: !1793)
!1913 = !DILocation(line: 366, column: 6, scope: !1789, inlinedAt: !1793)
!1914 = !DILocation(line: 366, column: 26, scope: !1911, inlinedAt: !1793)
!1915 = !DILocation(line: 367, column: 6, scope: !1916, inlinedAt: !1793)
!1916 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 367, column: 6)
!1917 = !DILocation(line: 367, column: 11, scope: !1916, inlinedAt: !1793)
!1918 = !DILocation(line: 367, column: 6, scope: !1789, inlinedAt: !1793)
!1919 = !DILocation(line: 367, column: 26, scope: !1916, inlinedAt: !1793)
!1920 = !DILocation(line: 368, column: 6, scope: !1921, inlinedAt: !1793)
!1921 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 368, column: 6)
!1922 = !DILocation(line: 368, column: 11, scope: !1921, inlinedAt: !1793)
!1923 = !DILocation(line: 368, column: 6, scope: !1789, inlinedAt: !1793)
!1924 = !DILocation(line: 368, column: 26, scope: !1921, inlinedAt: !1793)
!1925 = !DILocation(line: 369, column: 6, scope: !1926, inlinedAt: !1793)
!1926 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 369, column: 6)
!1927 = !DILocation(line: 369, column: 11, scope: !1926, inlinedAt: !1793)
!1928 = !DILocation(line: 369, column: 6, scope: !1789, inlinedAt: !1793)
!1929 = !DILocation(line: 369, column: 26, scope: !1926, inlinedAt: !1793)
!1930 = !DILocation(line: 370, column: 6, scope: !1931, inlinedAt: !1793)
!1931 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 370, column: 6)
!1932 = !DILocation(line: 370, column: 11, scope: !1931, inlinedAt: !1793)
!1933 = !DILocation(line: 370, column: 6, scope: !1789, inlinedAt: !1793)
!1934 = !DILocation(line: 370, column: 26, scope: !1931, inlinedAt: !1793)
!1935 = !DILocation(line: 371, column: 6, scope: !1936, inlinedAt: !1793)
!1936 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 371, column: 6)
!1937 = !DILocation(line: 371, column: 11, scope: !1936, inlinedAt: !1793)
!1938 = !DILocation(line: 371, column: 6, scope: !1789, inlinedAt: !1793)
!1939 = !DILocation(line: 371, column: 26, scope: !1936, inlinedAt: !1793)
!1940 = !DILocation(line: 372, column: 6, scope: !1941, inlinedAt: !1793)
!1941 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 372, column: 6)
!1942 = !DILocation(line: 372, column: 11, scope: !1941, inlinedAt: !1793)
!1943 = !DILocation(line: 372, column: 6, scope: !1789, inlinedAt: !1793)
!1944 = !DILocation(line: 372, column: 26, scope: !1941, inlinedAt: !1793)
!1945 = !DILocation(line: 373, column: 6, scope: !1946, inlinedAt: !1793)
!1946 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 373, column: 6)
!1947 = !DILocation(line: 373, column: 11, scope: !1946, inlinedAt: !1793)
!1948 = !DILocation(line: 373, column: 6, scope: !1789, inlinedAt: !1793)
!1949 = !DILocation(line: 373, column: 26, scope: !1946, inlinedAt: !1793)
!1950 = !DILocation(line: 374, column: 6, scope: !1951, inlinedAt: !1793)
!1951 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 374, column: 6)
!1952 = !DILocation(line: 374, column: 11, scope: !1951, inlinedAt: !1793)
!1953 = !DILocation(line: 374, column: 6, scope: !1789, inlinedAt: !1793)
!1954 = !DILocation(line: 374, column: 26, scope: !1951, inlinedAt: !1793)
!1955 = !DILocation(line: 375, column: 6, scope: !1956, inlinedAt: !1793)
!1956 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 375, column: 6)
!1957 = !DILocation(line: 375, column: 11, scope: !1956, inlinedAt: !1793)
!1958 = !DILocation(line: 375, column: 6, scope: !1789, inlinedAt: !1793)
!1959 = !DILocation(line: 375, column: 27, scope: !1956, inlinedAt: !1793)
!1960 = !DILocation(line: 376, column: 6, scope: !1961, inlinedAt: !1793)
!1961 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 376, column: 6)
!1962 = !DILocation(line: 376, column: 11, scope: !1961, inlinedAt: !1793)
!1963 = !DILocation(line: 376, column: 6, scope: !1789, inlinedAt: !1793)
!1964 = !DILocation(line: 376, column: 32, scope: !1961, inlinedAt: !1793)
!1965 = !DILocation(line: 377, column: 6, scope: !1966, inlinedAt: !1793)
!1966 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 377, column: 6)
!1967 = !DILocation(line: 377, column: 11, scope: !1966, inlinedAt: !1793)
!1968 = !DILocation(line: 377, column: 6, scope: !1789, inlinedAt: !1793)
!1969 = !DILocation(line: 377, column: 32, scope: !1966, inlinedAt: !1793)
!1970 = !DILocation(line: 378, column: 6, scope: !1971, inlinedAt: !1793)
!1971 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 378, column: 6)
!1972 = !DILocation(line: 378, column: 11, scope: !1971, inlinedAt: !1793)
!1973 = !DILocation(line: 378, column: 6, scope: !1789, inlinedAt: !1793)
!1974 = !DILocation(line: 378, column: 32, scope: !1971, inlinedAt: !1793)
!1975 = !DILocation(line: 379, column: 6, scope: !1976, inlinedAt: !1793)
!1976 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 379, column: 6)
!1977 = !DILocation(line: 379, column: 11, scope: !1976, inlinedAt: !1793)
!1978 = !DILocation(line: 379, column: 6, scope: !1789, inlinedAt: !1793)
!1979 = !DILocation(line: 379, column: 33, scope: !1976, inlinedAt: !1793)
!1980 = !DILocation(line: 380, column: 6, scope: !1981, inlinedAt: !1793)
!1981 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 380, column: 6)
!1982 = !DILocation(line: 380, column: 11, scope: !1981, inlinedAt: !1793)
!1983 = !DILocation(line: 380, column: 6, scope: !1789, inlinedAt: !1793)
!1984 = !DILocation(line: 380, column: 33, scope: !1981, inlinedAt: !1793)
!1985 = !DILocation(line: 381, column: 6, scope: !1986, inlinedAt: !1793)
!1986 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 381, column: 6)
!1987 = !DILocation(line: 381, column: 11, scope: !1986, inlinedAt: !1793)
!1988 = !DILocation(line: 381, column: 6, scope: !1789, inlinedAt: !1793)
!1989 = !DILocation(line: 381, column: 33, scope: !1986, inlinedAt: !1793)
!1990 = !DILocation(line: 382, column: 2, scope: !1991, inlinedAt: !1793)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !6, line: 382, column: 2)
!1992 = distinct !DILexicalBlock(scope: !1789, file: !6, line: 382, column: 2)
!1993 = !{i32 -2144090414, i32 -2144090385, i32 -2144090339, i32 -2144090281, i32 -2144090227, i32 -2144090173, i32 -2144090118, i32 -2144090087}
!1994 = !DILocation(line: 382, column: 2, scope: !1995, inlinedAt: !1793)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !6, line: 382, column: 2)
!1996 = distinct !DILexicalBlock(scope: !1992, file: !6, line: 382, column: 2)
!1997 = !{i32 -2144089644, i32 -2144089637, i32 -2144089583, i32 -2144089552, i32 -2144089522}
!1998 = !DILocation(line: 382, column: 2, scope: !1996, inlinedAt: !1793)
!1999 = !DILocation(line: 386, column: 1, scope: !1789, inlinedAt: !1793)
!2000 = !DILocation(line: 547, column: 9, scope: !1772, inlinedAt: !1775)
!2001 = !DILocation(line: 549, column: 8, scope: !2002, inlinedAt: !1775)
!2002 = distinct !DILexicalBlock(scope: !1772, file: !6, line: 549, column: 7)
!2003 = !DILocation(line: 549, column: 7, scope: !1772, inlinedAt: !1775)
!2004 = !DILocation(line: 550, column: 4, scope: !2002, inlinedAt: !1775)
!2005 = !DILocation(line: 553, column: 33, scope: !1772, inlinedAt: !1775)
!2006 = !DILocation(line: 325, column: 6, scope: !2007, inlinedAt: !1787)
!2007 = distinct !DILexicalBlock(scope: !1783, file: !6, line: 325, column: 6)
!2008 = !DILocation(line: 325, column: 6, scope: !1783, inlinedAt: !1787)
!2009 = !DILocation(line: 326, column: 3, scope: !2007, inlinedAt: !1787)
!2010 = !DILocation(line: 332, column: 9, scope: !1783, inlinedAt: !1787)
!2011 = !DILocation(line: 332, column: 15, scope: !1783, inlinedAt: !1787)
!2012 = !DILocation(line: 332, column: 2, scope: !1783, inlinedAt: !1787)
!2013 = !DILocation(line: 336, column: 1, scope: !1783, inlinedAt: !1787)
!2014 = !DILocation(line: 553, column: 5, scope: !1772, inlinedAt: !1775)
!2015 = !DILocation(line: 553, column: 41, scope: !1772, inlinedAt: !1775)
!2016 = !DILocation(line: 554, column: 5, scope: !1772, inlinedAt: !1775)
!2017 = !DILocation(line: 554, column: 12, scope: !1772, inlinedAt: !1775)
!2018 = !DILocation(line: 448, column: 31, scope: !1764, inlinedAt: !1771)
!2019 = !DILocation(line: 448, column: 34, scope: !1764, inlinedAt: !1771)
!2020 = !DILocation(line: 448, column: 14, scope: !1764, inlinedAt: !1771)
!2021 = !DILocation(line: 450, column: 22, scope: !1764, inlinedAt: !1771)
!2022 = !DILocation(line: 450, column: 25, scope: !1764, inlinedAt: !1771)
!2023 = !DILocation(line: 450, column: 30, scope: !1764, inlinedAt: !1771)
!2024 = !DILocation(line: 450, column: 36, scope: !1764, inlinedAt: !1771)
!2025 = !DILocation(line: 450, column: 8, scope: !1764, inlinedAt: !1771)
!2026 = !DILocation(line: 450, column: 6, scope: !1764, inlinedAt: !1771)
!2027 = !DILocation(line: 451, column: 9, scope: !1764, inlinedAt: !1771)
!2028 = !DILocation(line: 552, column: 3, scope: !1772, inlinedAt: !1775)
!2029 = !DILocation(line: 557, column: 19, scope: !1774, inlinedAt: !1775)
!2030 = !DILocation(line: 557, column: 25, scope: !1774, inlinedAt: !1775)
!2031 = !DILocation(line: 557, column: 9, scope: !1774, inlinedAt: !1775)
!2032 = !DILocation(line: 557, column: 2, scope: !1774, inlinedAt: !1775)
!2033 = !DILocation(line: 558, column: 1, scope: !1774, inlinedAt: !1775)
!2034 = !DILocation(line: 664, column: 2, scope: !1756)
!2035 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2036, file: !2036, line: 646, type: !2037, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !88)
!2036 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!54}
!2039 = !DILocalVariable(name: "__ret", scope: !2040, file: !2036, line: 648, type: !54)
!2040 = distinct !DILexicalBlock(scope: !2035, file: !2036, line: 648, column: 9)
!2041 = !DILocation(line: 648, column: 9, scope: !2040)
!2042 = !DILocalVariable(name: "__edi", scope: !2040, file: !2036, line: 648, type: !54)
!2043 = !DILocalVariable(name: "__esi", scope: !2040, file: !2036, line: 648, type: !54)
!2044 = !DILocalVariable(name: "__edx", scope: !2040, file: !2036, line: 648, type: !54)
!2045 = !DILocalVariable(name: "__ecx", scope: !2040, file: !2036, line: 648, type: !54)
!2046 = !DILocalVariable(name: "__eax", scope: !2040, file: !2036, line: 648, type: !54)
!2047 = !DILocation(line: 648, column: 9, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !2036, line: 648, column: 9)
!2049 = distinct !DILexicalBlock(scope: !2040, file: !2036, line: 648, column: 9)
!2050 = !{i32 -2145764020, i32 -2145761705, i32 -2145761471, i32 -2145761420, i32 -2145761392, i32 -2145761367, i32 -2145761683, i32 -2145761670, i32 -2145761232, i32 -2145761113, i32 -2145761578, i32 -2145761551, i32 -2145761523, i32 -2145761493}
!2051 = !DILocalVariable(name: "__mask", scope: !2052, file: !2036, line: 648, type: !54)
!2052 = distinct !DILexicalBlock(scope: !2048, file: !2036, line: 648, column: 9)
!2053 = !DILocation(line: 648, column: 9, scope: !2052)
!2054 = !DILocation(line: 648, column: 9, scope: !2049)
!2055 = !DILocation(line: 648, column: 2, scope: !2035)
!2056 = distinct !DISubprogram(name: "get_order", scope: !2057, file: !2057, line: 29, type: !541, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !88)
!2057 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2058 = !DILocalVariable(name: "x", arg: 1, scope: !2059, file: !2060, line: 366, type: !49)
!2059 = distinct !DISubprogram(name: "fls64", scope: !2060, file: !2060, line: 366, type: !2061, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !88)
!2060 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!543, !49}
!2063 = !DILocation(line: 366, column: 40, scope: !2059, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 46, column: 9, scope: !2056)
!2065 = !DILocalVariable(name: "bitpos", scope: !2059, file: !2060, line: 368, type: !543)
!2066 = !DILocation(line: 368, column: 6, scope: !2059, inlinedAt: !2064)
!2067 = !DILocalVariable(name: "size", arg: 1, scope: !2056, file: !2057, line: 29, type: !54)
!2068 = !DILocation(line: 29, column: 63, scope: !2056)
!2069 = !DILocation(line: 31, column: 27, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2056, file: !2057, line: 31, column: 6)
!2071 = !DILocation(line: 31, column: 6, scope: !2070)
!2072 = !DILocation(line: 31, column: 6, scope: !2056)
!2073 = !DILocation(line: 32, column: 8, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !2057, line: 32, column: 7)
!2075 = distinct !DILexicalBlock(scope: !2070, file: !2057, line: 31, column: 34)
!2076 = !DILocation(line: 32, column: 7, scope: !2075)
!2077 = !DILocation(line: 33, column: 4, scope: !2074)
!2078 = !DILocation(line: 35, column: 7, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2075, file: !2057, line: 35, column: 7)
!2080 = !DILocation(line: 35, column: 12, scope: !2079)
!2081 = !DILocation(line: 35, column: 7, scope: !2075)
!2082 = !DILocation(line: 36, column: 4, scope: !2079)
!2083 = !DILocation(line: 38, column: 10, scope: !2075)
!2084 = !DILocation(line: 38, column: 28, scope: !2075)
!2085 = !DILocation(line: 38, column: 41, scope: !2075)
!2086 = !DILocation(line: 38, column: 3, scope: !2075)
!2087 = !DILocation(line: 41, column: 6, scope: !2056)
!2088 = !DILocation(line: 42, column: 7, scope: !2056)
!2089 = !DILocation(line: 46, column: 15, scope: !2056)
!2090 = !DILocation(line: 374, column: 2, scope: !2059, inlinedAt: !2064)
!2091 = !DILocation(line: 376, column: 14, scope: !2059, inlinedAt: !2064)
!2092 = !{i32 680788}
!2093 = !DILocation(line: 377, column: 9, scope: !2059, inlinedAt: !2064)
!2094 = !DILocation(line: 377, column: 16, scope: !2059, inlinedAt: !2064)
!2095 = !DILocation(line: 46, column: 2, scope: !2056)
!2096 = !DILocation(line: 48, column: 1, scope: !2056)
!2097 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2098, file: !2098, line: 30, type: !2099, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !88)
!2098 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!543, !48}
!2101 = !DILocation(line: 366, column: 40, scope: !2059, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 32, column: 9, scope: !2097)
!2103 = !DILocation(line: 368, column: 6, scope: !2059, inlinedAt: !2102)
!2104 = !DILocalVariable(name: "n", arg: 1, scope: !2097, file: !2098, line: 30, type: !48)
!2105 = !DILocation(line: 30, column: 21, scope: !2097)
!2106 = !DILocation(line: 32, column: 15, scope: !2097)
!2107 = !DILocation(line: 374, column: 2, scope: !2059, inlinedAt: !2102)
!2108 = !DILocation(line: 376, column: 14, scope: !2059, inlinedAt: !2102)
!2109 = !DILocation(line: 377, column: 9, scope: !2059, inlinedAt: !2102)
!2110 = !DILocation(line: 377, column: 16, scope: !2059, inlinedAt: !2102)
!2111 = !DILocation(line: 32, column: 18, scope: !2097)
!2112 = !DILocation(line: 32, column: 2, scope: !2097)
!2113 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2114, file: !2114, line: 137, type: !2115, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !88)
!2114 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!19, !1767, !2117, !1759, !52}
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2119 = !DILocalVariable(name: "s", arg: 1, scope: !2113, file: !2114, line: 137, type: !1767)
!2120 = !DILocation(line: 137, column: 54, scope: !2113)
!2121 = !DILocalVariable(name: "object", arg: 2, scope: !2113, file: !2114, line: 137, type: !2117)
!2122 = !DILocation(line: 137, column: 69, scope: !2113)
!2123 = !DILocalVariable(name: "size", arg: 3, scope: !2113, file: !2114, line: 138, type: !1759)
!2124 = !DILocation(line: 138, column: 12, scope: !2113)
!2125 = !DILocalVariable(name: "flags", arg: 4, scope: !2113, file: !2114, line: 138, type: !52)
!2126 = !DILocation(line: 138, column: 24, scope: !2113)
!2127 = !DILocation(line: 140, column: 17, scope: !2113)
!2128 = !DILocation(line: 140, column: 2, scope: !2113)
