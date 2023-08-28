; ModuleID = '../bcout/drivers/acpi/acpica/utcopy.llvm.bc'
source_filename = "drivers/acpi/acpica/utcopy.c"
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.6, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.9 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { i64, i64 }
%union.anon.9 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.30, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.10, [0 x i64] }
%struct.anon.10 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.11, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.11 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.13 }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
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
%struct.kernel_siginfo = type { %struct.anon.18 }
%struct.anon.18 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.22 }
%struct.anon.22 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.29, i32, [12 x i8] }
%union.anon.29 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.30 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.31, %union.anon.44, %struct.atomic_t, [8 x i8] }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.44 = type { %struct.atomic_t }
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
%struct.acpi_buffer = type { i64, i8* }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%union.acpi_object = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i32, i64, i32 }
%struct.acpi_pkg_info = type { i8*, i64, i32, i32 }
%struct.acpi_object_package = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i32, i32 }
%struct.anon.2 = type { i32, i32, %union.acpi_object* }
%struct.anon.0 = type { i32, i32, i8* }
%struct.acpi_object_string = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32 }
%struct.anon.1 = type { i32, i32, i8* }
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }
%struct.anon = type { i32, i64 }
%struct.acpi_object_reference = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, i8*, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i8*, i32 }
%struct.anon.3 = type { i32, i32, i8* }
%struct.acpi_object_processor = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, [2 x %union.acpi_operand_object*], %union.acpi_operand_object*, i64 }
%struct.acpi_object_power_resource = type { %union.acpi_operand_object*, i8, i8, i16, i8, [2 x %union.acpi_operand_object*], %union.acpi_operand_object*, i32, i32 }
%struct.anon.5 = type { i32, i32, i32 }
%union.acpi_descriptor = type { %union.acpi_parse_object }
%struct.acpi_common_descriptor = type { i8*, i8 }
%struct.acpi_object_region = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object*, i64, i32 }
%struct.acpi_object_event = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8* }
%struct.acpi_pkg_state = type { i8*, i8, i8, i16, i16, i32, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_walk_state*, i8*, i32 }

@_acpi_module_name = internal constant [7 x i8] c"utcopy\00", align 1, !dbg !0
@.str = private unnamed_addr constant [63 x i8] c"Unsupported object type, cannot convert to external object: %s\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Unsupported object type, cannot convert to internal object: %s\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Package allocation failure\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_copy_iobject_to_eobject(%union.acpi_operand_object* %internal_object, %struct.acpi_buffer* %ret_buffer) #0 !dbg !877 {
entry:
  %internal_object.addr = alloca %union.acpi_operand_object*, align 8
  %ret_buffer.addr = alloca %struct.acpi_buffer*, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object* %internal_object, %union.acpi_operand_object** %internal_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %internal_object.addr, metadata !886, metadata !DIExpression()), !dbg !887
  store %struct.acpi_buffer* %ret_buffer, %struct.acpi_buffer** %ret_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %ret_buffer.addr, metadata !888, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.declare(metadata i32* %status, metadata !890, metadata !DIExpression()), !dbg !891
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !892
  %common = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_common*, !dbg !894
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !895
  %1 = load i8, i8* %type, align 1, !dbg !895
  %conv = zext i8 %1 to i32, !dbg !892
  %cmp = icmp eq i32 %conv, 4, !dbg !896
  br i1 %cmp, label %if.then, label %if.else, !dbg !897

if.then:                                          ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !898
  %3 = load %struct.acpi_buffer*, %struct.acpi_buffer** %ret_buffer.addr, align 8, !dbg !900
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %3, i32 0, i32 1, !dbg !901
  %4 = load i8*, i8** %pointer, align 8, !dbg !901
  %5 = load %struct.acpi_buffer*, %struct.acpi_buffer** %ret_buffer.addr, align 8, !dbg !902
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0, !dbg !903
  %call = call i32 @acpi_ut_copy_ipackage_to_epackage(%union.acpi_operand_object* %2, i8* %4, i64* %length) #9, !dbg !904
  store i32 %call, i32* %status, align 4, !dbg !905
  br label %if.end, !dbg !906

if.else:                                          ; preds = %entry
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !907
  %7 = load %struct.acpi_buffer*, %struct.acpi_buffer** %ret_buffer.addr, align 8, !dbg !909
  %pointer2 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 1, !dbg !909
  %8 = load i8*, i8** %pointer2, align 8, !dbg !909
  %9 = bitcast i8* %8 to %union.acpi_object*, !dbg !909
  %10 = load %struct.acpi_buffer*, %struct.acpi_buffer** %ret_buffer.addr, align 8, !dbg !910
  %pointer3 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %10, i32 0, i32 1, !dbg !910
  %11 = load i8*, i8** %pointer3, align 8, !dbg !910
  %add.ptr = getelementptr i8, i8* %11, i64 24, !dbg !910
  %12 = load %struct.acpi_buffer*, %struct.acpi_buffer** %ret_buffer.addr, align 8, !dbg !911
  %length4 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %12, i32 0, i32 0, !dbg !912
  %call5 = call i32 @acpi_ut_copy_isimple_to_esimple(%union.acpi_operand_object* %6, %union.acpi_object* %9, i8* %add.ptr, i64* %length4) #9, !dbg !913
  store i32 %call5, i32* %status, align 4, !dbg !914
  %13 = load %struct.acpi_buffer*, %struct.acpi_buffer** %ret_buffer.addr, align 8, !dbg !915
  %length6 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0, !dbg !916
  %14 = load i64, i64* %length6, align 8, !dbg !917
  %add = add i64 %14, 24, !dbg !917
  store i64 %add, i64* %length6, align 8, !dbg !917
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i32, i32* %status, align 4, !dbg !918
  ret i32 %15, !dbg !918
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ut_copy_ipackage_to_epackage(%union.acpi_operand_object* %internal_object, i8* %buffer, i64* %space_used) #0 !dbg !919 {
entry:
  %internal_object.addr = alloca %union.acpi_operand_object*, align 8
  %buffer.addr = alloca i8*, align 8
  %space_used.addr = alloca i64*, align 8
  %external_object = alloca %union.acpi_object*, align 8
  %status = alloca i32, align 4
  %info = alloca %struct.acpi_pkg_info, align 8
  store %union.acpi_operand_object* %internal_object, %union.acpi_operand_object** %internal_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %internal_object.addr, metadata !923, metadata !DIExpression()), !dbg !924
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !925, metadata !DIExpression()), !dbg !926
  store i64* %space_used, i64** %space_used.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %space_used.addr, metadata !927, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.declare(metadata %union.acpi_object** %external_object, metadata !929, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.declare(metadata i32* %status, metadata !931, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.declare(metadata %struct.acpi_pkg_info* %info, metadata !933, metadata !DIExpression()), !dbg !934
  %0 = load i8*, i8** %buffer.addr, align 8, !dbg !935
  %1 = bitcast i8* %0 to %union.acpi_object*, !dbg !935
  store %union.acpi_object* %1, %union.acpi_object** %external_object, align 8, !dbg !936
  %length = getelementptr inbounds %struct.acpi_pkg_info, %struct.acpi_pkg_info* %info, i32 0, i32 1, !dbg !937
  store i64 24, i64* %length, align 8, !dbg !938
  %2 = load i8*, i8** %buffer.addr, align 8, !dbg !939
  %add.ptr = getelementptr i8, i8* %2, i64 24, !dbg !940
  %free_space = getelementptr inbounds %struct.acpi_pkg_info, %struct.acpi_pkg_info* %info, i32 0, i32 0, !dbg !941
  store i8* %add.ptr, i8** %free_space, align 8, !dbg !942
  %object_space = getelementptr inbounds %struct.acpi_pkg_info, %struct.acpi_pkg_info* %info, i32 0, i32 2, !dbg !943
  store i32 0, i32* %object_space, align 8, !dbg !944
  %num_packages = getelementptr inbounds %struct.acpi_pkg_info, %struct.acpi_pkg_info* %info, i32 0, i32 3, !dbg !945
  store i32 1, i32* %num_packages, align 4, !dbg !946
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !947
  %common = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_common*, !dbg !948
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !949
  %4 = load i8, i8* %type, align 1, !dbg !949
  %conv = zext i8 %4 to i32, !dbg !947
  %5 = load %union.acpi_object*, %union.acpi_object** %external_object, align 8, !dbg !950
  %type1 = bitcast %union.acpi_object* %5 to i32*, !dbg !951
  store i32 %conv, i32* %type1, align 8, !dbg !952
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !953
  %package = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_package*, !dbg !954
  %count = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 9, !dbg !955
  %7 = load i32, i32* %count, align 4, !dbg !955
  %8 = load %union.acpi_object*, %union.acpi_object** %external_object, align 8, !dbg !956
  %package2 = bitcast %union.acpi_object* %8 to %struct.anon.2*, !dbg !957
  %count3 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package2, i32 0, i32 1, !dbg !958
  store i32 %7, i32* %count3, align 4, !dbg !959
  %free_space4 = getelementptr inbounds %struct.acpi_pkg_info, %struct.acpi_pkg_info* %info, i32 0, i32 0, !dbg !960
  %9 = load i8*, i8** %free_space4, align 8, !dbg !960
  %10 = bitcast i8* %9 to %union.acpi_object*, !dbg !960
  %11 = load %union.acpi_object*, %union.acpi_object** %external_object, align 8, !dbg !961
  %package5 = bitcast %union.acpi_object* %11 to %struct.anon.2*, !dbg !962
  %elements = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package5, i32 0, i32 2, !dbg !963
  store %union.acpi_object* %10, %union.acpi_object** %elements, align 8, !dbg !964
  %12 = load %union.acpi_object*, %union.acpi_object** %external_object, align 8, !dbg !965
  %package6 = bitcast %union.acpi_object* %12 to %struct.anon.2*, !dbg !966
  %count7 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package6, i32 0, i32 1, !dbg !967
  %13 = load i32, i32* %count7, align 4, !dbg !967
  %conv8 = zext i32 %13 to i64, !dbg !968
  %mul = mul i64 %conv8, 24, !dbg !969
  %length9 = getelementptr inbounds %struct.acpi_pkg_info, %struct.acpi_pkg_info* %info, i32 0, i32 1, !dbg !970
  %14 = load i64, i64* %length9, align 8, !dbg !971
  %add = add i64 %14, %mul, !dbg !971
  store i64 %add, i64* %length9, align 8, !dbg !971
  %15 = load %union.acpi_object*, %union.acpi_object** %external_object, align 8, !dbg !972
  %package10 = bitcast %union.acpi_object* %15 to %struct.anon.2*, !dbg !973
  %count11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package10, i32 0, i32 1, !dbg !974
  %16 = load i32, i32* %count11, align 4, !dbg !974
  %conv12 = zext i32 %16 to i64, !dbg !972
  %mul13 = mul i64 %conv12, 24, !dbg !975
  %free_space14 = getelementptr inbounds %struct.acpi_pkg_info, %struct.acpi_pkg_info* %info, i32 0, i32 0, !dbg !976
  %17 = load i8*, i8** %free_space14, align 8, !dbg !977
  %add.ptr15 = getelementptr i8, i8* %17, i64 %mul13, !dbg !977
  store i8* %add.ptr15, i8** %free_space14, align 8, !dbg !977
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !978
  %19 = load %union.acpi_object*, %union.acpi_object** %external_object, align 8, !dbg !979
  %20 = bitcast %union.acpi_object* %19 to i8*, !dbg !979
  %21 = bitcast %struct.acpi_pkg_info* %info to i8*, !dbg !980
  %call = call i32 @acpi_ut_walk_package_tree(%union.acpi_operand_object* %18, i8* %20, i32 (i8, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)* @acpi_ut_copy_ielement_to_eelement, i8* %21) #9, !dbg !981
  store i32 %call, i32* %status, align 4, !dbg !982
  %length16 = getelementptr inbounds %struct.acpi_pkg_info, %struct.acpi_pkg_info* %info, i32 0, i32 1, !dbg !983
  %22 = load i64, i64* %length16, align 8, !dbg !983
  %23 = load i64*, i64** %space_used.addr, align 8, !dbg !984
  store i64 %22, i64* %23, align 8, !dbg !985
  %24 = load i32, i32* %status, align 4, !dbg !986
  ret i32 %24, !dbg !986
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ut_copy_isimple_to_esimple(%union.acpi_operand_object* %internal_object, %union.acpi_object* %external_object, i8* %data_space, i64* %buffer_space_used) #0 !dbg !987 {
entry:
  %retval = alloca i32, align 4
  %internal_object.addr = alloca %union.acpi_operand_object*, align 8
  %external_object.addr = alloca %union.acpi_object*, align 8
  %data_space.addr = alloca i8*, align 8
  %buffer_space_used.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object* %internal_object, %union.acpi_operand_object** %internal_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %internal_object.addr, metadata !990, metadata !DIExpression()), !dbg !991
  store %union.acpi_object* %external_object, %union.acpi_object** %external_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %external_object.addr, metadata !992, metadata !DIExpression()), !dbg !993
  store i8* %data_space, i8** %data_space.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data_space.addr, metadata !994, metadata !DIExpression()), !dbg !995
  store i64* %buffer_space_used, i64** %buffer_space_used.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %buffer_space_used.addr, metadata !996, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.declare(metadata i32* %status, metadata !998, metadata !DIExpression()), !dbg !999
  store i32 0, i32* %status, align 4, !dbg !999
  %0 = load i64*, i64** %buffer_space_used.addr, align 8, !dbg !1000
  store i64 0, i64* %0, align 8, !dbg !1001
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1002
  %tobool = icmp ne %union.acpi_operand_object* %1, null, !dbg !1002
  br i1 %tobool, label %if.end, label %if.then, !dbg !1004

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1005
  br label %return, !dbg !1005

if.end:                                           ; preds = %entry
  %2 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1007
  %3 = bitcast %union.acpi_object* %2 to i8*, !dbg !1008
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 24, i1 false), !dbg !1008
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1009
  %common = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_common*, !dbg !1010
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1011
  %5 = load i8, i8* %type, align 1, !dbg !1011
  %conv = zext i8 %5 to i32, !dbg !1009
  %6 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1012
  %type1 = bitcast %union.acpi_object* %6 to i32*, !dbg !1013
  store i32 %conv, i32* %type1, align 8, !dbg !1014
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1015
  %common2 = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_common*, !dbg !1016
  %type3 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common2, i32 0, i32 2, !dbg !1017
  %8 = load i8, i8* %type3, align 1, !dbg !1017
  %conv4 = zext i8 %8 to i32, !dbg !1015
  switch i32 %conv4, label %sw.default61 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb18
    i32 1, label %sw.bb34
    i32 20, label %sw.bb37
    i32 12, label %sw.bb45
    i32 11, label %sw.bb55
  ], !dbg !1018

sw.bb:                                            ; preds = %if.end
  %9 = load i8*, i8** %data_space.addr, align 8, !dbg !1019
  %10 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1021
  %string = bitcast %union.acpi_object* %10 to %struct.anon.0*, !dbg !1022
  %pointer = getelementptr inbounds %struct.anon.0, %struct.anon.0* %string, i32 0, i32 2, !dbg !1023
  store i8* %9, i8** %pointer, align 8, !dbg !1024
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1025
  %string5 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_string*, !dbg !1026
  %length = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string5, i32 0, i32 6, !dbg !1027
  %12 = load i32, i32* %length, align 8, !dbg !1027
  %13 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1028
  %string6 = bitcast %union.acpi_object* %13 to %struct.anon.0*, !dbg !1029
  %length7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %string6, i32 0, i32 1, !dbg !1030
  store i32 %12, i32* %length7, align 4, !dbg !1031
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1032
  %string8 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_string*, !dbg !1032
  %length9 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string8, i32 0, i32 6, !dbg !1032
  %15 = load i32, i32* %length9, align 8, !dbg !1032
  %conv10 = zext i32 %15 to i64, !dbg !1032
  %add = add i64 %conv10, 1, !dbg !1032
  %add11 = add i64 %add, 7, !dbg !1032
  %and = and i64 %add11, -8, !dbg !1032
  %16 = load i64*, i64** %buffer_space_used.addr, align 8, !dbg !1033
  store i64 %and, i64* %16, align 8, !dbg !1034
  %17 = load i8*, i8** %data_space.addr, align 8, !dbg !1035
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1036
  %string12 = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_string*, !dbg !1037
  %pointer13 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string12, i32 0, i32 5, !dbg !1038
  %19 = load i8*, i8** %pointer13, align 8, !dbg !1038
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1039
  %string14 = bitcast %union.acpi_operand_object* %20 to %struct.acpi_object_string*, !dbg !1040
  %length15 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string14, i32 0, i32 6, !dbg !1041
  %21 = load i32, i32* %length15, align 8, !dbg !1041
  %conv16 = zext i32 %21 to i64, !dbg !1042
  %add17 = add i64 %conv16, 1, !dbg !1043
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %19, i64 %add17, i1 false), !dbg !1044
  br label %sw.epilog66, !dbg !1045

sw.bb18:                                          ; preds = %if.end
  %22 = load i8*, i8** %data_space.addr, align 8, !dbg !1046
  %23 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1047
  %buffer = bitcast %union.acpi_object* %23 to %struct.anon.1*, !dbg !1048
  %pointer19 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer, i32 0, i32 2, !dbg !1049
  store i8* %22, i8** %pointer19, align 8, !dbg !1050
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1051
  %buffer20 = bitcast %union.acpi_operand_object* %24 to %struct.acpi_object_buffer*, !dbg !1052
  %length21 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer20, i32 0, i32 6, !dbg !1053
  %25 = load i32, i32* %length21, align 8, !dbg !1053
  %26 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1054
  %buffer22 = bitcast %union.acpi_object* %26 to %struct.anon.1*, !dbg !1055
  %length23 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer22, i32 0, i32 1, !dbg !1056
  store i32 %25, i32* %length23, align 4, !dbg !1057
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1058
  %string24 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_string*, !dbg !1058
  %length25 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string24, i32 0, i32 6, !dbg !1058
  %28 = load i32, i32* %length25, align 8, !dbg !1058
  %conv26 = zext i32 %28 to i64, !dbg !1058
  %add27 = add i64 %conv26, 7, !dbg !1058
  %and28 = and i64 %add27, -8, !dbg !1058
  %29 = load i64*, i64** %buffer_space_used.addr, align 8, !dbg !1059
  store i64 %and28, i64* %29, align 8, !dbg !1060
  %30 = load i8*, i8** %data_space.addr, align 8, !dbg !1061
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1062
  %buffer29 = bitcast %union.acpi_operand_object* %31 to %struct.acpi_object_buffer*, !dbg !1063
  %pointer30 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer29, i32 0, i32 5, !dbg !1064
  %32 = load i8*, i8** %pointer30, align 8, !dbg !1064
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1065
  %buffer31 = bitcast %union.acpi_operand_object* %33 to %struct.acpi_object_buffer*, !dbg !1066
  %length32 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer31, i32 0, i32 6, !dbg !1067
  %34 = load i32, i32* %length32, align 8, !dbg !1067
  %conv33 = zext i32 %34 to i64, !dbg !1065
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %30, i8* align 1 %32, i64 %conv33, i1 false), !dbg !1068
  br label %sw.epilog66, !dbg !1069

sw.bb34:                                          ; preds = %if.end
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1070
  %integer = bitcast %union.acpi_operand_object* %35 to %struct.acpi_object_integer*, !dbg !1071
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1072
  %36 = load i64, i64* %value, align 8, !dbg !1072
  %37 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1073
  %integer35 = bitcast %union.acpi_object* %37 to %struct.anon*, !dbg !1074
  %value36 = getelementptr inbounds %struct.anon, %struct.anon* %integer35, i32 0, i32 1, !dbg !1075
  store i64 %36, i64* %value36, align 8, !dbg !1076
  br label %sw.epilog66, !dbg !1077

sw.bb37:                                          ; preds = %if.end
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1078
  %reference = bitcast %union.acpi_operand_object* %38 to %struct.acpi_object_reference*, !dbg !1079
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 5, !dbg !1080
  %39 = load i8, i8* %class, align 1, !dbg !1080
  %conv38 = zext i8 %39 to i32, !dbg !1078
  switch i32 %conv38, label %sw.default [
    i32 5, label %sw.bb39
  ], !dbg !1081

sw.bb39:                                          ; preds = %sw.bb37
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1082
  %reference40 = bitcast %union.acpi_operand_object* %40 to %struct.acpi_object_reference*, !dbg !1084
  %node = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference40, i32 0, i32 9, !dbg !1085
  %41 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1085
  %42 = bitcast %struct.acpi_namespace_node* %41 to i8*, !dbg !1082
  %43 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1086
  %reference41 = bitcast %union.acpi_object* %43 to %struct.anon.3*, !dbg !1087
  %handle = getelementptr inbounds %struct.anon.3, %struct.anon.3* %reference41, i32 0, i32 2, !dbg !1088
  store i8* %42, i8** %handle, align 8, !dbg !1089
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1090
  %reference42 = bitcast %union.acpi_operand_object* %44 to %struct.acpi_object_reference*, !dbg !1091
  %node43 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference42, i32 0, i32 9, !dbg !1092
  %45 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node43, align 8, !dbg !1092
  %call = call i32 @acpi_ns_get_type(%struct.acpi_namespace_node* %45) #9, !dbg !1093
  %46 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1094
  %reference44 = bitcast %union.acpi_object* %46 to %struct.anon.3*, !dbg !1095
  %actual_type = getelementptr inbounds %struct.anon.3, %struct.anon.3* %reference44, i32 0, i32 1, !dbg !1096
  store i32 %call, i32* %actual_type, align 4, !dbg !1097
  br label %sw.epilog, !dbg !1098

sw.default:                                       ; preds = %sw.bb37
  store i32 8, i32* %retval, align 4, !dbg !1099
  br label %return, !dbg !1099

sw.epilog:                                        ; preds = %sw.bb39
  br label %sw.epilog66, !dbg !1100

sw.bb45:                                          ; preds = %if.end
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1101
  %processor = bitcast %union.acpi_operand_object* %47 to %struct.acpi_object_processor*, !dbg !1102
  %proc_id = getelementptr inbounds %struct.acpi_object_processor, %struct.acpi_object_processor* %processor, i32 0, i32 5, !dbg !1103
  %48 = load i8, i8* %proc_id, align 1, !dbg !1103
  %conv46 = zext i8 %48 to i32, !dbg !1101
  %49 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1104
  %processor47 = bitcast %union.acpi_object* %49 to %struct.anon.4*, !dbg !1105
  %proc_id48 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %processor47, i32 0, i32 1, !dbg !1106
  store i32 %conv46, i32* %proc_id48, align 4, !dbg !1107
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1108
  %processor49 = bitcast %union.acpi_operand_object* %50 to %struct.acpi_object_processor*, !dbg !1109
  %address = getelementptr inbounds %struct.acpi_object_processor, %struct.acpi_object_processor* %processor49, i32 0, i32 9, !dbg !1110
  %51 = load i64, i64* %address, align 8, !dbg !1110
  %52 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1111
  %processor50 = bitcast %union.acpi_object* %52 to %struct.anon.4*, !dbg !1112
  %pblk_address = getelementptr inbounds %struct.anon.4, %struct.anon.4* %processor50, i32 0, i32 2, !dbg !1113
  store i64 %51, i64* %pblk_address, align 8, !dbg !1114
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1115
  %processor51 = bitcast %union.acpi_operand_object* %53 to %struct.acpi_object_processor*, !dbg !1116
  %length52 = getelementptr inbounds %struct.acpi_object_processor, %struct.acpi_object_processor* %processor51, i32 0, i32 6, !dbg !1117
  %54 = load i8, i8* %length52, align 2, !dbg !1117
  %conv53 = zext i8 %54 to i32, !dbg !1115
  %55 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1118
  %processor54 = bitcast %union.acpi_object* %55 to %struct.anon.4*, !dbg !1119
  %pblk_length = getelementptr inbounds %struct.anon.4, %struct.anon.4* %processor54, i32 0, i32 3, !dbg !1120
  store i32 %conv53, i32* %pblk_length, align 8, !dbg !1121
  br label %sw.epilog66, !dbg !1122

sw.bb55:                                          ; preds = %if.end
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1123
  %power_resource = bitcast %union.acpi_operand_object* %56 to %struct.acpi_object_power_resource*, !dbg !1124
  %system_level = getelementptr inbounds %struct.acpi_object_power_resource, %struct.acpi_object_power_resource* %power_resource, i32 0, i32 7, !dbg !1125
  %57 = load i32, i32* %system_level, align 8, !dbg !1125
  %58 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1126
  %power_resource56 = bitcast %union.acpi_object* %58 to %struct.anon.5*, !dbg !1127
  %system_level57 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %power_resource56, i32 0, i32 1, !dbg !1128
  store i32 %57, i32* %system_level57, align 4, !dbg !1129
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1130
  %power_resource58 = bitcast %union.acpi_operand_object* %59 to %struct.acpi_object_power_resource*, !dbg !1131
  %resource_order = getelementptr inbounds %struct.acpi_object_power_resource, %struct.acpi_object_power_resource* %power_resource58, i32 0, i32 8, !dbg !1132
  %60 = load i32, i32* %resource_order, align 4, !dbg !1132
  %61 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1133
  %power_resource59 = bitcast %union.acpi_object* %61 to %struct.anon.5*, !dbg !1134
  %resource_order60 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %power_resource59, i32 0, i32 2, !dbg !1135
  store i32 %60, i32* %resource_order60, align 8, !dbg !1136
  br label %sw.epilog66, !dbg !1137

sw.default61:                                     ; preds = %if.end
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object.addr, align 8, !dbg !1138
  %common62 = bitcast %union.acpi_operand_object* %62 to %struct.acpi_object_common*, !dbg !1138
  %type63 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common62, i32 0, i32 2, !dbg !1138
  %63 = load i8, i8* %type63, align 1, !dbg !1138
  %conv64 = zext i8 %63 to i32, !dbg !1138
  %call65 = call i8* @acpi_ut_get_type_name(i32 %conv64) #9, !dbg !1138
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 188, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %call65) #9, !dbg !1138
  store i32 15, i32* %retval, align 4, !dbg !1139
  br label %return, !dbg !1139

sw.epilog66:                                      ; preds = %sw.bb55, %sw.bb45, %sw.epilog, %sw.bb34, %sw.bb18, %sw.bb
  %64 = load i32, i32* %status, align 4, !dbg !1140
  store i32 %64, i32* %retval, align 4, !dbg !1140
  br label %return, !dbg !1140

return:                                           ; preds = %sw.epilog66, %sw.default61, %sw.default, %if.then
  %65 = load i32, i32* %retval, align 4, !dbg !1141
  ret i32 %65, !dbg !1141
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_copy_eobject_to_iobject(%union.acpi_object* %external_object, %union.acpi_operand_object** %internal_object) #0 !dbg !1142 {
entry:
  %external_object.addr = alloca %union.acpi_object*, align 8
  %internal_object.addr = alloca %union.acpi_operand_object**, align 8
  %status = alloca i32, align 4
  store %union.acpi_object* %external_object, %union.acpi_object** %external_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %external_object.addr, metadata !1145, metadata !DIExpression()), !dbg !1146
  store %union.acpi_operand_object** %internal_object, %union.acpi_operand_object*** %internal_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %internal_object.addr, metadata !1147, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1149, metadata !DIExpression()), !dbg !1150
  %0 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1151
  %type = bitcast %union.acpi_object* %0 to i32*, !dbg !1153
  %1 = load i32, i32* %type, align 8, !dbg !1153
  %cmp = icmp eq i32 %1, 4, !dbg !1154
  br i1 %cmp, label %if.then, label %if.else, !dbg !1155

if.then:                                          ; preds = %entry
  %2 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1156
  %3 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %internal_object.addr, align 8, !dbg !1158
  %call = call i32 @acpi_ut_copy_epackage_to_ipackage(%union.acpi_object* %2, %union.acpi_operand_object** %3) #9, !dbg !1159
  store i32 %call, i32* %status, align 4, !dbg !1160
  br label %if.end, !dbg !1161

if.else:                                          ; preds = %entry
  %4 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1162
  %5 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %internal_object.addr, align 8, !dbg !1164
  %call1 = call i32 @acpi_ut_copy_esimple_to_isimple(%union.acpi_object* %4, %union.acpi_operand_object** %5) #9, !dbg !1165
  store i32 %call1, i32* %status, align 4, !dbg !1166
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %status, align 4, !dbg !1167
  ret i32 %6, !dbg !1167
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ut_copy_epackage_to_ipackage(%union.acpi_object* %external_object, %union.acpi_operand_object** %internal_object) #0 !dbg !1168 {
entry:
  %retval = alloca i32, align 4
  %external_object.addr = alloca %union.acpi_object*, align 8
  %internal_object.addr = alloca %union.acpi_operand_object**, align 8
  %status = alloca i32, align 4
  %package_object = alloca %union.acpi_operand_object*, align 8
  %package_elements = alloca %union.acpi_operand_object**, align 8
  %i = alloca i32, align 4
  store %union.acpi_object* %external_object, %union.acpi_object** %external_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %external_object.addr, metadata !1169, metadata !DIExpression()), !dbg !1170
  store %union.acpi_operand_object** %internal_object, %union.acpi_operand_object*** %internal_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %internal_object.addr, metadata !1171, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1173, metadata !DIExpression()), !dbg !1174
  store i32 0, i32* %status, align 4, !dbg !1174
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %package_object, metadata !1175, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %package_elements, metadata !1177, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1179, metadata !DIExpression()), !dbg !1180
  %0 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1181
  %package = bitcast %union.acpi_object* %0 to %struct.anon.2*, !dbg !1182
  %count = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package, i32 0, i32 1, !dbg !1183
  %1 = load i32, i32* %count, align 4, !dbg !1183
  %call = call %union.acpi_operand_object* @acpi_ut_create_package_object(i32 %1) #9, !dbg !1184
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %package_object, align 8, !dbg !1185
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_object, align 8, !dbg !1186
  %tobool = icmp ne %union.acpi_operand_object* %2, null, !dbg !1186
  br i1 %tobool, label %if.end, label %if.then, !dbg !1188

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !1189
  br label %return, !dbg !1189

if.end:                                           ; preds = %entry
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_object, align 8, !dbg !1191
  %package1 = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_package*, !dbg !1192
  %elements = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package1, i32 0, i32 6, !dbg !1193
  %4 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1193
  store %union.acpi_operand_object** %4, %union.acpi_operand_object*** %package_elements, align 8, !dbg !1194
  store i32 0, i32* %i, align 4, !dbg !1195
  br label %for.cond, !dbg !1197

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !dbg !1198
  %6 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1200
  %package2 = bitcast %union.acpi_object* %6 to %struct.anon.2*, !dbg !1201
  %count3 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package2, i32 0, i32 1, !dbg !1202
  %7 = load i32, i32* %count3, align 4, !dbg !1202
  %cmp = icmp ult i32 %5, %7, !dbg !1203
  br i1 %cmp, label %for.body, label %for.end, !dbg !1204

for.body:                                         ; preds = %for.cond
  %8 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1205
  %package4 = bitcast %union.acpi_object* %8 to %struct.anon.2*, !dbg !1207
  %elements5 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package4, i32 0, i32 2, !dbg !1208
  %9 = load %union.acpi_object*, %union.acpi_object** %elements5, align 8, !dbg !1208
  %10 = load i32, i32* %i, align 4, !dbg !1209
  %idxprom = zext i32 %10 to i64, !dbg !1205
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %9, i64 %idxprom, !dbg !1205
  %11 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %package_elements, align 8, !dbg !1210
  %12 = load i32, i32* %i, align 4, !dbg !1211
  %idxprom6 = zext i32 %12 to i64, !dbg !1210
  %arrayidx7 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %11, i64 %idxprom6, !dbg !1210
  %call8 = call i32 @acpi_ut_copy_eobject_to_iobject(%union.acpi_object* %arrayidx, %union.acpi_operand_object** %arrayidx7) #9, !dbg !1212
  store i32 %call8, i32* %status, align 4, !dbg !1213
  %13 = load i32, i32* %status, align 4, !dbg !1214
  %tobool9 = icmp ne i32 %13, 0, !dbg !1214
  br i1 %tobool9, label %if.then10, label %if.end15, !dbg !1216

if.then10:                                        ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !1217
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_object, align 8, !dbg !1219
  %package11 = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_package*, !dbg !1220
  %count12 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package11, i32 0, i32 9, !dbg !1221
  store i32 %14, i32* %count12, align 4, !dbg !1222
  %16 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %package_elements, align 8, !dbg !1223
  %17 = load i32, i32* %i, align 4, !dbg !1224
  %idxprom13 = zext i32 %17 to i64, !dbg !1223
  %arrayidx14 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %16, i64 %idxprom13, !dbg !1223
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %arrayidx14, align 8, !dbg !1225
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_object, align 8, !dbg !1226
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %18) #9, !dbg !1227
  %19 = load i32, i32* %status, align 4, !dbg !1228
  store i32 %19, i32* %retval, align 4, !dbg !1228
  br label %return, !dbg !1228

if.end15:                                         ; preds = %for.body
  br label %for.inc, !dbg !1229

for.inc:                                          ; preds = %if.end15
  %20 = load i32, i32* %i, align 4, !dbg !1230
  %inc = add i32 %20, 1, !dbg !1230
  store i32 %inc, i32* %i, align 4, !dbg !1230
  br label %for.cond, !dbg !1231, !llvm.loop !1232

for.end:                                          ; preds = %for.cond
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_object, align 8, !dbg !1234
  %package16 = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_package*, !dbg !1235
  %flags = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package16, i32 0, i32 4, !dbg !1236
  %22 = load i8, i8* %flags, align 4, !dbg !1237
  %conv = zext i8 %22 to i32, !dbg !1237
  %or = or i32 %conv, 4, !dbg !1237
  %conv17 = trunc i32 %or to i8, !dbg !1237
  store i8 %conv17, i8* %flags, align 4, !dbg !1237
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_object, align 8, !dbg !1238
  %24 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %internal_object.addr, align 8, !dbg !1239
  store %union.acpi_operand_object* %23, %union.acpi_operand_object** %24, align 8, !dbg !1240
  %25 = load i32, i32* %status, align 4, !dbg !1241
  store i32 %25, i32* %retval, align 4, !dbg !1241
  br label %return, !dbg !1241

return:                                           ; preds = %for.end, %if.then10, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !1242
  ret i32 %26, !dbg !1242
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ut_copy_esimple_to_isimple(%union.acpi_object* %external_object, %union.acpi_operand_object** %ret_internal_object) #0 !dbg !1243 {
entry:
  %retval = alloca i32, align 4
  %external_object.addr = alloca %union.acpi_object*, align 8
  %ret_internal_object.addr = alloca %union.acpi_operand_object**, align 8
  %internal_object = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_object* %external_object, %union.acpi_object** %external_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %external_object.addr, metadata !1244, metadata !DIExpression()), !dbg !1245
  store %union.acpi_operand_object** %ret_internal_object, %union.acpi_operand_object*** %ret_internal_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %ret_internal_object.addr, metadata !1246, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %internal_object, metadata !1248, metadata !DIExpression()), !dbg !1249
  %0 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1250
  %type = bitcast %union.acpi_object* %0 to i32*, !dbg !1251
  %1 = load i32, i32* %type, align 8, !dbg !1251
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 1, label %sw.bb
    i32 20, label %sw.bb
    i32 0, label %sw.bb3
  ], !dbg !1252

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  %2 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1253
  %type1 = bitcast %union.acpi_object* %2 to i32*, !dbg !1253
  %3 = load i32, i32* %type1, align 8, !dbg !1253
  %conv = trunc i32 %3 to i8, !dbg !1253
  %conv2 = zext i8 %conv to i32, !dbg !1253
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 436, i32 1, i32 %conv2) #9, !dbg !1253
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %internal_object, align 8, !dbg !1255
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object, align 8, !dbg !1256
  %tobool = icmp ne %union.acpi_operand_object* %4, null, !dbg !1256
  br i1 %tobool, label %if.end, label %if.then, !dbg !1258

if.then:                                          ; preds = %sw.bb
  store i32 4, i32* %retval, align 4, !dbg !1259
  br label %return, !dbg !1259

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog, !dbg !1261

sw.bb3:                                           ; preds = %entry
  %5 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %ret_internal_object.addr, align 8, !dbg !1262
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %5, align 8, !dbg !1263
  store i32 0, i32* %retval, align 4, !dbg !1264
  br label %return, !dbg !1264

sw.default:                                       ; preds = %entry
  %6 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1265
  %type4 = bitcast %union.acpi_object* %6 to i32*, !dbg !1265
  %7 = load i32, i32* %type4, align 8, !dbg !1265
  %call5 = call i8* @acpi_ut_get_type_name(i32 %7) #9, !dbg !1265
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 451, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8* %call5) #9, !dbg !1265
  store i32 15, i32* %retval, align 4, !dbg !1266
  br label %return, !dbg !1266

