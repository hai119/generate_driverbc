; ModuleID = '../bcout/drivers/acpi/acpica/rscreate.llvm.bc'
source_filename = "drivers/acpi/acpica/rscreate.c"
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
%struct.acpi_resource = type { i32, i32, %union.acpi_resource_data }
%union.acpi_resource_data = type { %struct.acpi_resource_vendor_typed, [40 x i8] }
%struct.acpi_resource_vendor_typed = type { i16, i8, [16 x i8], [1 x i8] }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, i32 (%struct.acpi_walk_state*)* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_buffer = type { i64, i8* }
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }
%struct.acpi_pci_routing_table = type { i32, i32, i64, i32, [4 x i8] }
%struct.acpi_object_package = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i32, i32 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_reference = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, i8*, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i8*, i32 }
%struct.acpi_object_string = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32 }

@_acpi_module_name = internal constant [9 x i8] c"rscreate\00", align 1, !dbg !0
@.str = private unnamed_addr constant [52 x i8] c"(PRT[%u]) Need package of length 4, found length %u\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"(PRT[%u].Address) Need Integer, found %s\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"(PRT[%u].Pin) Need Integer, found %s\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"(PRT[%u].Source) Need name, found Reference Class 0x%X\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"(PRT[%u].Source) Need Ref/String/Integer, found %s\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"(PRT[%u].SourceIndex) Need Integer, found %s\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_buffer_to_resource(i8* %aml_buffer, i16 zeroext %aml_buffer_length, %struct.acpi_resource** %resource_ptr) #0 !dbg !68 {
entry:
  %retval = alloca i32, align 4
  %aml_buffer.addr = alloca i8*, align 8
  %aml_buffer_length.addr = alloca i16, align 2
  %resource_ptr.addr = alloca %struct.acpi_resource**, align 8
  %status = alloca i32, align 4
  %list_size_needed = alloca i64, align 8
  %resource = alloca i8*, align 8
  %current_resource_ptr = alloca i8*, align 8
  store i8* %aml_buffer, i8** %aml_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %aml_buffer.addr, metadata !442, metadata !DIExpression()), !dbg !443
  store i16 %aml_buffer_length, i16* %aml_buffer_length.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %aml_buffer_length.addr, metadata !444, metadata !DIExpression()), !dbg !445
  store %struct.acpi_resource** %resource_ptr, %struct.acpi_resource*** %resource_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource*** %resource_ptr.addr, metadata !446, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.declare(metadata i32* %status, metadata !448, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.declare(metadata i64* %list_size_needed, metadata !450, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.declare(metadata i8** %resource, metadata !452, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.declare(metadata i8** %current_resource_ptr, metadata !454, metadata !DIExpression()), !dbg !455
  %0 = load i8*, i8** %aml_buffer.addr, align 8, !dbg !456
  %1 = load i16, i16* %aml_buffer_length.addr, align 2, !dbg !457
  %conv = zext i16 %1 to i32, !dbg !457
  %call = call i32 @acpi_rs_get_list_length(i8* %0, i32 %conv, i64* %list_size_needed) #8, !dbg !458
  store i32 %call, i32* %status, align 4, !dbg !459
  %2 = load i32, i32* %status, align 4, !dbg !460
  %cmp = icmp eq i32 %2, 12316, !dbg !462
  br i1 %cmp, label %if.then, label %if.end, !dbg !463

if.then:                                          ; preds = %entry
  store i32 0, i32* %status, align 4, !dbg !464
  br label %if.end, !dbg !466

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %status, align 4, !dbg !467
  %tobool = icmp ne i32 %3, 0, !dbg !467
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !469

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* %status, align 4, !dbg !470
  store i32 %4, i32* %retval, align 4, !dbg !470
  br label %return, !dbg !470

if.end3:                                          ; preds = %if.end
  %5 = load i64, i64* %list_size_needed, align 8, !dbg !472
  %call4 = call i8* @acpi_os_allocate_zeroed(i64 %5) #8, !dbg !472
  store i8* %call4, i8** %resource, align 8, !dbg !473
  %6 = load i8*, i8** %resource, align 8, !dbg !474
  store i8* %6, i8** %current_resource_ptr, align 8, !dbg !475
  %7 = load i8*, i8** %resource, align 8, !dbg !476
  %tobool5 = icmp ne i8* %7, null, !dbg !476
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !478

if.then6:                                         ; preds = %if.end3
  store i32 4, i32* %retval, align 4, !dbg !479
  br label %return, !dbg !479

if.end7:                                          ; preds = %if.end3
  %8 = load i8*, i8** %aml_buffer.addr, align 8, !dbg !481
  %9 = load i16, i16* %aml_buffer_length.addr, align 2, !dbg !482
  %conv8 = zext i16 %9 to i64, !dbg !482
  %call9 = call i32 @acpi_ut_walk_aml_resources(%struct.acpi_walk_state* null, i8* %8, i64 %conv8, i32 (i8*, i32, i32, i8, i8**)* @acpi_rs_convert_aml_to_resources, i8** %current_resource_ptr) #8, !dbg !483
  store i32 %call9, i32* %status, align 4, !dbg !484
  %10 = load i32, i32* %status, align 4, !dbg !485
  %cmp10 = icmp eq i32 %10, 12316, !dbg !487
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !488

if.then12:                                        ; preds = %if.end7
  store i32 0, i32* %status, align 4, !dbg !489
  br label %if.end13, !dbg !491

if.end13:                                         ; preds = %if.then12, %if.end7
  %11 = load i32, i32* %status, align 4, !dbg !492
  %tobool14 = icmp ne i32 %11, 0, !dbg !492
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !494

if.then15:                                        ; preds = %if.end13
  %12 = load i8*, i8** %resource, align 8, !dbg !495
  call void @acpi_os_free(i8* %12) #8, !dbg !495
  br label %if.end16, !dbg !497

if.else:                                          ; preds = %if.end13
  %13 = load i8*, i8** %resource, align 8, !dbg !498
  %14 = bitcast i8* %13 to %struct.acpi_resource*, !dbg !498
  %15 = load %struct.acpi_resource**, %struct.acpi_resource*** %resource_ptr.addr, align 8, !dbg !500
  store %struct.acpi_resource* %14, %struct.acpi_resource** %15, align 8, !dbg !501
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  %16 = load i32, i32* %status, align 4, !dbg !502
  store i32 %16, i32* %retval, align 4, !dbg !502
  br label %return, !dbg !502

return:                                           ; preds = %if.end16, %if.then6, %if.then2
  %17 = load i32, i32* %retval, align 4, !dbg !503
  ret i32 %17, !dbg !503
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_rs_get_list_length(i8*, i32, i64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !504 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !508, metadata !DIExpression()), !dbg !514
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !518, metadata !DIExpression()), !dbg !519
  %0 = load i64, i64* %size.addr, align 8, !dbg !520
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !521, metadata !DIExpression()), !dbg !522
  br label %do.body, !dbg !522

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !523, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !527, metadata !DIExpression()), !dbg !526
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !526
  %conv = zext i1 %cmp to i32, !dbg !526
  store i32 1, i32* %tmp, align 4, !dbg !526
  %1 = load i32, i32* %tmp, align 4, !dbg !526
  %call = call i64 @arch_local_save_flags() #8, !dbg !528
  store i64 %call, i64* %_flags, align 8, !dbg !528
  br label %do.end, !dbg !528

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !529, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !532, metadata !DIExpression()), !dbg !531
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !531
  %conv6 = zext i1 %cmp5 to i32, !dbg !531
  store i32 1, i32* %tmp7, align 4, !dbg !531
  %2 = load i32, i32* %tmp7, align 4, !dbg !531
  %3 = load i64, i64* %_flags, align 8, !dbg !533
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !534
  %and.i = and i64 %4, 512, !dbg !535
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !536
  %lnot.i = xor i1 %tobool.i, true, !dbg !536
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !536
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !533
  %5 = load i32, i32* %tmp8, align 4, !dbg !533
  store i32 %5, i32* %tmp1, align 4, !dbg !528
  %6 = load i32, i32* %tmp1, align 4, !dbg !522
  %tobool = icmp ne i32 %6, 0, !dbg !537
  %7 = zext i1 %tobool to i64, !dbg !537
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !537
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #8, !dbg !538
  ret i8* %call10, !dbg !539
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_walk_aml_resources(%struct.acpi_walk_state*, i8*, i64, i32 (i8*, i32, i32, i8, i8**)*, i8**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_rs_convert_aml_to_resources(i8*, i32, i32, i8 zeroext, i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !540 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !543, metadata !DIExpression()), !dbg !544
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !545
  call void @kfree(i8* %0) #8, !dbg !546
  ret void, !dbg !547
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_rs_create_resource_list(%union.acpi_operand_object* %aml_buffer, %struct.acpi_buffer* %output_buffer) #0 !dbg !548 {
entry:
  %retval = alloca i32, align 4
  %aml_buffer.addr = alloca %union.acpi_operand_object*, align 8
  %output_buffer.addr = alloca %struct.acpi_buffer*, align 8
  %status = alloca i32, align 4
  %aml_start = alloca i8*, align 8
  %list_size_needed = alloca i64, align 8
  %aml_buffer_length = alloca i32, align 4
  %resource = alloca i8*, align 8
  store %union.acpi_operand_object* %aml_buffer, %union.acpi_operand_object** %aml_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %aml_buffer.addr, metadata !1304, metadata !DIExpression()), !dbg !1305
  store %struct.acpi_buffer* %output_buffer, %struct.acpi_buffer** %output_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %output_buffer.addr, metadata !1306, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1308, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.declare(metadata i8** %aml_start, metadata !1310, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.declare(metadata i64* %list_size_needed, metadata !1312, metadata !DIExpression()), !dbg !1313
  store i64 0, i64* %list_size_needed, align 8, !dbg !1313
  call void @llvm.dbg.declare(metadata i32* %aml_buffer_length, metadata !1314, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.declare(metadata i8** %resource, metadata !1316, metadata !DIExpression()), !dbg !1317
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %aml_buffer.addr, align 8, !dbg !1318
  %buffer = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_buffer*, !dbg !1319
  %length = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 6, !dbg !1320
  %1 = load i32, i32* %length, align 8, !dbg !1320
  store i32 %1, i32* %aml_buffer_length, align 4, !dbg !1321
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %aml_buffer.addr, align 8, !dbg !1322
  %buffer1 = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_buffer*, !dbg !1323
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer1, i32 0, i32 5, !dbg !1324
  %3 = load i8*, i8** %pointer, align 8, !dbg !1324
  store i8* %3, i8** %aml_start, align 8, !dbg !1325
  %4 = load i8*, i8** %aml_start, align 8, !dbg !1326
  %5 = load i32, i32* %aml_buffer_length, align 4, !dbg !1327
  %call = call i32 @acpi_rs_get_list_length(i8* %4, i32 %5, i64* %list_size_needed) #8, !dbg !1328
  store i32 %call, i32* %status, align 4, !dbg !1329
  %6 = load i32, i32* %status, align 4, !dbg !1330
  %tobool = icmp ne i32 %6, 0, !dbg !1330
  br i1 %tobool, label %if.then, label %if.end, !dbg !1332

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %status, align 4, !dbg !1333
  store i32 %7, i32* %retval, align 4, !dbg !1333
  br label %return, !dbg !1333

if.end:                                           ; preds = %entry
  %8 = load %struct.acpi_buffer*, %struct.acpi_buffer** %output_buffer.addr, align 8, !dbg !1335
  %9 = load i64, i64* %list_size_needed, align 8, !dbg !1336
  %call2 = call i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer* %8, i64 %9) #8, !dbg !1337
  store i32 %call2, i32* %status, align 4, !dbg !1338
  %10 = load i32, i32* %status, align 4, !dbg !1339
  %tobool3 = icmp ne i32 %10, 0, !dbg !1339
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1341

if.then4:                                         ; preds = %if.end
  %11 = load i32, i32* %status, align 4, !dbg !1342
  store i32 %11, i32* %retval, align 4, !dbg !1342
  br label %return, !dbg !1342

if.end5:                                          ; preds = %if.end
  %12 = load %struct.acpi_buffer*, %struct.acpi_buffer** %output_buffer.addr, align 8, !dbg !1344
  %pointer6 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %12, i32 0, i32 1, !dbg !1345
  %13 = load i8*, i8** %pointer6, align 8, !dbg !1345
  store i8* %13, i8** %resource, align 8, !dbg !1346
  %14 = load i8*, i8** %aml_start, align 8, !dbg !1347
  %15 = load i32, i32* %aml_buffer_length, align 4, !dbg !1348
  %conv = zext i32 %15 to i64, !dbg !1348
  %call7 = call i32 @acpi_ut_walk_aml_resources(%struct.acpi_walk_state* null, i8* %14, i64 %conv, i32 (i8*, i32, i32, i8, i8**)* @acpi_rs_convert_aml_to_resources, i8** %resource) #8, !dbg !1349
  store i32 %call7, i32* %status, align 4, !dbg !1350
  %16 = load i32, i32* %status, align 4, !dbg !1351
  %tobool8 = icmp ne i32 %16, 0, !dbg !1351
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1353

if.then9:                                         ; preds = %if.end5
  %17 = load i32, i32* %status, align 4, !dbg !1354
  store i32 %17, i32* %retval, align 4, !dbg !1354
  br label %return, !dbg !1354

if.end10:                                         ; preds = %if.end5
  store i32 0, i32* %retval, align 4, !dbg !1356
  br label %return, !dbg !1356

return:                                           ; preds = %if.end10, %if.then9, %if.then4, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !1357
  ret i32 %18, !dbg !1357
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_rs_create_pci_routing_table(%union.acpi_operand_object* %package_object, %struct.acpi_buffer* %output_buffer) #0 !dbg !1358 {
entry:
  %retval = alloca i32, align 4
  %package_object.addr = alloca %union.acpi_operand_object*, align 8
  %output_buffer.addr = alloca %struct.acpi_buffer*, align 8
  %buffer = alloca i8*, align 8
  %top_object_list = alloca %union.acpi_operand_object**, align 8
  %sub_object_list = alloca %union.acpi_operand_object**, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %buffer_size_needed = alloca i64, align 8
  %number_of_elements = alloca i32, align 4
  %index = alloca i32, align 4
  %user_prt = alloca %struct.acpi_pci_routing_table*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  %path_buffer = alloca %struct.acpi_buffer, align 8
  store %union.acpi_operand_object* %package_object, %union.acpi_operand_object** %package_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %package_object.addr, metadata !1359, metadata !DIExpression()), !dbg !1360
  store %struct.acpi_buffer* %output_buffer, %struct.acpi_buffer** %output_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %output_buffer.addr, metadata !1361, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.declare(metadata i8** %buffer, metadata !1363, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %top_object_list, metadata !1365, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %sub_object_list, metadata !1367, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1369, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.declare(metadata i64* %buffer_size_needed, metadata !1371, metadata !DIExpression()), !dbg !1372
  store i64 0, i64* %buffer_size_needed, align 8, !dbg !1372
  call void @llvm.dbg.declare(metadata i32* %number_of_elements, metadata !1373, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.declare(metadata i32* %index, metadata !1375, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_routing_table** %user_prt, metadata !1377, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1379, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1381, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %path_buffer, metadata !1383, metadata !DIExpression()), !dbg !1384
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_object.addr, align 8, !dbg !1385
  %call = call i32 @acpi_rs_get_pci_routing_table_length(%union.acpi_operand_object* %0, i64* %buffer_size_needed) #8, !dbg !1386
  store i32 %call, i32* %status, align 4, !dbg !1387
  %1 = load i32, i32* %status, align 4, !dbg !1388
  %tobool = icmp ne i32 %1, 0, !dbg !1388
  br i1 %tobool, label %if.then, label %if.end, !dbg !1390

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !1391
  store i32 %2, i32* %retval, align 4, !dbg !1391
  br label %return, !dbg !1391

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_buffer*, %struct.acpi_buffer** %output_buffer.addr, align 8, !dbg !1393
  %4 = load i64, i64* %buffer_size_needed, align 8, !dbg !1394
  %call1 = call i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer* %3, i64 %4) #8, !dbg !1395
  store i32 %call1, i32* %status, align 4, !dbg !1396
  %5 = load i32, i32* %status, align 4, !dbg !1397
  %tobool2 = icmp ne i32 %5, 0, !dbg !1397
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1399

if.then3:                                         ; preds = %if.end
  %6 = load i32, i32* %status, align 4, !dbg !1400
  store i32 %6, i32* %retval, align 4, !dbg !1400
  br label %return, !dbg !1400

if.end4:                                          ; preds = %if.end
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_object.addr, align 8, !dbg !1402
  %package = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_package*, !dbg !1403
  %elements = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 6, !dbg !1404
  %8 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1404
  store %union.acpi_operand_object** %8, %union.acpi_operand_object*** %top_object_list, align 8, !dbg !1405
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_object.addr, align 8, !dbg !1406
  %package5 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_package*, !dbg !1407
  %count = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package5, i32 0, i32 9, !dbg !1408
  %10 = load i32, i32* %count, align 4, !dbg !1408
  store i32 %10, i32* %number_of_elements, align 4, !dbg !1409
  %11 = load %struct.acpi_buffer*, %struct.acpi_buffer** %output_buffer.addr, align 8, !dbg !1410
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 1, !dbg !1411
  %12 = load i8*, i8** %pointer, align 8, !dbg !1411
  store i8* %12, i8** %buffer, align 8, !dbg !1412
  %13 = load i8*, i8** %buffer, align 8, !dbg !1413
  %14 = bitcast i8* %13 to %struct.acpi_pci_routing_table*, !dbg !1413
  store %struct.acpi_pci_routing_table* %14, %struct.acpi_pci_routing_table** %user_prt, align 8, !dbg !1414
  store i32 0, i32* %index, align 4, !dbg !1415
  br label %for.cond, !dbg !1417

for.cond:                                         ; preds = %for.inc, %if.end4
  %15 = load i32, i32* %index, align 4, !dbg !1418
  %16 = load i32, i32* %number_of_elements, align 4, !dbg !1420
  %cmp = icmp ult i32 %15, %16, !dbg !1421
  br i1 %cmp, label %for.body, label %for.end, !dbg !1422

for.body:                                         ; preds = %for.cond
  %17 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %user_prt, align 8, !dbg !1423
  %length = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %17, i32 0, i32 0, !dbg !1425
  %18 = load i32, i32* %length, align 8, !dbg !1425
  %19 = load i8*, i8** %buffer, align 8, !dbg !1426
  %idx.ext = zext i32 %18 to i64, !dbg !1426
  %add.ptr = getelementptr i8, i8* %19, i64 %idx.ext, !dbg !1426
  store i8* %add.ptr, i8** %buffer, align 8, !dbg !1426
  %20 = load i8*, i8** %buffer, align 8, !dbg !1427
  %21 = bitcast i8* %20 to %struct.acpi_pci_routing_table*, !dbg !1427
  store %struct.acpi_pci_routing_table* %21, %struct.acpi_pci_routing_table** %user_prt, align 8, !dbg !1428
  %22 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %user_prt, align 8, !dbg !1429
  %length6 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %22, i32 0, i32 0, !dbg !1430
  store i32 20, i32* %length6, align 8, !dbg !1431
  %23 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %top_object_list, align 8, !dbg !1432
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %23, align 8, !dbg !1434
  %package7 = bitcast %union.acpi_operand_object* %24 to %struct.acpi_object_package*, !dbg !1435
  %count8 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package7, i32 0, i32 9, !dbg !1436
  %25 = load i32, i32* %count8, align 4, !dbg !1436
  %cmp9 = icmp ne i32 %25, 4, !dbg !1437
  br i1 %cmp9, label %if.then10, label %if.end13, !dbg !1438

if.then10:                                        ; preds = %for.body
  %26 = load i32, i32* %index, align 4, !dbg !1439
  %27 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %top_object_list, align 8, !dbg !1439
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %27, align 8, !dbg !1439
  %package11 = bitcast %union.acpi_operand_object* %28 to %struct.acpi_object_package*, !dbg !1439
  %count12 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package11, i32 0, i32 9, !dbg !1439
  %29 = load i32, i32* %count12, align 4, !dbg !1439
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 248, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29) #8, !dbg !1439
  store i32 12299, i32* %retval, align 4, !dbg !1441
  br label %return, !dbg !1441

if.end13:                                         ; preds = %for.body
  %30 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %top_object_list, align 8, !dbg !1442
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %30, align 8, !dbg !1443
  %package14 = bitcast %union.acpi_operand_object* %31 to %struct.acpi_object_package*, !dbg !1444
  %elements15 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package14, i32 0, i32 6, !dbg !1445
  %32 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements15, align 8, !dbg !1445
  store %union.acpi_operand_object** %32, %union.acpi_operand_object*** %sub_object_list, align 8, !dbg !1446
  %33 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_object_list, align 8, !dbg !1447
  %arrayidx = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %33, i64 0, !dbg !1447
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx, align 8, !dbg !1447
  store %union.acpi_operand_object* %34, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1448
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1449
  %tobool16 = icmp ne %union.acpi_operand_object* %35, null, !dbg !1449
  br i1 %tobool16, label %lor.lhs.false, label %if.then19, !dbg !1451

lor.lhs.false:                                    ; preds = %if.end13
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1452
  %common = bitcast %union.acpi_operand_object* %36 to %struct.acpi_object_common*, !dbg !1453
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1454
  %37 = load i8, i8* %type, align 1, !dbg !1454
  %conv = zext i8 %37 to i32, !dbg !1452
  %cmp17 = icmp ne i32 %conv, 1, !dbg !1455
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !1456

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  %38 = load i32, i32* %index, align 4, !dbg !1457
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1457
  %call20 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %39) #8, !dbg !1457
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 265, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %38, i8* %call20) #8, !dbg !1457
  store i32 4100, i32* %retval, align 4, !dbg !1459
  br label %return, !dbg !1459

if.end21:                                         ; preds = %lor.lhs.false
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1460
  %integer = bitcast %union.acpi_operand_object* %40 to %struct.acpi_object_integer*, !dbg !1461
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1462
  %41 = load i64, i64* %value, align 8, !dbg !1462
  %42 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %user_prt, align 8, !dbg !1463
  %address = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %42, i32 0, i32 2, !dbg !1464
  store i64 %41, i64* %address, align 8, !dbg !1465
  %43 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_object_list, align 8, !dbg !1466
  %arrayidx22 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %43, i64 1, !dbg !1466
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx22, align 8, !dbg !1466
  store %union.acpi_operand_object* %44, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1467
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1468
  %tobool23 = icmp ne %union.acpi_operand_object* %45, null, !dbg !1468
  br i1 %tobool23, label %lor.lhs.false24, label %if.then30, !dbg !1470

lor.lhs.false24:                                  ; preds = %if.end21
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1471
  %common25 = bitcast %union.acpi_operand_object* %46 to %struct.acpi_object_common*, !dbg !1472
  %type26 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common25, i32 0, i32 2, !dbg !1473
  %47 = load i8, i8* %type26, align 1, !dbg !1473
  %conv27 = zext i8 %47 to i32, !dbg !1471
  %cmp28 = icmp ne i32 %conv27, 1, !dbg !1474
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !1475

if.then30:                                        ; preds = %lor.lhs.false24, %if.end21
  %48 = load i32, i32* %index, align 4, !dbg !1476
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1476
  %call31 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %49) #8, !dbg !1476
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 278, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %48, i8* %call31) #8, !dbg !1476
  store i32 4100, i32* %retval, align 4, !dbg !1478
  br label %return, !dbg !1478

if.end32:                                         ; preds = %lor.lhs.false24
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1479
  %integer33 = bitcast %union.acpi_operand_object* %50 to %struct.acpi_object_integer*, !dbg !1480
  %value34 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer33, i32 0, i32 6, !dbg !1481
  %51 = load i64, i64* %value34, align 8, !dbg !1481
  %conv35 = trunc i64 %51 to i32, !dbg !1482
  %52 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %user_prt, align 8, !dbg !1483
  %pin = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %52, i32 0, i32 1, !dbg !1484
  store i32 %conv35, i32* %pin, align 4, !dbg !1485
  %53 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_object_list, align 8, !dbg !1486
  %arrayidx36 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %53, i64 2, !dbg !1486
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx36, align 8, !dbg !1486
  store %union.acpi_operand_object* %54, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1487
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1488
  %tobool37 = icmp ne %union.acpi_operand_object* %55, null, !dbg !1488
  br i1 %tobool37, label %if.then38, label %if.end86, !dbg !1490

if.then38:                                        ; preds = %if.end32
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1491
  %common39 = bitcast %union.acpi_operand_object* %56 to %struct.acpi_object_common*, !dbg !1493
  %type40 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common39, i32 0, i32 2, !dbg !1494
  %57 = load i8, i8* %type40, align 1, !dbg !1494
  %conv41 = zext i8 %57 to i32, !dbg !1491
  switch i32 %conv41, label %sw.default [
    i32 20, label %sw.bb
    i32 2, label %sw.bb70
    i32 1, label %sw.bb80
  ], !dbg !1495

