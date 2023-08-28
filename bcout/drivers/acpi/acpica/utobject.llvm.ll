; ModuleID = '../bcout/drivers/acpi/acpica/utobject.llvm.bc'
source_filename = "drivers/acpi/acpica/utobject.c"
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
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
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
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%union.acpi_descriptor = type { %union.acpi_parse_object }
%struct.acpi_common_descriptor = type { i8*, i8 }
%struct.acpi_object_package = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i32, i32 }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }
%struct.acpi_object_string = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32 }
%struct.acpi_pkg_info = type { i8*, i64, i32, i32 }
%struct.acpi_object_reference = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, i8*, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i8*, i32 }
%struct.acpi_pkg_state = type { i8*, i8, i8, i16, i16, i32, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_walk_state*, i8*, i32 }

@_acpi_module_name = internal constant [9 x i8] c"utobject\00", align 1, !dbg !0
@.str = private unnamed_addr constant [27 x i8] c"Could not allocate size %u\00", align 1
@acpi_gbl_operand_cache = external dso_local global %struct.kmem_cache*, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Could not allocate an object descriptor\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%p is not an ACPI Operand object [%s]\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.4 = private unnamed_addr constant [70 x i8] c"Received a namespace node [%4.4s] where an operand object is required\00", align 1
@.str.5 = private unnamed_addr constant [87 x i8] c"Cannot convert to external object - unsupported Reference Class [%s] 0x%X in object %p\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"Cannot convert to external object - unsupported type [%s] 0x%X in object %p\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* %module_name, i32 %line_number, i32 %component_id, i32 %type) #0 !dbg !820 {
entry:
  %retval = alloca %union.acpi_operand_object*, align 8
  %module_name.addr = alloca i8*, align 8
  %line_number.addr = alloca i32, align 4
  %component_id.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %object = alloca %union.acpi_operand_object*, align 8
  %second_object = alloca %union.acpi_operand_object*, align 8
  store i8* %module_name, i8** %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %module_name.addr, metadata !826, metadata !DIExpression()), !dbg !827
  store i32 %line_number, i32* %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %line_number.addr, metadata !828, metadata !DIExpression()), !dbg !829
  store i32 %component_id, i32* %component_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %component_id.addr, metadata !830, metadata !DIExpression()), !dbg !831
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !832, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %object, metadata !834, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %second_object, metadata !836, metadata !DIExpression()), !dbg !837
  %0 = load i8*, i8** %module_name.addr, align 8, !dbg !838
  %1 = load i32, i32* %line_number.addr, align 4, !dbg !839
  %2 = load i32, i32* %component_id.addr, align 4, !dbg !840
  %call = call i8* @acpi_ut_allocate_object_desc_dbg(i8* %0, i32 %1, i32 %2) #8, !dbg !841
  %3 = bitcast i8* %call to %union.acpi_operand_object*, !dbg !841
  store %union.acpi_operand_object* %3, %union.acpi_operand_object** %object, align 8, !dbg !842
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !843
  %tobool = icmp ne %union.acpi_operand_object* %4, null, !dbg !843
  br i1 %tobool, label %if.end, label %if.then, !dbg !845

if.then:                                          ; preds = %entry
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %retval, align 8, !dbg !846
  br label %return, !dbg !846

if.end:                                           ; preds = %entry
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !848
  %6 = bitcast %union.acpi_operand_object* %5 to i8*, !dbg !848
  call void @kmemleak_not_leak(i8* %6) #8, !dbg !849
  %7 = load i32, i32* %type.addr, align 4, !dbg !850
  switch i32 %7, label %sw.default [
    i32 10, label %sw.bb
    i32 14, label %sw.bb
    i32 18, label %sw.bb
  ], !dbg !851

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %8 = load i8*, i8** %module_name.addr, align 8, !dbg !852
  %9 = load i32, i32* %line_number.addr, align 4, !dbg !854
  %10 = load i32, i32* %component_id.addr, align 4, !dbg !855
  %call1 = call i8* @acpi_ut_allocate_object_desc_dbg(i8* %8, i32 %9, i32 %10) #8, !dbg !856
  %11 = bitcast i8* %call1 to %union.acpi_operand_object*, !dbg !856
  store %union.acpi_operand_object* %11, %union.acpi_operand_object** %second_object, align 8, !dbg !857
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %second_object, align 8, !dbg !858
  %tobool2 = icmp ne %union.acpi_operand_object* %12, null, !dbg !858
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !860

if.then3:                                         ; preds = %sw.bb
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !861
  call void @acpi_ut_delete_object_desc(%union.acpi_operand_object* %13) #8, !dbg !863
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %retval, align 8, !dbg !864
  br label %return, !dbg !864

if.end4:                                          ; preds = %sw.bb
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %second_object, align 8, !dbg !865
  %common = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_common*, !dbg !866
  %type5 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !867
  store i8 28, i8* %type5, align 1, !dbg !868
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %second_object, align 8, !dbg !869
  %common6 = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_common*, !dbg !870
  %reference_count = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common6, i32 0, i32 3, !dbg !871
  store i16 1, i16* %reference_count, align 2, !dbg !872
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %second_object, align 8, !dbg !873
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !874
  %common7 = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_common*, !dbg !875
  %next_object = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common7, i32 0, i32 0, !dbg !876
  store %union.acpi_operand_object* %16, %union.acpi_operand_object** %next_object, align 8, !dbg !877
  br label %sw.epilog, !dbg !878

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !879

sw.epilog:                                        ; preds = %sw.default, %if.end4
  %18 = load i32, i32* %type.addr, align 4, !dbg !880
  %conv = trunc i32 %18 to i8, !dbg !881
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !882
  %common8 = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_common*, !dbg !883
  %type9 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common8, i32 0, i32 2, !dbg !884
  store i8 %conv, i8* %type9, align 1, !dbg !885
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !886
  %common10 = bitcast %union.acpi_operand_object* %20 to %struct.acpi_object_common*, !dbg !887
  %reference_count11 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common10, i32 0, i32 3, !dbg !888
  store i16 1, i16* %reference_count11, align 2, !dbg !889
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !890
  store %union.acpi_operand_object* %21, %union.acpi_operand_object** %retval, align 8, !dbg !890
  br label %return, !dbg !890

return:                                           ; preds = %sw.epilog, %if.then3, %if.then
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %retval, align 8, !dbg !891
  ret %union.acpi_operand_object* %22, !dbg !891
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @acpi_ut_allocate_object_desc_dbg(i8* %module_name, i32 %line_number, i32 %component_id) #0 !dbg !892 {
entry:
  %retval = alloca i8*, align 8
  %module_name.addr = alloca i8*, align 8
  %line_number.addr = alloca i32, align 4
  %component_id.addr = alloca i32, align 4
  %object = alloca %union.acpi_operand_object*, align 8
  store i8* %module_name, i8** %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %module_name.addr, metadata !895, metadata !DIExpression()), !dbg !896
  store i32 %line_number, i32* %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %line_number.addr, metadata !897, metadata !DIExpression()), !dbg !898
  store i32 %component_id, i32* %component_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %component_id.addr, metadata !899, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %object, metadata !901, metadata !DIExpression()), !dbg !902
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @acpi_gbl_operand_cache, align 8, !dbg !903
  %call = call i8* @acpi_os_acquire_object(%struct.kmem_cache* %0) #8, !dbg !904
  %1 = bitcast i8* %call to %union.acpi_operand_object*, !dbg !904
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %object, align 8, !dbg !905
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !906
  %tobool = icmp ne %union.acpi_operand_object* %2, null, !dbg !906
  br i1 %tobool, label %if.end, label %if.then, !dbg !908

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %module_name.addr, align 8, !dbg !909
  %4 = load i32, i32* %line_number.addr, align 4, !dbg !909
  call void (i8*, i32, i8*, ...) @acpi_error(i8* %3, i32 %4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !909
  store i8* null, i8** %retval, align 8, !dbg !911
  br label %return, !dbg !911

if.end:                                           ; preds = %entry
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !912
  %6 = bitcast %union.acpi_operand_object* %5 to i8*, !dbg !912
  %7 = bitcast i8* %6 to %union.acpi_descriptor*, !dbg !912
  %common = bitcast %union.acpi_descriptor* %7 to %struct.acpi_common_descriptor*, !dbg !912
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !912
  store i8 14, i8* %descriptor_type, align 8, !dbg !912
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !913
  %9 = bitcast %union.acpi_operand_object* %8 to i8*, !dbg !913
  store i8* %9, i8** %retval, align 8, !dbg !913
  br label %return, !dbg !913

return:                                           ; preds = %if.end, %if.then
  %10 = load i8*, i8** %retval, align 8, !dbg !914
  ret i8* %10, !dbg !914
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kmemleak_not_leak(i8* %ptr) #0 !dbg !915 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !921, metadata !DIExpression()), !dbg !922
  ret void, !dbg !923
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_delete_object_desc(%union.acpi_operand_object* %object) #0 !dbg !924 {
entry:
  %object.addr = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %object, %union.acpi_operand_object** %object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %object.addr, metadata !927, metadata !DIExpression()), !dbg !928
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !929
  %1 = bitcast %union.acpi_operand_object* %0 to i8*, !dbg !929
  %2 = bitcast i8* %1 to %union.acpi_descriptor*, !dbg !929
  %common = bitcast %union.acpi_descriptor* %2 to %struct.acpi_common_descriptor*, !dbg !929
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !929
  %3 = load i8, i8* %descriptor_type, align 8, !dbg !929
  %conv = zext i8 %3 to i32, !dbg !929
  %cmp = icmp ne i32 %conv, 14, !dbg !931
  br i1 %cmp, label %if.then, label %if.end, !dbg !932

if.then:                                          ; preds = %entry
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !933
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !933
  %6 = bitcast %union.acpi_operand_object* %5 to i8*, !dbg !933
  %call = call i8* @acpi_ut_get_descriptor_name(i8* %6) #8, !dbg !933
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 396, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), %union.acpi_operand_object* %4, i8* %call) #8, !dbg !933
  br label %return, !dbg !935

if.end:                                           ; preds = %entry
  %7 = load %struct.kmem_cache*, %struct.kmem_cache** @acpi_gbl_operand_cache, align 8, !dbg !936
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !937
  %9 = bitcast %union.acpi_operand_object* %8 to i8*, !dbg !937
  %call2 = call i32 @acpi_os_release_object(%struct.kmem_cache* %7, i8* %9) #8, !dbg !938
  br label %return, !dbg !939

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !940
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %union.acpi_operand_object* @acpi_ut_create_package_object(i32 %count) #0 !dbg !941 {
entry:
  %retval = alloca %union.acpi_operand_object*, align 8
  %count.addr = alloca i32, align 4
  %package_desc = alloca %union.acpi_operand_object*, align 8
  %package_elements = alloca %union.acpi_operand_object**, align 8
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !944, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %package_desc, metadata !946, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %package_elements, metadata !948, metadata !DIExpression()), !dbg !949
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 139, i32 1, i32 4) #8, !dbg !950
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %package_desc, align 8, !dbg !951
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_desc, align 8, !dbg !952
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !952
  br i1 %tobool, label %if.end, label %if.then, !dbg !954

if.then:                                          ; preds = %entry
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %retval, align 8, !dbg !955
  br label %return, !dbg !955

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %count.addr, align 4, !dbg !957
  %conv = zext i32 %1 to i64, !dbg !957
  %add = add i64 %conv, 1, !dbg !957
  %mul = mul i64 %add, 8, !dbg !957
  %call1 = call i8* @acpi_os_allocate_zeroed(i64 %mul) #8, !dbg !957
  %2 = bitcast i8* %call1 to %union.acpi_operand_object**, !dbg !957
  store %union.acpi_operand_object** %2, %union.acpi_operand_object*** %package_elements, align 8, !dbg !958
  %3 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %package_elements, align 8, !dbg !959
  %tobool2 = icmp ne %union.acpi_operand_object** %3, null, !dbg !959
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !961

if.then3:                                         ; preds = %if.end
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_desc, align 8, !dbg !962
  %5 = bitcast %union.acpi_operand_object* %4 to i8*, !dbg !962
  call void @acpi_os_free(i8* %5) #8, !dbg !962
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %retval, align 8, !dbg !964
  br label %return, !dbg !964

if.end4:                                          ; preds = %if.end
  %6 = load i32, i32* %count.addr, align 4, !dbg !965
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_desc, align 8, !dbg !966
  %package = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_package*, !dbg !967
  %count5 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 9, !dbg !968
  store i32 %6, i32* %count5, align 4, !dbg !969
  %8 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %package_elements, align 8, !dbg !970
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_desc, align 8, !dbg !971
  %package6 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_package*, !dbg !972
  %elements = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package6, i32 0, i32 6, !dbg !973
  store %union.acpi_operand_object** %8, %union.acpi_operand_object*** %elements, align 8, !dbg !974
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_desc, align 8, !dbg !975
  store %union.acpi_operand_object* %10, %union.acpi_operand_object** %retval, align 8, !dbg !975
  br label %return, !dbg !975

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %retval, align 8, !dbg !976
  ret %union.acpi_operand_object* %11, !dbg !976
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !977 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !981, metadata !DIExpression()), !dbg !987
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !991, metadata !DIExpression()), !dbg !992
  %0 = load i64, i64* %size.addr, align 8, !dbg !993
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !994, metadata !DIExpression()), !dbg !995
  br label %do.body, !dbg !995

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !996, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1000, metadata !DIExpression()), !dbg !999
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !999
  %conv = zext i1 %cmp to i32, !dbg !999
  store i32 1, i32* %tmp, align 4, !dbg !999
  %1 = load i32, i32* %tmp, align 4, !dbg !999
  %call = call i64 @arch_local_save_flags() #8, !dbg !1001
  store i64 %call, i64* %_flags, align 8, !dbg !1001
  br label %do.end, !dbg !1001

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1002, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1005, metadata !DIExpression()), !dbg !1004
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1004
  %conv6 = zext i1 %cmp5 to i32, !dbg !1004
  store i32 1, i32* %tmp7, align 4, !dbg !1004
  %2 = load i32, i32* %tmp7, align 4, !dbg !1004
  %3 = load i64, i64* %_flags, align 8, !dbg !1006
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1007
  %and.i = and i64 %4, 512, !dbg !1008
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1009
  %lnot.i = xor i1 %tobool.i, true, !dbg !1009
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1009
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1006
  %5 = load i32, i32* %tmp8, align 4, !dbg !1006
  store i32 %5, i32* %tmp1, align 4, !dbg !1001
  %6 = load i32, i32* %tmp1, align 4, !dbg !995
  %tobool = icmp ne i32 %6, 0, !dbg !1010
  %7 = zext i1 %tobool to i64, !dbg !1010
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1010
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #8, !dbg !1011
  ret i8* %call10, !dbg !1012
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1013 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1016, metadata !DIExpression()), !dbg !1017
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1018
  call void @kfree(i8* %0) #8, !dbg !1019
  ret void, !dbg !1020
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %union.acpi_operand_object* @acpi_ut_create_integer_object(i64 %initial_value) #0 !dbg !1021 {
entry:
  %retval = alloca %union.acpi_operand_object*, align 8
  %initial_value.addr = alloca i64, align 8
  %integer_desc = alloca %union.acpi_operand_object*, align 8
  store i64 %initial_value, i64* %initial_value.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %initial_value.addr, metadata !1024, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %integer_desc, metadata !1026, metadata !DIExpression()), !dbg !1027
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 180, i32 1, i32 1) #8, !dbg !1028
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %integer_desc, align 8, !dbg !1029
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %integer_desc, align 8, !dbg !1030
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !1030
  br i1 %tobool, label %if.end, label %if.then, !dbg !1032

if.then:                                          ; preds = %entry
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %retval, align 8, !dbg !1033
  br label %return, !dbg !1033

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %initial_value.addr, align 8, !dbg !1035
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %integer_desc, align 8, !dbg !1036
  %integer = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_integer*, !dbg !1037
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1038
  store i64 %1, i64* %value, align 8, !dbg !1039
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %integer_desc, align 8, !dbg !1040
  store %union.acpi_operand_object* %3, %union.acpi_operand_object** %retval, align 8, !dbg !1040
  br label %return, !dbg !1040

return:                                           ; preds = %if.end, %if.then
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %retval, align 8, !dbg !1041
  ret %union.acpi_operand_object* %4, !dbg !1041
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64 %buffer_size) #0 !dbg !1042 {
entry:
  %retval = alloca %union.acpi_operand_object*, align 8
  %buffer_size.addr = alloca i64, align 8
  %buffer_desc = alloca %union.acpi_operand_object*, align 8
  %buffer = alloca i8*, align 8
  store i64 %buffer_size, i64* %buffer_size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %buffer_size.addr, metadata !1045, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %buffer_desc, metadata !1047, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.declare(metadata i8** %buffer, metadata !1049, metadata !DIExpression()), !dbg !1050
  store i8* null, i8** %buffer, align 8, !dbg !1050
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 210, i32 1, i32 3) #8, !dbg !1051
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !1052
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !1053
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !1053
  br i1 %tobool, label %if.end, label %if.then, !dbg !1055

if.then:                                          ; preds = %entry
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %retval, align 8, !dbg !1056
  br label %return, !dbg !1056

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %buffer_size.addr, align 8, !dbg !1058
  %cmp = icmp ugt i64 %1, 0, !dbg !1060
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !1061

if.then1:                                         ; preds = %if.end
  %2 = load i64, i64* %buffer_size.addr, align 8, !dbg !1062
  %call2 = call i8* @acpi_os_allocate_zeroed(i64 %2) #8, !dbg !1062
  store i8* %call2, i8** %buffer, align 8, !dbg !1064
  %3 = load i8*, i8** %buffer, align 8, !dbg !1065
  %tobool3 = icmp ne i8* %3, null, !dbg !1065
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1067

if.then4:                                         ; preds = %if.then1
  %4 = load i64, i64* %buffer_size.addr, align 8, !dbg !1068
  %conv = trunc i64 %4 to i32, !dbg !1068
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 223, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %conv) #8, !dbg !1068
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !1070
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %5) #8, !dbg !1071
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %retval, align 8, !dbg !1072
  br label %return, !dbg !1072

if.end5:                                          ; preds = %if.then1
  br label %if.end6, !dbg !1073

if.end6:                                          ; preds = %if.end5, %if.end
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !1074
  %buffer7 = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_buffer*, !dbg !1075
  %flags = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer7, i32 0, i32 4, !dbg !1076
  %7 = load i8, i8* %flags, align 4, !dbg !1077
  %conv8 = zext i8 %7 to i32, !dbg !1077
  %or = or i32 %conv8, 4, !dbg !1077
  %conv9 = trunc i32 %or to i8, !dbg !1077
  store i8 %conv9, i8* %flags, align 4, !dbg !1077
  %8 = load i8*, i8** %buffer, align 8, !dbg !1078
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !1079
  %buffer10 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_buffer*, !dbg !1080
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer10, i32 0, i32 5, !dbg !1081
  store i8* %8, i8** %pointer, align 8, !dbg !1082
  %10 = load i64, i64* %buffer_size.addr, align 8, !dbg !1083
  %conv11 = trunc i64 %10 to i32, !dbg !1084
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !1085
  %buffer12 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_buffer*, !dbg !1086
  %length = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer12, i32 0, i32 6, !dbg !1087
  store i32 %conv11, i32* %length, align 8, !dbg !1088
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc, align 8, !dbg !1089
  store %union.acpi_operand_object* %12, %union.acpi_operand_object** %retval, align 8, !dbg !1089
  br label %return, !dbg !1089

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %retval, align 8, !dbg !1090
  ret %union.acpi_operand_object* %13, !dbg !1090
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %union.acpi_operand_object* @acpi_ut_create_string_object(i64 %string_size) #0 !dbg !1091 {
entry:
  %retval = alloca %union.acpi_operand_object*, align 8
  %string_size.addr = alloca i64, align 8
  %string_desc = alloca %union.acpi_operand_object*, align 8
  %string = alloca i8*, align 8
  store i64 %string_size, i64* %string_size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %string_size.addr, metadata !1092, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %string_desc, metadata !1094, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.declare(metadata i8** %string, metadata !1096, metadata !DIExpression()), !dbg !1097
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 265, i32 1, i32 2) #8, !dbg !1098
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %string_desc, align 8, !dbg !1099
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %string_desc, align 8, !dbg !1100
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !1100
  br i1 %tobool, label %if.end, label %if.then, !dbg !1102

if.then:                                          ; preds = %entry
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %retval, align 8, !dbg !1103
  br label %return, !dbg !1103

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %string_size.addr, align 8, !dbg !1105
  %add = add i64 %1, 1, !dbg !1105
  %call1 = call i8* @acpi_os_allocate_zeroed(i64 %add) #8, !dbg !1105
  store i8* %call1, i8** %string, align 8, !dbg !1106
  %2 = load i8*, i8** %string, align 8, !dbg !1107
  %tobool2 = icmp ne i8* %2, null, !dbg !1107
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1109

if.then3:                                         ; preds = %if.end
  %3 = load i64, i64* %string_size.addr, align 8, !dbg !1110
  %conv = trunc i64 %3 to i32, !dbg !1110
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 276, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %conv) #8, !dbg !1110
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %string_desc, align 8, !dbg !1112
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %4) #8, !dbg !1113
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %retval, align 8, !dbg !1114
  br label %return, !dbg !1114

if.end4:                                          ; preds = %if.end
  %5 = load i8*, i8** %string, align 8, !dbg !1115
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %string_desc, align 8, !dbg !1116
  %string5 = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_string*, !dbg !1117
  %pointer = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string5, i32 0, i32 5, !dbg !1118
  store i8* %5, i8** %pointer, align 8, !dbg !1119
  %7 = load i64, i64* %string_size.addr, align 8, !dbg !1120
  %conv6 = trunc i64 %7 to i32, !dbg !1121
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %string_desc, align 8, !dbg !1122
  %string7 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_string*, !dbg !1123
  %length = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string7, i32 0, i32 6, !dbg !1124
  store i32 %conv6, i32* %length, align 8, !dbg !1125
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %string_desc, align 8, !dbg !1126
  store %union.acpi_operand_object* %9, %union.acpi_operand_object** %retval, align 8, !dbg !1126
  br label %return, !dbg !1126

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %retval, align 8, !dbg !1127
  ret %union.acpi_operand_object* %10, !dbg !1127
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @acpi_ut_valid_internal_object(i8* %object) #0 !dbg !1128 {
entry:
  %retval = alloca i8, align 1
  %object.addr = alloca i8*, align 8
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1131, metadata !DIExpression()), !dbg !1132
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1133
  %tobool = icmp ne i8* %0, null, !dbg !1133
  br i1 %tobool, label %if.end, label %if.then, !dbg !1135

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !1136
  br label %return, !dbg !1136

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %object.addr, align 8, !dbg !1138
  %2 = bitcast i8* %1 to %union.acpi_descriptor*, !dbg !1138
  %common = bitcast %union.acpi_descriptor* %2 to %struct.acpi_common_descriptor*, !dbg !1138
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !1138
  %3 = load i8, i8* %descriptor_type, align 8, !dbg !1138
  %conv = zext i8 %3 to i32, !dbg !1138
  switch i32 %conv, label %sw.default [
    i32 14, label %sw.bb
  ], !dbg !1139