sw.epilog:                                        ; preds = %if.end
  %8 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1267
  %type6 = bitcast %union.acpi_object* %8 to i32*, !dbg !1268
  %9 = load i32, i32* %type6, align 8, !dbg !1268
  switch i32 %9, label %sw.default58 [
    i32 2, label %sw.bb7
    i32 3, label %sw.bb27
    i32 1, label %sw.bb52
    i32 20, label %sw.bb55
  ], !dbg !1269

sw.bb7:                                           ; preds = %sw.epilog
  %10 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1270
  %string = bitcast %union.acpi_object* %10 to %struct.anon.0*, !dbg !1270
  %length = getelementptr inbounds %struct.anon.0, %struct.anon.0* %string, i32 0, i32 1, !dbg !1270
  %11 = load i32, i32* %length, align 4, !dbg !1270
  %conv8 = zext i32 %11 to i64, !dbg !1270
  %add = add i64 %conv8, 1, !dbg !1270
  %call9 = call i8* @acpi_os_allocate_zeroed(i64 %add) #9, !dbg !1270
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object, align 8, !dbg !1272
  %string10 = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_string*, !dbg !1273
  %pointer = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string10, i32 0, i32 5, !dbg !1274
  store i8* %call9, i8** %pointer, align 8, !dbg !1275
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object, align 8, !dbg !1276
  %string11 = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_string*, !dbg !1278
  %pointer12 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string11, i32 0, i32 5, !dbg !1279
  %14 = load i8*, i8** %pointer12, align 8, !dbg !1279
  %tobool13 = icmp ne i8* %14, null, !dbg !1276
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !1280

if.then14:                                        ; preds = %sw.bb7
  br label %error_exit, !dbg !1281

if.end15:                                         ; preds = %sw.bb7
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object, align 8, !dbg !1283
  %string16 = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_string*, !dbg !1284
  %pointer17 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string16, i32 0, i32 5, !dbg !1285
  %16 = load i8*, i8** %pointer17, align 8, !dbg !1285
  %17 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1286
  %string18 = bitcast %union.acpi_object* %17 to %struct.anon.0*, !dbg !1287
  %pointer19 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %string18, i32 0, i32 2, !dbg !1288
  %18 = load i8*, i8** %pointer19, align 8, !dbg !1288
  %19 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1289
  %string20 = bitcast %union.acpi_object* %19 to %struct.anon.0*, !dbg !1290
  %length21 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %string20, i32 0, i32 1, !dbg !1291
  %20 = load i32, i32* %length21, align 4, !dbg !1291
  %conv22 = zext i32 %20 to i64, !dbg !1289
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 %18, i64 %conv22, i1 false), !dbg !1292
  %21 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1293
  %string23 = bitcast %union.acpi_object* %21 to %struct.anon.0*, !dbg !1294
  %length24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %string23, i32 0, i32 1, !dbg !1295
  %22 = load i32, i32* %length24, align 4, !dbg !1295
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object, align 8, !dbg !1296
  %string25 = bitcast %union.acpi_operand_object* %23 to %struct.acpi_object_string*, !dbg !1297
  %length26 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string25, i32 0, i32 6, !dbg !1298
  store i32 %22, i32* %length26, align 8, !dbg !1299
  br label %sw.epilog59, !dbg !1300

sw.bb27:                                          ; preds = %sw.epilog
  %24 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1301
  %buffer = bitcast %union.acpi_object* %24 to %struct.anon.1*, !dbg !1301
  %length28 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer, i32 0, i32 1, !dbg !1301
  %25 = load i32, i32* %length28, align 4, !dbg !1301
  %conv29 = zext i32 %25 to i64, !dbg !1301
  %call30 = call i8* @acpi_os_allocate_zeroed(i64 %conv29) #9, !dbg !1301
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object, align 8, !dbg !1302
  %buffer31 = bitcast %union.acpi_operand_object* %26 to %struct.acpi_object_buffer*, !dbg !1303
  %pointer32 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer31, i32 0, i32 5, !dbg !1304
  store i8* %call30, i8** %pointer32, align 8, !dbg !1305
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object, align 8, !dbg !1306
  %buffer33 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_buffer*, !dbg !1308
  %pointer34 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer33, i32 0, i32 5, !dbg !1309
  %28 = load i8*, i8** %pointer34, align 8, !dbg !1309
  %tobool35 = icmp ne i8* %28, null, !dbg !1306
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !1310

if.then36:                                        ; preds = %sw.bb27
  br label %error_exit, !dbg !1311

if.end37:                                         ; preds = %sw.bb27
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object, align 8, !dbg !1313
  %buffer38 = bitcast %union.acpi_operand_object* %29 to %struct.acpi_object_buffer*, !dbg !1314
  %pointer39 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer38, i32 0, i32 5, !dbg !1315
  %30 = load i8*, i8** %pointer39, align 8, !dbg !1315
  %31 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1316
  %buffer40 = bitcast %union.acpi_object* %31 to %struct.anon.1*, !dbg !1317
  %pointer41 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer40, i32 0, i32 2, !dbg !1318
  %32 = load i8*, i8** %pointer41, align 8, !dbg !1318
  %33 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1319
  %buffer42 = bitcast %union.acpi_object* %33 to %struct.anon.1*, !dbg !1320
  %length43 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer42, i32 0, i32 1, !dbg !1321
  %34 = load i32, i32* %length43, align 4, !dbg !1321
  %conv44 = zext i32 %34 to i64, !dbg !1319
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %30, i8* align 1 %32, i64 %conv44, i1 false), !dbg !1322
  %35 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1323
  %buffer45 = bitcast %union.acpi_object* %35 to %struct.anon.1*, !dbg !1324
  %length46 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %buffer45, i32 0, i32 1, !dbg !1325
  %36 = load i32, i32* %length46, align 4, !dbg !1325
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object, align 8, !dbg !1326
  %buffer47 = bitcast %union.acpi_operand_object* %37 to %struct.acpi_object_buffer*, !dbg !1327
  %length48 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer47, i32 0, i32 6, !dbg !1328
  store i32 %36, i32* %length48, align 8, !dbg !1329
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object, align 8, !dbg !1330
  %buffer49 = bitcast %union.acpi_operand_object* %38 to %struct.acpi_object_buffer*, !dbg !1331
  %flags = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer49, i32 0, i32 4, !dbg !1332
  %39 = load i8, i8* %flags, align 4, !dbg !1333
  %conv50 = zext i8 %39 to i32, !dbg !1333
  %or = or i32 %conv50, 4, !dbg !1333
  %conv51 = trunc i32 %or to i8, !dbg !1333
  store i8 %conv51, i8* %flags, align 4, !dbg !1333
  br label %sw.epilog59, !dbg !1334

sw.bb52:                                          ; preds = %sw.epilog
  %40 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1335
  %integer = bitcast %union.acpi_object* %40 to %struct.anon*, !dbg !1336
  %value = getelementptr inbounds %struct.anon, %struct.anon* %integer, i32 0, i32 1, !dbg !1337
  %41 = load i64, i64* %value, align 8, !dbg !1337
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object, align 8, !dbg !1338
  %integer53 = bitcast %union.acpi_operand_object* %42 to %struct.acpi_object_integer*, !dbg !1339
  %value54 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer53, i32 0, i32 6, !dbg !1340
  store i64 %41, i64* %value54, align 8, !dbg !1341
  br label %sw.epilog59, !dbg !1342

sw.bb55:                                          ; preds = %sw.epilog
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object, align 8, !dbg !1343
  %reference = bitcast %union.acpi_operand_object* %43 to %struct.acpi_object_reference*, !dbg !1344
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 5, !dbg !1345
  store i8 2, i8* %class, align 1, !dbg !1346
  %44 = load %union.acpi_object*, %union.acpi_object** %external_object.addr, align 8, !dbg !1347
  %reference56 = bitcast %union.acpi_object* %44 to %struct.anon.3*, !dbg !1348
  %handle = getelementptr inbounds %struct.anon.3, %struct.anon.3* %reference56, i32 0, i32 2, !dbg !1349
  %45 = load i8*, i8** %handle, align 8, !dbg !1349
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object, align 8, !dbg !1350
  %reference57 = bitcast %union.acpi_operand_object* %46 to %struct.acpi_object_reference*, !dbg !1351
  %object = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference57, i32 0, i32 8, !dbg !1352
  store i8* %45, i8** %object, align 8, !dbg !1353
  br label %sw.epilog59, !dbg !1354

sw.default58:                                     ; preds = %sw.epilog
  br label %sw.epilog59, !dbg !1355

sw.epilog59:                                      ; preds = %sw.default58, %sw.bb55, %sw.bb52, %if.end37, %if.end15
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object, align 8, !dbg !1356
  %48 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %ret_internal_object.addr, align 8, !dbg !1357
  store %union.acpi_operand_object* %47, %union.acpi_operand_object** %48, align 8, !dbg !1358
  store i32 0, i32* %retval, align 4, !dbg !1359
  br label %return, !dbg !1359

error_exit:                                       ; preds = %if.then36, %if.then14
  call void @llvm.dbg.label(metadata !1360), !dbg !1361
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %internal_object, align 8, !dbg !1362
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %49) #9, !dbg !1363
  store i32 4, i32* %retval, align 4, !dbg !1364
  br label %return, !dbg !1364

return:                                           ; preds = %error_exit, %sw.epilog59, %sw.default, %sw.bb3, %if.then
  %50 = load i32, i32* %retval, align 4, !dbg !1365
  ret i32 %50, !dbg !1365
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object* %source_desc, %union.acpi_operand_object** %dest_desc, %struct.acpi_walk_state* %walk_state) #0 !dbg !1366 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca %union.acpi_operand_object*, align 8
  %dest_desc.addr = alloca %union.acpi_operand_object**, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object* %source_desc, %union.acpi_operand_object** %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %source_desc.addr, metadata !1369, metadata !DIExpression()), !dbg !1370
  store %union.acpi_operand_object** %dest_desc, %union.acpi_operand_object*** %dest_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %dest_desc.addr, metadata !1371, metadata !DIExpression()), !dbg !1372
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1373, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1375, metadata !DIExpression()), !dbg !1376
  store i32 0, i32* %status, align 4, !dbg !1376
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1377
  %common = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_common*, !dbg !1377
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1377
  %1 = load i8, i8* %type, align 1, !dbg !1377
  %conv = zext i8 %1 to i32, !dbg !1377
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 954, i32 1, i32 %conv) #9, !dbg !1377
  %2 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %dest_desc.addr, align 8, !dbg !1378
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %2, align 8, !dbg !1379
  %3 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %dest_desc.addr, align 8, !dbg !1380
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8, !dbg !1382
  %tobool = icmp ne %union.acpi_operand_object* %4, null, !dbg !1382
  br i1 %tobool, label %if.end, label %if.then, !dbg !1383

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !1384
  br label %return, !dbg !1384

if.end:                                           ; preds = %entry
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1386
  %common1 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_common*, !dbg !1388
  %type2 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common1, i32 0, i32 2, !dbg !1389
  %6 = load i8, i8* %type2, align 1, !dbg !1389
  %conv3 = zext i8 %6 to i32, !dbg !1386
  %cmp = icmp eq i32 %conv3, 4, !dbg !1390
  br i1 %cmp, label %if.then5, label %if.else, !dbg !1391

if.then5:                                         ; preds = %if.end
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1392
  %8 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %dest_desc.addr, align 8, !dbg !1394
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8, !dbg !1395
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1396
  %call6 = call i32 @acpi_ut_copy_ipackage_to_ipackage(%union.acpi_operand_object* %7, %union.acpi_operand_object* %9, %struct.acpi_walk_state* %10) #9, !dbg !1397
  store i32 %call6, i32* %status, align 4, !dbg !1398
  br label %if.end8, !dbg !1399

if.else:                                          ; preds = %if.end
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1400
  %12 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %dest_desc.addr, align 8, !dbg !1402
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8, !dbg !1403
  %call7 = call i32 @acpi_ut_copy_simple_object(%union.acpi_operand_object* %11, %union.acpi_operand_object* %13) #9, !dbg !1404
  store i32 %call7, i32* %status, align 4, !dbg !1405
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %14 = load i32, i32* %status, align 4, !dbg !1406
  %tobool9 = icmp ne i32 %14, 0, !dbg !1406
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !1408

if.then10:                                        ; preds = %if.end8
  %15 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %dest_desc.addr, align 8, !dbg !1409
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %15, align 8, !dbg !1411
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %16) #9, !dbg !1412
  br label %if.end11, !dbg !1413

if.end11:                                         ; preds = %if.then10, %if.end8
  %17 = load i32, i32* %status, align 4, !dbg !1414
  store i32 %17, i32* %retval, align 4, !dbg !1414
  br label %return, !dbg !1414

return:                                           ; preds = %if.end11, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !1415
  ret i32 %18, !dbg !1415
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8*, i32, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ut_copy_ipackage_to_ipackage(%union.acpi_operand_object* %source_obj, %union.acpi_operand_object* %dest_obj, %struct.acpi_walk_state* %walk_state) #0 !dbg !1416 {
entry:
  %retval = alloca i32, align 4
  %source_obj.addr = alloca %union.acpi_operand_object*, align 8
  %dest_obj.addr = alloca %union.acpi_operand_object*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object* %source_obj, %union.acpi_operand_object** %source_obj.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %source_obj.addr, metadata !1419, metadata !DIExpression()), !dbg !1420
  store %union.acpi_operand_object* %dest_obj, %union.acpi_operand_object** %dest_obj.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %dest_obj.addr, metadata !1421, metadata !DIExpression()), !dbg !1422
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1423, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1425, metadata !DIExpression()), !dbg !1426
  store i32 0, i32* %status, align 4, !dbg !1426
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_obj.addr, align 8, !dbg !1427
  %common = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_common*, !dbg !1428
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1429
  %1 = load i8, i8* %type, align 1, !dbg !1429
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_obj.addr, align 8, !dbg !1430
  %common1 = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_common*, !dbg !1431
  %type2 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common1, i32 0, i32 2, !dbg !1432
  store i8 %1, i8* %type2, align 1, !dbg !1433
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_obj.addr, align 8, !dbg !1434
  %common3 = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_common*, !dbg !1435
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common3, i32 0, i32 4, !dbg !1436
  %4 = load i8, i8* %flags, align 4, !dbg !1436
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_obj.addr, align 8, !dbg !1437
  %common4 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_common*, !dbg !1438
  %flags5 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common4, i32 0, i32 4, !dbg !1439
  store i8 %4, i8* %flags5, align 4, !dbg !1440
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_obj.addr, align 8, !dbg !1441
  %package = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_package*, !dbg !1442
  %count = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 9, !dbg !1443
  %7 = load i32, i32* %count, align 4, !dbg !1443
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_obj.addr, align 8, !dbg !1444
  %package6 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_package*, !dbg !1445
  %count7 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package6, i32 0, i32 9, !dbg !1446
  store i32 %7, i32* %count7, align 4, !dbg !1447
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_obj.addr, align 8, !dbg !1448
  %package8 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_package*, !dbg !1448
  %count9 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package8, i32 0, i32 9, !dbg !1448
  %10 = load i32, i32* %count9, align 4, !dbg !1448
  %conv = zext i32 %10 to i64, !dbg !1448
  %add = add i64 %conv, 1, !dbg !1448
  %mul = mul i64 %add, 8, !dbg !1448
  %call = call i8* @acpi_os_allocate_zeroed(i64 %mul) #9, !dbg !1448
  %11 = bitcast i8* %call to %union.acpi_operand_object**, !dbg !1448
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_obj.addr, align 8, !dbg !1449
  %package10 = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_package*, !dbg !1450
  %elements = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package10, i32 0, i32 6, !dbg !1451
  store %union.acpi_operand_object** %11, %union.acpi_operand_object*** %elements, align 8, !dbg !1452
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_obj.addr, align 8, !dbg !1453
  %package11 = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_package*, !dbg !1455
  %elements12 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package11, i32 0, i32 6, !dbg !1456
  %14 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements12, align 8, !dbg !1456
  %tobool = icmp ne %union.acpi_operand_object** %14, null, !dbg !1453
  br i1 %tobool, label %if.end, label %if.then, !dbg !1457

if.then:                                          ; preds = %entry
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 908, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !1458
  store i32 4, i32* %retval, align 4, !dbg !1460
  br label %return, !dbg !1460

if.end:                                           ; preds = %entry
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_obj.addr, align 8, !dbg !1461
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_obj.addr, align 8, !dbg !1462
  %17 = bitcast %union.acpi_operand_object* %16 to i8*, !dbg !1462
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1463
  %19 = bitcast %struct.acpi_walk_state* %18 to i8*, !dbg !1463
  %call13 = call i32 @acpi_ut_walk_package_tree(%union.acpi_operand_object* %15, i8* %17, i32 (i8, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)* @acpi_ut_copy_ielement_to_ielement, i8* %19) #9, !dbg !1464
  store i32 %call13, i32* %status, align 4, !dbg !1465
  %20 = load i32, i32* %status, align 4, !dbg !1466
  %tobool14 = icmp ne i32 %20, 0, !dbg !1466
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !1468

if.then15:                                        ; preds = %if.end
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_obj.addr, align 8, !dbg !1469
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %21) #9, !dbg !1471
  br label %if.end16, !dbg !1472

if.end16:                                         ; preds = %if.then15, %if.end
  %22 = load i32, i32* %status, align 4, !dbg !1473
  store i32 %22, i32* %retval, align 4, !dbg !1473
  br label %return, !dbg !1473

return:                                           ; preds = %if.end16, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !1474
  ret i32 %23, !dbg !1474
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ut_copy_simple_object(%union.acpi_operand_object* %source_desc, %union.acpi_operand_object* %dest_desc) #0 !dbg !1475 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca %union.acpi_operand_object*, align 8
  %dest_desc.addr = alloca %union.acpi_operand_object*, align 8
  %reference_count = alloca i16, align 2
  %next_object = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %copy_size = alloca i64, align 8
  store %union.acpi_operand_object* %source_desc, %union.acpi_operand_object** %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %source_desc.addr, metadata !1478, metadata !DIExpression()), !dbg !1479
  store %union.acpi_operand_object* %dest_desc, %union.acpi_operand_object** %dest_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %dest_desc.addr, metadata !1480, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.declare(metadata i16* %reference_count, metadata !1482, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %next_object, metadata !1484, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1486, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.declare(metadata i64* %copy_size, metadata !1488, metadata !DIExpression()), !dbg !1489
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !1490
  %common = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_common*, !dbg !1491
  %reference_count1 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 3, !dbg !1492
  %1 = load i16, i16* %reference_count1, align 2, !dbg !1492
  store i16 %1, i16* %reference_count, align 2, !dbg !1493
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !1494
  %common2 = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_common*, !dbg !1495
  %next_object3 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common2, i32 0, i32 0, !dbg !1496
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object3, align 8, !dbg !1496
  store %union.acpi_operand_object* %3, %union.acpi_operand_object** %next_object, align 8, !dbg !1497
  store i64 72, i64* %copy_size, align 8, !dbg !1498
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1499
  %5 = bitcast %union.acpi_operand_object* %4 to i8*, !dbg !1499
  %6 = bitcast i8* %5 to %union.acpi_descriptor*, !dbg !1499
  %common4 = bitcast %union.acpi_descriptor* %6 to %struct.acpi_common_descriptor*, !dbg !1499
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common4, i32 0, i32 1, !dbg !1499
  %7 = load i8, i8* %descriptor_type, align 8, !dbg !1499
  %conv = zext i8 %7 to i32, !dbg !1499
  %cmp = icmp eq i32 %conv, 15, !dbg !1501
  br i1 %cmp, label %if.then, label %if.end, !dbg !1502

if.then:                                          ; preds = %entry
  store i64 48, i64* %copy_size, align 8, !dbg !1503
  br label %if.end, !dbg !1505

if.end:                                           ; preds = %if.then, %entry
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !1506
  %9 = bitcast %union.acpi_operand_object* %8 to i8*, !dbg !1506
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1507
  %11 = bitcast %union.acpi_operand_object* %10 to i8*, !dbg !1507
  %12 = load i64, i64* %copy_size, align 8, !dbg !1508
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %11, i64 %12, i1 false), !dbg !1509
  %13 = load i16, i16* %reference_count, align 2, !dbg !1510
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !1511
  %common6 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_common*, !dbg !1512
  %reference_count7 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common6, i32 0, i32 3, !dbg !1513
  store i16 %13, i16* %reference_count7, align 2, !dbg !1514
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object, align 8, !dbg !1515
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !1516
  %common8 = bitcast %union.acpi_operand_object* %16 to %struct.acpi_object_common*, !dbg !1517
  %next_object9 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common8, i32 0, i32 0, !dbg !1518
  store %union.acpi_operand_object* %15, %union.acpi_operand_object** %next_object9, align 8, !dbg !1519
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !1520
  %common10 = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_common*, !dbg !1521
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common10, i32 0, i32 4, !dbg !1522
  %18 = load i8, i8* %flags, align 4, !dbg !1523
  %conv11 = zext i8 %18 to i32, !dbg !1523
  %and = and i32 %conv11, -3, !dbg !1523
  %conv12 = trunc i32 %and to i8, !dbg !1523
  store i8 %conv12, i8* %flags, align 4, !dbg !1523
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !1524
  %common13 = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_common*, !dbg !1525
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common13, i32 0, i32 2, !dbg !1526
  %20 = load i8, i8* %type, align 1, !dbg !1526
  %conv14 = zext i8 %20 to i32, !dbg !1524
  switch i32 %conv14, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb36
    i32 20, label %sw.bb60
    i32 10, label %sw.bb67
    i32 9, label %sw.bb73
    i32 7, label %sw.bb78
  ], !dbg !1527

sw.bb:                                            ; preds = %if.end
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1528
  %buffer = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_buffer*, !dbg !1531
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 5, !dbg !1532
  %22 = load i8*, i8** %pointer, align 8, !dbg !1532
  %tobool = icmp ne i8* %22, null, !dbg !1533
  br i1 %tobool, label %land.lhs.true, label %if.end35, !dbg !1534

land.lhs.true:                                    ; preds = %sw.bb
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1535
  %buffer15 = bitcast %union.acpi_operand_object* %23 to %struct.acpi_object_buffer*, !dbg !1536
  %length = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer15, i32 0, i32 6, !dbg !1537
  %24 = load i32, i32* %length, align 8, !dbg !1537
  %tobool16 = icmp ne i32 %24, 0, !dbg !1538
  br i1 %tobool16, label %if.then17, label %if.end35, !dbg !1539

if.then17:                                        ; preds = %land.lhs.true
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1540
  %buffer18 = bitcast %union.acpi_operand_object* %25 to %struct.acpi_object_buffer*, !dbg !1540
  %length19 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer18, i32 0, i32 6, !dbg !1540
  %26 = load i32, i32* %length19, align 8, !dbg !1540
  %conv20 = zext i32 %26 to i64, !dbg !1540
  %call = call i8* @acpi_os_allocate(i64 %conv20) #9, !dbg !1540
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !1542
  %buffer21 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_buffer*, !dbg !1543
  %pointer22 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer21, i32 0, i32 5, !dbg !1544
  store i8* %call, i8** %pointer22, align 8, !dbg !1545
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !1546
  %buffer23 = bitcast %union.acpi_operand_object* %28 to %struct.acpi_object_buffer*, !dbg !1548
  %pointer24 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer23, i32 0, i32 5, !dbg !1549
  %29 = load i8*, i8** %pointer24, align 8, !dbg !1549
  %tobool25 = icmp ne i8* %29, null, !dbg !1546
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !1550

if.then26:                                        ; preds = %if.then17
  store i32 4, i32* %retval, align 4, !dbg !1551
  br label %return, !dbg !1551

if.end27:                                         ; preds = %if.then17
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !1553
  %buffer28 = bitcast %union.acpi_operand_object* %30 to %struct.acpi_object_buffer*, !dbg !1554
  %pointer29 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer28, i32 0, i32 5, !dbg !1555
  %31 = load i8*, i8** %pointer29, align 8, !dbg !1555
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1556
  %buffer30 = bitcast %union.acpi_operand_object* %32 to %struct.acpi_object_buffer*, !dbg !1557
  %pointer31 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer30, i32 0, i32 5, !dbg !1558
  %33 = load i8*, i8** %pointer31, align 8, !dbg !1558
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1559
  %buffer32 = bitcast %union.acpi_operand_object* %34 to %struct.acpi_object_buffer*, !dbg !1560
  %length33 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer32, i32 0, i32 6, !dbg !1561
  %35 = load i32, i32* %length33, align 8, !dbg !1561
  %conv34 = zext i32 %35 to i64, !dbg !1559
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 1 %33, i64 %conv34, i1 false), !dbg !1562
  br label %if.end35, !dbg !1563

if.end35:                                         ; preds = %if.end27, %land.lhs.true, %sw.bb
  br label %sw.epilog, !dbg !1564

sw.bb36:                                          ; preds = %if.end
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1565
  %string = bitcast %union.acpi_operand_object* %36 to %struct.acpi_object_string*, !dbg !1567
  %pointer37 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 5, !dbg !1568
  %37 = load i8*, i8** %pointer37, align 8, !dbg !1568
  %tobool38 = icmp ne i8* %37, null, !dbg !1565
  br i1 %tobool38, label %if.then39, label %if.end59, !dbg !1569

if.then39:                                        ; preds = %sw.bb36
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1570
  %string40 = bitcast %union.acpi_operand_object* %38 to %struct.acpi_object_string*, !dbg !1570
  %length41 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string40, i32 0, i32 6, !dbg !1570
  %39 = load i32, i32* %length41, align 8, !dbg !1570
  %conv42 = zext i32 %39 to i64, !dbg !1570
  %add = add i64 %conv42, 1, !dbg !1570
  %call43 = call i8* @acpi_os_allocate(i64 %add) #9, !dbg !1570
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !1572
  %string44 = bitcast %union.acpi_operand_object* %40 to %struct.acpi_object_string*, !dbg !1573
  %pointer45 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string44, i32 0, i32 5, !dbg !1574
  store i8* %call43, i8** %pointer45, align 8, !dbg !1575
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !1576
  %string46 = bitcast %union.acpi_operand_object* %41 to %struct.acpi_object_string*, !dbg !1578
  %pointer47 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string46, i32 0, i32 5, !dbg !1579
  %42 = load i8*, i8** %pointer47, align 8, !dbg !1579
  %tobool48 = icmp ne i8* %42, null, !dbg !1576
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !1580

if.then49:                                        ; preds = %if.then39
  store i32 4, i32* %retval, align 4, !dbg !1581
  br label %return, !dbg !1581

if.end50:                                         ; preds = %if.then39
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !1583
  %string51 = bitcast %union.acpi_operand_object* %43 to %struct.acpi_object_string*, !dbg !1584
  %pointer52 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string51, i32 0, i32 5, !dbg !1585
  %44 = load i8*, i8** %pointer52, align 8, !dbg !1585
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1586
  %string53 = bitcast %union.acpi_operand_object* %45 to %struct.acpi_object_string*, !dbg !1587
  %pointer54 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string53, i32 0, i32 5, !dbg !1588
  %46 = load i8*, i8** %pointer54, align 8, !dbg !1588
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1589
  %string55 = bitcast %union.acpi_operand_object* %47 to %struct.acpi_object_string*, !dbg !1590
  %length56 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string55, i32 0, i32 6, !dbg !1591
  %48 = load i32, i32* %length56, align 8, !dbg !1591
  %conv57 = zext i32 %48 to i64, !dbg !1592
  %add58 = add i64 %conv57, 1, !dbg !1593
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %44, i8* align 1 %46, i64 %add58, i1 false), !dbg !1594
  br label %if.end59, !dbg !1595

if.end59:                                         ; preds = %if.end50, %sw.bb36
  br label %sw.epilog, !dbg !1596

sw.bb60:                                          ; preds = %if.end
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1597
  %reference = bitcast %union.acpi_operand_object* %49 to %struct.acpi_object_reference*, !dbg !1599
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 5, !dbg !1600
  %50 = load i8, i8* %class, align 1, !dbg !1600
  %conv61 = zext i8 %50 to i32, !dbg !1597
  %cmp62 = icmp eq i32 %conv61, 4, !dbg !1601
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !1602

if.then64:                                        ; preds = %sw.bb60
  br label %sw.epilog, !dbg !1603

if.end65:                                         ; preds = %sw.bb60
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1605
  %reference66 = bitcast %union.acpi_operand_object* %51 to %struct.acpi_object_reference*, !dbg !1606
  %object = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference66, i32 0, i32 8, !dbg !1607
  %52 = load i8*, i8** %object, align 8, !dbg !1607
  %53 = bitcast i8* %52 to %union.acpi_operand_object*, !dbg !1605
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %53) #9, !dbg !1608
  br label %sw.epilog, !dbg !1609

sw.bb67:                                          ; preds = %if.end
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !1610
  %region = bitcast %union.acpi_operand_object* %54 to %struct.acpi_object_region*, !dbg !1612
  %handler = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 7, !dbg !1613
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler, align 8, !dbg !1613
  %tobool68 = icmp ne %union.acpi_operand_object* %55, null, !dbg !1610
  br i1 %tobool68, label %if.then69, label %if.end72, !dbg !1614

if.then69:                                        ; preds = %sw.bb67
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !1615
  %region70 = bitcast %union.acpi_operand_object* %56 to %struct.acpi_object_region*, !dbg !1617
  %handler71 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region70, i32 0, i32 7, !dbg !1618
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler71, align 8, !dbg !1618
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %57) #9, !dbg !1619
  br label %if.end72, !dbg !1620

if.end72:                                         ; preds = %if.then69, %sw.bb67
  br label %sw.epilog, !dbg !1621

sw.bb73:                                          ; preds = %if.end
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !1622
  %mutex = bitcast %union.acpi_operand_object* %58 to %struct.acpi_object_mutex*, !dbg !1622
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex, i32 0, i32 7, !dbg !1622
  %call74 = call i32 @acpi_os_create_semaphore(i32 1, i32 1, i8** %os_mutex) #9, !dbg !1622
  store i32 %call74, i32* %status, align 4, !dbg !1623
  %59 = load i32, i32* %status, align 4, !dbg !1624
  %tobool75 = icmp ne i32 %59, 0, !dbg !1624
  br i1 %tobool75, label %if.then76, label %if.end77, !dbg !1626

if.then76:                                        ; preds = %sw.bb73
  %60 = load i32, i32* %status, align 4, !dbg !1627
  store i32 %60, i32* %retval, align 4, !dbg !1629
  br label %return, !dbg !1629

if.end77:                                         ; preds = %sw.bb73
  br label %sw.epilog, !dbg !1630

sw.bb78:                                          ; preds = %if.end
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !1631
  %event = bitcast %union.acpi_operand_object* %61 to %struct.acpi_object_event*, !dbg !1632
  %os_semaphore = getelementptr inbounds %struct.acpi_object_event, %struct.acpi_object_event* %event, i32 0, i32 5, !dbg !1633
  %call79 = call i32 @acpi_os_create_semaphore(i32 -1, i32 0, i8** %os_semaphore) #9, !dbg !1634
  store i32 %call79, i32* %status, align 4, !dbg !1635
  %62 = load i32, i32* %status, align 4, !dbg !1636
  %tobool80 = icmp ne i32 %62, 0, !dbg !1636
  br i1 %tobool80, label %if.then81, label %if.end82, !dbg !1638

if.then81:                                        ; preds = %sw.bb78
  %63 = load i32, i32* %status, align 4, !dbg !1639
  store i32 %63, i32* %retval, align 4, !dbg !1641
  br label %return, !dbg !1641

if.end82:                                         ; preds = %sw.bb78
  br label %sw.epilog, !dbg !1642

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !1643

sw.epilog:                                        ; preds = %sw.default, %if.end82, %if.end77, %if.end72, %if.end65, %if.then64, %if.end59, %if.end35
  store i32 0, i32* %retval, align 4, !dbg !1644
  br label %return, !dbg !1644