sw.bb:                                            ; preds = %if.then38
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1496
  %reference = bitcast %union.acpi_operand_object* %58 to %struct.acpi_object_reference*, !dbg !1499
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 5, !dbg !1500
  %59 = load i8, i8* %class, align 1, !dbg !1500
  %conv42 = zext i8 %59 to i32, !dbg !1496
  %cmp43 = icmp ne i32 %conv42, 5, !dbg !1501
  br i1 %cmp43, label %if.then45, label %if.end49, !dbg !1502

if.then45:                                        ; preds = %sw.bb
  %60 = load i32, i32* %index, align 4, !dbg !1503
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1503
  %reference46 = bitcast %union.acpi_operand_object* %61 to %struct.acpi_object_reference*, !dbg !1503
  %class47 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference46, i32 0, i32 5, !dbg !1503
  %62 = load i8, i8* %class47, align 1, !dbg !1503
  %conv48 = zext i8 %62 to i32, !dbg !1503
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 298, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %conv48) #8, !dbg !1503
  store i32 4100, i32* %retval, align 4, !dbg !1505
  br label %return, !dbg !1505

if.end49:                                         ; preds = %sw.bb
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1506
  %reference50 = bitcast %union.acpi_operand_object* %63 to %struct.acpi_object_reference*, !dbg !1507
  %node51 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference50, i32 0, i32 9, !dbg !1508
  %64 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node51, align 8, !dbg !1508
  store %struct.acpi_namespace_node* %64, %struct.acpi_namespace_node** %node, align 8, !dbg !1509
  %65 = load %struct.acpi_buffer*, %struct.acpi_buffer** %output_buffer.addr, align 8, !dbg !1510
  %length52 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %65, i32 0, i32 0, !dbg !1511
  %66 = load i64, i64* %length52, align 8, !dbg !1511
  %67 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %user_prt, align 8, !dbg !1512
  %source = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %67, i32 0, i32 4, !dbg !1513
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %source, i64 0, i64 0, !dbg !1512
  %68 = load %struct.acpi_buffer*, %struct.acpi_buffer** %output_buffer.addr, align 8, !dbg !1514
  %pointer53 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %68, i32 0, i32 1, !dbg !1515
  %69 = load i8*, i8** %pointer53, align 8, !dbg !1515
  %sub.ptr.lhs.cast = ptrtoint i8* %arraydecay to i64, !dbg !1516
  %sub.ptr.rhs.cast = ptrtoint i8* %69 to i64, !dbg !1516
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1516
  %conv54 = trunc i64 %sub.ptr.sub to i32, !dbg !1517
  %conv55 = zext i32 %conv54 to i64, !dbg !1517
  %sub = sub i64 %66, %conv55, !dbg !1518
  %length56 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %path_buffer, i32 0, i32 0, !dbg !1519
  store i64 %sub, i64* %length56, align 8, !dbg !1520
  %70 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %user_prt, align 8, !dbg !1521
  %source57 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %70, i32 0, i32 4, !dbg !1522
  %arraydecay58 = getelementptr inbounds [4 x i8], [4 x i8]* %source57, i64 0, i64 0, !dbg !1521
  %pointer59 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %path_buffer, i32 0, i32 1, !dbg !1523
  store i8* %arraydecay58, i8** %pointer59, align 8, !dbg !1524
  %71 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1525
  %72 = bitcast %struct.acpi_namespace_node* %71 to i8*, !dbg !1526
  %call60 = call i32 @acpi_ns_handle_to_pathname(i8* %72, %struct.acpi_buffer* %path_buffer, i8 zeroext 0) #8, !dbg !1527
  store i32 %call60, i32* %status, align 4, !dbg !1528
  %73 = load i32, i32* %status, align 4, !dbg !1529
  %tobool61 = icmp ne i32 %73, 0, !dbg !1529
  br i1 %tobool61, label %if.then62, label %if.end63, !dbg !1531

if.then62:                                        ; preds = %if.end49
  %74 = load i32, i32* %status, align 4, !dbg !1532
  store i32 %74, i32* %retval, align 4, !dbg !1532
  br label %return, !dbg !1532

if.end63:                                         ; preds = %if.end49
  %75 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %user_prt, align 8, !dbg !1534
  %source64 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %75, i32 0, i32 4, !dbg !1535
  %arraydecay65 = getelementptr inbounds [4 x i8], [4 x i8]* %source64, i64 0, i64 0, !dbg !1534
  %call66 = call i64 @strlen(i8* %arraydecay65) #8, !dbg !1536
  %conv67 = trunc i64 %call66 to i32, !dbg !1537
  %add = add i32 %conv67, 1, !dbg !1538
  %76 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %user_prt, align 8, !dbg !1539
  %length68 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %76, i32 0, i32 0, !dbg !1540
  %77 = load i32, i32* %length68, align 8, !dbg !1541
  %add69 = add i32 %77, %add, !dbg !1541
  store i32 %add69, i32* %length68, align 8, !dbg !1541
  br label %sw.epilog, !dbg !1542

sw.bb70:                                          ; preds = %if.then38
  %78 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %user_prt, align 8, !dbg !1543
  %source71 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %78, i32 0, i32 4, !dbg !1544
  %arraydecay72 = getelementptr inbounds [4 x i8], [4 x i8]* %source71, i64 0, i64 0, !dbg !1543
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1545
  %string = bitcast %union.acpi_operand_object* %79 to %struct.acpi_object_string*, !dbg !1546
  %pointer73 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 5, !dbg !1547
  %80 = load i8*, i8** %pointer73, align 8, !dbg !1547
  %call74 = call i8* @strcpy(i8* %arraydecay72, i8* %80) #8, !dbg !1548
  %81 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1549
  %string75 = bitcast %union.acpi_operand_object* %81 to %struct.acpi_object_string*, !dbg !1550
  %length76 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string75, i32 0, i32 6, !dbg !1551
  %82 = load i32, i32* %length76, align 8, !dbg !1551
  %add77 = add i32 %82, 1, !dbg !1552
  %83 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %user_prt, align 8, !dbg !1553
  %length78 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %83, i32 0, i32 0, !dbg !1554
  %84 = load i32, i32* %length78, align 8, !dbg !1555
  %add79 = add i32 %84, %add77, !dbg !1555
  store i32 %add79, i32* %length78, align 8, !dbg !1555
  br label %sw.epilog, !dbg !1556

sw.bb80:                                          ; preds = %if.then38
  %85 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %user_prt, align 8, !dbg !1557
  %length81 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %85, i32 0, i32 0, !dbg !1558
  %86 = load i32, i32* %length81, align 8, !dbg !1559
  %conv82 = zext i32 %86 to i64, !dbg !1559
  %add83 = add i64 %conv82, 4, !dbg !1559
  %conv84 = trunc i64 %add83 to i32, !dbg !1559
  store i32 %conv84, i32* %length81, align 8, !dbg !1559
  br label %sw.epilog, !dbg !1560

sw.default:                                       ; preds = %if.then38
  %87 = load i32, i32* %index, align 4, !dbg !1561
  %88 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1561
  %call85 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %88) #8, !dbg !1561
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 349, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %87, i8* %call85) #8, !dbg !1561
  store i32 4100, i32* %retval, align 4, !dbg !1562
  br label %return, !dbg !1562

sw.epilog:                                        ; preds = %sw.bb80, %sw.bb70, %if.end63
  br label %if.end86, !dbg !1563

if.end86:                                         ; preds = %sw.epilog, %if.end32
  %89 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %user_prt, align 8, !dbg !1564
  %length87 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %89, i32 0, i32 0, !dbg !1564
  %90 = load i32, i32* %length87, align 8, !dbg !1564
  %conv88 = zext i32 %90 to i64, !dbg !1564
  %add89 = add i64 %conv88, 7, !dbg !1564
  %and = and i64 %add89, -8, !dbg !1564
  %conv90 = trunc i64 %and to i32, !dbg !1565
  %91 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %user_prt, align 8, !dbg !1566
  %length91 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %91, i32 0, i32 0, !dbg !1567
  store i32 %conv90, i32* %length91, align 8, !dbg !1568
  %92 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_object_list, align 8, !dbg !1569
  %arrayidx92 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %92, i64 3, !dbg !1569
  %93 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx92, align 8, !dbg !1569
  store %union.acpi_operand_object* %93, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1570
  %94 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1571
  %tobool93 = icmp ne %union.acpi_operand_object* %94, null, !dbg !1571
  br i1 %tobool93, label %lor.lhs.false94, label %if.then100, !dbg !1573

lor.lhs.false94:                                  ; preds = %if.end86
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1574
  %common95 = bitcast %union.acpi_operand_object* %95 to %struct.acpi_object_common*, !dbg !1575
  %type96 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common95, i32 0, i32 2, !dbg !1576
  %96 = load i8, i8* %type96, align 1, !dbg !1576
  %conv97 = zext i8 %96 to i32, !dbg !1574
  %cmp98 = icmp ne i32 %conv97, 1, !dbg !1577
  br i1 %cmp98, label %if.then100, label %if.end102, !dbg !1578

if.then100:                                       ; preds = %lor.lhs.false94, %if.end86
  %97 = load i32, i32* %index, align 4, !dbg !1579
  %98 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1579
  %call101 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %98) #8, !dbg !1579
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 367, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %97, i8* %call101) #8, !dbg !1579
  store i32 4100, i32* %retval, align 4, !dbg !1581
  br label %return, !dbg !1581

if.end102:                                        ; preds = %lor.lhs.false94
  %99 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1582
  %integer103 = bitcast %union.acpi_operand_object* %99 to %struct.acpi_object_integer*, !dbg !1583
  %value104 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer103, i32 0, i32 6, !dbg !1584
  %100 = load i64, i64* %value104, align 8, !dbg !1584
  %conv105 = trunc i64 %100 to i32, !dbg !1585
  %101 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %user_prt, align 8, !dbg !1586
  %source_index = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %101, i32 0, i32 3, !dbg !1587
  store i32 %conv105, i32* %source_index, align 8, !dbg !1588
  %102 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %top_object_list, align 8, !dbg !1589
  %incdec.ptr = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %102, i32 1, !dbg !1589
  store %union.acpi_operand_object** %incdec.ptr, %union.acpi_operand_object*** %top_object_list, align 8, !dbg !1589
  br label %for.inc, !dbg !1590

for.inc:                                          ; preds = %if.end102
  %103 = load i32, i32* %index, align 4, !dbg !1591
  %inc = add i32 %103, 1, !dbg !1591
  store i32 %inc, i32* %index, align 4, !dbg !1591
  br label %for.cond, !dbg !1592, !llvm.loop !1593

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !1595
  br label %return, !dbg !1595

return:                                           ; preds = %for.end, %if.then100, %sw.default, %if.then62, %if.then45, %if.then30, %if.then19, %if.then10, %if.then3, %if.then
  %104 = load i32, i32* %retval, align 4, !dbg !1596
  ret i32 %104, !dbg !1596
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_rs_get_pci_routing_table_length(%union.acpi_operand_object*, i64*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_handle_to_pathname(i8*, %struct.acpi_buffer*, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_rs_create_aml_resources(%struct.acpi_buffer* %resource_list, %struct.acpi_buffer* %output_buffer) #0 !dbg !1597 {
entry:
  %retval = alloca i32, align 4
  %resource_list.addr = alloca %struct.acpi_buffer*, align 8
  %output_buffer.addr = alloca %struct.acpi_buffer*, align 8
  %status = alloca i32, align 4
  %aml_size_needed = alloca i64, align 8
  store %struct.acpi_buffer* %resource_list, %struct.acpi_buffer** %resource_list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %resource_list.addr, metadata !1600, metadata !DIExpression()), !dbg !1601
  store %struct.acpi_buffer* %output_buffer, %struct.acpi_buffer** %output_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %output_buffer.addr, metadata !1602, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1604, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.declare(metadata i64* %aml_size_needed, metadata !1606, metadata !DIExpression()), !dbg !1607
  store i64 0, i64* %aml_size_needed, align 8, !dbg !1607
  %0 = load %struct.acpi_buffer*, %struct.acpi_buffer** %resource_list.addr, align 8, !dbg !1608
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %0, i32 0, i32 1, !dbg !1609
  %1 = load i8*, i8** %pointer, align 8, !dbg !1609
  %2 = bitcast i8* %1 to %struct.acpi_resource*, !dbg !1608
  %3 = load %struct.acpi_buffer*, %struct.acpi_buffer** %resource_list.addr, align 8, !dbg !1610
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %3, i32 0, i32 0, !dbg !1611
  %4 = load i64, i64* %length, align 8, !dbg !1611
  %call = call i32 @acpi_rs_get_aml_length(%struct.acpi_resource* %2, i64 %4, i64* %aml_size_needed) #8, !dbg !1612
  store i32 %call, i32* %status, align 4, !dbg !1613
  %5 = load i32, i32* %status, align 4, !dbg !1614
  %tobool = icmp ne i32 %5, 0, !dbg !1614
  br i1 %tobool, label %if.then, label %if.end, !dbg !1616

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %status, align 4, !dbg !1617
  store i32 %6, i32* %retval, align 4, !dbg !1617
  br label %return, !dbg !1617

if.end:                                           ; preds = %entry
  %7 = load %struct.acpi_buffer*, %struct.acpi_buffer** %output_buffer.addr, align 8, !dbg !1619
  %8 = load i64, i64* %aml_size_needed, align 8, !dbg !1620
  %call1 = call i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer* %7, i64 %8) #8, !dbg !1621
  store i32 %call1, i32* %status, align 4, !dbg !1622
  %9 = load i32, i32* %status, align 4, !dbg !1623
  %tobool2 = icmp ne i32 %9, 0, !dbg !1623
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1625

if.then3:                                         ; preds = %if.end
  %10 = load i32, i32* %status, align 4, !dbg !1626
  store i32 %10, i32* %retval, align 4, !dbg !1626
  br label %return, !dbg !1626

if.end4:                                          ; preds = %if.end
  %11 = load %struct.acpi_buffer*, %struct.acpi_buffer** %resource_list.addr, align 8, !dbg !1628
  %pointer5 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 1, !dbg !1629
  %12 = load i8*, i8** %pointer5, align 8, !dbg !1629
  %13 = bitcast i8* %12 to %struct.acpi_resource*, !dbg !1628
  %14 = load i64, i64* %aml_size_needed, align 8, !dbg !1630
  %15 = load %struct.acpi_buffer*, %struct.acpi_buffer** %output_buffer.addr, align 8, !dbg !1631
  %pointer6 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %15, i32 0, i32 1, !dbg !1632
  %16 = load i8*, i8** %pointer6, align 8, !dbg !1632
  %call7 = call i32 @acpi_rs_convert_resources_to_aml(%struct.acpi_resource* %13, i64 %14, i8* %16) #8, !dbg !1633
  store i32 %call7, i32* %status, align 4, !dbg !1634
  %17 = load i32, i32* %status, align 4, !dbg !1635
  %tobool8 = icmp ne i32 %17, 0, !dbg !1635
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1637

if.then9:                                         ; preds = %if.end4
  %18 = load i32, i32* %status, align 4, !dbg !1638
  store i32 %18, i32* %retval, align 4, !dbg !1638
  br label %return, !dbg !1638

if.end10:                                         ; preds = %if.end4
  store i32 0, i32* %retval, align 4, !dbg !1640
  br label %return, !dbg !1640

