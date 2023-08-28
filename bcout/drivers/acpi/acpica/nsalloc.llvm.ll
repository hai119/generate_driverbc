; ModuleID = '../bcout/drivers/acpi/acpica/nsalloc.llvm.bc'
source_filename = "drivers/acpi/acpica/nsalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
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
%union.acpi_descriptor = type { %union.acpi_parse_object }
%struct.acpi_common_descriptor = type { i8*, i8 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_data = type { %union.acpi_operand_object*, i8, i8, i16, i8, void (i8*, i8*)*, i8* }
%struct.acpi_object_method = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %union.acpi_operand_object*, %union.acpi_operand_object*, i8*, %union.anon, i32, i16, i8 }
%union.anon = type { i32 (%struct.acpi_walk_state*)* }

@acpi_gbl_namespace_cache = external dso_local global %struct.kmem_cache*, align 8
@acpi_gbl_root_node = external dso_local global %struct.acpi_namespace_node*, align 8
@_acpi_module_name = internal constant [8 x i8] c"nsalloc\00", align 1, !dbg !0
@.str = private unnamed_addr constant [30 x i8] c"Found a grandchild! P=%p C=%p\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.acpi_namespace_node* @acpi_ns_create_node(i32 %name) #0 !dbg !804 {
entry:
  %retval = alloca %struct.acpi_namespace_node*, align 8
  %name.addr = alloca i32, align 4
  %node = alloca %struct.acpi_namespace_node*, align 8
  store i32 %name, i32* %name.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %name.addr, metadata !807, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !809, metadata !DIExpression()), !dbg !810
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @acpi_gbl_namespace_cache, align 8, !dbg !811
  %call = call i8* @acpi_os_acquire_object(%struct.kmem_cache* %0) #6, !dbg !812
  %1 = bitcast i8* %call to %struct.acpi_namespace_node*, !dbg !812
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %node, align 8, !dbg !813
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !814
  %tobool = icmp ne %struct.acpi_namespace_node* %2, null, !dbg !814
  br i1 %tobool, label %if.end, label %if.then, !dbg !816

if.then:                                          ; preds = %entry
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %retval, align 8, !dbg !817
  br label %return, !dbg !817

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %name.addr, align 4, !dbg !819
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !820
  %name1 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %4, i32 0, i32 4, !dbg !821
  %integer = bitcast %union.acpi_name_union* %name1 to i32*, !dbg !822
  store i32 %3, i32* %integer, align 4, !dbg !823
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !824
  %6 = bitcast %struct.acpi_namespace_node* %5 to i8*, !dbg !824
  %7 = bitcast i8* %6 to %union.acpi_descriptor*, !dbg !824
  %common = bitcast %union.acpi_descriptor* %7 to %struct.acpi_common_descriptor*, !dbg !824
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !824
  store i8 15, i8* %descriptor_type, align 8, !dbg !824
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !825
  store %struct.acpi_namespace_node* %8, %struct.acpi_namespace_node** %retval, align 8, !dbg !825
  br label %return, !dbg !825

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %retval, align 8, !dbg !826
  ret %struct.acpi_namespace_node* %9, !dbg !826
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_acquire_object(%struct.kmem_cache* %cache) #0 !dbg !827 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !834, metadata !DIExpression()), !dbg !840
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
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %cache.addr, metadata !844, metadata !DIExpression()), !dbg !845
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** %cache.addr, align 8, !dbg !846
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !847, metadata !DIExpression()), !dbg !848
  br label %do.body, !dbg !848

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !849, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !853, metadata !DIExpression()), !dbg !852
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !852
  %conv = zext i1 %cmp to i32, !dbg !852
  store i32 1, i32* %tmp, align 4, !dbg !852
  %1 = load i32, i32* %tmp, align 4, !dbg !852
  %call = call i64 @arch_local_save_flags() #6, !dbg !854
  store i64 %call, i64* %_flags, align 8, !dbg !854
  br label %do.end, !dbg !854

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !855, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !858, metadata !DIExpression()), !dbg !857
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !857
  %conv6 = zext i1 %cmp5 to i32, !dbg !857
  store i32 1, i32* %tmp7, align 4, !dbg !857
  %2 = load i32, i32* %tmp7, align 4, !dbg !857
  %3 = load i64, i64* %_flags, align 8, !dbg !859
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !860
  %and.i = and i64 %4, 512, !dbg !861
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !862
  %lnot.i = xor i1 %tobool.i, true, !dbg !862
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !862
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !859
  %5 = load i32, i32* %tmp8, align 4, !dbg !859
  store i32 %5, i32* %tmp1, align 4, !dbg !854
  %6 = load i32, i32* %tmp1, align 4, !dbg !848
  %tobool = icmp ne i32 %6, 0, !dbg !863
  %7 = zext i1 %tobool to i64, !dbg !863
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !863
  %call10 = call i8* @kmem_cache_zalloc(%struct.kmem_cache* %0, i32 %cond) #6, !dbg !864
  ret i8* %call10, !dbg !865
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ns_delete_node(%struct.acpi_namespace_node* %node) #0 !dbg !866 {
entry:
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %next_desc = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !869, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !871, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %next_desc, metadata !873, metadata !DIExpression()), !dbg !874
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !875
  %tobool = icmp ne %struct.acpi_namespace_node* %0, null, !dbg !875
  br i1 %tobool, label %if.end, label %if.then, !dbg !877

if.then:                                          ; preds = %entry
  br label %return, !dbg !878

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !880
  call void @acpi_ns_detach_object(%struct.acpi_namespace_node* %1) #6, !dbg !881
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !882
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %2, i32 0, i32 0, !dbg !883
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !883
  store %union.acpi_operand_object* %3, %union.acpi_operand_object** %obj_desc, align 8, !dbg !884
  br label %while.cond, !dbg !885

while.cond:                                       ; preds = %if.end8, %if.end
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !886
  %tobool1 = icmp ne %union.acpi_operand_object* %4, null, !dbg !886
  br i1 %tobool1, label %land.rhs, label %land.end, !dbg !887

land.rhs:                                         ; preds = %while.cond
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !888
  %common = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_common*, !dbg !889
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !890
  %6 = load i8, i8* %type, align 1, !dbg !890
  %conv = zext i8 %6 to i32, !dbg !888
  %cmp = icmp eq i32 %conv, 29, !dbg !891
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !892
  br i1 %7, label %while.body, label %while.end, !dbg !885

while.body:                                       ; preds = %land.end
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !893
  %data = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_data*, !dbg !896
  %handler = getelementptr inbounds %struct.acpi_object_data, %struct.acpi_object_data* %data, i32 0, i32 5, !dbg !897
  %9 = load void (i8*, i8*)*, void (i8*, i8*)** %handler, align 8, !dbg !897
  %tobool3 = icmp ne void (i8*, i8*)* %9, null, !dbg !893
  br i1 %tobool3, label %if.then4, label %if.end8, !dbg !898

if.then4:                                         ; preds = %while.body
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !899
  %data5 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_data*, !dbg !901
  %handler6 = getelementptr inbounds %struct.acpi_object_data, %struct.acpi_object_data* %data5, i32 0, i32 5, !dbg !902
  %11 = load void (i8*, i8*)*, void (i8*, i8*)** %handler6, align 8, !dbg !902
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !903
  %13 = bitcast %struct.acpi_namespace_node* %12 to i8*, !dbg !903
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !904
  %data7 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_data*, !dbg !905
  %pointer = getelementptr inbounds %struct.acpi_object_data, %struct.acpi_object_data* %data7, i32 0, i32 6, !dbg !906
  %15 = load i8*, i8** %pointer, align 8, !dbg !906
  call void %11(i8* %13, i8* %15) #6, !dbg !899
  br label %if.end8, !dbg !907

if.end8:                                          ; preds = %if.then4, %while.body
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !908
  %common9 = bitcast %union.acpi_operand_object* %16 to %struct.acpi_object_common*, !dbg !909
  %next_object = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common9, i32 0, i32 0, !dbg !910
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object, align 8, !dbg !910
  store %union.acpi_operand_object* %17, %union.acpi_operand_object** %next_desc, align 8, !dbg !911
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !912
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %18) #6, !dbg !913
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_desc, align 8, !dbg !914
  store %union.acpi_operand_object* %19, %union.acpi_operand_object** %obj_desc, align 8, !dbg !915
  br label %while.cond, !dbg !885, !llvm.loop !916

while.end:                                        ; preds = %land.end
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !918
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !920
  %cmp10 = icmp eq %struct.acpi_namespace_node* %20, %21, !dbg !921
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !922

if.then12:                                        ; preds = %while.end
  br label %return, !dbg !923

if.end13:                                         ; preds = %while.end
  %22 = load %struct.kmem_cache*, %struct.kmem_cache** @acpi_gbl_namespace_cache, align 8, !dbg !925
  %23 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !926
  %24 = bitcast %struct.acpi_namespace_node* %23 to i8*, !dbg !926
  %call = call i32 @acpi_os_release_object(%struct.kmem_cache* %22, i8* %24) #6, !dbg !927
  br label %return, !dbg !928

return:                                           ; preds = %if.end13, %if.then12, %if.then
  ret void, !dbg !928
}

; Function Attrs: noredzone
declare dso_local void @acpi_ns_detach_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_release_object(%struct.kmem_cache*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ns_remove_node(%struct.acpi_namespace_node* %node) #0 !dbg !929 {
entry:
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %parent_node = alloca %struct.acpi_namespace_node*, align 8
  %prev_node = alloca %struct.acpi_namespace_node*, align 8
  %next_node = alloca %struct.acpi_namespace_node*, align 8
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !930, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %parent_node, metadata !932, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %prev_node, metadata !934, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %next_node, metadata !936, metadata !DIExpression()), !dbg !937
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !938
  %parent = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %0, i32 0, i32 5, !dbg !939
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent, align 8, !dbg !939
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !940
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %prev_node, align 8, !dbg !941
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !942
  %child = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %2, i32 0, i32 6, !dbg !943
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child, align 8, !dbg !943
  store %struct.acpi_namespace_node* %3, %struct.acpi_namespace_node** %next_node, align 8, !dbg !944
  br label %while.cond, !dbg !945

while.cond:                                       ; preds = %while.body, %entry
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %next_node, align 8, !dbg !946
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !947
  %cmp = icmp ne %struct.acpi_namespace_node* %4, %5, !dbg !948
  br i1 %cmp, label %while.body, label %while.end, !dbg !945

while.body:                                       ; preds = %while.cond
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %next_node, align 8, !dbg !949
  store %struct.acpi_namespace_node* %6, %struct.acpi_namespace_node** %prev_node, align 8, !dbg !951
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %next_node, align 8, !dbg !952
  %peer = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %7, i32 0, i32 7, !dbg !953
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %peer, align 8, !dbg !953
  store %struct.acpi_namespace_node* %8, %struct.acpi_namespace_node** %next_node, align 8, !dbg !954
  br label %while.cond, !dbg !945, !llvm.loop !955

while.end:                                        ; preds = %while.cond
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prev_node, align 8, !dbg !957
  %tobool = icmp ne %struct.acpi_namespace_node* %9, null, !dbg !957
  br i1 %tobool, label %if.then, label %if.else, !dbg !959

if.then:                                          ; preds = %while.end
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !960
  %peer1 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %10, i32 0, i32 7, !dbg !962
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %peer1, align 8, !dbg !962
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prev_node, align 8, !dbg !963
  %peer2 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %12, i32 0, i32 7, !dbg !964
  store %struct.acpi_namespace_node* %11, %struct.acpi_namespace_node** %peer2, align 8, !dbg !965
  br label %if.end, !dbg !966

if.else:                                          ; preds = %while.end
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !967
  %peer3 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %13, i32 0, i32 7, !dbg !969
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %peer3, align 8, !dbg !969
  %15 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !970
  %child4 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %15, i32 0, i32 6, !dbg !971
  store %struct.acpi_namespace_node* %14, %struct.acpi_namespace_node** %child4, align 8, !dbg !972
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !973
  call void @acpi_ns_delete_node(%struct.acpi_namespace_node* %16) #6, !dbg !974
  ret void, !dbg !975
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ns_install_node(%struct.acpi_walk_state* %walk_state, %struct.acpi_namespace_node* %parent_node, %struct.acpi_namespace_node* %node, i32 %type) #0 !dbg !976 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %parent_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %type.addr = alloca i32, align 4
  %owner_id = alloca i16, align 2
  %child_node = alloca %struct.acpi_namespace_node*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !980, metadata !DIExpression()), !dbg !981
  store %struct.acpi_namespace_node* %parent_node, %struct.acpi_namespace_node** %parent_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %parent_node.addr, metadata !982, metadata !DIExpression()), !dbg !983
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !984, metadata !DIExpression()), !dbg !985
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !986, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.declare(metadata i16* %owner_id, metadata !988, metadata !DIExpression()), !dbg !989
  store i16 0, i16* %owner_id, align 2, !dbg !989
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %child_node, metadata !990, metadata !DIExpression()), !dbg !991
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !992
  %tobool = icmp ne %struct.acpi_walk_state* %0, null, !dbg !992
  br i1 %tobool, label %if.then, label %if.end6, !dbg !994

if.then:                                          ; preds = %entry
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !995
  %owner_id1 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %1, i32 0, i32 7, !dbg !997
  %2 = load i16, i16* %owner_id1, align 8, !dbg !997
  store i16 %2, i16* %owner_id, align 2, !dbg !998
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !999
  %method_desc = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 37, !dbg !1001
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc, align 8, !dbg !1001
  %tobool2 = icmp ne %union.acpi_operand_object* %4, null, !dbg !1002
  br i1 %tobool2, label %land.lhs.true, label %if.end, !dbg !1003

land.lhs.true:                                    ; preds = %if.then
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node.addr, align 8, !dbg !1004
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1005
  %method_node = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %6, i32 0, i32 38, !dbg !1006
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node, align 8, !dbg !1006
  %cmp = icmp ne %struct.acpi_namespace_node* %5, %7, !dbg !1007
  br i1 %cmp, label %if.then3, label %if.end, !dbg !1008