return:                                           ; preds = %sw.epilog, %if.then81, %if.then76, %if.then49, %if.then26
  %64 = load i32, i32* %retval, align 4, !dbg !1645
  ret i32 %64, !dbg !1645
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_walk_package_tree(%union.acpi_operand_object*, i8*, i32 (i8, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ut_copy_ielement_to_eelement(i8 zeroext %object_type, %union.acpi_operand_object* %source_object, %union.acpi_generic_state* %state, i8* %context) #0 !dbg !1646 {
entry:
  %retval = alloca i32, align 4
  %object_type.addr = alloca i8, align 1
  %source_object.addr = alloca %union.acpi_operand_object*, align 8
  %state.addr = alloca %union.acpi_generic_state*, align 8
  %context.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %info = alloca %struct.acpi_pkg_info*, align 8
  %object_space = alloca i64, align 8
  %this_index = alloca i32, align 4
  %target_object = alloca %union.acpi_object*, align 8
  store i8 %object_type, i8* %object_type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %object_type.addr, metadata !1649, metadata !DIExpression()), !dbg !1650
  store %union.acpi_operand_object* %source_object, %union.acpi_operand_object** %source_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %source_object.addr, metadata !1651, metadata !DIExpression()), !dbg !1652
  store %union.acpi_generic_state* %state, %union.acpi_generic_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %state.addr, metadata !1653, metadata !DIExpression()), !dbg !1654
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1655, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1657, metadata !DIExpression()), !dbg !1658
  store i32 0, i32* %status, align 4, !dbg !1658
  call void @llvm.dbg.declare(metadata %struct.acpi_pkg_info** %info, metadata !1659, metadata !DIExpression()), !dbg !1660
  %0 = load i8*, i8** %context.addr, align 8, !dbg !1661
  %1 = bitcast i8* %0 to %struct.acpi_pkg_info*, !dbg !1662
  store %struct.acpi_pkg_info* %1, %struct.acpi_pkg_info** %info, align 8, !dbg !1660
  call void @llvm.dbg.declare(metadata i64* %object_space, metadata !1663, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.declare(metadata i32* %this_index, metadata !1665, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.declare(metadata %union.acpi_object** %target_object, metadata !1667, metadata !DIExpression()), !dbg !1668
  %2 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state.addr, align 8, !dbg !1669
  %pkg = bitcast %union.acpi_generic_state* %2 to %struct.acpi_pkg_state*, !dbg !1670
  %index = getelementptr inbounds %struct.acpi_pkg_state, %struct.acpi_pkg_state* %pkg, i32 0, i32 5, !dbg !1671
  %3 = load i32, i32* %index, align 8, !dbg !1671
  store i32 %3, i32* %this_index, align 4, !dbg !1672
  %4 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state.addr, align 8, !dbg !1673
  %pkg1 = bitcast %union.acpi_generic_state* %4 to %struct.acpi_pkg_state*, !dbg !1674
  %dest_object = getelementptr inbounds %struct.acpi_pkg_state, %struct.acpi_pkg_state* %pkg1, i32 0, i32 7, !dbg !1675
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_object, align 8, !dbg !1675
  %6 = bitcast %union.acpi_operand_object* %5 to %union.acpi_object*, !dbg !1676
  %package = bitcast %union.acpi_object* %6 to %struct.anon.2*, !dbg !1676
  %elements = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package, i32 0, i32 2, !dbg !1677
  %7 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !1677
  %8 = load i32, i32* %this_index, align 4, !dbg !1678
  %idxprom = zext i32 %8 to i64, !dbg !1679
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %7, i64 %idxprom, !dbg !1679
  store %union.acpi_object* %arrayidx, %union.acpi_object** %target_object, align 8, !dbg !1680
  %9 = load i8, i8* %object_type.addr, align 1, !dbg !1681
  %conv = zext i8 %9 to i32, !dbg !1681
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ], !dbg !1682

sw.bb:                                            ; preds = %entry
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_object.addr, align 8, !dbg !1683
  %11 = load %union.acpi_object*, %union.acpi_object** %target_object, align 8, !dbg !1685
  %12 = load %struct.acpi_pkg_info*, %struct.acpi_pkg_info** %info, align 8, !dbg !1686
  %free_space = getelementptr inbounds %struct.acpi_pkg_info, %struct.acpi_pkg_info* %12, i32 0, i32 0, !dbg !1687
  %13 = load i8*, i8** %free_space, align 8, !dbg !1687
  %call = call i32 @acpi_ut_copy_isimple_to_esimple(%union.acpi_operand_object* %10, %union.acpi_object* %11, i8* %13, i64* %object_space) #9, !dbg !1688
  store i32 %call, i32* %status, align 4, !dbg !1689
  %14 = load i32, i32* %status, align 4, !dbg !1690
  %tobool = icmp ne i32 %14, 0, !dbg !1690
  br i1 %tobool, label %if.then, label %if.end, !dbg !1692

if.then:                                          ; preds = %sw.bb
  %15 = load i32, i32* %status, align 4, !dbg !1693
  store i32 %15, i32* %retval, align 4, !dbg !1695
  br label %return, !dbg !1695

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog, !dbg !1696

sw.bb2:                                           ; preds = %entry
  %16 = load %union.acpi_object*, %union.acpi_object** %target_object, align 8, !dbg !1697
  %type = bitcast %union.acpi_object* %16 to i32*, !dbg !1698
  store i32 4, i32* %type, align 8, !dbg !1699
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_object.addr, align 8, !dbg !1700
  %package3 = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_package*, !dbg !1701
  %count = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package3, i32 0, i32 9, !dbg !1702
  %18 = load i32, i32* %count, align 4, !dbg !1702
  %19 = load %union.acpi_object*, %union.acpi_object** %target_object, align 8, !dbg !1703
  %package4 = bitcast %union.acpi_object* %19 to %struct.anon.2*, !dbg !1704
  %count5 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package4, i32 0, i32 1, !dbg !1705
  store i32 %18, i32* %count5, align 4, !dbg !1706
  %20 = load %struct.acpi_pkg_info*, %struct.acpi_pkg_info** %info, align 8, !dbg !1707
  %free_space6 = getelementptr inbounds %struct.acpi_pkg_info, %struct.acpi_pkg_info* %20, i32 0, i32 0, !dbg !1707
  %21 = load i8*, i8** %free_space6, align 8, !dbg !1707
  %22 = bitcast i8* %21 to %union.acpi_object*, !dbg !1707
  %23 = load %union.acpi_object*, %union.acpi_object** %target_object, align 8, !dbg !1708
  %package7 = bitcast %union.acpi_object* %23 to %struct.anon.2*, !dbg !1709
  %elements8 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package7, i32 0, i32 2, !dbg !1710
  store %union.acpi_object* %22, %union.acpi_object** %elements8, align 8, !dbg !1711
  %24 = load %union.acpi_object*, %union.acpi_object** %target_object, align 8, !dbg !1712
  %25 = bitcast %union.acpi_object* %24 to i8*, !dbg !1712
  %26 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state.addr, align 8, !dbg !1713
  %pkg9 = bitcast %union.acpi_generic_state* %26 to %struct.acpi_pkg_state*, !dbg !1714
  %this_target_obj = getelementptr inbounds %struct.acpi_pkg_state, %struct.acpi_pkg_state* %pkg9, i32 0, i32 9, !dbg !1715
  store i8* %25, i8** %this_target_obj, align 8, !dbg !1716
  %27 = load %union.acpi_object*, %union.acpi_object** %target_object, align 8, !dbg !1717
  %package10 = bitcast %union.acpi_object* %27 to %struct.anon.2*, !dbg !1717
  %count11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %package10, i32 0, i32 1, !dbg !1717
  %28 = load i32, i32* %count11, align 4, !dbg !1717
  %conv12 = zext i32 %28 to i64, !dbg !1717
  %mul = mul i64 %conv12, 24, !dbg !1717
  %add = add i64 %mul, 7, !dbg !1717
  %and = and i64 %add, -8, !dbg !1717
  store i64 %and, i64* %object_space, align 8, !dbg !1718
  br label %sw.epilog, !dbg !1719

sw.default:                                       ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !1720
  br label %return, !dbg !1720

sw.epilog:                                        ; preds = %sw.bb2, %if.end
  %29 = load i64, i64* %object_space, align 8, !dbg !1721
  %30 = load %struct.acpi_pkg_info*, %struct.acpi_pkg_info** %info, align 8, !dbg !1722
  %free_space13 = getelementptr inbounds %struct.acpi_pkg_info, %struct.acpi_pkg_info* %30, i32 0, i32 0, !dbg !1723
  %31 = load i8*, i8** %free_space13, align 8, !dbg !1724
  %add.ptr = getelementptr i8, i8* %31, i64 %29, !dbg !1724
  store i8* %add.ptr, i8** %free_space13, align 8, !dbg !1724
  %32 = load i64, i64* %object_space, align 8, !dbg !1725
  %33 = load %struct.acpi_pkg_info*, %struct.acpi_pkg_info** %info, align 8, !dbg !1726
  %length = getelementptr inbounds %struct.acpi_pkg_info, %struct.acpi_pkg_info* %33, i32 0, i32 1, !dbg !1727
  %34 = load i64, i64* %length, align 8, !dbg !1728
  %add14 = add i64 %34, %32, !dbg !1728
  store i64 %add14, i64* %length, align 8, !dbg !1728
  %35 = load i32, i32* %status, align 4, !dbg !1729
  store i32 %35, i32* %retval, align 4, !dbg !1730
  br label %return, !dbg !1730

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %36 = load i32, i32* %retval, align 4, !dbg !1731
  ret i32 %36, !dbg !1731
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_get_type(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_type_name(i32) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_package_object(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !1732 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1736, metadata !DIExpression()), !dbg !1742
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1746, metadata !DIExpression()), !dbg !1747
  %0 = load i64, i64* %size.addr, align 8, !dbg !1748
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1749, metadata !DIExpression()), !dbg !1750
  br label %do.body, !dbg !1750

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1751, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1755, metadata !DIExpression()), !dbg !1754
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1754
  %conv = zext i1 %cmp to i32, !dbg !1754
  store i32 1, i32* %tmp, align 4, !dbg !1754
  %1 = load i32, i32* %tmp, align 4, !dbg !1754
  %call = call i64 @arch_local_save_flags() #9, !dbg !1756
  store i64 %call, i64* %_flags, align 8, !dbg !1756
  br label %do.end, !dbg !1756

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1757, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1760, metadata !DIExpression()), !dbg !1759
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1759
  %conv6 = zext i1 %cmp5 to i32, !dbg !1759
  store i32 1, i32* %tmp7, align 4, !dbg !1759
  %2 = load i32, i32* %tmp7, align 4, !dbg !1759
  %3 = load i64, i64* %_flags, align 8, !dbg !1761
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1762
  %and.i = and i64 %4, 512, !dbg !1763
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1764
  %lnot.i = xor i1 %tobool.i, true, !dbg !1764
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1764
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1761
  %5 = load i32, i32* %tmp8, align 4, !dbg !1761
  store i32 %5, i32* %tmp1, align 4, !dbg !1756
  %6 = load i32, i32* %tmp1, align 4, !dbg !1750
  %tobool = icmp ne i32 %6, 0, !dbg !1765
  %7 = zext i1 %tobool to i64, !dbg !1765
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1765
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #9, !dbg !1766
  ret i8* %call10, !dbg !1767
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1768 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1775, metadata !DIExpression()), !dbg !1782
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1788, metadata !DIExpression()), !dbg !1789
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1790, metadata !DIExpression()), !dbg !1791
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1792, metadata !DIExpression()), !dbg !1793
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1794, metadata !DIExpression()), !dbg !1798
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1800, metadata !DIExpression()), !dbg !1804
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1806, metadata !DIExpression()), !dbg !1810
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1815, metadata !DIExpression()), !dbg !1816
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1817, metadata !DIExpression()), !dbg !1818
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1819, metadata !DIExpression()), !dbg !1820
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1821, metadata !DIExpression()), !dbg !1822
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1823, metadata !DIExpression()), !dbg !1824
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1825, metadata !DIExpression()), !dbg !1826
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1827, metadata !DIExpression()), !dbg !1828
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1829, metadata !DIExpression()), !dbg !1830
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1831, metadata !DIExpression()), !dbg !1832
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1833, metadata !DIExpression()), !dbg !1834
  %0 = load i64, i64* %size.addr, align 8, !dbg !1835
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1836
  %or = or i32 %1, 256, !dbg !1837
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1838
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !1839
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1840

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1841
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1842
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1843

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1844
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1845
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1846
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !1847
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1824
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1848
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1849
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1850
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1851
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1852
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1853
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !1854
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1854
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1854
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1854
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !1854
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1855
  br label %kmalloc.exit, !dbg !1855

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1856
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1857
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1857
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1859

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1860
  br label %kmalloc_index.exit.i, !dbg !1860

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1861
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1863
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1864

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1865
  br label %kmalloc_index.exit.i, !dbg !1865

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1866
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1868
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1869

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1870
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1871
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1872

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1873
  br label %kmalloc_index.exit.i, !dbg !1873

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1874
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1876
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1877

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1878
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1879
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1880

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1881
  br label %kmalloc_index.exit.i, !dbg !1881

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1882
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1884
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1885

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1886
  br label %kmalloc_index.exit.i, !dbg !1886

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1887
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1889
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1890

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1891
  br label %kmalloc_index.exit.i, !dbg !1891

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1892
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1894
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1895

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1896
  br label %kmalloc_index.exit.i, !dbg !1896

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1897
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1899
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1900

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1901
  br label %kmalloc_index.exit.i, !dbg !1901

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1902
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1904
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1905

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1906
  br label %kmalloc_index.exit.i, !dbg !1906

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1907
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1909
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1910

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1911
  br label %kmalloc_index.exit.i, !dbg !1911

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1912
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1914
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1915

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1916
  br label %kmalloc_index.exit.i, !dbg !1916

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1917
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1919
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1920

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1921
  br label %kmalloc_index.exit.i, !dbg !1921

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1922
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1924
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1925

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1926
  br label %kmalloc_index.exit.i, !dbg !1926

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1927
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1929
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1930

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1931
  br label %kmalloc_index.exit.i, !dbg !1931

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1932
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1934
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1935

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1936
  br label %kmalloc_index.exit.i, !dbg !1936

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1937
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1939
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1940

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1941
  br label %kmalloc_index.exit.i, !dbg !1941

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1942
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1944
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1945

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1946
  br label %kmalloc_index.exit.i, !dbg !1946

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1947
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1949
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1950

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1951
  br label %kmalloc_index.exit.i, !dbg !1951

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1952
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1954
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1955

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1956
  br label %kmalloc_index.exit.i, !dbg !1956

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1957
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1959
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1960

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1961
  br label %kmalloc_index.exit.i, !dbg !1961

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1962
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1964
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1965

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1966
  br label %kmalloc_index.exit.i, !dbg !1966

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1967
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1969
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1970

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1971
  br label %kmalloc_index.exit.i, !dbg !1971

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1972
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1974
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1975

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1976
  br label %kmalloc_index.exit.i, !dbg !1976

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1977
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1979
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1980

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1981
  br label %kmalloc_index.exit.i, !dbg !1981

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1982
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1984
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1985

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1986
  br label %kmalloc_index.exit.i, !dbg !1986

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1987
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1989
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1990

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1991
  br label %kmalloc_index.exit.i, !dbg !1991

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1992
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1994
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1995

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1996
  br label %kmalloc_index.exit.i, !dbg !1996

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1997
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1999
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2000

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2001
  br label %kmalloc_index.exit.i, !dbg !2001

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !2002, !srcloc !2005
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #8, !dbg !2006, !srcloc !2009
  unreachable, !dbg !2010

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2011
  store i32 %45, i32* %index.i, align 4, !dbg !2012
  %46 = load i32, i32* %index.i, align 4, !dbg !2013
  %tobool.i = icmp ne i32 %46, 0, !dbg !2013
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2015

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2016
  br label %kmalloc.exit, !dbg !2016

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2017
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2018
  %and.i.i = and i32 %48, 17, !dbg !2018
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2018
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2018
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2018
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2018
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2020

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2021
  br label %kmalloc_type.exit.i, !dbg !2021

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2022
  %and2.i.i = and i32 %49, 1, !dbg !2023
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2022
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2022
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2022
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2024
  br label %kmalloc_type.exit.i, !dbg !2024

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2025
  %idxprom.i = zext i32 %51 to i64, !dbg !2026
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2026
  %52 = load i32, i32* %index.i, align 4, !dbg !2027
  %idxprom6.i = zext i32 %52 to i64, !dbg !2026
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2026
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2026
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2028
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2029
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2030
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2031
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !2032
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2032
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2032
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2032
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !2032
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1793
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2033
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2034
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2035
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2036
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !2037
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2038
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2039
  store i8* %62, i8** %retval.i, align 8, !dbg !2040
  br label %kmalloc.exit, !dbg !2040

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2041
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2042
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !2043
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2043
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2043
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2043
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !2043
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2044
  br label %kmalloc.exit, !dbg !2044

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2045
  ret i8* %65, !dbg !2046
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !2047 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2054, metadata !DIExpression()), !dbg !2053
  %0 = load i64, i64* %__edi, align 8, !dbg !2053
  store i64 %0, i64* %__edi, align 8, !dbg !2053
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2055, metadata !DIExpression()), !dbg !2053
  %1 = load i64, i64* %__esi, align 8, !dbg !2053
  store i64 %1, i64* %__esi, align 8, !dbg !2053
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2056, metadata !DIExpression()), !dbg !2053
  %2 = load i64, i64* %__edx, align 8, !dbg !2053
  store i64 %2, i64* %__edx, align 8, !dbg !2053
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2057, metadata !DIExpression()), !dbg !2053
  %3 = load i64, i64* %__ecx, align 8, !dbg !2053
  store i64 %3, i64* %__ecx, align 8, !dbg !2053
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2058, metadata !DIExpression()), !dbg !2053
  %4 = load i64, i64* %__eax, align 8, !dbg !2053
  store i64 %4, i64* %__eax, align 8, !dbg !2053
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !2053
  %6 = call i64 @llvm.read_register.i64(metadata !871), !dbg !2059
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !2059, !srcloc !2062
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !2059
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !2059
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2059
  call void @llvm.write_register.i64(metadata !871, i64 %asmresult1), !dbg !2059
  %8 = load i64, i64* %__eax, align 8, !dbg !2059
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !2063, metadata !DIExpression()), !dbg !2065
  store i64 -1, i64* %__mask, align 8, !dbg !2065
  %9 = load i64, i64* %__mask, align 8, !dbg !2065
  store i64 %9, i64* %tmp, align 8, !dbg !2065
  %10 = load i64, i64* %tmp, align 8, !dbg !2065
  %and = and i64 %8, %10, !dbg !2059
  store i64 %and, i64* %__ret, align 8, !dbg !2059
  %11 = load i64, i64* %__ret, align 8, !dbg !2053
  store i64 %11, i64* %tmp2, align 8, !dbg !2066
  %12 = load i64, i64* %tmp2, align 8, !dbg !2053
  ret i64 %12, !dbg !2067
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !2068 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2070, metadata !DIExpression()), !dbg !2075
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2077, metadata !DIExpression()), !dbg !2078
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2079, metadata !DIExpression()), !dbg !2080
  %0 = load i64, i64* %size.addr, align 8, !dbg !2081
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2083
  br i1 %1, label %if.then, label %if.end447, !dbg !2084

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2085
  %tobool = icmp ne i64 %2, 0, !dbg !2085
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2088

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !2089
  br label %return, !dbg !2089

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !2090
  %cmp = icmp ult i64 %3, 4096, !dbg !2092
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2093

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2094
  br label %return, !dbg !2094

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub = sub i64 %4, 1, !dbg !2095
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2095
  br i1 %5, label %cond.true, label %cond.false442, !dbg !2095

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub4 = sub i64 %6, 1, !dbg !2095
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !2095
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !2095

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub6 = sub i64 %8, 1, !dbg !2095
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !2095
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !2095

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !2095

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub9 = sub i64 %9, 1, !dbg !2095
  %and = and i64 %sub9, -9223372036854775808, !dbg !2095
  %tobool10 = icmp ne i64 %and, 0, !dbg !2095
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !2095

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !2095

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub13 = sub i64 %10, 1, !dbg !2095
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !2095
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2095
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2095

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !2095

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub18 = sub i64 %11, 1, !dbg !2095
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !2095
  %tobool20 = icmp ne i64 %and19, 0, !dbg !2095
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2095

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !2095

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub23 = sub i64 %12, 1, !dbg !2095
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !2095
  %tobool25 = icmp ne i64 %and24, 0, !dbg !2095
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !2095

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !2095

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub28 = sub i64 %13, 1, !dbg !2095
  %and29 = and i64 %sub28, 576460752303423488, !dbg !2095
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2095
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !2095

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !2095

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub33 = sub i64 %14, 1, !dbg !2095
  %and34 = and i64 %sub33, 288230376151711744, !dbg !2095
  %tobool35 = icmp ne i64 %and34, 0, !dbg !2095
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !2095

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !2095

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub38 = sub i64 %15, 1, !dbg !2095
  %and39 = and i64 %sub38, 144115188075855872, !dbg !2095
  %tobool40 = icmp ne i64 %and39, 0, !dbg !2095
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2095

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !2095

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub43 = sub i64 %16, 1, !dbg !2095
  %and44 = and i64 %sub43, 72057594037927936, !dbg !2095
  %tobool45 = icmp ne i64 %and44, 0, !dbg !2095
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !2095

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !2095

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub48 = sub i64 %17, 1, !dbg !2095
  %and49 = and i64 %sub48, 36028797018963968, !dbg !2095
  %tobool50 = icmp ne i64 %and49, 0, !dbg !2095
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !2095

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !2095

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub53 = sub i64 %18, 1, !dbg !2095
  %and54 = and i64 %sub53, 18014398509481984, !dbg !2095
  %tobool55 = icmp ne i64 %and54, 0, !dbg !2095
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !2095

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !2095

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub58 = sub i64 %19, 1, !dbg !2095
  %and59 = and i64 %sub58, 9007199254740992, !dbg !2095
  %tobool60 = icmp ne i64 %and59, 0, !dbg !2095
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2095

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !2095

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub63 = sub i64 %20, 1, !dbg !2095
  %and64 = and i64 %sub63, 4503599627370496, !dbg !2095
  %tobool65 = icmp ne i64 %and64, 0, !dbg !2095
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !2095

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !2095

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub68 = sub i64 %21, 1, !dbg !2095
  %and69 = and i64 %sub68, 2251799813685248, !dbg !2095
  %tobool70 = icmp ne i64 %and69, 0, !dbg !2095
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !2095

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !2095

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub73 = sub i64 %22, 1, !dbg !2095
  %and74 = and i64 %sub73, 1125899906842624, !dbg !2095
  %tobool75 = icmp ne i64 %and74, 0, !dbg !2095
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !2095

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !2095

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub78 = sub i64 %23, 1, !dbg !2095
  %and79 = and i64 %sub78, 562949953421312, !dbg !2095
  %tobool80 = icmp ne i64 %and79, 0, !dbg !2095
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !2095

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !2095

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub83 = sub i64 %24, 1, !dbg !2095
  %and84 = and i64 %sub83, 281474976710656, !dbg !2095
  %tobool85 = icmp ne i64 %and84, 0, !dbg !2095
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !2095

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !2095

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub88 = sub i64 %25, 1, !dbg !2095
  %and89 = and i64 %sub88, 140737488355328, !dbg !2095
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2095
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !2095

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !2095

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub93 = sub i64 %26, 1, !dbg !2095
  %and94 = and i64 %sub93, 70368744177664, !dbg !2095
  %tobool95 = icmp ne i64 %and94, 0, !dbg !2095
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !2095

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !2095

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub98 = sub i64 %27, 1, !dbg !2095
  %and99 = and i64 %sub98, 35184372088832, !dbg !2095
  %tobool100 = icmp ne i64 %and99, 0, !dbg !2095
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !2095

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !2095

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub103 = sub i64 %28, 1, !dbg !2095
  %and104 = and i64 %sub103, 17592186044416, !dbg !2095
  %tobool105 = icmp ne i64 %and104, 0, !dbg !2095
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !2095

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !2095

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub108 = sub i64 %29, 1, !dbg !2095
  %and109 = and i64 %sub108, 8796093022208, !dbg !2095
  %tobool110 = icmp ne i64 %and109, 0, !dbg !2095
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !2095

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !2095

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub113 = sub i64 %30, 1, !dbg !2095
  %and114 = and i64 %sub113, 4398046511104, !dbg !2095
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2095
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !2095

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !2095

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub118 = sub i64 %31, 1, !dbg !2095
  %and119 = and i64 %sub118, 2199023255552, !dbg !2095
  %tobool120 = icmp ne i64 %and119, 0, !dbg !2095
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !2095

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !2095

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub123 = sub i64 %32, 1, !dbg !2095
  %and124 = and i64 %sub123, 1099511627776, !dbg !2095
  %tobool125 = icmp ne i64 %and124, 0, !dbg !2095
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !2095

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !2095

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub128 = sub i64 %33, 1, !dbg !2095
  %and129 = and i64 %sub128, 549755813888, !dbg !2095
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2095
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !2095

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !2095

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub133 = sub i64 %34, 1, !dbg !2095
  %and134 = and i64 %sub133, 274877906944, !dbg !2095
  %tobool135 = icmp ne i64 %and134, 0, !dbg !2095
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !2095

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !2095

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub138 = sub i64 %35, 1, !dbg !2095
  %and139 = and i64 %sub138, 137438953472, !dbg !2095
  %tobool140 = icmp ne i64 %and139, 0, !dbg !2095
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !2095

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !2095

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub143 = sub i64 %36, 1, !dbg !2095
  %and144 = and i64 %sub143, 68719476736, !dbg !2095
  %tobool145 = icmp ne i64 %and144, 0, !dbg !2095
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !2095

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !2095

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub148 = sub i64 %37, 1, !dbg !2095
  %and149 = and i64 %sub148, 34359738368, !dbg !2095
  %tobool150 = icmp ne i64 %and149, 0, !dbg !2095
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !2095

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !2095

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub153 = sub i64 %38, 1, !dbg !2095
  %and154 = and i64 %sub153, 17179869184, !dbg !2095
  %tobool155 = icmp ne i64 %and154, 0, !dbg !2095
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !2095

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !2095

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub158 = sub i64 %39, 1, !dbg !2095
  %and159 = and i64 %sub158, 8589934592, !dbg !2095
  %tobool160 = icmp ne i64 %and159, 0, !dbg !2095
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !2095

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !2095

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub163 = sub i64 %40, 1, !dbg !2095
  %and164 = and i64 %sub163, 4294967296, !dbg !2095
  %tobool165 = icmp ne i64 %and164, 0, !dbg !2095
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !2095

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !2095

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub168 = sub i64 %41, 1, !dbg !2095
  %and169 = and i64 %sub168, 2147483648, !dbg !2095
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2095
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !2095

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !2095

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub173 = sub i64 %42, 1, !dbg !2095
  %and174 = and i64 %sub173, 1073741824, !dbg !2095
  %tobool175 = icmp ne i64 %and174, 0, !dbg !2095
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !2095

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !2095

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub178 = sub i64 %43, 1, !dbg !2095
  %and179 = and i64 %sub178, 536870912, !dbg !2095
  %tobool180 = icmp ne i64 %and179, 0, !dbg !2095
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !2095

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !2095

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub183 = sub i64 %44, 1, !dbg !2095
  %and184 = and i64 %sub183, 268435456, !dbg !2095
  %tobool185 = icmp ne i64 %and184, 0, !dbg !2095
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !2095

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !2095

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub188 = sub i64 %45, 1, !dbg !2095
  %and189 = and i64 %sub188, 134217728, !dbg !2095
  %tobool190 = icmp ne i64 %and189, 0, !dbg !2095
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !2095

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !2095

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub193 = sub i64 %46, 1, !dbg !2095
  %and194 = and i64 %sub193, 67108864, !dbg !2095
  %tobool195 = icmp ne i64 %and194, 0, !dbg !2095
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !2095

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !2095

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub198 = sub i64 %47, 1, !dbg !2095
  %and199 = and i64 %sub198, 33554432, !dbg !2095
  %tobool200 = icmp ne i64 %and199, 0, !dbg !2095
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !2095

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !2095

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub203 = sub i64 %48, 1, !dbg !2095
  %and204 = and i64 %sub203, 16777216, !dbg !2095
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2095
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !2095

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !2095

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub208 = sub i64 %49, 1, !dbg !2095
  %and209 = and i64 %sub208, 8388608, !dbg !2095
  %tobool210 = icmp ne i64 %and209, 0, !dbg !2095
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !2095

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !2095

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub213 = sub i64 %50, 1, !dbg !2095
  %and214 = and i64 %sub213, 4194304, !dbg !2095
  %tobool215 = icmp ne i64 %and214, 0, !dbg !2095
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !2095

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !2095

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub218 = sub i64 %51, 1, !dbg !2095
  %and219 = and i64 %sub218, 2097152, !dbg !2095
  %tobool220 = icmp ne i64 %and219, 0, !dbg !2095
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !2095

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !2095

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub223 = sub i64 %52, 1, !dbg !2095
  %and224 = and i64 %sub223, 1048576, !dbg !2095
  %tobool225 = icmp ne i64 %and224, 0, !dbg !2095
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !2095

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !2095

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub228 = sub i64 %53, 1, !dbg !2095
  %and229 = and i64 %sub228, 524288, !dbg !2095
  %tobool230 = icmp ne i64 %and229, 0, !dbg !2095
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !2095

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !2095

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub233 = sub i64 %54, 1, !dbg !2095
  %and234 = and i64 %sub233, 262144, !dbg !2095
  %tobool235 = icmp ne i64 %and234, 0, !dbg !2095
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !2095

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !2095

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub238 = sub i64 %55, 1, !dbg !2095
  %and239 = and i64 %sub238, 131072, !dbg !2095
  %tobool240 = icmp ne i64 %and239, 0, !dbg !2095
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !2095

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !2095

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub243 = sub i64 %56, 1, !dbg !2095
  %and244 = and i64 %sub243, 65536, !dbg !2095
  %tobool245 = icmp ne i64 %and244, 0, !dbg !2095
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !2095

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !2095

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub248 = sub i64 %57, 1, !dbg !2095
  %and249 = and i64 %sub248, 32768, !dbg !2095
  %tobool250 = icmp ne i64 %and249, 0, !dbg !2095
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !2095

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !2095

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub253 = sub i64 %58, 1, !dbg !2095
  %and254 = and i64 %sub253, 16384, !dbg !2095
  %tobool255 = icmp ne i64 %and254, 0, !dbg !2095
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !2095

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !2095

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub258 = sub i64 %59, 1, !dbg !2095
  %and259 = and i64 %sub258, 8192, !dbg !2095
  %tobool260 = icmp ne i64 %and259, 0, !dbg !2095
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !2095

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !2095

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub263 = sub i64 %60, 1, !dbg !2095
  %and264 = and i64 %sub263, 4096, !dbg !2095
  %tobool265 = icmp ne i64 %and264, 0, !dbg !2095
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !2095

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !2095

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub268 = sub i64 %61, 1, !dbg !2095
  %and269 = and i64 %sub268, 2048, !dbg !2095
  %tobool270 = icmp ne i64 %and269, 0, !dbg !2095
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !2095

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !2095

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub273 = sub i64 %62, 1, !dbg !2095
  %and274 = and i64 %sub273, 1024, !dbg !2095
  %tobool275 = icmp ne i64 %and274, 0, !dbg !2095
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !2095

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !2095

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub278 = sub i64 %63, 1, !dbg !2095
  %and279 = and i64 %sub278, 512, !dbg !2095
  %tobool280 = icmp ne i64 %and279, 0, !dbg !2095
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !2095

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !2095

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub283 = sub i64 %64, 1, !dbg !2095
  %and284 = and i64 %sub283, 256, !dbg !2095
  %tobool285 = icmp ne i64 %and284, 0, !dbg !2095
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !2095

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !2095

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub288 = sub i64 %65, 1, !dbg !2095
  %and289 = and i64 %sub288, 128, !dbg !2095
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2095
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !2095

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !2095

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub293 = sub i64 %66, 1, !dbg !2095
  %and294 = and i64 %sub293, 64, !dbg !2095
  %tobool295 = icmp ne i64 %and294, 0, !dbg !2095
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !2095

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !2095

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub298 = sub i64 %67, 1, !dbg !2095
  %and299 = and i64 %sub298, 32, !dbg !2095
  %tobool300 = icmp ne i64 %and299, 0, !dbg !2095
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !2095

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !2095

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub303 = sub i64 %68, 1, !dbg !2095
  %and304 = and i64 %sub303, 16, !dbg !2095
  %tobool305 = icmp ne i64 %and304, 0, !dbg !2095
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !2095

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !2095

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub308 = sub i64 %69, 1, !dbg !2095
  %and309 = and i64 %sub308, 8, !dbg !2095
  %tobool310 = icmp ne i64 %and309, 0, !dbg !2095
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !2095

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !2095

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub313 = sub i64 %70, 1, !dbg !2095
  %and314 = and i64 %sub313, 4, !dbg !2095
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2095
  %71 = zext i1 %tobool315 to i64, !dbg !2095
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !2095
  br label %cond.end, !dbg !2095

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !2095
  br label %cond.end317, !dbg !2095

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !2095
  br label %cond.end319, !dbg !2095

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !2095
  br label %cond.end321, !dbg !2095

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !2095
  br label %cond.end323, !dbg !2095

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !2095
  br label %cond.end325, !dbg !2095

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !2095
  br label %cond.end327, !dbg !2095

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !2095
  br label %cond.end329, !dbg !2095

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !2095
  br label %cond.end331, !dbg !2095

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !2095
  br label %cond.end333, !dbg !2095

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !2095
  br label %cond.end335, !dbg !2095

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !2095
  br label %cond.end337, !dbg !2095

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !2095
  br label %cond.end339, !dbg !2095

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !2095
  br label %cond.end341, !dbg !2095

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !2095
  br label %cond.end343, !dbg !2095

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !2095
  br label %cond.end345, !dbg !2095

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !2095
  br label %cond.end347, !dbg !2095

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !2095
  br label %cond.end349, !dbg !2095

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !2095
  br label %cond.end351, !dbg !2095

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !2095
  br label %cond.end353, !dbg !2095

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !2095
  br label %cond.end355, !dbg !2095

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !2095
  br label %cond.end357, !dbg !2095

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !2095
  br label %cond.end359, !dbg !2095

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !2095
  br label %cond.end361, !dbg !2095

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !2095
  br label %cond.end363, !dbg !2095

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !2095
  br label %cond.end365, !dbg !2095

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !2095
  br label %cond.end367, !dbg !2095

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !2095
  br label %cond.end369, !dbg !2095

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !2095
  br label %cond.end371, !dbg !2095

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !2095
  br label %cond.end373, !dbg !2095

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !2095
  br label %cond.end375, !dbg !2095

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !2095
  br label %cond.end377, !dbg !2095

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !2095
  br label %cond.end379, !dbg !2095

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !2095
  br label %cond.end381, !dbg !2095

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !2095
  br label %cond.end383, !dbg !2095

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !2095
  br label %cond.end385, !dbg !2095

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !2095
  br label %cond.end387, !dbg !2095

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !2095
  br label %cond.end389, !dbg !2095

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !2095
  br label %cond.end391, !dbg !2095

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !2095
  br label %cond.end393, !dbg !2095

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !2095
  br label %cond.end395, !dbg !2095

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !2095
  br label %cond.end397, !dbg !2095

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !2095
  br label %cond.end399, !dbg !2095

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !2095
  br label %cond.end401, !dbg !2095

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !2095
  br label %cond.end403, !dbg !2095

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !2095
  br label %cond.end405, !dbg !2095

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !2095
  br label %cond.end407, !dbg !2095

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !2095
  br label %cond.end409, !dbg !2095

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !2095
  br label %cond.end411, !dbg !2095

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !2095
  br label %cond.end413, !dbg !2095

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !2095
  br label %cond.end415, !dbg !2095

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !2095
  br label %cond.end417, !dbg !2095

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !2095
  br label %cond.end419, !dbg !2095

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !2095
  br label %cond.end421, !dbg !2095

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !2095
  br label %cond.end423, !dbg !2095

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !2095
  br label %cond.end425, !dbg !2095

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !2095
  br label %cond.end427, !dbg !2095

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !2095
  br label %cond.end429, !dbg !2095

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !2095
  br label %cond.end431, !dbg !2095

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !2095
  br label %cond.end433, !dbg !2095

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !2095
  br label %cond.end435, !dbg !2095

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !2095
  br label %cond.end437, !dbg !2095

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !2095
  br label %cond.end440, !dbg !2095

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !2095

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !2095
  br label %cond.end444, !dbg !2095

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !2095
  %sub443 = sub i64 %72, 1, !dbg !2095
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !2095
  br label %cond.end444, !dbg !2095

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !2095
  %sub446 = sub i32 %cond445, 12, !dbg !2096
  %add = add i32 %sub446, 1, !dbg !2097
  store i32 %add, i32* %retval, align 4, !dbg !2098
  br label %return, !dbg !2098

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !2099
  %dec = add i64 %73, -1, !dbg !2099
  store i64 %dec, i64* %size.addr, align 8, !dbg !2099
  %74 = load i64, i64* %size.addr, align 8, !dbg !2100
  %shr = lshr i64 %74, 12, !dbg !2100
  store i64 %shr, i64* %size.addr, align 8, !dbg !2100
  %75 = load i64, i64* %size.addr, align 8, !dbg !2101
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2078
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2102
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2103
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !2102, !srcloc !2104
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2102
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2105
  %add.i = add i32 %79, 1, !dbg !2106
  store i32 %add.i, i32* %retval, align 4, !dbg !2107
  br label %return, !dbg !2107

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2108
  ret i32 %80, !dbg !2108
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !2109 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2070, metadata !DIExpression()), !dbg !2113
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2077, metadata !DIExpression()), !dbg !2115
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2116, metadata !DIExpression()), !dbg !2117
  %0 = load i64, i64* %n.addr, align 8, !dbg !2118
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2115
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2119
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2120
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !2119, !srcloc !2104
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2119
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2121
  %add.i = add i32 %4, 1, !dbg !2122
  %sub = sub i32 %add.i, 1, !dbg !2123
  ret i32 %sub, !dbg !2124
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !2125 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2131, metadata !DIExpression()), !dbg !2132
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2133, metadata !DIExpression()), !dbg !2134
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2135, metadata !DIExpression()), !dbg !2136
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2137, metadata !DIExpression()), !dbg !2138
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2139
  ret i8* %0, !dbg !2140
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ut_copy_ielement_to_ielement(i8 zeroext %object_type, %union.acpi_operand_object* %source_object, %union.acpi_generic_state* %state, i8* %context) #0 !dbg !2141 {
entry:
  %retval = alloca i32, align 4
  %object_type.addr = alloca i8, align 1
  %source_object.addr = alloca %union.acpi_operand_object*, align 8
  %state.addr = alloca %union.acpi_generic_state*, align 8
  %context.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %this_index = alloca i32, align 4
  %this_target_ptr = alloca %union.acpi_operand_object**, align 8
  %target_object = alloca %union.acpi_operand_object*, align 8
  store i8 %object_type, i8* %object_type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %object_type.addr, metadata !2142, metadata !DIExpression()), !dbg !2143
  store %union.acpi_operand_object* %source_object, %union.acpi_operand_object** %source_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %source_object.addr, metadata !2144, metadata !DIExpression()), !dbg !2145
  store %union.acpi_generic_state* %state, %union.acpi_generic_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %state.addr, metadata !2146, metadata !DIExpression()), !dbg !2147
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !2148, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2150, metadata !DIExpression()), !dbg !2151
  store i32 0, i32* %status, align 4, !dbg !2151
  call void @llvm.dbg.declare(metadata i32* %this_index, metadata !2152, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %this_target_ptr, metadata !2154, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %target_object, metadata !2156, metadata !DIExpression()), !dbg !2157
  %0 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state.addr, align 8, !dbg !2158
  %pkg = bitcast %union.acpi_generic_state* %0 to %struct.acpi_pkg_state*, !dbg !2159
  %index = getelementptr inbounds %struct.acpi_pkg_state, %struct.acpi_pkg_state* %pkg, i32 0, i32 5, !dbg !2160
  %1 = load i32, i32* %index, align 8, !dbg !2160
  store i32 %1, i32* %this_index, align 4, !dbg !2161
  %2 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state.addr, align 8, !dbg !2162
  %pkg1 = bitcast %union.acpi_generic_state* %2 to %struct.acpi_pkg_state*, !dbg !2163
  %dest_object = getelementptr inbounds %struct.acpi_pkg_state, %struct.acpi_pkg_state* %pkg1, i32 0, i32 7, !dbg !2164
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_object, align 8, !dbg !2164
  %package = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_package*, !dbg !2165
  %elements = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 6, !dbg !2166
  %4 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !2166
  %5 = load i32, i32* %this_index, align 4, !dbg !2167
  %idxprom = zext i32 %5 to i64, !dbg !2162
  %arrayidx = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %4, i64 %idxprom, !dbg !2162
  store %union.acpi_operand_object** %arrayidx, %union.acpi_operand_object*** %this_target_ptr, align 8, !dbg !2168
  %6 = load i8, i8* %object_type.addr, align 1, !dbg !2169
  %conv = zext i8 %6 to i32, !dbg !2169
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
  ], !dbg !2170