return:                                           ; preds = %if.end10, %if.then9, %if.then3, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !1641
  ret i32 %19, !dbg !1641
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_rs_get_aml_length(%struct.acpi_resource*, i64, i64*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_rs_convert_resources_to_aml(%struct.acpi_resource*, i64, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1642 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1649, metadata !DIExpression()), !dbg !1656
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1662, metadata !DIExpression()), !dbg !1663
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1664, metadata !DIExpression()), !dbg !1665
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1666, metadata !DIExpression()), !dbg !1667
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1668, metadata !DIExpression()), !dbg !1672
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1674, metadata !DIExpression()), !dbg !1678
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1680, metadata !DIExpression()), !dbg !1684
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1689, metadata !DIExpression()), !dbg !1690
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1691, metadata !DIExpression()), !dbg !1692
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1693, metadata !DIExpression()), !dbg !1694
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1695, metadata !DIExpression()), !dbg !1696
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1697, metadata !DIExpression()), !dbg !1698
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1699, metadata !DIExpression()), !dbg !1700
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1701, metadata !DIExpression()), !dbg !1702
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1703, metadata !DIExpression()), !dbg !1704
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1705, metadata !DIExpression()), !dbg !1706
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1707, metadata !DIExpression()), !dbg !1708
  %0 = load i64, i64* %size.addr, align 8, !dbg !1709
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1710
  %or = or i32 %1, 256, !dbg !1711
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1712
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !1713
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1714

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1715
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1716
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1717

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1718
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1719
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1720
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !1721
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1698
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1722
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1723
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1724
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1725
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1726
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1727
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !1728
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1728
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1728
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1728
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !1728
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1729
  br label %kmalloc.exit, !dbg !1729

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1730
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1731
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1731
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1733

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1734
  br label %kmalloc_index.exit.i, !dbg !1734

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1735
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1737
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1738

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1739
  br label %kmalloc_index.exit.i, !dbg !1739

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1740
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1742
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1743

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1744
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1745
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1746

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1747
  br label %kmalloc_index.exit.i, !dbg !1747

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1748
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1750
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1751

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1752
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1753
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1754

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1755
  br label %kmalloc_index.exit.i, !dbg !1755

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1756
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1758
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1759

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1760
  br label %kmalloc_index.exit.i, !dbg !1760

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1761
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1763
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1764

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1765
  br label %kmalloc_index.exit.i, !dbg !1765

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1766
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1768
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1769

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1770
  br label %kmalloc_index.exit.i, !dbg !1770

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1771
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1773
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1774

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1775
  br label %kmalloc_index.exit.i, !dbg !1775

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1776
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1778
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1779

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1780
  br label %kmalloc_index.exit.i, !dbg !1780

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1781
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1783
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1784

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1785
  br label %kmalloc_index.exit.i, !dbg !1785

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1786
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1788
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1789

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1790
  br label %kmalloc_index.exit.i, !dbg !1790

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1791
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1793
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1794

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1795
  br label %kmalloc_index.exit.i, !dbg !1795

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1796
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1798
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1799

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1800
  br label %kmalloc_index.exit.i, !dbg !1800

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1801
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1803
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1804

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1805
  br label %kmalloc_index.exit.i, !dbg !1805

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1806
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1808
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1809

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1810
  br label %kmalloc_index.exit.i, !dbg !1810

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1811
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1813
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1814

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1815
  br label %kmalloc_index.exit.i, !dbg !1815

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1816
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1818
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1819

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1820
  br label %kmalloc_index.exit.i, !dbg !1820

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1821
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1823
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1824

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1825
  br label %kmalloc_index.exit.i, !dbg !1825

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1826
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1828
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1829

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1830
  br label %kmalloc_index.exit.i, !dbg !1830

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1831
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1833
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1834

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1835
  br label %kmalloc_index.exit.i, !dbg !1835

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1836
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1838
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1839

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1840
  br label %kmalloc_index.exit.i, !dbg !1840

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1841
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1843
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1844

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1845
  br label %kmalloc_index.exit.i, !dbg !1845

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1846
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1848
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1849

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1850
  br label %kmalloc_index.exit.i, !dbg !1850

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1851
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1853
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1854

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1855
  br label %kmalloc_index.exit.i, !dbg !1855

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1856
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1858
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1859

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1860
  br label %kmalloc_index.exit.i, !dbg !1860

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1861
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1863
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1864

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1865
  br label %kmalloc_index.exit.i, !dbg !1865

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1866
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1868
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1869

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1870
  br label %kmalloc_index.exit.i, !dbg !1870

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1871
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1873
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1874

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1875
  br label %kmalloc_index.exit.i, !dbg !1875

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !1876, !srcloc !1879
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #7, !dbg !1880, !srcloc !1883
  unreachable, !dbg !1884

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1885
  store i32 %45, i32* %index.i, align 4, !dbg !1886
  %46 = load i32, i32* %index.i, align 4, !dbg !1887
  %tobool.i = icmp ne i32 %46, 0, !dbg !1887
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1889

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1890
  br label %kmalloc.exit, !dbg !1890

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1891
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1892
  %and.i.i = and i32 %48, 17, !dbg !1892
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1892
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1892
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1892
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1892
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1894

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1895
  br label %kmalloc_type.exit.i, !dbg !1895

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1896
  %and2.i.i = and i32 %49, 1, !dbg !1897
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1896
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1896
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1896
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1898
  br label %kmalloc_type.exit.i, !dbg !1898

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1899
  %idxprom.i = zext i32 %51 to i64, !dbg !1900
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1900
  %52 = load i32, i32* %index.i, align 4, !dbg !1901
  %idxprom6.i = zext i32 %52 to i64, !dbg !1900
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1900
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1900
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1902
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1903
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1904
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1905
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !1906
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1906
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1906
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1906
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !1906
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1667
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1907
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1908
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1909
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1910
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !1911
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1912
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1913
  store i8* %62, i8** %retval.i, align 8, !dbg !1914
  br label %kmalloc.exit, !dbg !1914

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1915
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1916
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !1917
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1917
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1917
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1917
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !1917
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1918
  br label %kmalloc.exit, !dbg !1918

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1919
  ret i8* %65, !dbg !1920
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1921 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1925, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1928, metadata !DIExpression()), !dbg !1927
  %0 = load i64, i64* %__edi, align 8, !dbg !1927
  store i64 %0, i64* %__edi, align 8, !dbg !1927
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1929, metadata !DIExpression()), !dbg !1927
  %1 = load i64, i64* %__esi, align 8, !dbg !1927
  store i64 %1, i64* %__esi, align 8, !dbg !1927
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1930, metadata !DIExpression()), !dbg !1927
  %2 = load i64, i64* %__edx, align 8, !dbg !1927
  store i64 %2, i64* %__edx, align 8, !dbg !1927
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1931, metadata !DIExpression()), !dbg !1927
  %3 = load i64, i64* %__ecx, align 8, !dbg !1927
  store i64 %3, i64* %__ecx, align 8, !dbg !1927
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1932, metadata !DIExpression()), !dbg !1927
  %4 = load i64, i64* %__eax, align 8, !dbg !1927
  store i64 %4, i64* %__eax, align 8, !dbg !1927
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1927
  %6 = call i64 @llvm.read_register.i64(metadata !62), !dbg !1933
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !1933, !srcloc !1936
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1933
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1933
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1933
  call void @llvm.write_register.i64(metadata !62, i64 %asmresult1), !dbg !1933
  %8 = load i64, i64* %__eax, align 8, !dbg !1933
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1937, metadata !DIExpression()), !dbg !1939
  store i64 -1, i64* %__mask, align 8, !dbg !1939
  %9 = load i64, i64* %__mask, align 8, !dbg !1939
  store i64 %9, i64* %tmp, align 8, !dbg !1939
  %10 = load i64, i64* %tmp, align 8, !dbg !1939
  %and = and i64 %8, %10, !dbg !1933
  store i64 %and, i64* %__ret, align 8, !dbg !1933
  %11 = load i64, i64* %__ret, align 8, !dbg !1927
  store i64 %11, i64* %tmp2, align 8, !dbg !1940
  %12 = load i64, i64* %tmp2, align 8, !dbg !1927
  ret i64 %12, !dbg !1941
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !1942 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1944, metadata !DIExpression()), !dbg !1949
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1951, metadata !DIExpression()), !dbg !1952
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1953, metadata !DIExpression()), !dbg !1954
  %0 = load i64, i64* %size.addr, align 8, !dbg !1955
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1957
  br i1 %1, label %if.then, label %if.end447, !dbg !1958

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1959
  %tobool = icmp ne i64 %2, 0, !dbg !1959
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1962

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1963
  br label %return, !dbg !1963

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1964
  %cmp = icmp ult i64 %3, 4096, !dbg !1966
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1967

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1968
  br label %return, !dbg !1968

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub = sub i64 %4, 1, !dbg !1969
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1969
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1969

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub4 = sub i64 %6, 1, !dbg !1969
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1969
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1969

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub6 = sub i64 %8, 1, !dbg !1969
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1969
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1969

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1969

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub9 = sub i64 %9, 1, !dbg !1969
  %and = and i64 %sub9, -9223372036854775808, !dbg !1969
  %tobool10 = icmp ne i64 %and, 0, !dbg !1969
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1969

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1969

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub13 = sub i64 %10, 1, !dbg !1969
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1969
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1969
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1969

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1969

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub18 = sub i64 %11, 1, !dbg !1969
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1969
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1969
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1969

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1969

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub23 = sub i64 %12, 1, !dbg !1969
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1969
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1969
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1969

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1969

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub28 = sub i64 %13, 1, !dbg !1969
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1969
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1969
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1969

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1969

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub33 = sub i64 %14, 1, !dbg !1969
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1969
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1969
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1969

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1969

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub38 = sub i64 %15, 1, !dbg !1969
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1969
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1969
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1969

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1969

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub43 = sub i64 %16, 1, !dbg !1969
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1969
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1969
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1969

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1969

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub48 = sub i64 %17, 1, !dbg !1969
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1969
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1969
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1969

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1969

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub53 = sub i64 %18, 1, !dbg !1969
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1969
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1969
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1969

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1969

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub58 = sub i64 %19, 1, !dbg !1969
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1969
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1969
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1969

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1969

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub63 = sub i64 %20, 1, !dbg !1969
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1969
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1969
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1969

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1969

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub68 = sub i64 %21, 1, !dbg !1969
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1969
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1969
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1969

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1969

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub73 = sub i64 %22, 1, !dbg !1969
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1969
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1969
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1969

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1969

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub78 = sub i64 %23, 1, !dbg !1969
  %and79 = and i64 %sub78, 562949953421312, !dbg !1969
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1969
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1969

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1969

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub83 = sub i64 %24, 1, !dbg !1969
  %and84 = and i64 %sub83, 281474976710656, !dbg !1969
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1969
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1969

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1969

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub88 = sub i64 %25, 1, !dbg !1969
  %and89 = and i64 %sub88, 140737488355328, !dbg !1969
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1969
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1969

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1969

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub93 = sub i64 %26, 1, !dbg !1969
  %and94 = and i64 %sub93, 70368744177664, !dbg !1969
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1969
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1969

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1969

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub98 = sub i64 %27, 1, !dbg !1969
  %and99 = and i64 %sub98, 35184372088832, !dbg !1969
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1969
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1969

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1969

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub103 = sub i64 %28, 1, !dbg !1969
  %and104 = and i64 %sub103, 17592186044416, !dbg !1969
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1969
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1969

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1969

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub108 = sub i64 %29, 1, !dbg !1969
  %and109 = and i64 %sub108, 8796093022208, !dbg !1969
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1969
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1969

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1969

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub113 = sub i64 %30, 1, !dbg !1969
  %and114 = and i64 %sub113, 4398046511104, !dbg !1969
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1969
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1969

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1969

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub118 = sub i64 %31, 1, !dbg !1969
  %and119 = and i64 %sub118, 2199023255552, !dbg !1969
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1969
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1969

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1969

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub123 = sub i64 %32, 1, !dbg !1969
  %and124 = and i64 %sub123, 1099511627776, !dbg !1969
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1969
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1969

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1969

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub128 = sub i64 %33, 1, !dbg !1969
  %and129 = and i64 %sub128, 549755813888, !dbg !1969
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1969
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1969

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1969

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub133 = sub i64 %34, 1, !dbg !1969
  %and134 = and i64 %sub133, 274877906944, !dbg !1969
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1969
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1969

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1969

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub138 = sub i64 %35, 1, !dbg !1969
  %and139 = and i64 %sub138, 137438953472, !dbg !1969
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1969
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1969

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1969

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub143 = sub i64 %36, 1, !dbg !1969
  %and144 = and i64 %sub143, 68719476736, !dbg !1969
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1969
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1969

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1969

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub148 = sub i64 %37, 1, !dbg !1969
  %and149 = and i64 %sub148, 34359738368, !dbg !1969
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1969
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1969

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1969

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub153 = sub i64 %38, 1, !dbg !1969
  %and154 = and i64 %sub153, 17179869184, !dbg !1969
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1969
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1969

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1969

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub158 = sub i64 %39, 1, !dbg !1969
  %and159 = and i64 %sub158, 8589934592, !dbg !1969
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1969
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1969

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1969

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub163 = sub i64 %40, 1, !dbg !1969
  %and164 = and i64 %sub163, 4294967296, !dbg !1969
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1969
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1969

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1969

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub168 = sub i64 %41, 1, !dbg !1969
  %and169 = and i64 %sub168, 2147483648, !dbg !1969
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1969
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1969

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1969

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub173 = sub i64 %42, 1, !dbg !1969
  %and174 = and i64 %sub173, 1073741824, !dbg !1969
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1969
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1969

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1969

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub178 = sub i64 %43, 1, !dbg !1969
  %and179 = and i64 %sub178, 536870912, !dbg !1969
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1969
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1969

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1969

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub183 = sub i64 %44, 1, !dbg !1969
  %and184 = and i64 %sub183, 268435456, !dbg !1969
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1969
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1969

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1969

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub188 = sub i64 %45, 1, !dbg !1969
  %and189 = and i64 %sub188, 134217728, !dbg !1969
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1969
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1969

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1969

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub193 = sub i64 %46, 1, !dbg !1969
  %and194 = and i64 %sub193, 67108864, !dbg !1969
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1969
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1969

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1969

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub198 = sub i64 %47, 1, !dbg !1969
  %and199 = and i64 %sub198, 33554432, !dbg !1969
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1969
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1969

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1969

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub203 = sub i64 %48, 1, !dbg !1969
  %and204 = and i64 %sub203, 16777216, !dbg !1969
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1969
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1969

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1969

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub208 = sub i64 %49, 1, !dbg !1969
  %and209 = and i64 %sub208, 8388608, !dbg !1969
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1969
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1969

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1969

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub213 = sub i64 %50, 1, !dbg !1969
  %and214 = and i64 %sub213, 4194304, !dbg !1969
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1969
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1969

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1969

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub218 = sub i64 %51, 1, !dbg !1969
  %and219 = and i64 %sub218, 2097152, !dbg !1969
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1969
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1969

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1969

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub223 = sub i64 %52, 1, !dbg !1969
  %and224 = and i64 %sub223, 1048576, !dbg !1969
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1969
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1969

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1969

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub228 = sub i64 %53, 1, !dbg !1969
  %and229 = and i64 %sub228, 524288, !dbg !1969
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1969
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1969

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1969

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub233 = sub i64 %54, 1, !dbg !1969
  %and234 = and i64 %sub233, 262144, !dbg !1969
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1969
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1969

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1969

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub238 = sub i64 %55, 1, !dbg !1969
  %and239 = and i64 %sub238, 131072, !dbg !1969
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1969
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1969

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1969

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub243 = sub i64 %56, 1, !dbg !1969
  %and244 = and i64 %sub243, 65536, !dbg !1969
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1969
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1969

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1969

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub248 = sub i64 %57, 1, !dbg !1969
  %and249 = and i64 %sub248, 32768, !dbg !1969
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1969
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1969

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1969

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub253 = sub i64 %58, 1, !dbg !1969
  %and254 = and i64 %sub253, 16384, !dbg !1969
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1969
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1969

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1969

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub258 = sub i64 %59, 1, !dbg !1969
  %and259 = and i64 %sub258, 8192, !dbg !1969
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1969
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1969

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1969

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub263 = sub i64 %60, 1, !dbg !1969
  %and264 = and i64 %sub263, 4096, !dbg !1969
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1969
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1969

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1969

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub268 = sub i64 %61, 1, !dbg !1969
  %and269 = and i64 %sub268, 2048, !dbg !1969
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1969
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1969

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1969

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub273 = sub i64 %62, 1, !dbg !1969
  %and274 = and i64 %sub273, 1024, !dbg !1969
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1969
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1969

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1969

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub278 = sub i64 %63, 1, !dbg !1969
  %and279 = and i64 %sub278, 512, !dbg !1969
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1969
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1969

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1969

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub283 = sub i64 %64, 1, !dbg !1969
  %and284 = and i64 %sub283, 256, !dbg !1969
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1969
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1969

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1969

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub288 = sub i64 %65, 1, !dbg !1969
  %and289 = and i64 %sub288, 128, !dbg !1969
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1969
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1969

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1969

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub293 = sub i64 %66, 1, !dbg !1969
  %and294 = and i64 %sub293, 64, !dbg !1969
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1969
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1969

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1969

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub298 = sub i64 %67, 1, !dbg !1969
  %and299 = and i64 %sub298, 32, !dbg !1969
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1969
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1969

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1969

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub303 = sub i64 %68, 1, !dbg !1969
  %and304 = and i64 %sub303, 16, !dbg !1969
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1969
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1969

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1969

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub308 = sub i64 %69, 1, !dbg !1969
  %and309 = and i64 %sub308, 8, !dbg !1969
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1969
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1969

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1969

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub313 = sub i64 %70, 1, !dbg !1969
  %and314 = and i64 %sub313, 4, !dbg !1969
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1969
  %71 = zext i1 %tobool315 to i64, !dbg !1969
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1969
  br label %cond.end, !dbg !1969

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1969
  br label %cond.end317, !dbg !1969

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1969
  br label %cond.end319, !dbg !1969

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1969
  br label %cond.end321, !dbg !1969

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1969
  br label %cond.end323, !dbg !1969

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1969
  br label %cond.end325, !dbg !1969

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1969
  br label %cond.end327, !dbg !1969

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1969
  br label %cond.end329, !dbg !1969

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1969
  br label %cond.end331, !dbg !1969

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1969
  br label %cond.end333, !dbg !1969

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1969
  br label %cond.end335, !dbg !1969

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1969
  br label %cond.end337, !dbg !1969

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1969
  br label %cond.end339, !dbg !1969

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1969
  br label %cond.end341, !dbg !1969

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1969
  br label %cond.end343, !dbg !1969

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1969
  br label %cond.end345, !dbg !1969

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1969
  br label %cond.end347, !dbg !1969

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1969
  br label %cond.end349, !dbg !1969

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1969
  br label %cond.end351, !dbg !1969

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1969
  br label %cond.end353, !dbg !1969

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1969
  br label %cond.end355, !dbg !1969

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1969
  br label %cond.end357, !dbg !1969

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1969
  br label %cond.end359, !dbg !1969

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1969
  br label %cond.end361, !dbg !1969

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1969
  br label %cond.end363, !dbg !1969

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1969
  br label %cond.end365, !dbg !1969

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1969
  br label %cond.end367, !dbg !1969

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1969
  br label %cond.end369, !dbg !1969

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1969
  br label %cond.end371, !dbg !1969

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1969
  br label %cond.end373, !dbg !1969

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1969
  br label %cond.end375, !dbg !1969

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1969
  br label %cond.end377, !dbg !1969

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1969
  br label %cond.end379, !dbg !1969

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1969
  br label %cond.end381, !dbg !1969

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1969
  br label %cond.end383, !dbg !1969

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1969
  br label %cond.end385, !dbg !1969

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1969
  br label %cond.end387, !dbg !1969

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1969
  br label %cond.end389, !dbg !1969

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1969
  br label %cond.end391, !dbg !1969

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1969
  br label %cond.end393, !dbg !1969

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1969
  br label %cond.end395, !dbg !1969

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1969
  br label %cond.end397, !dbg !1969

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1969
  br label %cond.end399, !dbg !1969

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1969
  br label %cond.end401, !dbg !1969

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1969
  br label %cond.end403, !dbg !1969

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1969
  br label %cond.end405, !dbg !1969

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1969
  br label %cond.end407, !dbg !1969

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1969
  br label %cond.end409, !dbg !1969

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1969
  br label %cond.end411, !dbg !1969

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1969
  br label %cond.end413, !dbg !1969

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1969
  br label %cond.end415, !dbg !1969

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1969
  br label %cond.end417, !dbg !1969

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1969
  br label %cond.end419, !dbg !1969

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1969
  br label %cond.end421, !dbg !1969

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1969
  br label %cond.end423, !dbg !1969

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1969
  br label %cond.end425, !dbg !1969

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1969
  br label %cond.end427, !dbg !1969

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1969
  br label %cond.end429, !dbg !1969

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1969
  br label %cond.end431, !dbg !1969

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1969
  br label %cond.end433, !dbg !1969

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1969
  br label %cond.end435, !dbg !1969

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1969
  br label %cond.end437, !dbg !1969

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1969
  br label %cond.end440, !dbg !1969

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1969

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1969
  br label %cond.end444, !dbg !1969

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1969
  %sub443 = sub i64 %72, 1, !dbg !1969
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !1969
  br label %cond.end444, !dbg !1969

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1969
  %sub446 = sub i32 %cond445, 12, !dbg !1970
  %add = add i32 %sub446, 1, !dbg !1971
  store i32 %add, i32* %retval, align 4, !dbg !1972
  br label %return, !dbg !1972

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1973
  %dec = add i64 %73, -1, !dbg !1973
  store i64 %dec, i64* %size.addr, align 8, !dbg !1973
  %74 = load i64, i64* %size.addr, align 8, !dbg !1974
  %shr = lshr i64 %74, 12, !dbg !1974
  store i64 %shr, i64* %size.addr, align 8, !dbg !1974
  %75 = load i64, i64* %size.addr, align 8, !dbg !1975
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1952
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1976
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1977
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !1976, !srcloc !1978
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1976
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1979
  %add.i = add i32 %79, 1, !dbg !1980
  store i32 %add.i, i32* %retval, align 4, !dbg !1981
  br label %return, !dbg !1981

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1982
  ret i32 %80, !dbg !1982
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !1983 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1944, metadata !DIExpression()), !dbg !1987
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1951, metadata !DIExpression()), !dbg !1989
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1990, metadata !DIExpression()), !dbg !1991
  %0 = load i64, i64* %n.addr, align 8, !dbg !1992
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1989
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1993
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1994
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !1993, !srcloc !1978
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1993
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1995
  %add.i = add i32 %4, 1, !dbg !1996
  %sub = sub i32 %add.i, 1, !dbg !1997
  ret i32 %sub, !dbg !1998
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1999 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2005, metadata !DIExpression()), !dbg !2006
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2007, metadata !DIExpression()), !dbg !2008
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2009, metadata !DIExpression()), !dbg !2010
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2011, metadata !DIExpression()), !dbg !2012
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2013
  ret i8* %0, !dbg !2014
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
!llvm.named.register.rsp = !{!62}
!llvm.module.flags = !{!63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 14, type: !58, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !24, globals: !57, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/rscreate.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !17}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 321, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16}
!9 = !DIEnumerator(name: "ACPI_REFCLASS_LOCAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "ACPI_REFCLASS_ARG", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "ACPI_REFCLASS_REFOF", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "ACPI_REFCLASS_INDEX", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "ACPI_REFCLASS_TABLE", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "ACPI_REFCLASS_NAME", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "ACPI_REFCLASS_DEBUG", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "ACPI_REFCLASS_MAX", value: 6, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !18, line: 305, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!23 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!24 = !{!25, !31, !35, !48, !27, !49, !53, !54, !56}
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !26, line: 421, baseType: !27)
!26 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !28, line: 21, baseType: !29)
!28 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !30, line: 27, baseType: !7)
!30 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !26, line: 127, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !28, line: 23, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !30, line: 31, baseType: !34)
!34 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_routing_table", file: !37, line: 670, size: 192, elements: !38)
!37 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !40, !41, !42, !43}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !36, file: !37, line: 671, baseType: !27, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !36, file: !37, line: 672, baseType: !27, size: 32, offset: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !36, file: !37, line: 673, baseType: !32, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "source_index", scope: !36, file: !37, line: 674, baseType: !27, size: 32, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !36, file: !37, line: 675, baseType: !44, size: 32, offset: 160)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, elements: !46)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!46 = !{!47}
!47 = !DISubrange(count: 4)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !28, line: 17, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !30, line: 21, baseType: !52)
!52 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !26, line: 424, baseType: !48)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !55, line: 148, baseType: !7)
!55 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!56 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!57 = !{!0}
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 72, elements: !60)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!60 = !{!61}
!61 = !DISubrange(count: 9)
!62 = !{!"rsp"}
!63 = !{i32 7, !"Dwarf Version", i32 4}
!64 = !{i32 2, !"Debug Info Version", i32 3}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"Code Model", i32 2}
!67 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!68 = distinct !DISubprogram(name: "acpi_buffer_to_resource", scope: !3, file: !3, line: 30, type: !69, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !441)
!69 = !DISubroutineType(types: !70)
!70 = !{!25, !49, !71, !74}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !28, line: 19, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !30, line: 24, baseType: !73)
!73 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource", file: !37, line: 651, size: 544, elements: !77)
!77 = !{!78, !79, !80}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !76, file: !37, line: 652, baseType: !27, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !76, file: !37, line: 653, baseType: !27, size: 32, offset: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !76, file: !37, line: 654, baseType: !81, size: 480, offset: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_data", file: !37, line: 614, size: 480, elements: !82)
!82 = !{!83, !96, !104, !110, !118, !123, !129, !134, !144, !148, !156, !164, !170, !211, !229, !247, !259, !271, !279, !299, !315, !335, !357, !370, !382, !395, !409, !420, !432}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !81, file: !37, line: 615, baseType: !84, size: 56)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_irq", file: !37, line: 138, size: 56, elements: !85)
!85 = !{!86, !87, !88, !89, !90, !91, !92}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !84, file: !37, line: 139, baseType: !50, size: 8)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !84, file: !37, line: 140, baseType: !50, size: 8, offset: 8)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !84, file: !37, line: 141, baseType: !50, size: 8, offset: 16)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !84, file: !37, line: 142, baseType: !50, size: 8, offset: 24)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !84, file: !37, line: 143, baseType: !50, size: 8, offset: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !84, file: !37, line: 144, baseType: !50, size: 8, offset: 40)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !84, file: !37, line: 145, baseType: !93, size: 8, offset: 48)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 8, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 1)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !81, file: !37, line: 616, baseType: !97, size: 40)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_dma", file: !37, line: 148, size: 40, elements: !98)
!98 = !{!99, !100, !101, !102, !103}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !37, line: 149, baseType: !50, size: 8)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !97, file: !37, line: 150, baseType: !50, size: 8, offset: 8)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !97, file: !37, line: 151, baseType: !50, size: 8, offset: 16)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "channel_count", scope: !97, file: !37, line: 152, baseType: !50, size: 8, offset: 24)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !97, file: !37, line: 153, baseType: !93, size: 8, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !81, file: !37, line: 617, baseType: !105, size: 24)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_start_dependent", file: !37, line: 156, size: 24, elements: !106)
!106 = !{!107, !108, !109}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !105, file: !37, line: 157, baseType: !50, size: 8)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "compatibility_priority", scope: !105, file: !37, line: 158, baseType: !50, size: 8, offset: 8)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "performance_robustness", scope: !105, file: !37, line: 159, baseType: !50, size: 8, offset: 16)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !81, file: !37, line: 618, baseType: !111, size: 56)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_io", file: !37, line: 167, size: 56, elements: !112)
!112 = !{!113, !114, !115, !116, !117}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "io_decode", scope: !111, file: !37, line: 168, baseType: !50, size: 8)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !111, file: !37, line: 169, baseType: !50, size: 8, offset: 8)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !111, file: !37, line: 170, baseType: !50, size: 8, offset: 16)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !111, file: !37, line: 171, baseType: !71, size: 16, offset: 24)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !111, file: !37, line: 172, baseType: !71, size: 16, offset: 40)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !81, file: !37, line: 619, baseType: !119, size: 24)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_io", file: !37, line: 175, size: 24, elements: !120)
!120 = !{!121, !122}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !119, file: !37, line: 176, baseType: !71, size: 16)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !119, file: !37, line: 177, baseType: !50, size: 8, offset: 16)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !81, file: !37, line: 620, baseType: !124, size: 40)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_dma", file: !37, line: 180, size: 40, elements: !125)
!125 = !{!126, !127, !128}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !124, file: !37, line: 181, baseType: !71, size: 16)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !124, file: !37, line: 182, baseType: !71, size: 16, offset: 16)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !124, file: !37, line: 183, baseType: !50, size: 8, offset: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !81, file: !37, line: 621, baseType: !130, size: 24)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor", file: !37, line: 195, size: 24, elements: !131)
!131 = !{!132, !133}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !130, file: !37, line: 196, baseType: !71, size: 16)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !130, file: !37, line: 197, baseType: !93, size: 8, offset: 16)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_typed", scope: !81, file: !37, line: 622, baseType: !135, size: 160)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor_typed", file: !37, line: 202, size: 160, elements: !136)
!136 = !{!137, !138, !139, !143}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !135, file: !37, line: 203, baseType: !71, size: 16)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_subtype", scope: !135, file: !37, line: 204, baseType: !50, size: 8, offset: 16)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !135, file: !37, line: 205, baseType: !140, size: 128, offset: 24)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 128, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 16)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !135, file: !37, line: 206, baseType: !93, size: 8, offset: 152)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !81, file: !37, line: 623, baseType: !145, size: 8)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_end_tag", file: !37, line: 209, size: 8, elements: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !145, file: !37, line: 210, baseType: !50, size: 8)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !81, file: !37, line: 624, baseType: !149, size: 72)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory24", file: !37, line: 213, size: 72, elements: !150)
!150 = !{!151, !152, !153, !154, !155}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !149, file: !37, line: 214, baseType: !50, size: 8)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !149, file: !37, line: 215, baseType: !71, size: 16, offset: 8)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !149, file: !37, line: 216, baseType: !71, size: 16, offset: 24)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !149, file: !37, line: 217, baseType: !71, size: 16, offset: 40)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !149, file: !37, line: 218, baseType: !71, size: 16, offset: 56)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !81, file: !37, line: 625, baseType: !157, size: 136)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory32", file: !37, line: 221, size: 136, elements: !158)
!158 = !{!159, !160, !161, !162, !163}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !157, file: !37, line: 222, baseType: !50, size: 8)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !157, file: !37, line: 223, baseType: !27, size: 32, offset: 8)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !157, file: !37, line: 224, baseType: !27, size: 32, offset: 40)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !157, file: !37, line: 225, baseType: !27, size: 32, offset: 72)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !157, file: !37, line: 226, baseType: !27, size: 32, offset: 104)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !81, file: !37, line: 626, baseType: !165, size: 72)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_memory32", file: !37, line: 229, size: 72, elements: !166)
!166 = !{!167, !168, !169}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !165, file: !37, line: 230, baseType: !50, size: 8)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !165, file: !37, line: 231, baseType: !27, size: 32, offset: 8)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !165, file: !37, line: 232, baseType: !27, size: 32, offset: 40)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !81, file: !37, line: 627, baseType: !171, size: 240)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address16", file: !37, line: 306, size: 240, elements: !172)
!172 = !{!173, !174, !175, !176, !177, !178, !196, !204}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !171, file: !37, line: 307, baseType: !50, size: 8)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !171, file: !37, line: 307, baseType: !50, size: 8, offset: 8)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !171, file: !37, line: 307, baseType: !50, size: 8, offset: 16)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !171, file: !37, line: 307, baseType: !50, size: 8, offset: 24)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !171, file: !37, line: 307, baseType: !50, size: 8, offset: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !171, file: !37, line: 307, baseType: !179, size: 32, offset: 40)
!179 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_attribute", file: !37, line: 249, size: 32, elements: !180)
!180 = !{!181, !188, !195}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !179, file: !37, line: 250, baseType: !182, size: 32)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_memory_attribute", file: !37, line: 235, size: 32, elements: !183)
!183 = !{!184, !185, !186, !187}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !182, file: !37, line: 236, baseType: !50, size: 8)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !182, file: !37, line: 237, baseType: !50, size: 8, offset: 8)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !182, file: !37, line: 238, baseType: !50, size: 8, offset: 16)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !182, file: !37, line: 239, baseType: !50, size: 8, offset: 24)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !179, file: !37, line: 251, baseType: !189, size: 32)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_io_attribute", file: !37, line: 242, size: 32, elements: !190)
!190 = !{!191, !192, !193, !194}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !189, file: !37, line: 243, baseType: !50, size: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !189, file: !37, line: 244, baseType: !50, size: 8, offset: 8)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "translation_type", scope: !189, file: !37, line: 245, baseType: !50, size: 8, offset: 16)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !189, file: !37, line: 246, baseType: !50, size: 8, offset: 24)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !179, file: !37, line: 255, baseType: !50, size: 8)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !171, file: !37, line: 307, baseType: !197, size: 80, offset: 72)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address16_attribute", file: !37, line: 279, size: 80, elements: !198)
!198 = !{!199, !200, !201, !202, !203}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !197, file: !37, line: 280, baseType: !71, size: 16)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !197, file: !37, line: 281, baseType: !71, size: 16, offset: 16)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !197, file: !37, line: 282, baseType: !71, size: 16, offset: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !197, file: !37, line: 283, baseType: !71, size: 16, offset: 48)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !197, file: !37, line: 284, baseType: !71, size: 16, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !171, file: !37, line: 308, baseType: !205, size: 88, offset: 152)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !37, line: 263, size: 88, elements: !206)
!206 = !{!207, !208, !209}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !205, file: !37, line: 264, baseType: !50, size: 8)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !205, file: !37, line: 265, baseType: !71, size: 16, offset: 8)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !205, file: !37, line: 266, baseType: !210, size: 64, offset: 24)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !81, file: !37, line: 628, baseType: !212, size: 320)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address32", file: !37, line: 311, size: 320, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219, !220, !228}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !212, file: !37, line: 312, baseType: !50, size: 8)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !212, file: !37, line: 312, baseType: !50, size: 8, offset: 8)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !212, file: !37, line: 312, baseType: !50, size: 8, offset: 16)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !212, file: !37, line: 312, baseType: !50, size: 8, offset: 24)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !212, file: !37, line: 312, baseType: !50, size: 8, offset: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !212, file: !37, line: 312, baseType: !179, size: 32, offset: 40)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !212, file: !37, line: 312, baseType: !221, size: 160, offset: 72)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address32_attribute", file: !37, line: 287, size: 160, elements: !222)
!222 = !{!223, !224, !225, !226, !227}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !221, file: !37, line: 288, baseType: !27, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !221, file: !37, line: 289, baseType: !27, size: 32, offset: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !221, file: !37, line: 290, baseType: !27, size: 32, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !221, file: !37, line: 291, baseType: !27, size: 32, offset: 96)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !221, file: !37, line: 292, baseType: !27, size: 32, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !212, file: !37, line: 313, baseType: !205, size: 88, offset: 232)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !81, file: !37, line: 629, baseType: !230, size: 480)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address64", file: !37, line: 316, size: 480, elements: !231)
!231 = !{!232, !233, !234, !235, !236, !237, !238, !246}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !230, file: !37, line: 317, baseType: !50, size: 8)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !230, file: !37, line: 317, baseType: !50, size: 8, offset: 8)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !230, file: !37, line: 317, baseType: !50, size: 8, offset: 16)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !230, file: !37, line: 317, baseType: !50, size: 8, offset: 24)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !230, file: !37, line: 317, baseType: !50, size: 8, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !230, file: !37, line: 317, baseType: !179, size: 32, offset: 40)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !230, file: !37, line: 317, baseType: !239, size: 320, offset: 72)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address64_attribute", file: !37, line: 295, size: 320, elements: !240)
!240 = !{!241, !242, !243, !244, !245}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !239, file: !37, line: 296, baseType: !32, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !239, file: !37, line: 297, baseType: !32, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !239, file: !37, line: 298, baseType: !32, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !239, file: !37, line: 299, baseType: !32, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !239, file: !37, line: 300, baseType: !32, size: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !230, file: !37, line: 318, baseType: !205, size: 88, offset: 392)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !81, file: !37, line: 630, baseType: !248, size: 464)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_address64", file: !37, line: 321, size: 464, elements: !249)
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !258}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !248, file: !37, line: 322, baseType: !50, size: 8)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !248, file: !37, line: 322, baseType: !50, size: 8, offset: 8)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !248, file: !37, line: 322, baseType: !50, size: 8, offset: 16)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !248, file: !37, line: 322, baseType: !50, size: 8, offset: 24)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !248, file: !37, line: 322, baseType: !50, size: 8, offset: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !248, file: !37, line: 322, baseType: !179, size: 32, offset: 40)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !248, file: !37, line: 322, baseType: !50, size: 8, offset: 72)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !248, file: !37, line: 323, baseType: !239, size: 320, offset: 80)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !248, file: !37, line: 324, baseType: !32, size: 64, offset: 400)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !81, file: !37, line: 631, baseType: !260, size: 168)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_irq", file: !37, line: 327, size: 168, elements: !261)
!261 = !{!262, !263, !264, !265, !266, !267, !268, !269}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !260, file: !37, line: 328, baseType: !50, size: 8)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !260, file: !37, line: 329, baseType: !50, size: 8, offset: 8)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !260, file: !37, line: 330, baseType: !50, size: 8, offset: 16)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !260, file: !37, line: 331, baseType: !50, size: 8, offset: 24)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !260, file: !37, line: 332, baseType: !50, size: 8, offset: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !260, file: !37, line: 333, baseType: !50, size: 8, offset: 40)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !260, file: !37, line: 334, baseType: !205, size: 88, offset: 48)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !260, file: !37, line: 335, baseType: !270, size: 32, offset: 136)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !94)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !81, file: !37, line: 632, baseType: !272, size: 96)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_generic_register", file: !37, line: 338, size: 96, elements: !273)
!273 = !{!274, !275, !276, !277, !278}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !272, file: !37, line: 339, baseType: !50, size: 8)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !272, file: !37, line: 340, baseType: !50, size: 8, offset: 8)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !272, file: !37, line: 341, baseType: !50, size: 8, offset: 16)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !272, file: !37, line: 342, baseType: !50, size: 8, offset: 24)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !272, file: !37, line: 343, baseType: !32, size: 64, offset: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !81, file: !37, line: 633, baseType: !280, size: 352)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_gpio", file: !37, line: 346, size: 352, elements: !281)
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !298}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !280, file: !37, line: 347, baseType: !50, size: 8)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !280, file: !37, line: 348, baseType: !50, size: 8, offset: 8)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !280, file: !37, line: 349, baseType: !50, size: 8, offset: 16)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !280, file: !37, line: 350, baseType: !50, size: 8, offset: 24)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !280, file: !37, line: 351, baseType: !50, size: 8, offset: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !280, file: !37, line: 352, baseType: !50, size: 8, offset: 40)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "io_restriction", scope: !280, file: !37, line: 353, baseType: !50, size: 8, offset: 48)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !280, file: !37, line: 354, baseType: !50, size: 8, offset: 56)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !280, file: !37, line: 355, baseType: !50, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !280, file: !37, line: 356, baseType: !71, size: 16, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !280, file: !37, line: 357, baseType: !71, size: 16, offset: 88)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !280, file: !37, line: 358, baseType: !71, size: 16, offset: 104)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !280, file: !37, line: 359, baseType: !71, size: 16, offset: 120)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !280, file: !37, line: 360, baseType: !205, size: 88, offset: 136)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !280, file: !37, line: 361, baseType: !297, size: 64, offset: 224)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !280, file: !37, line: 362, baseType: !49, size: 64, offset: 288)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !81, file: !37, line: 634, baseType: !300, size: 288)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_i2c_serialbus", file: !37, line: 412, size: 288, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !300, file: !37, line: 413, baseType: !50, size: 8)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !300, file: !37, line: 413, baseType: !50, size: 8, offset: 8)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !300, file: !37, line: 413, baseType: !50, size: 8, offset: 16)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !300, file: !37, line: 413, baseType: !50, size: 8, offset: 24)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !300, file: !37, line: 413, baseType: !50, size: 8, offset: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !300, file: !37, line: 413, baseType: !50, size: 8, offset: 40)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !300, file: !37, line: 413, baseType: !71, size: 16, offset: 48)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !300, file: !37, line: 413, baseType: !71, size: 16, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !300, file: !37, line: 413, baseType: !205, size: 88, offset: 80)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !300, file: !37, line: 413, baseType: !49, size: 64, offset: 168)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "access_mode", scope: !300, file: !37, line: 413, baseType: !50, size: 8, offset: 232)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !300, file: !37, line: 414, baseType: !71, size: 16, offset: 240)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !300, file: !37, line: 415, baseType: !27, size: 32, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !81, file: !37, line: 635, baseType: !316, size: 320)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_spi_serialbus", file: !37, line: 423, size: 320, elements: !317)
!317 = !{!318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !316, file: !37, line: 424, baseType: !50, size: 8)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !316, file: !37, line: 424, baseType: !50, size: 8, offset: 8)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !316, file: !37, line: 424, baseType: !50, size: 8, offset: 16)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !316, file: !37, line: 424, baseType: !50, size: 8, offset: 24)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !316, file: !37, line: 424, baseType: !50, size: 8, offset: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !316, file: !37, line: 424, baseType: !50, size: 8, offset: 40)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !316, file: !37, line: 424, baseType: !71, size: 16, offset: 48)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !316, file: !37, line: 424, baseType: !71, size: 16, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !316, file: !37, line: 424, baseType: !205, size: 88, offset: 80)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !316, file: !37, line: 424, baseType: !49, size: 64, offset: 168)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "wire_mode", scope: !316, file: !37, line: 424, baseType: !50, size: 8, offset: 232)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "device_polarity", scope: !316, file: !37, line: 425, baseType: !50, size: 8, offset: 240)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !316, file: !37, line: 426, baseType: !50, size: 8, offset: 248)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !316, file: !37, line: 427, baseType: !50, size: 8, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !316, file: !37, line: 428, baseType: !50, size: 8, offset: 264)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !316, file: !37, line: 429, baseType: !71, size: 16, offset: 272)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !316, file: !37, line: 430, baseType: !27, size: 32, offset: 288)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !81, file: !37, line: 636, baseType: !336, size: 344)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_uart_serialbus", file: !37, line: 453, size: 344, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !336, file: !37, line: 454, baseType: !50, size: 8)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !336, file: !37, line: 454, baseType: !50, size: 8, offset: 8)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !336, file: !37, line: 454, baseType: !50, size: 8, offset: 16)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !336, file: !37, line: 454, baseType: !50, size: 8, offset: 24)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !336, file: !37, line: 454, baseType: !50, size: 8, offset: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !336, file: !37, line: 454, baseType: !50, size: 8, offset: 40)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !336, file: !37, line: 454, baseType: !71, size: 16, offset: 48)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !336, file: !37, line: 454, baseType: !71, size: 16, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !336, file: !37, line: 454, baseType: !205, size: 88, offset: 80)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !336, file: !37, line: 454, baseType: !49, size: 64, offset: 168)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !336, file: !37, line: 454, baseType: !50, size: 8, offset: 232)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !336, file: !37, line: 455, baseType: !50, size: 8, offset: 240)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !336, file: !37, line: 456, baseType: !50, size: 8, offset: 248)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !336, file: !37, line: 457, baseType: !50, size: 8, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !336, file: !37, line: 458, baseType: !50, size: 8, offset: 264)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !336, file: !37, line: 459, baseType: !50, size: 8, offset: 272)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !336, file: !37, line: 460, baseType: !71, size: 16, offset: 280)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !336, file: !37, line: 461, baseType: !71, size: 16, offset: 296)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !336, file: !37, line: 462, baseType: !27, size: 32, offset: 312)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !81, file: !37, line: 637, baseType: !358, size: 232)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_common_serialbus", file: !37, line: 398, size: 232, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366, !367, !368, !369}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !358, file: !37, line: 399, baseType: !50, size: 8)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !358, file: !37, line: 399, baseType: !50, size: 8, offset: 8)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !358, file: !37, line: 399, baseType: !50, size: 8, offset: 16)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !358, file: !37, line: 399, baseType: !50, size: 8, offset: 24)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !358, file: !37, line: 399, baseType: !50, size: 8, offset: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !358, file: !37, line: 399, baseType: !50, size: 8, offset: 40)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !358, file: !37, line: 399, baseType: !71, size: 16, offset: 48)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !358, file: !37, line: 399, baseType: !71, size: 16, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !358, file: !37, line: 399, baseType: !205, size: 88, offset: 80)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !358, file: !37, line: 399, baseType: !49, size: 64, offset: 168)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !81, file: !37, line: 638, baseType: !371, size: 288)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_function", file: !37, line: 508, size: 288, elements: !372)
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380, !381}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !371, file: !37, line: 509, baseType: !50, size: 8)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !371, file: !37, line: 510, baseType: !50, size: 8, offset: 8)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !371, file: !37, line: 511, baseType: !50, size: 8, offset: 16)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !371, file: !37, line: 512, baseType: !71, size: 16, offset: 24)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !371, file: !37, line: 513, baseType: !71, size: 16, offset: 40)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !371, file: !37, line: 514, baseType: !71, size: 16, offset: 56)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !371, file: !37, line: 515, baseType: !205, size: 88, offset: 72)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !371, file: !37, line: 516, baseType: !297, size: 64, offset: 160)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !371, file: !37, line: 517, baseType: !49, size: 64, offset: 224)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !81, file: !37, line: 639, baseType: !383, size: 312)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_config", file: !37, line: 520, size: 312, elements: !384)
!384 = !{!385, !386, !387, !388, !389, !390, !391, !392, !393, !394}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !383, file: !37, line: 521, baseType: !50, size: 8)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !383, file: !37, line: 522, baseType: !50, size: 8, offset: 8)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !383, file: !37, line: 523, baseType: !50, size: 8, offset: 16)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !383, file: !37, line: 524, baseType: !50, size: 8, offset: 24)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !383, file: !37, line: 525, baseType: !27, size: 32, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !383, file: !37, line: 526, baseType: !71, size: 16, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !383, file: !37, line: 527, baseType: !71, size: 16, offset: 80)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !383, file: !37, line: 528, baseType: !205, size: 88, offset: 96)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !383, file: !37, line: 529, baseType: !297, size: 64, offset: 184)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !383, file: !37, line: 530, baseType: !49, size: 64, offset: 248)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !81, file: !37, line: 640, baseType: !396, size: 256)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group", file: !37, line: 550, size: 256, elements: !397)
!397 = !{!398, !399, !400, !401, !402, !403, !408}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !396, file: !37, line: 551, baseType: !50, size: 8)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !396, file: !37, line: 552, baseType: !50, size: 8, offset: 8)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !396, file: !37, line: 553, baseType: !71, size: 16, offset: 16)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !396, file: !37, line: 554, baseType: !71, size: 16, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !396, file: !37, line: 555, baseType: !297, size: 64, offset: 48)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "resource_label", scope: !396, file: !37, line: 556, baseType: !404, size: 80, offset: 112)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_label", file: !37, line: 258, size: 80, elements: !405)
!405 = !{!406, !407}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !404, file: !37, line: 259, baseType: !71, size: 16)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !404, file: !37, line: 260, baseType: !210, size: 64, offset: 16)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !396, file: !37, line: 557, baseType: !49, size: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !81, file: !37, line: 641, baseType: !410, size: 288)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_function", file: !37, line: 560, size: 288, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !417, !418, !419}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !410, file: !37, line: 561, baseType: !50, size: 8)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !410, file: !37, line: 562, baseType: !50, size: 8, offset: 8)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !410, file: !37, line: 563, baseType: !50, size: 8, offset: 16)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !410, file: !37, line: 564, baseType: !71, size: 16, offset: 24)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !410, file: !37, line: 565, baseType: !71, size: 16, offset: 40)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !410, file: !37, line: 566, baseType: !205, size: 88, offset: 56)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !410, file: !37, line: 567, baseType: !404, size: 80, offset: 144)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !410, file: !37, line: 568, baseType: !49, size: 64, offset: 224)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !81, file: !37, line: 642, baseType: !421, size: 312)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_config", file: !37, line: 571, size: 312, elements: !422)
!422 = !{!423, !424, !425, !426, !427, !428, !429, !430, !431}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !421, file: !37, line: 572, baseType: !50, size: 8)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !421, file: !37, line: 573, baseType: !50, size: 8, offset: 8)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !421, file: !37, line: 574, baseType: !50, size: 8, offset: 16)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !421, file: !37, line: 575, baseType: !50, size: 8, offset: 24)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !421, file: !37, line: 576, baseType: !27, size: 32, offset: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !421, file: !37, line: 577, baseType: !71, size: 16, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !421, file: !37, line: 578, baseType: !205, size: 88, offset: 80)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !421, file: !37, line: 579, baseType: !404, size: 80, offset: 168)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !421, file: !37, line: 580, baseType: !49, size: 64, offset: 248)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !81, file: !37, line: 646, baseType: !433, size: 72)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address", file: !37, line: 303, size: 72, elements: !434)
!434 = !{!435, !436, !437, !438, !439, !440}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !433, file: !37, line: 304, baseType: !50, size: 8)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !433, file: !37, line: 304, baseType: !50, size: 8, offset: 8)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !433, file: !37, line: 304, baseType: !50, size: 8, offset: 16)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !433, file: !37, line: 304, baseType: !50, size: 8, offset: 24)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !433, file: !37, line: 304, baseType: !50, size: 8, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !433, file: !37, line: 304, baseType: !179, size: 32, offset: 40)
!441 = !{}
!442 = !DILocalVariable(name: "aml_buffer", arg: 1, scope: !68, file: !3, line: 30, type: !49)
!443 = !DILocation(line: 30, column: 29, scope: !68)
!444 = !DILocalVariable(name: "aml_buffer_length", arg: 2, scope: !68, file: !3, line: 31, type: !71)
!445 = !DILocation(line: 31, column: 8, scope: !68)
!446 = !DILocalVariable(name: "resource_ptr", arg: 3, scope: !68, file: !3, line: 32, type: !74)
!447 = !DILocation(line: 32, column: 27, scope: !68)
!448 = !DILocalVariable(name: "status", scope: !68, file: !3, line: 34, type: !25)
!449 = !DILocation(line: 34, column: 14, scope: !68)
!450 = !DILocalVariable(name: "list_size_needed", scope: !68, file: !3, line: 35, type: !31)
!451 = !DILocation(line: 35, column: 12, scope: !68)
!452 = !DILocalVariable(name: "resource", scope: !68, file: !3, line: 36, type: !48)
!453 = !DILocation(line: 36, column: 8, scope: !68)
!454 = !DILocalVariable(name: "current_resource_ptr", scope: !68, file: !3, line: 37, type: !48)
!455 = !DILocation(line: 37, column: 8, scope: !68)
!456 = !DILocation(line: 49, column: 30, scope: !68)
!457 = !DILocation(line: 49, column: 42, scope: !68)
!458 = !DILocation(line: 49, column: 6, scope: !68)
!459 = !DILocation(line: 48, column: 9, scope: !68)
!460 = !DILocation(line: 51, column: 6, scope: !461)
!461 = distinct !DILexicalBlock(scope: !68, file: !3, line: 51, column: 6)
!462 = !DILocation(line: 51, column: 13, scope: !461)
!463 = !DILocation(line: 51, column: 6, scope: !68)
!464 = !DILocation(line: 52, column: 10, scope: !465)
!465 = distinct !DILexicalBlock(scope: !461, file: !3, line: 51, column: 44)
!466 = !DILocation(line: 53, column: 2, scope: !465)
!467 = !DILocation(line: 54, column: 6, scope: !468)
!468 = distinct !DILexicalBlock(scope: !68, file: !3, line: 54, column: 6)
!469 = !DILocation(line: 54, column: 6, scope: !68)
!470 = !DILocation(line: 55, column: 3, scope: !471)
!471 = distinct !DILexicalBlock(scope: !468, file: !3, line: 54, column: 28)
!472 = !DILocation(line: 60, column: 13, scope: !68)
!473 = !DILocation(line: 60, column: 11, scope: !68)
!474 = !DILocation(line: 61, column: 25, scope: !68)
!475 = !DILocation(line: 61, column: 23, scope: !68)
!476 = !DILocation(line: 62, column: 7, scope: !477)
!477 = distinct !DILexicalBlock(scope: !68, file: !3, line: 62, column: 6)
!478 = !DILocation(line: 62, column: 6, scope: !68)
!479 = !DILocation(line: 63, column: 3, scope: !480)
!480 = distinct !DILexicalBlock(scope: !477, file: !3, line: 62, column: 17)
!481 = !DILocation(line: 68, column: 44, scope: !68)
!482 = !DILocation(line: 68, column: 56, scope: !68)
!483 = !DILocation(line: 68, column: 11, scope: !68)
!484 = !DILocation(line: 68, column: 9, scope: !68)
!485 = !DILocation(line: 71, column: 6, scope: !486)
!486 = distinct !DILexicalBlock(scope: !68, file: !3, line: 71, column: 6)
!487 = !DILocation(line: 71, column: 13, scope: !486)
!488 = !DILocation(line: 71, column: 6, scope: !68)
!489 = !DILocation(line: 72, column: 10, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !3, line: 71, column: 44)
!491 = !DILocation(line: 73, column: 2, scope: !490)
!492 = !DILocation(line: 74, column: 6, scope: !493)
!493 = distinct !DILexicalBlock(scope: !68, file: !3, line: 74, column: 6)
!494 = !DILocation(line: 74, column: 6, scope: !68)
!495 = !DILocation(line: 75, column: 3, scope: !496)
!496 = distinct !DILexicalBlock(scope: !493, file: !3, line: 74, column: 28)
!497 = !DILocation(line: 76, column: 2, scope: !496)
!498 = !DILocation(line: 77, column: 19, scope: !499)
!499 = distinct !DILexicalBlock(scope: !493, file: !3, line: 76, column: 9)
!500 = !DILocation(line: 77, column: 4, scope: !499)
!501 = !DILocation(line: 77, column: 17, scope: !499)
!502 = !DILocation(line: 80, column: 2, scope: !68)
!503 = !DILocation(line: 81, column: 1, scope: !68)
!504 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !505, file: !505, line: 55, type: !506, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !441)
!505 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!506 = !DISubroutineType(types: !507)
!507 = !{!48, !31}
!508 = !DILocalVariable(name: "flags", arg: 1, scope: !509, file: !510, line: 162, type: !56)
!509 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !510, file: !510, line: 162, type: !511, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !441)
!510 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!511 = !DISubroutineType(types: !512)
!512 = !{!513, !56}
!513 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!514 = !DILocation(line: 162, column: 67, scope: !509, inlinedAt: !515)
!515 = distinct !DILocation(line: 57, column: 23, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !505, line: 57, column: 23)
!517 = distinct !DILexicalBlock(scope: !504, file: !505, line: 57, column: 23)
!518 = !DILocalVariable(name: "size", arg: 1, scope: !504, file: !505, line: 55, type: !31)
!519 = !DILocation(line: 55, column: 55, scope: !504)
!520 = !DILocation(line: 57, column: 17, scope: !504)
!521 = !DILocalVariable(name: "_flags", scope: !517, file: !505, line: 57, type: !56)
!522 = !DILocation(line: 57, column: 23, scope: !517)
!523 = !DILocalVariable(name: "__dummy", scope: !524, file: !505, line: 57, type: !56)
!524 = distinct !DILexicalBlock(scope: !525, file: !505, line: 57, column: 23)
!525 = distinct !DILexicalBlock(scope: !517, file: !505, line: 57, column: 23)
!526 = !DILocation(line: 57, column: 23, scope: !524)
!527 = !DILocalVariable(name: "__dummy2", scope: !524, file: !505, line: 57, type: !56)
!528 = !DILocation(line: 57, column: 23, scope: !525)
!529 = !DILocalVariable(name: "__dummy", scope: !530, file: !505, line: 57, type: !56)
!530 = distinct !DILexicalBlock(scope: !516, file: !505, line: 57, column: 23)
!531 = !DILocation(line: 57, column: 23, scope: !530)
!532 = !DILocalVariable(name: "__dummy2", scope: !530, file: !505, line: 57, type: !56)
!533 = !DILocation(line: 57, column: 23, scope: !516)
!534 = !DILocation(line: 164, column: 11, scope: !509, inlinedAt: !515)
!535 = !DILocation(line: 164, column: 17, scope: !509, inlinedAt: !515)
!536 = !DILocation(line: 164, column: 9, scope: !509, inlinedAt: !515)
!537 = !DILocation(line: 57, column: 23, scope: !504)
!538 = !DILocation(line: 57, column: 9, scope: !504)
!539 = !DILocation(line: 57, column: 2, scope: !504)
!540 = distinct !DISubprogram(name: "acpi_os_free", scope: !505, file: !505, line: 60, type: !541, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !441)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !48}
!543 = !DILocalVariable(name: "memory", arg: 1, scope: !540, file: !505, line: 60, type: !48)
!544 = !DILocation(line: 60, column: 39, scope: !540)
!545 = !DILocation(line: 62, column: 8, scope: !540)
!546 = !DILocation(line: 62, column: 2, scope: !540)
!547 = !DILocation(line: 63, column: 1, scope: !540)
!548 = distinct !DISubprogram(name: "acpi_rs_create_resource_list", scope: !3, file: !3, line: 103, type: !549, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !441)
!549 = !DISubroutineType(types: !550)
!550 = !{!25, !551, !1299}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 367, size: 576, elements: !553)
!553 = !{!554, !562, !575, !585, !617, !631, !640, !950, !967, !982, !995, !1073, !1085, !1099, !1109, !1127, !1149, !1168, !1187, !1206, !1219, !1245, !1262, !1275, !1289, !1298}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !552, file: !6, line: 368, baseType: !555, size: 128)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !556)
!556 = !{!557, !558, !559, !560, !561}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !555, file: !6, line: 74, baseType: !551, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !555, file: !6, line: 74, baseType: !50, size: 8, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !555, file: !6, line: 74, baseType: !50, size: 8, offset: 72)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !555, file: !6, line: 74, baseType: !71, size: 16, offset: 80)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !555, file: !6, line: 74, baseType: !50, size: 8, offset: 96)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !552, file: !6, line: 369, baseType: !563, size: 192)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !564)
!564 = !{!565, !566, !567, !568, !569, !570, !574}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !563, file: !6, line: 77, baseType: !551, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !563, file: !6, line: 77, baseType: !50, size: 8, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !563, file: !6, line: 77, baseType: !50, size: 8, offset: 72)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !563, file: !6, line: 77, baseType: !71, size: 16, offset: 80)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !563, file: !6, line: 77, baseType: !50, size: 8, offset: 96)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !563, file: !6, line: 77, baseType: !571, size: 24, offset: 104)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 24, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 3)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !563, file: !6, line: 78, baseType: !32, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !552, file: !6, line: 370, baseType: !576, size: 256)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583, !584}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !576, file: !6, line: 94, baseType: !551, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !576, file: !6, line: 94, baseType: !50, size: 8, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !576, file: !6, line: 94, baseType: !50, size: 8, offset: 72)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !576, file: !6, line: 94, baseType: !71, size: 16, offset: 80)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !576, file: !6, line: 94, baseType: !50, size: 8, offset: 96)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !576, file: !6, line: 94, baseType: !210, size: 64, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !576, file: !6, line: 94, baseType: !27, size: 32, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !552, file: !6, line: 371, baseType: !586, size: 384)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !587)
!587 = !{!588, !589, !590, !591, !592, !593, !594, !595, !596, !597}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !586, file: !6, line: 98, baseType: !551, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !586, file: !6, line: 98, baseType: !50, size: 8, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !586, file: !6, line: 98, baseType: !50, size: 8, offset: 72)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !586, file: !6, line: 98, baseType: !71, size: 16, offset: 80)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !586, file: !6, line: 98, baseType: !50, size: 8, offset: 96)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !586, file: !6, line: 98, baseType: !49, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !586, file: !6, line: 98, baseType: !27, size: 32, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !586, file: !6, line: 99, baseType: !27, size: 32, offset: 224)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !586, file: !6, line: 100, baseType: !49, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !586, file: !6, line: 101, baseType: !598, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !600, line: 133, size: 384, elements: !601)
!600 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!601 = !{!602, !603, !604, !605, !606, !612, !613, !614, !615}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !599, file: !600, line: 134, baseType: !551, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !599, file: !600, line: 135, baseType: !50, size: 8, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !599, file: !600, line: 136, baseType: !50, size: 8, offset: 72)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !600, line: 137, baseType: !71, size: 16, offset: 80)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !599, file: !600, line: 138, baseType: !607, size: 32, offset: 96)
!607 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !608, line: 327, size: 32, elements: !609)
!608 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!609 = !{!610, !611}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !607, file: !608, line: 328, baseType: !27, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !607, file: !608, line: 329, baseType: !44, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !599, file: !600, line: 139, baseType: !598, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !599, file: !600, line: 140, baseType: !598, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !599, file: !600, line: 141, baseType: !598, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !599, file: !600, line: 142, baseType: !616, size: 16, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !26, line: 445, baseType: !71)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !552, file: !6, line: 372, baseType: !618, size: 384)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625, !626, !628, !629, !630}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !618, file: !6, line: 105, baseType: !551, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !618, file: !6, line: 105, baseType: !50, size: 8, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !618, file: !6, line: 105, baseType: !50, size: 8, offset: 72)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !618, file: !6, line: 105, baseType: !71, size: 16, offset: 80)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !618, file: !6, line: 105, baseType: !50, size: 8, offset: 96)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !618, file: !6, line: 105, baseType: !598, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !618, file: !6, line: 106, baseType: !627, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !618, file: !6, line: 107, baseType: !49, size: 64, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !618, file: !6, line: 108, baseType: !27, size: 32, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !618, file: !6, line: 109, baseType: !27, size: 32, offset: 352)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !552, file: !6, line: 373, baseType: !632, size: 192)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !633)
!633 = !{!634, !635, !636, !637, !638, !639}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !632, file: !6, line: 119, baseType: !551, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !632, file: !6, line: 119, baseType: !50, size: 8, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !632, file: !6, line: 119, baseType: !50, size: 8, offset: 72)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !632, file: !6, line: 119, baseType: !71, size: 16, offset: 80)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !6, line: 119, baseType: !50, size: 8, offset: 96)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !632, file: !6, line: 119, baseType: !48, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !552, file: !6, line: 374, baseType: !641, size: 448)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 143, size: 448, elements: !642)
!642 = !{!643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !947, !948, !949}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !641, file: !6, line: 144, baseType: !551, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !641, file: !6, line: 144, baseType: !50, size: 8, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !641, file: !6, line: 144, baseType: !50, size: 8, offset: 72)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !641, file: !6, line: 144, baseType: !71, size: 16, offset: 80)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !641, file: !6, line: 144, baseType: !50, size: 8, offset: 96)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !641, file: !6, line: 144, baseType: !50, size: 8, offset: 104)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !641, file: !6, line: 145, baseType: !50, size: 8, offset: 112)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !641, file: !6, line: 146, baseType: !50, size: 8, offset: 120)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !641, file: !6, line: 147, baseType: !551, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !641, file: !6, line: 148, baseType: !551, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !641, file: !6, line: 149, baseType: !49, size: 64, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !641, file: !6, line: 153, baseType: !655, size: 64, offset: 320)
!655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !641, file: !6, line: 150, size: 64, elements: !656)
!656 = !{!657, !946}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !655, file: !6, line: 151, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !600, line: 248, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!25, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !664, line: 37, size: 9024, elements: !665)
!664 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!665 = !{!666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !894, !895, !896, !897, !898, !902, !904, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !929, !930, !931, !932, !933, !934, !935, !936, !938, !944}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !663, file: !664, line: 38, baseType: !662, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !663, file: !664, line: 39, baseType: !50, size: 8, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !663, file: !664, line: 40, baseType: !50, size: 8, offset: 72)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !663, file: !664, line: 41, baseType: !71, size: 16, offset: 80)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !663, file: !664, line: 42, baseType: !50, size: 8, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !663, file: !664, line: 43, baseType: !50, size: 8, offset: 104)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !663, file: !664, line: 44, baseType: !50, size: 8, offset: 112)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !663, file: !664, line: 45, baseType: !616, size: 16, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !663, file: !664, line: 46, baseType: !50, size: 8, offset: 144)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !663, file: !664, line: 47, baseType: !50, size: 8, offset: 152)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !663, file: !664, line: 48, baseType: !50, size: 8, offset: 160)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !663, file: !664, line: 49, baseType: !50, size: 8, offset: 168)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !663, file: !664, line: 50, baseType: !50, size: 8, offset: 176)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !663, file: !664, line: 51, baseType: !50, size: 8, offset: 184)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !663, file: !664, line: 52, baseType: !50, size: 8, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !663, file: !664, line: 53, baseType: !50, size: 8, offset: 200)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !663, file: !664, line: 54, baseType: !49, size: 64, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !663, file: !664, line: 55, baseType: !27, size: 32, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !663, file: !664, line: 56, baseType: !27, size: 32, offset: 352)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !663, file: !664, line: 57, baseType: !27, size: 32, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !663, file: !664, line: 58, baseType: !27, size: 32, offset: 416)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !663, file: !664, line: 60, baseType: !688, size: 640, offset: 448)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !600, line: 893, size: 640, elements: !689)
!689 = !{!690, !691, !692, !693, !694, !695, !776, !777, !892, !893}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !688, file: !600, line: 894, baseType: !49, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !688, file: !600, line: 895, baseType: !49, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !688, file: !600, line: 896, baseType: !49, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !688, file: !600, line: 897, baseType: !49, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !688, file: !600, line: 898, baseType: !49, size: 64, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !688, file: !600, line: 899, baseType: !696, size: 64, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !600, line: 875, size: 1600, elements: !698)
!698 = !{!699, !719, !735}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !697, file: !600, line: 876, baseType: !700, size: 448)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !600, line: 828, size: 448, elements: !701)
!701 = !{!702, !703, !704, !705, !706, !707, !708, !709, !718}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !700, file: !600, line: 829, baseType: !696, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !700, file: !600, line: 829, baseType: !50, size: 8, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !700, file: !600, line: 829, baseType: !50, size: 8, offset: 72)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !700, file: !600, line: 829, baseType: !71, size: 16, offset: 80)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !700, file: !600, line: 829, baseType: !49, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !700, file: !600, line: 829, baseType: !696, size: 64, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !700, file: !600, line: 829, baseType: !598, size: 64, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !700, file: !600, line: 829, baseType: !710, size: 64, offset: 320)
!710 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !600, line: 716, size: 64, elements: !711)
!711 = !{!712, !713, !714, !715, !716, !717}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !710, file: !600, line: 717, baseType: !32, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !710, file: !600, line: 718, baseType: !27, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !710, file: !600, line: 719, baseType: !210, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !710, file: !600, line: 720, baseType: !49, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !710, file: !600, line: 721, baseType: !210, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !710, file: !600, line: 722, baseType: !696, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !700, file: !600, line: 829, baseType: !50, size: 8, offset: 384)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !697, file: !600, line: 877, baseType: !720, size: 640)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !600, line: 835, size: 640, elements: !721)
!721 = !{!722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !720, file: !600, line: 836, baseType: !696, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !720, file: !600, line: 836, baseType: !50, size: 8, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !720, file: !600, line: 836, baseType: !50, size: 8, offset: 72)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !720, file: !600, line: 836, baseType: !71, size: 16, offset: 80)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !720, file: !600, line: 836, baseType: !49, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !720, file: !600, line: 836, baseType: !696, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !720, file: !600, line: 836, baseType: !598, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !720, file: !600, line: 836, baseType: !710, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !720, file: !600, line: 836, baseType: !50, size: 8, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !720, file: !600, line: 836, baseType: !210, size: 64, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !720, file: !600, line: 837, baseType: !49, size: 64, offset: 512)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !720, file: !600, line: 838, baseType: !27, size: 32, offset: 576)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !720, file: !600, line: 839, baseType: !27, size: 32, offset: 608)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !697, file: !600, line: 878, baseType: !736, size: 1600)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !600, line: 846, size: 1600, elements: !737)
!737 = !{!738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !736, file: !600, line: 847, baseType: !696, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !736, file: !600, line: 847, baseType: !50, size: 8, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !736, file: !600, line: 847, baseType: !50, size: 8, offset: 72)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !736, file: !600, line: 847, baseType: !71, size: 16, offset: 80)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !736, file: !600, line: 847, baseType: !49, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !736, file: !600, line: 847, baseType: !696, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !736, file: !600, line: 847, baseType: !598, size: 64, offset: 256)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !736, file: !600, line: 847, baseType: !710, size: 64, offset: 320)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !736, file: !600, line: 847, baseType: !50, size: 8, offset: 384)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !736, file: !600, line: 847, baseType: !696, size: 64, offset: 448)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !736, file: !600, line: 848, baseType: !696, size: 64, offset: 512)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !736, file: !600, line: 849, baseType: !210, size: 64, offset: 576)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !736, file: !600, line: 850, baseType: !50, size: 8, offset: 640)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !736, file: !600, line: 851, baseType: !210, size: 64, offset: 704)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !736, file: !600, line: 852, baseType: !210, size: 64, offset: 768)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !736, file: !600, line: 853, baseType: !210, size: 64, offset: 832)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !736, file: !600, line: 854, baseType: !44, size: 32, offset: 896)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !736, file: !600, line: 855, baseType: !27, size: 32, offset: 928)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !736, file: !600, line: 856, baseType: !27, size: 32, offset: 960)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !736, file: !600, line: 857, baseType: !27, size: 32, offset: 992)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !736, file: !600, line: 858, baseType: !27, size: 32, offset: 1024)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !736, file: !600, line: 859, baseType: !27, size: 32, offset: 1056)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !736, file: !600, line: 860, baseType: !27, size: 32, offset: 1088)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !736, file: !600, line: 861, baseType: !27, size: 32, offset: 1120)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !736, file: !600, line: 862, baseType: !27, size: 32, offset: 1152)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !736, file: !600, line: 863, baseType: !27, size: 32, offset: 1184)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !736, file: !600, line: 864, baseType: !27, size: 32, offset: 1216)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !736, file: !600, line: 865, baseType: !27, size: 32, offset: 1248)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !736, file: !600, line: 866, baseType: !27, size: 32, offset: 1280)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !736, file: !600, line: 867, baseType: !27, size: 32, offset: 1312)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !736, file: !600, line: 868, baseType: !71, size: 16, offset: 1344)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !736, file: !600, line: 869, baseType: !50, size: 8, offset: 1360)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !736, file: !600, line: 870, baseType: !50, size: 8, offset: 1368)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !736, file: !600, line: 871, baseType: !50, size: 8, offset: 1376)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !736, file: !600, line: 872, baseType: !773, size: 160, offset: 1384)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 160, elements: !774)
!774 = !{!775}
!775 = !DISubrange(count: 20)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !688, file: !600, line: 900, baseType: !598, size: 64, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !688, file: !600, line: 901, baseType: !778, size: 64, offset: 448)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !600, line: 663, size: 640, elements: !780)
!780 = !{!781, !789, !802, !811, !820, !833, !847, !859, !871}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !779, file: !600, line: 664, baseType: !782, size: 128)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !600, line: 567, size: 128, elements: !783)
!783 = !{!784, !785, !786, !787, !788}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !782, file: !600, line: 568, baseType: !48, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !782, file: !600, line: 568, baseType: !50, size: 8, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !600, line: 568, baseType: !50, size: 8, offset: 72)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !782, file: !600, line: 568, baseType: !71, size: 16, offset: 80)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !782, file: !600, line: 568, baseType: !71, size: 16, offset: 96)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !779, file: !600, line: 665, baseType: !790, size: 384)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !600, line: 593, size: 384, elements: !791)
!791 = !{!792, !793, !794, !795, !796, !797, !798, !799, !800, !801}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !790, file: !600, line: 594, baseType: !48, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !790, file: !600, line: 594, baseType: !50, size: 8, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !790, file: !600, line: 594, baseType: !50, size: 8, offset: 72)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !790, file: !600, line: 594, baseType: !71, size: 16, offset: 80)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !790, file: !600, line: 594, baseType: !71, size: 16, offset: 96)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !790, file: !600, line: 594, baseType: !71, size: 16, offset: 112)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !790, file: !600, line: 595, baseType: !696, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !790, file: !600, line: 596, baseType: !49, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !790, file: !600, line: 597, baseType: !49, size: 64, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !790, file: !600, line: 598, baseType: !32, size: 64, offset: 320)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !779, file: !600, line: 666, baseType: !803, size: 192)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !600, line: 573, size: 192, elements: !804)
!804 = !{!805, !806, !807, !808, !809, !810}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !803, file: !600, line: 574, baseType: !48, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !803, file: !600, line: 574, baseType: !50, size: 8, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !803, file: !600, line: 574, baseType: !50, size: 8, offset: 72)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !803, file: !600, line: 574, baseType: !71, size: 16, offset: 80)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !803, file: !600, line: 574, baseType: !71, size: 16, offset: 96)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !803, file: !600, line: 574, baseType: !551, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !779, file: !600, line: 667, baseType: !812, size: 192)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !600, line: 604, size: 192, elements: !813)
!813 = !{!814, !815, !816, !817, !818, !819}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !812, file: !600, line: 605, baseType: !48, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !812, file: !600, line: 605, baseType: !50, size: 8, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !812, file: !600, line: 605, baseType: !50, size: 8, offset: 72)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !812, file: !600, line: 605, baseType: !71, size: 16, offset: 80)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !812, file: !600, line: 605, baseType: !71, size: 16, offset: 96)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !812, file: !600, line: 605, baseType: !598, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !779, file: !600, line: 668, baseType: !821, size: 448)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !600, line: 608, size: 448, elements: !822)
!822 = !{!823, !824, !825, !826, !827, !828, !829, !830, !831, !832}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !821, file: !600, line: 609, baseType: !48, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !821, file: !600, line: 609, baseType: !50, size: 8, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !821, file: !600, line: 609, baseType: !50, size: 8, offset: 72)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !821, file: !600, line: 609, baseType: !71, size: 16, offset: 80)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !821, file: !600, line: 609, baseType: !71, size: 16, offset: 96)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !821, file: !600, line: 609, baseType: !27, size: 32, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !821, file: !600, line: 610, baseType: !696, size: 64, offset: 192)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !821, file: !600, line: 611, baseType: !49, size: 64, offset: 256)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !821, file: !600, line: 612, baseType: !49, size: 64, offset: 320)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !821, file: !600, line: 613, baseType: !27, size: 32, offset: 384)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !779, file: !600, line: 669, baseType: !834, size: 512)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !600, line: 580, size: 512, elements: !835)
!835 = !{!836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !834, file: !600, line: 581, baseType: !48, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !834, file: !600, line: 581, baseType: !50, size: 8, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !834, file: !600, line: 581, baseType: !50, size: 8, offset: 72)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !834, file: !600, line: 581, baseType: !71, size: 16, offset: 80)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !834, file: !600, line: 581, baseType: !71, size: 16, offset: 96)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !834, file: !600, line: 581, baseType: !27, size: 32, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !834, file: !600, line: 582, baseType: !551, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !834, file: !600, line: 583, baseType: !551, size: 64, offset: 256)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !834, file: !600, line: 584, baseType: !662, size: 64, offset: 320)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !834, file: !600, line: 585, baseType: !48, size: 64, offset: 384)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !834, file: !600, line: 586, baseType: !27, size: 32, offset: 448)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !779, file: !600, line: 670, baseType: !848, size: 320)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !600, line: 620, size: 320, elements: !849)
!849 = !{!850, !851, !852, !853, !854, !855, !856, !857, !858}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !848, file: !600, line: 621, baseType: !48, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !848, file: !600, line: 621, baseType: !50, size: 8, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !848, file: !600, line: 621, baseType: !50, size: 8, offset: 72)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !848, file: !600, line: 621, baseType: !71, size: 16, offset: 80)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !848, file: !600, line: 621, baseType: !71, size: 16, offset: 96)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !848, file: !600, line: 621, baseType: !50, size: 8, offset: 112)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !848, file: !600, line: 622, baseType: !662, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !848, file: !600, line: 623, baseType: !551, size: 64, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !848, file: !600, line: 624, baseType: !32, size: 64, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !779, file: !600, line: 671, baseType: !860, size: 640)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !600, line: 631, size: 640, elements: !861)
!861 = !{!862, !863, !864, !865, !866, !867}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !860, file: !600, line: 632, baseType: !48, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !860, file: !600, line: 632, baseType: !50, size: 8, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !860, file: !600, line: 632, baseType: !50, size: 8, offset: 72)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !860, file: !600, line: 632, baseType: !71, size: 16, offset: 80)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !860, file: !600, line: 632, baseType: !71, size: 16, offset: 96)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !860, file: !600, line: 633, baseType: !868, size: 512, offset: 128)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 512, elements: !869)
!869 = !{!870}
!870 = !DISubrange(count: 8)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !779, file: !600, line: 672, baseType: !872, size: 320)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !600, line: 654, size: 320, elements: !873)
!873 = !{!874, !875, !876, !877, !878, !879, !880, !881, !882}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !872, file: !600, line: 655, baseType: !48, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !872, file: !600, line: 655, baseType: !50, size: 8, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !872, file: !600, line: 655, baseType: !50, size: 8, offset: 72)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !872, file: !600, line: 655, baseType: !71, size: 16, offset: 80)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !872, file: !600, line: 655, baseType: !71, size: 16, offset: 96)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !872, file: !600, line: 655, baseType: !50, size: 8, offset: 112)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !872, file: !600, line: 656, baseType: !598, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !872, file: !600, line: 657, baseType: !551, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !872, file: !600, line: 658, baseType: !883, size: 64, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !600, line: 645, size: 128, elements: !885)
!885 = !{!886, !891}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !884, file: !600, line: 646, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !26, line: 1052, baseType: !888)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !53, !27, !48}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !884, file: !600, line: 647, baseType: !48, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !688, file: !600, line: 902, baseType: !696, size: 64, offset: 512)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !688, file: !600, line: 903, baseType: !27, size: 32, offset: 576)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !663, file: !664, line: 61, baseType: !27, size: 32, offset: 1088)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !663, file: !664, line: 62, baseType: !27, size: 32, offset: 1120)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !663, file: !664, line: 63, baseType: !71, size: 16, offset: 1152)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !663, file: !664, line: 64, baseType: !50, size: 8, offset: 1168)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !663, file: !664, line: 66, baseType: !899, size: 2688, offset: 1216)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 2688, elements: !900)
!900 = !{!901}
!901 = !DISubrange(count: 7)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !663, file: !664, line: 67, baseType: !903, size: 3072, offset: 3904)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 3072, elements: !869)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !663, file: !664, line: 68, baseType: !905, size: 576, offset: 6976)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 576, elements: !60)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !663, file: !664, line: 69, baseType: !627, size: 64, offset: 7552)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !663, file: !664, line: 71, baseType: !49, size: 64, offset: 7616)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !663, file: !664, line: 72, baseType: !627, size: 64, offset: 7680)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !663, file: !664, line: 73, baseType: !778, size: 64, offset: 7744)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !663, file: !664, line: 74, baseType: !598, size: 64, offset: 7808)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !663, file: !664, line: 75, baseType: !551, size: 64, offset: 7872)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !663, file: !664, line: 76, baseType: !598, size: 64, offset: 7936)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !663, file: !664, line: 77, baseType: !696, size: 64, offset: 8000)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !663, file: !664, line: 78, baseType: !551, size: 64, offset: 8064)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !663, file: !664, line: 79, baseType: !598, size: 64, offset: 8128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !663, file: !664, line: 80, baseType: !210, size: 64, offset: 8192)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !663, file: !664, line: 81, baseType: !696, size: 64, offset: 8256)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !663, file: !664, line: 82, baseType: !919, size: 64, offset: 8320)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !921)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !600, line: 702, size: 128, elements: !922)
!922 = !{!923, !924, !925, !926, !927, !928}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !921, file: !600, line: 706, baseType: !27, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !921, file: !600, line: 707, baseType: !27, size: 32, offset: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !921, file: !600, line: 708, baseType: !71, size: 16, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !921, file: !600, line: 709, baseType: !50, size: 8, offset: 80)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !921, file: !600, line: 710, baseType: !50, size: 8, offset: 88)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !921, file: !600, line: 711, baseType: !50, size: 8, offset: 96)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !663, file: !664, line: 83, baseType: !696, size: 64, offset: 8384)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !663, file: !664, line: 84, baseType: !551, size: 64, offset: 8448)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !663, file: !664, line: 85, baseType: !778, size: 64, offset: 8512)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !663, file: !664, line: 86, baseType: !551, size: 64, offset: 8576)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !663, file: !664, line: 87, baseType: !778, size: 64, offset: 8640)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !663, file: !664, line: 88, baseType: !696, size: 64, offset: 8704)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !663, file: !664, line: 89, baseType: !696, size: 64, offset: 8768)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !663, file: !664, line: 90, baseType: !937, size: 64, offset: 8832)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !663, file: !664, line: 91, baseType: !939, size: 64, offset: 8896)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !600, line: 637, baseType: !940)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!25, !662, !943}
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !663, file: !664, line: 92, baseType: !945, size: 64, offset: 8960)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !600, line: 641, baseType: !659)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !655, file: !6, line: 152, baseType: !551, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !641, file: !6, line: 155, baseType: !27, size: 32, offset: 384)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !641, file: !6, line: 156, baseType: !616, size: 16, offset: 416)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !641, file: !6, line: 157, baseType: !50, size: 8, offset: 432)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !552, file: !6, line: 375, baseType: !951, size: 576)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !952)
!952 = !{!953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !951, file: !6, line: 123, baseType: !551, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !951, file: !6, line: 123, baseType: !50, size: 8, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !951, file: !6, line: 123, baseType: !50, size: 8, offset: 72)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !951, file: !6, line: 123, baseType: !71, size: 16, offset: 80)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !951, file: !6, line: 123, baseType: !50, size: 8, offset: 96)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !951, file: !6, line: 123, baseType: !50, size: 8, offset: 104)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !951, file: !6, line: 124, baseType: !71, size: 16, offset: 112)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !951, file: !6, line: 125, baseType: !48, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !951, file: !6, line: 126, baseType: !32, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !951, file: !6, line: 127, baseType: !937, size: 64, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !951, file: !6, line: 128, baseType: !551, size: 64, offset: 320)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !951, file: !6, line: 129, baseType: !551, size: 64, offset: 384)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !951, file: !6, line: 130, baseType: !598, size: 64, offset: 448)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !951, file: !6, line: 131, baseType: !50, size: 8, offset: 512)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !552, file: !6, line: 376, baseType: !968, size: 448)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 448, elements: !969)
!969 = !{!970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !981}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !968, file: !6, line: 135, baseType: !551, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !968, file: !6, line: 135, baseType: !50, size: 8, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !968, file: !6, line: 135, baseType: !50, size: 8, offset: 72)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !968, file: !6, line: 135, baseType: !71, size: 16, offset: 80)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !968, file: !6, line: 135, baseType: !50, size: 8, offset: 96)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !968, file: !6, line: 135, baseType: !50, size: 8, offset: 104)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !968, file: !6, line: 136, baseType: !598, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !968, file: !6, line: 137, baseType: !551, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !968, file: !6, line: 138, baseType: !551, size: 64, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !968, file: !6, line: 139, baseType: !980, size: 64, offset: 320)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !26, line: 129, baseType: !32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !968, file: !6, line: 140, baseType: !27, size: 32, offset: 384)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !552, file: !6, line: 377, baseType: !983, size: 320)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 184, size: 320, elements: !984)
!984 = !{!985, !986, !987, !988, !989, !990, !994}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !983, file: !6, line: 185, baseType: !551, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !983, file: !6, line: 185, baseType: !50, size: 8, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !983, file: !6, line: 185, baseType: !50, size: 8, offset: 72)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !983, file: !6, line: 185, baseType: !71, size: 16, offset: 80)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !983, file: !6, line: 185, baseType: !50, size: 8, offset: 96)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !983, file: !6, line: 185, baseType: !991, size: 128, offset: 128)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 128, elements: !992)
!992 = !{!993}
!993 = !DISubrange(count: 2)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !983, file: !6, line: 185, baseType: !551, size: 64, offset: 256)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !552, file: !6, line: 378, baseType: !996, size: 384)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 187, size: 384, elements: !997)
!997 = !{!998, !999, !1000, !1001, !1002, !1003, !1004, !1005}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !996, file: !6, line: 188, baseType: !551, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !996, file: !6, line: 188, baseType: !50, size: 8, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !996, file: !6, line: 188, baseType: !50, size: 8, offset: 72)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !996, file: !6, line: 188, baseType: !71, size: 16, offset: 80)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !996, file: !6, line: 188, baseType: !50, size: 8, offset: 96)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !996, file: !6, line: 189, baseType: !991, size: 128, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !996, file: !6, line: 189, baseType: !551, size: 64, offset: 256)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !996, file: !6, line: 189, baseType: !1006, size: 64, offset: 320)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !600, line: 480, size: 576, elements: !1008)
!1008 = !{!1009, !1010, !1011, !1012, !1020, !1035, !1067, !1068, !1069, !1070, !1071, !1072}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1007, file: !600, line: 481, baseType: !598, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1007, file: !600, line: 482, baseType: !1006, size: 64, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1007, file: !600, line: 483, baseType: !1006, size: 64, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !1007, file: !600, line: 484, baseType: !1013, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !600, line: 497, size: 256, elements: !1015)
!1015 = !{!1016, !1017, !1018, !1019}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1014, file: !600, line: 498, baseType: !1013, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1014, file: !600, line: 499, baseType: !1013, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !1014, file: !600, line: 500, baseType: !1006, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !1014, file: !600, line: 501, baseType: !27, size: 32, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !1007, file: !600, line: 485, baseType: !1021, size: 64, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !600, line: 466, size: 320, elements: !1023)
!1023 = !{!1024, !1029, !1030, !1031, !1032, !1033, !1034}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !1022, file: !600, line: 467, baseType: !1025, size: 128)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !600, line: 459, size: 128, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1025, file: !600, line: 460, baseType: !50, size: 8)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1025, file: !600, line: 461, baseType: !32, size: 64, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !1022, file: !600, line: 468, baseType: !1025, size: 128, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !1022, file: !600, line: 469, baseType: !71, size: 16, offset: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !1022, file: !600, line: 470, baseType: !50, size: 8, offset: 272)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !1022, file: !600, line: 471, baseType: !50, size: 8, offset: 280)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !1022, file: !600, line: 472, baseType: !50, size: 8, offset: 288)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !1022, file: !600, line: 473, baseType: !50, size: 8, offset: 296)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !1007, file: !600, line: 486, baseType: !1036, size: 64, offset: 320)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !600, line: 448, size: 192, elements: !1038)
!1038 = !{!1039, !1062, !1063, !1064, !1065, !1066}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !1037, file: !600, line: 449, baseType: !1040, size: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !600, line: 438, size: 64, elements: !1041)
!1041 = !{!1042, !1043, !1056}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !1040, file: !600, line: 439, baseType: !598, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1040, file: !600, line: 440, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !600, line: 419, size: 256, elements: !1046)
!1046 = !{!1047, !1052, !1053, !1054, !1055}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1045, file: !600, line: 420, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !26, line: 1049, baseType: !1049)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!27, !53, !27, !48}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1045, file: !600, line: 421, baseType: !48, size: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !1045, file: !600, line: 422, baseType: !598, size: 64, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !1045, file: !600, line: 423, baseType: !50, size: 8, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !1045, file: !600, line: 424, baseType: !50, size: 8, offset: 200)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1040, file: !600, line: 441, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !600, line: 429, size: 128, elements: !1059)
!1059 = !{!1060, !1061}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !1058, file: !600, line: 430, baseType: !598, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1058, file: !600, line: 431, baseType: !1057, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !1037, file: !600, line: 450, baseType: !1021, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1037, file: !600, line: 451, baseType: !50, size: 8, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1037, file: !600, line: 452, baseType: !50, size: 8, offset: 136)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !1037, file: !600, line: 453, baseType: !50, size: 8, offset: 144)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !1037, file: !600, line: 454, baseType: !50, size: 8, offset: 152)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1007, file: !600, line: 487, baseType: !32, size: 64, offset: 384)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !1007, file: !600, line: 488, baseType: !27, size: 32, offset: 448)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !1007, file: !600, line: 489, baseType: !71, size: 16, offset: 480)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !1007, file: !600, line: 490, baseType: !71, size: 16, offset: 496)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1007, file: !600, line: 491, baseType: !50, size: 8, offset: 512)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1007, file: !600, line: 492, baseType: !50, size: 8, offset: 520)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !552, file: !6, line: 379, baseType: !1074, size: 384)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 192, size: 384, elements: !1075)
!1075 = !{!1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1074, file: !6, line: 193, baseType: !551, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1074, file: !6, line: 193, baseType: !50, size: 8, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1074, file: !6, line: 193, baseType: !50, size: 8, offset: 72)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1074, file: !6, line: 193, baseType: !71, size: 16, offset: 80)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1074, file: !6, line: 193, baseType: !50, size: 8, offset: 96)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1074, file: !6, line: 193, baseType: !991, size: 128, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1074, file: !6, line: 193, baseType: !551, size: 64, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1074, file: !6, line: 193, baseType: !27, size: 32, offset: 320)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1074, file: !6, line: 194, baseType: !27, size: 32, offset: 352)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !552, file: !6, line: 380, baseType: !1086, size: 384)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 197, size: 384, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1086, file: !6, line: 198, baseType: !551, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1086, file: !6, line: 198, baseType: !50, size: 8, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1086, file: !6, line: 198, baseType: !50, size: 8, offset: 72)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1086, file: !6, line: 198, baseType: !71, size: 16, offset: 80)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1086, file: !6, line: 198, baseType: !50, size: 8, offset: 96)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1086, file: !6, line: 200, baseType: !50, size: 8, offset: 104)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1086, file: !6, line: 201, baseType: !50, size: 8, offset: 112)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1086, file: !6, line: 202, baseType: !991, size: 128, offset: 128)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1086, file: !6, line: 202, baseType: !551, size: 64, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1086, file: !6, line: 202, baseType: !1098, size: 64, offset: 320)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !26, line: 128, baseType: !32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !552, file: !6, line: 381, baseType: !1100, size: 320)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 205, size: 320, elements: !1101)
!1101 = !{!1102, !1103, !1104, !1105, !1106, !1107, !1108}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1100, file: !6, line: 206, baseType: !551, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1100, file: !6, line: 206, baseType: !50, size: 8, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1100, file: !6, line: 206, baseType: !50, size: 8, offset: 72)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1100, file: !6, line: 206, baseType: !71, size: 16, offset: 80)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1100, file: !6, line: 206, baseType: !50, size: 8, offset: 96)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1100, file: !6, line: 206, baseType: !991, size: 128, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1100, file: !6, line: 206, baseType: !551, size: 64, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !552, file: !6, line: 382, baseType: !1110, size: 384)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 233, size: 384, elements: !1111)
!1111 = !{!1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1110, file: !6, line: 234, baseType: !551, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1110, file: !6, line: 234, baseType: !50, size: 8, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1110, file: !6, line: 234, baseType: !50, size: 8, offset: 72)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1110, file: !6, line: 234, baseType: !71, size: 16, offset: 80)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1110, file: !6, line: 234, baseType: !50, size: 8, offset: 96)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1110, file: !6, line: 234, baseType: !50, size: 8, offset: 104)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1110, file: !6, line: 234, baseType: !50, size: 8, offset: 112)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1110, file: !6, line: 234, baseType: !50, size: 8, offset: 120)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1110, file: !6, line: 234, baseType: !598, size: 64, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1110, file: !6, line: 234, baseType: !27, size: 32, offset: 192)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1110, file: !6, line: 234, baseType: !27, size: 32, offset: 224)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1110, file: !6, line: 234, baseType: !27, size: 32, offset: 256)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1110, file: !6, line: 234, baseType: !50, size: 8, offset: 288)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1110, file: !6, line: 234, baseType: !50, size: 8, offset: 296)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1110, file: !6, line: 234, baseType: !551, size: 64, offset: 320)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !552, file: !6, line: 383, baseType: !1128, size: 576)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 237, size: 576, elements: !1129)
!1129 = !{!1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1128, file: !6, line: 238, baseType: !551, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1128, file: !6, line: 238, baseType: !50, size: 8, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1128, file: !6, line: 238, baseType: !50, size: 8, offset: 72)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1128, file: !6, line: 238, baseType: !71, size: 16, offset: 80)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1128, file: !6, line: 238, baseType: !50, size: 8, offset: 96)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1128, file: !6, line: 238, baseType: !50, size: 8, offset: 104)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1128, file: !6, line: 238, baseType: !50, size: 8, offset: 112)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1128, file: !6, line: 238, baseType: !50, size: 8, offset: 120)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1128, file: !6, line: 238, baseType: !598, size: 64, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1128, file: !6, line: 238, baseType: !27, size: 32, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1128, file: !6, line: 238, baseType: !27, size: 32, offset: 224)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1128, file: !6, line: 238, baseType: !27, size: 32, offset: 256)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1128, file: !6, line: 238, baseType: !50, size: 8, offset: 288)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1128, file: !6, line: 238, baseType: !50, size: 8, offset: 296)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1128, file: !6, line: 238, baseType: !71, size: 16, offset: 304)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1128, file: !6, line: 239, baseType: !551, size: 64, offset: 320)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !1128, file: !6, line: 240, baseType: !49, size: 64, offset: 384)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !1128, file: !6, line: 241, baseType: !71, size: 16, offset: 448)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !1128, file: !6, line: 242, baseType: !49, size: 64, offset: 512)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !552, file: !6, line: 384, baseType: !1150, size: 384)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 262, size: 384, elements: !1151)
!1151 = !{!1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1150, file: !6, line: 263, baseType: !551, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1150, file: !6, line: 263, baseType: !50, size: 8, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1150, file: !6, line: 263, baseType: !50, size: 8, offset: 72)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1150, file: !6, line: 263, baseType: !71, size: 16, offset: 80)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1150, file: !6, line: 263, baseType: !50, size: 8, offset: 96)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1150, file: !6, line: 263, baseType: !50, size: 8, offset: 104)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1150, file: !6, line: 263, baseType: !50, size: 8, offset: 112)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1150, file: !6, line: 263, baseType: !50, size: 8, offset: 120)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1150, file: !6, line: 263, baseType: !598, size: 64, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1150, file: !6, line: 263, baseType: !27, size: 32, offset: 192)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1150, file: !6, line: 263, baseType: !27, size: 32, offset: 224)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1150, file: !6, line: 263, baseType: !27, size: 32, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1150, file: !6, line: 263, baseType: !50, size: 8, offset: 288)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1150, file: !6, line: 263, baseType: !50, size: 8, offset: 296)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !1150, file: !6, line: 263, baseType: !50, size: 8, offset: 304)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !1150, file: !6, line: 264, baseType: !551, size: 64, offset: 320)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !552, file: !6, line: 385, baseType: !1169, size: 448)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 245, size: 448, elements: !1170)
!1170 = !{!1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1169, file: !6, line: 246, baseType: !551, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1169, file: !6, line: 246, baseType: !50, size: 8, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1169, file: !6, line: 246, baseType: !50, size: 8, offset: 72)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1169, file: !6, line: 246, baseType: !71, size: 16, offset: 80)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1169, file: !6, line: 246, baseType: !50, size: 8, offset: 96)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1169, file: !6, line: 246, baseType: !50, size: 8, offset: 104)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1169, file: !6, line: 246, baseType: !50, size: 8, offset: 112)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1169, file: !6, line: 246, baseType: !50, size: 8, offset: 120)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1169, file: !6, line: 246, baseType: !598, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1169, file: !6, line: 246, baseType: !27, size: 32, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1169, file: !6, line: 246, baseType: !27, size: 32, offset: 224)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1169, file: !6, line: 246, baseType: !27, size: 32, offset: 256)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1169, file: !6, line: 246, baseType: !50, size: 8, offset: 288)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1169, file: !6, line: 246, baseType: !50, size: 8, offset: 296)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1169, file: !6, line: 246, baseType: !551, size: 64, offset: 320)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !1169, file: !6, line: 247, baseType: !551, size: 64, offset: 384)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !552, file: !6, line: 386, baseType: !1188, size: 448)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 250, size: 448, elements: !1189)
!1189 = !{!1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1188, file: !6, line: 251, baseType: !551, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1188, file: !6, line: 251, baseType: !50, size: 8, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1188, file: !6, line: 251, baseType: !50, size: 8, offset: 72)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1188, file: !6, line: 251, baseType: !71, size: 16, offset: 80)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1188, file: !6, line: 251, baseType: !50, size: 8, offset: 96)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1188, file: !6, line: 251, baseType: !50, size: 8, offset: 104)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1188, file: !6, line: 251, baseType: !50, size: 8, offset: 112)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1188, file: !6, line: 251, baseType: !50, size: 8, offset: 120)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1188, file: !6, line: 251, baseType: !598, size: 64, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1188, file: !6, line: 251, baseType: !27, size: 32, offset: 192)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1188, file: !6, line: 251, baseType: !27, size: 32, offset: 224)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1188, file: !6, line: 251, baseType: !27, size: 32, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1188, file: !6, line: 251, baseType: !50, size: 8, offset: 288)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1188, file: !6, line: 251, baseType: !50, size: 8, offset: 296)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !1188, file: !6, line: 256, baseType: !551, size: 64, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !1188, file: !6, line: 257, baseType: !551, size: 64, offset: 384)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !552, file: !6, line: 387, baseType: !1207, size: 512)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 273, size: 512, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1207, file: !6, line: 274, baseType: !551, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1207, file: !6, line: 274, baseType: !50, size: 8, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1207, file: !6, line: 274, baseType: !50, size: 8, offset: 72)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1207, file: !6, line: 274, baseType: !71, size: 16, offset: 80)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1207, file: !6, line: 274, baseType: !50, size: 8, offset: 96)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1207, file: !6, line: 274, baseType: !598, size: 64, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !1207, file: !6, line: 275, baseType: !27, size: 32, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1207, file: !6, line: 276, baseType: !887, size: 64, offset: 256)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1207, file: !6, line: 277, baseType: !48, size: 64, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1207, file: !6, line: 278, baseType: !991, size: 128, offset: 384)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !552, file: !6, line: 388, baseType: !1220, size: 512)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 281, size: 512, elements: !1221)
!1221 = !{!1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1235, !1236, !1237, !1243, !1244}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1220, file: !6, line: 282, baseType: !551, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1220, file: !6, line: 282, baseType: !50, size: 8, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1220, file: !6, line: 282, baseType: !50, size: 8, offset: 72)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1220, file: !6, line: 282, baseType: !71, size: 16, offset: 80)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1220, file: !6, line: 282, baseType: !50, size: 8, offset: 96)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1220, file: !6, line: 282, baseType: !50, size: 8, offset: 104)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !1220, file: !6, line: 283, baseType: !50, size: 8, offset: 112)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1220, file: !6, line: 284, baseType: !1230, size: 64, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !26, line: 1084, baseType: !1231)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!25, !27, !980, !27, !1234, !48, !48}
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1220, file: !6, line: 285, baseType: !598, size: 64, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1220, file: !6, line: 286, baseType: !48, size: 64, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1220, file: !6, line: 287, baseType: !1238, size: 64, offset: 320)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !26, line: 1102, baseType: !1239)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!25, !53, !27, !48, !1242}
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !1220, file: !6, line: 288, baseType: !551, size: 64, offset: 384)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1220, file: !6, line: 289, baseType: !551, size: 64, offset: 448)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !552, file: !6, line: 389, baseType: !1246, size: 512)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 307, size: 512, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1246, file: !6, line: 308, baseType: !551, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1246, file: !6, line: 308, baseType: !50, size: 8, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1246, file: !6, line: 308, baseType: !50, size: 8, offset: 72)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1246, file: !6, line: 308, baseType: !71, size: 16, offset: 80)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1246, file: !6, line: 308, baseType: !50, size: 8, offset: 96)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1246, file: !6, line: 308, baseType: !50, size: 8, offset: 104)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !1246, file: !6, line: 309, baseType: !50, size: 8, offset: 112)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !1246, file: !6, line: 310, baseType: !50, size: 8, offset: 120)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1246, file: !6, line: 311, baseType: !48, size: 64, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1246, file: !6, line: 312, baseType: !598, size: 64, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !1246, file: !6, line: 313, baseType: !627, size: 64, offset: 256)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !1246, file: !6, line: 314, baseType: !49, size: 64, offset: 320)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1246, file: !6, line: 315, baseType: !49, size: 64, offset: 384)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1246, file: !6, line: 316, baseType: !27, size: 32, offset: 448)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !552, file: !6, line: 390, baseType: !1263, size: 448)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 340, size: 448, elements: !1264)
!1264 = !{!1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1263, file: !6, line: 341, baseType: !551, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1263, file: !6, line: 341, baseType: !50, size: 8, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1263, file: !6, line: 341, baseType: !50, size: 8, offset: 72)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1263, file: !6, line: 341, baseType: !71, size: 16, offset: 80)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1263, file: !6, line: 341, baseType: !50, size: 8, offset: 96)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !1263, file: !6, line: 341, baseType: !598, size: 64, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !1263, file: !6, line: 342, baseType: !598, size: 64, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !1263, file: !6, line: 343, baseType: !48, size: 64, offset: 256)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !1263, file: !6, line: 344, baseType: !49, size: 64, offset: 320)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1263, file: !6, line: 345, baseType: !27, size: 32, offset: 384)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !552, file: !6, line: 391, baseType: !1276, size: 256)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 350, size: 256, elements: !1277)
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1283, !1288}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1276, file: !6, line: 351, baseType: !551, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1276, file: !6, line: 351, baseType: !50, size: 8, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1276, file: !6, line: 351, baseType: !50, size: 8, offset: 72)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1276, file: !6, line: 351, baseType: !71, size: 16, offset: 80)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1276, file: !6, line: 351, baseType: !50, size: 8, offset: 96)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1276, file: !6, line: 351, baseType: !1284, size: 64, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !26, line: 1055, baseType: !1285)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null, !53, !48}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1276, file: !6, line: 352, baseType: !48, size: 64, offset: 192)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !552, file: !6, line: 392, baseType: !1290, size: 192)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 357, size: 192, elements: !1291)
!1291 = !{!1292, !1293, !1294, !1295, !1296, !1297}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1290, file: !6, line: 358, baseType: !551, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1290, file: !6, line: 358, baseType: !50, size: 8, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1290, file: !6, line: 358, baseType: !50, size: 8, offset: 72)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1290, file: !6, line: 358, baseType: !71, size: 16, offset: 80)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1290, file: !6, line: 358, baseType: !50, size: 8, offset: 96)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1290, file: !6, line: 358, baseType: !551, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !552, file: !6, line: 399, baseType: !599, size: 384)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !26, line: 969, size: 128, elements: !1301)
!1301 = !{!1302, !1303}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1300, file: !26, line: 970, baseType: !31, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1300, file: !26, line: 971, baseType: !48, size: 64, offset: 64)
!1304 = !DILocalVariable(name: "aml_buffer", arg: 1, scope: !548, file: !3, line: 103, type: !551)
!1305 = !DILocation(line: 103, column: 57, scope: !548)
!1306 = !DILocalVariable(name: "output_buffer", arg: 2, scope: !548, file: !3, line: 104, type: !1299)
!1307 = !DILocation(line: 104, column: 29, scope: !548)
!1308 = !DILocalVariable(name: "status", scope: !548, file: !3, line: 107, type: !25)
!1309 = !DILocation(line: 107, column: 14, scope: !548)
!1310 = !DILocalVariable(name: "aml_start", scope: !548, file: !3, line: 108, type: !49)
!1311 = !DILocation(line: 108, column: 6, scope: !548)
!1312 = !DILocalVariable(name: "list_size_needed", scope: !548, file: !3, line: 109, type: !31)
!1313 = !DILocation(line: 109, column: 12, scope: !548)
!1314 = !DILocalVariable(name: "aml_buffer_length", scope: !548, file: !3, line: 110, type: !27)
!1315 = !DILocation(line: 110, column: 6, scope: !548)
!1316 = !DILocalVariable(name: "resource", scope: !548, file: !3, line: 111, type: !48)
!1317 = !DILocation(line: 111, column: 8, scope: !548)
!1318 = !DILocation(line: 119, column: 22, scope: !548)
!1319 = !DILocation(line: 119, column: 34, scope: !548)
!1320 = !DILocation(line: 119, column: 41, scope: !548)
!1321 = !DILocation(line: 119, column: 20, scope: !548)
!1322 = !DILocation(line: 120, column: 14, scope: !548)
!1323 = !DILocation(line: 120, column: 26, scope: !548)
!1324 = !DILocation(line: 120, column: 33, scope: !548)
!1325 = !DILocation(line: 120, column: 12, scope: !548)
!1326 = !DILocation(line: 126, column: 35, scope: !548)
!1327 = !DILocation(line: 126, column: 46, scope: !548)
!1328 = !DILocation(line: 126, column: 11, scope: !548)
!1329 = !DILocation(line: 126, column: 9, scope: !548)
!1330 = !DILocation(line: 131, column: 6, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !548, file: !3, line: 131, column: 6)
!1332 = !DILocation(line: 131, column: 6, scope: !548)
!1333 = !DILocation(line: 132, column: 3, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 131, column: 28)
!1335 = !DILocation(line: 137, column: 37, scope: !548)
!1336 = !DILocation(line: 137, column: 52, scope: !548)
!1337 = !DILocation(line: 137, column: 11, scope: !548)
!1338 = !DILocation(line: 137, column: 9, scope: !548)
!1339 = !DILocation(line: 138, column: 6, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !548, file: !3, line: 138, column: 6)
!1341 = !DILocation(line: 138, column: 6, scope: !548)
!1342 = !DILocation(line: 139, column: 3, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 138, column: 28)
!1344 = !DILocation(line: 144, column: 13, scope: !548)
!1345 = !DILocation(line: 144, column: 28, scope: !548)
!1346 = !DILocation(line: 144, column: 11, scope: !548)
!1347 = !DILocation(line: 145, column: 44, scope: !548)
!1348 = !DILocation(line: 145, column: 55, scope: !548)
!1349 = !DILocation(line: 145, column: 11, scope: !548)
!1350 = !DILocation(line: 145, column: 9, scope: !548)
!1351 = !DILocation(line: 148, column: 6, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !548, file: !3, line: 148, column: 6)
!1353 = !DILocation(line: 148, column: 6, scope: !548)
!1354 = !DILocation(line: 149, column: 3, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 148, column: 28)
!1356 = !DILocation(line: 154, column: 2, scope: !548)
!1357 = !DILocation(line: 155, column: 1, scope: !548)
!1358 = distinct !DISubprogram(name: "acpi_rs_create_pci_routing_table", scope: !3, file: !3, line: 179, type: !549, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !441)
!1359 = !DILocalVariable(name: "package_object", arg: 1, scope: !1358, file: !3, line: 179, type: !551)
!1360 = !DILocation(line: 179, column: 61, scope: !1358)
!1361 = !DILocalVariable(name: "output_buffer", arg: 2, scope: !1358, file: !3, line: 180, type: !1299)
!1362 = !DILocation(line: 180, column: 26, scope: !1358)
!1363 = !DILocalVariable(name: "buffer", scope: !1358, file: !3, line: 182, type: !49)
!1364 = !DILocation(line: 182, column: 6, scope: !1358)
!1365 = !DILocalVariable(name: "top_object_list", scope: !1358, file: !3, line: 183, type: !627)
!1366 = !DILocation(line: 183, column: 30, scope: !1358)
!1367 = !DILocalVariable(name: "sub_object_list", scope: !1358, file: !3, line: 184, type: !627)
!1368 = !DILocation(line: 184, column: 30, scope: !1358)
!1369 = !DILocalVariable(name: "obj_desc", scope: !1358, file: !3, line: 185, type: !551)
!1370 = !DILocation(line: 185, column: 29, scope: !1358)
!1371 = !DILocalVariable(name: "buffer_size_needed", scope: !1358, file: !3, line: 186, type: !31)
!1372 = !DILocation(line: 186, column: 12, scope: !1358)
!1373 = !DILocalVariable(name: "number_of_elements", scope: !1358, file: !3, line: 187, type: !27)
!1374 = !DILocation(line: 187, column: 6, scope: !1358)
!1375 = !DILocalVariable(name: "index", scope: !1358, file: !3, line: 188, type: !27)
!1376 = !DILocation(line: 188, column: 6, scope: !1358)
!1377 = !DILocalVariable(name: "user_prt", scope: !1358, file: !3, line: 189, type: !35)
!1378 = !DILocation(line: 189, column: 33, scope: !1358)
!1379 = !DILocalVariable(name: "node", scope: !1358, file: !3, line: 190, type: !598)
!1380 = !DILocation(line: 190, column: 30, scope: !1358)
!1381 = !DILocalVariable(name: "status", scope: !1358, file: !3, line: 191, type: !25)
!1382 = !DILocation(line: 191, column: 14, scope: !1358)
!1383 = !DILocalVariable(name: "path_buffer", scope: !1358, file: !3, line: 192, type: !1300)
!1384 = !DILocation(line: 192, column: 21, scope: !1358)
!1385 = !DILocation(line: 201, column: 43, scope: !1358)
!1386 = !DILocation(line: 201, column: 6, scope: !1358)
!1387 = !DILocation(line: 200, column: 9, scope: !1358)
!1388 = !DILocation(line: 203, column: 6, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 203, column: 6)
!1390 = !DILocation(line: 203, column: 6, scope: !1358)
!1391 = !DILocation(line: 204, column: 3, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 203, column: 28)
!1393 = !DILocation(line: 212, column: 37, scope: !1358)
!1394 = !DILocation(line: 212, column: 52, scope: !1358)
!1395 = !DILocation(line: 212, column: 11, scope: !1358)
!1396 = !DILocation(line: 212, column: 9, scope: !1358)
!1397 = !DILocation(line: 213, column: 6, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 213, column: 6)
!1399 = !DILocation(line: 213, column: 6, scope: !1358)
!1400 = !DILocation(line: 214, column: 3, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 213, column: 28)
!1402 = !DILocation(line: 222, column: 20, scope: !1358)
!1403 = !DILocation(line: 222, column: 36, scope: !1358)
!1404 = !DILocation(line: 222, column: 44, scope: !1358)
!1405 = !DILocation(line: 222, column: 18, scope: !1358)
!1406 = !DILocation(line: 223, column: 23, scope: !1358)
!1407 = !DILocation(line: 223, column: 39, scope: !1358)
!1408 = !DILocation(line: 223, column: 47, scope: !1358)
!1409 = !DILocation(line: 223, column: 21, scope: !1358)
!1410 = !DILocation(line: 224, column: 11, scope: !1358)
!1411 = !DILocation(line: 224, column: 26, scope: !1358)
!1412 = !DILocation(line: 224, column: 9, scope: !1358)
!1413 = !DILocation(line: 225, column: 13, scope: !1358)
!1414 = !DILocation(line: 225, column: 11, scope: !1358)
!1415 = !DILocation(line: 227, column: 13, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 227, column: 2)
!1417 = !DILocation(line: 227, column: 7, scope: !1416)
!1418 = !DILocation(line: 227, column: 18, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 227, column: 2)
!1420 = !DILocation(line: 227, column: 26, scope: !1419)
!1421 = !DILocation(line: 227, column: 24, scope: !1419)
!1422 = !DILocation(line: 227, column: 2, scope: !1416)
!1423 = !DILocation(line: 235, column: 13, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 227, column: 55)
!1425 = !DILocation(line: 235, column: 23, scope: !1424)
!1426 = !DILocation(line: 235, column: 10, scope: !1424)
!1427 = !DILocation(line: 236, column: 14, scope: !1424)
!1428 = !DILocation(line: 236, column: 12, scope: !1424)
!1429 = !DILocation(line: 243, column: 3, scope: !1424)
!1430 = !DILocation(line: 243, column: 13, scope: !1424)
!1431 = !DILocation(line: 243, column: 20, scope: !1424)
!1432 = !DILocation(line: 247, column: 9, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 247, column: 7)
!1434 = !DILocation(line: 247, column: 8, scope: !1433)
!1435 = !DILocation(line: 247, column: 27, scope: !1433)
!1436 = !DILocation(line: 247, column: 35, scope: !1433)
!1437 = !DILocation(line: 247, column: 41, scope: !1433)
!1438 = !DILocation(line: 247, column: 7, scope: !1424)
!1439 = !DILocation(line: 248, column: 4, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 247, column: 47)
!1441 = !DILocation(line: 251, column: 4, scope: !1440)
!1442 = !DILocation(line: 259, column: 23, scope: !1424)
!1443 = !DILocation(line: 259, column: 22, scope: !1424)
!1444 = !DILocation(line: 259, column: 41, scope: !1424)
!1445 = !DILocation(line: 259, column: 49, scope: !1424)
!1446 = !DILocation(line: 259, column: 19, scope: !1424)
!1447 = !DILocation(line: 263, column: 14, scope: !1424)
!1448 = !DILocation(line: 263, column: 12, scope: !1424)
!1449 = !DILocation(line: 264, column: 8, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 264, column: 7)
!1451 = !DILocation(line: 264, column: 17, scope: !1450)
!1452 = !DILocation(line: 264, column: 20, scope: !1450)
!1453 = !DILocation(line: 264, column: 30, scope: !1450)
!1454 = !DILocation(line: 264, column: 37, scope: !1450)
!1455 = !DILocation(line: 264, column: 42, scope: !1450)
!1456 = !DILocation(line: 264, column: 7, scope: !1424)
!1457 = !DILocation(line: 265, column: 4, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 264, column: 64)
!1459 = !DILocation(line: 269, column: 4, scope: !1458)
!1460 = !DILocation(line: 272, column: 23, scope: !1424)
!1461 = !DILocation(line: 272, column: 33, scope: !1424)
!1462 = !DILocation(line: 272, column: 41, scope: !1424)
!1463 = !DILocation(line: 272, column: 3, scope: !1424)
!1464 = !DILocation(line: 272, column: 13, scope: !1424)
!1465 = !DILocation(line: 272, column: 21, scope: !1424)
!1466 = !DILocation(line: 276, column: 14, scope: !1424)
!1467 = !DILocation(line: 276, column: 12, scope: !1424)
!1468 = !DILocation(line: 277, column: 8, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 277, column: 7)
!1470 = !DILocation(line: 277, column: 17, scope: !1469)
!1471 = !DILocation(line: 277, column: 20, scope: !1469)
!1472 = !DILocation(line: 277, column: 30, scope: !1469)
!1473 = !DILocation(line: 277, column: 37, scope: !1469)
!1474 = !DILocation(line: 277, column: 42, scope: !1469)
!1475 = !DILocation(line: 277, column: 7, scope: !1424)
!1476 = !DILocation(line: 278, column: 4, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 277, column: 64)
!1478 = !DILocation(line: 282, column: 4, scope: !1477)
!1479 = !DILocation(line: 285, column: 25, scope: !1424)
!1480 = !DILocation(line: 285, column: 35, scope: !1424)
!1481 = !DILocation(line: 285, column: 43, scope: !1424)
!1482 = !DILocation(line: 285, column: 19, scope: !1424)
!1483 = !DILocation(line: 285, column: 3, scope: !1424)
!1484 = !DILocation(line: 285, column: 13, scope: !1424)
!1485 = !DILocation(line: 285, column: 17, scope: !1424)
!1486 = !DILocation(line: 291, column: 14, scope: !1424)
!1487 = !DILocation(line: 291, column: 12, scope: !1424)
!1488 = !DILocation(line: 292, column: 7, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 292, column: 7)
!1490 = !DILocation(line: 292, column: 7, scope: !1424)
!1491 = !DILocation(line: 293, column: 12, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 292, column: 17)
!1493 = !DILocation(line: 293, column: 22, scope: !1492)
!1494 = !DILocation(line: 293, column: 29, scope: !1492)
!1495 = !DILocation(line: 293, column: 4, scope: !1492)
!1496 = !DILocation(line: 296, column: 9, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 296, column: 9)
!1498 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 293, column: 35)
!1499 = !DILocation(line: 296, column: 19, scope: !1497)
!1500 = !DILocation(line: 296, column: 29, scope: !1497)
!1501 = !DILocation(line: 296, column: 35, scope: !1497)
!1502 = !DILocation(line: 296, column: 9, scope: !1498)
!1503 = !DILocation(line: 298, column: 6, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 297, column: 29)
!1505 = !DILocation(line: 302, column: 6, scope: !1504)
!1506 = !DILocation(line: 305, column: 12, scope: !1498)
!1507 = !DILocation(line: 305, column: 22, scope: !1498)
!1508 = !DILocation(line: 305, column: 32, scope: !1498)
!1509 = !DILocation(line: 305, column: 10, scope: !1498)
!1510 = !DILocation(line: 309, column: 26, scope: !1498)
!1511 = !DILocation(line: 309, column: 41, scope: !1498)
!1512 = !DILocation(line: 310, column: 23, scope: !1498)
!1513 = !DILocation(line: 310, column: 33, scope: !1498)
!1514 = !DILocation(line: 311, column: 16, scope: !1498)
!1515 = !DILocation(line: 311, column: 31, scope: !1498)
!1516 = !DILocation(line: 310, column: 40, scope: !1498)
!1517 = !DILocation(line: 310, column: 9, scope: !1498)
!1518 = !DILocation(line: 309, column: 48, scope: !1498)
!1519 = !DILocation(line: 309, column: 17, scope: !1498)
!1520 = !DILocation(line: 309, column: 24, scope: !1498)
!1521 = !DILocation(line: 312, column: 27, scope: !1498)
!1522 = !DILocation(line: 312, column: 37, scope: !1498)
!1523 = !DILocation(line: 312, column: 17, scope: !1498)
!1524 = !DILocation(line: 312, column: 25, scope: !1498)
!1525 = !DILocation(line: 314, column: 54, scope: !1498)
!1526 = !DILocation(line: 314, column: 41, scope: !1498)
!1527 = !DILocation(line: 314, column: 14, scope: !1498)
!1528 = !DILocation(line: 314, column: 12, scope: !1498)
!1529 = !DILocation(line: 315, column: 9, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 315, column: 9)
!1531 = !DILocation(line: 315, column: 9, scope: !1498)
!1532 = !DILocation(line: 316, column: 6, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 315, column: 31)
!1534 = !DILocation(line: 322, column: 21, scope: !1498)
!1535 = !DILocation(line: 322, column: 31, scope: !1498)
!1536 = !DILocation(line: 322, column: 14, scope: !1498)
!1537 = !DILocation(line: 322, column: 9, scope: !1498)
!1538 = !DILocation(line: 322, column: 39, scope: !1498)
!1539 = !DILocation(line: 321, column: 5, scope: !1498)
!1540 = !DILocation(line: 321, column: 15, scope: !1498)
!1541 = !DILocation(line: 321, column: 22, scope: !1498)
!1542 = !DILocation(line: 323, column: 5, scope: !1498)
!1543 = !DILocation(line: 327, column: 12, scope: !1498)
!1544 = !DILocation(line: 327, column: 22, scope: !1498)
!1545 = !DILocation(line: 328, column: 12, scope: !1498)
!1546 = !DILocation(line: 328, column: 22, scope: !1498)
!1547 = !DILocation(line: 328, column: 29, scope: !1498)
!1548 = !DILocation(line: 327, column: 5, scope: !1498)
!1549 = !DILocation(line: 334, column: 25, scope: !1498)
!1550 = !DILocation(line: 334, column: 35, scope: !1498)
!1551 = !DILocation(line: 334, column: 42, scope: !1498)
!1552 = !DILocation(line: 334, column: 49, scope: !1498)
!1553 = !DILocation(line: 334, column: 5, scope: !1498)
!1554 = !DILocation(line: 334, column: 15, scope: !1498)
!1555 = !DILocation(line: 334, column: 22, scope: !1498)
!1556 = !DILocation(line: 335, column: 5, scope: !1498)
!1557 = !DILocation(line: 344, column: 5, scope: !1498)
!1558 = !DILocation(line: 344, column: 15, scope: !1498)
!1559 = !DILocation(line: 344, column: 22, scope: !1498)
!1560 = !DILocation(line: 345, column: 5, scope: !1498)
!1561 = !DILocation(line: 349, column: 5, scope: !1498)
!1562 = !DILocation(line: 354, column: 5, scope: !1498)
!1563 = !DILocation(line: 356, column: 3, scope: !1492)
!1564 = !DILocation(line: 361, column: 13, scope: !1424)
!1565 = !DILocation(line: 361, column: 7, scope: !1424)
!1566 = !DILocation(line: 360, column: 3, scope: !1424)
!1567 = !DILocation(line: 360, column: 13, scope: !1424)
!1568 = !DILocation(line: 360, column: 20, scope: !1424)
!1569 = !DILocation(line: 365, column: 14, scope: !1424)
!1570 = !DILocation(line: 365, column: 12, scope: !1424)
!1571 = !DILocation(line: 366, column: 8, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 366, column: 7)
!1573 = !DILocation(line: 366, column: 17, scope: !1572)
!1574 = !DILocation(line: 366, column: 20, scope: !1572)
!1575 = !DILocation(line: 366, column: 30, scope: !1572)
!1576 = !DILocation(line: 366, column: 37, scope: !1572)
!1577 = !DILocation(line: 366, column: 42, scope: !1572)
!1578 = !DILocation(line: 366, column: 7, scope: !1424)
!1579 = !DILocation(line: 367, column: 4, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 366, column: 64)
!1581 = !DILocation(line: 371, column: 4, scope: !1580)
!1582 = !DILocation(line: 374, column: 34, scope: !1424)
!1583 = !DILocation(line: 374, column: 44, scope: !1424)
!1584 = !DILocation(line: 374, column: 52, scope: !1424)
!1585 = !DILocation(line: 374, column: 28, scope: !1424)
!1586 = !DILocation(line: 374, column: 3, scope: !1424)
!1587 = !DILocation(line: 374, column: 13, scope: !1424)
!1588 = !DILocation(line: 374, column: 26, scope: !1424)
!1589 = !DILocation(line: 378, column: 18, scope: !1424)
!1590 = !DILocation(line: 379, column: 2, scope: !1424)
!1591 = !DILocation(line: 227, column: 51, scope: !1419)
!1592 = !DILocation(line: 227, column: 2, scope: !1419)
!1593 = distinct !{!1593, !1422, !1594}
!1594 = !DILocation(line: 379, column: 2, scope: !1416)
!1595 = !DILocation(line: 383, column: 2, scope: !1358)
!1596 = !DILocation(line: 384, column: 1, scope: !1358)
!1597 = distinct !DISubprogram(name: "acpi_rs_create_aml_resources", scope: !3, file: !3, line: 404, type: !1598, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !441)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!25, !1299, !1299}
!1600 = !DILocalVariable(name: "resource_list", arg: 1, scope: !1597, file: !3, line: 404, type: !1299)
!1601 = !DILocation(line: 404, column: 50, scope: !1597)
!1602 = !DILocalVariable(name: "output_buffer", arg: 2, scope: !1597, file: !3, line: 405, type: !1299)
!1603 = !DILocation(line: 405, column: 29, scope: !1597)
!1604 = !DILocalVariable(name: "status", scope: !1597, file: !3, line: 407, type: !25)
!1605 = !DILocation(line: 407, column: 14, scope: !1597)
!1606 = !DILocalVariable(name: "aml_size_needed", scope: !1597, file: !3, line: 408, type: !31)
!1607 = !DILocation(line: 408, column: 12, scope: !1597)
!1608 = !DILocation(line: 420, column: 29, scope: !1597)
!1609 = !DILocation(line: 420, column: 44, scope: !1597)
!1610 = !DILocation(line: 421, column: 8, scope: !1597)
!1611 = !DILocation(line: 421, column: 23, scope: !1597)
!1612 = !DILocation(line: 420, column: 6, scope: !1597)
!1613 = !DILocation(line: 419, column: 9, scope: !1597)
!1614 = !DILocation(line: 425, column: 6, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 425, column: 6)
!1616 = !DILocation(line: 425, column: 6, scope: !1597)
!1617 = !DILocation(line: 426, column: 3, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 425, column: 28)
!1619 = !DILocation(line: 431, column: 37, scope: !1597)
!1620 = !DILocation(line: 431, column: 52, scope: !1597)
!1621 = !DILocation(line: 431, column: 11, scope: !1597)
!1622 = !DILocation(line: 431, column: 9, scope: !1597)
!1623 = !DILocation(line: 432, column: 6, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 432, column: 6)
!1625 = !DILocation(line: 432, column: 6, scope: !1597)
!1626 = !DILocation(line: 433, column: 3, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 432, column: 28)
!1628 = !DILocation(line: 438, column: 44, scope: !1597)
!1629 = !DILocation(line: 438, column: 59, scope: !1597)
!1630 = !DILocation(line: 439, column: 9, scope: !1597)
!1631 = !DILocation(line: 440, column: 9, scope: !1597)
!1632 = !DILocation(line: 440, column: 24, scope: !1597)
!1633 = !DILocation(line: 438, column: 11, scope: !1597)
!1634 = !DILocation(line: 438, column: 9, scope: !1597)
!1635 = !DILocation(line: 441, column: 6, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 441, column: 6)
!1637 = !DILocation(line: 441, column: 6, scope: !1597)
!1638 = !DILocation(line: 442, column: 3, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 441, column: 28)
!1640 = !DILocation(line: 447, column: 2, scope: !1597)
!1641 = !DILocation(line: 448, column: 1, scope: !1597)
!1642 = distinct !DISubprogram(name: "kzalloc", scope: !18, file: !18, line: 662, type: !1643, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !441)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!48, !1645, !54}
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 55, baseType: !1646)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1647, line: 72, baseType: !1648)
!1647 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1647, line: 16, baseType: !56)
!1649 = !DILocalVariable(name: "s", arg: 1, scope: !1650, file: !18, line: 445, type: !1653)
!1650 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !18, file: !18, line: 445, type: !1651, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !441)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!48, !1653, !54, !1645}
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1655, line: 117, flags: DIFlagFwdDecl)
!1655 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1656 = !DILocation(line: 445, column: 72, scope: !1650, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 552, column: 10, scope: !1658, inlinedAt: !1661)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !18, line: 540, column: 34)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !18, line: 540, column: 6)
!1660 = distinct !DISubprogram(name: "kmalloc", scope: !18, file: !18, line: 538, type: !1643, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !441)
!1661 = distinct !DILocation(line: 664, column: 9, scope: !1642)
!1662 = !DILocalVariable(name: "flags", arg: 2, scope: !1650, file: !18, line: 446, type: !54)
!1663 = !DILocation(line: 446, column: 9, scope: !1650, inlinedAt: !1657)
!1664 = !DILocalVariable(name: "size", arg: 3, scope: !1650, file: !18, line: 446, type: !1645)
!1665 = !DILocation(line: 446, column: 23, scope: !1650, inlinedAt: !1657)
!1666 = !DILocalVariable(name: "ret", scope: !1650, file: !18, line: 448, type: !48)
!1667 = !DILocation(line: 448, column: 8, scope: !1650, inlinedAt: !1657)
!1668 = !DILocalVariable(name: "flags", arg: 1, scope: !1669, file: !18, line: 318, type: !54)
!1669 = distinct !DISubprogram(name: "kmalloc_type", scope: !18, file: !18, line: 318, type: !1670, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !441)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!17, !54}
!1672 = !DILocation(line: 318, column: 67, scope: !1669, inlinedAt: !1673)
!1673 = distinct !DILocation(line: 553, column: 20, scope: !1658, inlinedAt: !1661)
!1674 = !DILocalVariable(name: "size", arg: 1, scope: !1675, file: !18, line: 346, type: !1645)
!1675 = distinct !DISubprogram(name: "kmalloc_index", scope: !18, file: !18, line: 346, type: !1676, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !441)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!7, !1645}
!1678 = !DILocation(line: 346, column: 58, scope: !1675, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 547, column: 11, scope: !1658, inlinedAt: !1661)
!1680 = !DILocalVariable(name: "size", arg: 1, scope: !1681, file: !18, line: 472, type: !1645)
!1681 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !18, file: !18, line: 472, type: !1682, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !441)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!48, !1645, !54, !7}
!1684 = !DILocation(line: 472, column: 28, scope: !1681, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 481, column: 9, scope: !1686, inlinedAt: !1687)
!1686 = distinct !DISubprogram(name: "kmalloc_large", scope: !18, file: !18, line: 478, type: !1643, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !441)
!1687 = distinct !DILocation(line: 545, column: 11, scope: !1688, inlinedAt: !1661)
!1688 = distinct !DILexicalBlock(scope: !1658, file: !18, line: 544, column: 7)
!1689 = !DILocalVariable(name: "flags", arg: 2, scope: !1681, file: !18, line: 472, type: !54)
!1690 = !DILocation(line: 472, column: 40, scope: !1681, inlinedAt: !1685)
!1691 = !DILocalVariable(name: "order", arg: 3, scope: !1681, file: !18, line: 472, type: !7)
!1692 = !DILocation(line: 472, column: 60, scope: !1681, inlinedAt: !1685)
!1693 = !DILocalVariable(name: "size", arg: 1, scope: !1686, file: !18, line: 478, type: !1645)
!1694 = !DILocation(line: 478, column: 51, scope: !1686, inlinedAt: !1687)
!1695 = !DILocalVariable(name: "flags", arg: 2, scope: !1686, file: !18, line: 478, type: !54)
!1696 = !DILocation(line: 478, column: 63, scope: !1686, inlinedAt: !1687)
!1697 = !DILocalVariable(name: "order", scope: !1686, file: !18, line: 480, type: !7)
!1698 = !DILocation(line: 480, column: 15, scope: !1686, inlinedAt: !1687)
!1699 = !DILocalVariable(name: "size", arg: 1, scope: !1660, file: !18, line: 538, type: !1645)
!1700 = !DILocation(line: 538, column: 45, scope: !1660, inlinedAt: !1661)
!1701 = !DILocalVariable(name: "flags", arg: 2, scope: !1660, file: !18, line: 538, type: !54)
!1702 = !DILocation(line: 538, column: 57, scope: !1660, inlinedAt: !1661)
!1703 = !DILocalVariable(name: "index", scope: !1658, file: !18, line: 542, type: !7)
!1704 = !DILocation(line: 542, column: 16, scope: !1658, inlinedAt: !1661)
!1705 = !DILocalVariable(name: "size", arg: 1, scope: !1642, file: !18, line: 662, type: !1645)
!1706 = !DILocation(line: 662, column: 36, scope: !1642)
!1707 = !DILocalVariable(name: "flags", arg: 2, scope: !1642, file: !18, line: 662, type: !54)
!1708 = !DILocation(line: 662, column: 48, scope: !1642)
!1709 = !DILocation(line: 664, column: 17, scope: !1642)
!1710 = !DILocation(line: 664, column: 23, scope: !1642)
!1711 = !DILocation(line: 664, column: 29, scope: !1642)
!1712 = !DILocation(line: 540, column: 27, scope: !1659, inlinedAt: !1661)
!1713 = !DILocation(line: 540, column: 6, scope: !1659, inlinedAt: !1661)
!1714 = !DILocation(line: 540, column: 6, scope: !1660, inlinedAt: !1661)
!1715 = !DILocation(line: 544, column: 7, scope: !1688, inlinedAt: !1661)
!1716 = !DILocation(line: 544, column: 12, scope: !1688, inlinedAt: !1661)
!1717 = !DILocation(line: 544, column: 7, scope: !1658, inlinedAt: !1661)
!1718 = !DILocation(line: 545, column: 25, scope: !1688, inlinedAt: !1661)
!1719 = !DILocation(line: 545, column: 31, scope: !1688, inlinedAt: !1661)
!1720 = !DILocation(line: 480, column: 33, scope: !1686, inlinedAt: !1687)
!1721 = !DILocation(line: 480, column: 23, scope: !1686, inlinedAt: !1687)
!1722 = !DILocation(line: 481, column: 29, scope: !1686, inlinedAt: !1687)
!1723 = !DILocation(line: 481, column: 35, scope: !1686, inlinedAt: !1687)
!1724 = !DILocation(line: 481, column: 42, scope: !1686, inlinedAt: !1687)
!1725 = !DILocation(line: 474, column: 23, scope: !1681, inlinedAt: !1685)
!1726 = !DILocation(line: 474, column: 29, scope: !1681, inlinedAt: !1685)
!1727 = !DILocation(line: 474, column: 36, scope: !1681, inlinedAt: !1685)
!1728 = !DILocation(line: 474, column: 9, scope: !1681, inlinedAt: !1685)
!1729 = !DILocation(line: 545, column: 4, scope: !1688, inlinedAt: !1661)
!1730 = !DILocation(line: 547, column: 25, scope: !1658, inlinedAt: !1661)
!1731 = !DILocation(line: 348, column: 7, scope: !1732, inlinedAt: !1679)
!1732 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 348, column: 6)
!1733 = !DILocation(line: 348, column: 6, scope: !1675, inlinedAt: !1679)
!1734 = !DILocation(line: 349, column: 3, scope: !1732, inlinedAt: !1679)
!1735 = !DILocation(line: 351, column: 6, scope: !1736, inlinedAt: !1679)
!1736 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 351, column: 6)
!1737 = !DILocation(line: 351, column: 11, scope: !1736, inlinedAt: !1679)
!1738 = !DILocation(line: 351, column: 6, scope: !1675, inlinedAt: !1679)
!1739 = !DILocation(line: 352, column: 3, scope: !1736, inlinedAt: !1679)
!1740 = !DILocation(line: 354, column: 32, scope: !1741, inlinedAt: !1679)
!1741 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 354, column: 6)
!1742 = !DILocation(line: 354, column: 37, scope: !1741, inlinedAt: !1679)
!1743 = !DILocation(line: 354, column: 42, scope: !1741, inlinedAt: !1679)
!1744 = !DILocation(line: 354, column: 45, scope: !1741, inlinedAt: !1679)
!1745 = !DILocation(line: 354, column: 50, scope: !1741, inlinedAt: !1679)
!1746 = !DILocation(line: 354, column: 6, scope: !1675, inlinedAt: !1679)
!1747 = !DILocation(line: 355, column: 3, scope: !1741, inlinedAt: !1679)
!1748 = !DILocation(line: 356, column: 32, scope: !1749, inlinedAt: !1679)
!1749 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 356, column: 6)
!1750 = !DILocation(line: 356, column: 37, scope: !1749, inlinedAt: !1679)
!1751 = !DILocation(line: 356, column: 43, scope: !1749, inlinedAt: !1679)
!1752 = !DILocation(line: 356, column: 46, scope: !1749, inlinedAt: !1679)
!1753 = !DILocation(line: 356, column: 51, scope: !1749, inlinedAt: !1679)
!1754 = !DILocation(line: 356, column: 6, scope: !1675, inlinedAt: !1679)
!1755 = !DILocation(line: 357, column: 3, scope: !1749, inlinedAt: !1679)
!1756 = !DILocation(line: 358, column: 6, scope: !1757, inlinedAt: !1679)
!1757 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 358, column: 6)
!1758 = !DILocation(line: 358, column: 11, scope: !1757, inlinedAt: !1679)
!1759 = !DILocation(line: 358, column: 6, scope: !1675, inlinedAt: !1679)
!1760 = !DILocation(line: 358, column: 26, scope: !1757, inlinedAt: !1679)
!1761 = !DILocation(line: 359, column: 6, scope: !1762, inlinedAt: !1679)
!1762 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 359, column: 6)
!1763 = !DILocation(line: 359, column: 11, scope: !1762, inlinedAt: !1679)
!1764 = !DILocation(line: 359, column: 6, scope: !1675, inlinedAt: !1679)
!1765 = !DILocation(line: 359, column: 26, scope: !1762, inlinedAt: !1679)
!1766 = !DILocation(line: 360, column: 6, scope: !1767, inlinedAt: !1679)
!1767 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 360, column: 6)
!1768 = !DILocation(line: 360, column: 11, scope: !1767, inlinedAt: !1679)
!1769 = !DILocation(line: 360, column: 6, scope: !1675, inlinedAt: !1679)
!1770 = !DILocation(line: 360, column: 26, scope: !1767, inlinedAt: !1679)
!1771 = !DILocation(line: 361, column: 6, scope: !1772, inlinedAt: !1679)
!1772 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 361, column: 6)
!1773 = !DILocation(line: 361, column: 11, scope: !1772, inlinedAt: !1679)
!1774 = !DILocation(line: 361, column: 6, scope: !1675, inlinedAt: !1679)
!1775 = !DILocation(line: 361, column: 26, scope: !1772, inlinedAt: !1679)
!1776 = !DILocation(line: 362, column: 6, scope: !1777, inlinedAt: !1679)
!1777 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 362, column: 6)
!1778 = !DILocation(line: 362, column: 11, scope: !1777, inlinedAt: !1679)
!1779 = !DILocation(line: 362, column: 6, scope: !1675, inlinedAt: !1679)
!1780 = !DILocation(line: 362, column: 26, scope: !1777, inlinedAt: !1679)
!1781 = !DILocation(line: 363, column: 6, scope: !1782, inlinedAt: !1679)
!1782 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 363, column: 6)
!1783 = !DILocation(line: 363, column: 11, scope: !1782, inlinedAt: !1679)
!1784 = !DILocation(line: 363, column: 6, scope: !1675, inlinedAt: !1679)
!1785 = !DILocation(line: 363, column: 26, scope: !1782, inlinedAt: !1679)
!1786 = !DILocation(line: 364, column: 6, scope: !1787, inlinedAt: !1679)
!1787 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 364, column: 6)
!1788 = !DILocation(line: 364, column: 11, scope: !1787, inlinedAt: !1679)
!1789 = !DILocation(line: 364, column: 6, scope: !1675, inlinedAt: !1679)
!1790 = !DILocation(line: 364, column: 26, scope: !1787, inlinedAt: !1679)
!1791 = !DILocation(line: 365, column: 6, scope: !1792, inlinedAt: !1679)
!1792 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 365, column: 6)
!1793 = !DILocation(line: 365, column: 11, scope: !1792, inlinedAt: !1679)
!1794 = !DILocation(line: 365, column: 6, scope: !1675, inlinedAt: !1679)
!1795 = !DILocation(line: 365, column: 26, scope: !1792, inlinedAt: !1679)
!1796 = !DILocation(line: 366, column: 6, scope: !1797, inlinedAt: !1679)
!1797 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 366, column: 6)
!1798 = !DILocation(line: 366, column: 11, scope: !1797, inlinedAt: !1679)
!1799 = !DILocation(line: 366, column: 6, scope: !1675, inlinedAt: !1679)
!1800 = !DILocation(line: 366, column: 26, scope: !1797, inlinedAt: !1679)
!1801 = !DILocation(line: 367, column: 6, scope: !1802, inlinedAt: !1679)
!1802 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 367, column: 6)
!1803 = !DILocation(line: 367, column: 11, scope: !1802, inlinedAt: !1679)
!1804 = !DILocation(line: 367, column: 6, scope: !1675, inlinedAt: !1679)
!1805 = !DILocation(line: 367, column: 26, scope: !1802, inlinedAt: !1679)
!1806 = !DILocation(line: 368, column: 6, scope: !1807, inlinedAt: !1679)
!1807 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 368, column: 6)
!1808 = !DILocation(line: 368, column: 11, scope: !1807, inlinedAt: !1679)
!1809 = !DILocation(line: 368, column: 6, scope: !1675, inlinedAt: !1679)
!1810 = !DILocation(line: 368, column: 26, scope: !1807, inlinedAt: !1679)
!1811 = !DILocation(line: 369, column: 6, scope: !1812, inlinedAt: !1679)
!1812 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 369, column: 6)
!1813 = !DILocation(line: 369, column: 11, scope: !1812, inlinedAt: !1679)
!1814 = !DILocation(line: 369, column: 6, scope: !1675, inlinedAt: !1679)
!1815 = !DILocation(line: 369, column: 26, scope: !1812, inlinedAt: !1679)
!1816 = !DILocation(line: 370, column: 6, scope: !1817, inlinedAt: !1679)
!1817 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 370, column: 6)
!1818 = !DILocation(line: 370, column: 11, scope: !1817, inlinedAt: !1679)
!1819 = !DILocation(line: 370, column: 6, scope: !1675, inlinedAt: !1679)
!1820 = !DILocation(line: 370, column: 26, scope: !1817, inlinedAt: !1679)
!1821 = !DILocation(line: 371, column: 6, scope: !1822, inlinedAt: !1679)
!1822 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 371, column: 6)
!1823 = !DILocation(line: 371, column: 11, scope: !1822, inlinedAt: !1679)
!1824 = !DILocation(line: 371, column: 6, scope: !1675, inlinedAt: !1679)
!1825 = !DILocation(line: 371, column: 26, scope: !1822, inlinedAt: !1679)
!1826 = !DILocation(line: 372, column: 6, scope: !1827, inlinedAt: !1679)
!1827 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 372, column: 6)
!1828 = !DILocation(line: 372, column: 11, scope: !1827, inlinedAt: !1679)
!1829 = !DILocation(line: 372, column: 6, scope: !1675, inlinedAt: !1679)
!1830 = !DILocation(line: 372, column: 26, scope: !1827, inlinedAt: !1679)
!1831 = !DILocation(line: 373, column: 6, scope: !1832, inlinedAt: !1679)
!1832 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 373, column: 6)
!1833 = !DILocation(line: 373, column: 11, scope: !1832, inlinedAt: !1679)
!1834 = !DILocation(line: 373, column: 6, scope: !1675, inlinedAt: !1679)
!1835 = !DILocation(line: 373, column: 26, scope: !1832, inlinedAt: !1679)
!1836 = !DILocation(line: 374, column: 6, scope: !1837, inlinedAt: !1679)
!1837 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 374, column: 6)
!1838 = !DILocation(line: 374, column: 11, scope: !1837, inlinedAt: !1679)
!1839 = !DILocation(line: 374, column: 6, scope: !1675, inlinedAt: !1679)
!1840 = !DILocation(line: 374, column: 26, scope: !1837, inlinedAt: !1679)
!1841 = !DILocation(line: 375, column: 6, scope: !1842, inlinedAt: !1679)
!1842 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 375, column: 6)
!1843 = !DILocation(line: 375, column: 11, scope: !1842, inlinedAt: !1679)
!1844 = !DILocation(line: 375, column: 6, scope: !1675, inlinedAt: !1679)
!1845 = !DILocation(line: 375, column: 27, scope: !1842, inlinedAt: !1679)
!1846 = !DILocation(line: 376, column: 6, scope: !1847, inlinedAt: !1679)
!1847 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 376, column: 6)
!1848 = !DILocation(line: 376, column: 11, scope: !1847, inlinedAt: !1679)
!1849 = !DILocation(line: 376, column: 6, scope: !1675, inlinedAt: !1679)
!1850 = !DILocation(line: 376, column: 32, scope: !1847, inlinedAt: !1679)
!1851 = !DILocation(line: 377, column: 6, scope: !1852, inlinedAt: !1679)
!1852 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 377, column: 6)
!1853 = !DILocation(line: 377, column: 11, scope: !1852, inlinedAt: !1679)
!1854 = !DILocation(line: 377, column: 6, scope: !1675, inlinedAt: !1679)
!1855 = !DILocation(line: 377, column: 32, scope: !1852, inlinedAt: !1679)
!1856 = !DILocation(line: 378, column: 6, scope: !1857, inlinedAt: !1679)
!1857 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 378, column: 6)
!1858 = !DILocation(line: 378, column: 11, scope: !1857, inlinedAt: !1679)
!1859 = !DILocation(line: 378, column: 6, scope: !1675, inlinedAt: !1679)
!1860 = !DILocation(line: 378, column: 32, scope: !1857, inlinedAt: !1679)
!1861 = !DILocation(line: 379, column: 6, scope: !1862, inlinedAt: !1679)
!1862 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 379, column: 6)
!1863 = !DILocation(line: 379, column: 11, scope: !1862, inlinedAt: !1679)
!1864 = !DILocation(line: 379, column: 6, scope: !1675, inlinedAt: !1679)
!1865 = !DILocation(line: 379, column: 33, scope: !1862, inlinedAt: !1679)
!1866 = !DILocation(line: 380, column: 6, scope: !1867, inlinedAt: !1679)
!1867 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 380, column: 6)
!1868 = !DILocation(line: 380, column: 11, scope: !1867, inlinedAt: !1679)
!1869 = !DILocation(line: 380, column: 6, scope: !1675, inlinedAt: !1679)
!1870 = !DILocation(line: 380, column: 33, scope: !1867, inlinedAt: !1679)
!1871 = !DILocation(line: 381, column: 6, scope: !1872, inlinedAt: !1679)
!1872 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 381, column: 6)
!1873 = !DILocation(line: 381, column: 11, scope: !1872, inlinedAt: !1679)
!1874 = !DILocation(line: 381, column: 6, scope: !1675, inlinedAt: !1679)
!1875 = !DILocation(line: 381, column: 33, scope: !1872, inlinedAt: !1679)
!1876 = !DILocation(line: 382, column: 2, scope: !1877, inlinedAt: !1679)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !18, line: 382, column: 2)
!1878 = distinct !DILexicalBlock(scope: !1675, file: !18, line: 382, column: 2)
!1879 = !{i32 -2144106607, i32 -2144106578, i32 -2144106532, i32 -2144106474, i32 -2144106420, i32 -2144106366, i32 -2144106311, i32 -2144106280}
!1880 = !DILocation(line: 382, column: 2, scope: !1881, inlinedAt: !1679)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !18, line: 382, column: 2)
!1882 = distinct !DILexicalBlock(scope: !1878, file: !18, line: 382, column: 2)
!1883 = !{i32 -2144105837, i32 -2144105830, i32 -2144105776, i32 -2144105745, i32 -2144105715}
!1884 = !DILocation(line: 382, column: 2, scope: !1882, inlinedAt: !1679)
!1885 = !DILocation(line: 386, column: 1, scope: !1675, inlinedAt: !1679)
!1886 = !DILocation(line: 547, column: 9, scope: !1658, inlinedAt: !1661)
!1887 = !DILocation(line: 549, column: 8, scope: !1888, inlinedAt: !1661)
!1888 = distinct !DILexicalBlock(scope: !1658, file: !18, line: 549, column: 7)
!1889 = !DILocation(line: 549, column: 7, scope: !1658, inlinedAt: !1661)
!1890 = !DILocation(line: 550, column: 4, scope: !1888, inlinedAt: !1661)
!1891 = !DILocation(line: 553, column: 33, scope: !1658, inlinedAt: !1661)
!1892 = !DILocation(line: 325, column: 6, scope: !1893, inlinedAt: !1673)
!1893 = distinct !DILexicalBlock(scope: !1669, file: !18, line: 325, column: 6)
!1894 = !DILocation(line: 325, column: 6, scope: !1669, inlinedAt: !1673)
!1895 = !DILocation(line: 326, column: 3, scope: !1893, inlinedAt: !1673)
!1896 = !DILocation(line: 332, column: 9, scope: !1669, inlinedAt: !1673)
!1897 = !DILocation(line: 332, column: 15, scope: !1669, inlinedAt: !1673)
!1898 = !DILocation(line: 332, column: 2, scope: !1669, inlinedAt: !1673)
!1899 = !DILocation(line: 336, column: 1, scope: !1669, inlinedAt: !1673)
!1900 = !DILocation(line: 553, column: 5, scope: !1658, inlinedAt: !1661)
!1901 = !DILocation(line: 553, column: 41, scope: !1658, inlinedAt: !1661)
!1902 = !DILocation(line: 554, column: 5, scope: !1658, inlinedAt: !1661)
!1903 = !DILocation(line: 554, column: 12, scope: !1658, inlinedAt: !1661)
!1904 = !DILocation(line: 448, column: 31, scope: !1650, inlinedAt: !1657)
!1905 = !DILocation(line: 448, column: 34, scope: !1650, inlinedAt: !1657)
!1906 = !DILocation(line: 448, column: 14, scope: !1650, inlinedAt: !1657)
!1907 = !DILocation(line: 450, column: 22, scope: !1650, inlinedAt: !1657)
!1908 = !DILocation(line: 450, column: 25, scope: !1650, inlinedAt: !1657)
!1909 = !DILocation(line: 450, column: 30, scope: !1650, inlinedAt: !1657)
!1910 = !DILocation(line: 450, column: 36, scope: !1650, inlinedAt: !1657)
!1911 = !DILocation(line: 450, column: 8, scope: !1650, inlinedAt: !1657)
!1912 = !DILocation(line: 450, column: 6, scope: !1650, inlinedAt: !1657)
!1913 = !DILocation(line: 451, column: 9, scope: !1650, inlinedAt: !1657)
!1914 = !DILocation(line: 552, column: 3, scope: !1658, inlinedAt: !1661)
!1915 = !DILocation(line: 557, column: 19, scope: !1660, inlinedAt: !1661)
!1916 = !DILocation(line: 557, column: 25, scope: !1660, inlinedAt: !1661)
!1917 = !DILocation(line: 557, column: 9, scope: !1660, inlinedAt: !1661)
!1918 = !DILocation(line: 557, column: 2, scope: !1660, inlinedAt: !1661)
!1919 = !DILocation(line: 558, column: 1, scope: !1660, inlinedAt: !1661)
!1920 = !DILocation(line: 664, column: 2, scope: !1642)
!1921 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1922, file: !1922, line: 646, type: !1923, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !441)
!1922 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!56}
!1925 = !DILocalVariable(name: "__ret", scope: !1926, file: !1922, line: 648, type: !56)
!1926 = distinct !DILexicalBlock(scope: !1921, file: !1922, line: 648, column: 9)
!1927 = !DILocation(line: 648, column: 9, scope: !1926)
!1928 = !DILocalVariable(name: "__edi", scope: !1926, file: !1922, line: 648, type: !56)
!1929 = !DILocalVariable(name: "__esi", scope: !1926, file: !1922, line: 648, type: !56)
!1930 = !DILocalVariable(name: "__edx", scope: !1926, file: !1922, line: 648, type: !56)
!1931 = !DILocalVariable(name: "__ecx", scope: !1926, file: !1922, line: 648, type: !56)
!1932 = !DILocalVariable(name: "__eax", scope: !1926, file: !1922, line: 648, type: !56)
!1933 = !DILocation(line: 648, column: 9, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !1922, line: 648, column: 9)
!1935 = distinct !DILexicalBlock(scope: !1926, file: !1922, line: 648, column: 9)
!1936 = !{i32 -2145780213, i32 -2145777898, i32 -2145777664, i32 -2145777613, i32 -2145777585, i32 -2145777560, i32 -2145777876, i32 -2145777863, i32 -2145777425, i32 -2145777306, i32 -2145777771, i32 -2145777744, i32 -2145777716, i32 -2145777686}
!1937 = !DILocalVariable(name: "__mask", scope: !1938, file: !1922, line: 648, type: !56)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !1922, line: 648, column: 9)
!1939 = !DILocation(line: 648, column: 9, scope: !1938)
!1940 = !DILocation(line: 648, column: 9, scope: !1935)
!1941 = !DILocation(line: 648, column: 2, scope: !1921)
!1942 = distinct !DISubprogram(name: "get_order", scope: !1943, file: !1943, line: 29, type: !511, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !441)
!1943 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1944 = !DILocalVariable(name: "x", arg: 1, scope: !1945, file: !1946, line: 366, type: !33)
!1945 = distinct !DISubprogram(name: "fls64", scope: !1946, file: !1946, line: 366, type: !1947, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !441)
!1946 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!513, !33}
!1949 = !DILocation(line: 366, column: 40, scope: !1945, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 46, column: 9, scope: !1942)
!1951 = !DILocalVariable(name: "bitpos", scope: !1945, file: !1946, line: 368, type: !513)
!1952 = !DILocation(line: 368, column: 6, scope: !1945, inlinedAt: !1950)
!1953 = !DILocalVariable(name: "size", arg: 1, scope: !1942, file: !1943, line: 29, type: !56)
!1954 = !DILocation(line: 29, column: 63, scope: !1942)
!1955 = !DILocation(line: 31, column: 27, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1942, file: !1943, line: 31, column: 6)
!1957 = !DILocation(line: 31, column: 6, scope: !1956)
!1958 = !DILocation(line: 31, column: 6, scope: !1942)
!1959 = !DILocation(line: 32, column: 8, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !1943, line: 32, column: 7)
!1961 = distinct !DILexicalBlock(scope: !1956, file: !1943, line: 31, column: 34)
!1962 = !DILocation(line: 32, column: 7, scope: !1961)
!1963 = !DILocation(line: 33, column: 4, scope: !1960)
!1964 = !DILocation(line: 35, column: 7, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1961, file: !1943, line: 35, column: 7)
!1966 = !DILocation(line: 35, column: 12, scope: !1965)
!1967 = !DILocation(line: 35, column: 7, scope: !1961)
!1968 = !DILocation(line: 36, column: 4, scope: !1965)
!1969 = !DILocation(line: 38, column: 10, scope: !1961)
!1970 = !DILocation(line: 38, column: 28, scope: !1961)
!1971 = !DILocation(line: 38, column: 41, scope: !1961)
!1972 = !DILocation(line: 38, column: 3, scope: !1961)
!1973 = !DILocation(line: 41, column: 6, scope: !1942)
!1974 = !DILocation(line: 42, column: 7, scope: !1942)
!1975 = !DILocation(line: 46, column: 15, scope: !1942)
!1976 = !DILocation(line: 374, column: 2, scope: !1945, inlinedAt: !1950)
!1977 = !DILocation(line: 376, column: 14, scope: !1945, inlinedAt: !1950)
!1978 = !{i32 664595}
!1979 = !DILocation(line: 377, column: 9, scope: !1945, inlinedAt: !1950)
!1980 = !DILocation(line: 377, column: 16, scope: !1945, inlinedAt: !1950)
!1981 = !DILocation(line: 46, column: 2, scope: !1942)
!1982 = !DILocation(line: 48, column: 1, scope: !1942)
!1983 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1984, file: !1984, line: 30, type: !1985, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !441)
!1984 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!513, !32}
!1987 = !DILocation(line: 366, column: 40, scope: !1945, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 32, column: 9, scope: !1983)
!1989 = !DILocation(line: 368, column: 6, scope: !1945, inlinedAt: !1988)
!1990 = !DILocalVariable(name: "n", arg: 1, scope: !1983, file: !1984, line: 30, type: !32)
!1991 = !DILocation(line: 30, column: 21, scope: !1983)
!1992 = !DILocation(line: 32, column: 15, scope: !1983)
!1993 = !DILocation(line: 374, column: 2, scope: !1945, inlinedAt: !1988)
!1994 = !DILocation(line: 376, column: 14, scope: !1945, inlinedAt: !1988)
!1995 = !DILocation(line: 377, column: 9, scope: !1945, inlinedAt: !1988)
!1996 = !DILocation(line: 377, column: 16, scope: !1945, inlinedAt: !1988)
!1997 = !DILocation(line: 32, column: 18, scope: !1983)
!1998 = !DILocation(line: 32, column: 2, scope: !1983)
!1999 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2000, file: !2000, line: 137, type: !2001, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !441)
!2000 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!48, !1653, !2003, !1645, !54}
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2005 = !DILocalVariable(name: "s", arg: 1, scope: !1999, file: !2000, line: 137, type: !1653)
!2006 = !DILocation(line: 137, column: 54, scope: !1999)
!2007 = !DILocalVariable(name: "object", arg: 2, scope: !1999, file: !2000, line: 137, type: !2003)
!2008 = !DILocation(line: 137, column: 69, scope: !1999)
!2009 = !DILocalVariable(name: "size", arg: 3, scope: !1999, file: !2000, line: 138, type: !1645)
!2010 = !DILocation(line: 138, column: 12, scope: !1999)
!2011 = !DILocalVariable(name: "flags", arg: 4, scope: !1999, file: !2000, line: 138, type: !54)
!2012 = !DILocation(line: 138, column: 24, scope: !1999)
!2013 = !DILocation(line: 140, column: 17, scope: !1999)
!2014 = !DILocation(line: 140, column: 2, scope: !1999)