sw.bb:                                            ; preds = %if.end
  store i8 1, i8* %retval, align 1, !dbg !1140
  br label %return, !dbg !1140

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !1142

sw.epilog:                                        ; preds = %sw.default
  store i8 0, i8* %retval, align 1, !dbg !1143
  br label %return, !dbg !1143

return:                                           ; preds = %sw.epilog, %sw.bb, %if.then
  %4 = load i8, i8* %retval, align 1, !dbg !1144
  ret i8 %4, !dbg !1144
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_acquire_object(%struct.kmem_cache* %cache) #0 !dbg !1145 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !981, metadata !DIExpression()), !dbg !1151
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
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %cache.addr, metadata !1155, metadata !DIExpression()), !dbg !1156
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** %cache.addr, align 8, !dbg !1157
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1158, metadata !DIExpression()), !dbg !1159
  br label %do.body, !dbg !1159

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1160, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1164, metadata !DIExpression()), !dbg !1163
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1163
  %conv = zext i1 %cmp to i32, !dbg !1163
  store i32 1, i32* %tmp, align 4, !dbg !1163
  %1 = load i32, i32* %tmp, align 4, !dbg !1163
  %call = call i64 @arch_local_save_flags() #8, !dbg !1165
  store i64 %call, i64* %_flags, align 8, !dbg !1165
  br label %do.end, !dbg !1165

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1166, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1169, metadata !DIExpression()), !dbg !1168
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1168
  %conv6 = zext i1 %cmp5 to i32, !dbg !1168
  store i32 1, i32* %tmp7, align 4, !dbg !1168
  %2 = load i32, i32* %tmp7, align 4, !dbg !1168
  %3 = load i64, i64* %_flags, align 8, !dbg !1170
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1171
  %and.i = and i64 %4, 512, !dbg !1172
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1173
  %lnot.i = xor i1 %tobool.i, true, !dbg !1173
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1173
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1170
  %5 = load i32, i32* %tmp8, align 4, !dbg !1170
  store i32 %5, i32* %tmp1, align 4, !dbg !1165
  %6 = load i32, i32* %tmp1, align 4, !dbg !1159
  %tobool = icmp ne i32 %6, 0, !dbg !1174
  %7 = zext i1 %tobool to i64, !dbg !1174
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1174
  %call10 = call i8* @kmem_cache_zalloc(%struct.kmem_cache* %0, i32 %cond) #8, !dbg !1175
  ret i8* %call10, !dbg !1176
}

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_descriptor_name(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_release_object(%struct.kmem_cache*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_get_object_size(%union.acpi_operand_object* %internal_object, i64* %obj_length) #0 !dbg !1177 {
entry:
  %internal_object.addr = alloca %union.acpi_operand_object*, align 8
  %obj_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object* %internal_object, %union.acpi_operand_object** %internal_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %internal_object.addr, metadata !1181, metadata !DIExpression()), !dbg !1182
  store i64* %obj_length, i64** %obj_length.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %obj_length.addr, metadata !1183, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1185, metadata !DIExpression()), !dbg !1186
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1187
  %1 = bitcast %union.acpi_operand_object* %0 to i8*, !dbg !1187
  %2 = bitcast i8* %1 to %union.acpi_descriptor*, !dbg !1187
  %common = bitcast %union.acpi_descriptor* %2 to %struct.acpi_common_descriptor*, !dbg !1187
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !1187
  %3 = load i8, i8* %descriptor_type, align 8, !dbg !1187
  %conv = zext i8 %3 to i32, !dbg !1187
  %cmp = icmp eq i32 %conv, 14, !dbg !1189
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !1190

land.lhs.true:                                    ; preds = %entry
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1191
  %common2 = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_common*, !dbg !1192
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common2, i32 0, i32 2, !dbg !1193
  %5 = load i8, i8* %type, align 1, !dbg !1193
  %conv3 = zext i8 %5 to i32, !dbg !1191
  %cmp4 = icmp eq i32 %conv3, 4, !dbg !1194
  br i1 %cmp4, label %if.then, label %if.else, !dbg !1195

if.then:                                          ; preds = %land.lhs.true
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1196
  %7 = load i64*, i64** %obj_length.addr, align 8, !dbg !1198
  %call = call i32 @acpi_ut_get_package_object_size(%union.acpi_operand_object* %6, i64* %7) #8, !dbg !1199
  store i32 %call, i32* %status, align 4, !dbg !1200
  br label %if.end, !dbg !1201

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1202
  %9 = load i64*, i64** %obj_length.addr, align 8, !dbg !1204
  %call6 = call i32 @acpi_ut_get_simple_object_size(%union.acpi_operand_object* %8, i64* %9) #8, !dbg !1205
  store i32 %call6, i32* %status, align 4, !dbg !1206
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* %status, align 4, !dbg !1207
  ret i32 %10, !dbg !1208
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ut_get_package_object_size(%union.acpi_operand_object* %internal_object, i64* %obj_length) #0 !dbg !1209 {
entry:
  %retval = alloca i32, align 4
  %internal_object.addr = alloca %union.acpi_operand_object*, align 8
  %obj_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %info = alloca %struct.acpi_pkg_info, align 8
  store %union.acpi_operand_object* %internal_object, %union.acpi_operand_object** %internal_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %internal_object.addr, metadata !1210, metadata !DIExpression()), !dbg !1211
  store i64* %obj_length, i64** %obj_length.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %obj_length.addr, metadata !1212, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1214, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.declare(metadata %struct.acpi_pkg_info* %info, metadata !1216, metadata !DIExpression()), !dbg !1217
  %length = getelementptr inbounds %struct.acpi_pkg_info, %struct.acpi_pkg_info* %info, i32 0, i32 1, !dbg !1218
  store i64 0, i64* %length, align 8, !dbg !1219
  %object_space = getelementptr inbounds %struct.acpi_pkg_info, %struct.acpi_pkg_info* %info, i32 0, i32 2, !dbg !1220
  store i32 0, i32* %object_space, align 8, !dbg !1221
  %num_packages = getelementptr inbounds %struct.acpi_pkg_info, %struct.acpi_pkg_info* %info, i32 0, i32 3, !dbg !1222
  store i32 1, i32* %num_packages, align 4, !dbg !1223
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1224
  %1 = bitcast %struct.acpi_pkg_info* %info to i8*, !dbg !1225
  %call = call i32 @acpi_ut_walk_package_tree(%union.acpi_operand_object* %0, i8* null, i32 (i8, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)* @acpi_ut_get_element_length, i8* %1) #8, !dbg !1226
  store i32 %call, i32* %status, align 4, !dbg !1227
  %2 = load i32, i32* %status, align 4, !dbg !1228
  %tobool = icmp ne i32 %2, 0, !dbg !1228
  br i1 %tobool, label %if.then, label %if.end, !dbg !1230

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !1231
  store i32 %3, i32* %retval, align 4, !dbg !1231
  br label %return, !dbg !1231

if.end:                                           ; preds = %entry
  %num_packages1 = getelementptr inbounds %struct.acpi_pkg_info, %struct.acpi_pkg_info* %info, i32 0, i32 3, !dbg !1233
  %4 = load i32, i32* %num_packages1, align 4, !dbg !1233
  %conv = zext i32 %4 to i64, !dbg !1234
  %mul = mul i64 24, %conv, !dbg !1235
  %length2 = getelementptr inbounds %struct.acpi_pkg_info, %struct.acpi_pkg_info* %info, i32 0, i32 1, !dbg !1236
  %5 = load i64, i64* %length2, align 8, !dbg !1237
  %add = add i64 %5, %mul, !dbg !1237
  store i64 %add, i64* %length2, align 8, !dbg !1237
  %length3 = getelementptr inbounds %struct.acpi_pkg_info, %struct.acpi_pkg_info* %info, i32 0, i32 1, !dbg !1238
  %6 = load i64, i64* %length3, align 8, !dbg !1238
  %7 = load i64*, i64** %obj_length.addr, align 8, !dbg !1239
  store i64 %6, i64* %7, align 8, !dbg !1240
  %8 = load i32, i32* %status, align 4, !dbg !1241
  store i32 %8, i32* %retval, align 4, !dbg !1241
  br label %return, !dbg !1241

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !1242
  ret i32 %9, !dbg !1242
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ut_get_simple_object_size(%union.acpi_operand_object* %internal_object, i64* %obj_length) #0 !dbg !1243 {
entry:
  %retval = alloca i32, align 4
  %internal_object.addr = alloca %union.acpi_operand_object*, align 8
  %obj_length.addr = alloca i64*, align 8
  %length = alloca i64, align 8
  %size = alloca i64, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object* %internal_object, %union.acpi_operand_object** %internal_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %internal_object.addr, metadata !1244, metadata !DIExpression()), !dbg !1245
  store i64* %obj_length, i64** %obj_length.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %obj_length.addr, metadata !1246, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.declare(metadata i64* %length, metadata !1248, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.declare(metadata i64* %size, metadata !1250, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1252, metadata !DIExpression()), !dbg !1253
  store i32 0, i32* %status, align 4, !dbg !1253
  store i64 24, i64* %length, align 8, !dbg !1254
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1255
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !1255
  br i1 %tobool, label %if.end, label %if.then, !dbg !1257

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %length, align 8, !dbg !1258
  %add = add i64 %1, 7, !dbg !1258
  %and = and i64 %add, -8, !dbg !1258
  %2 = load i64*, i64** %obj_length.addr, align 8, !dbg !1260
  store i64 %and, i64* %2, align 8, !dbg !1261
  store i32 0, i32* %retval, align 4, !dbg !1262
  br label %return, !dbg !1262

if.end:                                           ; preds = %entry
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1263
  %4 = bitcast %union.acpi_operand_object* %3 to i8*, !dbg !1263
  %5 = bitcast i8* %4 to %union.acpi_descriptor*, !dbg !1263
  %common = bitcast %union.acpi_descriptor* %5 to %struct.acpi_common_descriptor*, !dbg !1263
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !1263
  %6 = load i8, i8* %descriptor_type, align 8, !dbg !1263
  %conv = zext i8 %6 to i32, !dbg !1263
  %cmp = icmp eq i32 %conv, 15, !dbg !1265
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1266

if.then2:                                         ; preds = %if.end
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1267
  %8 = bitcast %union.acpi_operand_object* %7 to i8*, !dbg !1267
  %9 = bitcast i8* %8 to %struct.acpi_namespace_node*, !dbg !1267
  %name = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %9, i32 0, i32 4, !dbg !1267
  %ascii = bitcast %union.acpi_name_union* %name to [4 x i8]*, !dbg !1267
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ascii, i64 0, i64 0, !dbg !1267
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 454, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i8* %arraydecay) #8, !dbg !1267
  store i32 12303, i32* %retval, align 4, !dbg !1269
  br label %return, !dbg !1269

if.end3:                                          ; preds = %if.end
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1270
  %common4 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_common*, !dbg !1271
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common4, i32 0, i32 2, !dbg !1272
  %11 = load i8, i8* %type, align 1, !dbg !1272
  %conv5 = zext i8 %11 to i32, !dbg !1270
  switch i32 %conv5, label %sw.default29 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb10
    i32 1, label %sw.bb14
    i32 12, label %sw.bb14
    i32 11, label %sw.bb14
    i32 20, label %sw.bb15
  ], !dbg !1273

sw.bb:                                            ; preds = %if.end3
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1274
  %string = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_string*, !dbg !1276
  %length6 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 6, !dbg !1277
  %13 = load i32, i32* %length6, align 8, !dbg !1277
  %conv7 = zext i32 %13 to i64, !dbg !1278
  %add8 = add i64 %conv7, 1, !dbg !1279
  %14 = load i64, i64* %length, align 8, !dbg !1280
  %add9 = add i64 %14, %add8, !dbg !1280
  store i64 %add9, i64* %length, align 8, !dbg !1280
  br label %sw.epilog34, !dbg !1281

sw.bb10:                                          ; preds = %if.end3
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1282
  %buffer = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_buffer*, !dbg !1283
  %length11 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 6, !dbg !1284
  %16 = load i32, i32* %length11, align 8, !dbg !1284
  %conv12 = zext i32 %16 to i64, !dbg !1285
  %17 = load i64, i64* %length, align 8, !dbg !1286
  %add13 = add i64 %17, %conv12, !dbg !1286
  store i64 %add13, i64* %length, align 8, !dbg !1286
  br label %sw.epilog34, !dbg !1287

sw.bb14:                                          ; preds = %if.end3, %if.end3, %if.end3
  br label %sw.epilog34, !dbg !1288

sw.bb15:                                          ; preds = %if.end3
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1289
  %reference = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_reference*, !dbg !1290
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 5, !dbg !1291
  %19 = load i8, i8* %class, align 1, !dbg !1291
  %conv16 = zext i8 %19 to i32, !dbg !1289
  switch i32 %conv16, label %sw.default [
    i32 5, label %sw.bb17
  ], !dbg !1292

sw.bb17:                                          ; preds = %sw.bb15
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1293
  %reference18 = bitcast %union.acpi_operand_object* %20 to %struct.acpi_object_reference*, !dbg !1295
  %node = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference18, i32 0, i32 9, !dbg !1296
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1296
  %call = call i64 @acpi_ns_get_pathname_length(%struct.acpi_namespace_node* %21) #8, !dbg !1297
  store i64 %call, i64* %size, align 8, !dbg !1298
  %22 = load i64, i64* %size, align 8, !dbg !1299
  %tobool19 = icmp ne i64 %22, 0, !dbg !1299
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !1301

if.then20:                                        ; preds = %sw.bb17
  store i32 4097, i32* %retval, align 4, !dbg !1302
  br label %return, !dbg !1302

if.end21:                                         ; preds = %sw.bb17
  %23 = load i64, i64* %size, align 8, !dbg !1304
  %add22 = add i64 %23, 7, !dbg !1304
  %and23 = and i64 %add22, -8, !dbg !1304
  %24 = load i64, i64* %length, align 8, !dbg !1305
  %add24 = add i64 %24, %and23, !dbg !1305
  store i64 %add24, i64* %length, align 8, !dbg !1305
  br label %sw.epilog, !dbg !1306

sw.default:                                       ; preds = %sw.bb15
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1307
  %call25 = call i8* @acpi_ut_get_reference_name(%union.acpi_operand_object* %25) #8, !dbg !1307
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1307
  %reference26 = bitcast %union.acpi_operand_object* %26 to %struct.acpi_object_reference*, !dbg !1307
  %class27 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference26, i32 0, i32 5, !dbg !1307
  %27 = load i8, i8* %class27, align 1, !dbg !1307
  %conv28 = zext i8 %27 to i32, !dbg !1307
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1307
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 511, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.5, i64 0, i64 0), i8* %call25, i32 %conv28, %union.acpi_operand_object* %28) #8, !dbg !1307
  store i32 8, i32* %status, align 4, !dbg !1308
  br label %sw.epilog, !dbg !1309

sw.epilog:                                        ; preds = %sw.default, %if.end21
  br label %sw.epilog34, !dbg !1310

sw.default29:                                     ; preds = %if.end3
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1311
  %call30 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %29) #8, !dbg !1311
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1311
  %common31 = bitcast %union.acpi_operand_object* %30 to %struct.acpi_object_common*, !dbg !1311
  %type32 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common31, i32 0, i32 2, !dbg !1311
  %31 = load i8, i8* %type32, align 1, !dbg !1311
  %conv33 = zext i8 %31 to i32, !dbg !1311
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1311
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 524, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0), i8* %call30, i32 %conv33, %union.acpi_operand_object* %32) #8, !dbg !1311
  store i32 8, i32* %status, align 4, !dbg !1312
  br label %sw.epilog34, !dbg !1313

sw.epilog34:                                      ; preds = %sw.default29, %sw.epilog, %sw.bb14, %sw.bb10, %sw.bb
  %33 = load i64, i64* %length, align 8, !dbg !1314
  %add35 = add i64 %33, 7, !dbg !1314
  %and36 = and i64 %add35, -8, !dbg !1314
  %34 = load i64*, i64** %obj_length.addr, align 8, !dbg !1315
  store i64 %and36, i64* %34, align 8, !dbg !1316
  %35 = load i32, i32* %status, align 4, !dbg !1317
  store i32 %35, i32* %retval, align 4, !dbg !1317
  br label %return, !dbg !1317