sw.bb:                                            ; preds = %entry
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_object.addr, align 8, !dbg !2171
  %tobool = icmp ne %union.acpi_operand_object* %7, null, !dbg !2171
  br i1 %tobool, label %if.then, label %if.else, !dbg !2174

if.then:                                          ; preds = %sw.bb
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_object.addr, align 8, !dbg !2175
  %common = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_common*, !dbg !2175
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !2175
  %9 = load i8, i8* %type, align 1, !dbg !2175
  %conv2 = zext i8 %9 to i32, !dbg !2175
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 818, i32 1, i32 %conv2) #9, !dbg !2175
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %target_object, align 8, !dbg !2177
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_object, align 8, !dbg !2178
  %tobool3 = icmp ne %union.acpi_operand_object* %10, null, !dbg !2178
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !2180

if.then4:                                         ; preds = %if.then
  store i32 4, i32* %retval, align 4, !dbg !2181
  br label %return, !dbg !2181

if.end:                                           ; preds = %if.then
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_object.addr, align 8, !dbg !2183
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_object, align 8, !dbg !2184
  %call5 = call i32 @acpi_ut_copy_simple_object(%union.acpi_operand_object* %11, %union.acpi_operand_object* %12) #9, !dbg !2185
  store i32 %call5, i32* %status, align 4, !dbg !2186
  %13 = load i32, i32* %status, align 4, !dbg !2187
  %tobool6 = icmp ne i32 %13, 0, !dbg !2187
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !2189

if.then7:                                         ; preds = %if.end
  br label %error_exit, !dbg !2190

if.end8:                                          ; preds = %if.end
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_object, align 8, !dbg !2192
  %15 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %this_target_ptr, align 8, !dbg !2193
  store %union.acpi_operand_object* %14, %union.acpi_operand_object** %15, align 8, !dbg !2194
  br label %if.end9, !dbg !2195

if.else:                                          ; preds = %sw.bb
  %16 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %this_target_ptr, align 8, !dbg !2196
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %16, align 8, !dbg !2198
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end8
  br label %sw.epilog, !dbg !2199

sw.bb10:                                          ; preds = %entry
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_object.addr, align 8, !dbg !2200
  %package11 = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_package*, !dbg !2201
  %count = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package11, i32 0, i32 9, !dbg !2202
  %18 = load i32, i32* %count, align 4, !dbg !2202
  %call12 = call %union.acpi_operand_object* @acpi_ut_create_package_object(i32 %18) #9, !dbg !2203
  store %union.acpi_operand_object* %call12, %union.acpi_operand_object** %target_object, align 8, !dbg !2204
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_object, align 8, !dbg !2205
  %tobool13 = icmp ne %union.acpi_operand_object* %19, null, !dbg !2205
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !2207

if.then14:                                        ; preds = %sw.bb10
  store i32 4, i32* %retval, align 4, !dbg !2208
  br label %return, !dbg !2208

if.end15:                                         ; preds = %sw.bb10
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_object.addr, align 8, !dbg !2210
  %common16 = bitcast %union.acpi_operand_object* %20 to %struct.acpi_object_common*, !dbg !2211
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common16, i32 0, i32 4, !dbg !2212
  %21 = load i8, i8* %flags, align 4, !dbg !2212
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_object, align 8, !dbg !2213
  %common17 = bitcast %union.acpi_operand_object* %22 to %struct.acpi_object_common*, !dbg !2214
  %flags18 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common17, i32 0, i32 4, !dbg !2215
  store i8 %21, i8* %flags18, align 4, !dbg !2216
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_object, align 8, !dbg !2217
  %24 = bitcast %union.acpi_operand_object* %23 to i8*, !dbg !2217
  %25 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state.addr, align 8, !dbg !2218
  %pkg19 = bitcast %union.acpi_generic_state* %25 to %struct.acpi_pkg_state*, !dbg !2219
  %this_target_obj = getelementptr inbounds %struct.acpi_pkg_state, %struct.acpi_pkg_state* %pkg19, i32 0, i32 9, !dbg !2220
  store i8* %24, i8** %this_target_obj, align 8, !dbg !2221
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_object, align 8, !dbg !2222
  %27 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %this_target_ptr, align 8, !dbg !2223
  store %union.acpi_operand_object* %26, %union.acpi_operand_object** %27, align 8, !dbg !2224
  br label %sw.epilog, !dbg !2225

sw.default:                                       ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !2226
  br label %return, !dbg !2226

sw.epilog:                                        ; preds = %if.end15, %if.end9
  %28 = load i32, i32* %status, align 4, !dbg !2227
  store i32 %28, i32* %retval, align 4, !dbg !2228
  br label %return, !dbg !2228

error_exit:                                       ; preds = %if.then7
  call void @llvm.dbg.label(metadata !2229), !dbg !2230
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %target_object, align 8, !dbg !2231
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %29) #9, !dbg !2232
  %30 = load i32, i32* %status, align 4, !dbg !2233
  store i32 %30, i32* %retval, align 4, !dbg !2234
  br label %return, !dbg !2234

return:                                           ; preds = %error_exit, %sw.epilog, %sw.default, %if.then14, %if.then4
  %31 = load i32, i32* %retval, align 4, !dbg !2235
  ret i32 %31, !dbg !2235
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate(i64 %size) #0 !dbg !2236 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1775, metadata !DIExpression()), !dbg !2237
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1788, metadata !DIExpression()), !dbg !2240
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1790, metadata !DIExpression()), !dbg !2241
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1792, metadata !DIExpression()), !dbg !2242
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1794, metadata !DIExpression()), !dbg !2243
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1800, metadata !DIExpression()), !dbg !2245
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1806, metadata !DIExpression()), !dbg !2247
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1815, metadata !DIExpression()), !dbg !2250
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1817, metadata !DIExpression()), !dbg !2251
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1819, metadata !DIExpression()), !dbg !2252
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1821, metadata !DIExpression()), !dbg !2253
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1823, metadata !DIExpression()), !dbg !2254
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1825, metadata !DIExpression()), !dbg !2255
  %flags.addr.i11 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i11, metadata !1827, metadata !DIExpression()), !dbg !2256
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1829, metadata !DIExpression()), !dbg !2257
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1736, metadata !DIExpression()), !dbg !2258
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2262, metadata !DIExpression()), !dbg !2263
  %0 = load i64, i64* %size.addr, align 8, !dbg !2264
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !2265, metadata !DIExpression()), !dbg !2266
  br label %do.body, !dbg !2266

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2267, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2271, metadata !DIExpression()), !dbg !2270
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2270
  %conv = zext i1 %cmp to i32, !dbg !2270
  store i32 1, i32* %tmp, align 4, !dbg !2270
  %1 = load i32, i32* %tmp, align 4, !dbg !2270
  %call = call i64 @arch_local_save_flags() #9, !dbg !2272
  store i64 %call, i64* %_flags, align 8, !dbg !2272
  br label %do.end, !dbg !2272

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !2273, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !2276, metadata !DIExpression()), !dbg !2275
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !2275
  %conv6 = zext i1 %cmp5 to i32, !dbg !2275
  store i32 1, i32* %tmp7, align 4, !dbg !2275
  %2 = load i32, i32* %tmp7, align 4, !dbg !2275
  %3 = load i64, i64* %_flags, align 8, !dbg !2277
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !2278
  %and.i = and i64 %4, 512, !dbg !2279
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !2280
  %lnot.i = xor i1 %tobool.i, true, !dbg !2280
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !2280
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !2277
  %5 = load i32, i32* %tmp8, align 4, !dbg !2277
  store i32 %5, i32* %tmp1, align 4, !dbg !2272
  %6 = load i32, i32* %tmp1, align 4, !dbg !2266
  %tobool = icmp ne i32 %6, 0, !dbg !2281
  %7 = zext i1 %tobool to i64, !dbg !2281
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !2281
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %cond, i32* %flags.addr.i11, align 4
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !2282
  %9 = call i1 @llvm.is.constant.i64(i64 %8) #8, !dbg !2283
  br i1 %9, label %if.then.i, label %if.end9.i, !dbg !2284

if.then.i:                                        ; preds = %do.end
  %10 = load i64, i64* %size.addr.i, align 8, !dbg !2285
  %cmp.i = icmp ugt i64 %10, 8192, !dbg !2286
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2287

if.then1.i:                                       ; preds = %if.then.i
  %11 = load i64, i64* %size.addr.i, align 8, !dbg !2288
  %12 = load i32, i32* %flags.addr.i11, align 4, !dbg !2289
  store i64 %11, i64* %size.addr.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i, align 4
  %13 = load i64, i64* %size.addr.i.i, align 8, !dbg !2290
  %call.i.i = call i32 @get_order(i64 %13) #10, !dbg !2291
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2254
  %14 = load i64, i64* %size.addr.i.i, align 8, !dbg !2292
  %15 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2293
  %16 = load i32, i32* %order.i.i, align 4, !dbg !2294
  store i64 %14, i64* %size.addr.i.i.i, align 8
  store i32 %15, i32* %flags.addr.i.i.i, align 4
  store i32 %16, i32* %order.addr.i.i.i, align 4
  %17 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2295
  %18 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2296
  %19 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2297
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %17, i32 %18, i32 %19) #11, !dbg !2298
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2298
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2298
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2298
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !2298
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2299
  br label %kmalloc.exit, !dbg !2299

if.end.i:                                         ; preds = %if.then.i
  %20 = load i64, i64* %size.addr.i, align 8, !dbg !2300
  store i64 %20, i64* %size.addr.i11.i, align 8
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2301
  %tobool.i.i = icmp ne i64 %21, 0, !dbg !2301
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2302

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2303
  br label %kmalloc_index.exit.i, !dbg !2303

if.end.i.i:                                       ; preds = %if.end.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2304
  %cmp.i.i = icmp ule i64 %22, 8, !dbg !2305
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2306

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2307
  br label %kmalloc_index.exit.i, !dbg !2307

if.end2.i.i:                                      ; preds = %if.end.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2308
  %cmp3.i.i = icmp ugt i64 %23, 64, !dbg !2309
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2310

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2311
  %cmp4.i.i = icmp ule i64 %24, 96, !dbg !2312
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2313

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2314
  br label %kmalloc_index.exit.i, !dbg !2314

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2315
  %cmp7.i.i = icmp ugt i64 %25, 128, !dbg !2316
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2317

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2318
  %cmp9.i.i = icmp ule i64 %26, 192, !dbg !2319
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2320

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2321
  br label %kmalloc_index.exit.i, !dbg !2321

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2322
  %cmp12.i.i = icmp ule i64 %27, 8, !dbg !2323
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2324

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2325
  br label %kmalloc_index.exit.i, !dbg !2325

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2326
  %cmp15.i.i = icmp ule i64 %28, 16, !dbg !2327
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2328

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2329
  br label %kmalloc_index.exit.i, !dbg !2329

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2330
  %cmp18.i.i = icmp ule i64 %29, 32, !dbg !2331
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2332

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2333
  br label %kmalloc_index.exit.i, !dbg !2333

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2334
  %cmp21.i.i = icmp ule i64 %30, 64, !dbg !2335
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2336

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2337
  br label %kmalloc_index.exit.i, !dbg !2337

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2338
  %cmp24.i.i = icmp ule i64 %31, 128, !dbg !2339
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2340

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2341
  br label %kmalloc_index.exit.i, !dbg !2341

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2342
  %cmp27.i.i = icmp ule i64 %32, 256, !dbg !2343
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2344

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2345
  br label %kmalloc_index.exit.i, !dbg !2345

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2346
  %cmp30.i.i = icmp ule i64 %33, 512, !dbg !2347
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2348

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2349
  br label %kmalloc_index.exit.i, !dbg !2349

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2350
  %cmp33.i.i = icmp ule i64 %34, 1024, !dbg !2351
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2352

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2353
  br label %kmalloc_index.exit.i, !dbg !2353

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2354
  %cmp36.i.i = icmp ule i64 %35, 2048, !dbg !2355
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2356

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2357
  br label %kmalloc_index.exit.i, !dbg !2357

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2358
  %cmp39.i.i = icmp ule i64 %36, 4096, !dbg !2359
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2360

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2361
  br label %kmalloc_index.exit.i, !dbg !2361

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2362
  %cmp42.i.i = icmp ule i64 %37, 8192, !dbg !2363
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2364

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2365
  br label %kmalloc_index.exit.i, !dbg !2365

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2366
  %cmp45.i.i = icmp ule i64 %38, 16384, !dbg !2367
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2368

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2369
  br label %kmalloc_index.exit.i, !dbg !2369

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2370
  %cmp48.i.i = icmp ule i64 %39, 32768, !dbg !2371
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2372

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2373
  br label %kmalloc_index.exit.i, !dbg !2373

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2374
  %cmp51.i.i = icmp ule i64 %40, 65536, !dbg !2375
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2376

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2377
  br label %kmalloc_index.exit.i, !dbg !2377

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2378
  %cmp54.i.i = icmp ule i64 %41, 131072, !dbg !2379
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2380

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2381
  br label %kmalloc_index.exit.i, !dbg !2381

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2382
  %cmp57.i.i = icmp ule i64 %42, 262144, !dbg !2383
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2384

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2385
  br label %kmalloc_index.exit.i, !dbg !2385

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2386
  %cmp60.i.i = icmp ule i64 %43, 524288, !dbg !2387
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2388

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2389
  br label %kmalloc_index.exit.i, !dbg !2389

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2390
  %cmp63.i.i = icmp ule i64 %44, 1048576, !dbg !2391
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2392

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2393
  br label %kmalloc_index.exit.i, !dbg !2393

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2394
  %cmp66.i.i = icmp ule i64 %45, 2097152, !dbg !2395
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2396

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2397
  br label %kmalloc_index.exit.i, !dbg !2397

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2398
  %cmp69.i.i = icmp ule i64 %46, 4194304, !dbg !2399
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2400

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2401
  br label %kmalloc_index.exit.i, !dbg !2401

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2402
  %cmp72.i.i = icmp ule i64 %47, 8388608, !dbg !2403
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2404

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2405
  br label %kmalloc_index.exit.i, !dbg !2405

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2406
  %cmp75.i.i = icmp ule i64 %48, 16777216, !dbg !2407
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2408

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2409
  br label %kmalloc_index.exit.i, !dbg !2409

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2410
  %cmp78.i.i = icmp ule i64 %49, 33554432, !dbg !2411
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2412

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2413
  br label %kmalloc_index.exit.i, !dbg !2413

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2414
  %cmp81.i.i = icmp ule i64 %50, 67108864, !dbg !2415
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2416

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2417
  br label %kmalloc_index.exit.i, !dbg !2417

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !2418, !srcloc !2005
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #8, !dbg !2419, !srcloc !2009
  unreachable, !dbg !2420

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %51 = load i32, i32* %retval.i.i, align 4, !dbg !2421
  store i32 %51, i32* %index.i, align 4, !dbg !2422
  %52 = load i32, i32* %index.i, align 4, !dbg !2423
  %tobool.i12 = icmp ne i32 %52, 0, !dbg !2423
  br i1 %tobool.i12, label %if.end4.i, label %if.then3.i, !dbg !2424

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2425
  br label %kmalloc.exit, !dbg !2425

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %53 = load i32, i32* %flags.addr.i11, align 4, !dbg !2426
  store i32 %53, i32* %flags.addr.i13.i, align 4
  %54 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2427
  %and.i.i = and i32 %54, 17, !dbg !2427
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2427
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2427
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2427
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2427
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2428

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2429
  br label %kmalloc_type.exit.i, !dbg !2429

if.end.i16.i:                                     ; preds = %if.end4.i
  %55 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2430
  %and2.i.i = and i32 %55, 1, !dbg !2431
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2430
  %56 = zext i1 %tobool3.i.i to i64, !dbg !2430
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2430
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2432
  br label %kmalloc_type.exit.i, !dbg !2432

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %57 = load i32, i32* %retval.i12.i, align 4, !dbg !2433
  %idxprom.i = zext i32 %57 to i64, !dbg !2434
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2434
  %58 = load i32, i32* %index.i, align 4, !dbg !2435
  %idxprom6.i = zext i32 %58 to i64, !dbg !2434
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2434
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2434
  %60 = load i32, i32* %flags.addr.i11, align 4, !dbg !2436
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !2437
  store %struct.kmem_cache* %59, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %60, i32* %flags.addr.i17.i, align 4
  store i64 %61, i64* %size.addr.i18.i, align 8
  %62 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2438
  %63 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2439
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %62, i32 %63) #11, !dbg !2440
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2440
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2440
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2440
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !2440
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2242
  %64 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2441
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !2442
  %66 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2443
  %67 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2444
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %64, i8* %65, i64 %66, i32 %67) #11, !dbg !2445
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2446
  %68 = load i8*, i8** %ret.i.i, align 8, !dbg !2447
  store i8* %68, i8** %retval.i, align 8, !dbg !2448
  br label %kmalloc.exit, !dbg !2448