if.then3:                                         ; preds = %land.lhs.true
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1009
  %method_desc4 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 37, !dbg !1011
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc4, align 8, !dbg !1011
  %method = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_method*, !dbg !1012
  %info_flags = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method, i32 0, i32 5, !dbg !1013
  %10 = load i8, i8* %info_flags, align 1, !dbg !1014
  %conv = zext i8 %10 to i32, !dbg !1014
  %or = or i32 %conv, 32, !dbg !1014
  %conv5 = trunc i32 %or to i8, !dbg !1014
  store i8 %conv5, i8* %info_flags, align 1, !dbg !1014
  br label %if.end, !dbg !1015

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.then
  br label %if.end6, !dbg !1016

if.end6:                                          ; preds = %if.end, %entry
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1017
  %peer = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %11, i32 0, i32 7, !dbg !1018
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %peer, align 8, !dbg !1019
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node.addr, align 8, !dbg !1020
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1021
  %parent = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %13, i32 0, i32 5, !dbg !1022
  store %struct.acpi_namespace_node* %12, %struct.acpi_namespace_node** %parent, align 8, !dbg !1023
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node.addr, align 8, !dbg !1024
  %child = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %14, i32 0, i32 6, !dbg !1025
  %15 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child, align 8, !dbg !1025
  store %struct.acpi_namespace_node* %15, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1026
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1027
  %tobool7 = icmp ne %struct.acpi_namespace_node* %16, null, !dbg !1027
  br i1 %tobool7, label %if.else, label %if.then8, !dbg !1029

if.then8:                                         ; preds = %if.end6
  %17 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1030
  %18 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node.addr, align 8, !dbg !1032
  %child9 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %18, i32 0, i32 6, !dbg !1033
  store %struct.acpi_namespace_node* %17, %struct.acpi_namespace_node** %child9, align 8, !dbg !1034
  br label %if.end14, !dbg !1035

if.else:                                          ; preds = %if.end6
  br label %while.cond, !dbg !1036

while.cond:                                       ; preds = %while.body, %if.else
  %19 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1038
  %peer10 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %19, i32 0, i32 7, !dbg !1039
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %peer10, align 8, !dbg !1039
  %tobool11 = icmp ne %struct.acpi_namespace_node* %20, null, !dbg !1036
  br i1 %tobool11, label %while.body, label %while.end, !dbg !1036

while.body:                                       ; preds = %while.cond
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1040
  %peer12 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %21, i32 0, i32 7, !dbg !1042
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %peer12, align 8, !dbg !1042
  store %struct.acpi_namespace_node* %22, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1043
  br label %while.cond, !dbg !1036, !llvm.loop !1044

while.end:                                        ; preds = %while.cond
  %23 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1046
  %24 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1047
  %peer13 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %24, i32 0, i32 7, !dbg !1048
  store %struct.acpi_namespace_node* %23, %struct.acpi_namespace_node** %peer13, align 8, !dbg !1049
  br label %if.end14

if.end14:                                         ; preds = %while.end, %if.then8
  %25 = load i16, i16* %owner_id, align 2, !dbg !1050
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1051
  %owner_id15 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %26, i32 0, i32 8, !dbg !1052
  store i16 %25, i16* %owner_id15, align 8, !dbg !1053
  %27 = load i32, i32* %type.addr, align 4, !dbg !1054
  %conv16 = trunc i32 %27 to i8, !dbg !1055
  %28 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1056
  %type17 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %28, i32 0, i32 2, !dbg !1057
  store i8 %conv16, i8* %type17, align 1, !dbg !1058
  ret void, !dbg !1059
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ns_delete_children(%struct.acpi_namespace_node* %parent_node) #0 !dbg !1060 {
entry:
  %parent_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %next_node = alloca %struct.acpi_namespace_node*, align 8
  %node_to_delete = alloca %struct.acpi_namespace_node*, align 8
  store %struct.acpi_namespace_node* %parent_node, %struct.acpi_namespace_node** %parent_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %parent_node.addr, metadata !1061, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %next_node, metadata !1063, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node_to_delete, metadata !1065, metadata !DIExpression()), !dbg !1066
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node.addr, align 8, !dbg !1067
  %tobool = icmp ne %struct.acpi_namespace_node* %0, null, !dbg !1067
  br i1 %tobool, label %if.end, label %if.then, !dbg !1069

if.then:                                          ; preds = %entry
  br label %return, !dbg !1070

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node.addr, align 8, !dbg !1072
  %child = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %1, i32 0, i32 6, !dbg !1073
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child, align 8, !dbg !1073
  store %struct.acpi_namespace_node* %2, %struct.acpi_namespace_node** %next_node, align 8, !dbg !1074
  br label %while.cond, !dbg !1075

while.cond:                                       ; preds = %if.end5, %if.end
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %next_node, align 8, !dbg !1076
  %tobool1 = icmp ne %struct.acpi_namespace_node* %3, null, !dbg !1075
  br i1 %tobool1, label %while.body, label %while.end, !dbg !1075

while.body:                                       ; preds = %while.cond
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %next_node, align 8, !dbg !1077
  %child2 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %4, i32 0, i32 6, !dbg !1080
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child2, align 8, !dbg !1080
  %tobool3 = icmp ne %struct.acpi_namespace_node* %5, null, !dbg !1077
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1081

if.then4:                                         ; preds = %while.body
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node.addr, align 8, !dbg !1082
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %next_node, align 8, !dbg !1082
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 286, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.acpi_namespace_node* %6, %struct.acpi_namespace_node* %7) #6, !dbg !1082
  br label %if.end5, !dbg !1084

if.end5:                                          ; preds = %if.then4, %while.body
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %next_node, align 8, !dbg !1085
  store %struct.acpi_namespace_node* %8, %struct.acpi_namespace_node** %node_to_delete, align 8, !dbg !1086
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %next_node, align 8, !dbg !1087
  %peer = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %9, i32 0, i32 7, !dbg !1088
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %peer, align 8, !dbg !1088
  store %struct.acpi_namespace_node* %10, %struct.acpi_namespace_node** %next_node, align 8, !dbg !1089
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node_to_delete, align 8, !dbg !1090
  call void @acpi_ns_delete_node(%struct.acpi_namespace_node* %11) #6, !dbg !1091
  br label %while.cond, !dbg !1075, !llvm.loop !1092

while.end:                                        ; preds = %while.cond
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node.addr, align 8, !dbg !1094
  %child6 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %12, i32 0, i32 6, !dbg !1095
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %child6, align 8, !dbg !1096
  br label %return, !dbg !1097

return:                                           ; preds = %while.end, %if.then
  ret void, !dbg !1098
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ns_delete_namespace_subtree(%struct.acpi_namespace_node* %parent_node) #0 !dbg !1099 {
entry:
  %parent_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %child_node = alloca %struct.acpi_namespace_node*, align 8
  %level = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.acpi_namespace_node* %parent_node, %struct.acpi_namespace_node** %parent_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %parent_node.addr, metadata !1100, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %child_node, metadata !1102, metadata !DIExpression()), !dbg !1103
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1103
  call void @llvm.dbg.declare(metadata i32* %level, metadata !1104, metadata !DIExpression()), !dbg !1105
  store i32 1, i32* %level, align 4, !dbg !1105
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1106, metadata !DIExpression()), !dbg !1107
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node.addr, align 8, !dbg !1108
  %tobool = icmp ne %struct.acpi_namespace_node* %0, null, !dbg !1108
  br i1 %tobool, label %if.end, label %if.then, !dbg !1110

if.then:                                          ; preds = %entry
  br label %return, !dbg !1111

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #6, !dbg !1113
  store i32 %call, i32* %status, align 4, !dbg !1114
  %1 = load i32, i32* %status, align 4, !dbg !1115
  %tobool1 = icmp ne i32 %1, 0, !dbg !1115
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1117

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1118

if.end3:                                          ; preds = %if.end
  br label %while.cond, !dbg !1120

while.cond:                                       ; preds = %if.end10, %if.end3
  %2 = load i32, i32* %level, align 4, !dbg !1121
  %cmp = icmp ugt i32 %2, 0, !dbg !1122
  br i1 %cmp, label %while.body, label %while.end, !dbg !1120

while.body:                                       ; preds = %while.cond
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node.addr, align 8, !dbg !1123
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1125
  %call4 = call %struct.acpi_namespace_node* @acpi_ns_get_next_node(%struct.acpi_namespace_node* %3, %struct.acpi_namespace_node* %4) #6, !dbg !1126
  store %struct.acpi_namespace_node* %call4, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1127
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1128
  %tobool5 = icmp ne %struct.acpi_namespace_node* %5, null, !dbg !1128
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !1130

if.then6:                                         ; preds = %while.body
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1131
  call void @acpi_ns_detach_object(%struct.acpi_namespace_node* %6) #6, !dbg !1133
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1134
  %child = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %7, i32 0, i32 6, !dbg !1136
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child, align 8, !dbg !1136
  %tobool7 = icmp ne %struct.acpi_namespace_node* %8, null, !dbg !1134
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1137

if.then8:                                         ; preds = %if.then6
  %9 = load i32, i32* %level, align 4, !dbg !1138
  %inc = add i32 %9, 1, !dbg !1138
  store i32 %inc, i32* %level, align 4, !dbg !1138
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1140
  store %struct.acpi_namespace_node* %10, %struct.acpi_namespace_node** %parent_node.addr, align 8, !dbg !1141
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1142
  br label %if.end9, !dbg !1143

if.end9:                                          ; preds = %if.then8, %if.then6
  br label %if.end10, !dbg !1144

if.else:                                          ; preds = %while.body
  %11 = load i32, i32* %level, align 4, !dbg !1145
  %dec = add i32 %11, -1, !dbg !1145
  store i32 %dec, i32* %level, align 4, !dbg !1145
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node.addr, align 8, !dbg !1147
  call void @acpi_ns_delete_children(%struct.acpi_namespace_node* %12) #6, !dbg !1148
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node.addr, align 8, !dbg !1149
  store %struct.acpi_namespace_node* %13, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1150
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node.addr, align 8, !dbg !1151
  %parent = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %14, i32 0, i32 5, !dbg !1152
  %15 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent, align 8, !dbg !1152
  store %struct.acpi_namespace_node* %15, %struct.acpi_namespace_node** %parent_node.addr, align 8, !dbg !1153
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end9
  br label %while.cond, !dbg !1120, !llvm.loop !1154

while.end:                                        ; preds = %while.cond
  %call11 = call i32 @acpi_ut_release_mutex(i32 1) #6, !dbg !1156
  br label %return, !dbg !1157