return:                                           ; preds = %sw.epilog34, %if.then20, %if.then2, %if.then
  %36 = load i32, i32* %retval, align 4, !dbg !1318
  ret i32 %36, !dbg !1318
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1319 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1326, metadata !DIExpression()), !dbg !1330
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1336, metadata !DIExpression()), !dbg !1337
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1338, metadata !DIExpression()), !dbg !1339
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1340, metadata !DIExpression()), !dbg !1341
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1342, metadata !DIExpression()), !dbg !1346
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1348, metadata !DIExpression()), !dbg !1352
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1354, metadata !DIExpression()), !dbg !1358
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1363, metadata !DIExpression()), !dbg !1364
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1365, metadata !DIExpression()), !dbg !1366
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1367, metadata !DIExpression()), !dbg !1368
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1369, metadata !DIExpression()), !dbg !1370
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1371, metadata !DIExpression()), !dbg !1372
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1373, metadata !DIExpression()), !dbg !1374
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1375, metadata !DIExpression()), !dbg !1376
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1377, metadata !DIExpression()), !dbg !1378
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1379, metadata !DIExpression()), !dbg !1380
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1381, metadata !DIExpression()), !dbg !1382
  %0 = load i64, i64* %size.addr, align 8, !dbg !1383
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1384
  %or = or i32 %1, 256, !dbg !1385
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1386
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !1387
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1388

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1389
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1390
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1391

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1392
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1393
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1394
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !1395
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1372
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1396
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1397
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1398
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1399
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1400
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1401
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !1402
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1402
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1402
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1402
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !1402
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1403
  br label %kmalloc.exit, !dbg !1403

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1404
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1405
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1405
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1407

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1408
  br label %kmalloc_index.exit.i, !dbg !1408

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1409
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1411
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1412

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1413
  br label %kmalloc_index.exit.i, !dbg !1413

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1414
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1416
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1417

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1418
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1419
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1420

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1421
  br label %kmalloc_index.exit.i, !dbg !1421

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1422
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1424
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1425

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1426
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1427
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1428

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1429
  br label %kmalloc_index.exit.i, !dbg !1429

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1430
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1432
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1433

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1434
  br label %kmalloc_index.exit.i, !dbg !1434

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1435
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1437
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1438

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1439
  br label %kmalloc_index.exit.i, !dbg !1439

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1440
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1442
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1443

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1444
  br label %kmalloc_index.exit.i, !dbg !1444

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1445
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1447
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1448

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1449
  br label %kmalloc_index.exit.i, !dbg !1449

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1450
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1452
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1453

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1454
  br label %kmalloc_index.exit.i, !dbg !1454

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1455
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1457
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1458

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1459
  br label %kmalloc_index.exit.i, !dbg !1459

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1460
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1462
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1463

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1464
  br label %kmalloc_index.exit.i, !dbg !1464

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1465
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1467
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1468

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1469
  br label %kmalloc_index.exit.i, !dbg !1469

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1470
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1472
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1473

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1474
  br label %kmalloc_index.exit.i, !dbg !1474

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1475
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1477
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1478

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1479
  br label %kmalloc_index.exit.i, !dbg !1479

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1480
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1482
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1483

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1484
  br label %kmalloc_index.exit.i, !dbg !1484

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1485
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1487
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1488

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1489
  br label %kmalloc_index.exit.i, !dbg !1489

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1490
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1492
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1493

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1494
  br label %kmalloc_index.exit.i, !dbg !1494

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1495
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1497
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1498

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1499
  br label %kmalloc_index.exit.i, !dbg !1499

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1500
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1502
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1503

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1504
  br label %kmalloc_index.exit.i, !dbg !1504

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1505
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1507
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1508

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1509
  br label %kmalloc_index.exit.i, !dbg !1509

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1510
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1512
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1513

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1514
  br label %kmalloc_index.exit.i, !dbg !1514

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1515
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1517
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1518

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1519
  br label %kmalloc_index.exit.i, !dbg !1519

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1520
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1522
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1523

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1524
  br label %kmalloc_index.exit.i, !dbg !1524

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1525
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1527
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1528

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1529
  br label %kmalloc_index.exit.i, !dbg !1529

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1530
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1532
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1533

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1534
  br label %kmalloc_index.exit.i, !dbg !1534

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1535
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1537
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1538

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1539
  br label %kmalloc_index.exit.i, !dbg !1539

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1540
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1542
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1543

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1544
  br label %kmalloc_index.exit.i, !dbg !1544

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1545
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1547
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1548

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1549
  br label %kmalloc_index.exit.i, !dbg !1549

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !1550, !srcloc !1553
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #7, !dbg !1554, !srcloc !1557
  unreachable, !dbg !1558

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1559
  store i32 %45, i32* %index.i, align 4, !dbg !1560
  %46 = load i32, i32* %index.i, align 4, !dbg !1561
  %tobool.i = icmp ne i32 %46, 0, !dbg !1561
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1563

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1564
  br label %kmalloc.exit, !dbg !1564

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1565
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1566
  %and.i.i = and i32 %48, 17, !dbg !1566
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1566
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1566
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1566
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1566
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1568

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1569
  br label %kmalloc_type.exit.i, !dbg !1569

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1570
  %and2.i.i = and i32 %49, 1, !dbg !1571
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1570
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1570
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1570
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1572
  br label %kmalloc_type.exit.i, !dbg !1572

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1573
  %idxprom.i = zext i32 %51 to i64, !dbg !1574
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1574
  %52 = load i32, i32* %index.i, align 4, !dbg !1575
  %idxprom6.i = zext i32 %52 to i64, !dbg !1574
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1574
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1574
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1576
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1577
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1578
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1579
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !1580
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1580
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1580
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1580
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !1580
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1341
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1581
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1582
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1583
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1584
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !1585
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1586
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1587
  store i8* %62, i8** %retval.i, align 8, !dbg !1588
  br label %kmalloc.exit, !dbg !1588

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1589
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1590
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !1591
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1591
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1591
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1591
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !1591
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1592
  br label %kmalloc.exit, !dbg !1592

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1593
  ret i8* %65, !dbg !1594
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1595 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1599, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1602, metadata !DIExpression()), !dbg !1601
  %0 = load i64, i64* %__edi, align 8, !dbg !1601
  store i64 %0, i64* %__edi, align 8, !dbg !1601
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1603, metadata !DIExpression()), !dbg !1601
  %1 = load i64, i64* %__esi, align 8, !dbg !1601
  store i64 %1, i64* %__esi, align 8, !dbg !1601
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1604, metadata !DIExpression()), !dbg !1601
  %2 = load i64, i64* %__edx, align 8, !dbg !1601
  store i64 %2, i64* %__edx, align 8, !dbg !1601
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1605, metadata !DIExpression()), !dbg !1601
  %3 = load i64, i64* %__ecx, align 8, !dbg !1601
  store i64 %3, i64* %__ecx, align 8, !dbg !1601
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1606, metadata !DIExpression()), !dbg !1601
  %4 = load i64, i64* %__eax, align 8, !dbg !1601
  store i64 %4, i64* %__eax, align 8, !dbg !1601
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1601
  %6 = call i64 @llvm.read_register.i64(metadata !814), !dbg !1607
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !1607, !srcloc !1610
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1607
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1607
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1607
  call void @llvm.write_register.i64(metadata !814, i64 %asmresult1), !dbg !1607
  %8 = load i64, i64* %__eax, align 8, !dbg !1607
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1611, metadata !DIExpression()), !dbg !1613
  store i64 -1, i64* %__mask, align 8, !dbg !1613
  %9 = load i64, i64* %__mask, align 8, !dbg !1613
  store i64 %9, i64* %tmp, align 8, !dbg !1613
  %10 = load i64, i64* %tmp, align 8, !dbg !1613
  %and = and i64 %8, %10, !dbg !1607
  store i64 %and, i64* %__ret, align 8, !dbg !1607
  %11 = load i64, i64* %__ret, align 8, !dbg !1601
  store i64 %11, i64* %tmp2, align 8, !dbg !1614
  %12 = load i64, i64* %tmp2, align 8, !dbg !1601
  ret i64 %12, !dbg !1615
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !1616 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1618, metadata !DIExpression()), !dbg !1623
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1625, metadata !DIExpression()), !dbg !1626
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1627, metadata !DIExpression()), !dbg !1628
  %0 = load i64, i64* %size.addr, align 8, !dbg !1629
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1631
  br i1 %1, label %if.then, label %if.end447, !dbg !1632

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1633
  %tobool = icmp ne i64 %2, 0, !dbg !1633
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1636

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1637
  br label %return, !dbg !1637

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1638
  %cmp = icmp ult i64 %3, 4096, !dbg !1640
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1641

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1642
  br label %return, !dbg !1642

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub = sub i64 %4, 1, !dbg !1643
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1643
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1643

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub4 = sub i64 %6, 1, !dbg !1643
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1643
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1643

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub6 = sub i64 %8, 1, !dbg !1643
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1643
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1643

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1643

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub9 = sub i64 %9, 1, !dbg !1643
  %and = and i64 %sub9, -9223372036854775808, !dbg !1643
  %tobool10 = icmp ne i64 %and, 0, !dbg !1643
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1643

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1643

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub13 = sub i64 %10, 1, !dbg !1643
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1643
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1643
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1643

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1643

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub18 = sub i64 %11, 1, !dbg !1643
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1643
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1643
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1643

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1643

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub23 = sub i64 %12, 1, !dbg !1643
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1643
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1643
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1643

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1643

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub28 = sub i64 %13, 1, !dbg !1643
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1643
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1643
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1643

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1643

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub33 = sub i64 %14, 1, !dbg !1643
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1643
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1643
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1643

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1643

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub38 = sub i64 %15, 1, !dbg !1643
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1643
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1643
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1643

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1643

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub43 = sub i64 %16, 1, !dbg !1643
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1643
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1643
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1643

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1643

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub48 = sub i64 %17, 1, !dbg !1643
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1643
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1643
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1643

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1643

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub53 = sub i64 %18, 1, !dbg !1643
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1643
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1643
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1643

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1643

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub58 = sub i64 %19, 1, !dbg !1643
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1643
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1643
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1643

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1643

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub63 = sub i64 %20, 1, !dbg !1643
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1643
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1643
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1643

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1643

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub68 = sub i64 %21, 1, !dbg !1643
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1643
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1643
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1643

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1643

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub73 = sub i64 %22, 1, !dbg !1643
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1643
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1643
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1643

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1643

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub78 = sub i64 %23, 1, !dbg !1643
  %and79 = and i64 %sub78, 562949953421312, !dbg !1643
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1643
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1643

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1643

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub83 = sub i64 %24, 1, !dbg !1643
  %and84 = and i64 %sub83, 281474976710656, !dbg !1643
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1643
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1643

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1643

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub88 = sub i64 %25, 1, !dbg !1643
  %and89 = and i64 %sub88, 140737488355328, !dbg !1643
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1643
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1643

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1643

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub93 = sub i64 %26, 1, !dbg !1643
  %and94 = and i64 %sub93, 70368744177664, !dbg !1643
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1643
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1643

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1643

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub98 = sub i64 %27, 1, !dbg !1643
  %and99 = and i64 %sub98, 35184372088832, !dbg !1643
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1643
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1643

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1643

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub103 = sub i64 %28, 1, !dbg !1643
  %and104 = and i64 %sub103, 17592186044416, !dbg !1643
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1643
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1643

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1643

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub108 = sub i64 %29, 1, !dbg !1643
  %and109 = and i64 %sub108, 8796093022208, !dbg !1643
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1643
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1643

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1643

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub113 = sub i64 %30, 1, !dbg !1643
  %and114 = and i64 %sub113, 4398046511104, !dbg !1643
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1643
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1643

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1643

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub118 = sub i64 %31, 1, !dbg !1643
  %and119 = and i64 %sub118, 2199023255552, !dbg !1643
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1643
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1643

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1643

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub123 = sub i64 %32, 1, !dbg !1643
  %and124 = and i64 %sub123, 1099511627776, !dbg !1643
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1643
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1643

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1643

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub128 = sub i64 %33, 1, !dbg !1643
  %and129 = and i64 %sub128, 549755813888, !dbg !1643
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1643
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1643

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1643

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub133 = sub i64 %34, 1, !dbg !1643
  %and134 = and i64 %sub133, 274877906944, !dbg !1643
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1643
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1643

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1643

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub138 = sub i64 %35, 1, !dbg !1643
  %and139 = and i64 %sub138, 137438953472, !dbg !1643
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1643
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1643

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1643

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub143 = sub i64 %36, 1, !dbg !1643
  %and144 = and i64 %sub143, 68719476736, !dbg !1643
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1643
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1643

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1643

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub148 = sub i64 %37, 1, !dbg !1643
  %and149 = and i64 %sub148, 34359738368, !dbg !1643
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1643
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1643

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1643

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub153 = sub i64 %38, 1, !dbg !1643
  %and154 = and i64 %sub153, 17179869184, !dbg !1643
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1643
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1643

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1643

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub158 = sub i64 %39, 1, !dbg !1643
  %and159 = and i64 %sub158, 8589934592, !dbg !1643
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1643
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1643

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1643

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub163 = sub i64 %40, 1, !dbg !1643
  %and164 = and i64 %sub163, 4294967296, !dbg !1643
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1643
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1643

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1643

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub168 = sub i64 %41, 1, !dbg !1643
  %and169 = and i64 %sub168, 2147483648, !dbg !1643
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1643
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1643

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1643

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub173 = sub i64 %42, 1, !dbg !1643
  %and174 = and i64 %sub173, 1073741824, !dbg !1643
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1643
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1643

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1643

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub178 = sub i64 %43, 1, !dbg !1643
  %and179 = and i64 %sub178, 536870912, !dbg !1643
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1643
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1643

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1643

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub183 = sub i64 %44, 1, !dbg !1643
  %and184 = and i64 %sub183, 268435456, !dbg !1643
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1643
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1643

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1643

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub188 = sub i64 %45, 1, !dbg !1643
  %and189 = and i64 %sub188, 134217728, !dbg !1643
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1643
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1643

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1643

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub193 = sub i64 %46, 1, !dbg !1643
  %and194 = and i64 %sub193, 67108864, !dbg !1643
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1643
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1643

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1643

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub198 = sub i64 %47, 1, !dbg !1643
  %and199 = and i64 %sub198, 33554432, !dbg !1643
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1643
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1643

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1643

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub203 = sub i64 %48, 1, !dbg !1643
  %and204 = and i64 %sub203, 16777216, !dbg !1643
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1643
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1643

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1643

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub208 = sub i64 %49, 1, !dbg !1643
  %and209 = and i64 %sub208, 8388608, !dbg !1643
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1643
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1643

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1643

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub213 = sub i64 %50, 1, !dbg !1643
  %and214 = and i64 %sub213, 4194304, !dbg !1643
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1643
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1643

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1643

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub218 = sub i64 %51, 1, !dbg !1643
  %and219 = and i64 %sub218, 2097152, !dbg !1643
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1643
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1643

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1643

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub223 = sub i64 %52, 1, !dbg !1643
  %and224 = and i64 %sub223, 1048576, !dbg !1643
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1643
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1643

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1643

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub228 = sub i64 %53, 1, !dbg !1643
  %and229 = and i64 %sub228, 524288, !dbg !1643
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1643
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1643

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1643

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub233 = sub i64 %54, 1, !dbg !1643
  %and234 = and i64 %sub233, 262144, !dbg !1643
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1643
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1643

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1643

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub238 = sub i64 %55, 1, !dbg !1643
  %and239 = and i64 %sub238, 131072, !dbg !1643
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1643
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1643

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1643

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub243 = sub i64 %56, 1, !dbg !1643
  %and244 = and i64 %sub243, 65536, !dbg !1643
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1643
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1643

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1643

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub248 = sub i64 %57, 1, !dbg !1643
  %and249 = and i64 %sub248, 32768, !dbg !1643
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1643
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1643

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1643

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub253 = sub i64 %58, 1, !dbg !1643
  %and254 = and i64 %sub253, 16384, !dbg !1643
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1643
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1643

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1643

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub258 = sub i64 %59, 1, !dbg !1643
  %and259 = and i64 %sub258, 8192, !dbg !1643
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1643
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1643

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1643

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub263 = sub i64 %60, 1, !dbg !1643
  %and264 = and i64 %sub263, 4096, !dbg !1643
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1643
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1643

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1643

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub268 = sub i64 %61, 1, !dbg !1643
  %and269 = and i64 %sub268, 2048, !dbg !1643
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1643
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1643

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1643

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub273 = sub i64 %62, 1, !dbg !1643
  %and274 = and i64 %sub273, 1024, !dbg !1643
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1643
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1643

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1643

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub278 = sub i64 %63, 1, !dbg !1643
  %and279 = and i64 %sub278, 512, !dbg !1643
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1643
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1643

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1643

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub283 = sub i64 %64, 1, !dbg !1643
  %and284 = and i64 %sub283, 256, !dbg !1643
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1643
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1643

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1643

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub288 = sub i64 %65, 1, !dbg !1643
  %and289 = and i64 %sub288, 128, !dbg !1643
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1643
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1643

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1643

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub293 = sub i64 %66, 1, !dbg !1643
  %and294 = and i64 %sub293, 64, !dbg !1643
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1643
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1643

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1643

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub298 = sub i64 %67, 1, !dbg !1643
  %and299 = and i64 %sub298, 32, !dbg !1643
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1643
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1643

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1643

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub303 = sub i64 %68, 1, !dbg !1643
  %and304 = and i64 %sub303, 16, !dbg !1643
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1643
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1643

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1643

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub308 = sub i64 %69, 1, !dbg !1643
  %and309 = and i64 %sub308, 8, !dbg !1643
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1643
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1643

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1643

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub313 = sub i64 %70, 1, !dbg !1643
  %and314 = and i64 %sub313, 4, !dbg !1643
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1643
  %71 = zext i1 %tobool315 to i64, !dbg !1643
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1643
  br label %cond.end, !dbg !1643

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1643
  br label %cond.end317, !dbg !1643

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1643
  br label %cond.end319, !dbg !1643

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1643
  br label %cond.end321, !dbg !1643

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1643
  br label %cond.end323, !dbg !1643

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1643
  br label %cond.end325, !dbg !1643

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1643
  br label %cond.end327, !dbg !1643

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1643
  br label %cond.end329, !dbg !1643

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1643
  br label %cond.end331, !dbg !1643

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1643
  br label %cond.end333, !dbg !1643

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1643
  br label %cond.end335, !dbg !1643

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1643
  br label %cond.end337, !dbg !1643

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1643
  br label %cond.end339, !dbg !1643

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1643
  br label %cond.end341, !dbg !1643

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1643
  br label %cond.end343, !dbg !1643

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1643
  br label %cond.end345, !dbg !1643

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1643
  br label %cond.end347, !dbg !1643

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1643
  br label %cond.end349, !dbg !1643

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1643
  br label %cond.end351, !dbg !1643

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1643
  br label %cond.end353, !dbg !1643

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1643
  br label %cond.end355, !dbg !1643

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1643
  br label %cond.end357, !dbg !1643

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1643
  br label %cond.end359, !dbg !1643

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1643
  br label %cond.end361, !dbg !1643

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1643
  br label %cond.end363, !dbg !1643

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1643
  br label %cond.end365, !dbg !1643

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1643
  br label %cond.end367, !dbg !1643

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1643
  br label %cond.end369, !dbg !1643

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1643
  br label %cond.end371, !dbg !1643

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1643
  br label %cond.end373, !dbg !1643

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1643
  br label %cond.end375, !dbg !1643

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1643
  br label %cond.end377, !dbg !1643

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1643
  br label %cond.end379, !dbg !1643

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1643
  br label %cond.end381, !dbg !1643

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1643
  br label %cond.end383, !dbg !1643

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1643
  br label %cond.end385, !dbg !1643

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1643
  br label %cond.end387, !dbg !1643

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1643
  br label %cond.end389, !dbg !1643

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1643
  br label %cond.end391, !dbg !1643

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1643
  br label %cond.end393, !dbg !1643

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1643
  br label %cond.end395, !dbg !1643

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1643
  br label %cond.end397, !dbg !1643

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1643
  br label %cond.end399, !dbg !1643

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1643
  br label %cond.end401, !dbg !1643

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1643
  br label %cond.end403, !dbg !1643

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1643
  br label %cond.end405, !dbg !1643

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1643
  br label %cond.end407, !dbg !1643

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1643
  br label %cond.end409, !dbg !1643

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1643
  br label %cond.end411, !dbg !1643

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1643
  br label %cond.end413, !dbg !1643

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1643
  br label %cond.end415, !dbg !1643

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1643
  br label %cond.end417, !dbg !1643

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1643
  br label %cond.end419, !dbg !1643

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1643
  br label %cond.end421, !dbg !1643

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1643
  br label %cond.end423, !dbg !1643

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1643
  br label %cond.end425, !dbg !1643

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1643
  br label %cond.end427, !dbg !1643

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1643
  br label %cond.end429, !dbg !1643

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1643
  br label %cond.end431, !dbg !1643

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1643
  br label %cond.end433, !dbg !1643

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1643
  br label %cond.end435, !dbg !1643

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1643
  br label %cond.end437, !dbg !1643

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1643
  br label %cond.end440, !dbg !1643

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1643

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1643
  br label %cond.end444, !dbg !1643

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1643
  %sub443 = sub i64 %72, 1, !dbg !1643
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !1643
  br label %cond.end444, !dbg !1643

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1643
  %sub446 = sub i32 %cond445, 12, !dbg !1644
  %add = add i32 %sub446, 1, !dbg !1645
  store i32 %add, i32* %retval, align 4, !dbg !1646
  br label %return, !dbg !1646

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1647
  %dec = add i64 %73, -1, !dbg !1647
  store i64 %dec, i64* %size.addr, align 8, !dbg !1647
  %74 = load i64, i64* %size.addr, align 8, !dbg !1648
  %shr = lshr i64 %74, 12, !dbg !1648
  store i64 %shr, i64* %size.addr, align 8, !dbg !1648
  %75 = load i64, i64* %size.addr, align 8, !dbg !1649
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1626
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1650
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1651
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !1650, !srcloc !1652
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1650
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1653
  %add.i = add i32 %79, 1, !dbg !1654
  store i32 %add.i, i32* %retval, align 4, !dbg !1655
  br label %return, !dbg !1655

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1656
  ret i32 %80, !dbg !1656
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !1657 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1618, metadata !DIExpression()), !dbg !1661
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1625, metadata !DIExpression()), !dbg !1663
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1664, metadata !DIExpression()), !dbg !1665
  %0 = load i64, i64* %n.addr, align 8, !dbg !1666
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1663
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1667
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1668
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !1667, !srcloc !1652
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1667
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1669
  %add.i = add i32 %4, 1, !dbg !1670
  %sub = sub i32 %add.i, 1, !dbg !1671
  ret i32 %sub, !dbg !1672
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1673 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1677, metadata !DIExpression()), !dbg !1678
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1679, metadata !DIExpression()), !dbg !1680
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1681, metadata !DIExpression()), !dbg !1682
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1683, metadata !DIExpression()), !dbg !1684
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1685
  ret i8* %0, !dbg !1686
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmem_cache_zalloc(%struct.kmem_cache* %k, i32 %flags) #0 !dbg !1687 {
entry:
  %k.addr = alloca %struct.kmem_cache*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %k, %struct.kmem_cache** %k.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %k.addr, metadata !1690, metadata !DIExpression()), !dbg !1691
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1692, metadata !DIExpression()), !dbg !1693
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** %k.addr, align 8, !dbg !1694
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1695
  %or = or i32 %1, 256, !dbg !1696
  %call = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %0, i32 %or) #8, !dbg !1697
  %ptrint = ptrtoint i8* %call to i64, !dbg !1697
  %maskedptr = and i64 %ptrint, 7, !dbg !1697
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !1697
  call void @llvm.assume(i1 %maskcond), !dbg !1697
  ret i8* %call, !dbg !1698
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_walk_package_tree(%union.acpi_operand_object*, i8*, i32 (i8, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ut_get_element_length(i8 zeroext %object_type, %union.acpi_operand_object* %source_object, %union.acpi_generic_state* %state, i8* %context) #0 !dbg !1699 {
entry:
  %retval = alloca i32, align 4
  %object_type.addr = alloca i8, align 1
  %source_object.addr = alloca %union.acpi_operand_object*, align 8
  %state.addr = alloca %union.acpi_generic_state*, align 8
  %context.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %info = alloca %struct.acpi_pkg_info*, align 8
  %object_space = alloca i64, align 8
  store i8 %object_type, i8* %object_type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %object_type.addr, metadata !1702, metadata !DIExpression()), !dbg !1703
  store %union.acpi_operand_object* %source_object, %union.acpi_operand_object** %source_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %source_object.addr, metadata !1704, metadata !DIExpression()), !dbg !1705
  store %union.acpi_generic_state* %state, %union.acpi_generic_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %state.addr, metadata !1706, metadata !DIExpression()), !dbg !1707
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1708, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1710, metadata !DIExpression()), !dbg !1711
  store i32 0, i32* %status, align 4, !dbg !1711
  call void @llvm.dbg.declare(metadata %struct.acpi_pkg_info** %info, metadata !1712, metadata !DIExpression()), !dbg !1713
  %0 = load i8*, i8** %context.addr, align 8, !dbg !1714
  %1 = bitcast i8* %0 to %struct.acpi_pkg_info*, !dbg !1715
  store %struct.acpi_pkg_info* %1, %struct.acpi_pkg_info** %info, align 8, !dbg !1713
  call void @llvm.dbg.declare(metadata i64* %object_space, metadata !1716, metadata !DIExpression()), !dbg !1717
  %2 = load i8, i8* %object_type.addr, align 1, !dbg !1718
  %conv = zext i8 %2 to i32, !dbg !1718
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !1719

sw.bb:                                            ; preds = %entry
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_object.addr, align 8, !dbg !1720
  %call = call i32 @acpi_ut_get_simple_object_size(%union.acpi_operand_object* %3, i64* %object_space) #8, !dbg !1722
  store i32 %call, i32* %status, align 4, !dbg !1723
  %4 = load i32, i32* %status, align 4, !dbg !1724
  %tobool = icmp ne i32 %4, 0, !dbg !1724
  br i1 %tobool, label %if.then, label %if.end, !dbg !1726

if.then:                                          ; preds = %sw.bb
  %5 = load i32, i32* %status, align 4, !dbg !1727
  store i32 %5, i32* %retval, align 4, !dbg !1729
  br label %return, !dbg !1729

if.end:                                           ; preds = %sw.bb
  %6 = load i64, i64* %object_space, align 8, !dbg !1730
  %7 = load %struct.acpi_pkg_info*, %struct.acpi_pkg_info** %info, align 8, !dbg !1731
  %length = getelementptr inbounds %struct.acpi_pkg_info, %struct.acpi_pkg_info* %7, i32 0, i32 1, !dbg !1732
  %8 = load i64, i64* %length, align 8, !dbg !1733
  %add = add i64 %8, %6, !dbg !1733
  store i64 %add, i64* %length, align 8, !dbg !1733
  br label %sw.epilog, !dbg !1734

sw.bb1:                                           ; preds = %entry
  %9 = load %struct.acpi_pkg_info*, %struct.acpi_pkg_info** %info, align 8, !dbg !1735
  %num_packages = getelementptr inbounds %struct.acpi_pkg_info, %struct.acpi_pkg_info* %9, i32 0, i32 3, !dbg !1736
  %10 = load i32, i32* %num_packages, align 4, !dbg !1737
  %inc = add i32 %10, 1, !dbg !1737
  store i32 %inc, i32* %num_packages, align 4, !dbg !1737
  %11 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state.addr, align 8, !dbg !1738
  %pkg = bitcast %union.acpi_generic_state* %11 to %struct.acpi_pkg_state*, !dbg !1739
  %this_target_obj = getelementptr inbounds %struct.acpi_pkg_state, %struct.acpi_pkg_state* %pkg, i32 0, i32 9, !dbg !1740
  store i8* null, i8** %this_target_obj, align 8, !dbg !1741
  br label %sw.epilog, !dbg !1742

sw.default:                                       ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !1743
  br label %return, !dbg !1743

sw.epilog:                                        ; preds = %sw.bb1, %if.end
  %12 = load i32, i32* %status, align 4, !dbg !1744
  store i32 %12, i32* %retval, align 4, !dbg !1745
  br label %return, !dbg !1745

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !1746
  ret i32 %13, !dbg !1746
}