if.end9.i:                                        ; preds = %do.end
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !2449
  %70 = load i32, i32* %flags.addr.i11, align 4, !dbg !2450
  %call10.i = call noalias i8* @__kmalloc(i64 %69, i32 %70) #11, !dbg !2451
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2451
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2451
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2451
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !2451
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2452
  br label %kmalloc.exit, !dbg !2452

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %71 = load i8*, i8** %retval.i, align 8, !dbg !2453
  ret i8* %71, !dbg !2454
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_add_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_create_semaphore(i32, i32, i8**) #2

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
!llvm.named.register.rsp = !{!871}
!llvm.module.flags = !{!872, !873, !874, !875}
!llvm.ident = !{!876}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !869, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !24, globals: !868, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utcopy.c", directory: "/home/lizy2001/genbc/linux")
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
!24 = !{!25, !74, !57, !89, !90, !91, !49, !58, !99, !101, !102, !857, !31}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !27, line: 899, size: 192, elements: !28)
!27 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!28 = !{!29, !35, !43, !51, !61, !67, !75, !83}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !27, line: 900, baseType: !30, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !27, line: 635, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !32, line: 21, baseType: !33)
!32 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !34, line: 27, baseType: !7)
!34 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!35 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !26, file: !27, line: 904, baseType: !36, size: 128)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !26, file: !27, line: 901, size: 128, elements: !37)
!37 = !{!38, !39}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !36, file: !27, line: 902, baseType: !30, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !36, file: !27, line: 903, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !32, line: 23, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !34, line: 31, baseType: !42)
!42 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !26, file: !27, line: 910, baseType: !44, size: 128)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !26, file: !27, line: 906, size: 128, elements: !45)
!45 = !{!46, !47, !48}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !44, file: !27, line: 907, baseType: !30, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !44, file: !27, line: 908, baseType: !31, size: 32, offset: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !44, file: !27, line: 909, baseType: !49, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !26, file: !27, line: 916, baseType: !52, size: 128)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !26, file: !27, line: 912, size: 128, elements: !53)
!53 = !{!54, !55, !56}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !27, line: 913, baseType: !30, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !52, file: !27, line: 914, baseType: !31, size: 32, offset: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !52, file: !27, line: 915, baseType: !57, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !32, line: 17, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !34, line: 21, baseType: !60)
!60 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !26, file: !27, line: 922, baseType: !62, size: 128)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !26, file: !27, line: 918, size: 128, elements: !63)
!63 = !{!64, !65, !66}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !62, file: !27, line: 919, baseType: !30, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !62, file: !27, line: 920, baseType: !31, size: 32, offset: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !62, file: !27, line: 921, baseType: !25, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !26, file: !27, line: 928, baseType: !68, size: 128)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !26, file: !27, line: 924, size: 128, elements: !69)
!69 = !{!70, !71, !72}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !27, line: 925, baseType: !30, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !68, file: !27, line: 926, baseType: !30, size: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !68, file: !27, line: 927, baseType: !73, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !27, line: 424, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !26, file: !27, line: 935, baseType: !76, size: 192)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !26, file: !27, line: 930, size: 192, elements: !77)
!77 = !{!78, !79, !80, !82}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !76, file: !27, line: 931, baseType: !30, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !76, file: !27, line: 932, baseType: !31, size: 32, offset: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !76, file: !27, line: 933, baseType: !81, size: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !27, line: 128, baseType: !40)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !76, file: !27, line: 934, baseType: !31, size: 32, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !26, file: !27, line: 941, baseType: !84, size: 96)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !26, file: !27, line: 937, size: 96, elements: !85)
!85 = !{!86, !87, !88}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !84, file: !27, line: 938, baseType: !30, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !84, file: !27, line: 939, baseType: !31, size: 32, offset: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !84, file: !27, line: 940, baseType: !31, size: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !27, line: 127, baseType: !40)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !27, line: 421, baseType: !31)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_info", file: !93, line: 131, size: 192, elements: !94)
!93 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/lizy2001/genbc/linux")
!94 = !{!95, !96, !97, !98}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "free_space", scope: !92, file: !93, line: 132, baseType: !57, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !92, file: !93, line: 133, baseType: !89, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "object_space", scope: !92, file: !93, line: 134, baseType: !31, size: 32, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !92, file: !93, line: 135, baseType: !31, size: 32, offset: 160)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !100, line: 148, baseType: !7)
!100 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!101 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 367, size: 576, elements: !105)
!105 = !{!106, !117, !130, !140, !175, !188, !197, !509, !526, !541, !554, !632, !644, !657, !667, !685, !707, !726, !745, !764, !777, !803, !820, !833, !847, !856}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !104, file: !6, line: 368, baseType: !107, size: 128)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !108)
!108 = !{!109, !110, !111, !112, !116}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !107, file: !6, line: 74, baseType: !103, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !107, file: !6, line: 74, baseType: !58, size: 8, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !107, file: !6, line: 74, baseType: !58, size: 8, offset: 72)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !107, file: !6, line: 74, baseType: !113, size: 16, offset: 80)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !32, line: 19, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !34, line: 24, baseType: !115)
!115 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !107, file: !6, line: 74, baseType: !58, size: 8, offset: 96)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !104, file: !6, line: 369, baseType: !118, size: 192)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125, !129}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !118, file: !6, line: 77, baseType: !103, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !118, file: !6, line: 77, baseType: !58, size: 8, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !118, file: !6, line: 77, baseType: !58, size: 8, offset: 72)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !118, file: !6, line: 77, baseType: !113, size: 16, offset: 80)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !118, file: !6, line: 77, baseType: !58, size: 8, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !118, file: !6, line: 77, baseType: !126, size: 24, offset: 104)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 24, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 3)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !118, file: !6, line: 78, baseType: !40, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !104, file: !6, line: 370, baseType: !131, size: 256)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !132)
!132 = !{!133, !134, !135, !136, !137, !138, !139}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !131, file: !6, line: 94, baseType: !103, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !131, file: !6, line: 94, baseType: !58, size: 8, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !131, file: !6, line: 94, baseType: !58, size: 8, offset: 72)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !131, file: !6, line: 94, baseType: !113, size: 16, offset: 80)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !131, file: !6, line: 94, baseType: !58, size: 8, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !131, file: !6, line: 94, baseType: !49, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !131, file: !6, line: 94, baseType: !31, size: 32, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !104, file: !6, line: 371, baseType: !141, size: 384)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !142)
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151, !152}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !141, file: !6, line: 98, baseType: !103, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !141, file: !6, line: 98, baseType: !58, size: 8, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !141, file: !6, line: 98, baseType: !58, size: 8, offset: 72)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !141, file: !6, line: 98, baseType: !113, size: 16, offset: 80)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !141, file: !6, line: 98, baseType: !58, size: 8, offset: 96)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !141, file: !6, line: 98, baseType: !57, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !141, file: !6, line: 98, baseType: !31, size: 32, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !141, file: !6, line: 99, baseType: !31, size: 32, offset: 224)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !141, file: !6, line: 100, baseType: !57, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !141, file: !6, line: 101, baseType: !153, size: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !155, line: 133, size: 384, elements: !156)
!155 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!156 = !{!157, !158, !159, !160, !161, !170, !171, !172, !173}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !154, file: !155, line: 134, baseType: !103, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !154, file: !155, line: 135, baseType: !58, size: 8, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !154, file: !155, line: 136, baseType: !58, size: 8, offset: 72)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !154, file: !155, line: 137, baseType: !113, size: 16, offset: 80)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !154, file: !155, line: 138, baseType: !162, size: 32, offset: 96)
!162 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !163, line: 327, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!164 = !{!165, !166}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !162, file: !163, line: 328, baseType: !31, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !162, file: !163, line: 329, baseType: !167, size: 32)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 32, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 4)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !154, file: !155, line: 139, baseType: !153, size: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !154, file: !155, line: 140, baseType: !153, size: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !154, file: !155, line: 141, baseType: !153, size: 64, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !154, file: !155, line: 142, baseType: !174, size: 16, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !27, line: 445, baseType: !113)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !104, file: !6, line: 372, baseType: !176, size: 384)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !184, !185, !186, !187}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !176, file: !6, line: 105, baseType: !103, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !176, file: !6, line: 105, baseType: !58, size: 8, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !176, file: !6, line: 105, baseType: !58, size: 8, offset: 72)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !176, file: !6, line: 105, baseType: !113, size: 16, offset: 80)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !176, file: !6, line: 105, baseType: !58, size: 8, offset: 96)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !176, file: !6, line: 105, baseType: !153, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !176, file: !6, line: 106, baseType: !102, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !176, file: !6, line: 107, baseType: !57, size: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !176, file: !6, line: 108, baseType: !31, size: 32, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !176, file: !6, line: 109, baseType: !31, size: 32, offset: 352)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !104, file: !6, line: 373, baseType: !189, size: 192)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !190)
!190 = !{!191, !192, !193, !194, !195, !196}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !189, file: !6, line: 119, baseType: !103, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !189, file: !6, line: 119, baseType: !58, size: 8, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !189, file: !6, line: 119, baseType: !58, size: 8, offset: 72)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !189, file: !6, line: 119, baseType: !113, size: 16, offset: 80)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !189, file: !6, line: 119, baseType: !58, size: 8, offset: 96)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !189, file: !6, line: 119, baseType: !74, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !104, file: !6, line: 374, baseType: !198, size: 448)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 143, size: 448, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !506, !507, !508}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !198, file: !6, line: 144, baseType: !103, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !198, file: !6, line: 144, baseType: !58, size: 8, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !198, file: !6, line: 144, baseType: !58, size: 8, offset: 72)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !198, file: !6, line: 144, baseType: !113, size: 16, offset: 80)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !6, line: 144, baseType: !58, size: 8, offset: 96)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !198, file: !6, line: 144, baseType: !58, size: 8, offset: 104)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !198, file: !6, line: 145, baseType: !58, size: 8, offset: 112)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !198, file: !6, line: 146, baseType: !58, size: 8, offset: 120)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !198, file: !6, line: 147, baseType: !103, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !198, file: !6, line: 148, baseType: !103, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !198, file: !6, line: 149, baseType: !57, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !198, file: !6, line: 153, baseType: !212, size: 64, offset: 320)
!212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !198, file: !6, line: 150, size: 64, elements: !213)
!213 = !{!214, !505}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !212, file: !6, line: 151, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !155, line: 248, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!90, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !221, line: 37, size: 9024, elements: !222)
!221 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !451, !452, !453, !454, !455, !459, !461, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !488, !489, !490, !491, !492, !493, !494, !495, !497, !503}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !220, file: !221, line: 38, baseType: !219, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !220, file: !221, line: 39, baseType: !58, size: 8, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !220, file: !221, line: 40, baseType: !58, size: 8, offset: 72)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !220, file: !221, line: 41, baseType: !113, size: 16, offset: 80)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !220, file: !221, line: 42, baseType: !58, size: 8, offset: 96)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !220, file: !221, line: 43, baseType: !58, size: 8, offset: 104)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !220, file: !221, line: 44, baseType: !58, size: 8, offset: 112)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !220, file: !221, line: 45, baseType: !174, size: 16, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !220, file: !221, line: 46, baseType: !58, size: 8, offset: 144)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !220, file: !221, line: 47, baseType: !58, size: 8, offset: 152)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !220, file: !221, line: 48, baseType: !58, size: 8, offset: 160)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !220, file: !221, line: 49, baseType: !58, size: 8, offset: 168)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !220, file: !221, line: 50, baseType: !58, size: 8, offset: 176)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !220, file: !221, line: 51, baseType: !58, size: 8, offset: 184)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !220, file: !221, line: 52, baseType: !58, size: 8, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !220, file: !221, line: 53, baseType: !58, size: 8, offset: 200)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !220, file: !221, line: 54, baseType: !57, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !220, file: !221, line: 55, baseType: !31, size: 32, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !220, file: !221, line: 56, baseType: !31, size: 32, offset: 352)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !220, file: !221, line: 57, baseType: !31, size: 32, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !220, file: !221, line: 58, baseType: !31, size: 32, offset: 416)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !220, file: !221, line: 60, baseType: !245, size: 640, offset: 448)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !155, line: 893, size: 640, elements: !246)
!246 = !{!247, !248, !249, !250, !251, !252, !333, !334, !449, !450}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !245, file: !155, line: 894, baseType: !57, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !245, file: !155, line: 895, baseType: !57, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !245, file: !155, line: 896, baseType: !57, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !245, file: !155, line: 897, baseType: !57, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !245, file: !155, line: 898, baseType: !57, size: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !245, file: !155, line: 899, baseType: !253, size: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !155, line: 875, size: 1600, elements: !255)
!255 = !{!256, !276, !292}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !254, file: !155, line: 876, baseType: !257, size: 448)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !155, line: 828, size: 448, elements: !258)
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266, !275}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !257, file: !155, line: 829, baseType: !253, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !257, file: !155, line: 829, baseType: !58, size: 8, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !257, file: !155, line: 829, baseType: !58, size: 8, offset: 72)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !257, file: !155, line: 829, baseType: !113, size: 16, offset: 80)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !257, file: !155, line: 829, baseType: !57, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !257, file: !155, line: 829, baseType: !253, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !257, file: !155, line: 829, baseType: !153, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !257, file: !155, line: 829, baseType: !267, size: 64, offset: 320)
!267 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !155, line: 716, size: 64, elements: !268)
!268 = !{!269, !270, !271, !272, !273, !274}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !267, file: !155, line: 717, baseType: !40, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !267, file: !155, line: 718, baseType: !31, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !267, file: !155, line: 719, baseType: !49, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !267, file: !155, line: 720, baseType: !57, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !267, file: !155, line: 721, baseType: !49, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !267, file: !155, line: 722, baseType: !253, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !257, file: !155, line: 829, baseType: !58, size: 8, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !254, file: !155, line: 877, baseType: !277, size: 640)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !155, line: 835, size: 640, elements: !278)
!278 = !{!279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !277, file: !155, line: 836, baseType: !253, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !277, file: !155, line: 836, baseType: !58, size: 8, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !277, file: !155, line: 836, baseType: !58, size: 8, offset: 72)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !277, file: !155, line: 836, baseType: !113, size: 16, offset: 80)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !277, file: !155, line: 836, baseType: !57, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !277, file: !155, line: 836, baseType: !253, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !277, file: !155, line: 836, baseType: !153, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !277, file: !155, line: 836, baseType: !267, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !277, file: !155, line: 836, baseType: !58, size: 8, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !277, file: !155, line: 836, baseType: !49, size: 64, offset: 448)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !277, file: !155, line: 837, baseType: !57, size: 64, offset: 512)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !277, file: !155, line: 838, baseType: !31, size: 32, offset: 576)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !277, file: !155, line: 839, baseType: !31, size: 32, offset: 608)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !254, file: !155, line: 878, baseType: !293, size: 1600)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !155, line: 846, size: 1600, elements: !294)
!294 = !{!295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !293, file: !155, line: 847, baseType: !253, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !293, file: !155, line: 847, baseType: !58, size: 8, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !293, file: !155, line: 847, baseType: !58, size: 8, offset: 72)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !293, file: !155, line: 847, baseType: !113, size: 16, offset: 80)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !293, file: !155, line: 847, baseType: !57, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !293, file: !155, line: 847, baseType: !253, size: 64, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !293, file: !155, line: 847, baseType: !153, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !293, file: !155, line: 847, baseType: !267, size: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !293, file: !155, line: 847, baseType: !58, size: 8, offset: 384)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !293, file: !155, line: 847, baseType: !253, size: 64, offset: 448)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !293, file: !155, line: 848, baseType: !253, size: 64, offset: 512)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !293, file: !155, line: 849, baseType: !49, size: 64, offset: 576)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !293, file: !155, line: 850, baseType: !58, size: 8, offset: 640)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !293, file: !155, line: 851, baseType: !49, size: 64, offset: 704)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !293, file: !155, line: 852, baseType: !49, size: 64, offset: 768)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !293, file: !155, line: 853, baseType: !49, size: 64, offset: 832)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !293, file: !155, line: 854, baseType: !167, size: 32, offset: 896)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !293, file: !155, line: 855, baseType: !31, size: 32, offset: 928)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !293, file: !155, line: 856, baseType: !31, size: 32, offset: 960)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !293, file: !155, line: 857, baseType: !31, size: 32, offset: 992)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !293, file: !155, line: 858, baseType: !31, size: 32, offset: 1024)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !293, file: !155, line: 859, baseType: !31, size: 32, offset: 1056)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !293, file: !155, line: 860, baseType: !31, size: 32, offset: 1088)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !293, file: !155, line: 861, baseType: !31, size: 32, offset: 1120)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !293, file: !155, line: 862, baseType: !31, size: 32, offset: 1152)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !293, file: !155, line: 863, baseType: !31, size: 32, offset: 1184)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !293, file: !155, line: 864, baseType: !31, size: 32, offset: 1216)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !293, file: !155, line: 865, baseType: !31, size: 32, offset: 1248)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !293, file: !155, line: 866, baseType: !31, size: 32, offset: 1280)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !293, file: !155, line: 867, baseType: !31, size: 32, offset: 1312)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !293, file: !155, line: 868, baseType: !113, size: 16, offset: 1344)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !293, file: !155, line: 869, baseType: !58, size: 8, offset: 1360)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !293, file: !155, line: 870, baseType: !58, size: 8, offset: 1368)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !293, file: !155, line: 871, baseType: !58, size: 8, offset: 1376)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !293, file: !155, line: 872, baseType: !330, size: 160, offset: 1384)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 160, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 20)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !245, file: !155, line: 900, baseType: !153, size: 64, offset: 384)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !245, file: !155, line: 901, baseType: !335, size: 64, offset: 448)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !155, line: 663, size: 640, elements: !337)
!337 = !{!338, !346, !359, !368, !377, !390, !404, !416, !428}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !336, file: !155, line: 664, baseType: !339, size: 128)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !155, line: 567, size: 128, elements: !340)
!340 = !{!341, !342, !343, !344, !345}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !155, line: 568, baseType: !74, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !339, file: !155, line: 568, baseType: !58, size: 8, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !339, file: !155, line: 568, baseType: !58, size: 8, offset: 72)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !339, file: !155, line: 568, baseType: !113, size: 16, offset: 80)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !339, file: !155, line: 568, baseType: !113, size: 16, offset: 96)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !336, file: !155, line: 665, baseType: !347, size: 384)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !155, line: 593, size: 384, elements: !348)
!348 = !{!349, !350, !351, !352, !353, !354, !355, !356, !357, !358}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !155, line: 594, baseType: !74, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !347, file: !155, line: 594, baseType: !58, size: 8, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !347, file: !155, line: 594, baseType: !58, size: 8, offset: 72)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !347, file: !155, line: 594, baseType: !113, size: 16, offset: 80)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !347, file: !155, line: 594, baseType: !113, size: 16, offset: 96)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !347, file: !155, line: 594, baseType: !113, size: 16, offset: 112)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !347, file: !155, line: 595, baseType: !253, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !347, file: !155, line: 596, baseType: !57, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !347, file: !155, line: 597, baseType: !57, size: 64, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !347, file: !155, line: 598, baseType: !40, size: 64, offset: 320)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !336, file: !155, line: 666, baseType: !360, size: 192)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !155, line: 573, size: 192, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !155, line: 574, baseType: !74, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !360, file: !155, line: 574, baseType: !58, size: 8, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !360, file: !155, line: 574, baseType: !58, size: 8, offset: 72)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !360, file: !155, line: 574, baseType: !113, size: 16, offset: 80)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !360, file: !155, line: 574, baseType: !113, size: 16, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !360, file: !155, line: 574, baseType: !103, size: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !336, file: !155, line: 667, baseType: !369, size: 192)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !155, line: 604, size: 192, elements: !370)
!370 = !{!371, !372, !373, !374, !375, !376}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !369, file: !155, line: 605, baseType: !74, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !369, file: !155, line: 605, baseType: !58, size: 8, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !369, file: !155, line: 605, baseType: !58, size: 8, offset: 72)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !369, file: !155, line: 605, baseType: !113, size: 16, offset: 80)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !369, file: !155, line: 605, baseType: !113, size: 16, offset: 96)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !369, file: !155, line: 605, baseType: !153, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !336, file: !155, line: 668, baseType: !378, size: 448)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !155, line: 608, size: 448, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388, !389}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !378, file: !155, line: 609, baseType: !74, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !378, file: !155, line: 609, baseType: !58, size: 8, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !378, file: !155, line: 609, baseType: !58, size: 8, offset: 72)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !378, file: !155, line: 609, baseType: !113, size: 16, offset: 80)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !378, file: !155, line: 609, baseType: !113, size: 16, offset: 96)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !378, file: !155, line: 609, baseType: !31, size: 32, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !378, file: !155, line: 610, baseType: !253, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !378, file: !155, line: 611, baseType: !57, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !378, file: !155, line: 612, baseType: !57, size: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !378, file: !155, line: 613, baseType: !31, size: 32, offset: 384)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !336, file: !155, line: 669, baseType: !391, size: 512)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !155, line: 580, size: 512, elements: !392)
!392 = !{!393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !391, file: !155, line: 581, baseType: !74, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !391, file: !155, line: 581, baseType: !58, size: 8, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !391, file: !155, line: 581, baseType: !58, size: 8, offset: 72)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !391, file: !155, line: 581, baseType: !113, size: 16, offset: 80)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !391, file: !155, line: 581, baseType: !113, size: 16, offset: 96)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !391, file: !155, line: 581, baseType: !31, size: 32, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !391, file: !155, line: 582, baseType: !103, size: 64, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !391, file: !155, line: 583, baseType: !103, size: 64, offset: 256)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !391, file: !155, line: 584, baseType: !219, size: 64, offset: 320)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !391, file: !155, line: 585, baseType: !74, size: 64, offset: 384)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !391, file: !155, line: 586, baseType: !31, size: 32, offset: 448)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !336, file: !155, line: 670, baseType: !405, size: 320)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !155, line: 620, size: 320, elements: !406)
!406 = !{!407, !408, !409, !410, !411, !412, !413, !414, !415}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !405, file: !155, line: 621, baseType: !74, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !405, file: !155, line: 621, baseType: !58, size: 8, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !405, file: !155, line: 621, baseType: !58, size: 8, offset: 72)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !405, file: !155, line: 621, baseType: !113, size: 16, offset: 80)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !405, file: !155, line: 621, baseType: !113, size: 16, offset: 96)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !405, file: !155, line: 621, baseType: !58, size: 8, offset: 112)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !405, file: !155, line: 622, baseType: !219, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !405, file: !155, line: 623, baseType: !103, size: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !405, file: !155, line: 624, baseType: !40, size: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !336, file: !155, line: 671, baseType: !417, size: 640)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !155, line: 631, size: 640, elements: !418)
!418 = !{!419, !420, !421, !422, !423, !424}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !417, file: !155, line: 632, baseType: !74, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !417, file: !155, line: 632, baseType: !58, size: 8, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !417, file: !155, line: 632, baseType: !58, size: 8, offset: 72)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !417, file: !155, line: 632, baseType: !113, size: 16, offset: 80)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !417, file: !155, line: 632, baseType: !113, size: 16, offset: 96)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !417, file: !155, line: 633, baseType: !425, size: 512, offset: 128)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 512, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 8)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !336, file: !155, line: 672, baseType: !429, size: 320)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !155, line: 654, size: 320, elements: !430)
!430 = !{!431, !432, !433, !434, !435, !436, !437, !438, !439}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !429, file: !155, line: 655, baseType: !74, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !429, file: !155, line: 655, baseType: !58, size: 8, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !429, file: !155, line: 655, baseType: !58, size: 8, offset: 72)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !429, file: !155, line: 655, baseType: !113, size: 16, offset: 80)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !429, file: !155, line: 655, baseType: !113, size: 16, offset: 96)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !429, file: !155, line: 655, baseType: !58, size: 8, offset: 112)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !429, file: !155, line: 656, baseType: !153, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !429, file: !155, line: 657, baseType: !103, size: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !429, file: !155, line: 658, baseType: !440, size: 64, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !155, line: 645, size: 128, elements: !442)
!442 = !{!443, !448}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !441, file: !155, line: 646, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !27, line: 1052, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !73, !31, !74}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !441, file: !155, line: 647, baseType: !74, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !245, file: !155, line: 902, baseType: !253, size: 64, offset: 512)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !245, file: !155, line: 903, baseType: !31, size: 32, offset: 576)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !220, file: !221, line: 61, baseType: !31, size: 32, offset: 1088)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !220, file: !221, line: 62, baseType: !31, size: 32, offset: 1120)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !220, file: !221, line: 63, baseType: !113, size: 16, offset: 1152)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !220, file: !221, line: 64, baseType: !58, size: 8, offset: 1168)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !220, file: !221, line: 66, baseType: !456, size: 2688, offset: 1216)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 2688, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 7)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !220, file: !221, line: 67, baseType: !460, size: 3072, offset: 3904)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 3072, elements: !426)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !220, file: !221, line: 68, baseType: !462, size: 576, offset: 6976)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 576, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 9)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !220, file: !221, line: 69, baseType: !102, size: 64, offset: 7552)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !220, file: !221, line: 71, baseType: !57, size: 64, offset: 7616)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !220, file: !221, line: 72, baseType: !102, size: 64, offset: 7680)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !220, file: !221, line: 73, baseType: !335, size: 64, offset: 7744)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !220, file: !221, line: 74, baseType: !153, size: 64, offset: 7808)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !220, file: !221, line: 75, baseType: !103, size: 64, offset: 7872)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !220, file: !221, line: 76, baseType: !153, size: 64, offset: 7936)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !220, file: !221, line: 77, baseType: !253, size: 64, offset: 8000)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !220, file: !221, line: 78, baseType: !103, size: 64, offset: 8064)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !220, file: !221, line: 79, baseType: !153, size: 64, offset: 8128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !220, file: !221, line: 80, baseType: !49, size: 64, offset: 8192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !220, file: !221, line: 81, baseType: !253, size: 64, offset: 8256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !220, file: !221, line: 82, baseType: !478, size: 64, offset: 8320)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !155, line: 702, size: 128, elements: !481)
!481 = !{!482, !483, !484, !485, !486, !487}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !480, file: !155, line: 706, baseType: !31, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !480, file: !155, line: 707, baseType: !31, size: 32, offset: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !480, file: !155, line: 708, baseType: !113, size: 16, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !480, file: !155, line: 709, baseType: !58, size: 8, offset: 80)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !480, file: !155, line: 710, baseType: !58, size: 8, offset: 88)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !480, file: !155, line: 711, baseType: !58, size: 8, offset: 96)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !220, file: !221, line: 83, baseType: !253, size: 64, offset: 8384)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !220, file: !221, line: 84, baseType: !103, size: 64, offset: 8448)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !220, file: !221, line: 85, baseType: !335, size: 64, offset: 8512)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !220, file: !221, line: 86, baseType: !103, size: 64, offset: 8576)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !220, file: !221, line: 87, baseType: !335, size: 64, offset: 8640)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !220, file: !221, line: 88, baseType: !253, size: 64, offset: 8704)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !220, file: !221, line: 89, baseType: !253, size: 64, offset: 8768)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !220, file: !221, line: 90, baseType: !496, size: 64, offset: 8832)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !220, file: !221, line: 91, baseType: !498, size: 64, offset: 8896)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !155, line: 637, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!90, !219, !502}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !220, file: !221, line: 92, baseType: !504, size: 64, offset: 8960)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !155, line: 641, baseType: !216)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !212, file: !6, line: 152, baseType: !103, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !198, file: !6, line: 155, baseType: !31, size: 32, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !198, file: !6, line: 156, baseType: !174, size: 16, offset: 416)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !198, file: !6, line: 157, baseType: !58, size: 8, offset: 432)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !104, file: !6, line: 375, baseType: !510, size: 576)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !511)
!511 = !{!512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !510, file: !6, line: 123, baseType: !103, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !510, file: !6, line: 123, baseType: !58, size: 8, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !510, file: !6, line: 123, baseType: !58, size: 8, offset: 72)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !510, file: !6, line: 123, baseType: !113, size: 16, offset: 80)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !510, file: !6, line: 123, baseType: !58, size: 8, offset: 96)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !510, file: !6, line: 123, baseType: !58, size: 8, offset: 104)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !510, file: !6, line: 124, baseType: !113, size: 16, offset: 112)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !510, file: !6, line: 125, baseType: !74, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !510, file: !6, line: 126, baseType: !40, size: 64, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !510, file: !6, line: 127, baseType: !496, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !510, file: !6, line: 128, baseType: !103, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !510, file: !6, line: 129, baseType: !103, size: 64, offset: 384)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !510, file: !6, line: 130, baseType: !153, size: 64, offset: 448)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !510, file: !6, line: 131, baseType: !58, size: 8, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !104, file: !6, line: 376, baseType: !527, size: 448)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 448, elements: !528)
!528 = !{!529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !540}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !527, file: !6, line: 135, baseType: !103, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !527, file: !6, line: 135, baseType: !58, size: 8, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !527, file: !6, line: 135, baseType: !58, size: 8, offset: 72)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !527, file: !6, line: 135, baseType: !113, size: 16, offset: 80)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !527, file: !6, line: 135, baseType: !58, size: 8, offset: 96)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !527, file: !6, line: 135, baseType: !58, size: 8, offset: 104)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !527, file: !6, line: 136, baseType: !153, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !527, file: !6, line: 137, baseType: !103, size: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !527, file: !6, line: 138, baseType: !103, size: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !527, file: !6, line: 139, baseType: !539, size: 64, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !27, line: 129, baseType: !40)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !527, file: !6, line: 140, baseType: !31, size: 32, offset: 384)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !104, file: !6, line: 377, baseType: !542, size: 320)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 184, size: 320, elements: !543)
!543 = !{!544, !545, !546, !547, !548, !549, !553}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !542, file: !6, line: 185, baseType: !103, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !542, file: !6, line: 185, baseType: !58, size: 8, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !542, file: !6, line: 185, baseType: !58, size: 8, offset: 72)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !542, file: !6, line: 185, baseType: !113, size: 16, offset: 80)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !542, file: !6, line: 185, baseType: !58, size: 8, offset: 96)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !542, file: !6, line: 185, baseType: !550, size: 128, offset: 128)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 128, elements: !551)
!551 = !{!552}
!552 = !DISubrange(count: 2)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !542, file: !6, line: 185, baseType: !103, size: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !104, file: !6, line: 378, baseType: !555, size: 384)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 187, size: 384, elements: !556)
!556 = !{!557, !558, !559, !560, !561, !562, !563, !564}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !555, file: !6, line: 188, baseType: !103, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !555, file: !6, line: 188, baseType: !58, size: 8, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !555, file: !6, line: 188, baseType: !58, size: 8, offset: 72)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !555, file: !6, line: 188, baseType: !113, size: 16, offset: 80)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !555, file: !6, line: 188, baseType: !58, size: 8, offset: 96)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !555, file: !6, line: 189, baseType: !550, size: 128, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !555, file: !6, line: 189, baseType: !103, size: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !555, file: !6, line: 189, baseType: !565, size: 64, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !155, line: 480, size: 576, elements: !567)
!567 = !{!568, !569, !570, !571, !579, !594, !626, !627, !628, !629, !630, !631}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !566, file: !155, line: 481, baseType: !153, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !566, file: !155, line: 482, baseType: !565, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !566, file: !155, line: 483, baseType: !565, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !566, file: !155, line: 484, baseType: !572, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !155, line: 497, size: 256, elements: !574)
!574 = !{!575, !576, !577, !578}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !573, file: !155, line: 498, baseType: !572, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !573, file: !155, line: 499, baseType: !572, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !573, file: !155, line: 500, baseType: !565, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !573, file: !155, line: 501, baseType: !31, size: 32, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !566, file: !155, line: 485, baseType: !580, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !155, line: 466, size: 320, elements: !582)
!582 = !{!583, !588, !589, !590, !591, !592, !593}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !581, file: !155, line: 467, baseType: !584, size: 128)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !155, line: 459, size: 128, elements: !585)
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !584, file: !155, line: 460, baseType: !58, size: 8)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !584, file: !155, line: 461, baseType: !40, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !581, file: !155, line: 468, baseType: !584, size: 128, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !581, file: !155, line: 469, baseType: !113, size: 16, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !581, file: !155, line: 470, baseType: !58, size: 8, offset: 272)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !581, file: !155, line: 471, baseType: !58, size: 8, offset: 280)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !581, file: !155, line: 472, baseType: !58, size: 8, offset: 288)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !581, file: !155, line: 473, baseType: !58, size: 8, offset: 296)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !566, file: !155, line: 486, baseType: !595, size: 64, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !155, line: 448, size: 192, elements: !597)
!597 = !{!598, !621, !622, !623, !624, !625}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !596, file: !155, line: 449, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !155, line: 438, size: 64, elements: !600)
!600 = !{!601, !602, !615}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !599, file: !155, line: 439, baseType: !153, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !599, file: !155, line: 440, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !155, line: 419, size: 256, elements: !605)
!605 = !{!606, !611, !612, !613, !614}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !604, file: !155, line: 420, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !27, line: 1049, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!31, !73, !31, !74}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !604, file: !155, line: 421, baseType: !74, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !604, file: !155, line: 422, baseType: !153, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !604, file: !155, line: 423, baseType: !58, size: 8, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !604, file: !155, line: 424, baseType: !58, size: 8, offset: 200)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !599, file: !155, line: 441, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !155, line: 429, size: 128, elements: !618)
!618 = !{!619, !620}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !617, file: !155, line: 430, baseType: !153, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !617, file: !155, line: 431, baseType: !616, size: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !596, file: !155, line: 450, baseType: !580, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !596, file: !155, line: 451, baseType: !58, size: 8, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !596, file: !155, line: 452, baseType: !58, size: 8, offset: 136)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !596, file: !155, line: 453, baseType: !58, size: 8, offset: 144)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !596, file: !155, line: 454, baseType: !58, size: 8, offset: 152)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !566, file: !155, line: 487, baseType: !40, size: 64, offset: 384)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !566, file: !155, line: 488, baseType: !31, size: 32, offset: 448)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !566, file: !155, line: 489, baseType: !113, size: 16, offset: 480)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !566, file: !155, line: 490, baseType: !113, size: 16, offset: 496)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !566, file: !155, line: 491, baseType: !58, size: 8, offset: 512)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !566, file: !155, line: 492, baseType: !58, size: 8, offset: 520)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !104, file: !6, line: 379, baseType: !633, size: 384)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 192, size: 384, elements: !634)
!634 = !{!635, !636, !637, !638, !639, !640, !641, !642, !643}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !633, file: !6, line: 193, baseType: !103, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !633, file: !6, line: 193, baseType: !58, size: 8, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !633, file: !6, line: 193, baseType: !58, size: 8, offset: 72)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !633, file: !6, line: 193, baseType: !113, size: 16, offset: 80)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !6, line: 193, baseType: !58, size: 8, offset: 96)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !633, file: !6, line: 193, baseType: !550, size: 128, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !633, file: !6, line: 193, baseType: !103, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !633, file: !6, line: 193, baseType: !31, size: 32, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !633, file: !6, line: 194, baseType: !31, size: 32, offset: 352)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !104, file: !6, line: 380, baseType: !645, size: 384)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 197, size: 384, elements: !646)
!646 = !{!647, !648, !649, !650, !651, !652, !653, !654, !655, !656}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !645, file: !6, line: 198, baseType: !103, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !645, file: !6, line: 198, baseType: !58, size: 8, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !645, file: !6, line: 198, baseType: !58, size: 8, offset: 72)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !645, file: !6, line: 198, baseType: !113, size: 16, offset: 80)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !645, file: !6, line: 198, baseType: !58, size: 8, offset: 96)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !645, file: !6, line: 200, baseType: !58, size: 8, offset: 104)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !645, file: !6, line: 201, baseType: !58, size: 8, offset: 112)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !645, file: !6, line: 202, baseType: !550, size: 128, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !645, file: !6, line: 202, baseType: !103, size: 64, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !645, file: !6, line: 202, baseType: !81, size: 64, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !104, file: !6, line: 381, baseType: !658, size: 320)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 205, size: 320, elements: !659)
!659 = !{!660, !661, !662, !663, !664, !665, !666}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !658, file: !6, line: 206, baseType: !103, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !658, file: !6, line: 206, baseType: !58, size: 8, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !658, file: !6, line: 206, baseType: !58, size: 8, offset: 72)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !658, file: !6, line: 206, baseType: !113, size: 16, offset: 80)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !658, file: !6, line: 206, baseType: !58, size: 8, offset: 96)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !658, file: !6, line: 206, baseType: !550, size: 128, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !658, file: !6, line: 206, baseType: !103, size: 64, offset: 256)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !104, file: !6, line: 382, baseType: !668, size: 384)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 233, size: 384, elements: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !668, file: !6, line: 234, baseType: !103, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !668, file: !6, line: 234, baseType: !58, size: 8, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !668, file: !6, line: 234, baseType: !58, size: 8, offset: 72)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !668, file: !6, line: 234, baseType: !113, size: 16, offset: 80)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !6, line: 234, baseType: !58, size: 8, offset: 96)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !668, file: !6, line: 234, baseType: !58, size: 8, offset: 104)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !668, file: !6, line: 234, baseType: !58, size: 8, offset: 112)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !668, file: !6, line: 234, baseType: !58, size: 8, offset: 120)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !668, file: !6, line: 234, baseType: !153, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !668, file: !6, line: 234, baseType: !31, size: 32, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !668, file: !6, line: 234, baseType: !31, size: 32, offset: 224)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !668, file: !6, line: 234, baseType: !31, size: 32, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !668, file: !6, line: 234, baseType: !58, size: 8, offset: 288)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !668, file: !6, line: 234, baseType: !58, size: 8, offset: 296)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !668, file: !6, line: 234, baseType: !103, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !104, file: !6, line: 383, baseType: !686, size: 576)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 237, size: 576, elements: !687)
!687 = !{!688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !686, file: !6, line: 238, baseType: !103, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !686, file: !6, line: 238, baseType: !58, size: 8, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !686, file: !6, line: 238, baseType: !58, size: 8, offset: 72)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !686, file: !6, line: 238, baseType: !113, size: 16, offset: 80)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !6, line: 238, baseType: !58, size: 8, offset: 96)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !686, file: !6, line: 238, baseType: !58, size: 8, offset: 104)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !686, file: !6, line: 238, baseType: !58, size: 8, offset: 112)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !686, file: !6, line: 238, baseType: !58, size: 8, offset: 120)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !686, file: !6, line: 238, baseType: !153, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !686, file: !6, line: 238, baseType: !31, size: 32, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !686, file: !6, line: 238, baseType: !31, size: 32, offset: 224)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !686, file: !6, line: 238, baseType: !31, size: 32, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !686, file: !6, line: 238, baseType: !58, size: 8, offset: 288)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !686, file: !6, line: 238, baseType: !58, size: 8, offset: 296)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !686, file: !6, line: 238, baseType: !113, size: 16, offset: 304)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !686, file: !6, line: 239, baseType: !103, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !686, file: !6, line: 240, baseType: !57, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !686, file: !6, line: 241, baseType: !113, size: 16, offset: 448)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !686, file: !6, line: 242, baseType: !57, size: 64, offset: 512)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !104, file: !6, line: 384, baseType: !708, size: 384)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 262, size: 384, elements: !709)
!709 = !{!710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !708, file: !6, line: 263, baseType: !103, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !708, file: !6, line: 263, baseType: !58, size: 8, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !708, file: !6, line: 263, baseType: !58, size: 8, offset: 72)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !708, file: !6, line: 263, baseType: !113, size: 16, offset: 80)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !708, file: !6, line: 263, baseType: !58, size: 8, offset: 96)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !708, file: !6, line: 263, baseType: !58, size: 8, offset: 104)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !708, file: !6, line: 263, baseType: !58, size: 8, offset: 112)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !708, file: !6, line: 263, baseType: !58, size: 8, offset: 120)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !708, file: !6, line: 263, baseType: !153, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !708, file: !6, line: 263, baseType: !31, size: 32, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !708, file: !6, line: 263, baseType: !31, size: 32, offset: 224)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !708, file: !6, line: 263, baseType: !31, size: 32, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !708, file: !6, line: 263, baseType: !58, size: 8, offset: 288)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !708, file: !6, line: 263, baseType: !58, size: 8, offset: 296)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !708, file: !6, line: 263, baseType: !58, size: 8, offset: 304)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !708, file: !6, line: 264, baseType: !103, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !104, file: !6, line: 385, baseType: !727, size: 448)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 245, size: 448, elements: !728)
!728 = !{!729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !727, file: !6, line: 246, baseType: !103, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !727, file: !6, line: 246, baseType: !58, size: 8, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !727, file: !6, line: 246, baseType: !58, size: 8, offset: 72)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !727, file: !6, line: 246, baseType: !113, size: 16, offset: 80)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !727, file: !6, line: 246, baseType: !58, size: 8, offset: 96)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !727, file: !6, line: 246, baseType: !58, size: 8, offset: 104)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !727, file: !6, line: 246, baseType: !58, size: 8, offset: 112)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !727, file: !6, line: 246, baseType: !58, size: 8, offset: 120)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !727, file: !6, line: 246, baseType: !153, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !727, file: !6, line: 246, baseType: !31, size: 32, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !727, file: !6, line: 246, baseType: !31, size: 32, offset: 224)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !727, file: !6, line: 246, baseType: !31, size: 32, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !727, file: !6, line: 246, baseType: !58, size: 8, offset: 288)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !727, file: !6, line: 246, baseType: !58, size: 8, offset: 296)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !727, file: !6, line: 246, baseType: !103, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !727, file: !6, line: 247, baseType: !103, size: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !104, file: !6, line: 386, baseType: !746, size: 448)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 250, size: 448, elements: !747)
!747 = !{!748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !746, file: !6, line: 251, baseType: !103, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !746, file: !6, line: 251, baseType: !58, size: 8, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !746, file: !6, line: 251, baseType: !58, size: 8, offset: 72)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !746, file: !6, line: 251, baseType: !113, size: 16, offset: 80)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !746, file: !6, line: 251, baseType: !58, size: 8, offset: 96)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !746, file: !6, line: 251, baseType: !58, size: 8, offset: 104)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !746, file: !6, line: 251, baseType: !58, size: 8, offset: 112)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !746, file: !6, line: 251, baseType: !58, size: 8, offset: 120)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !746, file: !6, line: 251, baseType: !153, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !746, file: !6, line: 251, baseType: !31, size: 32, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !746, file: !6, line: 251, baseType: !31, size: 32, offset: 224)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !746, file: !6, line: 251, baseType: !31, size: 32, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !746, file: !6, line: 251, baseType: !58, size: 8, offset: 288)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !746, file: !6, line: 251, baseType: !58, size: 8, offset: 296)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !746, file: !6, line: 256, baseType: !103, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !746, file: !6, line: 257, baseType: !103, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !104, file: !6, line: 387, baseType: !765, size: 512)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 273, size: 512, elements: !766)
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !775, !776}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !765, file: !6, line: 274, baseType: !103, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !765, file: !6, line: 274, baseType: !58, size: 8, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !765, file: !6, line: 274, baseType: !58, size: 8, offset: 72)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !765, file: !6, line: 274, baseType: !113, size: 16, offset: 80)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !765, file: !6, line: 274, baseType: !58, size: 8, offset: 96)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !765, file: !6, line: 274, baseType: !153, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !765, file: !6, line: 275, baseType: !31, size: 32, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !765, file: !6, line: 276, baseType: !444, size: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !765, file: !6, line: 277, baseType: !74, size: 64, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !765, file: !6, line: 278, baseType: !550, size: 128, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !104, file: !6, line: 388, baseType: !778, size: 512)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 281, size: 512, elements: !779)
!779 = !{!780, !781, !782, !783, !784, !785, !786, !787, !793, !794, !795, !801, !802}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !778, file: !6, line: 282, baseType: !103, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !778, file: !6, line: 282, baseType: !58, size: 8, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !778, file: !6, line: 282, baseType: !58, size: 8, offset: 72)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !778, file: !6, line: 282, baseType: !113, size: 16, offset: 80)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !778, file: !6, line: 282, baseType: !58, size: 8, offset: 96)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !778, file: !6, line: 282, baseType: !58, size: 8, offset: 104)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !778, file: !6, line: 283, baseType: !58, size: 8, offset: 112)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !778, file: !6, line: 284, baseType: !788, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !27, line: 1084, baseType: !789)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!90, !31, !539, !31, !792, !74, !74}
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !778, file: !6, line: 285, baseType: !153, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !778, file: !6, line: 286, baseType: !74, size: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !778, file: !6, line: 287, baseType: !796, size: 64, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !27, line: 1102, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!90, !73, !31, !74, !800}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !778, file: !6, line: 288, baseType: !103, size: 64, offset: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !778, file: !6, line: 289, baseType: !103, size: 64, offset: 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !104, file: !6, line: 389, baseType: !804, size: 512)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 307, size: 512, elements: !805)
!805 = !{!806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !804, file: !6, line: 308, baseType: !103, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !804, file: !6, line: 308, baseType: !58, size: 8, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !804, file: !6, line: 308, baseType: !58, size: 8, offset: 72)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !804, file: !6, line: 308, baseType: !113, size: 16, offset: 80)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !804, file: !6, line: 308, baseType: !58, size: 8, offset: 96)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !804, file: !6, line: 308, baseType: !58, size: 8, offset: 104)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !804, file: !6, line: 309, baseType: !58, size: 8, offset: 112)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !804, file: !6, line: 310, baseType: !58, size: 8, offset: 120)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !804, file: !6, line: 311, baseType: !74, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !804, file: !6, line: 312, baseType: !153, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !804, file: !6, line: 313, baseType: !102, size: 64, offset: 256)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !804, file: !6, line: 314, baseType: !57, size: 64, offset: 320)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !804, file: !6, line: 315, baseType: !57, size: 64, offset: 384)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !804, file: !6, line: 316, baseType: !31, size: 32, offset: 448)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !104, file: !6, line: 390, baseType: !821, size: 448)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 340, size: 448, elements: !822)
!822 = !{!823, !824, !825, !826, !827, !828, !829, !830, !831, !832}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !821, file: !6, line: 341, baseType: !103, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !821, file: !6, line: 341, baseType: !58, size: 8, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !821, file: !6, line: 341, baseType: !58, size: 8, offset: 72)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !821, file: !6, line: 341, baseType: !113, size: 16, offset: 80)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !821, file: !6, line: 341, baseType: !58, size: 8, offset: 96)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !821, file: !6, line: 341, baseType: !153, size: 64, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !821, file: !6, line: 342, baseType: !153, size: 64, offset: 192)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !821, file: !6, line: 343, baseType: !74, size: 64, offset: 256)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !821, file: !6, line: 344, baseType: !57, size: 64, offset: 320)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !821, file: !6, line: 345, baseType: !31, size: 32, offset: 384)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !104, file: !6, line: 391, baseType: !834, size: 256)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 350, size: 256, elements: !835)
!835 = !{!836, !837, !838, !839, !840, !841, !846}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !834, file: !6, line: 351, baseType: !103, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !834, file: !6, line: 351, baseType: !58, size: 8, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !834, file: !6, line: 351, baseType: !58, size: 8, offset: 72)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !834, file: !6, line: 351, baseType: !113, size: 16, offset: 80)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !834, file: !6, line: 351, baseType: !58, size: 8, offset: 96)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !834, file: !6, line: 351, baseType: !842, size: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !27, line: 1055, baseType: !843)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !73, !74}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !834, file: !6, line: 352, baseType: !74, size: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !104, file: !6, line: 392, baseType: !848, size: 192)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 357, size: 192, elements: !849)
!849 = !{!850, !851, !852, !853, !854, !855}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !848, file: !6, line: 358, baseType: !103, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !848, file: !6, line: 358, baseType: !58, size: 8, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !848, file: !6, line: 358, baseType: !58, size: 8, offset: 72)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !848, file: !6, line: 358, baseType: !113, size: 16, offset: 80)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !848, file: !6, line: 358, baseType: !58, size: 8, offset: 96)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !848, file: !6, line: 358, baseType: !103, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !104, file: !6, line: 399, baseType: !154, size: 384)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !6, line: 432, size: 1600, elements: !859)
!859 = !{!860, !865, !866, !867}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !858, file: !6, line: 433, baseType: !861, size: 128)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !6, line: 427, size: 128, elements: !862)
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !861, file: !6, line: 428, baseType: !74, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !861, file: !6, line: 429, baseType: !58, size: 8, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !858, file: !6, line: 434, baseType: !104, size: 576)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !858, file: !6, line: 435, baseType: !154, size: 384)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !858, file: !6, line: 436, baseType: !254, size: 1600)
!868 = !{!0}
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !870, size: 56, elements: !457)
!870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!871 = !{!"rsp"}
!872 = !{i32 7, !"Dwarf Version", i32 4}
!873 = !{i32 2, !"Debug Info Version", i32 3}
!874 = !{i32 1, !"wchar_size", i32 2}
!875 = !{i32 1, !"Code Model", i32 2}
!876 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!877 = distinct !DISubprogram(name: "acpi_ut_copy_iobject_to_eobject", scope: !3, file: !3, line: 359, type: !878, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !885)
!878 = !DISubroutineType(types: !879)
!879 = !{!90, !103, !880}
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !27, line: 969, size: 128, elements: !882)
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !881, file: !27, line: 970, baseType: !89, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !881, file: !27, line: 971, baseType: !74, size: 64, offset: 64)
!885 = !{}
!886 = !DILocalVariable(name: "internal_object", arg: 1, scope: !877, file: !3, line: 359, type: !103)
!887 = !DILocation(line: 359, column: 60, scope: !877)
!888 = !DILocalVariable(name: "ret_buffer", arg: 2, scope: !877, file: !3, line: 360, type: !880)
!889 = !DILocation(line: 360, column: 25, scope: !877)
!890 = !DILocalVariable(name: "status", scope: !877, file: !3, line: 362, type: !90)
!891 = !DILocation(line: 362, column: 14, scope: !877)
!892 = !DILocation(line: 366, column: 6, scope: !893)
!893 = distinct !DILexicalBlock(scope: !877, file: !3, line: 366, column: 6)
!894 = !DILocation(line: 366, column: 23, scope: !893)
!895 = !DILocation(line: 366, column: 30, scope: !893)
!896 = !DILocation(line: 366, column: 35, scope: !893)
!897 = !DILocation(line: 366, column: 6, scope: !877)
!898 = !DILocation(line: 371, column: 46, scope: !899)
!899 = distinct !DILexicalBlock(scope: !893, file: !3, line: 366, column: 57)
!900 = !DILocation(line: 372, column: 11, scope: !899)
!901 = !DILocation(line: 372, column: 23, scope: !899)
!902 = !DILocation(line: 373, column: 12, scope: !899)
!903 = !DILocation(line: 373, column: 24, scope: !899)
!904 = !DILocation(line: 371, column: 12, scope: !899)
!905 = !DILocation(line: 371, column: 10, scope: !899)
!906 = !DILocation(line: 374, column: 2, scope: !899)
!907 = !DILocation(line: 378, column: 44, scope: !908)
!908 = distinct !DILexicalBlock(scope: !893, file: !3, line: 374, column: 9)
!909 = !DILocation(line: 379, column: 9, scope: !908)
!910 = !DILocation(line: 383, column: 9, scope: !908)
!911 = !DILocation(line: 390, column: 10, scope: !908)
!912 = !DILocation(line: 390, column: 22, scope: !908)
!913 = !DILocation(line: 378, column: 12, scope: !908)
!914 = !DILocation(line: 378, column: 10, scope: !908)
!915 = !DILocation(line: 395, column: 3, scope: !908)
!916 = !DILocation(line: 395, column: 15, scope: !908)
!917 = !DILocation(line: 395, column: 22, scope: !908)
!918 = !DILocation(line: 398, column: 2, scope: !877)
!919 = distinct !DISubprogram(name: "acpi_ut_copy_ipackage_to_epackage", scope: !3, file: !3, line: 299, type: !920, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !885)
!920 = !DISubroutineType(types: !921)
!921 = !{!90, !103, !57, !922}
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!923 = !DILocalVariable(name: "internal_object", arg: 1, scope: !919, file: !3, line: 299, type: !103)
!924 = !DILocation(line: 299, column: 62, scope: !919)
!925 = !DILocalVariable(name: "buffer", arg: 2, scope: !919, file: !3, line: 300, type: !57)
!926 = !DILocation(line: 300, column: 11, scope: !919)
!927 = !DILocalVariable(name: "space_used", arg: 3, scope: !919, file: !3, line: 300, type: !922)
!928 = !DILocation(line: 300, column: 30, scope: !919)
!929 = !DILocalVariable(name: "external_object", scope: !919, file: !3, line: 302, type: !25)
!930 = !DILocation(line: 302, column: 21, scope: !919)
!931 = !DILocalVariable(name: "status", scope: !919, file: !3, line: 303, type: !90)
!932 = !DILocation(line: 303, column: 14, scope: !919)
!933 = !DILocalVariable(name: "info", scope: !919, file: !3, line: 304, type: !92)
!934 = !DILocation(line: 304, column: 23, scope: !919)
!935 = !DILocation(line: 311, column: 20, scope: !919)
!936 = !DILocation(line: 311, column: 18, scope: !919)
!937 = !DILocation(line: 316, column: 7, scope: !919)
!938 = !DILocation(line: 316, column: 14, scope: !919)
!939 = !DILocation(line: 317, column: 20, scope: !919)
!940 = !DILocation(line: 317, column: 27, scope: !919)
!941 = !DILocation(line: 317, column: 7, scope: !919)
!942 = !DILocation(line: 317, column: 18, scope: !919)
!943 = !DILocation(line: 319, column: 7, scope: !919)
!944 = !DILocation(line: 319, column: 20, scope: !919)
!945 = !DILocation(line: 320, column: 7, scope: !919)
!946 = !DILocation(line: 320, column: 20, scope: !919)
!947 = !DILocation(line: 322, column: 26, scope: !919)
!948 = !DILocation(line: 322, column: 43, scope: !919)
!949 = !DILocation(line: 322, column: 50, scope: !919)
!950 = !DILocation(line: 322, column: 2, scope: !919)
!951 = !DILocation(line: 322, column: 19, scope: !919)
!952 = !DILocation(line: 322, column: 24, scope: !919)
!953 = !DILocation(line: 323, column: 35, scope: !919)
!954 = !DILocation(line: 323, column: 52, scope: !919)
!955 = !DILocation(line: 323, column: 60, scope: !919)
!956 = !DILocation(line: 323, column: 2, scope: !919)
!957 = !DILocation(line: 323, column: 19, scope: !919)
!958 = !DILocation(line: 323, column: 27, scope: !919)
!959 = !DILocation(line: 323, column: 33, scope: !919)
!960 = !DILocation(line: 325, column: 6, scope: !919)
!961 = !DILocation(line: 324, column: 2, scope: !919)
!962 = !DILocation(line: 324, column: 19, scope: !919)
!963 = !DILocation(line: 324, column: 27, scope: !919)
!964 = !DILocation(line: 324, column: 36, scope: !919)
!965 = !DILocation(line: 331, column: 28, scope: !919)
!966 = !DILocation(line: 331, column: 45, scope: !919)
!967 = !DILocation(line: 331, column: 53, scope: !919)
!968 = !DILocation(line: 331, column: 17, scope: !919)
!969 = !DILocation(line: 331, column: 59, scope: !919)
!970 = !DILocation(line: 331, column: 7, scope: !919)
!971 = !DILocation(line: 331, column: 14, scope: !919)
!972 = !DILocation(line: 333, column: 21, scope: !919)
!973 = !DILocation(line: 333, column: 38, scope: !919)
!974 = !DILocation(line: 333, column: 46, scope: !919)
!975 = !DILocation(line: 333, column: 52, scope: !919)
!976 = !DILocation(line: 333, column: 7, scope: !919)
!977 = !DILocation(line: 333, column: 18, scope: !919)
!978 = !DILocation(line: 336, column: 37, scope: !919)
!979 = !DILocation(line: 336, column: 54, scope: !919)
!980 = !DILocation(line: 338, column: 9, scope: !919)
!981 = !DILocation(line: 336, column: 11, scope: !919)
!982 = !DILocation(line: 336, column: 9, scope: !919)
!983 = !DILocation(line: 340, column: 21, scope: !919)
!984 = !DILocation(line: 340, column: 3, scope: !919)
!985 = !DILocation(line: 340, column: 14, scope: !919)
!986 = !DILocation(line: 341, column: 2, scope: !919)
!987 = distinct !DISubprogram(name: "acpi_ut_copy_isimple_to_esimple", scope: !3, file: !3, line: 78, type: !988, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !885)
!988 = !DISubroutineType(types: !989)
!989 = !{!90, !103, !25, !57, !922}
!990 = !DILocalVariable(name: "internal_object", arg: 1, scope: !987, file: !3, line: 78, type: !103)
!991 = !DILocation(line: 78, column: 60, scope: !987)
!992 = !DILocalVariable(name: "external_object", arg: 2, scope: !987, file: !3, line: 79, type: !25)
!993 = !DILocation(line: 79, column: 24, scope: !987)
!994 = !DILocalVariable(name: "data_space", arg: 3, scope: !987, file: !3, line: 80, type: !57)
!995 = !DILocation(line: 80, column: 9, scope: !987)
!996 = !DILocalVariable(name: "buffer_space_used", arg: 4, scope: !987, file: !3, line: 80, type: !922)
!997 = !DILocation(line: 80, column: 32, scope: !987)
!998 = !DILocalVariable(name: "status", scope: !987, file: !3, line: 82, type: !90)
!999 = !DILocation(line: 82, column: 14, scope: !987)
!1000 = !DILocation(line: 86, column: 3, scope: !987)
!1001 = !DILocation(line: 86, column: 21, scope: !987)
!1002 = !DILocation(line: 92, column: 7, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !987, file: !3, line: 92, column: 6)
!1004 = !DILocation(line: 92, column: 6, scope: !987)
!1005 = !DILocation(line: 93, column: 3, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 92, column: 24)
!1007 = !DILocation(line: 98, column: 9, scope: !987)
!1008 = !DILocation(line: 98, column: 2, scope: !987)
!1009 = !DILocation(line: 104, column: 26, scope: !987)
!1010 = !DILocation(line: 104, column: 43, scope: !987)
!1011 = !DILocation(line: 104, column: 50, scope: !987)
!1012 = !DILocation(line: 104, column: 2, scope: !987)
!1013 = !DILocation(line: 104, column: 19, scope: !987)
!1014 = !DILocation(line: 104, column: 24, scope: !987)
!1015 = !DILocation(line: 108, column: 10, scope: !987)
!1016 = !DILocation(line: 108, column: 27, scope: !987)
!1017 = !DILocation(line: 108, column: 34, scope: !987)
!1018 = !DILocation(line: 108, column: 2, scope: !987)
!1019 = !DILocation(line: 111, column: 45, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !987, file: !3, line: 108, column: 40)
!1021 = !DILocation(line: 111, column: 3, scope: !1020)
!1022 = !DILocation(line: 111, column: 20, scope: !1020)
!1023 = !DILocation(line: 111, column: 27, scope: !1020)
!1024 = !DILocation(line: 111, column: 35, scope: !1020)
!1025 = !DILocation(line: 112, column: 36, scope: !1020)
!1026 = !DILocation(line: 112, column: 53, scope: !1020)
!1027 = !DILocation(line: 112, column: 60, scope: !1020)
!1028 = !DILocation(line: 112, column: 3, scope: !1020)
!1029 = !DILocation(line: 112, column: 20, scope: !1020)
!1030 = !DILocation(line: 112, column: 27, scope: !1020)
!1031 = !DILocation(line: 112, column: 34, scope: !1020)
!1032 = !DILocation(line: 113, column: 24, scope: !1020)
!1033 = !DILocation(line: 113, column: 4, scope: !1020)
!1034 = !DILocation(line: 113, column: 22, scope: !1020)
!1035 = !DILocation(line: 118, column: 18, scope: !1020)
!1036 = !DILocation(line: 119, column: 18, scope: !1020)
!1037 = !DILocation(line: 119, column: 35, scope: !1020)
!1038 = !DILocation(line: 119, column: 42, scope: !1020)
!1039 = !DILocation(line: 120, column: 21, scope: !1020)
!1040 = !DILocation(line: 120, column: 38, scope: !1020)
!1041 = !DILocation(line: 120, column: 45, scope: !1020)
!1042 = !DILocation(line: 120, column: 10, scope: !1020)
!1043 = !DILocation(line: 120, column: 52, scope: !1020)
!1044 = !DILocation(line: 118, column: 3, scope: !1020)
!1045 = !DILocation(line: 121, column: 3, scope: !1020)
!1046 = !DILocation(line: 125, column: 37, scope: !1020)
!1047 = !DILocation(line: 125, column: 3, scope: !1020)
!1048 = !DILocation(line: 125, column: 20, scope: !1020)
!1049 = !DILocation(line: 125, column: 27, scope: !1020)
!1050 = !DILocation(line: 125, column: 35, scope: !1020)
!1051 = !DILocation(line: 126, column: 36, scope: !1020)
!1052 = !DILocation(line: 126, column: 53, scope: !1020)
!1053 = !DILocation(line: 126, column: 60, scope: !1020)
!1054 = !DILocation(line: 126, column: 3, scope: !1020)
!1055 = !DILocation(line: 126, column: 20, scope: !1020)
!1056 = !DILocation(line: 126, column: 27, scope: !1020)
!1057 = !DILocation(line: 126, column: 34, scope: !1020)
!1058 = !DILocation(line: 128, column: 7, scope: !1020)
!1059 = !DILocation(line: 127, column: 4, scope: !1020)
!1060 = !DILocation(line: 127, column: 22, scope: !1020)
!1061 = !DILocation(line: 131, column: 18, scope: !1020)
!1062 = !DILocation(line: 132, column: 18, scope: !1020)
!1063 = !DILocation(line: 132, column: 35, scope: !1020)
!1064 = !DILocation(line: 132, column: 42, scope: !1020)
!1065 = !DILocation(line: 133, column: 10, scope: !1020)
!1066 = !DILocation(line: 133, column: 27, scope: !1020)
!1067 = !DILocation(line: 133, column: 34, scope: !1020)
!1068 = !DILocation(line: 131, column: 3, scope: !1020)
!1069 = !DILocation(line: 134, column: 3, scope: !1020)
!1070 = !DILocation(line: 138, column: 36, scope: !1020)
!1071 = !DILocation(line: 138, column: 53, scope: !1020)
!1072 = !DILocation(line: 138, column: 61, scope: !1020)
!1073 = !DILocation(line: 138, column: 3, scope: !1020)
!1074 = !DILocation(line: 138, column: 20, scope: !1020)
!1075 = !DILocation(line: 138, column: 28, scope: !1020)
!1076 = !DILocation(line: 138, column: 34, scope: !1020)
!1077 = !DILocation(line: 139, column: 3, scope: !1020)
!1078 = !DILocation(line: 145, column: 11, scope: !1020)
!1079 = !DILocation(line: 145, column: 28, scope: !1020)
!1080 = !DILocation(line: 145, column: 38, scope: !1020)
!1081 = !DILocation(line: 145, column: 3, scope: !1020)
!1082 = !DILocation(line: 152, column: 8, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 145, column: 45)
!1084 = !DILocation(line: 152, column: 25, scope: !1083)
!1085 = !DILocation(line: 152, column: 35, scope: !1083)
!1086 = !DILocation(line: 151, column: 4, scope: !1083)
!1087 = !DILocation(line: 151, column: 21, scope: !1083)
!1088 = !DILocation(line: 151, column: 31, scope: !1083)
!1089 = !DILocation(line: 151, column: 38, scope: !1083)
!1090 = !DILocation(line: 154, column: 25, scope: !1083)
!1091 = !DILocation(line: 154, column: 42, scope: !1083)
!1092 = !DILocation(line: 154, column: 52, scope: !1083)
!1093 = !DILocation(line: 154, column: 8, scope: !1083)
!1094 = !DILocation(line: 153, column: 4, scope: !1083)
!1095 = !DILocation(line: 153, column: 21, scope: !1083)
!1096 = !DILocation(line: 153, column: 31, scope: !1083)
!1097 = !DILocation(line: 153, column: 43, scope: !1083)
!1098 = !DILocation(line: 155, column: 4, scope: !1083)
!1099 = !DILocation(line: 161, column: 4, scope: !1083)
!1100 = !DILocation(line: 163, column: 3, scope: !1020)
!1101 = !DILocation(line: 168, column: 7, scope: !1020)
!1102 = !DILocation(line: 168, column: 24, scope: !1020)
!1103 = !DILocation(line: 168, column: 34, scope: !1020)
!1104 = !DILocation(line: 167, column: 3, scope: !1020)
!1105 = !DILocation(line: 167, column: 20, scope: !1020)
!1106 = !DILocation(line: 167, column: 30, scope: !1020)
!1107 = !DILocation(line: 167, column: 38, scope: !1020)
!1108 = !DILocation(line: 170, column: 7, scope: !1020)
!1109 = !DILocation(line: 170, column: 24, scope: !1020)
!1110 = !DILocation(line: 170, column: 34, scope: !1020)
!1111 = !DILocation(line: 169, column: 3, scope: !1020)
!1112 = !DILocation(line: 169, column: 20, scope: !1020)
!1113 = !DILocation(line: 169, column: 30, scope: !1020)
!1114 = !DILocation(line: 169, column: 43, scope: !1020)
!1115 = !DILocation(line: 172, column: 7, scope: !1020)
!1116 = !DILocation(line: 172, column: 24, scope: !1020)
!1117 = !DILocation(line: 172, column: 34, scope: !1020)
!1118 = !DILocation(line: 171, column: 3, scope: !1020)
!1119 = !DILocation(line: 171, column: 20, scope: !1020)
!1120 = !DILocation(line: 171, column: 30, scope: !1020)
!1121 = !DILocation(line: 171, column: 42, scope: !1020)
!1122 = !DILocation(line: 173, column: 3, scope: !1020)
!1123 = !DILocation(line: 178, column: 7, scope: !1020)
!1124 = !DILocation(line: 178, column: 24, scope: !1020)
!1125 = !DILocation(line: 178, column: 39, scope: !1020)
!1126 = !DILocation(line: 177, column: 3, scope: !1020)
!1127 = !DILocation(line: 177, column: 20, scope: !1020)
!1128 = !DILocation(line: 177, column: 35, scope: !1020)
!1129 = !DILocation(line: 177, column: 48, scope: !1020)
!1130 = !DILocation(line: 181, column: 7, scope: !1020)
!1131 = !DILocation(line: 181, column: 24, scope: !1020)
!1132 = !DILocation(line: 181, column: 39, scope: !1020)
!1133 = !DILocation(line: 180, column: 3, scope: !1020)
!1134 = !DILocation(line: 180, column: 20, scope: !1020)
!1135 = !DILocation(line: 180, column: 35, scope: !1020)
!1136 = !DILocation(line: 180, column: 50, scope: !1020)
!1137 = !DILocation(line: 182, column: 3, scope: !1020)
!1138 = !DILocation(line: 188, column: 3, scope: !1020)
!1139 = !DILocation(line: 193, column: 3, scope: !1020)
!1140 = !DILocation(line: 196, column: 2, scope: !987)
!1141 = !DILocation(line: 197, column: 1, scope: !987)
!1142 = distinct !DISubprogram(name: "acpi_ut_copy_eobject_to_iobject", scope: !3, file: !3, line: 603, type: !1143, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !885)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!90, !25, !102}
!1145 = !DILocalVariable(name: "external_object", arg: 1, scope: !1142, file: !3, line: 603, type: !25)
!1146 = !DILocation(line: 603, column: 52, scope: !1142)
!1147 = !DILocalVariable(name: "internal_object", arg: 2, scope: !1142, file: !3, line: 604, type: !102)
!1148 = !DILocation(line: 604, column: 33, scope: !1142)
!1149 = !DILocalVariable(name: "status", scope: !1142, file: !3, line: 606, type: !90)
!1150 = !DILocation(line: 606, column: 14, scope: !1142)
!1151 = !DILocation(line: 610, column: 6, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 610, column: 6)
!1153 = !DILocation(line: 610, column: 23, scope: !1152)
!1154 = !DILocation(line: 610, column: 28, scope: !1152)
!1155 = !DILocation(line: 610, column: 6, scope: !1142)
!1156 = !DILocation(line: 612, column: 41, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 610, column: 50)
!1158 = !DILocation(line: 613, column: 13, scope: !1157)
!1159 = !DILocation(line: 612, column: 7, scope: !1157)
!1160 = !DILocation(line: 611, column: 10, scope: !1157)
!1161 = !DILocation(line: 614, column: 2, scope: !1157)
!1162 = !DILocation(line: 618, column: 44, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 614, column: 9)
!1164 = !DILocation(line: 619, column: 9, scope: !1163)
!1165 = !DILocation(line: 618, column: 12, scope: !1163)
!1166 = !DILocation(line: 618, column: 10, scope: !1163)
!1167 = !DILocation(line: 622, column: 2, scope: !1142)
!1168 = distinct !DISubprogram(name: "acpi_ut_copy_epackage_to_ipackage", scope: !3, file: !3, line: 541, type: !1143, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !885)
!1169 = !DILocalVariable(name: "external_object", arg: 1, scope: !1168, file: !3, line: 541, type: !25)
!1170 = !DILocation(line: 541, column: 54, scope: !1168)
!1171 = !DILocalVariable(name: "internal_object", arg: 2, scope: !1168, file: !3, line: 542, type: !102)
!1172 = !DILocation(line: 542, column: 35, scope: !1168)
!1173 = !DILocalVariable(name: "status", scope: !1168, file: !3, line: 544, type: !90)
!1174 = !DILocation(line: 544, column: 14, scope: !1168)
!1175 = !DILocalVariable(name: "package_object", scope: !1168, file: !3, line: 545, type: !103)
!1176 = !DILocation(line: 545, column: 29, scope: !1168)
!1177 = !DILocalVariable(name: "package_elements", scope: !1168, file: !3, line: 546, type: !102)
!1178 = !DILocation(line: 546, column: 30, scope: !1168)
!1179 = !DILocalVariable(name: "i", scope: !1168, file: !3, line: 547, type: !31)
!1180 = !DILocation(line: 547, column: 6, scope: !1168)
!1181 = !DILocation(line: 554, column: 36, scope: !1168)
!1182 = !DILocation(line: 554, column: 53, scope: !1168)
!1183 = !DILocation(line: 554, column: 61, scope: !1168)
!1184 = !DILocation(line: 554, column: 6, scope: !1168)
!1185 = !DILocation(line: 553, column: 17, scope: !1168)
!1186 = !DILocation(line: 555, column: 7, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 555, column: 6)
!1188 = !DILocation(line: 555, column: 6, scope: !1168)
!1189 = !DILocation(line: 556, column: 3, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 555, column: 23)
!1191 = !DILocation(line: 559, column: 21, scope: !1168)
!1192 = !DILocation(line: 559, column: 37, scope: !1168)
!1193 = !DILocation(line: 559, column: 45, scope: !1168)
!1194 = !DILocation(line: 559, column: 19, scope: !1168)
!1195 = !DILocation(line: 565, column: 9, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 565, column: 2)
!1197 = !DILocation(line: 565, column: 7, scope: !1196)
!1198 = !DILocation(line: 565, column: 14, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 565, column: 2)
!1200 = !DILocation(line: 565, column: 18, scope: !1199)
!1201 = !DILocation(line: 565, column: 35, scope: !1199)
!1202 = !DILocation(line: 565, column: 43, scope: !1199)
!1203 = !DILocation(line: 565, column: 16, scope: !1199)
!1204 = !DILocation(line: 565, column: 2, scope: !1196)
!1205 = !DILocation(line: 567, column: 40, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 565, column: 55)
!1207 = !DILocation(line: 567, column: 57, scope: !1206)
!1208 = !DILocation(line: 568, column: 11, scope: !1206)
!1209 = !DILocation(line: 568, column: 20, scope: !1206)
!1210 = !DILocation(line: 569, column: 12, scope: !1206)
!1211 = !DILocation(line: 569, column: 29, scope: !1206)
!1212 = !DILocation(line: 567, column: 7, scope: !1206)
!1213 = !DILocation(line: 566, column: 10, scope: !1206)
!1214 = !DILocation(line: 570, column: 7, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 570, column: 7)
!1216 = !DILocation(line: 570, column: 7, scope: !1206)
!1217 = !DILocation(line: 574, column: 36, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 570, column: 29)
!1219 = !DILocation(line: 574, column: 4, scope: !1218)
!1220 = !DILocation(line: 574, column: 20, scope: !1218)
!1221 = !DILocation(line: 574, column: 28, scope: !1218)
!1222 = !DILocation(line: 574, column: 34, scope: !1218)
!1223 = !DILocation(line: 575, column: 4, scope: !1218)
!1224 = !DILocation(line: 575, column: 21, scope: !1218)
!1225 = !DILocation(line: 575, column: 24, scope: !1218)
!1226 = !DILocation(line: 576, column: 29, scope: !1218)
!1227 = !DILocation(line: 576, column: 4, scope: !1218)
!1228 = !DILocation(line: 577, column: 4, scope: !1218)
!1229 = !DILocation(line: 579, column: 2, scope: !1206)
!1230 = !DILocation(line: 565, column: 51, scope: !1199)
!1231 = !DILocation(line: 565, column: 2, scope: !1199)
!1232 = distinct !{!1232, !1204, !1233}
!1233 = !DILocation(line: 579, column: 2, scope: !1196)
!1234 = !DILocation(line: 583, column: 2, scope: !1168)
!1235 = !DILocation(line: 583, column: 18, scope: !1168)
!1236 = !DILocation(line: 583, column: 26, scope: !1168)
!1237 = !DILocation(line: 583, column: 32, scope: !1168)
!1238 = !DILocation(line: 585, column: 21, scope: !1168)
!1239 = !DILocation(line: 585, column: 3, scope: !1168)
!1240 = !DILocation(line: 585, column: 19, scope: !1168)
!1241 = !DILocation(line: 586, column: 2, scope: !1168)
!1242 = !DILocation(line: 587, column: 1, scope: !1168)
!1243 = distinct !DISubprogram(name: "acpi_ut_copy_esimple_to_isimple", scope: !3, file: !3, line: 418, type: !1143, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !885)
!1244 = !DILocalVariable(name: "external_object", arg: 1, scope: !1243, file: !3, line: 418, type: !25)
!1245 = !DILocation(line: 418, column: 52, scope: !1243)
!1246 = !DILocalVariable(name: "ret_internal_object", arg: 2, scope: !1243, file: !3, line: 419, type: !102)
!1247 = !DILocation(line: 419, column: 33, scope: !1243)
!1248 = !DILocalVariable(name: "internal_object", scope: !1243, file: !3, line: 421, type: !103)
!1249 = !DILocation(line: 421, column: 29, scope: !1243)
!1250 = !DILocation(line: 428, column: 10, scope: !1243)
!1251 = !DILocation(line: 428, column: 27, scope: !1243)
!1252 = !DILocation(line: 428, column: 2, scope: !1243)
!1253 = !DILocation(line: 434, column: 21, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 428, column: 33)
!1255 = !DILocation(line: 434, column: 19, scope: !1254)
!1256 = !DILocation(line: 437, column: 8, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 437, column: 7)
!1258 = !DILocation(line: 437, column: 7, scope: !1254)
!1259 = !DILocation(line: 438, column: 4, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 437, column: 25)
!1261 = !DILocation(line: 440, column: 3, scope: !1254)
!1262 = !DILocation(line: 444, column: 4, scope: !1254)
!1263 = !DILocation(line: 444, column: 24, scope: !1254)
!1264 = !DILocation(line: 445, column: 3, scope: !1254)
!1265 = !DILocation(line: 451, column: 3, scope: !1254)
!1266 = !DILocation(line: 455, column: 3, scope: !1254)
!1267 = !DILocation(line: 460, column: 10, scope: !1243)
!1268 = !DILocation(line: 460, column: 27, scope: !1243)
!1269 = !DILocation(line: 460, column: 2, scope: !1243)
!1270 = !DILocation(line: 464, column: 7, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 460, column: 33)
!1272 = !DILocation(line: 463, column: 3, scope: !1271)
!1273 = !DILocation(line: 463, column: 20, scope: !1271)
!1274 = !DILocation(line: 463, column: 27, scope: !1271)
!1275 = !DILocation(line: 463, column: 35, scope: !1271)
!1276 = !DILocation(line: 467, column: 8, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 467, column: 7)
!1278 = !DILocation(line: 467, column: 25, scope: !1277)
!1279 = !DILocation(line: 467, column: 32, scope: !1277)
!1280 = !DILocation(line: 467, column: 7, scope: !1271)
!1281 = !DILocation(line: 468, column: 4, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 467, column: 41)
!1283 = !DILocation(line: 471, column: 10, scope: !1271)
!1284 = !DILocation(line: 471, column: 27, scope: !1271)
!1285 = !DILocation(line: 471, column: 34, scope: !1271)
!1286 = !DILocation(line: 472, column: 10, scope: !1271)
!1287 = !DILocation(line: 472, column: 27, scope: !1271)
!1288 = !DILocation(line: 472, column: 34, scope: !1271)
!1289 = !DILocation(line: 473, column: 10, scope: !1271)
!1290 = !DILocation(line: 473, column: 27, scope: !1271)
!1291 = !DILocation(line: 473, column: 34, scope: !1271)
!1292 = !DILocation(line: 471, column: 3, scope: !1271)
!1293 = !DILocation(line: 475, column: 36, scope: !1271)
!1294 = !DILocation(line: 475, column: 53, scope: !1271)
!1295 = !DILocation(line: 475, column: 60, scope: !1271)
!1296 = !DILocation(line: 475, column: 3, scope: !1271)
!1297 = !DILocation(line: 475, column: 20, scope: !1271)
!1298 = !DILocation(line: 475, column: 27, scope: !1271)
!1299 = !DILocation(line: 475, column: 34, scope: !1271)
!1300 = !DILocation(line: 476, column: 3, scope: !1271)
!1301 = !DILocation(line: 481, column: 7, scope: !1271)
!1302 = !DILocation(line: 480, column: 3, scope: !1271)
!1303 = !DILocation(line: 480, column: 20, scope: !1271)
!1304 = !DILocation(line: 480, column: 27, scope: !1271)
!1305 = !DILocation(line: 480, column: 35, scope: !1271)
!1306 = !DILocation(line: 482, column: 8, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 482, column: 7)
!1308 = !DILocation(line: 482, column: 25, scope: !1307)
!1309 = !DILocation(line: 482, column: 32, scope: !1307)
!1310 = !DILocation(line: 482, column: 7, scope: !1271)
!1311 = !DILocation(line: 483, column: 4, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 482, column: 41)
!1313 = !DILocation(line: 486, column: 10, scope: !1271)
!1314 = !DILocation(line: 486, column: 27, scope: !1271)
!1315 = !DILocation(line: 486, column: 34, scope: !1271)
!1316 = !DILocation(line: 487, column: 10, scope: !1271)
!1317 = !DILocation(line: 487, column: 27, scope: !1271)
!1318 = !DILocation(line: 487, column: 34, scope: !1271)
!1319 = !DILocation(line: 488, column: 10, scope: !1271)
!1320 = !DILocation(line: 488, column: 27, scope: !1271)
!1321 = !DILocation(line: 488, column: 34, scope: !1271)
!1322 = !DILocation(line: 486, column: 3, scope: !1271)
!1323 = !DILocation(line: 490, column: 36, scope: !1271)
!1324 = !DILocation(line: 490, column: 53, scope: !1271)
!1325 = !DILocation(line: 490, column: 60, scope: !1271)
!1326 = !DILocation(line: 490, column: 3, scope: !1271)
!1327 = !DILocation(line: 490, column: 20, scope: !1271)
!1328 = !DILocation(line: 490, column: 27, scope: !1271)
!1329 = !DILocation(line: 490, column: 34, scope: !1271)
!1330 = !DILocation(line: 494, column: 3, scope: !1271)
!1331 = !DILocation(line: 494, column: 20, scope: !1271)
!1332 = !DILocation(line: 494, column: 27, scope: !1271)
!1333 = !DILocation(line: 494, column: 33, scope: !1271)
!1334 = !DILocation(line: 495, column: 3, scope: !1271)
!1335 = !DILocation(line: 499, column: 36, scope: !1271)
!1336 = !DILocation(line: 499, column: 53, scope: !1271)
!1337 = !DILocation(line: 499, column: 61, scope: !1271)
!1338 = !DILocation(line: 499, column: 3, scope: !1271)
!1339 = !DILocation(line: 499, column: 20, scope: !1271)
!1340 = !DILocation(line: 499, column: 28, scope: !1271)
!1341 = !DILocation(line: 499, column: 34, scope: !1271)
!1342 = !DILocation(line: 500, column: 3, scope: !1271)
!1343 = !DILocation(line: 506, column: 3, scope: !1271)
!1344 = !DILocation(line: 506, column: 20, scope: !1271)
!1345 = !DILocation(line: 506, column: 30, scope: !1271)
!1346 = !DILocation(line: 506, column: 36, scope: !1271)
!1347 = !DILocation(line: 508, column: 7, scope: !1271)
!1348 = !DILocation(line: 508, column: 24, scope: !1271)
!1349 = !DILocation(line: 508, column: 34, scope: !1271)
!1350 = !DILocation(line: 507, column: 3, scope: !1271)
!1351 = !DILocation(line: 507, column: 20, scope: !1271)
!1352 = !DILocation(line: 507, column: 30, scope: !1271)
!1353 = !DILocation(line: 507, column: 37, scope: !1271)
!1354 = !DILocation(line: 509, column: 3, scope: !1271)
!1355 = !DILocation(line: 515, column: 3, scope: !1271)
!1356 = !DILocation(line: 518, column: 25, scope: !1243)
!1357 = !DILocation(line: 518, column: 3, scope: !1243)
!1358 = !DILocation(line: 518, column: 23, scope: !1243)
!1359 = !DILocation(line: 519, column: 2, scope: !1243)
!1360 = !DILabel(scope: !1243, name: "error_exit", file: !3, line: 521)
!1361 = !DILocation(line: 521, column: 1, scope: !1243)
!1362 = !DILocation(line: 522, column: 27, scope: !1243)
!1363 = !DILocation(line: 522, column: 2, scope: !1243)
!1364 = !DILocation(line: 523, column: 2, scope: !1243)
!1365 = !DILocation(line: 524, column: 1, scope: !1243)
!1366 = distinct !DISubprogram(name: "acpi_ut_copy_iobject_to_iobject", scope: !3, file: !3, line: 944, type: !1367, scopeLine: 947, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !885)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!90, !103, !102, !219}
!1369 = !DILocalVariable(name: "source_desc", arg: 1, scope: !1366, file: !3, line: 944, type: !103)
!1370 = !DILocation(line: 944, column: 60, scope: !1366)
!1371 = !DILocalVariable(name: "dest_desc", arg: 2, scope: !1366, file: !3, line: 945, type: !102)
!1372 = !DILocation(line: 945, column: 33, scope: !1366)
!1373 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1366, file: !3, line: 946, type: !219)
!1374 = !DILocation(line: 946, column: 29, scope: !1366)
!1375 = !DILocalVariable(name: "status", scope: !1366, file: !3, line: 948, type: !90)
!1376 = !DILocation(line: 948, column: 14, scope: !1366)
!1377 = !DILocation(line: 954, column: 15, scope: !1366)
!1378 = !DILocation(line: 954, column: 3, scope: !1366)
!1379 = !DILocation(line: 954, column: 13, scope: !1366)
!1380 = !DILocation(line: 955, column: 8, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 955, column: 6)
!1382 = !DILocation(line: 955, column: 7, scope: !1381)
!1383 = !DILocation(line: 955, column: 6, scope: !1366)
!1384 = !DILocation(line: 956, column: 3, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 955, column: 19)
!1386 = !DILocation(line: 961, column: 6, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 961, column: 6)
!1388 = !DILocation(line: 961, column: 19, scope: !1387)
!1389 = !DILocation(line: 961, column: 26, scope: !1387)
!1390 = !DILocation(line: 961, column: 31, scope: !1387)
!1391 = !DILocation(line: 961, column: 6, scope: !1366)
!1392 = !DILocation(line: 963, column: 41, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 961, column: 53)
!1394 = !DILocation(line: 963, column: 55, scope: !1393)
!1395 = !DILocation(line: 963, column: 54, scope: !1393)
!1396 = !DILocation(line: 964, column: 13, scope: !1393)
!1397 = !DILocation(line: 963, column: 7, scope: !1393)
!1398 = !DILocation(line: 962, column: 10, scope: !1393)
!1399 = !DILocation(line: 965, column: 2, scope: !1393)
!1400 = !DILocation(line: 966, column: 39, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 965, column: 9)
!1402 = !DILocation(line: 966, column: 53, scope: !1401)
!1403 = !DILocation(line: 966, column: 52, scope: !1401)
!1404 = !DILocation(line: 966, column: 12, scope: !1401)
!1405 = !DILocation(line: 966, column: 10, scope: !1401)
!1406 = !DILocation(line: 971, column: 6, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 971, column: 6)
!1408 = !DILocation(line: 971, column: 6, scope: !1366)
!1409 = !DILocation(line: 972, column: 29, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 971, column: 28)
!1411 = !DILocation(line: 972, column: 28, scope: !1410)
!1412 = !DILocation(line: 972, column: 3, scope: !1410)
!1413 = !DILocation(line: 973, column: 2, scope: !1410)
!1414 = !DILocation(line: 975, column: 2, scope: !1366)
!1415 = !DILocation(line: 976, column: 1, scope: !1366)
!1416 = distinct !DISubprogram(name: "acpi_ut_copy_ipackage_to_ipackage", scope: !3, file: !3, line: 888, type: !1417, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !885)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!90, !103, !103, !219}
!1419 = !DILocalVariable(name: "source_obj", arg: 1, scope: !1416, file: !3, line: 888, type: !103)
!1420 = !DILocation(line: 888, column: 62, scope: !1416)
!1421 = !DILocalVariable(name: "dest_obj", arg: 2, scope: !1416, file: !3, line: 889, type: !103)
!1422 = !DILocation(line: 889, column: 34, scope: !1416)
!1423 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1416, file: !3, line: 890, type: !219)
!1424 = !DILocation(line: 890, column: 31, scope: !1416)
!1425 = !DILocalVariable(name: "status", scope: !1416, file: !3, line: 892, type: !90)
!1426 = !DILocation(line: 892, column: 14, scope: !1416)
!1427 = !DILocation(line: 896, column: 26, scope: !1416)
!1428 = !DILocation(line: 896, column: 38, scope: !1416)
!1429 = !DILocation(line: 896, column: 45, scope: !1416)
!1430 = !DILocation(line: 896, column: 2, scope: !1416)
!1431 = !DILocation(line: 896, column: 12, scope: !1416)
!1432 = !DILocation(line: 896, column: 19, scope: !1416)
!1433 = !DILocation(line: 896, column: 24, scope: !1416)
!1434 = !DILocation(line: 897, column: 27, scope: !1416)
!1435 = !DILocation(line: 897, column: 39, scope: !1416)
!1436 = !DILocation(line: 897, column: 46, scope: !1416)
!1437 = !DILocation(line: 897, column: 2, scope: !1416)
!1438 = !DILocation(line: 897, column: 12, scope: !1416)
!1439 = !DILocation(line: 897, column: 19, scope: !1416)
!1440 = !DILocation(line: 897, column: 25, scope: !1416)
!1441 = !DILocation(line: 898, column: 28, scope: !1416)
!1442 = !DILocation(line: 898, column: 40, scope: !1416)
!1443 = !DILocation(line: 898, column: 48, scope: !1416)
!1444 = !DILocation(line: 898, column: 2, scope: !1416)
!1445 = !DILocation(line: 898, column: 12, scope: !1416)
!1446 = !DILocation(line: 898, column: 20, scope: !1416)
!1447 = !DILocation(line: 898, column: 26, scope: !1416)
!1448 = !DILocation(line: 903, column: 31, scope: !1416)
!1449 = !DILocation(line: 903, column: 2, scope: !1416)
!1450 = !DILocation(line: 903, column: 12, scope: !1416)
!1451 = !DILocation(line: 903, column: 20, scope: !1416)
!1452 = !DILocation(line: 903, column: 29, scope: !1416)
!1453 = !DILocation(line: 907, column: 7, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 907, column: 6)
!1455 = !DILocation(line: 907, column: 17, scope: !1454)
!1456 = !DILocation(line: 907, column: 25, scope: !1454)
!1457 = !DILocation(line: 907, column: 6, scope: !1416)
!1458 = !DILocation(line: 908, column: 3, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 907, column: 35)
!1460 = !DILocation(line: 909, column: 3, scope: !1459)
!1461 = !DILocation(line: 916, column: 37, scope: !1416)
!1462 = !DILocation(line: 916, column: 49, scope: !1416)
!1463 = !DILocation(line: 918, column: 9, scope: !1416)
!1464 = !DILocation(line: 916, column: 11, scope: !1416)
!1465 = !DILocation(line: 916, column: 9, scope: !1416)
!1466 = !DILocation(line: 919, column: 6, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 919, column: 6)
!1468 = !DILocation(line: 919, column: 6, scope: !1416)
!1469 = !DILocation(line: 923, column: 28, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 919, column: 28)
!1471 = !DILocation(line: 923, column: 3, scope: !1470)
!1472 = !DILocation(line: 924, column: 2, scope: !1470)
!1473 = !DILocation(line: 926, column: 2, scope: !1416)
!1474 = !DILocation(line: 927, column: 1, scope: !1416)
!1475 = distinct !DISubprogram(name: "acpi_ut_copy_simple_object", scope: !3, file: !3, line: 640, type: !1476, scopeLine: 642, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !885)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!90, !103, !103}
!1478 = !DILocalVariable(name: "source_desc", arg: 1, scope: !1475, file: !3, line: 640, type: !103)
!1479 = !DILocation(line: 640, column: 55, scope: !1475)
!1480 = !DILocalVariable(name: "dest_desc", arg: 2, scope: !1475, file: !3, line: 641, type: !103)
!1481 = !DILocation(line: 641, column: 34, scope: !1475)
!1482 = !DILocalVariable(name: "reference_count", scope: !1475, file: !3, line: 643, type: !113)
!1483 = !DILocation(line: 643, column: 6, scope: !1475)
!1484 = !DILocalVariable(name: "next_object", scope: !1475, file: !3, line: 644, type: !103)
!1485 = !DILocation(line: 644, column: 29, scope: !1475)
!1486 = !DILocalVariable(name: "status", scope: !1475, file: !3, line: 645, type: !90)
!1487 = !DILocation(line: 645, column: 14, scope: !1475)
!1488 = !DILocalVariable(name: "copy_size", scope: !1475, file: !3, line: 646, type: !89)
!1489 = !DILocation(line: 646, column: 12, scope: !1475)
!1490 = !DILocation(line: 650, column: 20, scope: !1475)
!1491 = !DILocation(line: 650, column: 31, scope: !1475)
!1492 = !DILocation(line: 650, column: 38, scope: !1475)
!1493 = !DILocation(line: 650, column: 18, scope: !1475)
!1494 = !DILocation(line: 651, column: 16, scope: !1475)
!1495 = !DILocation(line: 651, column: 27, scope: !1475)
!1496 = !DILocation(line: 651, column: 34, scope: !1475)
!1497 = !DILocation(line: 651, column: 14, scope: !1475)
!1498 = !DILocation(line: 657, column: 12, scope: !1475)
!1499 = !DILocation(line: 658, column: 6, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 658, column: 6)
!1501 = !DILocation(line: 658, column: 44, scope: !1500)
!1502 = !DILocation(line: 658, column: 6, scope: !1475)
!1503 = !DILocation(line: 659, column: 13, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 658, column: 69)
!1505 = !DILocation(line: 660, column: 2, scope: !1504)
!1506 = !DILocation(line: 662, column: 9, scope: !1475)
!1507 = !DILocation(line: 663, column: 9, scope: !1475)
!1508 = !DILocation(line: 663, column: 43, scope: !1475)
!1509 = !DILocation(line: 662, column: 2, scope: !1475)
!1510 = !DILocation(line: 667, column: 38, scope: !1475)
!1511 = !DILocation(line: 667, column: 2, scope: !1475)
!1512 = !DILocation(line: 667, column: 13, scope: !1475)
!1513 = !DILocation(line: 667, column: 20, scope: !1475)
!1514 = !DILocation(line: 667, column: 36, scope: !1475)
!1515 = !DILocation(line: 668, column: 34, scope: !1475)
!1516 = !DILocation(line: 668, column: 2, scope: !1475)
!1517 = !DILocation(line: 668, column: 13, scope: !1475)
!1518 = !DILocation(line: 668, column: 20, scope: !1475)
!1519 = !DILocation(line: 668, column: 32, scope: !1475)
!1520 = !DILocation(line: 672, column: 2, scope: !1475)
!1521 = !DILocation(line: 672, column: 13, scope: !1475)
!1522 = !DILocation(line: 672, column: 20, scope: !1475)
!1523 = !DILocation(line: 672, column: 26, scope: !1475)
!1524 = !DILocation(line: 676, column: 10, scope: !1475)
!1525 = !DILocation(line: 676, column: 21, scope: !1475)
!1526 = !DILocation(line: 676, column: 28, scope: !1475)
!1527 = !DILocation(line: 676, column: 2, scope: !1475)
!1528 = !DILocation(line: 683, column: 8, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 683, column: 7)
!1530 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 676, column: 34)
!1531 = !DILocation(line: 683, column: 21, scope: !1529)
!1532 = !DILocation(line: 683, column: 28, scope: !1529)
!1533 = !DILocation(line: 683, column: 7, scope: !1529)
!1534 = !DILocation(line: 683, column: 37, scope: !1529)
!1535 = !DILocation(line: 684, column: 8, scope: !1529)
!1536 = !DILocation(line: 684, column: 21, scope: !1529)
!1537 = !DILocation(line: 684, column: 28, scope: !1529)
!1538 = !DILocation(line: 684, column: 7, scope: !1529)
!1539 = !DILocation(line: 683, column: 7, scope: !1530)
!1540 = !DILocation(line: 686, column: 8, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 684, column: 37)
!1542 = !DILocation(line: 685, column: 4, scope: !1541)
!1543 = !DILocation(line: 685, column: 15, scope: !1541)
!1544 = !DILocation(line: 685, column: 22, scope: !1541)
!1545 = !DILocation(line: 685, column: 30, scope: !1541)
!1546 = !DILocation(line: 687, column: 9, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 687, column: 8)
!1548 = !DILocation(line: 687, column: 20, scope: !1547)
!1549 = !DILocation(line: 687, column: 27, scope: !1547)
!1550 = !DILocation(line: 687, column: 8, scope: !1541)
!1551 = !DILocation(line: 688, column: 5, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 687, column: 36)
!1553 = !DILocation(line: 693, column: 11, scope: !1541)
!1554 = !DILocation(line: 693, column: 22, scope: !1541)
!1555 = !DILocation(line: 693, column: 29, scope: !1541)
!1556 = !DILocation(line: 694, column: 11, scope: !1541)
!1557 = !DILocation(line: 694, column: 24, scope: !1541)
!1558 = !DILocation(line: 694, column: 31, scope: !1541)
!1559 = !DILocation(line: 695, column: 11, scope: !1541)
!1560 = !DILocation(line: 695, column: 24, scope: !1541)
!1561 = !DILocation(line: 695, column: 31, scope: !1541)
!1562 = !DILocation(line: 693, column: 4, scope: !1541)
!1563 = !DILocation(line: 696, column: 3, scope: !1541)
!1564 = !DILocation(line: 697, column: 3, scope: !1530)
!1565 = !DILocation(line: 705, column: 7, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 705, column: 7)
!1567 = !DILocation(line: 705, column: 20, scope: !1566)
!1568 = !DILocation(line: 705, column: 27, scope: !1566)
!1569 = !DILocation(line: 705, column: 7, scope: !1530)
!1570 = !DILocation(line: 707, column: 8, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 705, column: 36)
!1572 = !DILocation(line: 706, column: 4, scope: !1571)
!1573 = !DILocation(line: 706, column: 15, scope: !1571)
!1574 = !DILocation(line: 706, column: 22, scope: !1571)
!1575 = !DILocation(line: 706, column: 30, scope: !1571)
!1576 = !DILocation(line: 709, column: 9, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 709, column: 8)
!1578 = !DILocation(line: 709, column: 20, scope: !1577)
!1579 = !DILocation(line: 709, column: 27, scope: !1577)
!1580 = !DILocation(line: 709, column: 8, scope: !1571)
!1581 = !DILocation(line: 710, column: 5, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 709, column: 36)
!1583 = !DILocation(line: 715, column: 11, scope: !1571)
!1584 = !DILocation(line: 715, column: 22, scope: !1571)
!1585 = !DILocation(line: 715, column: 29, scope: !1571)
!1586 = !DILocation(line: 716, column: 11, scope: !1571)
!1587 = !DILocation(line: 716, column: 24, scope: !1571)
!1588 = !DILocation(line: 716, column: 31, scope: !1571)
!1589 = !DILocation(line: 717, column: 22, scope: !1571)
!1590 = !DILocation(line: 717, column: 35, scope: !1571)
!1591 = !DILocation(line: 717, column: 42, scope: !1571)
!1592 = !DILocation(line: 717, column: 11, scope: !1571)
!1593 = !DILocation(line: 717, column: 49, scope: !1571)
!1594 = !DILocation(line: 715, column: 4, scope: !1571)
!1595 = !DILocation(line: 718, column: 3, scope: !1571)
!1596 = !DILocation(line: 719, column: 3, scope: !1530)
!1597 = !DILocation(line: 730, column: 7, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 730, column: 7)
!1599 = !DILocation(line: 730, column: 20, scope: !1598)
!1600 = !DILocation(line: 730, column: 30, scope: !1598)
!1601 = !DILocation(line: 730, column: 36, scope: !1598)
!1602 = !DILocation(line: 730, column: 7, scope: !1530)
!1603 = !DILocation(line: 731, column: 4, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 730, column: 60)
!1605 = !DILocation(line: 734, column: 25, scope: !1530)
!1606 = !DILocation(line: 734, column: 38, scope: !1530)
!1607 = !DILocation(line: 734, column: 48, scope: !1530)
!1608 = !DILocation(line: 734, column: 3, scope: !1530)
!1609 = !DILocation(line: 735, column: 3, scope: !1530)
!1610 = !DILocation(line: 741, column: 7, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 741, column: 7)
!1612 = !DILocation(line: 741, column: 18, scope: !1611)
!1613 = !DILocation(line: 741, column: 25, scope: !1611)
!1614 = !DILocation(line: 741, column: 7, scope: !1530)
!1615 = !DILocation(line: 742, column: 26, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 741, column: 34)
!1617 = !DILocation(line: 742, column: 37, scope: !1616)
!1618 = !DILocation(line: 742, column: 44, scope: !1616)
!1619 = !DILocation(line: 742, column: 4, scope: !1616)
!1620 = !DILocation(line: 743, column: 3, scope: !1616)
!1621 = !DILocation(line: 744, column: 3, scope: !1530)
!1622 = !DILocation(line: 752, column: 12, scope: !1530)
!1623 = !DILocation(line: 752, column: 10, scope: !1530)
!1624 = !DILocation(line: 753, column: 7, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 753, column: 7)
!1626 = !DILocation(line: 753, column: 7, scope: !1530)
!1627 = !DILocation(line: 754, column: 12, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 753, column: 29)
!1629 = !DILocation(line: 754, column: 4, scope: !1628)
!1630 = !DILocation(line: 756, column: 3, scope: !1530)
!1631 = !DILocation(line: 761, column: 10, scope: !1530)
!1632 = !DILocation(line: 761, column: 21, scope: !1530)
!1633 = !DILocation(line: 762, column: 9, scope: !1530)
!1634 = !DILocation(line: 760, column: 12, scope: !1530)
!1635 = !DILocation(line: 760, column: 10, scope: !1530)
!1636 = !DILocation(line: 763, column: 7, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 763, column: 7)
!1638 = !DILocation(line: 763, column: 7, scope: !1530)
!1639 = !DILocation(line: 764, column: 12, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 763, column: 29)
!1641 = !DILocation(line: 764, column: 4, scope: !1640)
!1642 = !DILocation(line: 766, column: 3, scope: !1530)
!1643 = !DILocation(line: 772, column: 3, scope: !1530)
!1644 = !DILocation(line: 775, column: 2, scope: !1475)
!1645 = !DILocation(line: 776, column: 1, scope: !1475)
!1646 = distinct !DISubprogram(name: "acpi_ut_copy_ielement_to_eelement", scope: !3, file: !3, line: 212, type: !1647, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !885)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!90, !58, !103, !335, !74}
!1649 = !DILocalVariable(name: "object_type", arg: 1, scope: !1646, file: !3, line: 212, type: !58)
!1650 = !DILocation(line: 212, column: 38, scope: !1646)
!1651 = !DILocalVariable(name: "source_object", arg: 2, scope: !1646, file: !3, line: 213, type: !103)
!1652 = !DILocation(line: 213, column: 34, scope: !1646)
!1653 = !DILocalVariable(name: "state", arg: 3, scope: !1646, file: !3, line: 214, type: !335)
!1654 = !DILocation(line: 214, column: 33, scope: !1646)
!1655 = !DILocalVariable(name: "context", arg: 4, scope: !1646, file: !3, line: 215, type: !74)
!1656 = !DILocation(line: 215, column: 13, scope: !1646)
!1657 = !DILocalVariable(name: "status", scope: !1646, file: !3, line: 217, type: !90)
!1658 = !DILocation(line: 217, column: 14, scope: !1646)
!1659 = !DILocalVariable(name: "info", scope: !1646, file: !3, line: 218, type: !91)
!1660 = !DILocation(line: 218, column: 24, scope: !1646)
!1661 = !DILocation(line: 218, column: 55, scope: !1646)
!1662 = !DILocation(line: 218, column: 31, scope: !1646)
!1663 = !DILocalVariable(name: "object_space", scope: !1646, file: !3, line: 219, type: !89)
!1664 = !DILocation(line: 219, column: 12, scope: !1646)
!1665 = !DILocalVariable(name: "this_index", scope: !1646, file: !3, line: 220, type: !31)
!1666 = !DILocation(line: 220, column: 6, scope: !1646)
!1667 = !DILocalVariable(name: "target_object", scope: !1646, file: !3, line: 221, type: !25)
!1668 = !DILocation(line: 221, column: 21, scope: !1646)
!1669 = !DILocation(line: 225, column: 15, scope: !1646)
!1670 = !DILocation(line: 225, column: 22, scope: !1646)
!1671 = !DILocation(line: 225, column: 26, scope: !1646)
!1672 = !DILocation(line: 225, column: 13, scope: !1646)
!1673 = !DILocation(line: 227, column: 14, scope: !1646)
!1674 = !DILocation(line: 227, column: 21, scope: !1646)
!1675 = !DILocation(line: 227, column: 25, scope: !1646)
!1676 = !DILocation(line: 228, column: 6, scope: !1646)
!1677 = !DILocation(line: 228, column: 14, scope: !1646)
!1678 = !DILocation(line: 228, column: 23, scope: !1646)
!1679 = !DILocation(line: 226, column: 40, scope: !1646)
!1680 = !DILocation(line: 226, column: 16, scope: !1646)
!1681 = !DILocation(line: 230, column: 10, scope: !1646)
!1682 = !DILocation(line: 230, column: 2, scope: !1646)
!1683 = !DILocation(line: 235, column: 44, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 230, column: 23)
!1685 = !DILocation(line: 236, column: 9, scope: !1684)
!1686 = !DILocation(line: 237, column: 9, scope: !1684)
!1687 = !DILocation(line: 237, column: 15, scope: !1684)
!1688 = !DILocation(line: 235, column: 12, scope: !1684)
!1689 = !DILocation(line: 235, column: 10, scope: !1684)
!1690 = !DILocation(line: 239, column: 7, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 239, column: 7)
!1692 = !DILocation(line: 239, column: 7, scope: !1684)
!1693 = !DILocation(line: 240, column: 12, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 239, column: 29)
!1695 = !DILocation(line: 240, column: 4, scope: !1694)
!1696 = !DILocation(line: 242, column: 3, scope: !1684)
!1697 = !DILocation(line: 248, column: 3, scope: !1684)
!1698 = !DILocation(line: 248, column: 18, scope: !1684)
!1699 = !DILocation(line: 248, column: 23, scope: !1684)
!1700 = !DILocation(line: 249, column: 34, scope: !1684)
!1701 = !DILocation(line: 249, column: 49, scope: !1684)
!1702 = !DILocation(line: 249, column: 57, scope: !1684)
!1703 = !DILocation(line: 249, column: 3, scope: !1684)
!1704 = !DILocation(line: 249, column: 18, scope: !1684)
!1705 = !DILocation(line: 249, column: 26, scope: !1684)
!1706 = !DILocation(line: 249, column: 32, scope: !1684)
!1707 = !DILocation(line: 251, column: 7, scope: !1684)
!1708 = !DILocation(line: 250, column: 3, scope: !1684)
!1709 = !DILocation(line: 250, column: 18, scope: !1684)
!1710 = !DILocation(line: 250, column: 26, scope: !1684)
!1711 = !DILocation(line: 250, column: 35, scope: !1684)
!1712 = !DILocation(line: 256, column: 32, scope: !1684)
!1713 = !DILocation(line: 256, column: 3, scope: !1684)
!1714 = !DILocation(line: 256, column: 10, scope: !1684)
!1715 = !DILocation(line: 256, column: 14, scope: !1684)
!1716 = !DILocation(line: 256, column: 30, scope: !1684)
!1717 = !DILocation(line: 262, column: 18, scope: !1684)
!1718 = !DILocation(line: 262, column: 16, scope: !1684)
!1719 = !DILocation(line: 267, column: 3, scope: !1684)
!1720 = !DILocation(line: 271, column: 3, scope: !1684)
!1721 = !DILocation(line: 274, column: 22, scope: !1646)
!1722 = !DILocation(line: 274, column: 2, scope: !1646)
!1723 = !DILocation(line: 274, column: 8, scope: !1646)
!1724 = !DILocation(line: 274, column: 19, scope: !1646)
!1725 = !DILocation(line: 275, column: 18, scope: !1646)
!1726 = !DILocation(line: 275, column: 2, scope: !1646)
!1727 = !DILocation(line: 275, column: 8, scope: !1646)
!1728 = !DILocation(line: 275, column: 15, scope: !1646)
!1729 = !DILocation(line: 276, column: 10, scope: !1646)
!1730 = !DILocation(line: 276, column: 2, scope: !1646)
!1731 = !DILocation(line: 277, column: 1, scope: !1646)
!1732 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1733, file: !1733, line: 55, type: !1734, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !885)
!1733 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!74, !89}
!1736 = !DILocalVariable(name: "flags", arg: 1, scope: !1737, file: !1738, line: 162, type: !101)
!1737 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1738, file: !1738, line: 162, type: !1739, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !885)
!1738 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!1741, !101}
!1741 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1742 = !DILocation(line: 162, column: 67, scope: !1737, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 57, column: 23, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !1733, line: 57, column: 23)
!1745 = distinct !DILexicalBlock(scope: !1732, file: !1733, line: 57, column: 23)
!1746 = !DILocalVariable(name: "size", arg: 1, scope: !1732, file: !1733, line: 55, type: !89)
!1747 = !DILocation(line: 55, column: 55, scope: !1732)
!1748 = !DILocation(line: 57, column: 17, scope: !1732)
!1749 = !DILocalVariable(name: "_flags", scope: !1745, file: !1733, line: 57, type: !101)
!1750 = !DILocation(line: 57, column: 23, scope: !1745)
!1751 = !DILocalVariable(name: "__dummy", scope: !1752, file: !1733, line: 57, type: !101)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !1733, line: 57, column: 23)
!1753 = distinct !DILexicalBlock(scope: !1745, file: !1733, line: 57, column: 23)
!1754 = !DILocation(line: 57, column: 23, scope: !1752)
!1755 = !DILocalVariable(name: "__dummy2", scope: !1752, file: !1733, line: 57, type: !101)
!1756 = !DILocation(line: 57, column: 23, scope: !1753)
!1757 = !DILocalVariable(name: "__dummy", scope: !1758, file: !1733, line: 57, type: !101)
!1758 = distinct !DILexicalBlock(scope: !1744, file: !1733, line: 57, column: 23)
!1759 = !DILocation(line: 57, column: 23, scope: !1758)
!1760 = !DILocalVariable(name: "__dummy2", scope: !1758, file: !1733, line: 57, type: !101)
!1761 = !DILocation(line: 57, column: 23, scope: !1744)
!1762 = !DILocation(line: 164, column: 11, scope: !1737, inlinedAt: !1743)
!1763 = !DILocation(line: 164, column: 17, scope: !1737, inlinedAt: !1743)
!1764 = !DILocation(line: 164, column: 9, scope: !1737, inlinedAt: !1743)
!1765 = !DILocation(line: 57, column: 23, scope: !1732)
!1766 = !DILocation(line: 57, column: 9, scope: !1732)
!1767 = !DILocation(line: 57, column: 2, scope: !1732)
!1768 = distinct !DISubprogram(name: "kzalloc", scope: !18, file: !18, line: 662, type: !1769, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !885)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!74, !1771, !99}
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 55, baseType: !1772)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1773, line: 72, baseType: !1774)
!1773 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1773, line: 16, baseType: !101)
!1775 = !DILocalVariable(name: "s", arg: 1, scope: !1776, file: !18, line: 445, type: !1779)
!1776 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !18, file: !18, line: 445, type: !1777, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !885)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!74, !1779, !99, !1771}
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1781, line: 117, flags: DIFlagFwdDecl)
!1781 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1782 = !DILocation(line: 445, column: 72, scope: !1776, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 552, column: 10, scope: !1784, inlinedAt: !1787)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !18, line: 540, column: 34)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !18, line: 540, column: 6)
!1786 = distinct !DISubprogram(name: "kmalloc", scope: !18, file: !18, line: 538, type: !1769, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !885)
!1787 = distinct !DILocation(line: 664, column: 9, scope: !1768)
!1788 = !DILocalVariable(name: "flags", arg: 2, scope: !1776, file: !18, line: 446, type: !99)
!1789 = !DILocation(line: 446, column: 9, scope: !1776, inlinedAt: !1783)
!1790 = !DILocalVariable(name: "size", arg: 3, scope: !1776, file: !18, line: 446, type: !1771)
!1791 = !DILocation(line: 446, column: 23, scope: !1776, inlinedAt: !1783)
!1792 = !DILocalVariable(name: "ret", scope: !1776, file: !18, line: 448, type: !74)
!1793 = !DILocation(line: 448, column: 8, scope: !1776, inlinedAt: !1783)
!1794 = !DILocalVariable(name: "flags", arg: 1, scope: !1795, file: !18, line: 318, type: !99)
!1795 = distinct !DISubprogram(name: "kmalloc_type", scope: !18, file: !18, line: 318, type: !1796, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !885)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!17, !99}
!1798 = !DILocation(line: 318, column: 67, scope: !1795, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 553, column: 20, scope: !1784, inlinedAt: !1787)
!1800 = !DILocalVariable(name: "size", arg: 1, scope: !1801, file: !18, line: 346, type: !1771)
!1801 = distinct !DISubprogram(name: "kmalloc_index", scope: !18, file: !18, line: 346, type: !1802, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !885)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!7, !1771}
!1804 = !DILocation(line: 346, column: 58, scope: !1801, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 547, column: 11, scope: !1784, inlinedAt: !1787)
!1806 = !DILocalVariable(name: "size", arg: 1, scope: !1807, file: !18, line: 472, type: !1771)
!1807 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !18, file: !18, line: 472, type: !1808, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !885)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!74, !1771, !99, !7}
!1810 = !DILocation(line: 472, column: 28, scope: !1807, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 481, column: 9, scope: !1812, inlinedAt: !1813)
!1812 = distinct !DISubprogram(name: "kmalloc_large", scope: !18, file: !18, line: 478, type: !1769, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !885)
!1813 = distinct !DILocation(line: 545, column: 11, scope: !1814, inlinedAt: !1787)
!1814 = distinct !DILexicalBlock(scope: !1784, file: !18, line: 544, column: 7)
!1815 = !DILocalVariable(name: "flags", arg: 2, scope: !1807, file: !18, line: 472, type: !99)
!1816 = !DILocation(line: 472, column: 40, scope: !1807, inlinedAt: !1811)
!1817 = !DILocalVariable(name: "order", arg: 3, scope: !1807, file: !18, line: 472, type: !7)
!1818 = !DILocation(line: 472, column: 60, scope: !1807, inlinedAt: !1811)
!1819 = !DILocalVariable(name: "size", arg: 1, scope: !1812, file: !18, line: 478, type: !1771)
!1820 = !DILocation(line: 478, column: 51, scope: !1812, inlinedAt: !1813)
!1821 = !DILocalVariable(name: "flags", arg: 2, scope: !1812, file: !18, line: 478, type: !99)
!1822 = !DILocation(line: 478, column: 63, scope: !1812, inlinedAt: !1813)
!1823 = !DILocalVariable(name: "order", scope: !1812, file: !18, line: 480, type: !7)
!1824 = !DILocation(line: 480, column: 15, scope: !1812, inlinedAt: !1813)
!1825 = !DILocalVariable(name: "size", arg: 1, scope: !1786, file: !18, line: 538, type: !1771)
!1826 = !DILocation(line: 538, column: 45, scope: !1786, inlinedAt: !1787)
!1827 = !DILocalVariable(name: "flags", arg: 2, scope: !1786, file: !18, line: 538, type: !99)
!1828 = !DILocation(line: 538, column: 57, scope: !1786, inlinedAt: !1787)
!1829 = !DILocalVariable(name: "index", scope: !1784, file: !18, line: 542, type: !7)
!1830 = !DILocation(line: 542, column: 16, scope: !1784, inlinedAt: !1787)
!1831 = !DILocalVariable(name: "size", arg: 1, scope: !1768, file: !18, line: 662, type: !1771)
!1832 = !DILocation(line: 662, column: 36, scope: !1768)
!1833 = !DILocalVariable(name: "flags", arg: 2, scope: !1768, file: !18, line: 662, type: !99)
!1834 = !DILocation(line: 662, column: 48, scope: !1768)
!1835 = !DILocation(line: 664, column: 17, scope: !1768)
!1836 = !DILocation(line: 664, column: 23, scope: !1768)
!1837 = !DILocation(line: 664, column: 29, scope: !1768)
!1838 = !DILocation(line: 540, column: 27, scope: !1785, inlinedAt: !1787)
!1839 = !DILocation(line: 540, column: 6, scope: !1785, inlinedAt: !1787)
!1840 = !DILocation(line: 540, column: 6, scope: !1786, inlinedAt: !1787)
!1841 = !DILocation(line: 544, column: 7, scope: !1814, inlinedAt: !1787)
!1842 = !DILocation(line: 544, column: 12, scope: !1814, inlinedAt: !1787)
!1843 = !DILocation(line: 544, column: 7, scope: !1784, inlinedAt: !1787)
!1844 = !DILocation(line: 545, column: 25, scope: !1814, inlinedAt: !1787)
!1845 = !DILocation(line: 545, column: 31, scope: !1814, inlinedAt: !1787)
!1846 = !DILocation(line: 480, column: 33, scope: !1812, inlinedAt: !1813)
!1847 = !DILocation(line: 480, column: 23, scope: !1812, inlinedAt: !1813)
!1848 = !DILocation(line: 481, column: 29, scope: !1812, inlinedAt: !1813)
!1849 = !DILocation(line: 481, column: 35, scope: !1812, inlinedAt: !1813)
!1850 = !DILocation(line: 481, column: 42, scope: !1812, inlinedAt: !1813)
!1851 = !DILocation(line: 474, column: 23, scope: !1807, inlinedAt: !1811)
!1852 = !DILocation(line: 474, column: 29, scope: !1807, inlinedAt: !1811)
!1853 = !DILocation(line: 474, column: 36, scope: !1807, inlinedAt: !1811)
!1854 = !DILocation(line: 474, column: 9, scope: !1807, inlinedAt: !1811)
!1855 = !DILocation(line: 545, column: 4, scope: !1814, inlinedAt: !1787)
!1856 = !DILocation(line: 547, column: 25, scope: !1784, inlinedAt: !1787)
!1857 = !DILocation(line: 348, column: 7, scope: !1858, inlinedAt: !1805)
!1858 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 348, column: 6)
!1859 = !DILocation(line: 348, column: 6, scope: !1801, inlinedAt: !1805)
!1860 = !DILocation(line: 349, column: 3, scope: !1858, inlinedAt: !1805)
!1861 = !DILocation(line: 351, column: 6, scope: !1862, inlinedAt: !1805)
!1862 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 351, column: 6)
!1863 = !DILocation(line: 351, column: 11, scope: !1862, inlinedAt: !1805)
!1864 = !DILocation(line: 351, column: 6, scope: !1801, inlinedAt: !1805)
!1865 = !DILocation(line: 352, column: 3, scope: !1862, inlinedAt: !1805)
!1866 = !DILocation(line: 354, column: 32, scope: !1867, inlinedAt: !1805)
!1867 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 354, column: 6)
!1868 = !DILocation(line: 354, column: 37, scope: !1867, inlinedAt: !1805)
!1869 = !DILocation(line: 354, column: 42, scope: !1867, inlinedAt: !1805)
!1870 = !DILocation(line: 354, column: 45, scope: !1867, inlinedAt: !1805)
!1871 = !DILocation(line: 354, column: 50, scope: !1867, inlinedAt: !1805)
!1872 = !DILocation(line: 354, column: 6, scope: !1801, inlinedAt: !1805)
!1873 = !DILocation(line: 355, column: 3, scope: !1867, inlinedAt: !1805)
!1874 = !DILocation(line: 356, column: 32, scope: !1875, inlinedAt: !1805)
!1875 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 356, column: 6)
!1876 = !DILocation(line: 356, column: 37, scope: !1875, inlinedAt: !1805)
!1877 = !DILocation(line: 356, column: 43, scope: !1875, inlinedAt: !1805)
!1878 = !DILocation(line: 356, column: 46, scope: !1875, inlinedAt: !1805)
!1879 = !DILocation(line: 356, column: 51, scope: !1875, inlinedAt: !1805)
!1880 = !DILocation(line: 356, column: 6, scope: !1801, inlinedAt: !1805)
!1881 = !DILocation(line: 357, column: 3, scope: !1875, inlinedAt: !1805)
!1882 = !DILocation(line: 358, column: 6, scope: !1883, inlinedAt: !1805)
!1883 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 358, column: 6)
!1884 = !DILocation(line: 358, column: 11, scope: !1883, inlinedAt: !1805)
!1885 = !DILocation(line: 358, column: 6, scope: !1801, inlinedAt: !1805)
!1886 = !DILocation(line: 358, column: 26, scope: !1883, inlinedAt: !1805)
!1887 = !DILocation(line: 359, column: 6, scope: !1888, inlinedAt: !1805)
!1888 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 359, column: 6)
!1889 = !DILocation(line: 359, column: 11, scope: !1888, inlinedAt: !1805)
!1890 = !DILocation(line: 359, column: 6, scope: !1801, inlinedAt: !1805)
!1891 = !DILocation(line: 359, column: 26, scope: !1888, inlinedAt: !1805)
!1892 = !DILocation(line: 360, column: 6, scope: !1893, inlinedAt: !1805)
!1893 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 360, column: 6)
!1894 = !DILocation(line: 360, column: 11, scope: !1893, inlinedAt: !1805)
!1895 = !DILocation(line: 360, column: 6, scope: !1801, inlinedAt: !1805)
!1896 = !DILocation(line: 360, column: 26, scope: !1893, inlinedAt: !1805)
!1897 = !DILocation(line: 361, column: 6, scope: !1898, inlinedAt: !1805)
!1898 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 361, column: 6)
!1899 = !DILocation(line: 361, column: 11, scope: !1898, inlinedAt: !1805)
!1900 = !DILocation(line: 361, column: 6, scope: !1801, inlinedAt: !1805)
!1901 = !DILocation(line: 361, column: 26, scope: !1898, inlinedAt: !1805)
!1902 = !DILocation(line: 362, column: 6, scope: !1903, inlinedAt: !1805)
!1903 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 362, column: 6)
!1904 = !DILocation(line: 362, column: 11, scope: !1903, inlinedAt: !1805)
!1905 = !DILocation(line: 362, column: 6, scope: !1801, inlinedAt: !1805)
!1906 = !DILocation(line: 362, column: 26, scope: !1903, inlinedAt: !1805)
!1907 = !DILocation(line: 363, column: 6, scope: !1908, inlinedAt: !1805)
!1908 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 363, column: 6)
!1909 = !DILocation(line: 363, column: 11, scope: !1908, inlinedAt: !1805)
!1910 = !DILocation(line: 363, column: 6, scope: !1801, inlinedAt: !1805)
!1911 = !DILocation(line: 363, column: 26, scope: !1908, inlinedAt: !1805)
!1912 = !DILocation(line: 364, column: 6, scope: !1913, inlinedAt: !1805)
!1913 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 364, column: 6)
!1914 = !DILocation(line: 364, column: 11, scope: !1913, inlinedAt: !1805)
!1915 = !DILocation(line: 364, column: 6, scope: !1801, inlinedAt: !1805)
!1916 = !DILocation(line: 364, column: 26, scope: !1913, inlinedAt: !1805)
!1917 = !DILocation(line: 365, column: 6, scope: !1918, inlinedAt: !1805)
!1918 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 365, column: 6)
!1919 = !DILocation(line: 365, column: 11, scope: !1918, inlinedAt: !1805)
!1920 = !DILocation(line: 365, column: 6, scope: !1801, inlinedAt: !1805)
!1921 = !DILocation(line: 365, column: 26, scope: !1918, inlinedAt: !1805)
!1922 = !DILocation(line: 366, column: 6, scope: !1923, inlinedAt: !1805)
!1923 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 366, column: 6)
!1924 = !DILocation(line: 366, column: 11, scope: !1923, inlinedAt: !1805)
!1925 = !DILocation(line: 366, column: 6, scope: !1801, inlinedAt: !1805)
!1926 = !DILocation(line: 366, column: 26, scope: !1923, inlinedAt: !1805)
!1927 = !DILocation(line: 367, column: 6, scope: !1928, inlinedAt: !1805)
!1928 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 367, column: 6)
!1929 = !DILocation(line: 367, column: 11, scope: !1928, inlinedAt: !1805)
!1930 = !DILocation(line: 367, column: 6, scope: !1801, inlinedAt: !1805)
!1931 = !DILocation(line: 367, column: 26, scope: !1928, inlinedAt: !1805)
!1932 = !DILocation(line: 368, column: 6, scope: !1933, inlinedAt: !1805)
!1933 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 368, column: 6)
!1934 = !DILocation(line: 368, column: 11, scope: !1933, inlinedAt: !1805)
!1935 = !DILocation(line: 368, column: 6, scope: !1801, inlinedAt: !1805)
!1936 = !DILocation(line: 368, column: 26, scope: !1933, inlinedAt: !1805)
!1937 = !DILocation(line: 369, column: 6, scope: !1938, inlinedAt: !1805)
!1938 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 369, column: 6)
!1939 = !DILocation(line: 369, column: 11, scope: !1938, inlinedAt: !1805)
!1940 = !DILocation(line: 369, column: 6, scope: !1801, inlinedAt: !1805)
!1941 = !DILocation(line: 369, column: 26, scope: !1938, inlinedAt: !1805)
!1942 = !DILocation(line: 370, column: 6, scope: !1943, inlinedAt: !1805)
!1943 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 370, column: 6)
!1944 = !DILocation(line: 370, column: 11, scope: !1943, inlinedAt: !1805)
!1945 = !DILocation(line: 370, column: 6, scope: !1801, inlinedAt: !1805)
!1946 = !DILocation(line: 370, column: 26, scope: !1943, inlinedAt: !1805)
!1947 = !DILocation(line: 371, column: 6, scope: !1948, inlinedAt: !1805)
!1948 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 371, column: 6)
!1949 = !DILocation(line: 371, column: 11, scope: !1948, inlinedAt: !1805)
!1950 = !DILocation(line: 371, column: 6, scope: !1801, inlinedAt: !1805)
!1951 = !DILocation(line: 371, column: 26, scope: !1948, inlinedAt: !1805)
!1952 = !DILocation(line: 372, column: 6, scope: !1953, inlinedAt: !1805)
!1953 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 372, column: 6)
!1954 = !DILocation(line: 372, column: 11, scope: !1953, inlinedAt: !1805)
!1955 = !DILocation(line: 372, column: 6, scope: !1801, inlinedAt: !1805)
!1956 = !DILocation(line: 372, column: 26, scope: !1953, inlinedAt: !1805)
!1957 = !DILocation(line: 373, column: 6, scope: !1958, inlinedAt: !1805)
!1958 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 373, column: 6)
!1959 = !DILocation(line: 373, column: 11, scope: !1958, inlinedAt: !1805)
!1960 = !DILocation(line: 373, column: 6, scope: !1801, inlinedAt: !1805)
!1961 = !DILocation(line: 373, column: 26, scope: !1958, inlinedAt: !1805)
!1962 = !DILocation(line: 374, column: 6, scope: !1963, inlinedAt: !1805)
!1963 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 374, column: 6)
!1964 = !DILocation(line: 374, column: 11, scope: !1963, inlinedAt: !1805)
!1965 = !DILocation(line: 374, column: 6, scope: !1801, inlinedAt: !1805)
!1966 = !DILocation(line: 374, column: 26, scope: !1963, inlinedAt: !1805)
!1967 = !DILocation(line: 375, column: 6, scope: !1968, inlinedAt: !1805)
!1968 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 375, column: 6)
!1969 = !DILocation(line: 375, column: 11, scope: !1968, inlinedAt: !1805)
!1970 = !DILocation(line: 375, column: 6, scope: !1801, inlinedAt: !1805)
!1971 = !DILocation(line: 375, column: 27, scope: !1968, inlinedAt: !1805)
!1972 = !DILocation(line: 376, column: 6, scope: !1973, inlinedAt: !1805)
!1973 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 376, column: 6)
!1974 = !DILocation(line: 376, column: 11, scope: !1973, inlinedAt: !1805)
!1975 = !DILocation(line: 376, column: 6, scope: !1801, inlinedAt: !1805)
!1976 = !DILocation(line: 376, column: 32, scope: !1973, inlinedAt: !1805)
!1977 = !DILocation(line: 377, column: 6, scope: !1978, inlinedAt: !1805)
!1978 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 377, column: 6)
!1979 = !DILocation(line: 377, column: 11, scope: !1978, inlinedAt: !1805)
!1980 = !DILocation(line: 377, column: 6, scope: !1801, inlinedAt: !1805)
!1981 = !DILocation(line: 377, column: 32, scope: !1978, inlinedAt: !1805)
!1982 = !DILocation(line: 378, column: 6, scope: !1983, inlinedAt: !1805)
!1983 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 378, column: 6)
!1984 = !DILocation(line: 378, column: 11, scope: !1983, inlinedAt: !1805)
!1985 = !DILocation(line: 378, column: 6, scope: !1801, inlinedAt: !1805)
!1986 = !DILocation(line: 378, column: 32, scope: !1983, inlinedAt: !1805)
!1987 = !DILocation(line: 379, column: 6, scope: !1988, inlinedAt: !1805)
!1988 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 379, column: 6)
!1989 = !DILocation(line: 379, column: 11, scope: !1988, inlinedAt: !1805)
!1990 = !DILocation(line: 379, column: 6, scope: !1801, inlinedAt: !1805)
!1991 = !DILocation(line: 379, column: 33, scope: !1988, inlinedAt: !1805)
!1992 = !DILocation(line: 380, column: 6, scope: !1993, inlinedAt: !1805)
!1993 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 380, column: 6)
!1994 = !DILocation(line: 380, column: 11, scope: !1993, inlinedAt: !1805)
!1995 = !DILocation(line: 380, column: 6, scope: !1801, inlinedAt: !1805)
!1996 = !DILocation(line: 380, column: 33, scope: !1993, inlinedAt: !1805)
!1997 = !DILocation(line: 381, column: 6, scope: !1998, inlinedAt: !1805)
!1998 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 381, column: 6)
!1999 = !DILocation(line: 381, column: 11, scope: !1998, inlinedAt: !1805)
!2000 = !DILocation(line: 381, column: 6, scope: !1801, inlinedAt: !1805)
!2001 = !DILocation(line: 381, column: 33, scope: !1998, inlinedAt: !1805)
!2002 = !DILocation(line: 382, column: 2, scope: !2003, inlinedAt: !1805)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !18, line: 382, column: 2)
!2004 = distinct !DILexicalBlock(scope: !1801, file: !18, line: 382, column: 2)
!2005 = !{i32 -2144093214, i32 -2144093185, i32 -2144093139, i32 -2144093081, i32 -2144093027, i32 -2144092973, i32 -2144092918, i32 -2144092887}
!2006 = !DILocation(line: 382, column: 2, scope: !2007, inlinedAt: !1805)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !18, line: 382, column: 2)
!2008 = distinct !DILexicalBlock(scope: !2004, file: !18, line: 382, column: 2)
!2009 = !{i32 -2144092444, i32 -2144092437, i32 -2144092383, i32 -2144092352, i32 -2144092322}
!2010 = !DILocation(line: 382, column: 2, scope: !2008, inlinedAt: !1805)
!2011 = !DILocation(line: 386, column: 1, scope: !1801, inlinedAt: !1805)
!2012 = !DILocation(line: 547, column: 9, scope: !1784, inlinedAt: !1787)
!2013 = !DILocation(line: 549, column: 8, scope: !2014, inlinedAt: !1787)
!2014 = distinct !DILexicalBlock(scope: !1784, file: !18, line: 549, column: 7)
!2015 = !DILocation(line: 549, column: 7, scope: !1784, inlinedAt: !1787)
!2016 = !DILocation(line: 550, column: 4, scope: !2014, inlinedAt: !1787)
!2017 = !DILocation(line: 553, column: 33, scope: !1784, inlinedAt: !1787)
!2018 = !DILocation(line: 325, column: 6, scope: !2019, inlinedAt: !1799)
!2019 = distinct !DILexicalBlock(scope: !1795, file: !18, line: 325, column: 6)
!2020 = !DILocation(line: 325, column: 6, scope: !1795, inlinedAt: !1799)
!2021 = !DILocation(line: 326, column: 3, scope: !2019, inlinedAt: !1799)
!2022 = !DILocation(line: 332, column: 9, scope: !1795, inlinedAt: !1799)
!2023 = !DILocation(line: 332, column: 15, scope: !1795, inlinedAt: !1799)
!2024 = !DILocation(line: 332, column: 2, scope: !1795, inlinedAt: !1799)
!2025 = !DILocation(line: 336, column: 1, scope: !1795, inlinedAt: !1799)
!2026 = !DILocation(line: 553, column: 5, scope: !1784, inlinedAt: !1787)
!2027 = !DILocation(line: 553, column: 41, scope: !1784, inlinedAt: !1787)
!2028 = !DILocation(line: 554, column: 5, scope: !1784, inlinedAt: !1787)
!2029 = !DILocation(line: 554, column: 12, scope: !1784, inlinedAt: !1787)
!2030 = !DILocation(line: 448, column: 31, scope: !1776, inlinedAt: !1783)
!2031 = !DILocation(line: 448, column: 34, scope: !1776, inlinedAt: !1783)
!2032 = !DILocation(line: 448, column: 14, scope: !1776, inlinedAt: !1783)
!2033 = !DILocation(line: 450, column: 22, scope: !1776, inlinedAt: !1783)
!2034 = !DILocation(line: 450, column: 25, scope: !1776, inlinedAt: !1783)
!2035 = !DILocation(line: 450, column: 30, scope: !1776, inlinedAt: !1783)
!2036 = !DILocation(line: 450, column: 36, scope: !1776, inlinedAt: !1783)
!2037 = !DILocation(line: 450, column: 8, scope: !1776, inlinedAt: !1783)
!2038 = !DILocation(line: 450, column: 6, scope: !1776, inlinedAt: !1783)
!2039 = !DILocation(line: 451, column: 9, scope: !1776, inlinedAt: !1783)
!2040 = !DILocation(line: 552, column: 3, scope: !1784, inlinedAt: !1787)
!2041 = !DILocation(line: 557, column: 19, scope: !1786, inlinedAt: !1787)
!2042 = !DILocation(line: 557, column: 25, scope: !1786, inlinedAt: !1787)
!2043 = !DILocation(line: 557, column: 9, scope: !1786, inlinedAt: !1787)
!2044 = !DILocation(line: 557, column: 2, scope: !1786, inlinedAt: !1787)
!2045 = !DILocation(line: 558, column: 1, scope: !1786, inlinedAt: !1787)
!2046 = !DILocation(line: 664, column: 2, scope: !1768)
!2047 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2048, file: !2048, line: 646, type: !2049, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !885)
!2048 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!101}
!2051 = !DILocalVariable(name: "__ret", scope: !2052, file: !2048, line: 648, type: !101)
!2052 = distinct !DILexicalBlock(scope: !2047, file: !2048, line: 648, column: 9)
!2053 = !DILocation(line: 648, column: 9, scope: !2052)
!2054 = !DILocalVariable(name: "__edi", scope: !2052, file: !2048, line: 648, type: !101)
!2055 = !DILocalVariable(name: "__esi", scope: !2052, file: !2048, line: 648, type: !101)
!2056 = !DILocalVariable(name: "__edx", scope: !2052, file: !2048, line: 648, type: !101)
!2057 = !DILocalVariable(name: "__ecx", scope: !2052, file: !2048, line: 648, type: !101)
!2058 = !DILocalVariable(name: "__eax", scope: !2052, file: !2048, line: 648, type: !101)
!2059 = !DILocation(line: 648, column: 9, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !2048, line: 648, column: 9)
!2061 = distinct !DILexicalBlock(scope: !2052, file: !2048, line: 648, column: 9)
!2062 = !{i32 -2145766820, i32 -2145764505, i32 -2145764271, i32 -2145764220, i32 -2145764192, i32 -2145764167, i32 -2145764483, i32 -2145764470, i32 -2145764032, i32 -2145763913, i32 -2145764378, i32 -2145764351, i32 -2145764323, i32 -2145764293}
!2063 = !DILocalVariable(name: "__mask", scope: !2064, file: !2048, line: 648, type: !101)
!2064 = distinct !DILexicalBlock(scope: !2060, file: !2048, line: 648, column: 9)
!2065 = !DILocation(line: 648, column: 9, scope: !2064)
!2066 = !DILocation(line: 648, column: 9, scope: !2061)
!2067 = !DILocation(line: 648, column: 2, scope: !2047)
!2068 = distinct !DISubprogram(name: "get_order", scope: !2069, file: !2069, line: 29, type: !1739, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !885)
!2069 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2070 = !DILocalVariable(name: "x", arg: 1, scope: !2071, file: !2072, line: 366, type: !41)
!2071 = distinct !DISubprogram(name: "fls64", scope: !2072, file: !2072, line: 366, type: !2073, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !885)
!2072 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!1741, !41}
!2075 = !DILocation(line: 366, column: 40, scope: !2071, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 46, column: 9, scope: !2068)
!2077 = !DILocalVariable(name: "bitpos", scope: !2071, file: !2072, line: 368, type: !1741)
!2078 = !DILocation(line: 368, column: 6, scope: !2071, inlinedAt: !2076)
!2079 = !DILocalVariable(name: "size", arg: 1, scope: !2068, file: !2069, line: 29, type: !101)
!2080 = !DILocation(line: 29, column: 63, scope: !2068)
!2081 = !DILocation(line: 31, column: 27, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2068, file: !2069, line: 31, column: 6)
!2083 = !DILocation(line: 31, column: 6, scope: !2082)
!2084 = !DILocation(line: 31, column: 6, scope: !2068)
!2085 = !DILocation(line: 32, column: 8, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !2069, line: 32, column: 7)
!2087 = distinct !DILexicalBlock(scope: !2082, file: !2069, line: 31, column: 34)
!2088 = !DILocation(line: 32, column: 7, scope: !2087)
!2089 = !DILocation(line: 33, column: 4, scope: !2086)
!2090 = !DILocation(line: 35, column: 7, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2087, file: !2069, line: 35, column: 7)
!2092 = !DILocation(line: 35, column: 12, scope: !2091)
!2093 = !DILocation(line: 35, column: 7, scope: !2087)
!2094 = !DILocation(line: 36, column: 4, scope: !2091)
!2095 = !DILocation(line: 38, column: 10, scope: !2087)
!2096 = !DILocation(line: 38, column: 28, scope: !2087)
!2097 = !DILocation(line: 38, column: 41, scope: !2087)
!2098 = !DILocation(line: 38, column: 3, scope: !2087)
!2099 = !DILocation(line: 41, column: 6, scope: !2068)
!2100 = !DILocation(line: 42, column: 7, scope: !2068)
!2101 = !DILocation(line: 46, column: 15, scope: !2068)
!2102 = !DILocation(line: 374, column: 2, scope: !2071, inlinedAt: !2076)
!2103 = !DILocation(line: 376, column: 14, scope: !2071, inlinedAt: !2076)
!2104 = !{i32 677988}
!2105 = !DILocation(line: 377, column: 9, scope: !2071, inlinedAt: !2076)
!2106 = !DILocation(line: 377, column: 16, scope: !2071, inlinedAt: !2076)
!2107 = !DILocation(line: 46, column: 2, scope: !2068)
!2108 = !DILocation(line: 48, column: 1, scope: !2068)
!2109 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2110, file: !2110, line: 30, type: !2111, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !885)
!2110 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!1741, !40}
!2113 = !DILocation(line: 366, column: 40, scope: !2071, inlinedAt: !2114)
!2114 = distinct !DILocation(line: 32, column: 9, scope: !2109)
!2115 = !DILocation(line: 368, column: 6, scope: !2071, inlinedAt: !2114)
!2116 = !DILocalVariable(name: "n", arg: 1, scope: !2109, file: !2110, line: 30, type: !40)
!2117 = !DILocation(line: 30, column: 21, scope: !2109)
!2118 = !DILocation(line: 32, column: 15, scope: !2109)
!2119 = !DILocation(line: 374, column: 2, scope: !2071, inlinedAt: !2114)
!2120 = !DILocation(line: 376, column: 14, scope: !2071, inlinedAt: !2114)
!2121 = !DILocation(line: 377, column: 9, scope: !2071, inlinedAt: !2114)
!2122 = !DILocation(line: 377, column: 16, scope: !2071, inlinedAt: !2114)
!2123 = !DILocation(line: 32, column: 18, scope: !2109)
!2124 = !DILocation(line: 32, column: 2, scope: !2109)
!2125 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2126, file: !2126, line: 137, type: !2127, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !885)
!2126 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!74, !1779, !2129, !1771, !99}
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2131 = !DILocalVariable(name: "s", arg: 1, scope: !2125, file: !2126, line: 137, type: !1779)
!2132 = !DILocation(line: 137, column: 54, scope: !2125)
!2133 = !DILocalVariable(name: "object", arg: 2, scope: !2125, file: !2126, line: 137, type: !2129)
!2134 = !DILocation(line: 137, column: 69, scope: !2125)
!2135 = !DILocalVariable(name: "size", arg: 3, scope: !2125, file: !2126, line: 138, type: !1771)
!2136 = !DILocation(line: 138, column: 12, scope: !2125)
!2137 = !DILocalVariable(name: "flags", arg: 4, scope: !2125, file: !2126, line: 138, type: !99)
!2138 = !DILocation(line: 138, column: 24, scope: !2125)
!2139 = !DILocation(line: 140, column: 17, scope: !2125)
!2140 = !DILocation(line: 140, column: 2, scope: !2125)
!2141 = distinct !DISubprogram(name: "acpi_ut_copy_ielement_to_ielement", scope: !3, file: !3, line: 791, type: !1647, scopeLine: 795, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !885)
!2142 = !DILocalVariable(name: "object_type", arg: 1, scope: !2141, file: !3, line: 791, type: !58)
!2143 = !DILocation(line: 791, column: 38, scope: !2141)
!2144 = !DILocalVariable(name: "source_object", arg: 2, scope: !2141, file: !3, line: 792, type: !103)
!2145 = !DILocation(line: 792, column: 34, scope: !2141)
!2146 = !DILocalVariable(name: "state", arg: 3, scope: !2141, file: !3, line: 793, type: !335)
!2147 = !DILocation(line: 793, column: 33, scope: !2141)
!2148 = !DILocalVariable(name: "context", arg: 4, scope: !2141, file: !3, line: 794, type: !74)
!2149 = !DILocation(line: 794, column: 13, scope: !2141)
!2150 = !DILocalVariable(name: "status", scope: !2141, file: !3, line: 796, type: !90)
!2151 = !DILocation(line: 796, column: 14, scope: !2141)
!2152 = !DILocalVariable(name: "this_index", scope: !2141, file: !3, line: 797, type: !31)
!2153 = !DILocation(line: 797, column: 6, scope: !2141)
!2154 = !DILocalVariable(name: "this_target_ptr", scope: !2141, file: !3, line: 798, type: !102)
!2155 = !DILocation(line: 798, column: 30, scope: !2141)
!2156 = !DILocalVariable(name: "target_object", scope: !2141, file: !3, line: 799, type: !103)
!2157 = !DILocation(line: 799, column: 29, scope: !2141)
!2158 = !DILocation(line: 803, column: 15, scope: !2141)
!2159 = !DILocation(line: 803, column: 22, scope: !2141)
!2160 = !DILocation(line: 803, column: 26, scope: !2141)
!2161 = !DILocation(line: 803, column: 13, scope: !2141)
!2162 = !DILocation(line: 805, column: 7, scope: !2141)
!2163 = !DILocation(line: 805, column: 14, scope: !2141)
!2164 = !DILocation(line: 805, column: 18, scope: !2141)
!2165 = !DILocation(line: 805, column: 31, scope: !2141)
!2166 = !DILocation(line: 805, column: 39, scope: !2141)
!2167 = !DILocation(line: 805, column: 48, scope: !2141)
!2168 = !DILocation(line: 804, column: 18, scope: !2141)
!2169 = !DILocation(line: 807, column: 10, scope: !2141)
!2170 = !DILocation(line: 807, column: 2, scope: !2141)
!2171 = !DILocation(line: 812, column: 7, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 812, column: 7)
!2173 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 807, column: 23)
!2174 = !DILocation(line: 812, column: 7, scope: !2173)
!2175 = !DILocation(line: 817, column: 8, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2172, file: !3, line: 812, column: 22)
!2177 = !DILocation(line: 816, column: 18, scope: !2176)
!2178 = !DILocation(line: 819, column: 9, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 819, column: 8)
!2180 = !DILocation(line: 819, column: 8, scope: !2176)
!2181 = !DILocation(line: 820, column: 5, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 819, column: 24)
!2183 = !DILocation(line: 824, column: 35, scope: !2176)
!2184 = !DILocation(line: 825, column: 14, scope: !2176)
!2185 = !DILocation(line: 824, column: 8, scope: !2176)
!2186 = !DILocation(line: 823, column: 11, scope: !2176)
!2187 = !DILocation(line: 826, column: 8, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 826, column: 8)
!2189 = !DILocation(line: 826, column: 8, scope: !2176)
!2190 = !DILocation(line: 827, column: 5, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 826, column: 30)
!2192 = !DILocation(line: 830, column: 23, scope: !2176)
!2193 = !DILocation(line: 830, column: 5, scope: !2176)
!2194 = !DILocation(line: 830, column: 21, scope: !2176)
!2195 = !DILocation(line: 831, column: 3, scope: !2176)
!2196 = !DILocation(line: 834, column: 5, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2172, file: !3, line: 831, column: 10)
!2198 = !DILocation(line: 834, column: 21, scope: !2197)
!2199 = !DILocation(line: 836, column: 3, scope: !2173)
!2200 = !DILocation(line: 844, column: 37, scope: !2173)
!2201 = !DILocation(line: 844, column: 52, scope: !2173)
!2202 = !DILocation(line: 844, column: 60, scope: !2173)
!2203 = !DILocation(line: 844, column: 7, scope: !2173)
!2204 = !DILocation(line: 843, column: 17, scope: !2173)
!2205 = !DILocation(line: 845, column: 8, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 845, column: 7)
!2207 = !DILocation(line: 845, column: 7, scope: !2173)
!2208 = !DILocation(line: 846, column: 4, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 845, column: 23)
!2210 = !DILocation(line: 849, column: 33, scope: !2173)
!2211 = !DILocation(line: 849, column: 48, scope: !2173)
!2212 = !DILocation(line: 849, column: 55, scope: !2173)
!2213 = !DILocation(line: 849, column: 3, scope: !2173)
!2214 = !DILocation(line: 849, column: 18, scope: !2173)
!2215 = !DILocation(line: 849, column: 25, scope: !2173)
!2216 = !DILocation(line: 849, column: 31, scope: !2173)
!2217 = !DILocation(line: 853, column: 32, scope: !2173)
!2218 = !DILocation(line: 853, column: 3, scope: !2173)
!2219 = !DILocation(line: 853, column: 10, scope: !2173)
!2220 = !DILocation(line: 853, column: 14, scope: !2173)
!2221 = !DILocation(line: 853, column: 30, scope: !2173)
!2222 = !DILocation(line: 857, column: 22, scope: !2173)
!2223 = !DILocation(line: 857, column: 4, scope: !2173)
!2224 = !DILocation(line: 857, column: 20, scope: !2173)
!2225 = !DILocation(line: 858, column: 3, scope: !2173)
!2226 = !DILocation(line: 862, column: 3, scope: !2173)
!2227 = !DILocation(line: 865, column: 10, scope: !2141)
!2228 = !DILocation(line: 865, column: 2, scope: !2141)
!2229 = !DILabel(scope: !2141, name: "error_exit", file: !3, line: 867)
!2230 = !DILocation(line: 867, column: 1, scope: !2141)
!2231 = !DILocation(line: 868, column: 27, scope: !2141)
!2232 = !DILocation(line: 868, column: 2, scope: !2141)
!2233 = !DILocation(line: 869, column: 10, scope: !2141)
!2234 = !DILocation(line: 869, column: 2, scope: !2141)
!2235 = !DILocation(line: 870, column: 1, scope: !2141)
!2236 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !1733, file: !1733, line: 50, type: !1734, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !885)
!2237 = !DILocation(line: 445, column: 72, scope: !1776, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 552, column: 10, scope: !1784, inlinedAt: !2239)
!2239 = distinct !DILocation(line: 52, column: 9, scope: !2236)
!2240 = !DILocation(line: 446, column: 9, scope: !1776, inlinedAt: !2238)
!2241 = !DILocation(line: 446, column: 23, scope: !1776, inlinedAt: !2238)
!2242 = !DILocation(line: 448, column: 8, scope: !1776, inlinedAt: !2238)
!2243 = !DILocation(line: 318, column: 67, scope: !1795, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 553, column: 20, scope: !1784, inlinedAt: !2239)
!2245 = !DILocation(line: 346, column: 58, scope: !1801, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 547, column: 11, scope: !1784, inlinedAt: !2239)
!2247 = !DILocation(line: 472, column: 28, scope: !1807, inlinedAt: !2248)
!2248 = distinct !DILocation(line: 481, column: 9, scope: !1812, inlinedAt: !2249)
!2249 = distinct !DILocation(line: 545, column: 11, scope: !1814, inlinedAt: !2239)
!2250 = !DILocation(line: 472, column: 40, scope: !1807, inlinedAt: !2248)
!2251 = !DILocation(line: 472, column: 60, scope: !1807, inlinedAt: !2248)
!2252 = !DILocation(line: 478, column: 51, scope: !1812, inlinedAt: !2249)
!2253 = !DILocation(line: 478, column: 63, scope: !1812, inlinedAt: !2249)
!2254 = !DILocation(line: 480, column: 15, scope: !1812, inlinedAt: !2249)
!2255 = !DILocation(line: 538, column: 45, scope: !1786, inlinedAt: !2239)
!2256 = !DILocation(line: 538, column: 57, scope: !1786, inlinedAt: !2239)
!2257 = !DILocation(line: 542, column: 16, scope: !1784, inlinedAt: !2239)
!2258 = !DILocation(line: 162, column: 67, scope: !1737, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 52, column: 23, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !1733, line: 52, column: 23)
!2261 = distinct !DILexicalBlock(scope: !2236, file: !1733, line: 52, column: 23)
!2262 = !DILocalVariable(name: "size", arg: 1, scope: !2236, file: !1733, line: 50, type: !89)
!2263 = !DILocation(line: 50, column: 48, scope: !2236)
!2264 = !DILocation(line: 52, column: 17, scope: !2236)
!2265 = !DILocalVariable(name: "_flags", scope: !2261, file: !1733, line: 52, type: !101)
!2266 = !DILocation(line: 52, column: 23, scope: !2261)
!2267 = !DILocalVariable(name: "__dummy", scope: !2268, file: !1733, line: 52, type: !101)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !1733, line: 52, column: 23)
!2269 = distinct !DILexicalBlock(scope: !2261, file: !1733, line: 52, column: 23)
!2270 = !DILocation(line: 52, column: 23, scope: !2268)
!2271 = !DILocalVariable(name: "__dummy2", scope: !2268, file: !1733, line: 52, type: !101)
!2272 = !DILocation(line: 52, column: 23, scope: !2269)
!2273 = !DILocalVariable(name: "__dummy", scope: !2274, file: !1733, line: 52, type: !101)
!2274 = distinct !DILexicalBlock(scope: !2260, file: !1733, line: 52, column: 23)
!2275 = !DILocation(line: 52, column: 23, scope: !2274)
!2276 = !DILocalVariable(name: "__dummy2", scope: !2274, file: !1733, line: 52, type: !101)
!2277 = !DILocation(line: 52, column: 23, scope: !2260)
!2278 = !DILocation(line: 164, column: 11, scope: !1737, inlinedAt: !2259)
!2279 = !DILocation(line: 164, column: 17, scope: !1737, inlinedAt: !2259)
!2280 = !DILocation(line: 164, column: 9, scope: !1737, inlinedAt: !2259)
!2281 = !DILocation(line: 52, column: 23, scope: !2236)
!2282 = !DILocation(line: 540, column: 27, scope: !1785, inlinedAt: !2239)
!2283 = !DILocation(line: 540, column: 6, scope: !1785, inlinedAt: !2239)
!2284 = !DILocation(line: 540, column: 6, scope: !1786, inlinedAt: !2239)
!2285 = !DILocation(line: 544, column: 7, scope: !1814, inlinedAt: !2239)
!2286 = !DILocation(line: 544, column: 12, scope: !1814, inlinedAt: !2239)
!2287 = !DILocation(line: 544, column: 7, scope: !1784, inlinedAt: !2239)
!2288 = !DILocation(line: 545, column: 25, scope: !1814, inlinedAt: !2239)
!2289 = !DILocation(line: 545, column: 31, scope: !1814, inlinedAt: !2239)
!2290 = !DILocation(line: 480, column: 33, scope: !1812, inlinedAt: !2249)
!2291 = !DILocation(line: 480, column: 23, scope: !1812, inlinedAt: !2249)
!2292 = !DILocation(line: 481, column: 29, scope: !1812, inlinedAt: !2249)
!2293 = !DILocation(line: 481, column: 35, scope: !1812, inlinedAt: !2249)
!2294 = !DILocation(line: 481, column: 42, scope: !1812, inlinedAt: !2249)
!2295 = !DILocation(line: 474, column: 23, scope: !1807, inlinedAt: !2248)
!2296 = !DILocation(line: 474, column: 29, scope: !1807, inlinedAt: !2248)
!2297 = !DILocation(line: 474, column: 36, scope: !1807, inlinedAt: !2248)
!2298 = !DILocation(line: 474, column: 9, scope: !1807, inlinedAt: !2248)
!2299 = !DILocation(line: 545, column: 4, scope: !1814, inlinedAt: !2239)
!2300 = !DILocation(line: 547, column: 25, scope: !1784, inlinedAt: !2239)
!2301 = !DILocation(line: 348, column: 7, scope: !1858, inlinedAt: !2246)
!2302 = !DILocation(line: 348, column: 6, scope: !1801, inlinedAt: !2246)
!2303 = !DILocation(line: 349, column: 3, scope: !1858, inlinedAt: !2246)
!2304 = !DILocation(line: 351, column: 6, scope: !1862, inlinedAt: !2246)
!2305 = !DILocation(line: 351, column: 11, scope: !1862, inlinedAt: !2246)
!2306 = !DILocation(line: 351, column: 6, scope: !1801, inlinedAt: !2246)
!2307 = !DILocation(line: 352, column: 3, scope: !1862, inlinedAt: !2246)
!2308 = !DILocation(line: 354, column: 32, scope: !1867, inlinedAt: !2246)
!2309 = !DILocation(line: 354, column: 37, scope: !1867, inlinedAt: !2246)
!2310 = !DILocation(line: 354, column: 42, scope: !1867, inlinedAt: !2246)
!2311 = !DILocation(line: 354, column: 45, scope: !1867, inlinedAt: !2246)
!2312 = !DILocation(line: 354, column: 50, scope: !1867, inlinedAt: !2246)
!2313 = !DILocation(line: 354, column: 6, scope: !1801, inlinedAt: !2246)
!2314 = !DILocation(line: 355, column: 3, scope: !1867, inlinedAt: !2246)
!2315 = !DILocation(line: 356, column: 32, scope: !1875, inlinedAt: !2246)
!2316 = !DILocation(line: 356, column: 37, scope: !1875, inlinedAt: !2246)
!2317 = !DILocation(line: 356, column: 43, scope: !1875, inlinedAt: !2246)
!2318 = !DILocation(line: 356, column: 46, scope: !1875, inlinedAt: !2246)
!2319 = !DILocation(line: 356, column: 51, scope: !1875, inlinedAt: !2246)
!2320 = !DILocation(line: 356, column: 6, scope: !1801, inlinedAt: !2246)
!2321 = !DILocation(line: 357, column: 3, scope: !1875, inlinedAt: !2246)
!2322 = !DILocation(line: 358, column: 6, scope: !1883, inlinedAt: !2246)
!2323 = !DILocation(line: 358, column: 11, scope: !1883, inlinedAt: !2246)
!2324 = !DILocation(line: 358, column: 6, scope: !1801, inlinedAt: !2246)
!2325 = !DILocation(line: 358, column: 26, scope: !1883, inlinedAt: !2246)
!2326 = !DILocation(line: 359, column: 6, scope: !1888, inlinedAt: !2246)
!2327 = !DILocation(line: 359, column: 11, scope: !1888, inlinedAt: !2246)
!2328 = !DILocation(line: 359, column: 6, scope: !1801, inlinedAt: !2246)
!2329 = !DILocation(line: 359, column: 26, scope: !1888, inlinedAt: !2246)
!2330 = !DILocation(line: 360, column: 6, scope: !1893, inlinedAt: !2246)
!2331 = !DILocation(line: 360, column: 11, scope: !1893, inlinedAt: !2246)
!2332 = !DILocation(line: 360, column: 6, scope: !1801, inlinedAt: !2246)
!2333 = !DILocation(line: 360, column: 26, scope: !1893, inlinedAt: !2246)
!2334 = !DILocation(line: 361, column: 6, scope: !1898, inlinedAt: !2246)
!2335 = !DILocation(line: 361, column: 11, scope: !1898, inlinedAt: !2246)
!2336 = !DILocation(line: 361, column: 6, scope: !1801, inlinedAt: !2246)
!2337 = !DILocation(line: 361, column: 26, scope: !1898, inlinedAt: !2246)
!2338 = !DILocation(line: 362, column: 6, scope: !1903, inlinedAt: !2246)
!2339 = !DILocation(line: 362, column: 11, scope: !1903, inlinedAt: !2246)
!2340 = !DILocation(line: 362, column: 6, scope: !1801, inlinedAt: !2246)
!2341 = !DILocation(line: 362, column: 26, scope: !1903, inlinedAt: !2246)
!2342 = !DILocation(line: 363, column: 6, scope: !1908, inlinedAt: !2246)
!2343 = !DILocation(line: 363, column: 11, scope: !1908, inlinedAt: !2246)
!2344 = !DILocation(line: 363, column: 6, scope: !1801, inlinedAt: !2246)
!2345 = !DILocation(line: 363, column: 26, scope: !1908, inlinedAt: !2246)
!2346 = !DILocation(line: 364, column: 6, scope: !1913, inlinedAt: !2246)
!2347 = !DILocation(line: 364, column: 11, scope: !1913, inlinedAt: !2246)
!2348 = !DILocation(line: 364, column: 6, scope: !1801, inlinedAt: !2246)
!2349 = !DILocation(line: 364, column: 26, scope: !1913, inlinedAt: !2246)
!2350 = !DILocation(line: 365, column: 6, scope: !1918, inlinedAt: !2246)
!2351 = !DILocation(line: 365, column: 11, scope: !1918, inlinedAt: !2246)
!2352 = !DILocation(line: 365, column: 6, scope: !1801, inlinedAt: !2246)
!2353 = !DILocation(line: 365, column: 26, scope: !1918, inlinedAt: !2246)
!2354 = !DILocation(line: 366, column: 6, scope: !1923, inlinedAt: !2246)
!2355 = !DILocation(line: 366, column: 11, scope: !1923, inlinedAt: !2246)
!2356 = !DILocation(line: 366, column: 6, scope: !1801, inlinedAt: !2246)
!2357 = !DILocation(line: 366, column: 26, scope: !1923, inlinedAt: !2246)
!2358 = !DILocation(line: 367, column: 6, scope: !1928, inlinedAt: !2246)
!2359 = !DILocation(line: 367, column: 11, scope: !1928, inlinedAt: !2246)
!2360 = !DILocation(line: 367, column: 6, scope: !1801, inlinedAt: !2246)
!2361 = !DILocation(line: 367, column: 26, scope: !1928, inlinedAt: !2246)
!2362 = !DILocation(line: 368, column: 6, scope: !1933, inlinedAt: !2246)
!2363 = !DILocation(line: 368, column: 11, scope: !1933, inlinedAt: !2246)
!2364 = !DILocation(line: 368, column: 6, scope: !1801, inlinedAt: !2246)
!2365 = !DILocation(line: 368, column: 26, scope: !1933, inlinedAt: !2246)
!2366 = !DILocation(line: 369, column: 6, scope: !1938, inlinedAt: !2246)
!2367 = !DILocation(line: 369, column: 11, scope: !1938, inlinedAt: !2246)
!2368 = !DILocation(line: 369, column: 6, scope: !1801, inlinedAt: !2246)
!2369 = !DILocation(line: 369, column: 26, scope: !1938, inlinedAt: !2246)
!2370 = !DILocation(line: 370, column: 6, scope: !1943, inlinedAt: !2246)
!2371 = !DILocation(line: 370, column: 11, scope: !1943, inlinedAt: !2246)
!2372 = !DILocation(line: 370, column: 6, scope: !1801, inlinedAt: !2246)
!2373 = !DILocation(line: 370, column: 26, scope: !1943, inlinedAt: !2246)
!2374 = !DILocation(line: 371, column: 6, scope: !1948, inlinedAt: !2246)
!2375 = !DILocation(line: 371, column: 11, scope: !1948, inlinedAt: !2246)
!2376 = !DILocation(line: 371, column: 6, scope: !1801, inlinedAt: !2246)
!2377 = !DILocation(line: 371, column: 26, scope: !1948, inlinedAt: !2246)
!2378 = !DILocation(line: 372, column: 6, scope: !1953, inlinedAt: !2246)
!2379 = !DILocation(line: 372, column: 11, scope: !1953, inlinedAt: !2246)
!2380 = !DILocation(line: 372, column: 6, scope: !1801, inlinedAt: !2246)
!2381 = !DILocation(line: 372, column: 26, scope: !1953, inlinedAt: !2246)
!2382 = !DILocation(line: 373, column: 6, scope: !1958, inlinedAt: !2246)
!2383 = !DILocation(line: 373, column: 11, scope: !1958, inlinedAt: !2246)
!2384 = !DILocation(line: 373, column: 6, scope: !1801, inlinedAt: !2246)
!2385 = !DILocation(line: 373, column: 26, scope: !1958, inlinedAt: !2246)
!2386 = !DILocation(line: 374, column: 6, scope: !1963, inlinedAt: !2246)
!2387 = !DILocation(line: 374, column: 11, scope: !1963, inlinedAt: !2246)
!2388 = !DILocation(line: 374, column: 6, scope: !1801, inlinedAt: !2246)
!2389 = !DILocation(line: 374, column: 26, scope: !1963, inlinedAt: !2246)
!2390 = !DILocation(line: 375, column: 6, scope: !1968, inlinedAt: !2246)
!2391 = !DILocation(line: 375, column: 11, scope: !1968, inlinedAt: !2246)
!2392 = !DILocation(line: 375, column: 6, scope: !1801, inlinedAt: !2246)
!2393 = !DILocation(line: 375, column: 27, scope: !1968, inlinedAt: !2246)
!2394 = !DILocation(line: 376, column: 6, scope: !1973, inlinedAt: !2246)
!2395 = !DILocation(line: 376, column: 11, scope: !1973, inlinedAt: !2246)
!2396 = !DILocation(line: 376, column: 6, scope: !1801, inlinedAt: !2246)
!2397 = !DILocation(line: 376, column: 32, scope: !1973, inlinedAt: !2246)
!2398 = !DILocation(line: 377, column: 6, scope: !1978, inlinedAt: !2246)
!2399 = !DILocation(line: 377, column: 11, scope: !1978, inlinedAt: !2246)
!2400 = !DILocation(line: 377, column: 6, scope: !1801, inlinedAt: !2246)
!2401 = !DILocation(line: 377, column: 32, scope: !1978, inlinedAt: !2246)
!2402 = !DILocation(line: 378, column: 6, scope: !1983, inlinedAt: !2246)
!2403 = !DILocation(line: 378, column: 11, scope: !1983, inlinedAt: !2246)
!2404 = !DILocation(line: 378, column: 6, scope: !1801, inlinedAt: !2246)
!2405 = !DILocation(line: 378, column: 32, scope: !1983, inlinedAt: !2246)
!2406 = !DILocation(line: 379, column: 6, scope: !1988, inlinedAt: !2246)
!2407 = !DILocation(line: 379, column: 11, scope: !1988, inlinedAt: !2246)
!2408 = !DILocation(line: 379, column: 6, scope: !1801, inlinedAt: !2246)
!2409 = !DILocation(line: 379, column: 33, scope: !1988, inlinedAt: !2246)
!2410 = !DILocation(line: 380, column: 6, scope: !1993, inlinedAt: !2246)
!2411 = !DILocation(line: 380, column: 11, scope: !1993, inlinedAt: !2246)
!2412 = !DILocation(line: 380, column: 6, scope: !1801, inlinedAt: !2246)
!2413 = !DILocation(line: 380, column: 33, scope: !1993, inlinedAt: !2246)
!2414 = !DILocation(line: 381, column: 6, scope: !1998, inlinedAt: !2246)
!2415 = !DILocation(line: 381, column: 11, scope: !1998, inlinedAt: !2246)
!2416 = !DILocation(line: 381, column: 6, scope: !1801, inlinedAt: !2246)
!2417 = !DILocation(line: 381, column: 33, scope: !1998, inlinedAt: !2246)
!2418 = !DILocation(line: 382, column: 2, scope: !2003, inlinedAt: !2246)
!2419 = !DILocation(line: 382, column: 2, scope: !2007, inlinedAt: !2246)
!2420 = !DILocation(line: 382, column: 2, scope: !2008, inlinedAt: !2246)
!2421 = !DILocation(line: 386, column: 1, scope: !1801, inlinedAt: !2246)
!2422 = !DILocation(line: 547, column: 9, scope: !1784, inlinedAt: !2239)
!2423 = !DILocation(line: 549, column: 8, scope: !2014, inlinedAt: !2239)
!2424 = !DILocation(line: 549, column: 7, scope: !1784, inlinedAt: !2239)
!2425 = !DILocation(line: 550, column: 4, scope: !2014, inlinedAt: !2239)
!2426 = !DILocation(line: 553, column: 33, scope: !1784, inlinedAt: !2239)
!2427 = !DILocation(line: 325, column: 6, scope: !2019, inlinedAt: !2244)
!2428 = !DILocation(line: 325, column: 6, scope: !1795, inlinedAt: !2244)
!2429 = !DILocation(line: 326, column: 3, scope: !2019, inlinedAt: !2244)
!2430 = !DILocation(line: 332, column: 9, scope: !1795, inlinedAt: !2244)
!2431 = !DILocation(line: 332, column: 15, scope: !1795, inlinedAt: !2244)
!2432 = !DILocation(line: 332, column: 2, scope: !1795, inlinedAt: !2244)
!2433 = !DILocation(line: 336, column: 1, scope: !1795, inlinedAt: !2244)
!2434 = !DILocation(line: 553, column: 5, scope: !1784, inlinedAt: !2239)
!2435 = !DILocation(line: 553, column: 41, scope: !1784, inlinedAt: !2239)
!2436 = !DILocation(line: 554, column: 5, scope: !1784, inlinedAt: !2239)
!2437 = !DILocation(line: 554, column: 12, scope: !1784, inlinedAt: !2239)
!2438 = !DILocation(line: 448, column: 31, scope: !1776, inlinedAt: !2238)
!2439 = !DILocation(line: 448, column: 34, scope: !1776, inlinedAt: !2238)
!2440 = !DILocation(line: 448, column: 14, scope: !1776, inlinedAt: !2238)
!2441 = !DILocation(line: 450, column: 22, scope: !1776, inlinedAt: !2238)
!2442 = !DILocation(line: 450, column: 25, scope: !1776, inlinedAt: !2238)
!2443 = !DILocation(line: 450, column: 30, scope: !1776, inlinedAt: !2238)
!2444 = !DILocation(line: 450, column: 36, scope: !1776, inlinedAt: !2238)
!2445 = !DILocation(line: 450, column: 8, scope: !1776, inlinedAt: !2238)
!2446 = !DILocation(line: 450, column: 6, scope: !1776, inlinedAt: !2238)
!2447 = !DILocation(line: 451, column: 9, scope: !1776, inlinedAt: !2238)
!2448 = !DILocation(line: 552, column: 3, scope: !1784, inlinedAt: !2239)
!2449 = !DILocation(line: 557, column: 19, scope: !1786, inlinedAt: !2239)
!2450 = !DILocation(line: 557, column: 25, scope: !1786, inlinedAt: !2239)
!2451 = !DILocation(line: 557, column: 9, scope: !1786, inlinedAt: !2239)
!2452 = !DILocation(line: 557, column: 2, scope: !1786, inlinedAt: !2239)
!2453 = !DILocation(line: 558, column: 1, scope: !1786, inlinedAt: !2239)
!2454 = !DILocation(line: 52, column: 2, scope: !2236)