return:                                           ; preds = %while.end, %if.then2, %if.then
  ret void, !dbg !1158
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_namespace_node* @acpi_ns_get_next_node(%struct.acpi_namespace_node*, %struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_release_mutex(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ns_delete_namespace_by_owner(i16 zeroext %owner_id) #0 !dbg !1159 {
entry:
  %owner_id.addr = alloca i16, align 2
  %child_node = alloca %struct.acpi_namespace_node*, align 8
  %deletion_node = alloca %struct.acpi_namespace_node*, align 8
  %parent_node = alloca %struct.acpi_namespace_node*, align 8
  %level = alloca i32, align 4
  %status = alloca i32, align 4
  store i16 %owner_id, i16* %owner_id.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %owner_id.addr, metadata !1162, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %child_node, metadata !1164, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %deletion_node, metadata !1166, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %parent_node, metadata !1168, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.declare(metadata i32* %level, metadata !1170, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1172, metadata !DIExpression()), !dbg !1173
  %0 = load i16, i16* %owner_id.addr, align 2, !dbg !1174
  %conv = zext i16 %0 to i32, !dbg !1174
  %cmp = icmp eq i32 %conv, 0, !dbg !1176
  br i1 %cmp, label %if.then, label %if.end, !dbg !1177

if.then:                                          ; preds = %entry
  br label %return, !dbg !1178

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #6, !dbg !1180
  store i32 %call, i32* %status, align 4, !dbg !1181
  %1 = load i32, i32* %status, align 4, !dbg !1182
  %tobool = icmp ne i32 %1, 0, !dbg !1182
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !1184

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1185

if.end3:                                          ; preds = %if.end
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %deletion_node, align 8, !dbg !1187
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !1188
  store %struct.acpi_namespace_node* %2, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1189
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1190
  store i32 1, i32* %level, align 4, !dbg !1191
  br label %while.cond, !dbg !1192

while.cond:                                       ; preds = %if.end41, %if.end3
  %3 = load i32, i32* %level, align 4, !dbg !1193
  %cmp4 = icmp ugt i32 %3, 0, !dbg !1194
  br i1 %cmp4, label %while.body, label %while.end, !dbg !1192

while.body:                                       ; preds = %while.cond
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1195
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1197
  %call6 = call %struct.acpi_namespace_node* @acpi_ns_get_next_node(%struct.acpi_namespace_node* %4, %struct.acpi_namespace_node* %5) #6, !dbg !1198
  store %struct.acpi_namespace_node* %call6, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1199
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %deletion_node, align 8, !dbg !1200
  %tobool7 = icmp ne %struct.acpi_namespace_node* %6, null, !dbg !1200
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1202

if.then8:                                         ; preds = %while.body
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %deletion_node, align 8, !dbg !1203
  call void @acpi_ns_delete_children(%struct.acpi_namespace_node* %7) #6, !dbg !1205
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %deletion_node, align 8, !dbg !1206
  call void @acpi_ns_remove_node(%struct.acpi_namespace_node* %8) #6, !dbg !1207
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %deletion_node, align 8, !dbg !1208
  br label %if.end9, !dbg !1209

if.end9:                                          ; preds = %if.then8, %while.body
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1210
  %tobool10 = icmp ne %struct.acpi_namespace_node* %9, null, !dbg !1210
  br i1 %tobool10, label %if.then11, label %if.else29, !dbg !1212

if.then11:                                        ; preds = %if.end9
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1213
  %owner_id12 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %10, i32 0, i32 8, !dbg !1216
  %11 = load i16, i16* %owner_id12, align 8, !dbg !1216
  %conv13 = zext i16 %11 to i32, !dbg !1213
  %12 = load i16, i16* %owner_id.addr, align 2, !dbg !1217
  %conv14 = zext i16 %12 to i32, !dbg !1217
  %cmp15 = icmp eq i32 %conv13, %conv14, !dbg !1218
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !1219

if.then17:                                        ; preds = %if.then11
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1220
  call void @acpi_ns_detach_object(%struct.acpi_namespace_node* %13) #6, !dbg !1222
  br label %if.end18, !dbg !1223

if.end18:                                         ; preds = %if.then17, %if.then11
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1224
  %child = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %14, i32 0, i32 6, !dbg !1226
  %15 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child, align 8, !dbg !1226
  %tobool19 = icmp ne %struct.acpi_namespace_node* %15, null, !dbg !1224
  br i1 %tobool19, label %if.then20, label %if.else, !dbg !1227

if.then20:                                        ; preds = %if.end18
  %16 = load i32, i32* %level, align 4, !dbg !1228
  %inc = add i32 %16, 1, !dbg !1228
  store i32 %inc, i32* %level, align 4, !dbg !1228
  %17 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1230
  store %struct.acpi_namespace_node* %17, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1231
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1232
  br label %if.end28, !dbg !1233

if.else:                                          ; preds = %if.end18
  %18 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1234
  %owner_id21 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %18, i32 0, i32 8, !dbg !1236
  %19 = load i16, i16* %owner_id21, align 8, !dbg !1236
  %conv22 = zext i16 %19 to i32, !dbg !1234
  %20 = load i16, i16* %owner_id.addr, align 2, !dbg !1237
  %conv23 = zext i16 %20 to i32, !dbg !1237
  %cmp24 = icmp eq i32 %conv22, %conv23, !dbg !1238
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !1239

if.then26:                                        ; preds = %if.else
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1240
  store %struct.acpi_namespace_node* %21, %struct.acpi_namespace_node** %deletion_node, align 8, !dbg !1242
  br label %if.end27, !dbg !1243

if.end27:                                         ; preds = %if.then26, %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then20
  br label %if.end41, !dbg !1244

if.else29:                                        ; preds = %if.end9
  %22 = load i32, i32* %level, align 4, !dbg !1245
  %dec = add i32 %22, -1, !dbg !1245
  store i32 %dec, i32* %level, align 4, !dbg !1245
  %23 = load i32, i32* %level, align 4, !dbg !1247
  %cmp30 = icmp ne i32 %23, 0, !dbg !1249
  br i1 %cmp30, label %if.then32, label %if.end40, !dbg !1250

if.then32:                                        ; preds = %if.else29
  %24 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1251
  %owner_id33 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %24, i32 0, i32 8, !dbg !1254
  %25 = load i16, i16* %owner_id33, align 8, !dbg !1254
  %conv34 = zext i16 %25 to i32, !dbg !1251
  %26 = load i16, i16* %owner_id.addr, align 2, !dbg !1255
  %conv35 = zext i16 %26 to i32, !dbg !1255
  %cmp36 = icmp eq i32 %conv34, %conv35, !dbg !1256
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !1257

if.then38:                                        ; preds = %if.then32
  %27 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1258
  store %struct.acpi_namespace_node* %27, %struct.acpi_namespace_node** %deletion_node, align 8, !dbg !1260
  br label %if.end39, !dbg !1261

if.end39:                                         ; preds = %if.then38, %if.then32
  br label %if.end40, !dbg !1262

if.end40:                                         ; preds = %if.end39, %if.else29
  %28 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1263
  store %struct.acpi_namespace_node* %28, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1264
  %29 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1265
  %parent = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %29, i32 0, i32 5, !dbg !1266
  %30 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent, align 8, !dbg !1266
  store %struct.acpi_namespace_node* %30, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1267
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end28
  br label %while.cond, !dbg !1192, !llvm.loop !1268

while.end:                                        ; preds = %while.cond
  %call42 = call i32 @acpi_ut_release_mutex(i32 1) #6, !dbg !1270
  br label %return, !dbg !1271

return:                                           ; preds = %while.end, %if.then2, %if.then
  ret void, !dbg !1272
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmem_cache_zalloc(%struct.kmem_cache* %k, i32 %flags) #0 !dbg !1273 {
entry:
  %k.addr = alloca %struct.kmem_cache*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %k, %struct.kmem_cache** %k.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %k.addr, metadata !1277, metadata !DIExpression()), !dbg !1278
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1279, metadata !DIExpression()), !dbg !1280
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** %k.addr, align 8, !dbg !1281
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1282
  %or = or i32 %1, 256, !dbg !1283
  %call = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %0, i32 %or) #6, !dbg !1284
  %ptrint = ptrtoint i8* %call to i64, !dbg !1284
  %maskedptr = and i64 %ptrint, 7, !dbg !1284
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !1284
  call void @llvm.assume(i1 %maskcond), !dbg !1284
  ret i8* %call, !dbg !1285
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1286 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1290, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1293, metadata !DIExpression()), !dbg !1292
  %0 = load i64, i64* %__edi, align 8, !dbg !1292
  store i64 %0, i64* %__edi, align 8, !dbg !1292
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1294, metadata !DIExpression()), !dbg !1292
  %1 = load i64, i64* %__esi, align 8, !dbg !1292
  store i64 %1, i64* %__esi, align 8, !dbg !1292
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1295, metadata !DIExpression()), !dbg !1292
  %2 = load i64, i64* %__edx, align 8, !dbg !1292
  store i64 %2, i64* %__edx, align 8, !dbg !1292
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1296, metadata !DIExpression()), !dbg !1292
  %3 = load i64, i64* %__ecx, align 8, !dbg !1292
  store i64 %3, i64* %__ecx, align 8, !dbg !1292
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1297, metadata !DIExpression()), !dbg !1292
  %4 = load i64, i64* %__eax, align 8, !dbg !1292
  store i64 %4, i64* %__eax, align 8, !dbg !1292
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1292
  %6 = call i64 @llvm.read_register.i64(metadata !798), !dbg !1298
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #5, !dbg !1298, !srcloc !1301
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1298
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1298
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1298
  call void @llvm.write_register.i64(metadata !798, i64 %asmresult1), !dbg !1298
  %8 = load i64, i64* %__eax, align 8, !dbg !1298
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1302, metadata !DIExpression()), !dbg !1304
  store i64 -1, i64* %__mask, align 8, !dbg !1304
  %9 = load i64, i64* %__mask, align 8, !dbg !1304
  store i64 %9, i64* %tmp, align 8, !dbg !1304
  %10 = load i64, i64* %tmp, align 8, !dbg !1304
  %and = and i64 %8, %10, !dbg !1298
  store i64 %and, i64* %__ret, align 8, !dbg !1298
  %11 = load i64, i64* %__ret, align 8, !dbg !1292
  store i64 %11, i64* %tmp2, align 8, !dbg !1305
  %12 = load i64, i64* %tmp2, align 8, !dbg !1292
  ret i64 %12, !dbg !1306
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #3

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!798}
!llvm.module.flags = !{!799, !800, !801, !802}
!llvm.ident = !{!803}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 13, type: !796, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !795, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsalloc.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !14, !16, !792, !794}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !8, line: 432, size: 1600, elements: !9)
!8 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!9 = !{!10, !21, !790, !791}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !7, file: !8, line: 433, baseType: !11, size: 128)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !8, line: 427, size: 128, elements: !12)
!12 = !{!13, !15}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !11, file: !8, line: 428, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !11, file: !8, line: 429, baseType: !16, size: 8, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !17, line: 17, baseType: !18)
!17 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !19, line: 21, baseType: !20)
!19 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !7, file: !8, line: 434, baseType: !22, size: 576)
!22 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !8, line: 367, size: 576, elements: !23)
!23 = !{!24, !36, !52, !67, !104, !118, !127, !441, !458, !473, !486, !564, !576, !590, !600, !618, !640, !659, !678, !697, !710, !736, !753, !766, !780, !789}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !22, file: !8, line: 368, baseType: !25, size: 128)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !8, line: 73, size: 128, elements: !26)
!26 = !{!27, !29, !30, !31, !35}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !25, file: !8, line: 74, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !25, file: !8, line: 74, baseType: !16, size: 8, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !25, file: !8, line: 74, baseType: !16, size: 8, offset: 72)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !25, file: !8, line: 74, baseType: !32, size: 16, offset: 80)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !17, line: 19, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !19, line: 24, baseType: !34)
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !25, file: !8, line: 74, baseType: !16, size: 8, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !22, file: !8, line: 369, baseType: !37, size: 192)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !8, line: 76, size: 192, elements: !38)
!38 = !{!39, !40, !41, !42, !43, !44, !48}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !37, file: !8, line: 77, baseType: !28, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !37, file: !8, line: 77, baseType: !16, size: 8, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !37, file: !8, line: 77, baseType: !16, size: 8, offset: 72)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !37, file: !8, line: 77, baseType: !32, size: 16, offset: 80)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !37, file: !8, line: 77, baseType: !16, size: 8, offset: 96)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !37, file: !8, line: 77, baseType: !45, size: 24, offset: 104)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 24, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 3)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !37, file: !8, line: 78, baseType: !49, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !17, line: 23, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !19, line: 31, baseType: !51)
!51 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !22, file: !8, line: 370, baseType: !53, size: 256)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !8, line: 93, size: 256, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !63}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !53, file: !8, line: 94, baseType: !28, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !53, file: !8, line: 94, baseType: !16, size: 8, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !53, file: !8, line: 94, baseType: !16, size: 8, offset: 72)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !53, file: !8, line: 94, baseType: !32, size: 16, offset: 80)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !53, file: !8, line: 94, baseType: !16, size: 8, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !53, file: !8, line: 94, baseType: !61, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !53, file: !8, line: 94, baseType: !64, size: 32, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !17, line: 21, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !19, line: 27, baseType: !66)
!66 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !22, file: !8, line: 371, baseType: !68, size: 384)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !8, line: 97, size: 384, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !75, !77, !78, !79, !80}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !68, file: !8, line: 98, baseType: !28, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !68, file: !8, line: 98, baseType: !16, size: 8, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !8, line: 98, baseType: !16, size: 8, offset: 72)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !68, file: !8, line: 98, baseType: !32, size: 16, offset: 80)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !68, file: !8, line: 98, baseType: !16, size: 8, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !68, file: !8, line: 98, baseType: !76, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !68, file: !8, line: 98, baseType: !64, size: 32, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !68, file: !8, line: 99, baseType: !64, size: 32, offset: 224)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !68, file: !8, line: 100, baseType: !76, size: 64, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !68, file: !8, line: 101, baseType: !81, size: 64, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !83, line: 133, size: 384, elements: !84)
!83 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!84 = !{!85, !86, !87, !88, !89, !98, !99, !100, !101}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !82, file: !83, line: 134, baseType: !28, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !82, file: !83, line: 135, baseType: !16, size: 8, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !83, line: 136, baseType: !16, size: 8, offset: 72)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !82, file: !83, line: 137, baseType: !32, size: 16, offset: 80)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !82, file: !83, line: 138, baseType: !90, size: 32, offset: 96)
!90 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !91, line: 327, size: 32, elements: !92)
!91 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!92 = !{!93, !94}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !90, file: !91, line: 328, baseType: !64, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !90, file: !91, line: 329, baseType: !95, size: 32)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 32, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 4)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !82, file: !83, line: 139, baseType: !81, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !82, file: !83, line: 140, baseType: !81, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !82, file: !83, line: 141, baseType: !81, size: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !82, file: !83, line: 142, baseType: !102, size: 16, offset: 320)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !103, line: 445, baseType: !32)
!103 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!104 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !22, file: !8, line: 372, baseType: !105, size: 384)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !8, line: 104, size: 384, elements: !106)
!106 = !{!107, !108, !109, !110, !111, !112, !113, !115, !116, !117}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !105, file: !8, line: 105, baseType: !28, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !105, file: !8, line: 105, baseType: !16, size: 8, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !105, file: !8, line: 105, baseType: !16, size: 8, offset: 72)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !105, file: !8, line: 105, baseType: !32, size: 16, offset: 80)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !8, line: 105, baseType: !16, size: 8, offset: 96)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !105, file: !8, line: 105, baseType: !81, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !105, file: !8, line: 106, baseType: !114, size: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !105, file: !8, line: 107, baseType: !76, size: 64, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !105, file: !8, line: 108, baseType: !64, size: 32, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !105, file: !8, line: 109, baseType: !64, size: 32, offset: 352)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !22, file: !8, line: 373, baseType: !119, size: 192)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !8, line: 118, size: 192, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !119, file: !8, line: 119, baseType: !28, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !119, file: !8, line: 119, baseType: !16, size: 8, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !8, line: 119, baseType: !16, size: 8, offset: 72)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !119, file: !8, line: 119, baseType: !32, size: 16, offset: 80)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !8, line: 119, baseType: !16, size: 8, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !119, file: !8, line: 119, baseType: !14, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !22, file: !8, line: 374, baseType: !128, size: 448)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !8, line: 143, size: 448, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !438, !439, !440}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !128, file: !8, line: 144, baseType: !28, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !128, file: !8, line: 144, baseType: !16, size: 8, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !128, file: !8, line: 144, baseType: !16, size: 8, offset: 72)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !128, file: !8, line: 144, baseType: !32, size: 16, offset: 80)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !128, file: !8, line: 144, baseType: !16, size: 8, offset: 96)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !128, file: !8, line: 144, baseType: !16, size: 8, offset: 104)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !128, file: !8, line: 145, baseType: !16, size: 8, offset: 112)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !128, file: !8, line: 146, baseType: !16, size: 8, offset: 120)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !128, file: !8, line: 147, baseType: !28, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !128, file: !8, line: 148, baseType: !28, size: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !128, file: !8, line: 149, baseType: !76, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !128, file: !8, line: 153, baseType: !142, size: 64, offset: 320)
!142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !128, file: !8, line: 150, size: 64, elements: !143)
!143 = !{!144, !437}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !142, file: !8, line: 151, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !83, line: 248, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!149, !150}
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !103, line: 421, baseType: !64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !152, line: 37, size: 9024, elements: !153)
!152 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !383, !384, !385, !386, !387, !391, !393, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !420, !421, !422, !423, !424, !425, !426, !427, !429, !435}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !151, file: !152, line: 38, baseType: !150, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !151, file: !152, line: 39, baseType: !16, size: 8, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !151, file: !152, line: 40, baseType: !16, size: 8, offset: 72)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !151, file: !152, line: 41, baseType: !32, size: 16, offset: 80)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !151, file: !152, line: 42, baseType: !16, size: 8, offset: 96)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !151, file: !152, line: 43, baseType: !16, size: 8, offset: 104)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !151, file: !152, line: 44, baseType: !16, size: 8, offset: 112)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !151, file: !152, line: 45, baseType: !102, size: 16, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !151, file: !152, line: 46, baseType: !16, size: 8, offset: 144)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !151, file: !152, line: 47, baseType: !16, size: 8, offset: 152)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !151, file: !152, line: 48, baseType: !16, size: 8, offset: 160)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !151, file: !152, line: 49, baseType: !16, size: 8, offset: 168)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !151, file: !152, line: 50, baseType: !16, size: 8, offset: 176)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !151, file: !152, line: 51, baseType: !16, size: 8, offset: 184)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !151, file: !152, line: 52, baseType: !16, size: 8, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !151, file: !152, line: 53, baseType: !16, size: 8, offset: 200)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !151, file: !152, line: 54, baseType: !76, size: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !151, file: !152, line: 55, baseType: !64, size: 32, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !151, file: !152, line: 56, baseType: !64, size: 32, offset: 352)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !151, file: !152, line: 57, baseType: !64, size: 32, offset: 384)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !151, file: !152, line: 58, baseType: !64, size: 32, offset: 416)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !151, file: !152, line: 60, baseType: !176, size: 640, offset: 448)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !83, line: 893, size: 640, elements: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !264, !265, !381, !382}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !176, file: !83, line: 894, baseType: !76, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !176, file: !83, line: 895, baseType: !76, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !176, file: !83, line: 896, baseType: !76, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !176, file: !83, line: 897, baseType: !76, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !176, file: !83, line: 898, baseType: !76, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !176, file: !83, line: 899, baseType: !184, size: 64, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !83, line: 875, size: 1600, elements: !186)
!186 = !{!187, !207, !223}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !185, file: !83, line: 876, baseType: !188, size: 448)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !83, line: 828, size: 448, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !206}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !188, file: !83, line: 829, baseType: !184, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !188, file: !83, line: 829, baseType: !16, size: 8, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !188, file: !83, line: 829, baseType: !16, size: 8, offset: 72)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !188, file: !83, line: 829, baseType: !32, size: 16, offset: 80)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !188, file: !83, line: 829, baseType: !76, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !83, line: 829, baseType: !184, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !188, file: !83, line: 829, baseType: !81, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !188, file: !83, line: 829, baseType: !198, size: 64, offset: 320)
!198 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !83, line: 716, size: 64, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !198, file: !83, line: 717, baseType: !49, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !198, file: !83, line: 718, baseType: !64, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !198, file: !83, line: 719, baseType: !61, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !198, file: !83, line: 720, baseType: !76, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !198, file: !83, line: 721, baseType: !61, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !198, file: !83, line: 722, baseType: !184, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !188, file: !83, line: 829, baseType: !16, size: 8, offset: 384)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !185, file: !83, line: 877, baseType: !208, size: 640)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !83, line: 835, size: 640, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !208, file: !83, line: 836, baseType: !184, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !208, file: !83, line: 836, baseType: !16, size: 8, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !208, file: !83, line: 836, baseType: !16, size: 8, offset: 72)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !208, file: !83, line: 836, baseType: !32, size: 16, offset: 80)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !208, file: !83, line: 836, baseType: !76, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !83, line: 836, baseType: !184, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !208, file: !83, line: 836, baseType: !81, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !208, file: !83, line: 836, baseType: !198, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !208, file: !83, line: 836, baseType: !16, size: 8, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !208, file: !83, line: 836, baseType: !61, size: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !208, file: !83, line: 837, baseType: !76, size: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !208, file: !83, line: 838, baseType: !64, size: 32, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !83, line: 839, baseType: !64, size: 32, offset: 608)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !185, file: !83, line: 878, baseType: !224, size: 1600)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !83, line: 846, size: 1600, elements: !225)
!225 = !{!226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !224, file: !83, line: 847, baseType: !184, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !224, file: !83, line: 847, baseType: !16, size: 8, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !224, file: !83, line: 847, baseType: !16, size: 8, offset: 72)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !224, file: !83, line: 847, baseType: !32, size: 16, offset: 80)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !224, file: !83, line: 847, baseType: !76, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !224, file: !83, line: 847, baseType: !184, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !224, file: !83, line: 847, baseType: !81, size: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !224, file: !83, line: 847, baseType: !198, size: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !224, file: !83, line: 847, baseType: !16, size: 8, offset: 384)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !224, file: !83, line: 847, baseType: !184, size: 64, offset: 448)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !224, file: !83, line: 848, baseType: !184, size: 64, offset: 512)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !224, file: !83, line: 849, baseType: !61, size: 64, offset: 576)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !224, file: !83, line: 850, baseType: !16, size: 8, offset: 640)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !224, file: !83, line: 851, baseType: !61, size: 64, offset: 704)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !224, file: !83, line: 852, baseType: !61, size: 64, offset: 768)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !224, file: !83, line: 853, baseType: !61, size: 64, offset: 832)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !224, file: !83, line: 854, baseType: !95, size: 32, offset: 896)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !224, file: !83, line: 855, baseType: !64, size: 32, offset: 928)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !224, file: !83, line: 856, baseType: !64, size: 32, offset: 960)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !224, file: !83, line: 857, baseType: !64, size: 32, offset: 992)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !224, file: !83, line: 858, baseType: !64, size: 32, offset: 1024)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !224, file: !83, line: 859, baseType: !64, size: 32, offset: 1056)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !224, file: !83, line: 860, baseType: !64, size: 32, offset: 1088)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !224, file: !83, line: 861, baseType: !64, size: 32, offset: 1120)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !224, file: !83, line: 862, baseType: !64, size: 32, offset: 1152)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !224, file: !83, line: 863, baseType: !64, size: 32, offset: 1184)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !224, file: !83, line: 864, baseType: !64, size: 32, offset: 1216)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !224, file: !83, line: 865, baseType: !64, size: 32, offset: 1248)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !224, file: !83, line: 866, baseType: !64, size: 32, offset: 1280)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !224, file: !83, line: 867, baseType: !64, size: 32, offset: 1312)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !224, file: !83, line: 868, baseType: !32, size: 16, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !224, file: !83, line: 869, baseType: !16, size: 8, offset: 1360)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !224, file: !83, line: 870, baseType: !16, size: 8, offset: 1368)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !224, file: !83, line: 871, baseType: !16, size: 8, offset: 1376)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !224, file: !83, line: 872, baseType: !261, size: 160, offset: 1384)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 160, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 20)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !176, file: !83, line: 900, baseType: !81, size: 64, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !176, file: !83, line: 901, baseType: !266, size: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !83, line: 663, size: 640, elements: !268)
!268 = !{!269, !277, !290, !299, !308, !321, !335, !347, !359}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !267, file: !83, line: 664, baseType: !270, size: 128)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !83, line: 567, size: 128, elements: !271)
!271 = !{!272, !273, !274, !275, !276}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !270, file: !83, line: 568, baseType: !14, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !270, file: !83, line: 568, baseType: !16, size: 8, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !270, file: !83, line: 568, baseType: !16, size: 8, offset: 72)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !270, file: !83, line: 568, baseType: !32, size: 16, offset: 80)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !270, file: !83, line: 568, baseType: !32, size: 16, offset: 96)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !267, file: !83, line: 665, baseType: !278, size: 384)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !83, line: 593, size: 384, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !83, line: 594, baseType: !14, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !278, file: !83, line: 594, baseType: !16, size: 8, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !83, line: 594, baseType: !16, size: 8, offset: 72)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !278, file: !83, line: 594, baseType: !32, size: 16, offset: 80)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !278, file: !83, line: 594, baseType: !32, size: 16, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !278, file: !83, line: 594, baseType: !32, size: 16, offset: 112)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !278, file: !83, line: 595, baseType: !184, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !278, file: !83, line: 596, baseType: !76, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !278, file: !83, line: 597, baseType: !76, size: 64, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !278, file: !83, line: 598, baseType: !49, size: 64, offset: 320)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !267, file: !83, line: 666, baseType: !291, size: 192)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !83, line: 573, size: 192, elements: !292)
!292 = !{!293, !294, !295, !296, !297, !298}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !291, file: !83, line: 574, baseType: !14, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !291, file: !83, line: 574, baseType: !16, size: 8, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !291, file: !83, line: 574, baseType: !16, size: 8, offset: 72)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !291, file: !83, line: 574, baseType: !32, size: 16, offset: 80)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !291, file: !83, line: 574, baseType: !32, size: 16, offset: 96)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !291, file: !83, line: 574, baseType: !28, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !267, file: !83, line: 667, baseType: !300, size: 192)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !83, line: 604, size: 192, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !83, line: 605, baseType: !14, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !300, file: !83, line: 605, baseType: !16, size: 8, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !83, line: 605, baseType: !16, size: 8, offset: 72)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !300, file: !83, line: 605, baseType: !32, size: 16, offset: 80)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !300, file: !83, line: 605, baseType: !32, size: 16, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !300, file: !83, line: 605, baseType: !81, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !267, file: !83, line: 668, baseType: !309, size: 448)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !83, line: 608, size: 448, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319, !320}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !83, line: 609, baseType: !14, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !309, file: !83, line: 609, baseType: !16, size: 8, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !83, line: 609, baseType: !16, size: 8, offset: 72)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !309, file: !83, line: 609, baseType: !32, size: 16, offset: 80)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !309, file: !83, line: 609, baseType: !32, size: 16, offset: 96)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !309, file: !83, line: 609, baseType: !64, size: 32, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !309, file: !83, line: 610, baseType: !184, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !309, file: !83, line: 611, baseType: !76, size: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !309, file: !83, line: 612, baseType: !76, size: 64, offset: 320)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !309, file: !83, line: 613, baseType: !64, size: 32, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !267, file: !83, line: 669, baseType: !322, size: 512)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !83, line: 580, size: 512, elements: !323)
!323 = !{!324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !322, file: !83, line: 581, baseType: !14, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !322, file: !83, line: 581, baseType: !16, size: 8, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !322, file: !83, line: 581, baseType: !16, size: 8, offset: 72)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !322, file: !83, line: 581, baseType: !32, size: 16, offset: 80)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !322, file: !83, line: 581, baseType: !32, size: 16, offset: 96)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !322, file: !83, line: 581, baseType: !64, size: 32, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !322, file: !83, line: 582, baseType: !28, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !322, file: !83, line: 583, baseType: !28, size: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !322, file: !83, line: 584, baseType: !150, size: 64, offset: 320)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !322, file: !83, line: 585, baseType: !14, size: 64, offset: 384)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !322, file: !83, line: 586, baseType: !64, size: 32, offset: 448)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !267, file: !83, line: 670, baseType: !336, size: 320)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !83, line: 620, size: 320, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !336, file: !83, line: 621, baseType: !14, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !336, file: !83, line: 621, baseType: !16, size: 8, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !83, line: 621, baseType: !16, size: 8, offset: 72)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !336, file: !83, line: 621, baseType: !32, size: 16, offset: 80)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !336, file: !83, line: 621, baseType: !32, size: 16, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !336, file: !83, line: 621, baseType: !16, size: 8, offset: 112)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !336, file: !83, line: 622, baseType: !150, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !336, file: !83, line: 623, baseType: !28, size: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !336, file: !83, line: 624, baseType: !49, size: 64, offset: 256)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !267, file: !83, line: 671, baseType: !348, size: 640)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !83, line: 631, size: 640, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !355}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !348, file: !83, line: 632, baseType: !14, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !348, file: !83, line: 632, baseType: !16, size: 8, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !83, line: 632, baseType: !16, size: 8, offset: 72)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !348, file: !83, line: 632, baseType: !32, size: 16, offset: 80)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !348, file: !83, line: 632, baseType: !32, size: 16, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !348, file: !83, line: 633, baseType: !356, size: 512, offset: 128)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 512, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 8)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !267, file: !83, line: 672, baseType: !360, size: 320)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !83, line: 654, size: 320, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !83, line: 655, baseType: !14, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !360, file: !83, line: 655, baseType: !16, size: 8, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !360, file: !83, line: 655, baseType: !16, size: 8, offset: 72)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !360, file: !83, line: 655, baseType: !32, size: 16, offset: 80)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !360, file: !83, line: 655, baseType: !32, size: 16, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !360, file: !83, line: 655, baseType: !16, size: 8, offset: 112)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !360, file: !83, line: 656, baseType: !81, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !360, file: !83, line: 657, baseType: !28, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !360, file: !83, line: 658, baseType: !371, size: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !83, line: 645, size: 128, elements: !373)
!373 = !{!374, !380}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !372, file: !83, line: 646, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !103, line: 1052, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379, !64, !14}
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !103, line: 424, baseType: !14)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !372, file: !83, line: 647, baseType: !14, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !176, file: !83, line: 902, baseType: !184, size: 64, offset: 512)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !176, file: !83, line: 903, baseType: !64, size: 32, offset: 576)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !151, file: !152, line: 61, baseType: !64, size: 32, offset: 1088)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !151, file: !152, line: 62, baseType: !64, size: 32, offset: 1120)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !151, file: !152, line: 63, baseType: !32, size: 16, offset: 1152)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !151, file: !152, line: 64, baseType: !16, size: 8, offset: 1168)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !151, file: !152, line: 66, baseType: !388, size: 2688, offset: 1216)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 2688, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 7)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !151, file: !152, line: 67, baseType: !392, size: 3072, offset: 3904)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 3072, elements: !357)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !151, file: !152, line: 68, baseType: !394, size: 576, offset: 6976)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 576, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 9)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !151, file: !152, line: 69, baseType: !114, size: 64, offset: 7552)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !151, file: !152, line: 71, baseType: !76, size: 64, offset: 7616)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !151, file: !152, line: 72, baseType: !114, size: 64, offset: 7680)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !151, file: !152, line: 73, baseType: !266, size: 64, offset: 7744)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !151, file: !152, line: 74, baseType: !81, size: 64, offset: 7808)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !151, file: !152, line: 75, baseType: !28, size: 64, offset: 7872)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !151, file: !152, line: 76, baseType: !81, size: 64, offset: 7936)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !151, file: !152, line: 77, baseType: !184, size: 64, offset: 8000)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !151, file: !152, line: 78, baseType: !28, size: 64, offset: 8064)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !151, file: !152, line: 79, baseType: !81, size: 64, offset: 8128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !151, file: !152, line: 80, baseType: !61, size: 64, offset: 8192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !151, file: !152, line: 81, baseType: !184, size: 64, offset: 8256)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !151, file: !152, line: 82, baseType: !410, size: 64, offset: 8320)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !83, line: 702, size: 128, elements: !413)
!413 = !{!414, !415, !416, !417, !418, !419}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !412, file: !83, line: 706, baseType: !64, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !412, file: !83, line: 707, baseType: !64, size: 32, offset: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !412, file: !83, line: 708, baseType: !32, size: 16, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !412, file: !83, line: 709, baseType: !16, size: 8, offset: 80)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !412, file: !83, line: 710, baseType: !16, size: 8, offset: 88)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !412, file: !83, line: 711, baseType: !16, size: 8, offset: 96)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !151, file: !152, line: 83, baseType: !184, size: 64, offset: 8384)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !151, file: !152, line: 84, baseType: !28, size: 64, offset: 8448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !151, file: !152, line: 85, baseType: !266, size: 64, offset: 8512)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !151, file: !152, line: 86, baseType: !28, size: 64, offset: 8576)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !151, file: !152, line: 87, baseType: !266, size: 64, offset: 8640)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !151, file: !152, line: 88, baseType: !184, size: 64, offset: 8704)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !151, file: !152, line: 89, baseType: !184, size: 64, offset: 8768)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !151, file: !152, line: 90, baseType: !428, size: 64, offset: 8832)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !151, file: !152, line: 91, baseType: !430, size: 64, offset: 8896)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !83, line: 637, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!149, !150, !434}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !151, file: !152, line: 92, baseType: !436, size: 64, offset: 8960)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !83, line: 641, baseType: !146)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !142, file: !8, line: 152, baseType: !28, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !128, file: !8, line: 155, baseType: !64, size: 32, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !128, file: !8, line: 156, baseType: !102, size: 16, offset: 416)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !128, file: !8, line: 157, baseType: !16, size: 8, offset: 432)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !22, file: !8, line: 375, baseType: !442, size: 576)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !8, line: 122, size: 576, elements: !443)
!443 = !{!444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !442, file: !8, line: 123, baseType: !28, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !442, file: !8, line: 123, baseType: !16, size: 8, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !442, file: !8, line: 123, baseType: !16, size: 8, offset: 72)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !442, file: !8, line: 123, baseType: !32, size: 16, offset: 80)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !442, file: !8, line: 123, baseType: !16, size: 8, offset: 96)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !442, file: !8, line: 123, baseType: !16, size: 8, offset: 104)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !442, file: !8, line: 124, baseType: !32, size: 16, offset: 112)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !442, file: !8, line: 125, baseType: !14, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !442, file: !8, line: 126, baseType: !49, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !442, file: !8, line: 127, baseType: !428, size: 64, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !442, file: !8, line: 128, baseType: !28, size: 64, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !442, file: !8, line: 129, baseType: !28, size: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !442, file: !8, line: 130, baseType: !81, size: 64, offset: 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !442, file: !8, line: 131, baseType: !16, size: 8, offset: 512)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !22, file: !8, line: 376, baseType: !459, size: 448)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !8, line: 134, size: 448, elements: !460)
!460 = !{!461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !472}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !459, file: !8, line: 135, baseType: !28, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !459, file: !8, line: 135, baseType: !16, size: 8, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !459, file: !8, line: 135, baseType: !16, size: 8, offset: 72)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !459, file: !8, line: 135, baseType: !32, size: 16, offset: 80)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !459, file: !8, line: 135, baseType: !16, size: 8, offset: 96)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !459, file: !8, line: 135, baseType: !16, size: 8, offset: 104)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !459, file: !8, line: 136, baseType: !81, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !459, file: !8, line: 137, baseType: !28, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !459, file: !8, line: 138, baseType: !28, size: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !459, file: !8, line: 139, baseType: !471, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !103, line: 129, baseType: !49)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !459, file: !8, line: 140, baseType: !64, size: 32, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !22, file: !8, line: 377, baseType: !474, size: 320)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !8, line: 184, size: 320, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !481, !485}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !474, file: !8, line: 185, baseType: !28, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !474, file: !8, line: 185, baseType: !16, size: 8, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !474, file: !8, line: 185, baseType: !16, size: 8, offset: 72)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !474, file: !8, line: 185, baseType: !32, size: 16, offset: 80)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !474, file: !8, line: 185, baseType: !16, size: 8, offset: 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !474, file: !8, line: 185, baseType: !482, size: 128, offset: 128)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 128, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 2)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !474, file: !8, line: 185, baseType: !28, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !22, file: !8, line: 378, baseType: !487, size: 384)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !8, line: 187, size: 384, elements: !488)
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !487, file: !8, line: 188, baseType: !28, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !487, file: !8, line: 188, baseType: !16, size: 8, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !487, file: !8, line: 188, baseType: !16, size: 8, offset: 72)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !487, file: !8, line: 188, baseType: !32, size: 16, offset: 80)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !487, file: !8, line: 188, baseType: !16, size: 8, offset: 96)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !487, file: !8, line: 189, baseType: !482, size: 128, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !487, file: !8, line: 189, baseType: !28, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !487, file: !8, line: 189, baseType: !497, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !83, line: 480, size: 576, elements: !499)
!499 = !{!500, !501, !502, !503, !511, !526, !558, !559, !560, !561, !562, !563}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !498, file: !83, line: 481, baseType: !81, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !498, file: !83, line: 482, baseType: !497, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !498, file: !83, line: 483, baseType: !497, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !498, file: !83, line: 484, baseType: !504, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !83, line: 497, size: 256, elements: !506)
!506 = !{!507, !508, !509, !510}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !505, file: !83, line: 498, baseType: !504, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !505, file: !83, line: 499, baseType: !504, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !505, file: !83, line: 500, baseType: !497, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !505, file: !83, line: 501, baseType: !64, size: 32, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !498, file: !83, line: 485, baseType: !512, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !83, line: 466, size: 320, elements: !514)
!514 = !{!515, !520, !521, !522, !523, !524, !525}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !513, file: !83, line: 467, baseType: !516, size: 128)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !83, line: 459, size: 128, elements: !517)
!517 = !{!518, !519}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !516, file: !83, line: 460, baseType: !16, size: 8)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !516, file: !83, line: 461, baseType: !49, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !513, file: !83, line: 468, baseType: !516, size: 128, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !513, file: !83, line: 469, baseType: !32, size: 16, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !513, file: !83, line: 470, baseType: !16, size: 8, offset: 272)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !513, file: !83, line: 471, baseType: !16, size: 8, offset: 280)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !513, file: !83, line: 472, baseType: !16, size: 8, offset: 288)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !513, file: !83, line: 473, baseType: !16, size: 8, offset: 296)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !498, file: !83, line: 486, baseType: !527, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !83, line: 448, size: 192, elements: !529)
!529 = !{!530, !553, !554, !555, !556, !557}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !528, file: !83, line: 449, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !83, line: 438, size: 64, elements: !532)
!532 = !{!533, !534, !547}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !531, file: !83, line: 439, baseType: !81, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !531, file: !83, line: 440, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !83, line: 419, size: 256, elements: !537)
!537 = !{!538, !543, !544, !545, !546}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !536, file: !83, line: 420, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !103, line: 1049, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!64, !379, !64, !14}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !536, file: !83, line: 421, baseType: !14, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !536, file: !83, line: 422, baseType: !81, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !536, file: !83, line: 423, baseType: !16, size: 8, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !536, file: !83, line: 424, baseType: !16, size: 8, offset: 200)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !531, file: !83, line: 441, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !83, line: 429, size: 128, elements: !550)
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !549, file: !83, line: 430, baseType: !81, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !549, file: !83, line: 431, baseType: !548, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !528, file: !83, line: 450, baseType: !512, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !528, file: !83, line: 451, baseType: !16, size: 8, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !528, file: !83, line: 452, baseType: !16, size: 8, offset: 136)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !528, file: !83, line: 453, baseType: !16, size: 8, offset: 144)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !528, file: !83, line: 454, baseType: !16, size: 8, offset: 152)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !498, file: !83, line: 487, baseType: !49, size: 64, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !498, file: !83, line: 488, baseType: !64, size: 32, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !498, file: !83, line: 489, baseType: !32, size: 16, offset: 480)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !498, file: !83, line: 490, baseType: !32, size: 16, offset: 496)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !498, file: !83, line: 491, baseType: !16, size: 8, offset: 512)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !498, file: !83, line: 492, baseType: !16, size: 8, offset: 520)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !22, file: !8, line: 379, baseType: !565, size: 384)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !8, line: 192, size: 384, elements: !566)
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574, !575}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !565, file: !8, line: 193, baseType: !28, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !565, file: !8, line: 193, baseType: !16, size: 8, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !565, file: !8, line: 193, baseType: !16, size: 8, offset: 72)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !565, file: !8, line: 193, baseType: !32, size: 16, offset: 80)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !565, file: !8, line: 193, baseType: !16, size: 8, offset: 96)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !565, file: !8, line: 193, baseType: !482, size: 128, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !565, file: !8, line: 193, baseType: !28, size: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !565, file: !8, line: 193, baseType: !64, size: 32, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !565, file: !8, line: 194, baseType: !64, size: 32, offset: 352)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !22, file: !8, line: 380, baseType: !577, size: 384)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !8, line: 197, size: 384, elements: !578)
!578 = !{!579, !580, !581, !582, !583, !584, !585, !586, !587, !588}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !577, file: !8, line: 198, baseType: !28, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !577, file: !8, line: 198, baseType: !16, size: 8, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !577, file: !8, line: 198, baseType: !16, size: 8, offset: 72)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !577, file: !8, line: 198, baseType: !32, size: 16, offset: 80)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !577, file: !8, line: 198, baseType: !16, size: 8, offset: 96)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !577, file: !8, line: 200, baseType: !16, size: 8, offset: 104)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !577, file: !8, line: 201, baseType: !16, size: 8, offset: 112)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !577, file: !8, line: 202, baseType: !482, size: 128, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !577, file: !8, line: 202, baseType: !28, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !577, file: !8, line: 202, baseType: !589, size: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !103, line: 128, baseType: !49)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !22, file: !8, line: 381, baseType: !591, size: 320)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !8, line: 205, size: 320, elements: !592)
!592 = !{!593, !594, !595, !596, !597, !598, !599}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !591, file: !8, line: 206, baseType: !28, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !591, file: !8, line: 206, baseType: !16, size: 8, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !591, file: !8, line: 206, baseType: !16, size: 8, offset: 72)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !591, file: !8, line: 206, baseType: !32, size: 16, offset: 80)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !591, file: !8, line: 206, baseType: !16, size: 8, offset: 96)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !591, file: !8, line: 206, baseType: !482, size: 128, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !591, file: !8, line: 206, baseType: !28, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !22, file: !8, line: 382, baseType: !601, size: 384)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !8, line: 233, size: 384, elements: !602)
!602 = !{!603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !601, file: !8, line: 234, baseType: !28, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !601, file: !8, line: 234, baseType: !16, size: 8, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !601, file: !8, line: 234, baseType: !16, size: 8, offset: 72)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !601, file: !8, line: 234, baseType: !32, size: 16, offset: 80)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !601, file: !8, line: 234, baseType: !16, size: 8, offset: 96)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !601, file: !8, line: 234, baseType: !16, size: 8, offset: 104)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !601, file: !8, line: 234, baseType: !16, size: 8, offset: 112)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !601, file: !8, line: 234, baseType: !16, size: 8, offset: 120)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !601, file: !8, line: 234, baseType: !81, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !601, file: !8, line: 234, baseType: !64, size: 32, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !601, file: !8, line: 234, baseType: !64, size: 32, offset: 224)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !601, file: !8, line: 234, baseType: !64, size: 32, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !601, file: !8, line: 234, baseType: !16, size: 8, offset: 288)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !601, file: !8, line: 234, baseType: !16, size: 8, offset: 296)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !601, file: !8, line: 234, baseType: !28, size: 64, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !22, file: !8, line: 383, baseType: !619, size: 576)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !8, line: 237, size: 576, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !619, file: !8, line: 238, baseType: !28, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !619, file: !8, line: 238, baseType: !16, size: 8, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !619, file: !8, line: 238, baseType: !16, size: 8, offset: 72)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !619, file: !8, line: 238, baseType: !32, size: 16, offset: 80)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !619, file: !8, line: 238, baseType: !16, size: 8, offset: 96)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !619, file: !8, line: 238, baseType: !16, size: 8, offset: 104)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !619, file: !8, line: 238, baseType: !16, size: 8, offset: 112)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !619, file: !8, line: 238, baseType: !16, size: 8, offset: 120)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !619, file: !8, line: 238, baseType: !81, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !619, file: !8, line: 238, baseType: !64, size: 32, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !619, file: !8, line: 238, baseType: !64, size: 32, offset: 224)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !619, file: !8, line: 238, baseType: !64, size: 32, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !619, file: !8, line: 238, baseType: !16, size: 8, offset: 288)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !619, file: !8, line: 238, baseType: !16, size: 8, offset: 296)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !619, file: !8, line: 238, baseType: !32, size: 16, offset: 304)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !619, file: !8, line: 239, baseType: !28, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !619, file: !8, line: 240, baseType: !76, size: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !619, file: !8, line: 241, baseType: !32, size: 16, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !619, file: !8, line: 242, baseType: !76, size: 64, offset: 512)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !22, file: !8, line: 384, baseType: !641, size: 384)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !8, line: 262, size: 384, elements: !642)
!642 = !{!643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !641, file: !8, line: 263, baseType: !28, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !641, file: !8, line: 263, baseType: !16, size: 8, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !641, file: !8, line: 263, baseType: !16, size: 8, offset: 72)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !641, file: !8, line: 263, baseType: !32, size: 16, offset: 80)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !641, file: !8, line: 263, baseType: !16, size: 8, offset: 96)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !641, file: !8, line: 263, baseType: !16, size: 8, offset: 104)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !641, file: !8, line: 263, baseType: !16, size: 8, offset: 112)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !641, file: !8, line: 263, baseType: !16, size: 8, offset: 120)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !641, file: !8, line: 263, baseType: !81, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !641, file: !8, line: 263, baseType: !64, size: 32, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !641, file: !8, line: 263, baseType: !64, size: 32, offset: 224)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !641, file: !8, line: 263, baseType: !64, size: 32, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !641, file: !8, line: 263, baseType: !16, size: 8, offset: 288)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !641, file: !8, line: 263, baseType: !16, size: 8, offset: 296)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !641, file: !8, line: 263, baseType: !16, size: 8, offset: 304)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !641, file: !8, line: 264, baseType: !28, size: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !22, file: !8, line: 385, baseType: !660, size: 448)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !8, line: 245, size: 448, elements: !661)
!661 = !{!662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !660, file: !8, line: 246, baseType: !28, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !660, file: !8, line: 246, baseType: !16, size: 8, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !660, file: !8, line: 246, baseType: !16, size: 8, offset: 72)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !660, file: !8, line: 246, baseType: !32, size: 16, offset: 80)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !660, file: !8, line: 246, baseType: !16, size: 8, offset: 96)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !660, file: !8, line: 246, baseType: !16, size: 8, offset: 104)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !660, file: !8, line: 246, baseType: !16, size: 8, offset: 112)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !660, file: !8, line: 246, baseType: !16, size: 8, offset: 120)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !660, file: !8, line: 246, baseType: !81, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !660, file: !8, line: 246, baseType: !64, size: 32, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !660, file: !8, line: 246, baseType: !64, size: 32, offset: 224)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !660, file: !8, line: 246, baseType: !64, size: 32, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !660, file: !8, line: 246, baseType: !16, size: 8, offset: 288)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !660, file: !8, line: 246, baseType: !16, size: 8, offset: 296)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !660, file: !8, line: 246, baseType: !28, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !660, file: !8, line: 247, baseType: !28, size: 64, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !22, file: !8, line: 386, baseType: !679, size: 448)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !8, line: 250, size: 448, elements: !680)
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !679, file: !8, line: 251, baseType: !28, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !679, file: !8, line: 251, baseType: !16, size: 8, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !679, file: !8, line: 251, baseType: !16, size: 8, offset: 72)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !679, file: !8, line: 251, baseType: !32, size: 16, offset: 80)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !679, file: !8, line: 251, baseType: !16, size: 8, offset: 96)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !679, file: !8, line: 251, baseType: !16, size: 8, offset: 104)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !679, file: !8, line: 251, baseType: !16, size: 8, offset: 112)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !679, file: !8, line: 251, baseType: !16, size: 8, offset: 120)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !679, file: !8, line: 251, baseType: !81, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !679, file: !8, line: 251, baseType: !64, size: 32, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !679, file: !8, line: 251, baseType: !64, size: 32, offset: 224)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !679, file: !8, line: 251, baseType: !64, size: 32, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !679, file: !8, line: 251, baseType: !16, size: 8, offset: 288)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !679, file: !8, line: 251, baseType: !16, size: 8, offset: 296)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !679, file: !8, line: 256, baseType: !28, size: 64, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !679, file: !8, line: 257, baseType: !28, size: 64, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !22, file: !8, line: 387, baseType: !698, size: 512)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !8, line: 273, size: 512, elements: !699)
!699 = !{!700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !698, file: !8, line: 274, baseType: !28, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !698, file: !8, line: 274, baseType: !16, size: 8, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !698, file: !8, line: 274, baseType: !16, size: 8, offset: 72)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !698, file: !8, line: 274, baseType: !32, size: 16, offset: 80)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !698, file: !8, line: 274, baseType: !16, size: 8, offset: 96)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !698, file: !8, line: 274, baseType: !81, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !698, file: !8, line: 275, baseType: !64, size: 32, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !698, file: !8, line: 276, baseType: !375, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !698, file: !8, line: 277, baseType: !14, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !698, file: !8, line: 278, baseType: !482, size: 128, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !22, file: !8, line: 388, baseType: !711, size: 512)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !8, line: 281, size: 512, elements: !712)
!712 = !{!713, !714, !715, !716, !717, !718, !719, !720, !726, !727, !728, !734, !735}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !711, file: !8, line: 282, baseType: !28, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !711, file: !8, line: 282, baseType: !16, size: 8, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !711, file: !8, line: 282, baseType: !16, size: 8, offset: 72)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !711, file: !8, line: 282, baseType: !32, size: 16, offset: 80)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !8, line: 282, baseType: !16, size: 8, offset: 96)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !711, file: !8, line: 282, baseType: !16, size: 8, offset: 104)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !711, file: !8, line: 283, baseType: !16, size: 8, offset: 112)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !711, file: !8, line: 284, baseType: !721, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !103, line: 1084, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!149, !64, !471, !64, !725, !14, !14}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !711, file: !8, line: 285, baseType: !81, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !711, file: !8, line: 286, baseType: !14, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !711, file: !8, line: 287, baseType: !729, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !103, line: 1102, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!149, !379, !64, !14, !733}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !711, file: !8, line: 288, baseType: !28, size: 64, offset: 384)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !711, file: !8, line: 289, baseType: !28, size: 64, offset: 448)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !22, file: !8, line: 389, baseType: !737, size: 512)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !8, line: 307, size: 512, elements: !738)
!738 = !{!739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !737, file: !8, line: 308, baseType: !28, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !737, file: !8, line: 308, baseType: !16, size: 8, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !737, file: !8, line: 308, baseType: !16, size: 8, offset: 72)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !737, file: !8, line: 308, baseType: !32, size: 16, offset: 80)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !737, file: !8, line: 308, baseType: !16, size: 8, offset: 96)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !737, file: !8, line: 308, baseType: !16, size: 8, offset: 104)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !737, file: !8, line: 309, baseType: !16, size: 8, offset: 112)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !737, file: !8, line: 310, baseType: !16, size: 8, offset: 120)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !737, file: !8, line: 311, baseType: !14, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !737, file: !8, line: 312, baseType: !81, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !737, file: !8, line: 313, baseType: !114, size: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !737, file: !8, line: 314, baseType: !76, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !737, file: !8, line: 315, baseType: !76, size: 64, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !737, file: !8, line: 316, baseType: !64, size: 32, offset: 448)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !22, file: !8, line: 390, baseType: !754, size: 448)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !8, line: 340, size: 448, elements: !755)
!755 = !{!756, !757, !758, !759, !760, !761, !762, !763, !764, !765}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !754, file: !8, line: 341, baseType: !28, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !754, file: !8, line: 341, baseType: !16, size: 8, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !754, file: !8, line: 341, baseType: !16, size: 8, offset: 72)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !754, file: !8, line: 341, baseType: !32, size: 16, offset: 80)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !754, file: !8, line: 341, baseType: !16, size: 8, offset: 96)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !754, file: !8, line: 341, baseType: !81, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !754, file: !8, line: 342, baseType: !81, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !754, file: !8, line: 343, baseType: !14, size: 64, offset: 256)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !754, file: !8, line: 344, baseType: !76, size: 64, offset: 320)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !754, file: !8, line: 345, baseType: !64, size: 32, offset: 384)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !22, file: !8, line: 391, baseType: !767, size: 256)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !8, line: 350, size: 256, elements: !768)
!768 = !{!769, !770, !771, !772, !773, !774, !779}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !767, file: !8, line: 351, baseType: !28, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !767, file: !8, line: 351, baseType: !16, size: 8, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !767, file: !8, line: 351, baseType: !16, size: 8, offset: 72)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !767, file: !8, line: 351, baseType: !32, size: 16, offset: 80)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !8, line: 351, baseType: !16, size: 8, offset: 96)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !767, file: !8, line: 351, baseType: !775, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !103, line: 1055, baseType: !776)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !379, !14}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !767, file: !8, line: 352, baseType: !14, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !22, file: !8, line: 392, baseType: !781, size: 192)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !8, line: 357, size: 192, elements: !782)
!782 = !{!783, !784, !785, !786, !787, !788}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !781, file: !8, line: 358, baseType: !28, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !781, file: !8, line: 358, baseType: !16, size: 8, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !781, file: !8, line: 358, baseType: !16, size: 8, offset: 72)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !781, file: !8, line: 358, baseType: !32, size: 16, offset: 80)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !8, line: 358, baseType: !16, size: 8, offset: 96)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !781, file: !8, line: 358, baseType: !28, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !22, file: !8, line: 399, baseType: !82, size: 384)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !7, file: !8, line: 435, baseType: !82, size: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !7, file: !8, line: 436, baseType: !185, size: 1600)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !793, line: 148, baseType: !66)
!793 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!794 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!795 = !{!0}
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 64, elements: !357)
!797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!798 = !{!"rsp"}
!799 = !{i32 7, !"Dwarf Version", i32 4}
!800 = !{i32 2, !"Debug Info Version", i32 3}
!801 = !{i32 1, !"wchar_size", i32 2}
!802 = !{i32 1, !"Code Model", i32 2}
!803 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!804 = distinct !DISubprogram(name: "acpi_ns_create_node", scope: !3, file: !3, line: 26, type: !805, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!805 = !DISubroutineType(types: !806)
!806 = !{!81, !64}
!807 = !DILocalVariable(name: "name", arg: 1, scope: !804, file: !3, line: 26, type: !64)
!808 = !DILocation(line: 26, column: 53, scope: !804)
!809 = !DILocalVariable(name: "node", scope: !804, file: !3, line: 28, type: !81)
!810 = !DILocation(line: 28, column: 30, scope: !804)
!811 = !DILocation(line: 35, column: 32, scope: !804)
!812 = !DILocation(line: 35, column: 9, scope: !804)
!813 = !DILocation(line: 35, column: 7, scope: !804)
!814 = !DILocation(line: 36, column: 7, scope: !815)
!815 = distinct !DILexicalBlock(scope: !804, file: !3, line: 36, column: 6)
!816 = !DILocation(line: 36, column: 6, scope: !804)
!817 = !DILocation(line: 37, column: 3, scope: !818)
!818 = distinct !DILexicalBlock(scope: !815, file: !3, line: 36, column: 13)
!819 = !DILocation(line: 50, column: 23, scope: !804)
!820 = !DILocation(line: 50, column: 2, scope: !804)
!821 = !DILocation(line: 50, column: 8, scope: !804)
!822 = !DILocation(line: 50, column: 13, scope: !804)
!823 = !DILocation(line: 50, column: 21, scope: !804)
!824 = !DILocation(line: 51, column: 2, scope: !804)
!825 = !DILocation(line: 52, column: 2, scope: !804)
!826 = !DILocation(line: 53, column: 1, scope: !804)
!827 = distinct !DISubprogram(name: "acpi_os_acquire_object", scope: !828, file: !828, line: 65, type: !829, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!828 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!829 = !DISubroutineType(types: !830)
!830 = !{!14, !831}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !833, line: 117, flags: DIFlagFwdDecl)
!833 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!834 = !DILocalVariable(name: "flags", arg: 1, scope: !835, file: !836, line: 162, type: !794)
!835 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !836, file: !836, line: 162, type: !837, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!836 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!837 = !DISubroutineType(types: !838)
!838 = !{!839, !794}
!839 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!840 = !DILocation(line: 162, column: 67, scope: !835, inlinedAt: !841)
!841 = distinct !DILocation(line: 68, column: 6, scope: !842)
!842 = distinct !DILexicalBlock(scope: !843, file: !828, line: 68, column: 6)
!843 = distinct !DILexicalBlock(scope: !827, file: !828, line: 68, column: 6)
!844 = !DILocalVariable(name: "cache", arg: 1, scope: !827, file: !828, line: 65, type: !831)
!845 = !DILocation(line: 65, column: 59, scope: !827)
!846 = !DILocation(line: 67, column: 27, scope: !827)
!847 = !DILocalVariable(name: "_flags", scope: !843, file: !828, line: 68, type: !794)
!848 = !DILocation(line: 68, column: 6, scope: !843)
!849 = !DILocalVariable(name: "__dummy", scope: !850, file: !828, line: 68, type: !794)
!850 = distinct !DILexicalBlock(scope: !851, file: !828, line: 68, column: 6)
!851 = distinct !DILexicalBlock(scope: !843, file: !828, line: 68, column: 6)
!852 = !DILocation(line: 68, column: 6, scope: !850)
!853 = !DILocalVariable(name: "__dummy2", scope: !850, file: !828, line: 68, type: !794)
!854 = !DILocation(line: 68, column: 6, scope: !851)
!855 = !DILocalVariable(name: "__dummy", scope: !856, file: !828, line: 68, type: !794)
!856 = distinct !DILexicalBlock(scope: !842, file: !828, line: 68, column: 6)
!857 = !DILocation(line: 68, column: 6, scope: !856)
!858 = !DILocalVariable(name: "__dummy2", scope: !856, file: !828, line: 68, type: !794)
!859 = !DILocation(line: 68, column: 6, scope: !842)
!860 = !DILocation(line: 164, column: 11, scope: !835, inlinedAt: !841)
!861 = !DILocation(line: 164, column: 17, scope: !835, inlinedAt: !841)
!862 = !DILocation(line: 164, column: 9, scope: !835, inlinedAt: !841)
!863 = !DILocation(line: 68, column: 6, scope: !827)
!864 = !DILocation(line: 67, column: 9, scope: !827)
!865 = !DILocation(line: 67, column: 2, scope: !827)
!866 = distinct !DISubprogram(name: "acpi_ns_delete_node", scope: !3, file: !3, line: 70, type: !867, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !81}
!869 = !DILocalVariable(name: "node", arg: 1, scope: !866, file: !3, line: 70, type: !81)
!870 = !DILocation(line: 70, column: 54, scope: !866)
!871 = !DILocalVariable(name: "obj_desc", scope: !866, file: !3, line: 72, type: !28)
!872 = !DILocation(line: 72, column: 29, scope: !866)
!873 = !DILocalVariable(name: "next_desc", scope: !866, file: !3, line: 73, type: !28)
!874 = !DILocation(line: 73, column: 29, scope: !866)
!875 = !DILocation(line: 77, column: 7, scope: !876)
!876 = distinct !DILexicalBlock(scope: !866, file: !3, line: 77, column: 6)
!877 = !DILocation(line: 77, column: 6, scope: !866)
!878 = !DILocation(line: 78, column: 3, scope: !879)
!879 = distinct !DILexicalBlock(scope: !876, file: !3, line: 77, column: 13)
!880 = !DILocation(line: 83, column: 24, scope: !866)
!881 = !DILocation(line: 83, column: 2, scope: !866)
!882 = !DILocation(line: 91, column: 13, scope: !866)
!883 = !DILocation(line: 91, column: 19, scope: !866)
!884 = !DILocation(line: 91, column: 11, scope: !866)
!885 = !DILocation(line: 92, column: 2, scope: !866)
!886 = !DILocation(line: 92, column: 9, scope: !866)
!887 = !DILocation(line: 92, column: 18, scope: !866)
!888 = !DILocation(line: 92, column: 22, scope: !866)
!889 = !DILocation(line: 92, column: 32, scope: !866)
!890 = !DILocation(line: 92, column: 39, scope: !866)
!891 = !DILocation(line: 92, column: 44, scope: !866)
!892 = !DILocation(line: 0, scope: !866)
!893 = !DILocation(line: 96, column: 7, scope: !894)
!894 = distinct !DILexicalBlock(scope: !895, file: !3, line: 96, column: 7)
!895 = distinct !DILexicalBlock(scope: !866, file: !3, line: 92, column: 70)
!896 = !DILocation(line: 96, column: 17, scope: !894)
!897 = !DILocation(line: 96, column: 22, scope: !894)
!898 = !DILocation(line: 96, column: 7, scope: !895)
!899 = !DILocation(line: 97, column: 4, scope: !900)
!900 = distinct !DILexicalBlock(scope: !894, file: !3, line: 96, column: 31)
!901 = !DILocation(line: 97, column: 14, scope: !900)
!902 = !DILocation(line: 97, column: 19, scope: !900)
!903 = !DILocation(line: 97, column: 27, scope: !900)
!904 = !DILocation(line: 97, column: 33, scope: !900)
!905 = !DILocation(line: 97, column: 43, scope: !900)
!906 = !DILocation(line: 97, column: 48, scope: !900)
!907 = !DILocation(line: 98, column: 3, scope: !900)
!908 = !DILocation(line: 100, column: 15, scope: !895)
!909 = !DILocation(line: 100, column: 25, scope: !895)
!910 = !DILocation(line: 100, column: 32, scope: !895)
!911 = !DILocation(line: 100, column: 13, scope: !895)
!912 = !DILocation(line: 101, column: 28, scope: !895)
!913 = !DILocation(line: 101, column: 3, scope: !895)
!914 = !DILocation(line: 102, column: 14, scope: !895)
!915 = !DILocation(line: 102, column: 12, scope: !895)
!916 = distinct !{!916, !885, !917}
!917 = !DILocation(line: 103, column: 2, scope: !866)
!918 = !DILocation(line: 107, column: 6, scope: !919)
!919 = distinct !DILexicalBlock(scope: !866, file: !3, line: 107, column: 6)
!920 = !DILocation(line: 107, column: 14, scope: !919)
!921 = !DILocation(line: 107, column: 11, scope: !919)
!922 = !DILocation(line: 107, column: 6, scope: !866)
!923 = !DILocation(line: 108, column: 3, scope: !924)
!924 = distinct !DILexicalBlock(scope: !919, file: !3, line: 107, column: 34)
!925 = !DILocation(line: 113, column: 31, scope: !866)
!926 = !DILocation(line: 113, column: 57, scope: !866)
!927 = !DILocation(line: 113, column: 8, scope: !866)
!928 = !DILocation(line: 118, column: 1, scope: !866)
!929 = distinct !DISubprogram(name: "acpi_ns_remove_node", scope: !3, file: !3, line: 132, type: !867, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!930 = !DILocalVariable(name: "node", arg: 1, scope: !929, file: !3, line: 132, type: !81)
!931 = !DILocation(line: 132, column: 54, scope: !929)
!932 = !DILocalVariable(name: "parent_node", scope: !929, file: !3, line: 134, type: !81)
!933 = !DILocation(line: 134, column: 30, scope: !929)
!934 = !DILocalVariable(name: "prev_node", scope: !929, file: !3, line: 135, type: !81)
!935 = !DILocation(line: 135, column: 30, scope: !929)
!936 = !DILocalVariable(name: "next_node", scope: !929, file: !3, line: 136, type: !81)
!937 = !DILocation(line: 136, column: 30, scope: !929)
!938 = !DILocation(line: 140, column: 16, scope: !929)
!939 = !DILocation(line: 140, column: 22, scope: !929)
!940 = !DILocation(line: 140, column: 14, scope: !929)
!941 = !DILocation(line: 142, column: 12, scope: !929)
!942 = !DILocation(line: 143, column: 14, scope: !929)
!943 = !DILocation(line: 143, column: 27, scope: !929)
!944 = !DILocation(line: 143, column: 12, scope: !929)
!945 = !DILocation(line: 147, column: 2, scope: !929)
!946 = !DILocation(line: 147, column: 9, scope: !929)
!947 = !DILocation(line: 147, column: 22, scope: !929)
!948 = !DILocation(line: 147, column: 19, scope: !929)
!949 = !DILocation(line: 148, column: 15, scope: !950)
!950 = distinct !DILexicalBlock(scope: !929, file: !3, line: 147, column: 28)
!951 = !DILocation(line: 148, column: 13, scope: !950)
!952 = !DILocation(line: 149, column: 15, scope: !950)
!953 = !DILocation(line: 149, column: 26, scope: !950)
!954 = !DILocation(line: 149, column: 13, scope: !950)
!955 = distinct !{!955, !945, !956}
!956 = !DILocation(line: 150, column: 2, scope: !929)
!957 = !DILocation(line: 152, column: 6, scope: !958)
!958 = distinct !DILexicalBlock(scope: !929, file: !3, line: 152, column: 6)
!959 = !DILocation(line: 152, column: 6, scope: !929)
!960 = !DILocation(line: 156, column: 21, scope: !961)
!961 = distinct !DILexicalBlock(scope: !958, file: !3, line: 152, column: 17)
!962 = !DILocation(line: 156, column: 27, scope: !961)
!963 = !DILocation(line: 156, column: 3, scope: !961)
!964 = !DILocation(line: 156, column: 14, scope: !961)
!965 = !DILocation(line: 156, column: 19, scope: !961)
!966 = !DILocation(line: 157, column: 2, scope: !961)
!967 = !DILocation(line: 162, column: 24, scope: !968)
!968 = distinct !DILexicalBlock(scope: !958, file: !3, line: 157, column: 9)
!969 = !DILocation(line: 162, column: 30, scope: !968)
!970 = !DILocation(line: 162, column: 3, scope: !968)
!971 = !DILocation(line: 162, column: 16, scope: !968)
!972 = !DILocation(line: 162, column: 22, scope: !968)
!973 = !DILocation(line: 167, column: 22, scope: !929)
!974 = !DILocation(line: 167, column: 2, scope: !929)
!975 = !DILocation(line: 168, column: 2, scope: !929)
!976 = distinct !DISubprogram(name: "acpi_ns_install_node", scope: !3, file: !3, line: 191, type: !977, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !150, !81, !81, !979}
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !103, line: 635, baseType: !64)
!980 = !DILocalVariable(name: "walk_state", arg: 1, scope: !976, file: !3, line: 191, type: !150)
!981 = !DILocation(line: 191, column: 51, scope: !976)
!982 = !DILocalVariable(name: "parent_node", arg: 2, scope: !976, file: !3, line: 191, type: !81)
!983 = !DILocation(line: 191, column: 91, scope: !976)
!984 = !DILocalVariable(name: "node", arg: 3, scope: !976, file: !3, line: 192, type: !81)
!985 = !DILocation(line: 192, column: 34, scope: !976)
!986 = !DILocalVariable(name: "type", arg: 4, scope: !976, file: !3, line: 193, type: !979)
!987 = !DILocation(line: 193, column: 23, scope: !976)
!988 = !DILocalVariable(name: "owner_id", scope: !976, file: !3, line: 195, type: !102)
!989 = !DILocation(line: 195, column: 16, scope: !976)
!990 = !DILocalVariable(name: "child_node", scope: !976, file: !3, line: 196, type: !81)
!991 = !DILocation(line: 196, column: 30, scope: !976)
!992 = !DILocation(line: 200, column: 6, scope: !993)
!993 = distinct !DILexicalBlock(scope: !976, file: !3, line: 200, column: 6)
!994 = !DILocation(line: 200, column: 6, scope: !976)
!995 = !DILocation(line: 205, column: 14, scope: !996)
!996 = distinct !DILexicalBlock(scope: !993, file: !3, line: 200, column: 18)
!997 = !DILocation(line: 205, column: 26, scope: !996)
!998 = !DILocation(line: 205, column: 12, scope: !996)
!999 = !DILocation(line: 207, column: 8, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !996, file: !3, line: 207, column: 7)
!1001 = !DILocation(line: 207, column: 20, scope: !1000)
!1002 = !DILocation(line: 207, column: 7, scope: !1000)
!1003 = !DILocation(line: 207, column: 33, scope: !1000)
!1004 = !DILocation(line: 208, column: 8, scope: !1000)
!1005 = !DILocation(line: 208, column: 23, scope: !1000)
!1006 = !DILocation(line: 208, column: 35, scope: !1000)
!1007 = !DILocation(line: 208, column: 20, scope: !1000)
!1008 = !DILocation(line: 207, column: 7, scope: !996)
!1009 = !DILocation(line: 215, column: 4, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 208, column: 49)
!1011 = !DILocation(line: 215, column: 16, scope: !1010)
!1012 = !DILocation(line: 215, column: 29, scope: !1010)
!1013 = !DILocation(line: 215, column: 36, scope: !1010)
!1014 = !DILocation(line: 215, column: 47, scope: !1010)
!1015 = !DILocation(line: 217, column: 3, scope: !1010)
!1016 = !DILocation(line: 218, column: 2, scope: !996)
!1017 = !DILocation(line: 222, column: 2, scope: !976)
!1018 = !DILocation(line: 222, column: 8, scope: !976)
!1019 = !DILocation(line: 222, column: 13, scope: !976)
!1020 = !DILocation(line: 223, column: 17, scope: !976)
!1021 = !DILocation(line: 223, column: 2, scope: !976)
!1022 = !DILocation(line: 223, column: 8, scope: !976)
!1023 = !DILocation(line: 223, column: 15, scope: !976)
!1024 = !DILocation(line: 224, column: 15, scope: !976)
!1025 = !DILocation(line: 224, column: 28, scope: !976)
!1026 = !DILocation(line: 224, column: 13, scope: !976)
!1027 = !DILocation(line: 226, column: 7, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !976, file: !3, line: 226, column: 6)
!1029 = !DILocation(line: 226, column: 6, scope: !976)
!1030 = !DILocation(line: 227, column: 24, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 226, column: 19)
!1032 = !DILocation(line: 227, column: 3, scope: !1031)
!1033 = !DILocation(line: 227, column: 16, scope: !1031)
!1034 = !DILocation(line: 227, column: 22, scope: !1031)
!1035 = !DILocation(line: 228, column: 2, scope: !1031)
!1036 = !DILocation(line: 231, column: 3, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 228, column: 9)
!1038 = !DILocation(line: 231, column: 10, scope: !1037)
!1039 = !DILocation(line: 231, column: 22, scope: !1037)
!1040 = !DILocation(line: 232, column: 17, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 231, column: 28)
!1042 = !DILocation(line: 232, column: 29, scope: !1041)
!1043 = !DILocation(line: 232, column: 15, scope: !1041)
!1044 = distinct !{!1044, !1036, !1045}
!1045 = !DILocation(line: 233, column: 3, scope: !1037)
!1046 = !DILocation(line: 235, column: 22, scope: !1037)
!1047 = !DILocation(line: 235, column: 3, scope: !1037)
!1048 = !DILocation(line: 235, column: 15, scope: !1037)
!1049 = !DILocation(line: 235, column: 20, scope: !1037)
!1050 = !DILocation(line: 240, column: 19, scope: !976)
!1051 = !DILocation(line: 240, column: 2, scope: !976)
!1052 = !DILocation(line: 240, column: 8, scope: !976)
!1053 = !DILocation(line: 240, column: 17, scope: !976)
!1054 = !DILocation(line: 241, column: 20, scope: !976)
!1055 = !DILocation(line: 241, column: 15, scope: !976)
!1056 = !DILocation(line: 241, column: 2, scope: !976)
!1057 = !DILocation(line: 241, column: 8, scope: !976)
!1058 = !DILocation(line: 241, column: 13, scope: !976)
!1059 = !DILocation(line: 251, column: 2, scope: !976)
!1060 = distinct !DISubprogram(name: "acpi_ns_delete_children", scope: !3, file: !3, line: 267, type: !867, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1061 = !DILocalVariable(name: "parent_node", arg: 1, scope: !1060, file: !3, line: 267, type: !81)
!1062 = !DILocation(line: 267, column: 58, scope: !1060)
!1063 = !DILocalVariable(name: "next_node", scope: !1060, file: !3, line: 269, type: !81)
!1064 = !DILocation(line: 269, column: 30, scope: !1060)
!1065 = !DILocalVariable(name: "node_to_delete", scope: !1060, file: !3, line: 270, type: !81)
!1066 = !DILocation(line: 270, column: 30, scope: !1060)
!1067 = !DILocation(line: 274, column: 7, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 274, column: 6)
!1069 = !DILocation(line: 274, column: 6, scope: !1060)
!1070 = !DILocation(line: 275, column: 3, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 274, column: 20)
!1072 = !DILocation(line: 280, column: 14, scope: !1060)
!1073 = !DILocation(line: 280, column: 27, scope: !1060)
!1074 = !DILocation(line: 280, column: 12, scope: !1060)
!1075 = !DILocation(line: 281, column: 2, scope: !1060)
!1076 = !DILocation(line: 281, column: 9, scope: !1060)
!1077 = !DILocation(line: 285, column: 7, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 285, column: 7)
!1079 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 281, column: 20)
!1080 = !DILocation(line: 285, column: 18, scope: !1078)
!1081 = !DILocation(line: 285, column: 7, scope: !1079)
!1082 = !DILocation(line: 286, column: 4, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 285, column: 25)
!1084 = !DILocation(line: 288, column: 3, scope: !1083)
!1085 = !DILocation(line: 294, column: 20, scope: !1079)
!1086 = !DILocation(line: 294, column: 18, scope: !1079)
!1087 = !DILocation(line: 295, column: 15, scope: !1079)
!1088 = !DILocation(line: 295, column: 26, scope: !1079)
!1089 = !DILocation(line: 295, column: 13, scope: !1079)
!1090 = !DILocation(line: 296, column: 23, scope: !1079)
!1091 = !DILocation(line: 296, column: 3, scope: !1079)
!1092 = distinct !{!1092, !1075, !1093}
!1093 = !DILocation(line: 297, column: 2, scope: !1060)
!1094 = !DILocation(line: 301, column: 2, scope: !1060)
!1095 = !DILocation(line: 301, column: 15, scope: !1060)
!1096 = !DILocation(line: 301, column: 21, scope: !1060)
!1097 = !DILocation(line: 302, column: 2, scope: !1060)
!1098 = !DILocation(line: 303, column: 1, scope: !1060)
!1099 = distinct !DISubprogram(name: "acpi_ns_delete_namespace_subtree", scope: !3, file: !3, line: 318, type: !867, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1100 = !DILocalVariable(name: "parent_node", arg: 1, scope: !1099, file: !3, line: 318, type: !81)
!1101 = !DILocation(line: 318, column: 67, scope: !1099)
!1102 = !DILocalVariable(name: "child_node", scope: !1099, file: !3, line: 320, type: !81)
!1103 = !DILocation(line: 320, column: 30, scope: !1099)
!1104 = !DILocalVariable(name: "level", scope: !1099, file: !3, line: 321, type: !64)
!1105 = !DILocation(line: 321, column: 6, scope: !1099)
!1106 = !DILocalVariable(name: "status", scope: !1099, file: !3, line: 322, type: !149)
!1107 = !DILocation(line: 322, column: 14, scope: !1099)
!1108 = !DILocation(line: 326, column: 7, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 326, column: 6)
!1110 = !DILocation(line: 326, column: 6, scope: !1099)
!1111 = !DILocation(line: 327, column: 3, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 326, column: 20)
!1113 = !DILocation(line: 332, column: 11, scope: !1099)
!1114 = !DILocation(line: 332, column: 9, scope: !1099)
!1115 = !DILocation(line: 333, column: 6, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 333, column: 6)
!1117 = !DILocation(line: 333, column: 6, scope: !1099)
!1118 = !DILocation(line: 334, column: 3, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 333, column: 28)
!1120 = !DILocation(line: 341, column: 2, scope: !1099)
!1121 = !DILocation(line: 341, column: 9, scope: !1099)
!1122 = !DILocation(line: 341, column: 15, scope: !1099)
!1123 = !DILocation(line: 345, column: 38, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 341, column: 20)
!1125 = !DILocation(line: 345, column: 51, scope: !1124)
!1126 = !DILocation(line: 345, column: 16, scope: !1124)
!1127 = !DILocation(line: 345, column: 14, scope: !1124)
!1128 = !DILocation(line: 346, column: 7, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 346, column: 7)
!1130 = !DILocation(line: 346, column: 7, scope: !1124)
!1131 = !DILocation(line: 350, column: 26, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 346, column: 19)
!1133 = !DILocation(line: 350, column: 4, scope: !1132)
!1134 = !DILocation(line: 354, column: 8, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 354, column: 8)
!1136 = !DILocation(line: 354, column: 20, scope: !1135)
!1137 = !DILocation(line: 354, column: 8, scope: !1132)
!1138 = !DILocation(line: 359, column: 10, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 354, column: 27)
!1140 = !DILocation(line: 360, column: 19, scope: !1139)
!1141 = !DILocation(line: 360, column: 17, scope: !1139)
!1142 = !DILocation(line: 361, column: 16, scope: !1139)
!1143 = !DILocation(line: 362, column: 4, scope: !1139)
!1144 = !DILocation(line: 363, column: 3, scope: !1132)
!1145 = !DILocation(line: 368, column: 9, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 363, column: 10)
!1147 = !DILocation(line: 374, column: 28, scope: !1146)
!1148 = !DILocation(line: 374, column: 4, scope: !1146)
!1149 = !DILocation(line: 378, column: 17, scope: !1146)
!1150 = !DILocation(line: 378, column: 15, scope: !1146)
!1151 = !DILocation(line: 382, column: 18, scope: !1146)
!1152 = !DILocation(line: 382, column: 31, scope: !1146)
!1153 = !DILocation(line: 382, column: 16, scope: !1146)
!1154 = distinct !{!1154, !1120, !1155}
!1155 = !DILocation(line: 384, column: 2, scope: !1099)
!1156 = !DILocation(line: 386, column: 8, scope: !1099)
!1157 = !DILocation(line: 387, column: 2, scope: !1099)
!1158 = !DILocation(line: 388, column: 1, scope: !1099)
!1159 = distinct !DISubprogram(name: "acpi_ns_delete_namespace_by_owner", scope: !3, file: !3, line: 406, type: !1160, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{null, !102}
!1162 = !DILocalVariable(name: "owner_id", arg: 1, scope: !1159, file: !3, line: 406, type: !102)
!1163 = !DILocation(line: 406, column: 54, scope: !1159)
!1164 = !DILocalVariable(name: "child_node", scope: !1159, file: !3, line: 408, type: !81)
!1165 = !DILocation(line: 408, column: 30, scope: !1159)
!1166 = !DILocalVariable(name: "deletion_node", scope: !1159, file: !3, line: 409, type: !81)
!1167 = !DILocation(line: 409, column: 30, scope: !1159)
!1168 = !DILocalVariable(name: "parent_node", scope: !1159, file: !3, line: 410, type: !81)
!1169 = !DILocation(line: 410, column: 30, scope: !1159)
!1170 = !DILocalVariable(name: "level", scope: !1159, file: !3, line: 411, type: !64)
!1171 = !DILocation(line: 411, column: 6, scope: !1159)
!1172 = !DILocalVariable(name: "status", scope: !1159, file: !3, line: 412, type: !149)
!1173 = !DILocation(line: 412, column: 14, scope: !1159)
!1174 = !DILocation(line: 416, column: 6, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 416, column: 6)
!1176 = !DILocation(line: 416, column: 15, scope: !1175)
!1177 = !DILocation(line: 416, column: 6, scope: !1159)
!1178 = !DILocation(line: 417, column: 3, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 416, column: 21)
!1180 = !DILocation(line: 422, column: 11, scope: !1159)
!1181 = !DILocation(line: 422, column: 9, scope: !1159)
!1182 = !DILocation(line: 423, column: 6, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 423, column: 6)
!1184 = !DILocation(line: 423, column: 6, scope: !1159)
!1185 = !DILocation(line: 424, column: 3, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 423, column: 28)
!1187 = !DILocation(line: 427, column: 16, scope: !1159)
!1188 = !DILocation(line: 428, column: 16, scope: !1159)
!1189 = !DILocation(line: 428, column: 14, scope: !1159)
!1190 = !DILocation(line: 429, column: 13, scope: !1159)
!1191 = !DILocation(line: 430, column: 8, scope: !1159)
!1192 = !DILocation(line: 436, column: 2, scope: !1159)
!1193 = !DILocation(line: 436, column: 9, scope: !1159)
!1194 = !DILocation(line: 436, column: 15, scope: !1159)
!1195 = !DILocation(line: 441, column: 38, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 436, column: 20)
!1197 = !DILocation(line: 441, column: 51, scope: !1196)
!1198 = !DILocation(line: 441, column: 16, scope: !1196)
!1199 = !DILocation(line: 441, column: 14, scope: !1196)
!1200 = !DILocation(line: 443, column: 7, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 443, column: 7)
!1202 = !DILocation(line: 443, column: 7, scope: !1196)
!1203 = !DILocation(line: 444, column: 28, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 443, column: 22)
!1205 = !DILocation(line: 444, column: 4, scope: !1204)
!1206 = !DILocation(line: 445, column: 24, scope: !1204)
!1207 = !DILocation(line: 445, column: 4, scope: !1204)
!1208 = !DILocation(line: 446, column: 18, scope: !1204)
!1209 = !DILocation(line: 447, column: 3, scope: !1204)
!1210 = !DILocation(line: 449, column: 7, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 449, column: 7)
!1212 = !DILocation(line: 449, column: 7, scope: !1196)
!1213 = !DILocation(line: 450, column: 8, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 450, column: 8)
!1215 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 449, column: 19)
!1216 = !DILocation(line: 450, column: 20, scope: !1214)
!1217 = !DILocation(line: 450, column: 32, scope: !1214)
!1218 = !DILocation(line: 450, column: 29, scope: !1214)
!1219 = !DILocation(line: 450, column: 8, scope: !1215)
!1220 = !DILocation(line: 454, column: 27, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 450, column: 42)
!1222 = !DILocation(line: 454, column: 5, scope: !1221)
!1223 = !DILocation(line: 455, column: 4, scope: !1221)
!1224 = !DILocation(line: 459, column: 8, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 459, column: 8)
!1226 = !DILocation(line: 459, column: 20, scope: !1225)
!1227 = !DILocation(line: 459, column: 8, scope: !1215)
!1228 = !DILocation(line: 464, column: 10, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 459, column: 27)
!1230 = !DILocation(line: 465, column: 19, scope: !1229)
!1231 = !DILocation(line: 465, column: 17, scope: !1229)
!1232 = !DILocation(line: 466, column: 16, scope: !1229)
!1233 = !DILocation(line: 467, column: 4, scope: !1229)
!1234 = !DILocation(line: 467, column: 15, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 467, column: 15)
!1236 = !DILocation(line: 467, column: 27, scope: !1235)
!1237 = !DILocation(line: 467, column: 39, scope: !1235)
!1238 = !DILocation(line: 467, column: 36, scope: !1235)
!1239 = !DILocation(line: 467, column: 15, scope: !1225)
!1240 = !DILocation(line: 468, column: 21, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 467, column: 49)
!1242 = !DILocation(line: 468, column: 19, scope: !1241)
!1243 = !DILocation(line: 469, column: 4, scope: !1241)
!1244 = !DILocation(line: 470, column: 3, scope: !1215)
!1245 = !DILocation(line: 475, column: 9, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 470, column: 10)
!1247 = !DILocation(line: 476, column: 8, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 476, column: 8)
!1249 = !DILocation(line: 476, column: 14, scope: !1248)
!1250 = !DILocation(line: 476, column: 8, scope: !1246)
!1251 = !DILocation(line: 477, column: 9, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 477, column: 9)
!1253 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 476, column: 20)
!1254 = !DILocation(line: 477, column: 22, scope: !1252)
!1255 = !DILocation(line: 477, column: 34, scope: !1252)
!1256 = !DILocation(line: 477, column: 31, scope: !1252)
!1257 = !DILocation(line: 477, column: 9, scope: !1253)
!1258 = !DILocation(line: 478, column: 22, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 477, column: 44)
!1260 = !DILocation(line: 478, column: 20, scope: !1259)
!1261 = !DILocation(line: 479, column: 5, scope: !1259)
!1262 = !DILocation(line: 480, column: 4, scope: !1253)
!1263 = !DILocation(line: 484, column: 17, scope: !1246)
!1264 = !DILocation(line: 484, column: 15, scope: !1246)
!1265 = !DILocation(line: 488, column: 18, scope: !1246)
!1266 = !DILocation(line: 488, column: 31, scope: !1246)
!1267 = !DILocation(line: 488, column: 16, scope: !1246)
!1268 = distinct !{!1268, !1192, !1269}
!1269 = !DILocation(line: 490, column: 2, scope: !1159)
!1270 = !DILocation(line: 492, column: 8, scope: !1159)
!1271 = !DILocation(line: 493, column: 2, scope: !1159)
!1272 = !DILocation(line: 494, column: 1, scope: !1159)
!1273 = distinct !DISubprogram(name: "kmem_cache_zalloc", scope: !1274, file: !1274, line: 652, type: !1275, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1274 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!14, !831, !792}
!1277 = !DILocalVariable(name: "k", arg: 1, scope: !1273, file: !1274, line: 652, type: !831)
!1278 = !DILocation(line: 652, column: 58, scope: !1273)
!1279 = !DILocalVariable(name: "flags", arg: 2, scope: !1273, file: !1274, line: 652, type: !792)
!1280 = !DILocation(line: 652, column: 67, scope: !1273)
!1281 = !DILocation(line: 654, column: 26, scope: !1273)
!1282 = !DILocation(line: 654, column: 29, scope: !1273)
!1283 = !DILocation(line: 654, column: 35, scope: !1273)
!1284 = !DILocation(line: 654, column: 9, scope: !1273)
!1285 = !DILocation(line: 654, column: 2, scope: !1273)
!1286 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1287, file: !1287, line: 646, type: !1288, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1287 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!794}
!1290 = !DILocalVariable(name: "__ret", scope: !1291, file: !1287, line: 648, type: !794)
!1291 = distinct !DILexicalBlock(scope: !1286, file: !1287, line: 648, column: 9)
!1292 = !DILocation(line: 648, column: 9, scope: !1291)
!1293 = !DILocalVariable(name: "__edi", scope: !1291, file: !1287, line: 648, type: !794)
!1294 = !DILocalVariable(name: "__esi", scope: !1291, file: !1287, line: 648, type: !794)
!1295 = !DILocalVariable(name: "__edx", scope: !1291, file: !1287, line: 648, type: !794)
!1296 = !DILocalVariable(name: "__ecx", scope: !1291, file: !1287, line: 648, type: !794)
!1297 = !DILocalVariable(name: "__eax", scope: !1291, file: !1287, line: 648, type: !794)
!1298 = !DILocation(line: 648, column: 9, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !1287, line: 648, column: 9)
!1300 = distinct !DILexicalBlock(scope: !1291, file: !1287, line: 648, column: 9)
!1301 = !{i32 -2145780992, i32 -2145778677, i32 -2145778443, i32 -2145778392, i32 -2145778364, i32 -2145778339, i32 -2145778655, i32 -2145778642, i32 -2145778204, i32 -2145778085, i32 -2145778550, i32 -2145778523, i32 -2145778495, i32 -2145778465}
!1302 = !DILocalVariable(name: "__mask", scope: !1303, file: !1287, line: 648, type: !794)
!1303 = distinct !DILexicalBlock(scope: !1299, file: !1287, line: 648, column: 9)
!1304 = !DILocation(line: 648, column: 9, scope: !1303)
!1305 = !DILocation(line: 648, column: 9, scope: !1300)
!1306 = !DILocation(line: 648, column: 2, scope: !1286)