; Function Attrs: noredzone
declare dso_local i64 @acpi_ns_get_pathname_length(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_reference_name(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #2

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
!llvm.named.register.rsp = !{!814}
!llvm.module.flags = !{!815, !816, !817, !818}
!llvm.ident = !{!819}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !812, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !811, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utobject.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !19, !24, !26, !34, !800, !802, !157, !803, !90}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !15, line: 17, baseType: !16)
!15 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !17, line: 21, baseType: !18)
!17 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !20, line: 127, baseType: !21)
!20 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !15, line: 23, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !17, line: 31, baseType: !23)
!23 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !15, line: 21, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !17, line: 27, baseType: !7)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !28, line: 432, size: 1600, elements: !29)
!28 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!29 = !{!30, !36, !798, !799}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !27, file: !28, line: 433, baseType: !31, size: 128)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !28, line: 427, size: 128, elements: !32)
!32 = !{!33, !35}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !31, file: !28, line: 428, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !31, file: !28, line: 429, baseType: !14, size: 8, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !27, file: !28, line: 434, baseType: !37, size: 576)
!37 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !28, line: 367, size: 576, elements: !38)
!38 = !{!39, !51, !64, !76, !112, !126, !135, !449, !466, !481, !494, !572, !584, !598, !608, !626, !648, !667, !686, !705, !718, !744, !761, !774, !788, !797}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !37, file: !28, line: 368, baseType: !40, size: 128)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !28, line: 73, size: 128, elements: !41)
!41 = !{!42, !44, !45, !46, !50}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !40, file: !28, line: 74, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !40, file: !28, line: 74, baseType: !14, size: 8, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !40, file: !28, line: 74, baseType: !14, size: 8, offset: 72)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !40, file: !28, line: 74, baseType: !47, size: 16, offset: 80)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !15, line: 19, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !17, line: 24, baseType: !49)
!49 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !40, file: !28, line: 74, baseType: !14, size: 8, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !37, file: !28, line: 369, baseType: !52, size: 192)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !28, line: 76, size: 192, elements: !53)
!53 = !{!54, !55, !56, !57, !58, !59, !63}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !52, file: !28, line: 77, baseType: !43, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !52, file: !28, line: 77, baseType: !14, size: 8, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !28, line: 77, baseType: !14, size: 8, offset: 72)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !52, file: !28, line: 77, baseType: !47, size: 16, offset: 80)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !52, file: !28, line: 77, baseType: !14, size: 8, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !52, file: !28, line: 77, baseType: !60, size: 24, offset: 104)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 24, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 3)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !52, file: !28, line: 78, baseType: !21, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !37, file: !28, line: 370, baseType: !65, size: 256)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !28, line: 93, size: 256, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72, !75}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !65, file: !28, line: 94, baseType: !43, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !65, file: !28, line: 94, baseType: !14, size: 8, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !65, file: !28, line: 94, baseType: !14, size: 8, offset: 72)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !65, file: !28, line: 94, baseType: !47, size: 16, offset: 80)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !28, line: 94, baseType: !14, size: 8, offset: 96)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !65, file: !28, line: 94, baseType: !73, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !65, file: !28, line: 94, baseType: !24, size: 32, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !37, file: !28, line: 371, baseType: !77, size: 384)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !28, line: 97, size: 384, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84, !86, !87, !88, !89}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !77, file: !28, line: 98, baseType: !43, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !77, file: !28, line: 98, baseType: !14, size: 8, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !77, file: !28, line: 98, baseType: !14, size: 8, offset: 72)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !77, file: !28, line: 98, baseType: !47, size: 16, offset: 80)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !28, line: 98, baseType: !14, size: 8, offset: 96)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !77, file: !28, line: 98, baseType: !85, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !77, file: !28, line: 98, baseType: !24, size: 32, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !77, file: !28, line: 99, baseType: !24, size: 32, offset: 224)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !77, file: !28, line: 100, baseType: !85, size: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !77, file: !28, line: 101, baseType: !90, size: 64, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !92, line: 133, size: 384, elements: !93)
!92 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !95, !96, !97, !98, !107, !108, !109, !110}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !91, file: !92, line: 134, baseType: !43, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !91, file: !92, line: 135, baseType: !14, size: 8, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !91, file: !92, line: 136, baseType: !14, size: 8, offset: 72)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !91, file: !92, line: 137, baseType: !47, size: 16, offset: 80)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !91, file: !92, line: 138, baseType: !99, size: 32, offset: 96)
!99 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !100, line: 327, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!101 = !{!102, !103}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !99, file: !100, line: 328, baseType: !24, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !99, file: !100, line: 329, baseType: !104, size: 32)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 32, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 4)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !91, file: !92, line: 139, baseType: !90, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !91, file: !92, line: 140, baseType: !90, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !91, file: !92, line: 141, baseType: !90, size: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !91, file: !92, line: 142, baseType: !111, size: 16, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !20, line: 445, baseType: !47)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !37, file: !28, line: 372, baseType: !113, size: 384)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !28, line: 104, size: 384, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !123, !124, !125}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !113, file: !28, line: 105, baseType: !43, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !113, file: !28, line: 105, baseType: !14, size: 8, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !113, file: !28, line: 105, baseType: !14, size: 8, offset: 72)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !113, file: !28, line: 105, baseType: !47, size: 16, offset: 80)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !28, line: 105, baseType: !14, size: 8, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !113, file: !28, line: 105, baseType: !90, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !113, file: !28, line: 106, baseType: !122, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !113, file: !28, line: 107, baseType: !85, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !113, file: !28, line: 108, baseType: !24, size: 32, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !113, file: !28, line: 109, baseType: !24, size: 32, offset: 352)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !37, file: !28, line: 373, baseType: !127, size: 192)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !28, line: 118, size: 192, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !127, file: !28, line: 119, baseType: !43, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !127, file: !28, line: 119, baseType: !14, size: 8, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !127, file: !28, line: 119, baseType: !14, size: 8, offset: 72)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !127, file: !28, line: 119, baseType: !47, size: 16, offset: 80)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !127, file: !28, line: 119, baseType: !14, size: 8, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !127, file: !28, line: 119, baseType: !34, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !37, file: !28, line: 374, baseType: !136, size: 448)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !28, line: 143, size: 448, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !446, !447, !448}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !136, file: !28, line: 144, baseType: !43, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !136, file: !28, line: 144, baseType: !14, size: 8, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !136, file: !28, line: 144, baseType: !14, size: 8, offset: 72)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !136, file: !28, line: 144, baseType: !47, size: 16, offset: 80)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !136, file: !28, line: 144, baseType: !14, size: 8, offset: 96)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !136, file: !28, line: 144, baseType: !14, size: 8, offset: 104)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !136, file: !28, line: 145, baseType: !14, size: 8, offset: 112)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !136, file: !28, line: 146, baseType: !14, size: 8, offset: 120)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !136, file: !28, line: 147, baseType: !43, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !136, file: !28, line: 148, baseType: !43, size: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !136, file: !28, line: 149, baseType: !85, size: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !136, file: !28, line: 153, baseType: !150, size: 64, offset: 320)
!150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !28, line: 150, size: 64, elements: !151)
!151 = !{!152, !445}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !150, file: !28, line: 151, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !92, line: 248, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!157, !158}
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !20, line: 421, baseType: !24)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !160, line: 37, size: 9024, elements: !161)
!160 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !391, !392, !393, !394, !395, !399, !401, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !428, !429, !430, !431, !432, !433, !434, !435, !437, !443}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !159, file: !160, line: 38, baseType: !158, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !159, file: !160, line: 39, baseType: !14, size: 8, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !159, file: !160, line: 40, baseType: !14, size: 8, offset: 72)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !159, file: !160, line: 41, baseType: !47, size: 16, offset: 80)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !159, file: !160, line: 42, baseType: !14, size: 8, offset: 96)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !159, file: !160, line: 43, baseType: !14, size: 8, offset: 104)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !159, file: !160, line: 44, baseType: !14, size: 8, offset: 112)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !159, file: !160, line: 45, baseType: !111, size: 16, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !159, file: !160, line: 46, baseType: !14, size: 8, offset: 144)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !159, file: !160, line: 47, baseType: !14, size: 8, offset: 152)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !159, file: !160, line: 48, baseType: !14, size: 8, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !159, file: !160, line: 49, baseType: !14, size: 8, offset: 168)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !159, file: !160, line: 50, baseType: !14, size: 8, offset: 176)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !159, file: !160, line: 51, baseType: !14, size: 8, offset: 184)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !159, file: !160, line: 52, baseType: !14, size: 8, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !159, file: !160, line: 53, baseType: !14, size: 8, offset: 200)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !159, file: !160, line: 54, baseType: !85, size: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !159, file: !160, line: 55, baseType: !24, size: 32, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !159, file: !160, line: 56, baseType: !24, size: 32, offset: 352)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !159, file: !160, line: 57, baseType: !24, size: 32, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !159, file: !160, line: 58, baseType: !24, size: 32, offset: 416)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !159, file: !160, line: 60, baseType: !184, size: 640, offset: 448)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !92, line: 893, size: 640, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191, !272, !273, !389, !390}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !184, file: !92, line: 894, baseType: !85, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !184, file: !92, line: 895, baseType: !85, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !184, file: !92, line: 896, baseType: !85, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !184, file: !92, line: 897, baseType: !85, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !184, file: !92, line: 898, baseType: !85, size: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !184, file: !92, line: 899, baseType: !192, size: 64, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !92, line: 875, size: 1600, elements: !194)
!194 = !{!195, !215, !231}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !193, file: !92, line: 876, baseType: !196, size: 448)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !92, line: 828, size: 448, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204, !205, !214}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !196, file: !92, line: 829, baseType: !192, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !196, file: !92, line: 829, baseType: !14, size: 8, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !196, file: !92, line: 829, baseType: !14, size: 8, offset: 72)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !196, file: !92, line: 829, baseType: !47, size: 16, offset: 80)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !196, file: !92, line: 829, baseType: !85, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !196, file: !92, line: 829, baseType: !192, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !196, file: !92, line: 829, baseType: !90, size: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !196, file: !92, line: 829, baseType: !206, size: 64, offset: 320)
!206 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !92, line: 716, size: 64, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !206, file: !92, line: 717, baseType: !21, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !206, file: !92, line: 718, baseType: !24, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !206, file: !92, line: 719, baseType: !73, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !206, file: !92, line: 720, baseType: !85, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !206, file: !92, line: 721, baseType: !73, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !206, file: !92, line: 722, baseType: !192, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !196, file: !92, line: 829, baseType: !14, size: 8, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !193, file: !92, line: 877, baseType: !216, size: 640)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !92, line: 835, size: 640, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !216, file: !92, line: 836, baseType: !192, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !216, file: !92, line: 836, baseType: !14, size: 8, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !216, file: !92, line: 836, baseType: !14, size: 8, offset: 72)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !216, file: !92, line: 836, baseType: !47, size: 16, offset: 80)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !216, file: !92, line: 836, baseType: !85, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !216, file: !92, line: 836, baseType: !192, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !216, file: !92, line: 836, baseType: !90, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !216, file: !92, line: 836, baseType: !206, size: 64, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !216, file: !92, line: 836, baseType: !14, size: 8, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !216, file: !92, line: 836, baseType: !73, size: 64, offset: 448)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !216, file: !92, line: 837, baseType: !85, size: 64, offset: 512)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !216, file: !92, line: 838, baseType: !24, size: 32, offset: 576)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !92, line: 839, baseType: !24, size: 32, offset: 608)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !193, file: !92, line: 878, baseType: !232, size: 1600)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !92, line: 846, size: 1600, elements: !233)
!233 = !{!234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !232, file: !92, line: 847, baseType: !192, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !232, file: !92, line: 847, baseType: !14, size: 8, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !232, file: !92, line: 847, baseType: !14, size: 8, offset: 72)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !232, file: !92, line: 847, baseType: !47, size: 16, offset: 80)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !232, file: !92, line: 847, baseType: !85, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !232, file: !92, line: 847, baseType: !192, size: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !232, file: !92, line: 847, baseType: !90, size: 64, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !232, file: !92, line: 847, baseType: !206, size: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !232, file: !92, line: 847, baseType: !14, size: 8, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !232, file: !92, line: 847, baseType: !192, size: 64, offset: 448)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !232, file: !92, line: 848, baseType: !192, size: 64, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !232, file: !92, line: 849, baseType: !73, size: 64, offset: 576)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !232, file: !92, line: 850, baseType: !14, size: 8, offset: 640)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !232, file: !92, line: 851, baseType: !73, size: 64, offset: 704)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !232, file: !92, line: 852, baseType: !73, size: 64, offset: 768)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !232, file: !92, line: 853, baseType: !73, size: 64, offset: 832)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !232, file: !92, line: 854, baseType: !104, size: 32, offset: 896)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !232, file: !92, line: 855, baseType: !24, size: 32, offset: 928)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !232, file: !92, line: 856, baseType: !24, size: 32, offset: 960)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !232, file: !92, line: 857, baseType: !24, size: 32, offset: 992)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !232, file: !92, line: 858, baseType: !24, size: 32, offset: 1024)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !232, file: !92, line: 859, baseType: !24, size: 32, offset: 1056)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !232, file: !92, line: 860, baseType: !24, size: 32, offset: 1088)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !232, file: !92, line: 861, baseType: !24, size: 32, offset: 1120)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !232, file: !92, line: 862, baseType: !24, size: 32, offset: 1152)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !232, file: !92, line: 863, baseType: !24, size: 32, offset: 1184)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !232, file: !92, line: 864, baseType: !24, size: 32, offset: 1216)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !232, file: !92, line: 865, baseType: !24, size: 32, offset: 1248)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !232, file: !92, line: 866, baseType: !24, size: 32, offset: 1280)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !232, file: !92, line: 867, baseType: !24, size: 32, offset: 1312)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !232, file: !92, line: 868, baseType: !47, size: 16, offset: 1344)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !232, file: !92, line: 869, baseType: !14, size: 8, offset: 1360)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !232, file: !92, line: 870, baseType: !14, size: 8, offset: 1368)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !232, file: !92, line: 871, baseType: !14, size: 8, offset: 1376)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !232, file: !92, line: 872, baseType: !269, size: 160, offset: 1384)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 160, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 20)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !184, file: !92, line: 900, baseType: !90, size: 64, offset: 384)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !184, file: !92, line: 901, baseType: !274, size: 64, offset: 448)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !92, line: 663, size: 640, elements: !276)
!276 = !{!277, !285, !298, !307, !316, !329, !343, !355, !367}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !275, file: !92, line: 664, baseType: !278, size: 128)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !92, line: 567, size: 128, elements: !279)
!279 = !{!280, !281, !282, !283, !284}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !92, line: 568, baseType: !34, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !278, file: !92, line: 568, baseType: !14, size: 8, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !92, line: 568, baseType: !14, size: 8, offset: 72)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !278, file: !92, line: 568, baseType: !47, size: 16, offset: 80)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !278, file: !92, line: 568, baseType: !47, size: 16, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !275, file: !92, line: 665, baseType: !286, size: 384)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !92, line: 593, size: 384, elements: !287)
!287 = !{!288, !289, !290, !291, !292, !293, !294, !295, !296, !297}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !286, file: !92, line: 594, baseType: !34, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !286, file: !92, line: 594, baseType: !14, size: 8, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !286, file: !92, line: 594, baseType: !14, size: 8, offset: 72)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !286, file: !92, line: 594, baseType: !47, size: 16, offset: 80)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !286, file: !92, line: 594, baseType: !47, size: 16, offset: 96)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !286, file: !92, line: 594, baseType: !47, size: 16, offset: 112)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !286, file: !92, line: 595, baseType: !192, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !286, file: !92, line: 596, baseType: !85, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !286, file: !92, line: 597, baseType: !85, size: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !286, file: !92, line: 598, baseType: !21, size: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !275, file: !92, line: 666, baseType: !299, size: 192)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !92, line: 573, size: 192, elements: !300)
!300 = !{!301, !302, !303, !304, !305, !306}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !299, file: !92, line: 574, baseType: !34, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !299, file: !92, line: 574, baseType: !14, size: 8, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !299, file: !92, line: 574, baseType: !14, size: 8, offset: 72)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !299, file: !92, line: 574, baseType: !47, size: 16, offset: 80)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !299, file: !92, line: 574, baseType: !47, size: 16, offset: 96)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !299, file: !92, line: 574, baseType: !43, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !275, file: !92, line: 667, baseType: !308, size: 192)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !92, line: 604, size: 192, elements: !309)
!309 = !{!310, !311, !312, !313, !314, !315}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !308, file: !92, line: 605, baseType: !34, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !308, file: !92, line: 605, baseType: !14, size: 8, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !308, file: !92, line: 605, baseType: !14, size: 8, offset: 72)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !308, file: !92, line: 605, baseType: !47, size: 16, offset: 80)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !308, file: !92, line: 605, baseType: !47, size: 16, offset: 96)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !308, file: !92, line: 605, baseType: !90, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !275, file: !92, line: 668, baseType: !317, size: 448)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !92, line: 608, size: 448, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !324, !325, !326, !327, !328}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !92, line: 609, baseType: !34, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !317, file: !92, line: 609, baseType: !14, size: 8, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !317, file: !92, line: 609, baseType: !14, size: 8, offset: 72)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !317, file: !92, line: 609, baseType: !47, size: 16, offset: 80)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !317, file: !92, line: 609, baseType: !47, size: 16, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !317, file: !92, line: 609, baseType: !24, size: 32, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !317, file: !92, line: 610, baseType: !192, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !317, file: !92, line: 611, baseType: !85, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !317, file: !92, line: 612, baseType: !85, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !317, file: !92, line: 613, baseType: !24, size: 32, offset: 384)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !275, file: !92, line: 669, baseType: !330, size: 512)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !92, line: 580, size: 512, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !92, line: 581, baseType: !34, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !330, file: !92, line: 581, baseType: !14, size: 8, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !330, file: !92, line: 581, baseType: !14, size: 8, offset: 72)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !330, file: !92, line: 581, baseType: !47, size: 16, offset: 80)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !330, file: !92, line: 581, baseType: !47, size: 16, offset: 96)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !330, file: !92, line: 581, baseType: !24, size: 32, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !330, file: !92, line: 582, baseType: !43, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !330, file: !92, line: 583, baseType: !43, size: 64, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !330, file: !92, line: 584, baseType: !158, size: 64, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !330, file: !92, line: 585, baseType: !34, size: 64, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !330, file: !92, line: 586, baseType: !24, size: 32, offset: 448)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !275, file: !92, line: 670, baseType: !344, size: 320)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !92, line: 620, size: 320, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351, !352, !353, !354}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !344, file: !92, line: 621, baseType: !34, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !344, file: !92, line: 621, baseType: !14, size: 8, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !344, file: !92, line: 621, baseType: !14, size: 8, offset: 72)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !344, file: !92, line: 621, baseType: !47, size: 16, offset: 80)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !344, file: !92, line: 621, baseType: !47, size: 16, offset: 96)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !344, file: !92, line: 621, baseType: !14, size: 8, offset: 112)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !344, file: !92, line: 622, baseType: !158, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !344, file: !92, line: 623, baseType: !43, size: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !344, file: !92, line: 624, baseType: !21, size: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !275, file: !92, line: 671, baseType: !356, size: 640)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !92, line: 631, size: 640, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !92, line: 632, baseType: !34, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !356, file: !92, line: 632, baseType: !14, size: 8, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !356, file: !92, line: 632, baseType: !14, size: 8, offset: 72)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !356, file: !92, line: 632, baseType: !47, size: 16, offset: 80)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !356, file: !92, line: 632, baseType: !47, size: 16, offset: 96)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !356, file: !92, line: 633, baseType: !364, size: 512, offset: 128)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 512, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 8)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !275, file: !92, line: 672, baseType: !368, size: 320)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !92, line: 654, size: 320, elements: !369)
!369 = !{!370, !371, !372, !373, !374, !375, !376, !377, !378}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !368, file: !92, line: 655, baseType: !34, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !368, file: !92, line: 655, baseType: !14, size: 8, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !368, file: !92, line: 655, baseType: !14, size: 8, offset: 72)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !368, file: !92, line: 655, baseType: !47, size: 16, offset: 80)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !368, file: !92, line: 655, baseType: !47, size: 16, offset: 96)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !368, file: !92, line: 655, baseType: !14, size: 8, offset: 112)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !368, file: !92, line: 656, baseType: !90, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !368, file: !92, line: 657, baseType: !43, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !368, file: !92, line: 658, baseType: !379, size: 64, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !92, line: 645, size: 128, elements: !381)
!381 = !{!382, !388}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !380, file: !92, line: 646, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !20, line: 1052, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !387, !24, !34}
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !20, line: 424, baseType: !34)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !380, file: !92, line: 647, baseType: !34, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !184, file: !92, line: 902, baseType: !192, size: 64, offset: 512)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !184, file: !92, line: 903, baseType: !24, size: 32, offset: 576)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !159, file: !160, line: 61, baseType: !24, size: 32, offset: 1088)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !159, file: !160, line: 62, baseType: !24, size: 32, offset: 1120)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !159, file: !160, line: 63, baseType: !47, size: 16, offset: 1152)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !159, file: !160, line: 64, baseType: !14, size: 8, offset: 1168)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !159, file: !160, line: 66, baseType: !396, size: 2688, offset: 1216)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 2688, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 7)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !159, file: !160, line: 67, baseType: !400, size: 3072, offset: 3904)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 3072, elements: !365)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !159, file: !160, line: 68, baseType: !402, size: 576, offset: 6976)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 576, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 9)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !159, file: !160, line: 69, baseType: !122, size: 64, offset: 7552)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !159, file: !160, line: 71, baseType: !85, size: 64, offset: 7616)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !159, file: !160, line: 72, baseType: !122, size: 64, offset: 7680)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !159, file: !160, line: 73, baseType: !274, size: 64, offset: 7744)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !159, file: !160, line: 74, baseType: !90, size: 64, offset: 7808)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !159, file: !160, line: 75, baseType: !43, size: 64, offset: 7872)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !159, file: !160, line: 76, baseType: !90, size: 64, offset: 7936)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !159, file: !160, line: 77, baseType: !192, size: 64, offset: 8000)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !159, file: !160, line: 78, baseType: !43, size: 64, offset: 8064)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !159, file: !160, line: 79, baseType: !90, size: 64, offset: 8128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !159, file: !160, line: 80, baseType: !73, size: 64, offset: 8192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !159, file: !160, line: 81, baseType: !192, size: 64, offset: 8256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !159, file: !160, line: 82, baseType: !418, size: 64, offset: 8320)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !92, line: 702, size: 128, elements: !421)
!421 = !{!422, !423, !424, !425, !426, !427}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !420, file: !92, line: 706, baseType: !24, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !420, file: !92, line: 707, baseType: !24, size: 32, offset: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !92, line: 708, baseType: !47, size: 16, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !420, file: !92, line: 709, baseType: !14, size: 8, offset: 80)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !420, file: !92, line: 710, baseType: !14, size: 8, offset: 88)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !420, file: !92, line: 711, baseType: !14, size: 8, offset: 96)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !159, file: !160, line: 83, baseType: !192, size: 64, offset: 8384)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !159, file: !160, line: 84, baseType: !43, size: 64, offset: 8448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !159, file: !160, line: 85, baseType: !274, size: 64, offset: 8512)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !159, file: !160, line: 86, baseType: !43, size: 64, offset: 8576)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !159, file: !160, line: 87, baseType: !274, size: 64, offset: 8640)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !159, file: !160, line: 88, baseType: !192, size: 64, offset: 8704)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !159, file: !160, line: 89, baseType: !192, size: 64, offset: 8768)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !159, file: !160, line: 90, baseType: !436, size: 64, offset: 8832)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !159, file: !160, line: 91, baseType: !438, size: 64, offset: 8896)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !92, line: 637, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!157, !158, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !159, file: !160, line: 92, baseType: !444, size: 64, offset: 8960)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !92, line: 641, baseType: !154)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !150, file: !28, line: 152, baseType: !43, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !136, file: !28, line: 155, baseType: !24, size: 32, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !136, file: !28, line: 156, baseType: !111, size: 16, offset: 416)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !136, file: !28, line: 157, baseType: !14, size: 8, offset: 432)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !37, file: !28, line: 375, baseType: !450, size: 576)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !28, line: 122, size: 576, elements: !451)
!451 = !{!452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !450, file: !28, line: 123, baseType: !43, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !450, file: !28, line: 123, baseType: !14, size: 8, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !450, file: !28, line: 123, baseType: !14, size: 8, offset: 72)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !450, file: !28, line: 123, baseType: !47, size: 16, offset: 80)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !450, file: !28, line: 123, baseType: !14, size: 8, offset: 96)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !450, file: !28, line: 123, baseType: !14, size: 8, offset: 104)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !450, file: !28, line: 124, baseType: !47, size: 16, offset: 112)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !450, file: !28, line: 125, baseType: !34, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !450, file: !28, line: 126, baseType: !21, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !450, file: !28, line: 127, baseType: !436, size: 64, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !450, file: !28, line: 128, baseType: !43, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !450, file: !28, line: 129, baseType: !43, size: 64, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !450, file: !28, line: 130, baseType: !90, size: 64, offset: 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !450, file: !28, line: 131, baseType: !14, size: 8, offset: 512)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !37, file: !28, line: 376, baseType: !467, size: 448)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !28, line: 134, size: 448, elements: !468)
!468 = !{!469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !480}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !467, file: !28, line: 135, baseType: !43, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !467, file: !28, line: 135, baseType: !14, size: 8, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !467, file: !28, line: 135, baseType: !14, size: 8, offset: 72)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !467, file: !28, line: 135, baseType: !47, size: 16, offset: 80)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !467, file: !28, line: 135, baseType: !14, size: 8, offset: 96)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !467, file: !28, line: 135, baseType: !14, size: 8, offset: 104)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !467, file: !28, line: 136, baseType: !90, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !467, file: !28, line: 137, baseType: !43, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !467, file: !28, line: 138, baseType: !43, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !467, file: !28, line: 139, baseType: !479, size: 64, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !20, line: 129, baseType: !21)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !467, file: !28, line: 140, baseType: !24, size: 32, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !37, file: !28, line: 377, baseType: !482, size: 320)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !28, line: 184, size: 320, elements: !483)
!483 = !{!484, !485, !486, !487, !488, !489, !493}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !482, file: !28, line: 185, baseType: !43, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !482, file: !28, line: 185, baseType: !14, size: 8, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !482, file: !28, line: 185, baseType: !14, size: 8, offset: 72)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !482, file: !28, line: 185, baseType: !47, size: 16, offset: 80)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !482, file: !28, line: 185, baseType: !14, size: 8, offset: 96)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !482, file: !28, line: 185, baseType: !490, size: 128, offset: 128)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 128, elements: !491)
!491 = !{!492}
!492 = !DISubrange(count: 2)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !482, file: !28, line: 185, baseType: !43, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !37, file: !28, line: 378, baseType: !495, size: 384)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !28, line: 187, size: 384, elements: !496)
!496 = !{!497, !498, !499, !500, !501, !502, !503, !504}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !495, file: !28, line: 188, baseType: !43, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !495, file: !28, line: 188, baseType: !14, size: 8, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !495, file: !28, line: 188, baseType: !14, size: 8, offset: 72)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !495, file: !28, line: 188, baseType: !47, size: 16, offset: 80)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !495, file: !28, line: 188, baseType: !14, size: 8, offset: 96)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !495, file: !28, line: 189, baseType: !490, size: 128, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !495, file: !28, line: 189, baseType: !43, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !495, file: !28, line: 189, baseType: !505, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !92, line: 480, size: 576, elements: !507)
!507 = !{!508, !509, !510, !511, !519, !534, !566, !567, !568, !569, !570, !571}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !506, file: !92, line: 481, baseType: !90, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !506, file: !92, line: 482, baseType: !505, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !506, file: !92, line: 483, baseType: !505, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !506, file: !92, line: 484, baseType: !512, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !92, line: 497, size: 256, elements: !514)
!514 = !{!515, !516, !517, !518}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !513, file: !92, line: 498, baseType: !512, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !513, file: !92, line: 499, baseType: !512, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !513, file: !92, line: 500, baseType: !505, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !513, file: !92, line: 501, baseType: !24, size: 32, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !506, file: !92, line: 485, baseType: !520, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !92, line: 466, size: 320, elements: !522)
!522 = !{!523, !528, !529, !530, !531, !532, !533}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !521, file: !92, line: 467, baseType: !524, size: 128)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !92, line: 459, size: 128, elements: !525)
!525 = !{!526, !527}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !524, file: !92, line: 460, baseType: !14, size: 8)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !524, file: !92, line: 461, baseType: !21, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !521, file: !92, line: 468, baseType: !524, size: 128, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !521, file: !92, line: 469, baseType: !47, size: 16, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !521, file: !92, line: 470, baseType: !14, size: 8, offset: 272)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !521, file: !92, line: 471, baseType: !14, size: 8, offset: 280)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !521, file: !92, line: 472, baseType: !14, size: 8, offset: 288)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !521, file: !92, line: 473, baseType: !14, size: 8, offset: 296)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !506, file: !92, line: 486, baseType: !535, size: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !92, line: 448, size: 192, elements: !537)
!537 = !{!538, !561, !562, !563, !564, !565}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !536, file: !92, line: 449, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !92, line: 438, size: 64, elements: !540)
!540 = !{!541, !542, !555}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !539, file: !92, line: 439, baseType: !90, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !539, file: !92, line: 440, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !92, line: 419, size: 256, elements: !545)
!545 = !{!546, !551, !552, !553, !554}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !544, file: !92, line: 420, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !20, line: 1049, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!24, !387, !24, !34}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !544, file: !92, line: 421, baseType: !34, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !544, file: !92, line: 422, baseType: !90, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !544, file: !92, line: 423, baseType: !14, size: 8, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !544, file: !92, line: 424, baseType: !14, size: 8, offset: 200)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !539, file: !92, line: 441, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !92, line: 429, size: 128, elements: !558)
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !557, file: !92, line: 430, baseType: !90, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !557, file: !92, line: 431, baseType: !556, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !536, file: !92, line: 450, baseType: !520, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !536, file: !92, line: 451, baseType: !14, size: 8, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !536, file: !92, line: 452, baseType: !14, size: 8, offset: 136)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !536, file: !92, line: 453, baseType: !14, size: 8, offset: 144)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !536, file: !92, line: 454, baseType: !14, size: 8, offset: 152)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !506, file: !92, line: 487, baseType: !21, size: 64, offset: 384)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !506, file: !92, line: 488, baseType: !24, size: 32, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !506, file: !92, line: 489, baseType: !47, size: 16, offset: 480)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !506, file: !92, line: 490, baseType: !47, size: 16, offset: 496)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !506, file: !92, line: 491, baseType: !14, size: 8, offset: 512)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !506, file: !92, line: 492, baseType: !14, size: 8, offset: 520)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !37, file: !28, line: 379, baseType: !573, size: 384)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !28, line: 192, size: 384, elements: !574)
!574 = !{!575, !576, !577, !578, !579, !580, !581, !582, !583}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !573, file: !28, line: 193, baseType: !43, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !573, file: !28, line: 193, baseType: !14, size: 8, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !573, file: !28, line: 193, baseType: !14, size: 8, offset: 72)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !573, file: !28, line: 193, baseType: !47, size: 16, offset: 80)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !573, file: !28, line: 193, baseType: !14, size: 8, offset: 96)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !573, file: !28, line: 193, baseType: !490, size: 128, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !573, file: !28, line: 193, baseType: !43, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !573, file: !28, line: 193, baseType: !24, size: 32, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !573, file: !28, line: 194, baseType: !24, size: 32, offset: 352)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !37, file: !28, line: 380, baseType: !585, size: 384)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !28, line: 197, size: 384, elements: !586)
!586 = !{!587, !588, !589, !590, !591, !592, !593, !594, !595, !596}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !585, file: !28, line: 198, baseType: !43, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !585, file: !28, line: 198, baseType: !14, size: 8, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !585, file: !28, line: 198, baseType: !14, size: 8, offset: 72)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !585, file: !28, line: 198, baseType: !47, size: 16, offset: 80)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !585, file: !28, line: 198, baseType: !14, size: 8, offset: 96)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !585, file: !28, line: 200, baseType: !14, size: 8, offset: 104)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !585, file: !28, line: 201, baseType: !14, size: 8, offset: 112)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !585, file: !28, line: 202, baseType: !490, size: 128, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !585, file: !28, line: 202, baseType: !43, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !585, file: !28, line: 202, baseType: !597, size: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !20, line: 128, baseType: !21)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !37, file: !28, line: 381, baseType: !599, size: 320)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !28, line: 205, size: 320, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !599, file: !28, line: 206, baseType: !43, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !599, file: !28, line: 206, baseType: !14, size: 8, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !599, file: !28, line: 206, baseType: !14, size: 8, offset: 72)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !599, file: !28, line: 206, baseType: !47, size: 16, offset: 80)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !28, line: 206, baseType: !14, size: 8, offset: 96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !599, file: !28, line: 206, baseType: !490, size: 128, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !599, file: !28, line: 206, baseType: !43, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !37, file: !28, line: 382, baseType: !609, size: 384)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !28, line: 233, size: 384, elements: !610)
!610 = !{!611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !609, file: !28, line: 234, baseType: !43, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !609, file: !28, line: 234, baseType: !14, size: 8, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !609, file: !28, line: 234, baseType: !14, size: 8, offset: 72)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !609, file: !28, line: 234, baseType: !47, size: 16, offset: 80)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !609, file: !28, line: 234, baseType: !14, size: 8, offset: 96)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !609, file: !28, line: 234, baseType: !14, size: 8, offset: 104)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !609, file: !28, line: 234, baseType: !14, size: 8, offset: 112)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !609, file: !28, line: 234, baseType: !14, size: 8, offset: 120)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !609, file: !28, line: 234, baseType: !90, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !609, file: !28, line: 234, baseType: !24, size: 32, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !609, file: !28, line: 234, baseType: !24, size: 32, offset: 224)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !609, file: !28, line: 234, baseType: !24, size: 32, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !609, file: !28, line: 234, baseType: !14, size: 8, offset: 288)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !609, file: !28, line: 234, baseType: !14, size: 8, offset: 296)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !609, file: !28, line: 234, baseType: !43, size: 64, offset: 320)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !37, file: !28, line: 383, baseType: !627, size: 576)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !28, line: 237, size: 576, elements: !628)
!628 = !{!629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !627, file: !28, line: 238, baseType: !43, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !627, file: !28, line: 238, baseType: !14, size: 8, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !627, file: !28, line: 238, baseType: !14, size: 8, offset: 72)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !627, file: !28, line: 238, baseType: !47, size: 16, offset: 80)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !627, file: !28, line: 238, baseType: !14, size: 8, offset: 96)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !627, file: !28, line: 238, baseType: !14, size: 8, offset: 104)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !627, file: !28, line: 238, baseType: !14, size: 8, offset: 112)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !627, file: !28, line: 238, baseType: !14, size: 8, offset: 120)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !627, file: !28, line: 238, baseType: !90, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !627, file: !28, line: 238, baseType: !24, size: 32, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !627, file: !28, line: 238, baseType: !24, size: 32, offset: 224)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !627, file: !28, line: 238, baseType: !24, size: 32, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !627, file: !28, line: 238, baseType: !14, size: 8, offset: 288)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !627, file: !28, line: 238, baseType: !14, size: 8, offset: 296)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !627, file: !28, line: 238, baseType: !47, size: 16, offset: 304)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !627, file: !28, line: 239, baseType: !43, size: 64, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !627, file: !28, line: 240, baseType: !85, size: 64, offset: 384)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !627, file: !28, line: 241, baseType: !47, size: 16, offset: 448)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !627, file: !28, line: 242, baseType: !85, size: 64, offset: 512)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !37, file: !28, line: 384, baseType: !649, size: 384)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !28, line: 262, size: 384, elements: !650)
!650 = !{!651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !649, file: !28, line: 263, baseType: !43, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !649, file: !28, line: 263, baseType: !14, size: 8, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !649, file: !28, line: 263, baseType: !14, size: 8, offset: 72)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !649, file: !28, line: 263, baseType: !47, size: 16, offset: 80)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !649, file: !28, line: 263, baseType: !14, size: 8, offset: 96)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !649, file: !28, line: 263, baseType: !14, size: 8, offset: 104)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !649, file: !28, line: 263, baseType: !14, size: 8, offset: 112)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !649, file: !28, line: 263, baseType: !14, size: 8, offset: 120)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !649, file: !28, line: 263, baseType: !90, size: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !649, file: !28, line: 263, baseType: !24, size: 32, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !649, file: !28, line: 263, baseType: !24, size: 32, offset: 224)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !649, file: !28, line: 263, baseType: !24, size: 32, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !649, file: !28, line: 263, baseType: !14, size: 8, offset: 288)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !649, file: !28, line: 263, baseType: !14, size: 8, offset: 296)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !649, file: !28, line: 263, baseType: !14, size: 8, offset: 304)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !649, file: !28, line: 264, baseType: !43, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !37, file: !28, line: 385, baseType: !668, size: 448)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !28, line: 245, size: 448, elements: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !668, file: !28, line: 246, baseType: !43, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !668, file: !28, line: 246, baseType: !14, size: 8, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !668, file: !28, line: 246, baseType: !14, size: 8, offset: 72)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !668, file: !28, line: 246, baseType: !47, size: 16, offset: 80)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !28, line: 246, baseType: !14, size: 8, offset: 96)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !668, file: !28, line: 246, baseType: !14, size: 8, offset: 104)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !668, file: !28, line: 246, baseType: !14, size: 8, offset: 112)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !668, file: !28, line: 246, baseType: !14, size: 8, offset: 120)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !668, file: !28, line: 246, baseType: !90, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !668, file: !28, line: 246, baseType: !24, size: 32, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !668, file: !28, line: 246, baseType: !24, size: 32, offset: 224)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !668, file: !28, line: 246, baseType: !24, size: 32, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !668, file: !28, line: 246, baseType: !14, size: 8, offset: 288)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !668, file: !28, line: 246, baseType: !14, size: 8, offset: 296)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !668, file: !28, line: 246, baseType: !43, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !668, file: !28, line: 247, baseType: !43, size: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !37, file: !28, line: 386, baseType: !687, size: 448)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !28, line: 250, size: 448, elements: !688)
!688 = !{!689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !687, file: !28, line: 251, baseType: !43, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !687, file: !28, line: 251, baseType: !14, size: 8, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !687, file: !28, line: 251, baseType: !14, size: 8, offset: 72)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !687, file: !28, line: 251, baseType: !47, size: 16, offset: 80)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !687, file: !28, line: 251, baseType: !14, size: 8, offset: 96)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !687, file: !28, line: 251, baseType: !14, size: 8, offset: 104)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !687, file: !28, line: 251, baseType: !14, size: 8, offset: 112)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !687, file: !28, line: 251, baseType: !14, size: 8, offset: 120)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !687, file: !28, line: 251, baseType: !90, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !687, file: !28, line: 251, baseType: !24, size: 32, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !687, file: !28, line: 251, baseType: !24, size: 32, offset: 224)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !687, file: !28, line: 251, baseType: !24, size: 32, offset: 256)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !687, file: !28, line: 251, baseType: !14, size: 8, offset: 288)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !687, file: !28, line: 251, baseType: !14, size: 8, offset: 296)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !687, file: !28, line: 256, baseType: !43, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !687, file: !28, line: 257, baseType: !43, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !37, file: !28, line: 387, baseType: !706, size: 512)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !28, line: 273, size: 512, elements: !707)
!707 = !{!708, !709, !710, !711, !712, !713, !714, !715, !716, !717}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !706, file: !28, line: 274, baseType: !43, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !706, file: !28, line: 274, baseType: !14, size: 8, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !706, file: !28, line: 274, baseType: !14, size: 8, offset: 72)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !706, file: !28, line: 274, baseType: !47, size: 16, offset: 80)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !706, file: !28, line: 274, baseType: !14, size: 8, offset: 96)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !706, file: !28, line: 274, baseType: !90, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !706, file: !28, line: 275, baseType: !24, size: 32, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !706, file: !28, line: 276, baseType: !383, size: 64, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !706, file: !28, line: 277, baseType: !34, size: 64, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !706, file: !28, line: 278, baseType: !490, size: 128, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !37, file: !28, line: 388, baseType: !719, size: 512)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !28, line: 281, size: 512, elements: !720)
!720 = !{!721, !722, !723, !724, !725, !726, !727, !728, !734, !735, !736, !742, !743}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !719, file: !28, line: 282, baseType: !43, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !719, file: !28, line: 282, baseType: !14, size: 8, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !719, file: !28, line: 282, baseType: !14, size: 8, offset: 72)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !719, file: !28, line: 282, baseType: !47, size: 16, offset: 80)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !719, file: !28, line: 282, baseType: !14, size: 8, offset: 96)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !719, file: !28, line: 282, baseType: !14, size: 8, offset: 104)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !719, file: !28, line: 283, baseType: !14, size: 8, offset: 112)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !719, file: !28, line: 284, baseType: !729, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !20, line: 1084, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!157, !24, !479, !24, !733, !34, !34}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !719, file: !28, line: 285, baseType: !90, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !719, file: !28, line: 286, baseType: !34, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !719, file: !28, line: 287, baseType: !737, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !20, line: 1102, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!157, !387, !24, !34, !741}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !719, file: !28, line: 288, baseType: !43, size: 64, offset: 384)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !719, file: !28, line: 289, baseType: !43, size: 64, offset: 448)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !37, file: !28, line: 389, baseType: !745, size: 512)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !28, line: 307, size: 512, elements: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !745, file: !28, line: 308, baseType: !43, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !745, file: !28, line: 308, baseType: !14, size: 8, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !745, file: !28, line: 308, baseType: !14, size: 8, offset: 72)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !745, file: !28, line: 308, baseType: !47, size: 16, offset: 80)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !28, line: 308, baseType: !14, size: 8, offset: 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !745, file: !28, line: 308, baseType: !14, size: 8, offset: 104)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !745, file: !28, line: 309, baseType: !14, size: 8, offset: 112)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !745, file: !28, line: 310, baseType: !14, size: 8, offset: 120)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !745, file: !28, line: 311, baseType: !34, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !745, file: !28, line: 312, baseType: !90, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !745, file: !28, line: 313, baseType: !122, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !745, file: !28, line: 314, baseType: !85, size: 64, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !745, file: !28, line: 315, baseType: !85, size: 64, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !745, file: !28, line: 316, baseType: !24, size: 32, offset: 448)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !37, file: !28, line: 390, baseType: !762, size: 448)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !28, line: 340, size: 448, elements: !763)
!763 = !{!764, !765, !766, !767, !768, !769, !770, !771, !772, !773}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !762, file: !28, line: 341, baseType: !43, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !762, file: !28, line: 341, baseType: !14, size: 8, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !762, file: !28, line: 341, baseType: !14, size: 8, offset: 72)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !762, file: !28, line: 341, baseType: !47, size: 16, offset: 80)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !762, file: !28, line: 341, baseType: !14, size: 8, offset: 96)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !762, file: !28, line: 341, baseType: !90, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !762, file: !28, line: 342, baseType: !90, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !762, file: !28, line: 343, baseType: !34, size: 64, offset: 256)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !762, file: !28, line: 344, baseType: !85, size: 64, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !762, file: !28, line: 345, baseType: !24, size: 32, offset: 384)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !37, file: !28, line: 391, baseType: !775, size: 256)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !28, line: 350, size: 256, elements: !776)
!776 = !{!777, !778, !779, !780, !781, !782, !787}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !775, file: !28, line: 351, baseType: !43, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !775, file: !28, line: 351, baseType: !14, size: 8, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !775, file: !28, line: 351, baseType: !14, size: 8, offset: 72)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !775, file: !28, line: 351, baseType: !47, size: 16, offset: 80)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !775, file: !28, line: 351, baseType: !14, size: 8, offset: 96)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !775, file: !28, line: 351, baseType: !783, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !20, line: 1055, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{null, !387, !34}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !775, file: !28, line: 352, baseType: !34, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !37, file: !28, line: 392, baseType: !789, size: 192)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !28, line: 357, size: 192, elements: !790)
!790 = !{!791, !792, !793, !794, !795, !796}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !789, file: !28, line: 358, baseType: !43, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !789, file: !28, line: 358, baseType: !14, size: 8, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !789, file: !28, line: 358, baseType: !14, size: 8, offset: 72)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !789, file: !28, line: 358, baseType: !47, size: 16, offset: 80)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !789, file: !28, line: 358, baseType: !14, size: 8, offset: 96)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !789, file: !28, line: 358, baseType: !43, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !37, file: !28, line: 399, baseType: !91, size: 384)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !27, file: !28, line: 435, baseType: !91, size: 384)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !27, file: !28, line: 436, baseType: !193, size: 1600)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !801, line: 148, baseType: !7)
!801 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!802 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_info", file: !805, line: 131, size: 192, elements: !806)
!805 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/lizy2001/genbc/linux")
!806 = !{!807, !808, !809, !810}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "free_space", scope: !804, file: !805, line: 132, baseType: !85, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !804, file: !805, line: 133, baseType: !19, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "object_space", scope: !804, file: !805, line: 134, baseType: !24, size: 32, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !804, file: !805, line: 135, baseType: !24, size: 32, offset: 160)
!811 = !{!0}
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !813, size: 72, elements: !403)
!813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!814 = !{!"rsp"}
!815 = !{i32 7, !"Dwarf Version", i32 4}
!816 = !{i32 2, !"Debug Info Version", i32 3}
!817 = !{i32 1, !"wchar_size", i32 2}
!818 = !{i32 1, !"Code Model", i32 2}
!819 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!820 = distinct !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !3, file: !3, line: 53, type: !821, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !825)
!821 = !DISubroutineType(types: !822)
!822 = !{!43, !823, !24, !24, !824}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !20, line: 635, baseType: !24)
!825 = !{}
!826 = !DILocalVariable(name: "module_name", arg: 1, scope: !820, file: !3, line: 54, type: !823)
!827 = !DILocation(line: 54, column: 15, scope: !820)
!828 = !DILocalVariable(name: "line_number", arg: 2, scope: !820, file: !3, line: 55, type: !24)
!829 = !DILocation(line: 55, column: 18, scope: !820)
!830 = !DILocalVariable(name: "component_id", arg: 3, scope: !820, file: !3, line: 56, type: !24)
!831 = !DILocation(line: 56, column: 18, scope: !820)
!832 = !DILocalVariable(name: "type", arg: 4, scope: !820, file: !3, line: 58, type: !824)
!833 = !DILocation(line: 58, column: 14, scope: !820)
!834 = !DILocalVariable(name: "object", scope: !820, file: !3, line: 60, type: !43)
!835 = !DILocation(line: 60, column: 29, scope: !820)
!836 = !DILocalVariable(name: "second_object", scope: !820, file: !3, line: 61, type: !43)
!837 = !DILocation(line: 61, column: 29, scope: !820)
!838 = !DILocation(line: 69, column: 39, scope: !820)
!839 = !DILocation(line: 69, column: 52, scope: !820)
!840 = !DILocation(line: 70, column: 11, scope: !820)
!841 = !DILocation(line: 69, column: 6, scope: !820)
!842 = !DILocation(line: 68, column: 9, scope: !820)
!843 = !DILocation(line: 71, column: 7, scope: !844)
!844 = distinct !DILexicalBlock(scope: !820, file: !3, line: 71, column: 6)
!845 = !DILocation(line: 71, column: 6, scope: !820)
!846 = !DILocation(line: 72, column: 3, scope: !847)
!847 = distinct !DILexicalBlock(scope: !844, file: !3, line: 71, column: 15)
!848 = !DILocation(line: 74, column: 20, scope: !820)
!849 = !DILocation(line: 74, column: 2, scope: !820)
!850 = !DILocation(line: 76, column: 10, scope: !820)
!851 = !DILocation(line: 76, column: 2, scope: !820)
!852 = !DILocation(line: 84, column: 40, scope: !853)
!853 = distinct !DILexicalBlock(scope: !820, file: !3, line: 76, column: 16)
!854 = !DILocation(line: 84, column: 53, scope: !853)
!855 = !DILocation(line: 85, column: 12, scope: !853)
!856 = !DILocation(line: 84, column: 7, scope: !853)
!857 = !DILocation(line: 83, column: 17, scope: !853)
!858 = !DILocation(line: 86, column: 8, scope: !859)
!859 = distinct !DILexicalBlock(scope: !853, file: !3, line: 86, column: 7)
!860 = !DILocation(line: 86, column: 7, scope: !853)
!861 = !DILocation(line: 87, column: 31, scope: !862)
!862 = distinct !DILexicalBlock(scope: !859, file: !3, line: 86, column: 23)
!863 = !DILocation(line: 87, column: 4, scope: !862)
!864 = !DILocation(line: 88, column: 4, scope: !862)
!865 = !DILocation(line: 91, column: 3, scope: !853)
!866 = !DILocation(line: 91, column: 18, scope: !853)
!867 = !DILocation(line: 91, column: 25, scope: !853)
!868 = !DILocation(line: 91, column: 30, scope: !853)
!869 = !DILocation(line: 92, column: 3, scope: !853)
!870 = !DILocation(line: 92, column: 18, scope: !853)
!871 = !DILocation(line: 92, column: 25, scope: !853)
!872 = !DILocation(line: 92, column: 41, scope: !853)
!873 = !DILocation(line: 96, column: 32, scope: !853)
!874 = !DILocation(line: 96, column: 3, scope: !853)
!875 = !DILocation(line: 96, column: 11, scope: !853)
!876 = !DILocation(line: 96, column: 18, scope: !853)
!877 = !DILocation(line: 96, column: 30, scope: !853)
!878 = !DILocation(line: 97, column: 3, scope: !853)
!879 = !DILocation(line: 102, column: 3, scope: !853)
!880 = !DILocation(line: 107, column: 29, scope: !820)
!881 = !DILocation(line: 107, column: 24, scope: !820)
!882 = !DILocation(line: 107, column: 2, scope: !820)
!883 = !DILocation(line: 107, column: 10, scope: !820)
!884 = !DILocation(line: 107, column: 17, scope: !820)
!885 = !DILocation(line: 107, column: 22, scope: !820)
!886 = !DILocation(line: 111, column: 2, scope: !820)
!887 = !DILocation(line: 111, column: 10, scope: !820)
!888 = !DILocation(line: 111, column: 17, scope: !820)
!889 = !DILocation(line: 111, column: 33, scope: !820)
!890 = !DILocation(line: 115, column: 2, scope: !820)
!891 = !DILocation(line: 116, column: 1, scope: !820)
!892 = distinct !DISubprogram(name: "acpi_ut_allocate_object_desc_dbg", scope: !3, file: !3, line: 352, type: !893, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !825)
!893 = !DISubroutineType(types: !894)
!894 = !{!34, !823, !24, !24}
!895 = !DILocalVariable(name: "module_name", arg: 1, scope: !892, file: !3, line: 352, type: !823)
!896 = !DILocation(line: 352, column: 52, scope: !892)
!897 = !DILocalVariable(name: "line_number", arg: 2, scope: !892, file: !3, line: 353, type: !24)
!898 = !DILocation(line: 353, column: 16, scope: !892)
!899 = !DILocalVariable(name: "component_id", arg: 3, scope: !892, file: !3, line: 353, type: !24)
!900 = !DILocation(line: 353, column: 33, scope: !892)
!901 = !DILocalVariable(name: "object", scope: !892, file: !3, line: 355, type: !43)
!902 = !DILocation(line: 355, column: 29, scope: !892)
!903 = !DILocation(line: 359, column: 34, scope: !892)
!904 = !DILocation(line: 359, column: 11, scope: !892)
!905 = !DILocation(line: 359, column: 9, scope: !892)
!906 = !DILocation(line: 360, column: 7, scope: !907)
!907 = distinct !DILexicalBlock(scope: !892, file: !3, line: 360, column: 6)
!908 = !DILocation(line: 360, column: 6, scope: !892)
!909 = !DILocation(line: 361, column: 3, scope: !910)
!910 = distinct !DILexicalBlock(scope: !907, file: !3, line: 360, column: 15)
!911 = !DILocation(line: 364, column: 3, scope: !910)
!912 = !DILocation(line: 369, column: 2, scope: !892)
!913 = !DILocation(line: 374, column: 2, scope: !892)
!914 = !DILocation(line: 375, column: 1, scope: !892)
!915 = distinct !DISubprogram(name: "kmemleak_not_leak", scope: !916, file: !916, line: 94, type: !917, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !825)
!916 = !DIFile(filename: "./include/linux/kmemleak.h", directory: "/home/lizy2001/genbc/linux")
!917 = !DISubroutineType(types: !918)
!918 = !{null, !919}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!921 = !DILocalVariable(name: "ptr", arg: 1, scope: !915, file: !916, line: 94, type: !919)
!922 = !DILocation(line: 94, column: 50, scope: !915)
!923 = !DILocation(line: 96, column: 1, scope: !915)
!924 = distinct !DISubprogram(name: "acpi_ut_delete_object_desc", scope: !3, file: !3, line: 389, type: !925, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !825)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !43}
!927 = !DILocalVariable(name: "object", arg: 1, scope: !924, file: !3, line: 389, type: !43)
!928 = !DILocation(line: 389, column: 60, scope: !924)
!929 = !DILocation(line: 395, column: 6, scope: !930)
!930 = distinct !DILexicalBlock(scope: !924, file: !3, line: 395, column: 6)
!931 = !DILocation(line: 395, column: 39, scope: !930)
!932 = !DILocation(line: 395, column: 6, scope: !924)
!933 = !DILocation(line: 396, column: 3, scope: !934)
!934 = distinct !DILexicalBlock(scope: !930, file: !3, line: 395, column: 66)
!935 = !DILocation(line: 399, column: 3, scope: !934)
!936 = !DILocation(line: 402, column: 31, scope: !924)
!937 = !DILocation(line: 402, column: 55, scope: !924)
!938 = !DILocation(line: 402, column: 8, scope: !924)
!939 = !DILocation(line: 403, column: 2, scope: !924)
!940 = !DILocation(line: 404, column: 1, scope: !924)
!941 = distinct !DISubprogram(name: "acpi_ut_create_package_object", scope: !3, file: !3, line: 130, type: !942, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !825)
!942 = !DISubroutineType(types: !943)
!943 = !{!43, !24}
!944 = !DILocalVariable(name: "count", arg: 1, scope: !941, file: !3, line: 130, type: !24)
!945 = !DILocation(line: 130, column: 62, scope: !941)
!946 = !DILocalVariable(name: "package_desc", scope: !941, file: !3, line: 132, type: !43)
!947 = !DILocation(line: 132, column: 29, scope: !941)
!948 = !DILocalVariable(name: "package_elements", scope: !941, file: !3, line: 133, type: !122)
!949 = !DILocation(line: 133, column: 30, scope: !941)
!950 = !DILocation(line: 139, column: 17, scope: !941)
!951 = !DILocation(line: 139, column: 15, scope: !941)
!952 = !DILocation(line: 140, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !941, file: !3, line: 140, column: 6)
!954 = !DILocation(line: 140, column: 6, scope: !941)
!955 = !DILocation(line: 141, column: 3, scope: !956)
!956 = distinct !DILexicalBlock(scope: !953, file: !3, line: 140, column: 21)
!957 = !DILocation(line: 148, column: 21, scope: !941)
!958 = !DILocation(line: 148, column: 19, scope: !941)
!959 = !DILocation(line: 150, column: 7, scope: !960)
!960 = distinct !DILexicalBlock(scope: !941, file: !3, line: 150, column: 6)
!961 = !DILocation(line: 150, column: 6, scope: !941)
!962 = !DILocation(line: 151, column: 3, scope: !963)
!963 = distinct !DILexicalBlock(scope: !960, file: !3, line: 150, column: 25)
!964 = !DILocation(line: 152, column: 3, scope: !963)
!965 = !DILocation(line: 155, column: 32, scope: !941)
!966 = !DILocation(line: 155, column: 2, scope: !941)
!967 = !DILocation(line: 155, column: 16, scope: !941)
!968 = !DILocation(line: 155, column: 24, scope: !941)
!969 = !DILocation(line: 155, column: 30, scope: !941)
!970 = !DILocation(line: 156, column: 35, scope: !941)
!971 = !DILocation(line: 156, column: 2, scope: !941)
!972 = !DILocation(line: 156, column: 16, scope: !941)
!973 = !DILocation(line: 156, column: 24, scope: !941)
!974 = !DILocation(line: 156, column: 33, scope: !941)
!975 = !DILocation(line: 157, column: 2, scope: !941)
!976 = !DILocation(line: 158, column: 1, scope: !941)
!977 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !978, file: !978, line: 55, type: !979, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !825)
!978 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!979 = !DISubroutineType(types: !980)
!980 = !{!34, !19}
!981 = !DILocalVariable(name: "flags", arg: 1, scope: !982, file: !983, line: 162, type: !802)
!982 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !983, file: !983, line: 162, type: !984, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !825)
!983 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!984 = !DISubroutineType(types: !985)
!985 = !{!986, !802}
!986 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!987 = !DILocation(line: 162, column: 67, scope: !982, inlinedAt: !988)
!988 = distinct !DILocation(line: 57, column: 23, scope: !989)
!989 = distinct !DILexicalBlock(scope: !990, file: !978, line: 57, column: 23)
!990 = distinct !DILexicalBlock(scope: !977, file: !978, line: 57, column: 23)
!991 = !DILocalVariable(name: "size", arg: 1, scope: !977, file: !978, line: 55, type: !19)
!992 = !DILocation(line: 55, column: 55, scope: !977)
!993 = !DILocation(line: 57, column: 17, scope: !977)
!994 = !DILocalVariable(name: "_flags", scope: !990, file: !978, line: 57, type: !802)
!995 = !DILocation(line: 57, column: 23, scope: !990)
!996 = !DILocalVariable(name: "__dummy", scope: !997, file: !978, line: 57, type: !802)
!997 = distinct !DILexicalBlock(scope: !998, file: !978, line: 57, column: 23)
!998 = distinct !DILexicalBlock(scope: !990, file: !978, line: 57, column: 23)
!999 = !DILocation(line: 57, column: 23, scope: !997)
!1000 = !DILocalVariable(name: "__dummy2", scope: !997, file: !978, line: 57, type: !802)
!1001 = !DILocation(line: 57, column: 23, scope: !998)
!1002 = !DILocalVariable(name: "__dummy", scope: !1003, file: !978, line: 57, type: !802)
!1003 = distinct !DILexicalBlock(scope: !989, file: !978, line: 57, column: 23)
!1004 = !DILocation(line: 57, column: 23, scope: !1003)
!1005 = !DILocalVariable(name: "__dummy2", scope: !1003, file: !978, line: 57, type: !802)
!1006 = !DILocation(line: 57, column: 23, scope: !989)
!1007 = !DILocation(line: 164, column: 11, scope: !982, inlinedAt: !988)
!1008 = !DILocation(line: 164, column: 17, scope: !982, inlinedAt: !988)
!1009 = !DILocation(line: 164, column: 9, scope: !982, inlinedAt: !988)
!1010 = !DILocation(line: 57, column: 23, scope: !977)
!1011 = !DILocation(line: 57, column: 9, scope: !977)
!1012 = !DILocation(line: 57, column: 2, scope: !977)
!1013 = distinct !DISubprogram(name: "acpi_os_free", scope: !978, file: !978, line: 60, type: !1014, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !825)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{null, !34}
!1016 = !DILocalVariable(name: "memory", arg: 1, scope: !1013, file: !978, line: 60, type: !34)
!1017 = !DILocation(line: 60, column: 39, scope: !1013)
!1018 = !DILocation(line: 62, column: 8, scope: !1013)
!1019 = !DILocation(line: 62, column: 2, scope: !1013)
!1020 = !DILocation(line: 63, column: 1, scope: !1013)
!1021 = distinct !DISubprogram(name: "acpi_ut_create_integer_object", scope: !3, file: !3, line: 172, type: !1022, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !825)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!43, !21}
!1024 = !DILocalVariable(name: "initial_value", arg: 1, scope: !1021, file: !3, line: 172, type: !21)
!1025 = !DILocation(line: 172, column: 62, scope: !1021)
!1026 = !DILocalVariable(name: "integer_desc", scope: !1021, file: !3, line: 174, type: !43)
!1027 = !DILocation(line: 174, column: 29, scope: !1021)
!1028 = !DILocation(line: 180, column: 17, scope: !1021)
!1029 = !DILocation(line: 180, column: 15, scope: !1021)
!1030 = !DILocation(line: 181, column: 7, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 181, column: 6)
!1032 = !DILocation(line: 181, column: 6, scope: !1021)
!1033 = !DILocation(line: 182, column: 3, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 181, column: 21)
!1035 = !DILocation(line: 185, column: 32, scope: !1021)
!1036 = !DILocation(line: 185, column: 2, scope: !1021)
!1037 = !DILocation(line: 185, column: 16, scope: !1021)
!1038 = !DILocation(line: 185, column: 24, scope: !1021)
!1039 = !DILocation(line: 185, column: 30, scope: !1021)
!1040 = !DILocation(line: 186, column: 2, scope: !1021)
!1041 = !DILocation(line: 187, column: 1, scope: !1021)
!1042 = distinct !DISubprogram(name: "acpi_ut_create_buffer_object", scope: !3, file: !3, line: 201, type: !1043, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !825)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!43, !19}
!1045 = !DILocalVariable(name: "buffer_size", arg: 1, scope: !1042, file: !3, line: 201, type: !19)
!1046 = !DILocation(line: 201, column: 67, scope: !1042)
!1047 = !DILocalVariable(name: "buffer_desc", scope: !1042, file: !3, line: 203, type: !43)
!1048 = !DILocation(line: 203, column: 29, scope: !1042)
!1049 = !DILocalVariable(name: "buffer", scope: !1042, file: !3, line: 204, type: !85)
!1050 = !DILocation(line: 204, column: 6, scope: !1042)
!1051 = !DILocation(line: 210, column: 16, scope: !1042)
!1052 = !DILocation(line: 210, column: 14, scope: !1042)
!1053 = !DILocation(line: 211, column: 7, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 211, column: 6)
!1055 = !DILocation(line: 211, column: 6, scope: !1042)
!1056 = !DILocation(line: 212, column: 3, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 211, column: 20)
!1058 = !DILocation(line: 217, column: 6, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 217, column: 6)
!1060 = !DILocation(line: 217, column: 18, scope: !1059)
!1061 = !DILocation(line: 217, column: 6, scope: !1042)
!1062 = !DILocation(line: 221, column: 12, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 217, column: 23)
!1064 = !DILocation(line: 221, column: 10, scope: !1063)
!1065 = !DILocation(line: 222, column: 8, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 222, column: 7)
!1067 = !DILocation(line: 222, column: 7, scope: !1063)
!1068 = !DILocation(line: 223, column: 4, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 222, column: 16)
!1070 = !DILocation(line: 226, column: 29, scope: !1069)
!1071 = !DILocation(line: 226, column: 4, scope: !1069)
!1072 = !DILocation(line: 227, column: 4, scope: !1069)
!1073 = !DILocation(line: 229, column: 2, scope: !1063)
!1074 = !DILocation(line: 233, column: 2, scope: !1042)
!1075 = !DILocation(line: 233, column: 15, scope: !1042)
!1076 = !DILocation(line: 233, column: 22, scope: !1042)
!1077 = !DILocation(line: 233, column: 28, scope: !1042)
!1078 = !DILocation(line: 234, column: 32, scope: !1042)
!1079 = !DILocation(line: 234, column: 2, scope: !1042)
!1080 = !DILocation(line: 234, column: 15, scope: !1042)
!1081 = !DILocation(line: 234, column: 22, scope: !1042)
!1082 = !DILocation(line: 234, column: 30, scope: !1042)
!1083 = !DILocation(line: 235, column: 37, scope: !1042)
!1084 = !DILocation(line: 235, column: 31, scope: !1042)
!1085 = !DILocation(line: 235, column: 2, scope: !1042)
!1086 = !DILocation(line: 235, column: 15, scope: !1042)
!1087 = !DILocation(line: 235, column: 22, scope: !1042)
!1088 = !DILocation(line: 235, column: 29, scope: !1042)
!1089 = !DILocation(line: 239, column: 2, scope: !1042)
!1090 = !DILocation(line: 240, column: 1, scope: !1042)
!1091 = distinct !DISubprogram(name: "acpi_ut_create_string_object", scope: !3, file: !3, line: 256, type: !1043, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !825)
!1092 = !DILocalVariable(name: "string_size", arg: 1, scope: !1091, file: !3, line: 256, type: !19)
!1093 = !DILocation(line: 256, column: 67, scope: !1091)
!1094 = !DILocalVariable(name: "string_desc", scope: !1091, file: !3, line: 258, type: !43)
!1095 = !DILocation(line: 258, column: 29, scope: !1091)
!1096 = !DILocalVariable(name: "string", scope: !1091, file: !3, line: 259, type: !73)
!1097 = !DILocation(line: 259, column: 8, scope: !1091)
!1098 = !DILocation(line: 265, column: 16, scope: !1091)
!1099 = !DILocation(line: 265, column: 14, scope: !1091)
!1100 = !DILocation(line: 266, column: 7, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 266, column: 6)
!1102 = !DILocation(line: 266, column: 6, scope: !1091)
!1103 = !DILocation(line: 267, column: 3, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 266, column: 20)
!1105 = !DILocation(line: 274, column: 11, scope: !1091)
!1106 = !DILocation(line: 274, column: 9, scope: !1091)
!1107 = !DILocation(line: 275, column: 7, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 275, column: 6)
!1109 = !DILocation(line: 275, column: 6, scope: !1091)
!1110 = !DILocation(line: 276, column: 3, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 275, column: 15)
!1112 = !DILocation(line: 279, column: 28, scope: !1111)
!1113 = !DILocation(line: 279, column: 3, scope: !1111)
!1114 = !DILocation(line: 280, column: 3, scope: !1111)
!1115 = !DILocation(line: 285, column: 32, scope: !1091)
!1116 = !DILocation(line: 285, column: 2, scope: !1091)
!1117 = !DILocation(line: 285, column: 15, scope: !1091)
!1118 = !DILocation(line: 285, column: 22, scope: !1091)
!1119 = !DILocation(line: 285, column: 30, scope: !1091)
!1120 = !DILocation(line: 286, column: 37, scope: !1091)
!1121 = !DILocation(line: 286, column: 31, scope: !1091)
!1122 = !DILocation(line: 286, column: 2, scope: !1091)
!1123 = !DILocation(line: 286, column: 15, scope: !1091)
!1124 = !DILocation(line: 286, column: 22, scope: !1091)
!1125 = !DILocation(line: 286, column: 29, scope: !1091)
!1126 = !DILocation(line: 290, column: 2, scope: !1091)
!1127 = !DILocation(line: 291, column: 1, scope: !1091)
!1128 = distinct !DISubprogram(name: "acpi_ut_valid_internal_object", scope: !3, file: !3, line: 305, type: !1129, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !825)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!14, !34}
!1131 = !DILocalVariable(name: "object", arg: 1, scope: !1128, file: !3, line: 305, type: !34)
!1132 = !DILocation(line: 305, column: 40, scope: !1128)
!1133 = !DILocation(line: 312, column: 7, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 312, column: 6)
!1135 = !DILocation(line: 312, column: 6, scope: !1128)
!1136 = !DILocation(line: 314, column: 3, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 312, column: 15)
!1138 = !DILocation(line: 319, column: 10, scope: !1128)
!1139 = !DILocation(line: 319, column: 2, scope: !1128)
!1140 = !DILocation(line: 324, column: 3, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 319, column: 44)
!1142 = !DILocation(line: 331, column: 3, scope: !1141)
!1143 = !DILocation(line: 334, column: 2, scope: !1128)
!1144 = !DILocation(line: 335, column: 1, scope: !1128)
!1145 = distinct !DISubprogram(name: "acpi_os_acquire_object", scope: !978, file: !978, line: 65, type: !1146, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !825)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!34, !1148}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1150, line: 117, flags: DIFlagFwdDecl)
!1150 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1151 = !DILocation(line: 162, column: 67, scope: !982, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 68, column: 6, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !978, line: 68, column: 6)
!1154 = distinct !DILexicalBlock(scope: !1145, file: !978, line: 68, column: 6)
!1155 = !DILocalVariable(name: "cache", arg: 1, scope: !1145, file: !978, line: 65, type: !1148)
!1156 = !DILocation(line: 65, column: 59, scope: !1145)
!1157 = !DILocation(line: 67, column: 27, scope: !1145)
!1158 = !DILocalVariable(name: "_flags", scope: !1154, file: !978, line: 68, type: !802)
!1159 = !DILocation(line: 68, column: 6, scope: !1154)
!1160 = !DILocalVariable(name: "__dummy", scope: !1161, file: !978, line: 68, type: !802)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !978, line: 68, column: 6)
!1162 = distinct !DILexicalBlock(scope: !1154, file: !978, line: 68, column: 6)
!1163 = !DILocation(line: 68, column: 6, scope: !1161)
!1164 = !DILocalVariable(name: "__dummy2", scope: !1161, file: !978, line: 68, type: !802)
!1165 = !DILocation(line: 68, column: 6, scope: !1162)
!1166 = !DILocalVariable(name: "__dummy", scope: !1167, file: !978, line: 68, type: !802)
!1167 = distinct !DILexicalBlock(scope: !1153, file: !978, line: 68, column: 6)
!1168 = !DILocation(line: 68, column: 6, scope: !1167)
!1169 = !DILocalVariable(name: "__dummy2", scope: !1167, file: !978, line: 68, type: !802)
!1170 = !DILocation(line: 68, column: 6, scope: !1153)
!1171 = !DILocation(line: 164, column: 11, scope: !982, inlinedAt: !1152)
!1172 = !DILocation(line: 164, column: 17, scope: !982, inlinedAt: !1152)
!1173 = !DILocation(line: 164, column: 9, scope: !982, inlinedAt: !1152)
!1174 = !DILocation(line: 68, column: 6, scope: !1145)
!1175 = !DILocation(line: 67, column: 9, scope: !1145)
!1176 = !DILocation(line: 67, column: 2, scope: !1145)
!1177 = distinct !DISubprogram(name: "acpi_ut_get_object_size", scope: !3, file: !3, line: 664, type: !1178, scopeLine: 666, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !825)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!157, !43, !1180}
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!1181 = !DILocalVariable(name: "internal_object", arg: 1, scope: !1177, file: !3, line: 664, type: !43)
!1182 = !DILocation(line: 664, column: 52, scope: !1177)
!1183 = !DILocalVariable(name: "obj_length", arg: 2, scope: !1177, file: !3, line: 665, type: !1180)
!1184 = !DILocation(line: 665, column: 15, scope: !1177)
!1185 = !DILocalVariable(name: "status", scope: !1177, file: !3, line: 667, type: !157)
!1186 = !DILocation(line: 667, column: 14, scope: !1177)
!1187 = !DILocation(line: 671, column: 7, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 671, column: 6)
!1189 = !DILocation(line: 671, column: 49, scope: !1188)
!1190 = !DILocation(line: 672, column: 31, scope: !1188)
!1191 = !DILocation(line: 673, column: 7, scope: !1188)
!1192 = !DILocation(line: 673, column: 24, scope: !1188)
!1193 = !DILocation(line: 673, column: 31, scope: !1188)
!1194 = !DILocation(line: 673, column: 36, scope: !1188)
!1195 = !DILocation(line: 671, column: 6, scope: !1177)
!1196 = !DILocation(line: 675, column: 39, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 673, column: 59)
!1198 = !DILocation(line: 676, column: 11, scope: !1197)
!1199 = !DILocation(line: 675, column: 7, scope: !1197)
!1200 = !DILocation(line: 674, column: 10, scope: !1197)
!1201 = !DILocation(line: 677, column: 2, scope: !1197)
!1202 = !DILocation(line: 679, column: 38, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 677, column: 9)
!1204 = !DILocation(line: 679, column: 55, scope: !1203)
!1205 = !DILocation(line: 679, column: 7, scope: !1203)
!1206 = !DILocation(line: 678, column: 10, scope: !1203)
!1207 = !DILocation(line: 682, column: 10, scope: !1177)
!1208 = !DILocation(line: 682, column: 2, scope: !1177)
!1209 = distinct !DISubprogram(name: "acpi_ut_get_package_object_size", scope: !3, file: !3, line: 615, type: !1178, scopeLine: 617, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !825)
!1210 = !DILocalVariable(name: "internal_object", arg: 1, scope: !1209, file: !3, line: 615, type: !43)
!1211 = !DILocation(line: 615, column: 60, scope: !1209)
!1212 = !DILocalVariable(name: "obj_length", arg: 2, scope: !1209, file: !3, line: 616, type: !1180)
!1213 = !DILocation(line: 616, column: 16, scope: !1209)
!1214 = !DILocalVariable(name: "status", scope: !1209, file: !3, line: 618, type: !157)
!1215 = !DILocation(line: 618, column: 14, scope: !1209)
!1216 = !DILocalVariable(name: "info", scope: !1209, file: !3, line: 619, type: !804)
!1217 = !DILocation(line: 619, column: 23, scope: !1209)
!1218 = !DILocation(line: 623, column: 7, scope: !1209)
!1219 = !DILocation(line: 623, column: 14, scope: !1209)
!1220 = !DILocation(line: 624, column: 7, scope: !1209)
!1221 = !DILocation(line: 624, column: 20, scope: !1209)
!1222 = !DILocation(line: 625, column: 7, scope: !1209)
!1223 = !DILocation(line: 625, column: 20, scope: !1209)
!1224 = !DILocation(line: 628, column: 32, scope: !1209)
!1225 = !DILocation(line: 629, column: 39, scope: !1209)
!1226 = !DILocation(line: 628, column: 6, scope: !1209)
!1227 = !DILocation(line: 627, column: 9, scope: !1209)
!1228 = !DILocation(line: 630, column: 6, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 630, column: 6)
!1230 = !DILocation(line: 630, column: 6, scope: !1209)
!1231 = !DILocation(line: 631, column: 3, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 630, column: 28)
!1233 = !DILocation(line: 641, column: 22, scope: !1209)
!1234 = !DILocation(line: 641, column: 6, scope: !1209)
!1235 = !DILocation(line: 640, column: 62, scope: !1209)
!1236 = !DILocation(line: 639, column: 7, scope: !1209)
!1237 = !DILocation(line: 639, column: 14, scope: !1209)
!1238 = !DILocation(line: 645, column: 21, scope: !1209)
!1239 = !DILocation(line: 645, column: 3, scope: !1209)
!1240 = !DILocation(line: 645, column: 14, scope: !1209)
!1241 = !DILocation(line: 646, column: 2, scope: !1209)
!1242 = !DILocation(line: 647, column: 1, scope: !1209)
!1243 = distinct !DISubprogram(name: "acpi_ut_get_simple_object_size", scope: !3, file: !3, line: 424, type: !1178, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !825)
!1244 = !DILocalVariable(name: "internal_object", arg: 1, scope: !1243, file: !3, line: 424, type: !43)
!1245 = !DILocation(line: 424, column: 59, scope: !1243)
!1246 = !DILocalVariable(name: "obj_length", arg: 2, scope: !1243, file: !3, line: 425, type: !1180)
!1247 = !DILocation(line: 425, column: 22, scope: !1243)
!1248 = !DILocalVariable(name: "length", scope: !1243, file: !3, line: 427, type: !19)
!1249 = !DILocation(line: 427, column: 12, scope: !1243)
!1250 = !DILocalVariable(name: "size", scope: !1243, file: !3, line: 428, type: !19)
!1251 = !DILocation(line: 428, column: 12, scope: !1243)
!1252 = !DILocalVariable(name: "status", scope: !1243, file: !3, line: 429, type: !157)
!1253 = !DILocation(line: 429, column: 14, scope: !1243)
!1254 = !DILocation(line: 435, column: 9, scope: !1243)
!1255 = !DILocation(line: 439, column: 7, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 439, column: 6)
!1257 = !DILocation(line: 439, column: 6, scope: !1243)
!1258 = !DILocation(line: 444, column: 17, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 439, column: 24)
!1260 = !DILocation(line: 444, column: 4, scope: !1259)
!1261 = !DILocation(line: 444, column: 15, scope: !1259)
!1262 = !DILocation(line: 445, column: 3, scope: !1259)
!1263 = !DILocation(line: 450, column: 6, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 450, column: 6)
!1265 = !DILocation(line: 450, column: 48, scope: !1264)
!1266 = !DILocation(line: 450, column: 6, scope: !1243)
!1267 = !DILocation(line: 454, column: 3, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 450, column: 73)
!1269 = !DILocation(line: 459, column: 3, scope: !1268)
!1270 = !DILocation(line: 468, column: 10, scope: !1243)
!1271 = !DILocation(line: 468, column: 27, scope: !1243)
!1272 = !DILocation(line: 468, column: 34, scope: !1243)
!1273 = !DILocation(line: 468, column: 2, scope: !1243)
!1274 = !DILocation(line: 471, column: 24, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 468, column: 40)
!1276 = !DILocation(line: 471, column: 41, scope: !1275)
!1277 = !DILocation(line: 471, column: 48, scope: !1275)
!1278 = !DILocation(line: 471, column: 13, scope: !1275)
!1279 = !DILocation(line: 471, column: 55, scope: !1275)
!1280 = !DILocation(line: 471, column: 10, scope: !1275)
!1281 = !DILocation(line: 472, column: 3, scope: !1275)
!1282 = !DILocation(line: 476, column: 24, scope: !1275)
!1283 = !DILocation(line: 476, column: 41, scope: !1275)
!1284 = !DILocation(line: 476, column: 48, scope: !1275)
!1285 = !DILocation(line: 476, column: 13, scope: !1275)
!1286 = !DILocation(line: 476, column: 10, scope: !1275)
!1287 = !DILocation(line: 477, column: 3, scope: !1275)
!1288 = !DILocation(line: 485, column: 3, scope: !1275)
!1289 = !DILocation(line: 489, column: 11, scope: !1275)
!1290 = !DILocation(line: 489, column: 28, scope: !1275)
!1291 = !DILocation(line: 489, column: 38, scope: !1275)
!1292 = !DILocation(line: 489, column: 3, scope: !1275)
!1293 = !DILocation(line: 496, column: 36, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 489, column: 45)
!1295 = !DILocation(line: 497, column: 8, scope: !1294)
!1296 = !DILocation(line: 497, column: 18, scope: !1294)
!1297 = !DILocation(line: 496, column: 8, scope: !1294)
!1298 = !DILocation(line: 495, column: 9, scope: !1294)
!1299 = !DILocation(line: 498, column: 9, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 498, column: 8)
!1301 = !DILocation(line: 498, column: 8, scope: !1294)
!1302 = !DILocation(line: 499, column: 5, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 498, column: 15)
!1304 = !DILocation(line: 502, column: 14, scope: !1294)
!1305 = !DILocation(line: 502, column: 11, scope: !1294)
!1306 = !DILocation(line: 503, column: 4, scope: !1294)
!1307 = !DILocation(line: 511, column: 4, scope: !1294)
!1308 = !DILocation(line: 517, column: 11, scope: !1294)
!1309 = !DILocation(line: 518, column: 4, scope: !1294)
!1310 = !DILocation(line: 520, column: 3, scope: !1275)
!1311 = !DILocation(line: 524, column: 3, scope: !1275)
!1312 = !DILocation(line: 528, column: 10, scope: !1275)
!1313 = !DILocation(line: 529, column: 3, scope: !1275)
!1314 = !DILocation(line: 538, column: 16, scope: !1243)
!1315 = !DILocation(line: 538, column: 3, scope: !1243)
!1316 = !DILocation(line: 538, column: 14, scope: !1243)
!1317 = !DILocation(line: 539, column: 2, scope: !1243)
!1318 = !DILocation(line: 540, column: 1, scope: !1243)
!1319 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !1320, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !825)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!34, !1322, !800}
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !801, line: 55, baseType: !1323)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1324, line: 72, baseType: !1325)
!1324 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1324, line: 16, baseType: !802)
!1326 = !DILocalVariable(name: "s", arg: 1, scope: !1327, file: !6, line: 445, type: !1148)
!1327 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !1328, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !825)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!34, !1148, !800, !1322}
!1330 = !DILocation(line: 445, column: 72, scope: !1327, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 552, column: 10, scope: !1332, inlinedAt: !1335)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !6, line: 540, column: 34)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !6, line: 540, column: 6)
!1334 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !1320, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !825)
!1335 = distinct !DILocation(line: 664, column: 9, scope: !1319)
!1336 = !DILocalVariable(name: "flags", arg: 2, scope: !1327, file: !6, line: 446, type: !800)
!1337 = !DILocation(line: 446, column: 9, scope: !1327, inlinedAt: !1331)
!1338 = !DILocalVariable(name: "size", arg: 3, scope: !1327, file: !6, line: 446, type: !1322)
!1339 = !DILocation(line: 446, column: 23, scope: !1327, inlinedAt: !1331)
!1340 = !DILocalVariable(name: "ret", scope: !1327, file: !6, line: 448, type: !34)
!1341 = !DILocation(line: 448, column: 8, scope: !1327, inlinedAt: !1331)
!1342 = !DILocalVariable(name: "flags", arg: 1, scope: !1343, file: !6, line: 318, type: !800)
!1343 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !1344, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !825)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!5, !800}
!1346 = !DILocation(line: 318, column: 67, scope: !1343, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 553, column: 20, scope: !1332, inlinedAt: !1335)
!1348 = !DILocalVariable(name: "size", arg: 1, scope: !1349, file: !6, line: 346, type: !1322)
!1349 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !1350, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !825)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!7, !1322}
!1352 = !DILocation(line: 346, column: 58, scope: !1349, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 547, column: 11, scope: !1332, inlinedAt: !1335)
!1354 = !DILocalVariable(name: "size", arg: 1, scope: !1355, file: !6, line: 472, type: !1322)
!1355 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !1356, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !825)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!34, !1322, !800, !7}
!1358 = !DILocation(line: 472, column: 28, scope: !1355, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 481, column: 9, scope: !1360, inlinedAt: !1361)
!1360 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !1320, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !825)
!1361 = distinct !DILocation(line: 545, column: 11, scope: !1362, inlinedAt: !1335)
!1362 = distinct !DILexicalBlock(scope: !1332, file: !6, line: 544, column: 7)
!1363 = !DILocalVariable(name: "flags", arg: 2, scope: !1355, file: !6, line: 472, type: !800)
!1364 = !DILocation(line: 472, column: 40, scope: !1355, inlinedAt: !1359)
!1365 = !DILocalVariable(name: "order", arg: 3, scope: !1355, file: !6, line: 472, type: !7)
!1366 = !DILocation(line: 472, column: 60, scope: !1355, inlinedAt: !1359)
!1367 = !DILocalVariable(name: "size", arg: 1, scope: !1360, file: !6, line: 478, type: !1322)
!1368 = !DILocation(line: 478, column: 51, scope: !1360, inlinedAt: !1361)
!1369 = !DILocalVariable(name: "flags", arg: 2, scope: !1360, file: !6, line: 478, type: !800)
!1370 = !DILocation(line: 478, column: 63, scope: !1360, inlinedAt: !1361)
!1371 = !DILocalVariable(name: "order", scope: !1360, file: !6, line: 480, type: !7)
!1372 = !DILocation(line: 480, column: 15, scope: !1360, inlinedAt: !1361)
!1373 = !DILocalVariable(name: "size", arg: 1, scope: !1334, file: !6, line: 538, type: !1322)
!1374 = !DILocation(line: 538, column: 45, scope: !1334, inlinedAt: !1335)
!1375 = !DILocalVariable(name: "flags", arg: 2, scope: !1334, file: !6, line: 538, type: !800)
!1376 = !DILocation(line: 538, column: 57, scope: !1334, inlinedAt: !1335)
!1377 = !DILocalVariable(name: "index", scope: !1332, file: !6, line: 542, type: !7)
!1378 = !DILocation(line: 542, column: 16, scope: !1332, inlinedAt: !1335)
!1379 = !DILocalVariable(name: "size", arg: 1, scope: !1319, file: !6, line: 662, type: !1322)
!1380 = !DILocation(line: 662, column: 36, scope: !1319)
!1381 = !DILocalVariable(name: "flags", arg: 2, scope: !1319, file: !6, line: 662, type: !800)
!1382 = !DILocation(line: 662, column: 48, scope: !1319)
!1383 = !DILocation(line: 664, column: 17, scope: !1319)
!1384 = !DILocation(line: 664, column: 23, scope: !1319)
!1385 = !DILocation(line: 664, column: 29, scope: !1319)
!1386 = !DILocation(line: 540, column: 27, scope: !1333, inlinedAt: !1335)
!1387 = !DILocation(line: 540, column: 6, scope: !1333, inlinedAt: !1335)
!1388 = !DILocation(line: 540, column: 6, scope: !1334, inlinedAt: !1335)
!1389 = !DILocation(line: 544, column: 7, scope: !1362, inlinedAt: !1335)
!1390 = !DILocation(line: 544, column: 12, scope: !1362, inlinedAt: !1335)
!1391 = !DILocation(line: 544, column: 7, scope: !1332, inlinedAt: !1335)
!1392 = !DILocation(line: 545, column: 25, scope: !1362, inlinedAt: !1335)
!1393 = !DILocation(line: 545, column: 31, scope: !1362, inlinedAt: !1335)
!1394 = !DILocation(line: 480, column: 33, scope: !1360, inlinedAt: !1361)
!1395 = !DILocation(line: 480, column: 23, scope: !1360, inlinedAt: !1361)
!1396 = !DILocation(line: 481, column: 29, scope: !1360, inlinedAt: !1361)
!1397 = !DILocation(line: 481, column: 35, scope: !1360, inlinedAt: !1361)
!1398 = !DILocation(line: 481, column: 42, scope: !1360, inlinedAt: !1361)
!1399 = !DILocation(line: 474, column: 23, scope: !1355, inlinedAt: !1359)
!1400 = !DILocation(line: 474, column: 29, scope: !1355, inlinedAt: !1359)
!1401 = !DILocation(line: 474, column: 36, scope: !1355, inlinedAt: !1359)
!1402 = !DILocation(line: 474, column: 9, scope: !1355, inlinedAt: !1359)
!1403 = !DILocation(line: 545, column: 4, scope: !1362, inlinedAt: !1335)
!1404 = !DILocation(line: 547, column: 25, scope: !1332, inlinedAt: !1335)
!1405 = !DILocation(line: 348, column: 7, scope: !1406, inlinedAt: !1353)
!1406 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 348, column: 6)
!1407 = !DILocation(line: 348, column: 6, scope: !1349, inlinedAt: !1353)
!1408 = !DILocation(line: 349, column: 3, scope: !1406, inlinedAt: !1353)
!1409 = !DILocation(line: 351, column: 6, scope: !1410, inlinedAt: !1353)
!1410 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 351, column: 6)
!1411 = !DILocation(line: 351, column: 11, scope: !1410, inlinedAt: !1353)
!1412 = !DILocation(line: 351, column: 6, scope: !1349, inlinedAt: !1353)
!1413 = !DILocation(line: 352, column: 3, scope: !1410, inlinedAt: !1353)
!1414 = !DILocation(line: 354, column: 32, scope: !1415, inlinedAt: !1353)
!1415 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 354, column: 6)
!1416 = !DILocation(line: 354, column: 37, scope: !1415, inlinedAt: !1353)
!1417 = !DILocation(line: 354, column: 42, scope: !1415, inlinedAt: !1353)
!1418 = !DILocation(line: 354, column: 45, scope: !1415, inlinedAt: !1353)
!1419 = !DILocation(line: 354, column: 50, scope: !1415, inlinedAt: !1353)
!1420 = !DILocation(line: 354, column: 6, scope: !1349, inlinedAt: !1353)
!1421 = !DILocation(line: 355, column: 3, scope: !1415, inlinedAt: !1353)
!1422 = !DILocation(line: 356, column: 32, scope: !1423, inlinedAt: !1353)
!1423 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 356, column: 6)
!1424 = !DILocation(line: 356, column: 37, scope: !1423, inlinedAt: !1353)
!1425 = !DILocation(line: 356, column: 43, scope: !1423, inlinedAt: !1353)
!1426 = !DILocation(line: 356, column: 46, scope: !1423, inlinedAt: !1353)
!1427 = !DILocation(line: 356, column: 51, scope: !1423, inlinedAt: !1353)
!1428 = !DILocation(line: 356, column: 6, scope: !1349, inlinedAt: !1353)
!1429 = !DILocation(line: 357, column: 3, scope: !1423, inlinedAt: !1353)
!1430 = !DILocation(line: 358, column: 6, scope: !1431, inlinedAt: !1353)
!1431 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 358, column: 6)
!1432 = !DILocation(line: 358, column: 11, scope: !1431, inlinedAt: !1353)
!1433 = !DILocation(line: 358, column: 6, scope: !1349, inlinedAt: !1353)
!1434 = !DILocation(line: 358, column: 26, scope: !1431, inlinedAt: !1353)
!1435 = !DILocation(line: 359, column: 6, scope: !1436, inlinedAt: !1353)
!1436 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 359, column: 6)
!1437 = !DILocation(line: 359, column: 11, scope: !1436, inlinedAt: !1353)
!1438 = !DILocation(line: 359, column: 6, scope: !1349, inlinedAt: !1353)
!1439 = !DILocation(line: 359, column: 26, scope: !1436, inlinedAt: !1353)
!1440 = !DILocation(line: 360, column: 6, scope: !1441, inlinedAt: !1353)
!1441 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 360, column: 6)
!1442 = !DILocation(line: 360, column: 11, scope: !1441, inlinedAt: !1353)
!1443 = !DILocation(line: 360, column: 6, scope: !1349, inlinedAt: !1353)
!1444 = !DILocation(line: 360, column: 26, scope: !1441, inlinedAt: !1353)
!1445 = !DILocation(line: 361, column: 6, scope: !1446, inlinedAt: !1353)
!1446 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 361, column: 6)
!1447 = !DILocation(line: 361, column: 11, scope: !1446, inlinedAt: !1353)
!1448 = !DILocation(line: 361, column: 6, scope: !1349, inlinedAt: !1353)
!1449 = !DILocation(line: 361, column: 26, scope: !1446, inlinedAt: !1353)
!1450 = !DILocation(line: 362, column: 6, scope: !1451, inlinedAt: !1353)
!1451 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 362, column: 6)
!1452 = !DILocation(line: 362, column: 11, scope: !1451, inlinedAt: !1353)
!1453 = !DILocation(line: 362, column: 6, scope: !1349, inlinedAt: !1353)
!1454 = !DILocation(line: 362, column: 26, scope: !1451, inlinedAt: !1353)
!1455 = !DILocation(line: 363, column: 6, scope: !1456, inlinedAt: !1353)
!1456 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 363, column: 6)
!1457 = !DILocation(line: 363, column: 11, scope: !1456, inlinedAt: !1353)
!1458 = !DILocation(line: 363, column: 6, scope: !1349, inlinedAt: !1353)
!1459 = !DILocation(line: 363, column: 26, scope: !1456, inlinedAt: !1353)
!1460 = !DILocation(line: 364, column: 6, scope: !1461, inlinedAt: !1353)
!1461 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 364, column: 6)
!1462 = !DILocation(line: 364, column: 11, scope: !1461, inlinedAt: !1353)
!1463 = !DILocation(line: 364, column: 6, scope: !1349, inlinedAt: !1353)
!1464 = !DILocation(line: 364, column: 26, scope: !1461, inlinedAt: !1353)
!1465 = !DILocation(line: 365, column: 6, scope: !1466, inlinedAt: !1353)
!1466 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 365, column: 6)
!1467 = !DILocation(line: 365, column: 11, scope: !1466, inlinedAt: !1353)
!1468 = !DILocation(line: 365, column: 6, scope: !1349, inlinedAt: !1353)
!1469 = !DILocation(line: 365, column: 26, scope: !1466, inlinedAt: !1353)
!1470 = !DILocation(line: 366, column: 6, scope: !1471, inlinedAt: !1353)
!1471 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 366, column: 6)
!1472 = !DILocation(line: 366, column: 11, scope: !1471, inlinedAt: !1353)
!1473 = !DILocation(line: 366, column: 6, scope: !1349, inlinedAt: !1353)
!1474 = !DILocation(line: 366, column: 26, scope: !1471, inlinedAt: !1353)
!1475 = !DILocation(line: 367, column: 6, scope: !1476, inlinedAt: !1353)
!1476 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 367, column: 6)
!1477 = !DILocation(line: 367, column: 11, scope: !1476, inlinedAt: !1353)
!1478 = !DILocation(line: 367, column: 6, scope: !1349, inlinedAt: !1353)
!1479 = !DILocation(line: 367, column: 26, scope: !1476, inlinedAt: !1353)
!1480 = !DILocation(line: 368, column: 6, scope: !1481, inlinedAt: !1353)
!1481 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 368, column: 6)
!1482 = !DILocation(line: 368, column: 11, scope: !1481, inlinedAt: !1353)
!1483 = !DILocation(line: 368, column: 6, scope: !1349, inlinedAt: !1353)
!1484 = !DILocation(line: 368, column: 26, scope: !1481, inlinedAt: !1353)
!1485 = !DILocation(line: 369, column: 6, scope: !1486, inlinedAt: !1353)
!1486 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 369, column: 6)
!1487 = !DILocation(line: 369, column: 11, scope: !1486, inlinedAt: !1353)
!1488 = !DILocation(line: 369, column: 6, scope: !1349, inlinedAt: !1353)
!1489 = !DILocation(line: 369, column: 26, scope: !1486, inlinedAt: !1353)
!1490 = !DILocation(line: 370, column: 6, scope: !1491, inlinedAt: !1353)
!1491 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 370, column: 6)
!1492 = !DILocation(line: 370, column: 11, scope: !1491, inlinedAt: !1353)
!1493 = !DILocation(line: 370, column: 6, scope: !1349, inlinedAt: !1353)
!1494 = !DILocation(line: 370, column: 26, scope: !1491, inlinedAt: !1353)
!1495 = !DILocation(line: 371, column: 6, scope: !1496, inlinedAt: !1353)
!1496 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 371, column: 6)
!1497 = !DILocation(line: 371, column: 11, scope: !1496, inlinedAt: !1353)
!1498 = !DILocation(line: 371, column: 6, scope: !1349, inlinedAt: !1353)
!1499 = !DILocation(line: 371, column: 26, scope: !1496, inlinedAt: !1353)
!1500 = !DILocation(line: 372, column: 6, scope: !1501, inlinedAt: !1353)
!1501 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 372, column: 6)
!1502 = !DILocation(line: 372, column: 11, scope: !1501, inlinedAt: !1353)
!1503 = !DILocation(line: 372, column: 6, scope: !1349, inlinedAt: !1353)
!1504 = !DILocation(line: 372, column: 26, scope: !1501, inlinedAt: !1353)
!1505 = !DILocation(line: 373, column: 6, scope: !1506, inlinedAt: !1353)
!1506 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 373, column: 6)
!1507 = !DILocation(line: 373, column: 11, scope: !1506, inlinedAt: !1353)
!1508 = !DILocation(line: 373, column: 6, scope: !1349, inlinedAt: !1353)
!1509 = !DILocation(line: 373, column: 26, scope: !1506, inlinedAt: !1353)
!1510 = !DILocation(line: 374, column: 6, scope: !1511, inlinedAt: !1353)
!1511 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 374, column: 6)
!1512 = !DILocation(line: 374, column: 11, scope: !1511, inlinedAt: !1353)
!1513 = !DILocation(line: 374, column: 6, scope: !1349, inlinedAt: !1353)
!1514 = !DILocation(line: 374, column: 26, scope: !1511, inlinedAt: !1353)
!1515 = !DILocation(line: 375, column: 6, scope: !1516, inlinedAt: !1353)
!1516 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 375, column: 6)
!1517 = !DILocation(line: 375, column: 11, scope: !1516, inlinedAt: !1353)
!1518 = !DILocation(line: 375, column: 6, scope: !1349, inlinedAt: !1353)
!1519 = !DILocation(line: 375, column: 27, scope: !1516, inlinedAt: !1353)
!1520 = !DILocation(line: 376, column: 6, scope: !1521, inlinedAt: !1353)
!1521 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 376, column: 6)
!1522 = !DILocation(line: 376, column: 11, scope: !1521, inlinedAt: !1353)
!1523 = !DILocation(line: 376, column: 6, scope: !1349, inlinedAt: !1353)
!1524 = !DILocation(line: 376, column: 32, scope: !1521, inlinedAt: !1353)
!1525 = !DILocation(line: 377, column: 6, scope: !1526, inlinedAt: !1353)
!1526 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 377, column: 6)
!1527 = !DILocation(line: 377, column: 11, scope: !1526, inlinedAt: !1353)
!1528 = !DILocation(line: 377, column: 6, scope: !1349, inlinedAt: !1353)
!1529 = !DILocation(line: 377, column: 32, scope: !1526, inlinedAt: !1353)
!1530 = !DILocation(line: 378, column: 6, scope: !1531, inlinedAt: !1353)
!1531 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 378, column: 6)
!1532 = !DILocation(line: 378, column: 11, scope: !1531, inlinedAt: !1353)
!1533 = !DILocation(line: 378, column: 6, scope: !1349, inlinedAt: !1353)
!1534 = !DILocation(line: 378, column: 32, scope: !1531, inlinedAt: !1353)
!1535 = !DILocation(line: 379, column: 6, scope: !1536, inlinedAt: !1353)
!1536 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 379, column: 6)
!1537 = !DILocation(line: 379, column: 11, scope: !1536, inlinedAt: !1353)
!1538 = !DILocation(line: 379, column: 6, scope: !1349, inlinedAt: !1353)
!1539 = !DILocation(line: 379, column: 33, scope: !1536, inlinedAt: !1353)
!1540 = !DILocation(line: 380, column: 6, scope: !1541, inlinedAt: !1353)
!1541 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 380, column: 6)
!1542 = !DILocation(line: 380, column: 11, scope: !1541, inlinedAt: !1353)
!1543 = !DILocation(line: 380, column: 6, scope: !1349, inlinedAt: !1353)
!1544 = !DILocation(line: 380, column: 33, scope: !1541, inlinedAt: !1353)
!1545 = !DILocation(line: 381, column: 6, scope: !1546, inlinedAt: !1353)
!1546 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 381, column: 6)
!1547 = !DILocation(line: 381, column: 11, scope: !1546, inlinedAt: !1353)
!1548 = !DILocation(line: 381, column: 6, scope: !1349, inlinedAt: !1353)
!1549 = !DILocation(line: 381, column: 33, scope: !1546, inlinedAt: !1353)
!1550 = !DILocation(line: 382, column: 2, scope: !1551, inlinedAt: !1353)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !6, line: 382, column: 2)
!1552 = distinct !DILexicalBlock(scope: !1349, file: !6, line: 382, column: 2)
!1553 = !{i32 -2144101238, i32 -2144101209, i32 -2144101163, i32 -2144101105, i32 -2144101051, i32 -2144100997, i32 -2144100942, i32 -2144100911}
!1554 = !DILocation(line: 382, column: 2, scope: !1555, inlinedAt: !1353)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !6, line: 382, column: 2)
!1556 = distinct !DILexicalBlock(scope: !1552, file: !6, line: 382, column: 2)
!1557 = !{i32 -2144100468, i32 -2144100461, i32 -2144100407, i32 -2144100376, i32 -2144100346}
!1558 = !DILocation(line: 382, column: 2, scope: !1556, inlinedAt: !1353)
!1559 = !DILocation(line: 386, column: 1, scope: !1349, inlinedAt: !1353)
!1560 = !DILocation(line: 547, column: 9, scope: !1332, inlinedAt: !1335)
!1561 = !DILocation(line: 549, column: 8, scope: !1562, inlinedAt: !1335)
!1562 = distinct !DILexicalBlock(scope: !1332, file: !6, line: 549, column: 7)
!1563 = !DILocation(line: 549, column: 7, scope: !1332, inlinedAt: !1335)
!1564 = !DILocation(line: 550, column: 4, scope: !1562, inlinedAt: !1335)
!1565 = !DILocation(line: 553, column: 33, scope: !1332, inlinedAt: !1335)
!1566 = !DILocation(line: 325, column: 6, scope: !1567, inlinedAt: !1347)
!1567 = distinct !DILexicalBlock(scope: !1343, file: !6, line: 325, column: 6)
!1568 = !DILocation(line: 325, column: 6, scope: !1343, inlinedAt: !1347)
!1569 = !DILocation(line: 326, column: 3, scope: !1567, inlinedAt: !1347)
!1570 = !DILocation(line: 332, column: 9, scope: !1343, inlinedAt: !1347)
!1571 = !DILocation(line: 332, column: 15, scope: !1343, inlinedAt: !1347)
!1572 = !DILocation(line: 332, column: 2, scope: !1343, inlinedAt: !1347)
!1573 = !DILocation(line: 336, column: 1, scope: !1343, inlinedAt: !1347)
!1574 = !DILocation(line: 553, column: 5, scope: !1332, inlinedAt: !1335)
!1575 = !DILocation(line: 553, column: 41, scope: !1332, inlinedAt: !1335)
!1576 = !DILocation(line: 554, column: 5, scope: !1332, inlinedAt: !1335)
!1577 = !DILocation(line: 554, column: 12, scope: !1332, inlinedAt: !1335)
!1578 = !DILocation(line: 448, column: 31, scope: !1327, inlinedAt: !1331)
!1579 = !DILocation(line: 448, column: 34, scope: !1327, inlinedAt: !1331)
!1580 = !DILocation(line: 448, column: 14, scope: !1327, inlinedAt: !1331)
!1581 = !DILocation(line: 450, column: 22, scope: !1327, inlinedAt: !1331)
!1582 = !DILocation(line: 450, column: 25, scope: !1327, inlinedAt: !1331)
!1583 = !DILocation(line: 450, column: 30, scope: !1327, inlinedAt: !1331)
!1584 = !DILocation(line: 450, column: 36, scope: !1327, inlinedAt: !1331)
!1585 = !DILocation(line: 450, column: 8, scope: !1327, inlinedAt: !1331)
!1586 = !DILocation(line: 450, column: 6, scope: !1327, inlinedAt: !1331)
!1587 = !DILocation(line: 451, column: 9, scope: !1327, inlinedAt: !1331)
!1588 = !DILocation(line: 552, column: 3, scope: !1332, inlinedAt: !1335)
!1589 = !DILocation(line: 557, column: 19, scope: !1334, inlinedAt: !1335)
!1590 = !DILocation(line: 557, column: 25, scope: !1334, inlinedAt: !1335)
!1591 = !DILocation(line: 557, column: 9, scope: !1334, inlinedAt: !1335)
!1592 = !DILocation(line: 557, column: 2, scope: !1334, inlinedAt: !1335)
!1593 = !DILocation(line: 558, column: 1, scope: !1334, inlinedAt: !1335)
!1594 = !DILocation(line: 664, column: 2, scope: !1319)
!1595 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1596, file: !1596, line: 646, type: !1597, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !825)
!1596 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!802}
!1599 = !DILocalVariable(name: "__ret", scope: !1600, file: !1596, line: 648, type: !802)
!1600 = distinct !DILexicalBlock(scope: !1595, file: !1596, line: 648, column: 9)
!1601 = !DILocation(line: 648, column: 9, scope: !1600)
!1602 = !DILocalVariable(name: "__edi", scope: !1600, file: !1596, line: 648, type: !802)
!1603 = !DILocalVariable(name: "__esi", scope: !1600, file: !1596, line: 648, type: !802)
!1604 = !DILocalVariable(name: "__edx", scope: !1600, file: !1596, line: 648, type: !802)
!1605 = !DILocalVariable(name: "__ecx", scope: !1600, file: !1596, line: 648, type: !802)
!1606 = !DILocalVariable(name: "__eax", scope: !1600, file: !1596, line: 648, type: !802)
!1607 = !DILocation(line: 648, column: 9, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !1596, line: 648, column: 9)
!1609 = distinct !DILexicalBlock(scope: !1600, file: !1596, line: 648, column: 9)
!1610 = !{i32 -2145774844, i32 -2145772529, i32 -2145772295, i32 -2145772244, i32 -2145772216, i32 -2145772191, i32 -2145772507, i32 -2145772494, i32 -2145772056, i32 -2145771937, i32 -2145772402, i32 -2145772375, i32 -2145772347, i32 -2145772317}
!1611 = !DILocalVariable(name: "__mask", scope: !1612, file: !1596, line: 648, type: !802)
!1612 = distinct !DILexicalBlock(scope: !1608, file: !1596, line: 648, column: 9)
!1613 = !DILocation(line: 648, column: 9, scope: !1612)
!1614 = !DILocation(line: 648, column: 9, scope: !1609)
!1615 = !DILocation(line: 648, column: 2, scope: !1595)
!1616 = distinct !DISubprogram(name: "get_order", scope: !1617, file: !1617, line: 29, type: !984, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !825)
!1617 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1618 = !DILocalVariable(name: "x", arg: 1, scope: !1619, file: !1620, line: 366, type: !22)
!1619 = distinct !DISubprogram(name: "fls64", scope: !1620, file: !1620, line: 366, type: !1621, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !825)
!1620 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!986, !22}
!1623 = !DILocation(line: 366, column: 40, scope: !1619, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 46, column: 9, scope: !1616)
!1625 = !DILocalVariable(name: "bitpos", scope: !1619, file: !1620, line: 368, type: !986)
!1626 = !DILocation(line: 368, column: 6, scope: !1619, inlinedAt: !1624)
!1627 = !DILocalVariable(name: "size", arg: 1, scope: !1616, file: !1617, line: 29, type: !802)
!1628 = !DILocation(line: 29, column: 63, scope: !1616)
!1629 = !DILocation(line: 31, column: 27, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1616, file: !1617, line: 31, column: 6)
!1631 = !DILocation(line: 31, column: 6, scope: !1630)
!1632 = !DILocation(line: 31, column: 6, scope: !1616)
!1633 = !DILocation(line: 32, column: 8, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !1617, line: 32, column: 7)
!1635 = distinct !DILexicalBlock(scope: !1630, file: !1617, line: 31, column: 34)
!1636 = !DILocation(line: 32, column: 7, scope: !1635)
!1637 = !DILocation(line: 33, column: 4, scope: !1634)
!1638 = !DILocation(line: 35, column: 7, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1635, file: !1617, line: 35, column: 7)
!1640 = !DILocation(line: 35, column: 12, scope: !1639)
!1641 = !DILocation(line: 35, column: 7, scope: !1635)
!1642 = !DILocation(line: 36, column: 4, scope: !1639)
!1643 = !DILocation(line: 38, column: 10, scope: !1635)
!1644 = !DILocation(line: 38, column: 28, scope: !1635)
!1645 = !DILocation(line: 38, column: 41, scope: !1635)
!1646 = !DILocation(line: 38, column: 3, scope: !1635)
!1647 = !DILocation(line: 41, column: 6, scope: !1616)
!1648 = !DILocation(line: 42, column: 7, scope: !1616)
!1649 = !DILocation(line: 46, column: 15, scope: !1616)
!1650 = !DILocation(line: 374, column: 2, scope: !1619, inlinedAt: !1624)
!1651 = !DILocation(line: 376, column: 14, scope: !1619, inlinedAt: !1624)
!1652 = !{i32 669964}
!1653 = !DILocation(line: 377, column: 9, scope: !1619, inlinedAt: !1624)
!1654 = !DILocation(line: 377, column: 16, scope: !1619, inlinedAt: !1624)
!1655 = !DILocation(line: 46, column: 2, scope: !1616)
!1656 = !DILocation(line: 48, column: 1, scope: !1616)
!1657 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1658, file: !1658, line: 30, type: !1659, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !825)
!1658 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!986, !21}
!1661 = !DILocation(line: 366, column: 40, scope: !1619, inlinedAt: !1662)
!1662 = distinct !DILocation(line: 32, column: 9, scope: !1657)
!1663 = !DILocation(line: 368, column: 6, scope: !1619, inlinedAt: !1662)
!1664 = !DILocalVariable(name: "n", arg: 1, scope: !1657, file: !1658, line: 30, type: !21)
!1665 = !DILocation(line: 30, column: 21, scope: !1657)
!1666 = !DILocation(line: 32, column: 15, scope: !1657)
!1667 = !DILocation(line: 374, column: 2, scope: !1619, inlinedAt: !1662)
!1668 = !DILocation(line: 376, column: 14, scope: !1619, inlinedAt: !1662)
!1669 = !DILocation(line: 377, column: 9, scope: !1619, inlinedAt: !1662)
!1670 = !DILocation(line: 377, column: 16, scope: !1619, inlinedAt: !1662)
!1671 = !DILocation(line: 32, column: 18, scope: !1657)
!1672 = !DILocation(line: 32, column: 2, scope: !1657)
!1673 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1674, file: !1674, line: 137, type: !1675, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !825)
!1674 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!34, !1148, !919, !1322, !800}
!1677 = !DILocalVariable(name: "s", arg: 1, scope: !1673, file: !1674, line: 137, type: !1148)
!1678 = !DILocation(line: 137, column: 54, scope: !1673)
!1679 = !DILocalVariable(name: "object", arg: 2, scope: !1673, file: !1674, line: 137, type: !919)
!1680 = !DILocation(line: 137, column: 69, scope: !1673)
!1681 = !DILocalVariable(name: "size", arg: 3, scope: !1673, file: !1674, line: 138, type: !1322)
!1682 = !DILocation(line: 138, column: 12, scope: !1673)
!1683 = !DILocalVariable(name: "flags", arg: 4, scope: !1673, file: !1674, line: 138, type: !800)
!1684 = !DILocation(line: 138, column: 24, scope: !1673)
!1685 = !DILocation(line: 140, column: 17, scope: !1673)
!1686 = !DILocation(line: 140, column: 2, scope: !1673)
!1687 = distinct !DISubprogram(name: "kmem_cache_zalloc", scope: !6, file: !6, line: 652, type: !1688, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !825)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!34, !1148, !800}
!1690 = !DILocalVariable(name: "k", arg: 1, scope: !1687, file: !6, line: 652, type: !1148)
!1691 = !DILocation(line: 652, column: 58, scope: !1687)
!1692 = !DILocalVariable(name: "flags", arg: 2, scope: !1687, file: !6, line: 652, type: !800)
!1693 = !DILocation(line: 652, column: 67, scope: !1687)
!1694 = !DILocation(line: 654, column: 26, scope: !1687)
!1695 = !DILocation(line: 654, column: 29, scope: !1687)
!1696 = !DILocation(line: 654, column: 35, scope: !1687)
!1697 = !DILocation(line: 654, column: 9, scope: !1687)
!1698 = !DILocation(line: 654, column: 2, scope: !1687)
!1699 = distinct !DISubprogram(name: "acpi_ut_get_element_length", scope: !3, file: !3, line: 555, type: !1700, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !825)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!157, !14, !43, !274, !34}
!1702 = !DILocalVariable(name: "object_type", arg: 1, scope: !1699, file: !3, line: 555, type: !14)
!1703 = !DILocation(line: 555, column: 31, scope: !1699)
!1704 = !DILocalVariable(name: "source_object", arg: 2, scope: !1699, file: !3, line: 556, type: !43)
!1705 = !DILocation(line: 556, column: 34, scope: !1699)
!1706 = !DILocalVariable(name: "state", arg: 3, scope: !1699, file: !3, line: 557, type: !274)
!1707 = !DILocation(line: 557, column: 33, scope: !1699)
!1708 = !DILocalVariable(name: "context", arg: 4, scope: !1699, file: !3, line: 557, type: !34)
!1709 = !DILocation(line: 557, column: 46, scope: !1699)
!1710 = !DILocalVariable(name: "status", scope: !1699, file: !3, line: 559, type: !157)
!1711 = !DILocation(line: 559, column: 14, scope: !1699)
!1712 = !DILocalVariable(name: "info", scope: !1699, file: !3, line: 560, type: !803)
!1713 = !DILocation(line: 560, column: 24, scope: !1699)
!1714 = !DILocation(line: 560, column: 55, scope: !1699)
!1715 = !DILocation(line: 560, column: 31, scope: !1699)
!1716 = !DILocalVariable(name: "object_space", scope: !1699, file: !3, line: 561, type: !19)
!1717 = !DILocation(line: 561, column: 12, scope: !1699)
!1718 = !DILocation(line: 563, column: 10, scope: !1699)
!1719 = !DILocation(line: 563, column: 2, scope: !1699)
!1720 = !DILocation(line: 570, column: 38, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 563, column: 23)
!1722 = !DILocation(line: 570, column: 7, scope: !1721)
!1723 = !DILocation(line: 569, column: 10, scope: !1721)
!1724 = !DILocation(line: 572, column: 7, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 572, column: 7)
!1726 = !DILocation(line: 572, column: 7, scope: !1721)
!1727 = !DILocation(line: 573, column: 12, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 572, column: 29)
!1729 = !DILocation(line: 573, column: 4, scope: !1728)
!1730 = !DILocation(line: 576, column: 19, scope: !1721)
!1731 = !DILocation(line: 576, column: 3, scope: !1721)
!1732 = !DILocation(line: 576, column: 9, scope: !1721)
!1733 = !DILocation(line: 576, column: 16, scope: !1721)
!1734 = !DILocation(line: 577, column: 3, scope: !1721)
!1735 = !DILocation(line: 583, column: 3, scope: !1721)
!1736 = !DILocation(line: 583, column: 9, scope: !1721)
!1737 = !DILocation(line: 583, column: 21, scope: !1721)
!1738 = !DILocation(line: 584, column: 3, scope: !1721)
!1739 = !DILocation(line: 584, column: 10, scope: !1721)
!1740 = !DILocation(line: 584, column: 14, scope: !1721)
!1741 = !DILocation(line: 584, column: 30, scope: !1721)
!1742 = !DILocation(line: 585, column: 3, scope: !1721)
!1743 = !DILocation(line: 591, column: 3, scope: !1721)
!1744 = !DILocation(line: 594, column: 10, scope: !1699)
!1745 = !DILocation(line: 594, column: 2, scope: !1699)
!1746 = !DILocation(line: 595, column: 1, scope: !1699)
