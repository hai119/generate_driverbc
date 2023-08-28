; ModuleID = '../bcout/drivers/acpi/acpica/dsfield.llvm.bc'
source_filename = "drivers/acpi/acpica/dsfield.c"
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
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%union.acpi_name_union = type { i32 }
%union.acpi_parse_value = type { i64 }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, {}* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%struct.acpi_parse_obj_common = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_parse_obj_named = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, i8*, i8*, i32, i32 }
%struct.acpi_object_extra = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i8*, i8*, i32 }
%struct.acpi_object_buffer_field = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, i8, %union.acpi_operand_object* }
%struct.acpi_create_field_info = type { %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i8*, i32, i32, i32, i16, i16, i8, i8, i8, i8 }
%struct.acpi_object_region = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object*, i64, i32 }
%struct.acpi_object_region_field = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, i16, %union.acpi_operand_object*, i8*, i16, i8* }

@_acpi_module_name = internal constant [8 x i8] c"dsfield\00", align 1, !dbg !0
@.str = private unnamed_addr constant [30 x i8] c"Parse execute mode is not set\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Parse deferred mode is not set\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Bit offset within field too large (> 0xFFFFFFFF)\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Field [%4.4s] bit offset too large (> 0xFFFFFFFF)\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Invalid opcode in field list: 0x%X\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_create_buffer_field(%union.acpi_parse_object* %op, %struct.acpi_walk_state* %walk_state) #0 !dbg !807 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %arg = alloca %union.acpi_parse_object*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %second_desc = alloca %union.acpi_operand_object*, align 8
  %flags = alloca i32, align 4
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !811, metadata !DIExpression()), !dbg !812
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !813, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %arg, metadata !815, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !817, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.declare(metadata i32* %status, metadata !819, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !821, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %second_desc, metadata !823, metadata !DIExpression()), !dbg !824
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %second_desc, align 8, !dbg !824
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !825, metadata !DIExpression()), !dbg !826
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !827
  %common = bitcast %union.acpi_parse_object* %0 to %struct.acpi_parse_obj_common*, !dbg !829
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 3, !dbg !830
  %1 = load i16, i16* %aml_opcode, align 2, !dbg !830
  %conv = zext i16 %1 to i32, !dbg !827
  %cmp = icmp eq i32 %conv, 23315, !dbg !831
  br i1 %cmp, label %if.then, label %if.else, !dbg !832

if.then:                                          ; preds = %entry
  %2 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !833
  %call = call %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %2, i32 3) #9, !dbg !835
  store %union.acpi_parse_object* %call, %union.acpi_parse_object** %arg, align 8, !dbg !836
  br label %if.end, !dbg !837

if.else:                                          ; preds = %entry
  %3 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !838
  %call2 = call %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %3, i32 2) #9, !dbg !840
  store %union.acpi_parse_object* %call2, %union.acpi_parse_object** %arg, align 8, !dbg !841
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !842
  %tobool = icmp ne %union.acpi_parse_object* %4, null, !dbg !842
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !844

if.then3:                                         ; preds = %if.end
  store i32 12290, i32* %retval, align 4, !dbg !845
  br label %return, !dbg !845

if.end4:                                          ; preds = %if.end
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !847
  %deferred_node = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %5, i32 0, i32 33, !dbg !849
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %deferred_node, align 8, !dbg !849
  %tobool5 = icmp ne %struct.acpi_namespace_node* %6, null, !dbg !847
  br i1 %tobool5, label %if.then6, label %if.else8, !dbg !850

if.then6:                                         ; preds = %if.end4
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !851
  %deferred_node7 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 33, !dbg !853
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %deferred_node7, align 8, !dbg !853
  store %struct.acpi_namespace_node* %8, %struct.acpi_namespace_node** %node, align 8, !dbg !854
  br label %if.end36, !dbg !855

if.else8:                                         ; preds = %if.end4
  %9 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !856
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %9, i32 0, i32 20, !dbg !859
  %10 = load i32, i32* %parse_flags, align 4, !dbg !859
  %and = and i32 %10, 48, !dbg !860
  %tobool9 = icmp ne i32 %and, 0, !dbg !860
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !861

if.then10:                                        ; preds = %if.else8
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 156, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0)) #9, !dbg !862
  store i32 12303, i32* %retval, align 4, !dbg !864
  br label %return, !dbg !864

if.end11:                                         ; preds = %if.else8
  store i32 10, i32* %flags, align 4, !dbg !865
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !866
  %method_node = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 38, !dbg !868
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node, align 8, !dbg !868
  %tobool12 = icmp ne %struct.acpi_namespace_node* %12, null, !dbg !866
  br i1 %tobool12, label %land.lhs.true, label %if.end17, !dbg !869

land.lhs.true:                                    ; preds = %if.end11
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !870
  %parse_flags13 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 20, !dbg !871
  %14 = load i32, i32* %parse_flags13, align 4, !dbg !871
  %and14 = and i32 %14, 1024, !dbg !872
  %tobool15 = icmp ne i32 %and14, 0, !dbg !872
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !873

if.then16:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %flags, align 4, !dbg !874
  %or = or i32 %15, 64, !dbg !874
  store i32 %or, i32* %flags, align 4, !dbg !874
  br label %if.end17, !dbg !876

if.end17:                                         ; preds = %if.then16, %land.lhs.true, %if.end11
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !877
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 46, !dbg !878
  %17 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !878
  %18 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !879
  %common18 = bitcast %union.acpi_parse_object* %18 to %struct.acpi_parse_obj_common*, !dbg !880
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common18, i32 0, i32 7, !dbg !881
  %string = bitcast %union.acpi_parse_value* %value to i8**, !dbg !882
  %19 = load i8*, i8** %string, align 8, !dbg !882
  %20 = load i32, i32* %flags, align 4, !dbg !883
  %21 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !884
  %call19 = call i32 @acpi_ns_lookup(%union.acpi_generic_state* %17, i8* %19, i32 0, i32 1, i32 %20, %struct.acpi_walk_state* %21, %struct.acpi_namespace_node** %node) #9, !dbg !885
  store i32 %call19, i32* %status, align 4, !dbg !886
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !887
  %parse_flags20 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %22, i32 0, i32 20, !dbg !889
  %23 = load i32, i32* %parse_flags20, align 4, !dbg !889
  %and21 = and i32 %23, 512, !dbg !890
  %tobool22 = icmp ne i32 %and21, 0, !dbg !890
  br i1 %tobool22, label %land.lhs.true23, label %if.else27, !dbg !891

land.lhs.true23:                                  ; preds = %if.end17
  %24 = load i32, i32* %status, align 4, !dbg !892
  %cmp24 = icmp eq i32 %24, 7, !dbg !893
  br i1 %cmp24, label %if.then26, label %if.else27, !dbg !894

if.then26:                                        ; preds = %land.lhs.true23
  store i32 0, i32* %status, align 4, !dbg !895
  br label %if.end35, !dbg !897

if.else27:                                        ; preds = %land.lhs.true23, %if.end17
  %25 = load i32, i32* %status, align 4, !dbg !898
  %tobool28 = icmp ne i32 %25, 0, !dbg !898
  br i1 %tobool28, label %if.then29, label %if.end34, !dbg !900

if.then29:                                        ; preds = %if.else27
  %26 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !901
  %scope_info30 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %26, i32 0, i32 46, !dbg !901
  %27 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info30, align 8, !dbg !901
  %28 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !901
  %common31 = bitcast %union.acpi_parse_object* %28 to %struct.acpi_parse_obj_common*, !dbg !901
  %value32 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common31, i32 0, i32 7, !dbg !901
  %string33 = bitcast %union.acpi_parse_value* %value32 to i8**, !dbg !901
  %29 = load i8*, i8** %string33, align 8, !dbg !901
  %30 = load i32, i32* %status, align 4, !dbg !901
  call void @acpi_ut_prefixed_namespace_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 185, %union.acpi_generic_state* %27, i8* %29, i32 %30) #9, !dbg !901
  %31 = load i32, i32* %status, align 4, !dbg !903
  store i32 %31, i32* %retval, align 4, !dbg !903
  br label %return, !dbg !903

if.end34:                                         ; preds = %if.else27
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then26
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then6
  %32 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !904
  %33 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !905
  %common37 = bitcast %union.acpi_parse_object* %33 to %struct.acpi_parse_obj_common*, !dbg !906
  %node38 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common37, i32 0, i32 6, !dbg !907
  store %struct.acpi_namespace_node* %32, %struct.acpi_namespace_node** %node38, align 8, !dbg !908
  %34 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !909
  %call39 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %34) #9, !dbg !910
  store %union.acpi_operand_object* %call39, %union.acpi_operand_object** %obj_desc, align 8, !dbg !911
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !912
  %tobool40 = icmp ne %union.acpi_operand_object* %35, null, !dbg !912
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !914

if.then41:                                        ; preds = %if.end36
  store i32 0, i32* %retval, align 4, !dbg !915
  br label %return, !dbg !915

if.end42:                                         ; preds = %if.end36
  %call43 = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 214, i32 64, i32 14) #9, !dbg !917
  store %union.acpi_operand_object* %call43, %union.acpi_operand_object** %obj_desc, align 8, !dbg !918
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !919
  %tobool44 = icmp ne %union.acpi_operand_object* %36, null, !dbg !919
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !921

if.then45:                                        ; preds = %if.end42
  store i32 4, i32* %status, align 4, !dbg !922
  br label %cleanup, !dbg !924

if.end46:                                         ; preds = %if.end42
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !925
  %common47 = bitcast %union.acpi_operand_object* %37 to %struct.acpi_object_common*, !dbg !926
  %next_object = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common47, i32 0, i32 0, !dbg !927
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object, align 8, !dbg !927
  store %union.acpi_operand_object* %38, %union.acpi_operand_object** %second_desc, align 8, !dbg !928
  %39 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !929
  %named = bitcast %union.acpi_parse_object* %39 to %struct.acpi_parse_obj_named*, !dbg !930
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named, i32 0, i32 10, !dbg !931
  %40 = load i8*, i8** %data, align 8, !dbg !931
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %second_desc, align 8, !dbg !932
  %extra = bitcast %union.acpi_operand_object* %41 to %struct.acpi_object_extra*, !dbg !933
  %aml_start = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra, i32 0, i32 8, !dbg !934
  store i8* %40, i8** %aml_start, align 8, !dbg !935
  %42 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !936
  %named48 = bitcast %union.acpi_parse_object* %42 to %struct.acpi_parse_obj_named*, !dbg !937
  %length = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named48, i32 0, i32 11, !dbg !938
  %43 = load i32, i32* %length, align 8, !dbg !938
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %second_desc, align 8, !dbg !939
  %extra49 = bitcast %union.acpi_operand_object* %44 to %struct.acpi_object_extra*, !dbg !940
  %aml_length = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra49, i32 0, i32 9, !dbg !941
  store i32 %43, i32* %aml_length, align 8, !dbg !942
  %45 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !943
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !944
  %buffer_field = bitcast %union.acpi_operand_object* %46 to %struct.acpi_object_buffer_field*, !dbg !945
  %node50 = getelementptr inbounds %struct.acpi_object_buffer_field, %struct.acpi_object_buffer_field* %buffer_field, i32 0, i32 8, !dbg !946
  store %struct.acpi_namespace_node* %45, %struct.acpi_namespace_node** %node50, align 8, !dbg !947
  %47 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !948
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !949
  %call51 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %47, %union.acpi_operand_object* %48, i32 14) #9, !dbg !950
  store i32 %call51, i32* %status, align 4, !dbg !951
  %49 = load i32, i32* %status, align 4, !dbg !952
  %tobool52 = icmp ne i32 %49, 0, !dbg !952
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !954

if.then53:                                        ; preds = %if.end46
  br label %cleanup, !dbg !955

if.end54:                                         ; preds = %if.end46
  br label %cleanup, !dbg !952

cleanup:                                          ; preds = %if.end54, %if.then53, %if.then45
  call void @llvm.dbg.label(metadata !957), !dbg !958
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !959
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %50) #9, !dbg !960
  %51 = load i32, i32* %status, align 4, !dbg !961
  store i32 %51, i32* %retval, align 4, !dbg !961
  br label %return, !dbg !961

return:                                           ; preds = %cleanup, %if.then41, %if.then29, %if.then10, %if.then3
  %52 = load i32, i32* %retval, align 4, !dbg !962
  ret i32 %52, !dbg !962
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object*, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_lookup(%union.acpi_generic_state*, i8*, i32, i32, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_prefixed_namespace_error(i8*, i32, %union.acpi_generic_state*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_create_field(%union.acpi_parse_object* %op, %struct.acpi_namespace_node* %region_node, %struct.acpi_walk_state* %walk_state) #0 !dbg !963 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %region_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  %arg = alloca %union.acpi_parse_object*, align 8
  %info = alloca %struct.acpi_create_field_info, align 8
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !966, metadata !DIExpression()), !dbg !967
  store %struct.acpi_namespace_node* %region_node, %struct.acpi_namespace_node** %region_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %region_node.addr, metadata !968, metadata !DIExpression()), !dbg !969
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !970, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.declare(metadata i32* %status, metadata !972, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %arg, metadata !974, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.declare(metadata %struct.acpi_create_field_info* %info, metadata !976, metadata !DIExpression()), !dbg !994
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !995
  %common = bitcast %union.acpi_parse_object* %0 to %struct.acpi_parse_obj_common*, !dbg !996
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 7, !dbg !997
  %arg1 = bitcast %union.acpi_parse_value* %value to %union.acpi_parse_object**, !dbg !998
  %1 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg1, align 8, !dbg !998
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %arg, align 8, !dbg !999
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %region_node.addr, align 8, !dbg !1000
  %tobool = icmp ne %struct.acpi_namespace_node* %2, null, !dbg !1000
  br i1 %tobool, label %if.end10, label %if.then, !dbg !1002

if.then:                                          ; preds = %entry
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1003
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 46, !dbg !1005
  %4 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !1005
  %5 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1006
  %common2 = bitcast %union.acpi_parse_object* %5 to %struct.acpi_parse_obj_common*, !dbg !1007
  %value3 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common2, i32 0, i32 7, !dbg !1008
  %name = bitcast %union.acpi_parse_value* %value3 to i8**, !dbg !1009
  %6 = load i8*, i8** %name, align 8, !dbg !1009
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1010
  %call = call i32 @acpi_ns_lookup(%union.acpi_generic_state* %4, i8* %6, i32 10, i32 3, i32 1, %struct.acpi_walk_state* %7, %struct.acpi_namespace_node** %region_node.addr) #9, !dbg !1011
  store i32 %call, i32* %status, align 4, !dbg !1012
  %8 = load i32, i32* %status, align 4, !dbg !1013
  %tobool4 = icmp ne i32 %8, 0, !dbg !1013
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !1015

if.then5:                                         ; preds = %if.then
  %9 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1016
  %scope_info6 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %9, i32 0, i32 46, !dbg !1016
  %10 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info6, align 8, !dbg !1016
  %11 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1016
  %common7 = bitcast %union.acpi_parse_object* %11 to %struct.acpi_parse_obj_common*, !dbg !1016
  %value8 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common7, i32 0, i32 7, !dbg !1016
  %name9 = bitcast %union.acpi_parse_value* %value8 to i8**, !dbg !1016
  %12 = load i8*, i8** %name9, align 8, !dbg !1016
  %13 = load i32, i32* %status, align 4, !dbg !1016
  call void @acpi_ut_prefixed_namespace_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 501, %union.acpi_generic_state* %10, i8* %12, i32 %13) #9, !dbg !1016
  %14 = load i32, i32* %status, align 4, !dbg !1018
  store i32 %14, i32* %retval, align 4, !dbg !1018
  br label %return, !dbg !1018

if.end:                                           ; preds = %if.then
  br label %if.end10, !dbg !1019

if.end10:                                         ; preds = %if.end, %entry
  %15 = bitcast %struct.acpi_create_field_info* %info to i8*, !dbg !1020
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 72, i1 false), !dbg !1020
  %16 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1021
  %common11 = bitcast %union.acpi_parse_object* %16 to %struct.acpi_parse_obj_common*, !dbg !1022
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common11, i32 0, i32 5, !dbg !1023
  %17 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next, align 8, !dbg !1023
  store %union.acpi_parse_object* %17, %union.acpi_parse_object** %arg, align 8, !dbg !1024
  %18 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1025
  %common12 = bitcast %union.acpi_parse_object* %18 to %struct.acpi_parse_obj_common*, !dbg !1026
  %value13 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common12, i32 0, i32 7, !dbg !1027
  %integer = bitcast %union.acpi_parse_value* %value13 to i64*, !dbg !1028
  %19 = load i64, i64* %integer, align 8, !dbg !1028
  %conv = trunc i64 %19 to i8, !dbg !1029
  %field_flags = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %info, i32 0, i32 11, !dbg !1030
  store i8 %conv, i8* %field_flags, align 8, !dbg !1031
  %attribute = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %info, i32 0, i32 12, !dbg !1032
  store i8 0, i8* %attribute, align 1, !dbg !1033
  %field_type = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %info, i32 0, i32 13, !dbg !1034
  store i8 17, i8* %field_type, align 2, !dbg !1035
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %region_node.addr, align 8, !dbg !1036
  %region_node14 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %info, i32 0, i32 0, !dbg !1037
  store %struct.acpi_namespace_node* %20, %struct.acpi_namespace_node** %region_node14, align 8, !dbg !1038
  %21 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1039
  %22 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1040
  %common15 = bitcast %union.acpi_parse_object* %22 to %struct.acpi_parse_obj_common*, !dbg !1041
  %next16 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common15, i32 0, i32 5, !dbg !1042
  %23 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next16, align 8, !dbg !1042
  %call17 = call i32 @acpi_ds_get_field_names(%struct.acpi_create_field_info* %info, %struct.acpi_walk_state* %21, %union.acpi_parse_object* %23) #9, !dbg !1043
  store i32 %call17, i32* %status, align 4, !dbg !1044
  %24 = load i32, i32* %status, align 4, !dbg !1045
  %tobool18 = icmp ne i32 %24, 0, !dbg !1045
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !1047

if.then19:                                        ; preds = %if.end10
  %25 = load i32, i32* %status, align 4, !dbg !1048
  store i32 %25, i32* %retval, align 4, !dbg !1048
  br label %return, !dbg !1048

if.end20:                                         ; preds = %if.end10
  %region_node21 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %info, i32 0, i32 0, !dbg !1050
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %region_node21, align 8, !dbg !1050
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %26, i32 0, i32 0, !dbg !1052
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1052
  %region = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_region*, !dbg !1053
  %space_id = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 5, !dbg !1054
  %28 = load i8, i8* %space_id, align 1, !dbg !1054
  %conv22 = zext i8 %28 to i32, !dbg !1055
  %cmp = icmp eq i32 %conv22, 10, !dbg !1056
  br i1 %cmp, label %if.then24, label %if.end37, !dbg !1057

if.then24:                                        ; preds = %if.end20
  %region_node25 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %info, i32 0, i32 0, !dbg !1058
  %29 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %region_node25, align 8, !dbg !1058
  %object26 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %29, i32 0, i32 0, !dbg !1058
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object26, align 8, !dbg !1058
  %region27 = bitcast %union.acpi_operand_object* %30 to %struct.acpi_object_region*, !dbg !1058
  %length = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region27, i32 0, i32 10, !dbg !1058
  %31 = load i32, i32* %length, align 8, !dbg !1058
  %conv28 = zext i32 %31 to i64, !dbg !1058
  %call29 = call i8* @acpi_os_allocate_zeroed(i64 %conv28) #9, !dbg !1058
  %32 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %region_node.addr, align 8, !dbg !1060
  %object30 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %32, i32 0, i32 0, !dbg !1061
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object30, align 8, !dbg !1061
  %field = bitcast %union.acpi_operand_object* %33 to %struct.acpi_object_region_field*, !dbg !1062
  %internal_pcc_buffer = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field, i32 0, i32 18, !dbg !1063
  store i8* %call29, i8** %internal_pcc_buffer, align 8, !dbg !1064
  %34 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %region_node.addr, align 8, !dbg !1065
  %object31 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %34, i32 0, i32 0, !dbg !1067
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object31, align 8, !dbg !1067
  %field32 = bitcast %union.acpi_operand_object* %35 to %struct.acpi_object_region_field*, !dbg !1068
  %internal_pcc_buffer33 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field32, i32 0, i32 18, !dbg !1069
  %36 = load i8*, i8** %internal_pcc_buffer33, align 8, !dbg !1069
  %tobool34 = icmp ne i8* %36, null, !dbg !1065
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !1070

if.then35:                                        ; preds = %if.then24
  store i32 4, i32* %retval, align 4, !dbg !1071
  br label %return, !dbg !1071

if.end36:                                         ; preds = %if.then24
  br label %if.end37, !dbg !1073

if.end37:                                         ; preds = %if.end36, %if.end20
  %37 = load i32, i32* %status, align 4, !dbg !1074
  store i32 %37, i32* %retval, align 4, !dbg !1074
  br label %return, !dbg !1074

return:                                           ; preds = %if.end37, %if.then35, %if.then19, %if.then5
  %38 = load i32, i32* %retval, align 4, !dbg !1075
  ret i32 %38, !dbg !1075
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ds_get_field_names(%struct.acpi_create_field_info* %info, %struct.acpi_walk_state* %walk_state, %union.acpi_parse_object* %arg) #0 !dbg !1076 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.acpi_create_field_info*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %arg.addr = alloca %union.acpi_parse_object*, align 8
  %status = alloca i32, align 4
  %position = alloca i64, align 8
  %child = alloca %union.acpi_parse_object*, align 8
  store %struct.acpi_create_field_info* %info, %struct.acpi_create_field_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_create_field_info** %info.addr, metadata !1080, metadata !DIExpression()), !dbg !1081
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1082, metadata !DIExpression()), !dbg !1083
  store %union.acpi_parse_object* %arg, %union.acpi_parse_object** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %arg.addr, metadata !1084, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1086, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.declare(metadata i64* %position, metadata !1088, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %child, metadata !1090, metadata !DIExpression()), !dbg !1091
  %0 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1092
  %field_bit_position = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %0, i32 0, i32 7, !dbg !1093
  store i32 0, i32* %field_bit_position, align 4, !dbg !1094
  br label %while.cond, !dbg !1095

while.cond:                                       ; preds = %sw.epilog, %entry
  %1 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1096
  %tobool = icmp ne %union.acpi_parse_object* %1, null, !dbg !1095
  br i1 %tobool, label %while.body, label %while.end, !dbg !1095

while.body:                                       ; preds = %while.cond
  %2 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1097
  %common = bitcast %union.acpi_parse_object* %2 to %struct.acpi_parse_obj_common*, !dbg !1099
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 3, !dbg !1100
  %3 = load i16, i16* %aml_opcode, align 2, !dbg !1100
  %conv = zext i16 %3 to i32, !dbg !1097
  switch i32 %conv, label %sw.default [
    i32 49, label %sw.bb
    i32 50, label %sw.bb8
    i32 57, label %sw.bb8
    i32 56, label %sw.bb29
    i32 48, label %sw.bb55
  ], !dbg !1101

sw.bb:                                            ; preds = %while.body
  %4 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1102
  %field_bit_position1 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %4, i32 0, i32 7, !dbg !1104
  %5 = load i32, i32* %field_bit_position1, align 4, !dbg !1104
  %conv2 = zext i32 %5 to i64, !dbg !1105
  %6 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1106
  %common3 = bitcast %union.acpi_parse_object* %6 to %struct.acpi_parse_obj_common*, !dbg !1107
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common3, i32 0, i32 7, !dbg !1108
  %size = bitcast %union.acpi_parse_value* %value to i32*, !dbg !1109
  %7 = load i32, i32* %size, align 8, !dbg !1109
  %conv4 = zext i32 %7 to i64, !dbg !1110
  %add = add i64 %conv2, %conv4, !dbg !1111
  store i64 %add, i64* %position, align 8, !dbg !1112
  %8 = load i64, i64* %position, align 8, !dbg !1113
  %cmp = icmp ugt i64 %8, 4294967295, !dbg !1115
  br i1 %cmp, label %if.then, label %if.end, !dbg !1116

if.then:                                          ; preds = %sw.bb
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 297, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1117
  store i32 15, i32* %retval, align 4, !dbg !1119
  br label %return, !dbg !1119

if.end:                                           ; preds = %sw.bb
  %9 = load i64, i64* %position, align 8, !dbg !1120
  %conv6 = trunc i64 %9 to i32, !dbg !1121
  %10 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1122
  %field_bit_position7 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 7, !dbg !1123
  store i32 %conv6, i32* %field_bit_position7, align 4, !dbg !1124
  br label %sw.epilog, !dbg !1125

sw.bb8:                                           ; preds = %while.body, %while.body
  %11 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1126
  %field_flags = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %11, i32 0, i32 11, !dbg !1127
  %12 = load i8, i8* %field_flags, align 8, !dbg !1127
  %conv9 = zext i8 %12 to i32, !dbg !1126
  %and = and i32 %conv9, -16, !dbg !1128
  %13 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1129
  %common10 = bitcast %union.acpi_parse_object* %13 to %struct.acpi_parse_obj_common*, !dbg !1130
  %value11 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common10, i32 0, i32 7, !dbg !1131
  %integer = bitcast %union.acpi_parse_value* %value11 to i64*, !dbg !1132
  %14 = load i64, i64* %integer, align 8, !dbg !1132
  %and12 = and i64 %14, 7, !dbg !1133
  %conv13 = trunc i64 %and12 to i32, !dbg !1134
  %conv14 = trunc i32 %conv13 to i8, !dbg !1135
  %conv15 = zext i8 %conv14 to i32, !dbg !1136
  %or = or i32 %and, %conv15, !dbg !1137
  %conv16 = trunc i32 %or to i8, !dbg !1138
  %15 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1139
  %field_flags17 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %15, i32 0, i32 11, !dbg !1140
  store i8 %conv16, i8* %field_flags17, align 8, !dbg !1141
  %16 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1142
  %common18 = bitcast %union.acpi_parse_object* %16 to %struct.acpi_parse_obj_common*, !dbg !1143
  %value19 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common18, i32 0, i32 7, !dbg !1144
  %integer20 = bitcast %union.acpi_parse_value* %value19 to i64*, !dbg !1145
  %17 = load i64, i64* %integer20, align 8, !dbg !1145
  %shr = lshr i64 %17, 8, !dbg !1146
  %and21 = and i64 %shr, 255, !dbg !1147
  %conv22 = trunc i64 %and21 to i8, !dbg !1148
  %18 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1149
  %attribute = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %18, i32 0, i32 12, !dbg !1150
  store i8 %conv22, i8* %attribute, align 1, !dbg !1151
  %19 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1152
  %common23 = bitcast %union.acpi_parse_object* %19 to %struct.acpi_parse_obj_common*, !dbg !1153
  %value24 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common23, i32 0, i32 7, !dbg !1154
  %integer25 = bitcast %union.acpi_parse_value* %value24 to i64*, !dbg !1155
  %20 = load i64, i64* %integer25, align 8, !dbg !1155
  %shr26 = lshr i64 %20, 16, !dbg !1156
  %and27 = and i64 %shr26, 255, !dbg !1157
  %conv28 = trunc i64 %and27 to i8, !dbg !1158
  %21 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1159
  %access_length = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %21, i32 0, i32 14, !dbg !1160
  store i8 %conv28, i8* %access_length, align 1, !dbg !1161
  br label %sw.epilog, !dbg !1162

sw.bb29:                                          ; preds = %while.body
  %22 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1163
  %resource_buffer = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %22, i32 0, i32 5, !dbg !1164
  store i8* null, i8** %resource_buffer, align 8, !dbg !1165
  %23 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1166
  %connection_node = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %23, i32 0, i32 4, !dbg !1167
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %connection_node, align 8, !dbg !1168
  %24 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1169
  %pin_number_index = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %24, i32 0, i32 10, !dbg !1170
  store i16 0, i16* %pin_number_index, align 2, !dbg !1171
  %25 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1172
  %common30 = bitcast %union.acpi_parse_object* %25 to %struct.acpi_parse_obj_common*, !dbg !1173
  %value31 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common30, i32 0, i32 7, !dbg !1174
  %arg32 = bitcast %union.acpi_parse_value* %value31 to %union.acpi_parse_object**, !dbg !1175
  %26 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg32, align 8, !dbg !1175
  store %union.acpi_parse_object* %26, %union.acpi_parse_object** %child, align 8, !dbg !1176
  %27 = load %union.acpi_parse_object*, %union.acpi_parse_object** %child, align 8, !dbg !1177
  %common33 = bitcast %union.acpi_parse_object* %27 to %struct.acpi_parse_obj_common*, !dbg !1179
  %aml_opcode34 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common33, i32 0, i32 3, !dbg !1180
  %28 = load i16, i16* %aml_opcode34, align 2, !dbg !1180
  %conv35 = zext i16 %28 to i32, !dbg !1177
  %cmp36 = icmp eq i32 %conv35, 51, !dbg !1181
  br i1 %cmp36, label %if.then38, label %if.else, !dbg !1182

if.then38:                                        ; preds = %sw.bb29
  %29 = load %union.acpi_parse_object*, %union.acpi_parse_object** %child, align 8, !dbg !1183
  %named = bitcast %union.acpi_parse_object* %29 to %struct.acpi_parse_obj_named*, !dbg !1185
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named, i32 0, i32 10, !dbg !1186
  %30 = load i8*, i8** %data, align 8, !dbg !1186
  %31 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1187
  %resource_buffer39 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %31, i32 0, i32 5, !dbg !1188
  store i8* %30, i8** %resource_buffer39, align 8, !dbg !1189
  %32 = load %union.acpi_parse_object*, %union.acpi_parse_object** %child, align 8, !dbg !1190
  %named40 = bitcast %union.acpi_parse_object* %32 to %struct.acpi_parse_obj_named*, !dbg !1191
  %value41 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named40, i32 0, i32 7, !dbg !1192
  %integer42 = bitcast %union.acpi_parse_value* %value41 to i64*, !dbg !1193
  %33 = load i64, i64* %integer42, align 8, !dbg !1193
  %conv43 = trunc i64 %33 to i16, !dbg !1194
  %34 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1195
  %resource_length = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %34, i32 0, i32 9, !dbg !1196
  store i16 %conv43, i16* %resource_length, align 4, !dbg !1197
  br label %if.end54, !dbg !1198

if.else:                                          ; preds = %sw.bb29
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1199
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %35, i32 0, i32 46, !dbg !1201
  %36 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !1201
  %37 = load %union.acpi_parse_object*, %union.acpi_parse_object** %child, align 8, !dbg !1202
  %common44 = bitcast %union.acpi_parse_object* %37 to %struct.acpi_parse_obj_common*, !dbg !1203
  %value45 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common44, i32 0, i32 7, !dbg !1204
  %name = bitcast %union.acpi_parse_value* %value45 to i8**, !dbg !1205
  %38 = load i8*, i8** %name, align 8, !dbg !1205
  %39 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1206
  %40 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1207
  %connection_node46 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %40, i32 0, i32 4, !dbg !1208
  %call = call i32 @acpi_ns_lookup(%union.acpi_generic_state* %36, i8* %38, i32 0, i32 3, i32 2, %struct.acpi_walk_state* %39, %struct.acpi_namespace_node** %connection_node46) #9, !dbg !1209
  store i32 %call, i32* %status, align 4, !dbg !1210
  %41 = load i32, i32* %status, align 4, !dbg !1211
  %tobool47 = icmp ne i32 %41, 0, !dbg !1211
  br i1 %tobool47, label %if.then48, label %if.end53, !dbg !1213

if.then48:                                        ; preds = %if.else
  %42 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1214
  %scope_info49 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %42, i32 0, i32 46, !dbg !1214
  %43 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info49, align 8, !dbg !1214
  %44 = load %union.acpi_parse_object*, %union.acpi_parse_object** %child, align 8, !dbg !1214
  %common50 = bitcast %union.acpi_parse_object* %44 to %struct.acpi_parse_obj_common*, !dbg !1214
  %value51 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common50, i32 0, i32 7, !dbg !1214
  %name52 = bitcast %union.acpi_parse_value* %value51 to i8**, !dbg !1214
  %45 = load i8*, i8** %name52, align 8, !dbg !1214
  %46 = load i32, i32* %status, align 4, !dbg !1214
  call void @acpi_ut_prefixed_namespace_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 369, %union.acpi_generic_state* %43, i8* %45, i32 %46) #9, !dbg !1214
  %47 = load i32, i32* %status, align 4, !dbg !1216
  store i32 %47, i32* %retval, align 4, !dbg !1216
  br label %return, !dbg !1216

if.end53:                                         ; preds = %if.else
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then38
  br label %sw.epilog, !dbg !1217

sw.bb55:                                          ; preds = %while.body
  %48 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1218
  %scope_info56 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %48, i32 0, i32 46, !dbg !1219
  %49 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info56, align 8, !dbg !1219
  %50 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1220
  %named57 = bitcast %union.acpi_parse_object* %50 to %struct.acpi_parse_obj_named*, !dbg !1221
  %name58 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named57, i32 0, i32 12, !dbg !1222
  %51 = bitcast i32* %name58 to i8*, !dbg !1223
  %52 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1224
  %field_type = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %52, i32 0, i32 13, !dbg !1225
  %53 = load i8, i8* %field_type, align 2, !dbg !1225
  %conv59 = zext i8 %53 to i32, !dbg !1224
  %54 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1226
  %55 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1227
  %field_node = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %55, i32 0, i32 1, !dbg !1228
  %call60 = call i32 @acpi_ns_lookup(%union.acpi_generic_state* %49, i8* %51, i32 %conv59, i32 3, i32 2, %struct.acpi_walk_state* %54, %struct.acpi_namespace_node** %field_node) #9, !dbg !1229
  store i32 %call60, i32* %status, align 4, !dbg !1230
  %56 = load i32, i32* %status, align 4, !dbg !1231
  %tobool61 = icmp ne i32 %56, 0, !dbg !1231
  br i1 %tobool61, label %if.then62, label %if.else66, !dbg !1233

if.then62:                                        ; preds = %sw.bb55
  %57 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1234
  %scope_info63 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %57, i32 0, i32 46, !dbg !1234
  %58 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info63, align 8, !dbg !1234
  %59 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1234
  %named64 = bitcast %union.acpi_parse_object* %59 to %struct.acpi_parse_obj_named*, !dbg !1234
  %name65 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named64, i32 0, i32 12, !dbg !1234
  %60 = bitcast i32* %name65 to i8*, !dbg !1234
  %61 = load i32, i32* %status, align 4, !dbg !1234
  call void @acpi_ut_prefixed_namespace_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 388, %union.acpi_generic_state* %58, i8* %60, i32 %61) #9, !dbg !1234
  %62 = load i32, i32* %status, align 4, !dbg !1236
  store i32 %62, i32* %retval, align 4, !dbg !1236
  br label %return, !dbg !1236

if.else66:                                        ; preds = %sw.bb55
  %63 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1237
  %field_node67 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %63, i32 0, i32 1, !dbg !1239
  %64 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %field_node67, align 8, !dbg !1239
  %65 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1240
  %common68 = bitcast %union.acpi_parse_object* %65 to %struct.acpi_parse_obj_common*, !dbg !1241
  %node = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common68, i32 0, i32 6, !dbg !1242
  store %struct.acpi_namespace_node* %64, %struct.acpi_namespace_node** %node, align 8, !dbg !1243
  %66 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1244
  %common69 = bitcast %union.acpi_parse_object* %66 to %struct.acpi_parse_obj_common*, !dbg !1245
  %value70 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common69, i32 0, i32 7, !dbg !1246
  %size71 = bitcast %union.acpi_parse_value* %value70 to i32*, !dbg !1247
  %67 = load i32, i32* %size71, align 8, !dbg !1247
  %68 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1248
  %field_bit_length = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %68, i32 0, i32 8, !dbg !1249
  store i32 %67, i32* %field_bit_length, align 8, !dbg !1250
  %69 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1251
  %field_node72 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %69, i32 0, i32 1, !dbg !1253
  %70 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %field_node72, align 8, !dbg !1253
  %call73 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %70) #9, !dbg !1254
  %tobool74 = icmp ne %union.acpi_operand_object* %call73, null, !dbg !1254
  br i1 %tobool74, label %if.end80, label %if.then75, !dbg !1255

if.then75:                                        ; preds = %if.else66
  %71 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1256
  %call76 = call i32 @acpi_ex_prep_field_value(%struct.acpi_create_field_info* %71) #9, !dbg !1258
  store i32 %call76, i32* %status, align 4, !dbg !1259
  %72 = load i32, i32* %status, align 4, !dbg !1260
  %tobool77 = icmp ne i32 %72, 0, !dbg !1260
  br i1 %tobool77, label %if.then78, label %if.end79, !dbg !1262

if.then78:                                        ; preds = %if.then75
  %73 = load i32, i32* %status, align 4, !dbg !1263
  store i32 %73, i32* %retval, align 4, !dbg !1263
  br label %return, !dbg !1263

if.end79:                                         ; preds = %if.then75
  br label %if.end80, !dbg !1265

if.end80:                                         ; preds = %if.end79, %if.else66
  br label %if.end81

if.end81:                                         ; preds = %if.end80
  %74 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1266
  %field_bit_position82 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %74, i32 0, i32 7, !dbg !1267
  %75 = load i32, i32* %field_bit_position82, align 4, !dbg !1267
  %conv83 = zext i32 %75 to i64, !dbg !1268
  %76 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1269
  %common84 = bitcast %union.acpi_parse_object* %76 to %struct.acpi_parse_obj_common*, !dbg !1270
  %value85 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common84, i32 0, i32 7, !dbg !1271
  %size86 = bitcast %union.acpi_parse_value* %value85 to i32*, !dbg !1272
  %77 = load i32, i32* %size86, align 8, !dbg !1272
  %conv87 = zext i32 %77 to i64, !dbg !1273
  %add88 = add i64 %conv83, %conv87, !dbg !1274
  store i64 %add88, i64* %position, align 8, !dbg !1275
  %78 = load i64, i64* %position, align 8, !dbg !1276
  %cmp89 = icmp ugt i64 %78, 4294967295, !dbg !1278
  br i1 %cmp89, label %if.then91, label %if.end94, !dbg !1279

if.then91:                                        ; preds = %if.end81
  %79 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1280
  %field_node92 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %79, i32 0, i32 1, !dbg !1280
  %80 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %field_node92, align 8, !dbg !1280
  %name93 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %80, i32 0, i32 4, !dbg !1280
  %81 = bitcast %union.acpi_name_union* %name93 to i8*, !dbg !1280
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 432, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %81) #9, !dbg !1280
  store i32 15, i32* %retval, align 4, !dbg !1282
  br label %return, !dbg !1282

if.end94:                                         ; preds = %if.end81
  %82 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1283
  %field_bit_length95 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %82, i32 0, i32 8, !dbg !1284
  %83 = load i32, i32* %field_bit_length95, align 8, !dbg !1284
  %84 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1285
  %field_bit_position96 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %84, i32 0, i32 7, !dbg !1286
  %85 = load i32, i32* %field_bit_position96, align 4, !dbg !1287
  %add97 = add i32 %85, %83, !dbg !1287
  store i32 %add97, i32* %field_bit_position96, align 4, !dbg !1287
  %86 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1288
  %pin_number_index98 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %86, i32 0, i32 10, !dbg !1289
  %87 = load i16, i16* %pin_number_index98, align 2, !dbg !1290
  %inc = add i16 %87, 1, !dbg !1290
  store i16 %inc, i16* %pin_number_index98, align 2, !dbg !1290
  br label %sw.epilog, !dbg !1291

sw.default:                                       ; preds = %while.body
  %88 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1292
  %common99 = bitcast %union.acpi_parse_object* %88 to %struct.acpi_parse_obj_common*, !dbg !1292
  %aml_opcode100 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common99, i32 0, i32 3, !dbg !1292
  %89 = load i16, i16* %aml_opcode100, align 2, !dbg !1292
  %conv101 = zext i16 %89 to i32, !dbg !1292
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 446, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %conv101) #9, !dbg !1292
  store i32 12289, i32* %retval, align 4, !dbg !1293
  br label %return, !dbg !1293

sw.epilog:                                        ; preds = %if.end94, %if.end54, %sw.bb8, %if.end
  %90 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1294
  %common102 = bitcast %union.acpi_parse_object* %90 to %struct.acpi_parse_obj_common*, !dbg !1295
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common102, i32 0, i32 5, !dbg !1296
  %91 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next, align 8, !dbg !1296
  store %union.acpi_parse_object* %91, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1297
  br label %while.cond, !dbg !1095, !llvm.loop !1298

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !1300
  br label %return, !dbg !1300

return:                                           ; preds = %while.end, %sw.default, %if.then91, %if.then78, %if.then62, %if.then48, %if.then
  %92 = load i32, i32* %retval, align 4, !dbg !1301
  ret i32 %92, !dbg !1301
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !1302 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1306, metadata !DIExpression()), !dbg !1312
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1316, metadata !DIExpression()), !dbg !1317
  %0 = load i64, i64* %size.addr, align 8, !dbg !1318
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1319, metadata !DIExpression()), !dbg !1320
  br label %do.body, !dbg !1320

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1321, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1325, metadata !DIExpression()), !dbg !1324
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1324
  %conv = zext i1 %cmp to i32, !dbg !1324
  store i32 1, i32* %tmp, align 4, !dbg !1324
  %1 = load i32, i32* %tmp, align 4, !dbg !1324
  %call = call i64 @arch_local_save_flags() #9, !dbg !1326
  store i64 %call, i64* %_flags, align 8, !dbg !1326
  br label %do.end, !dbg !1326

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1327, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1330, metadata !DIExpression()), !dbg !1329
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1329
  %conv6 = zext i1 %cmp5 to i32, !dbg !1329
  store i32 1, i32* %tmp7, align 4, !dbg !1329
  %2 = load i32, i32* %tmp7, align 4, !dbg !1329
  %3 = load i64, i64* %_flags, align 8, !dbg !1331
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1332
  %and.i = and i64 %4, 512, !dbg !1333
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1334
  %lnot.i = xor i1 %tobool.i, true, !dbg !1334
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1334
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1331
  %5 = load i32, i32* %tmp8, align 4, !dbg !1331
  store i32 %5, i32* %tmp1, align 4, !dbg !1326
  %6 = load i32, i32* %tmp1, align 4, !dbg !1320
  %tobool = icmp ne i32 %6, 0, !dbg !1335
  %7 = zext i1 %tobool to i64, !dbg !1335
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1335
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #9, !dbg !1336
  ret i8* %call10, !dbg !1337
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_init_field_objects(%union.acpi_parse_object* %op, %struct.acpi_walk_state* %walk_state) #0 !dbg !1338 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  %arg = alloca %union.acpi_parse_object*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %type = alloca i8, align 1
  %flags = alloca i32, align 4
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !1339, metadata !DIExpression()), !dbg !1340
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1341, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1343, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %arg, metadata !1345, metadata !DIExpression()), !dbg !1346
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %arg, align 8, !dbg !1346
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1347, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.declare(metadata i8* %type, metadata !1349, metadata !DIExpression()), !dbg !1350
  store i8 0, i8* %type, align 1, !dbg !1350
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !1351, metadata !DIExpression()), !dbg !1352
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1353
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 20, !dbg !1355
  %1 = load i32, i32* %parse_flags, align 4, !dbg !1355
  %and = and i32 %1, 48, !dbg !1356
  %tobool = icmp ne i32 %and, 0, !dbg !1356
  br i1 %tobool, label %if.end5, label %if.then, !dbg !1357

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1358
  %parse_flags1 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 20, !dbg !1361
  %3 = load i32, i32* %parse_flags1, align 4, !dbg !1361
  %and2 = and i32 %3, 256, !dbg !1362
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1362
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !1363

if.then4:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4, !dbg !1364
  br label %return, !dbg !1364

if.end:                                           ; preds = %if.then
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 574, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !1366
  store i32 12303, i32* %retval, align 4, !dbg !1367
  br label %return, !dbg !1367

if.end5:                                          ; preds = %entry
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1368
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %4, i32 0, i32 3, !dbg !1369
  %5 = load i16, i16* %opcode, align 2, !dbg !1369
  %conv = zext i16 %5 to i32, !dbg !1368
  switch i32 %conv, label %sw.default [
    i32 23425, label %sw.bb
    i32 23431, label %sw.bb6
    i32 23430, label %sw.bb8
  ], !dbg !1370

sw.bb:                                            ; preds = %if.end5
  %6 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1371
  %call = call %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %6, i32 2) #9, !dbg !1373
  store %union.acpi_parse_object* %call, %union.acpi_parse_object** %arg, align 8, !dbg !1374
  store i8 17, i8* %type, align 1, !dbg !1375
  br label %sw.epilog, !dbg !1376

sw.bb6:                                           ; preds = %if.end5
  %7 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1377
  %call7 = call %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %7, i32 4) #9, !dbg !1378
  store %union.acpi_parse_object* %call7, %union.acpi_parse_object** %arg, align 8, !dbg !1379
  store i8 18, i8* %type, align 1, !dbg !1380
  br label %sw.epilog, !dbg !1381

sw.bb8:                                           ; preds = %if.end5
  %8 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1382
  %call9 = call %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %8, i32 3) #9, !dbg !1383
  store %union.acpi_parse_object* %call9, %union.acpi_parse_object** %arg, align 8, !dbg !1384
  store i8 19, i8* %type, align 1, !dbg !1385
  br label %sw.epilog, !dbg !1386

sw.default:                                       ; preds = %if.end5
  store i32 4097, i32* %retval, align 4, !dbg !1387
  br label %return, !dbg !1387

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb6, %sw.bb
  store i32 10, i32* %flags, align 4, !dbg !1388
  %9 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1389
  %method_node = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %9, i32 0, i32 38, !dbg !1391
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node, align 8, !dbg !1391
  %tobool10 = icmp ne %struct.acpi_namespace_node* %10, null, !dbg !1389
  br i1 %tobool10, label %land.lhs.true, label %if.end15, !dbg !1392

land.lhs.true:                                    ; preds = %sw.epilog
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1393
  %parse_flags11 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 20, !dbg !1394
  %12 = load i32, i32* %parse_flags11, align 4, !dbg !1394
  %and12 = and i32 %12, 1024, !dbg !1395
  %tobool13 = icmp ne i32 %and12, 0, !dbg !1395
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !1396

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %flags, align 4, !dbg !1397
  %or = or i32 %13, 64, !dbg !1397
  store i32 %or, i32* %flags, align 4, !dbg !1397
  br label %if.end15, !dbg !1399

if.end15:                                         ; preds = %if.then14, %land.lhs.true, %sw.epilog
  br label %while.cond, !dbg !1400

while.cond:                                       ; preds = %if.end34, %if.end15
  %14 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1401
  %tobool16 = icmp ne %union.acpi_parse_object* %14, null, !dbg !1400
  br i1 %tobool16, label %while.body, label %while.end, !dbg !1400

while.body:                                       ; preds = %while.cond
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1402
  %common = bitcast %union.acpi_parse_object* %15 to %struct.acpi_parse_obj_common*, !dbg !1405
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 3, !dbg !1406
  %16 = load i16, i16* %aml_opcode, align 2, !dbg !1406
  %conv17 = zext i16 %16 to i32, !dbg !1402
  %cmp = icmp eq i32 %conv17, 48, !dbg !1407
  br i1 %cmp, label %if.then19, label %if.end34, !dbg !1408

if.then19:                                        ; preds = %while.body
  %17 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1409
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %17, i32 0, i32 46, !dbg !1411
  %18 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !1411
  %19 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1412
  %named = bitcast %union.acpi_parse_object* %19 to %struct.acpi_parse_obj_named*, !dbg !1413
  %name = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named, i32 0, i32 12, !dbg !1414
  %20 = bitcast i32* %name to i8*, !dbg !1415
  %21 = load i8, i8* %type, align 1, !dbg !1416
  %conv20 = zext i8 %21 to i32, !dbg !1416
  %22 = load i32, i32* %flags, align 4, !dbg !1417
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1418
  %call21 = call i32 @acpi_ns_lookup(%union.acpi_generic_state* %18, i8* %20, i32 %conv20, i32 1, i32 %22, %struct.acpi_walk_state* %23, %struct.acpi_namespace_node** %node) #9, !dbg !1419
  store i32 %call21, i32* %status, align 4, !dbg !1420
  %24 = load i32, i32* %status, align 4, !dbg !1421
  %tobool22 = icmp ne i32 %24, 0, !dbg !1421
  br i1 %tobool22, label %if.then23, label %if.end31, !dbg !1423

if.then23:                                        ; preds = %if.then19
  %25 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1424
  %scope_info24 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %25, i32 0, i32 46, !dbg !1424
  %26 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info24, align 8, !dbg !1424
  %27 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1424
  %named25 = bitcast %union.acpi_parse_object* %27 to %struct.acpi_parse_obj_named*, !dbg !1424
  %name26 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named25, i32 0, i32 12, !dbg !1424
  %28 = bitcast i32* %name26 to i8*, !dbg !1424
  %29 = load i32, i32* %status, align 4, !dbg !1424
  call void @acpi_ut_prefixed_namespace_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 639, %union.acpi_generic_state* %26, i8* %28, i32 %29) #9, !dbg !1424
  %30 = load i32, i32* %status, align 4, !dbg !1426
  %cmp27 = icmp ne i32 %30, 7, !dbg !1428
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !1429

if.then29:                                        ; preds = %if.then23
  %31 = load i32, i32* %status, align 4, !dbg !1430
  store i32 %31, i32* %retval, align 4, !dbg !1430
  br label %return, !dbg !1430

if.end30:                                         ; preds = %if.then23
  br label %if.end31, !dbg !1432

if.end31:                                         ; preds = %if.end30, %if.then19
  %32 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1433
  %33 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1434
  %common32 = bitcast %union.acpi_parse_object* %33 to %struct.acpi_parse_obj_common*, !dbg !1435
  %node33 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common32, i32 0, i32 6, !dbg !1436
  store %struct.acpi_namespace_node* %32, %struct.acpi_namespace_node** %node33, align 8, !dbg !1437
  br label %if.end34, !dbg !1438

if.end34:                                         ; preds = %if.end31, %while.body
  %34 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1439
  %common35 = bitcast %union.acpi_parse_object* %34 to %struct.acpi_parse_obj_common*, !dbg !1440
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common35, i32 0, i32 5, !dbg !1441
  %35 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next, align 8, !dbg !1441
  store %union.acpi_parse_object* %35, %union.acpi_parse_object** %arg, align 8, !dbg !1442
  br label %while.cond, !dbg !1400, !llvm.loop !1443

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !1445
  br label %return, !dbg !1445

return:                                           ; preds = %while.end, %if.then29, %sw.default, %if.end, %if.then4
  %36 = load i32, i32* %retval, align 4, !dbg !1446
  ret i32 %36, !dbg !1446
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_create_bank_field(%union.acpi_parse_object* %op, %struct.acpi_namespace_node* %region_node, %struct.acpi_walk_state* %walk_state) #0 !dbg !1447 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %region_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  %arg = alloca %union.acpi_parse_object*, align 8
  %info = alloca %struct.acpi_create_field_info, align 8
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !1448, metadata !DIExpression()), !dbg !1449
  store %struct.acpi_namespace_node* %region_node, %struct.acpi_namespace_node** %region_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %region_node.addr, metadata !1450, metadata !DIExpression()), !dbg !1451
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1452, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1454, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %arg, metadata !1456, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.declare(metadata %struct.acpi_create_field_info* %info, metadata !1458, metadata !DIExpression()), !dbg !1459
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1460
  %common = bitcast %union.acpi_parse_object* %0 to %struct.acpi_parse_obj_common*, !dbg !1461
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 7, !dbg !1462
  %arg1 = bitcast %union.acpi_parse_value* %value to %union.acpi_parse_object**, !dbg !1463
  %1 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg1, align 8, !dbg !1463
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %arg, align 8, !dbg !1464
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %region_node.addr, align 8, !dbg !1465
  %tobool = icmp ne %struct.acpi_namespace_node* %2, null, !dbg !1465
  br i1 %tobool, label %if.end10, label %if.then, !dbg !1467

if.then:                                          ; preds = %entry
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1468
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 46, !dbg !1470
  %4 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !1470
  %5 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1471
  %common2 = bitcast %union.acpi_parse_object* %5 to %struct.acpi_parse_obj_common*, !dbg !1472
  %value3 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common2, i32 0, i32 7, !dbg !1473
  %name = bitcast %union.acpi_parse_value* %value3 to i8**, !dbg !1474
  %6 = load i8*, i8** %name, align 8, !dbg !1474
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1475
  %call = call i32 @acpi_ns_lookup(%union.acpi_generic_state* %4, i8* %6, i32 10, i32 3, i32 1, %struct.acpi_walk_state* %7, %struct.acpi_namespace_node** %region_node.addr) #9, !dbg !1476
  store i32 %call, i32* %status, align 4, !dbg !1477
  %8 = load i32, i32* %status, align 4, !dbg !1478
  %tobool4 = icmp ne i32 %8, 0, !dbg !1478
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !1480

if.then5:                                         ; preds = %if.then
  %9 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1481
  %scope_info6 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %9, i32 0, i32 46, !dbg !1481
  %10 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info6, align 8, !dbg !1481
  %11 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1481
  %common7 = bitcast %union.acpi_parse_object* %11 to %struct.acpi_parse_obj_common*, !dbg !1481
  %value8 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common7, i32 0, i32 7, !dbg !1481
  %name9 = bitcast %union.acpi_parse_value* %value8 to i8**, !dbg !1481
  %12 = load i8*, i8** %name9, align 8, !dbg !1481
  %13 = load i32, i32* %status, align 4, !dbg !1481
  call void @acpi_ut_prefixed_namespace_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 700, %union.acpi_generic_state* %10, i8* %12, i32 %13) #9, !dbg !1481
  %14 = load i32, i32* %status, align 4, !dbg !1483
  store i32 %14, i32* %retval, align 4, !dbg !1483
  br label %return, !dbg !1483

if.end:                                           ; preds = %if.then
  br label %if.end10, !dbg !1484

if.end10:                                         ; preds = %if.end, %entry
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1485
  %common11 = bitcast %union.acpi_parse_object* %15 to %struct.acpi_parse_obj_common*, !dbg !1486
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common11, i32 0, i32 5, !dbg !1487
  %16 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next, align 8, !dbg !1487
  store %union.acpi_parse_object* %16, %union.acpi_parse_object** %arg, align 8, !dbg !1488
  %17 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1489
  %scope_info12 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %17, i32 0, i32 46, !dbg !1490
  %18 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info12, align 8, !dbg !1490
  %19 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1491
  %common13 = bitcast %union.acpi_parse_object* %19 to %struct.acpi_parse_obj_common*, !dbg !1492
  %value14 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common13, i32 0, i32 7, !dbg !1493
  %string = bitcast %union.acpi_parse_value* %value14 to i8**, !dbg !1494
  %20 = load i8*, i8** %string, align 8, !dbg !1494
  %21 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1495
  %register_node = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %info, i32 0, i32 2, !dbg !1496
  %call15 = call i32 @acpi_ns_lookup(%union.acpi_generic_state* %18, i8* %20, i32 0, i32 3, i32 1, %struct.acpi_walk_state* %21, %struct.acpi_namespace_node** %register_node) #9, !dbg !1497
  store i32 %call15, i32* %status, align 4, !dbg !1498
  %22 = load i32, i32* %status, align 4, !dbg !1499
  %tobool16 = icmp ne i32 %22, 0, !dbg !1499
  br i1 %tobool16, label %if.then17, label %if.end22, !dbg !1501

if.then17:                                        ; preds = %if.end10
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1502
  %scope_info18 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %23, i32 0, i32 46, !dbg !1502
  %24 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info18, align 8, !dbg !1502
  %25 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1502
  %common19 = bitcast %union.acpi_parse_object* %25 to %struct.acpi_parse_obj_common*, !dbg !1502
  %value20 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common19, i32 0, i32 7, !dbg !1502
  %string21 = bitcast %union.acpi_parse_value* %value20 to i8**, !dbg !1502
  %26 = load i8*, i8** %string21, align 8, !dbg !1502
  %27 = load i32, i32* %status, align 4, !dbg !1502
  call void @acpi_ut_prefixed_namespace_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 715, %union.acpi_generic_state* %24, i8* %26, i32 %27) #9, !dbg !1502
  %28 = load i32, i32* %status, align 4, !dbg !1504
  store i32 %28, i32* %retval, align 4, !dbg !1504
  br label %return, !dbg !1504

if.end22:                                         ; preds = %if.end10
  %29 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1505
  %common23 = bitcast %union.acpi_parse_object* %29 to %struct.acpi_parse_obj_common*, !dbg !1506
  %next24 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common23, i32 0, i32 5, !dbg !1507
  %30 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next24, align 8, !dbg !1507
  store %union.acpi_parse_object* %30, %union.acpi_parse_object** %arg, align 8, !dbg !1508
  %31 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1509
  %common25 = bitcast %union.acpi_parse_object* %31 to %struct.acpi_parse_obj_common*, !dbg !1510
  %next26 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common25, i32 0, i32 5, !dbg !1511
  %32 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next26, align 8, !dbg !1511
  store %union.acpi_parse_object* %32, %union.acpi_parse_object** %arg, align 8, !dbg !1512
  %33 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1513
  %common27 = bitcast %union.acpi_parse_object* %33 to %struct.acpi_parse_obj_common*, !dbg !1514
  %value28 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common27, i32 0, i32 7, !dbg !1515
  %integer = bitcast %union.acpi_parse_value* %value28 to i64*, !dbg !1516
  %34 = load i64, i64* %integer, align 8, !dbg !1516
  %conv = trunc i64 %34 to i8, !dbg !1517
  %field_flags = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %info, i32 0, i32 11, !dbg !1518
  store i8 %conv, i8* %field_flags, align 8, !dbg !1519
  %field_type = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %info, i32 0, i32 13, !dbg !1520
  store i8 18, i8* %field_type, align 2, !dbg !1521
  %35 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %region_node.addr, align 8, !dbg !1522
  %region_node29 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %info, i32 0, i32 0, !dbg !1523
  store %struct.acpi_namespace_node* %35, %struct.acpi_namespace_node** %region_node29, align 8, !dbg !1524
  %36 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1525
  %37 = bitcast %union.acpi_parse_object* %36 to %struct.acpi_namespace_node*, !dbg !1526
  %data_register_node = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %info, i32 0, i32 3, !dbg !1527
  store %struct.acpi_namespace_node* %37, %struct.acpi_namespace_node** %data_register_node, align 8, !dbg !1528
  %38 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1529
  %39 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1530
  %common30 = bitcast %union.acpi_parse_object* %39 to %struct.acpi_parse_obj_common*, !dbg !1531
  %next31 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common30, i32 0, i32 5, !dbg !1532
  %40 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next31, align 8, !dbg !1532
  %call32 = call i32 @acpi_ds_get_field_names(%struct.acpi_create_field_info* %info, %struct.acpi_walk_state* %38, %union.acpi_parse_object* %40) #9, !dbg !1533
  store i32 %call32, i32* %status, align 4, !dbg !1534
  %41 = load i32, i32* %status, align 4, !dbg !1535
  store i32 %41, i32* %retval, align 4, !dbg !1535
  br label %return, !dbg !1535

return:                                           ; preds = %if.end22, %if.then17, %if.then5
  %42 = load i32, i32* %retval, align 4, !dbg !1536
  ret i32 %42, !dbg !1536
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_create_index_field(%union.acpi_parse_object* %op, %struct.acpi_namespace_node* %region_node, %struct.acpi_walk_state* %walk_state) #0 !dbg !1537 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %region_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  %arg = alloca %union.acpi_parse_object*, align 8
  %info = alloca %struct.acpi_create_field_info, align 8
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !1538, metadata !DIExpression()), !dbg !1539
  store %struct.acpi_namespace_node* %region_node, %struct.acpi_namespace_node** %region_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %region_node.addr, metadata !1540, metadata !DIExpression()), !dbg !1541
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1542, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1544, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %arg, metadata !1546, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.declare(metadata %struct.acpi_create_field_info* %info, metadata !1548, metadata !DIExpression()), !dbg !1549
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1550
  %common = bitcast %union.acpi_parse_object* %0 to %struct.acpi_parse_obj_common*, !dbg !1551
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 7, !dbg !1552
  %arg1 = bitcast %union.acpi_parse_value* %value to %union.acpi_parse_object**, !dbg !1553
  %1 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg1, align 8, !dbg !1553
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %arg, align 8, !dbg !1554
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1555
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 46, !dbg !1556
  %3 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !1556
  %4 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1557
  %common2 = bitcast %union.acpi_parse_object* %4 to %struct.acpi_parse_obj_common*, !dbg !1558
  %value3 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common2, i32 0, i32 7, !dbg !1559
  %string = bitcast %union.acpi_parse_value* %value3 to i8**, !dbg !1560
  %5 = load i8*, i8** %string, align 8, !dbg !1560
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1561
  %register_node = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %info, i32 0, i32 2, !dbg !1562
  %call = call i32 @acpi_ns_lookup(%union.acpi_generic_state* %3, i8* %5, i32 0, i32 3, i32 1, %struct.acpi_walk_state* %6, %struct.acpi_namespace_node** %register_node) #9, !dbg !1563
  store i32 %call, i32* %status, align 4, !dbg !1564
  %7 = load i32, i32* %status, align 4, !dbg !1565
  %tobool = icmp ne i32 %7, 0, !dbg !1565
  br i1 %tobool, label %if.then, label %if.end, !dbg !1567

if.then:                                          ; preds = %entry
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1568
  %scope_info4 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 46, !dbg !1568
  %9 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info4, align 8, !dbg !1568
  %10 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1568
  %common5 = bitcast %union.acpi_parse_object* %10 to %struct.acpi_parse_obj_common*, !dbg !1568
  %value6 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common5, i32 0, i32 7, !dbg !1568
  %string7 = bitcast %union.acpi_parse_value* %value6 to i8**, !dbg !1568
  %11 = load i8*, i8** %string7, align 8, !dbg !1568
  %12 = load i32, i32* %status, align 4, !dbg !1568
  call void @acpi_ut_prefixed_namespace_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 786, %union.acpi_generic_state* %9, i8* %11, i32 %12) #9, !dbg !1568
  %13 = load i32, i32* %status, align 4, !dbg !1570
  store i32 %13, i32* %retval, align 4, !dbg !1570
  br label %return, !dbg !1570

if.end:                                           ; preds = %entry
  %14 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1571
  %common8 = bitcast %union.acpi_parse_object* %14 to %struct.acpi_parse_obj_common*, !dbg !1572
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common8, i32 0, i32 5, !dbg !1573
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next, align 8, !dbg !1573
  store %union.acpi_parse_object* %15, %union.acpi_parse_object** %arg, align 8, !dbg !1574
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1575
  %scope_info9 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 46, !dbg !1576
  %17 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info9, align 8, !dbg !1576
  %18 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1577
  %common10 = bitcast %union.acpi_parse_object* %18 to %struct.acpi_parse_obj_common*, !dbg !1578
  %value11 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common10, i32 0, i32 7, !dbg !1579
  %string12 = bitcast %union.acpi_parse_value* %value11 to i8**, !dbg !1580
  %19 = load i8*, i8** %string12, align 8, !dbg !1580
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1581
  %data_register_node = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %info, i32 0, i32 3, !dbg !1582
  %call13 = call i32 @acpi_ns_lookup(%union.acpi_generic_state* %17, i8* %19, i32 0, i32 3, i32 1, %struct.acpi_walk_state* %20, %struct.acpi_namespace_node** %data_register_node) #9, !dbg !1583
  store i32 %call13, i32* %status, align 4, !dbg !1584
  %21 = load i32, i32* %status, align 4, !dbg !1585
  %tobool14 = icmp ne i32 %21, 0, !dbg !1585
  br i1 %tobool14, label %if.then15, label %if.end20, !dbg !1587

if.then15:                                        ; preds = %if.end
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1588
  %scope_info16 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %22, i32 0, i32 46, !dbg !1588
  %23 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info16, align 8, !dbg !1588
  %24 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1588
  %common17 = bitcast %union.acpi_parse_object* %24 to %struct.acpi_parse_obj_common*, !dbg !1588
  %value18 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common17, i32 0, i32 7, !dbg !1588
  %string19 = bitcast %union.acpi_parse_value* %value18 to i8**, !dbg !1588
  %25 = load i8*, i8** %string19, align 8, !dbg !1588
  %26 = load i32, i32* %status, align 4, !dbg !1588
  call void @acpi_ut_prefixed_namespace_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 800, %union.acpi_generic_state* %23, i8* %25, i32 %26) #9, !dbg !1588
  %27 = load i32, i32* %status, align 4, !dbg !1590
  store i32 %27, i32* %retval, align 4, !dbg !1590
  br label %return, !dbg !1590

if.end20:                                         ; preds = %if.end
  %28 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1591
  %common21 = bitcast %union.acpi_parse_object* %28 to %struct.acpi_parse_obj_common*, !dbg !1592
  %next22 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common21, i32 0, i32 5, !dbg !1593
  %29 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next22, align 8, !dbg !1593
  store %union.acpi_parse_object* %29, %union.acpi_parse_object** %arg, align 8, !dbg !1594
  %30 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1595
  %common23 = bitcast %union.acpi_parse_object* %30 to %struct.acpi_parse_obj_common*, !dbg !1596
  %value24 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common23, i32 0, i32 7, !dbg !1597
  %integer = bitcast %union.acpi_parse_value* %value24 to i64*, !dbg !1598
  %31 = load i64, i64* %integer, align 8, !dbg !1598
  %conv = trunc i64 %31 to i8, !dbg !1599
  %field_flags = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %info, i32 0, i32 11, !dbg !1600
  store i8 %conv, i8* %field_flags, align 8, !dbg !1601
  %field_type = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %info, i32 0, i32 13, !dbg !1602
  store i8 19, i8* %field_type, align 2, !dbg !1603
  %32 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %region_node.addr, align 8, !dbg !1604
  %region_node25 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %info, i32 0, i32 0, !dbg !1605
  store %struct.acpi_namespace_node* %32, %struct.acpi_namespace_node** %region_node25, align 8, !dbg !1606
  %33 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1607
  %34 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1608
  %common26 = bitcast %union.acpi_parse_object* %34 to %struct.acpi_parse_obj_common*, !dbg !1609
  %next27 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common26, i32 0, i32 5, !dbg !1610
  %35 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next27, align 8, !dbg !1610
  %call28 = call i32 @acpi_ds_get_field_names(%struct.acpi_create_field_info* %info, %struct.acpi_walk_state* %33, %union.acpi_parse_object* %35) #9, !dbg !1611
  store i32 %call28, i32* %status, align 4, !dbg !1612
  %36 = load i32, i32* %status, align 4, !dbg !1613
  store i32 %36, i32* %retval, align 4, !dbg !1613
  br label %return, !dbg !1613

return:                                           ; preds = %if.end20, %if.then15, %if.then
  %37 = load i32, i32* %retval, align 4, !dbg !1614
  ret i32 %37, !dbg !1614
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_prep_field_value(%struct.acpi_create_field_info*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1615 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1622, metadata !DIExpression()), !dbg !1629
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1635, metadata !DIExpression()), !dbg !1636
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1637, metadata !DIExpression()), !dbg !1638
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1639, metadata !DIExpression()), !dbg !1640
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1641, metadata !DIExpression()), !dbg !1645
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1647, metadata !DIExpression()), !dbg !1651
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1653, metadata !DIExpression()), !dbg !1657
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1662, metadata !DIExpression()), !dbg !1663
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1664, metadata !DIExpression()), !dbg !1665
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1666, metadata !DIExpression()), !dbg !1667
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1668, metadata !DIExpression()), !dbg !1669
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1670, metadata !DIExpression()), !dbg !1671
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1672, metadata !DIExpression()), !dbg !1673
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1674, metadata !DIExpression()), !dbg !1675
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1676, metadata !DIExpression()), !dbg !1677
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1678, metadata !DIExpression()), !dbg !1679
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1680, metadata !DIExpression()), !dbg !1681
  %0 = load i64, i64* %size.addr, align 8, !dbg !1682
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1683
  %or = or i32 %1, 256, !dbg !1684
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1685
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !1686
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1687

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1688
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1689
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1690

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1691
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1692
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1693
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !1694
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1671
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1695
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1696
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1697
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1698
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1699
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1700
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !1701
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1701
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1701
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1701
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !1701
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1702
  br label %kmalloc.exit, !dbg !1702

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1703
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1704
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1704
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1706

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1707
  br label %kmalloc_index.exit.i, !dbg !1707

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1708
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1710
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1711

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1712
  br label %kmalloc_index.exit.i, !dbg !1712

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1713
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1715
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1716

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1717
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1718
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1719

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1720
  br label %kmalloc_index.exit.i, !dbg !1720

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1721
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1723
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1724

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1725
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1726
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1727

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1728
  br label %kmalloc_index.exit.i, !dbg !1728

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1729
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1731
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1732

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1733
  br label %kmalloc_index.exit.i, !dbg !1733

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1734
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1736
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1737

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1738
  br label %kmalloc_index.exit.i, !dbg !1738

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1739
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1741
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1742

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1743
  br label %kmalloc_index.exit.i, !dbg !1743

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1744
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1746
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1747

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1748
  br label %kmalloc_index.exit.i, !dbg !1748

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1749
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1751
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1752

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1753
  br label %kmalloc_index.exit.i, !dbg !1753

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1754
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1756
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1757

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1758
  br label %kmalloc_index.exit.i, !dbg !1758

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1759
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1761
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1762

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1763
  br label %kmalloc_index.exit.i, !dbg !1763

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1764
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1766
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1767

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1768
  br label %kmalloc_index.exit.i, !dbg !1768

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1769
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1771
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1772

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1773
  br label %kmalloc_index.exit.i, !dbg !1773

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1774
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1776
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1777

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1778
  br label %kmalloc_index.exit.i, !dbg !1778

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1779
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1781
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1782

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1783
  br label %kmalloc_index.exit.i, !dbg !1783

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1784
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1786
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1787

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1788
  br label %kmalloc_index.exit.i, !dbg !1788

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1789
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1791
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1792

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1793
  br label %kmalloc_index.exit.i, !dbg !1793

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1794
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1796
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1797

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1798
  br label %kmalloc_index.exit.i, !dbg !1798

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1799
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1801
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1802

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1803
  br label %kmalloc_index.exit.i, !dbg !1803

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1804
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1806
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1807

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1808
  br label %kmalloc_index.exit.i, !dbg !1808

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1809
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1811
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1812

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1813
  br label %kmalloc_index.exit.i, !dbg !1813

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1814
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1816
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1817

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1818
  br label %kmalloc_index.exit.i, !dbg !1818

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1819
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1821
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1822

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1823
  br label %kmalloc_index.exit.i, !dbg !1823

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1824
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1826
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1827

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1828
  br label %kmalloc_index.exit.i, !dbg !1828

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1829
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1831
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1832

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1833
  br label %kmalloc_index.exit.i, !dbg !1833

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1834
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1836
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1837

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1838
  br label %kmalloc_index.exit.i, !dbg !1838

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1839
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1841
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1842

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1843
  br label %kmalloc_index.exit.i, !dbg !1843

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1844
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1846
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1847

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1848
  br label %kmalloc_index.exit.i, !dbg !1848

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !1849, !srcloc !1852
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #8, !dbg !1853, !srcloc !1856
  unreachable, !dbg !1857

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1858
  store i32 %45, i32* %index.i, align 4, !dbg !1859
  %46 = load i32, i32* %index.i, align 4, !dbg !1860
  %tobool.i = icmp ne i32 %46, 0, !dbg !1860
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1862

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1863
  br label %kmalloc.exit, !dbg !1863

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1864
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1865
  %and.i.i = and i32 %48, 17, !dbg !1865
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1865
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1865
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1865
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1865
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1867

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1868
  br label %kmalloc_type.exit.i, !dbg !1868

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1869
  %and2.i.i = and i32 %49, 1, !dbg !1870
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1869
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1869
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1869
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1871
  br label %kmalloc_type.exit.i, !dbg !1871

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1872
  %idxprom.i = zext i32 %51 to i64, !dbg !1873
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1873
  %52 = load i32, i32* %index.i, align 4, !dbg !1874
  %idxprom6.i = zext i32 %52 to i64, !dbg !1873
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1873
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1873
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1875
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1876
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1877
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1878
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !1879
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1879
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1879
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1879
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !1879
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1640
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1880
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1881
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1882
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1883
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !1884
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1885
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1886
  store i8* %62, i8** %retval.i, align 8, !dbg !1887
  br label %kmalloc.exit, !dbg !1887

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1888
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1889
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !1890
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1890
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1890
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1890
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !1890
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1891
  br label %kmalloc.exit, !dbg !1891

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1892
  ret i8* %65, !dbg !1893
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1894 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1898, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1901, metadata !DIExpression()), !dbg !1900
  %0 = load i64, i64* %__edi, align 8, !dbg !1900
  store i64 %0, i64* %__edi, align 8, !dbg !1900
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1902, metadata !DIExpression()), !dbg !1900
  %1 = load i64, i64* %__esi, align 8, !dbg !1900
  store i64 %1, i64* %__esi, align 8, !dbg !1900
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1903, metadata !DIExpression()), !dbg !1900
  %2 = load i64, i64* %__edx, align 8, !dbg !1900
  store i64 %2, i64* %__edx, align 8, !dbg !1900
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1904, metadata !DIExpression()), !dbg !1900
  %3 = load i64, i64* %__ecx, align 8, !dbg !1900
  store i64 %3, i64* %__ecx, align 8, !dbg !1900
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1905, metadata !DIExpression()), !dbg !1900
  %4 = load i64, i64* %__eax, align 8, !dbg !1900
  store i64 %4, i64* %__eax, align 8, !dbg !1900
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1900
  %6 = call i64 @llvm.read_register.i64(metadata !801), !dbg !1906
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !1906, !srcloc !1909
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1906
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1906
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1906
  call void @llvm.write_register.i64(metadata !801, i64 %asmresult1), !dbg !1906
  %8 = load i64, i64* %__eax, align 8, !dbg !1906
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1910, metadata !DIExpression()), !dbg !1912
  store i64 -1, i64* %__mask, align 8, !dbg !1912
  %9 = load i64, i64* %__mask, align 8, !dbg !1912
  store i64 %9, i64* %tmp, align 8, !dbg !1912
  %10 = load i64, i64* %tmp, align 8, !dbg !1912
  %and = and i64 %8, %10, !dbg !1906
  store i64 %and, i64* %__ret, align 8, !dbg !1906
  %11 = load i64, i64* %__ret, align 8, !dbg !1900
  store i64 %11, i64* %tmp2, align 8, !dbg !1913
  %12 = load i64, i64* %tmp2, align 8, !dbg !1900
  ret i64 %12, !dbg !1914
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !1915 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1917, metadata !DIExpression()), !dbg !1922
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1924, metadata !DIExpression()), !dbg !1925
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1926, metadata !DIExpression()), !dbg !1927
  %0 = load i64, i64* %size.addr, align 8, !dbg !1928
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1930
  br i1 %1, label %if.then, label %if.end447, !dbg !1931

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1932
  %tobool = icmp ne i64 %2, 0, !dbg !1932
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1935

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1936
  br label %return, !dbg !1936

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1937
  %cmp = icmp ult i64 %3, 4096, !dbg !1939
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1940

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1941
  br label %return, !dbg !1941

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub = sub i64 %4, 1, !dbg !1942
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1942
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1942

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub4 = sub i64 %6, 1, !dbg !1942
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1942
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1942

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub6 = sub i64 %8, 1, !dbg !1942
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1942
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1942

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1942

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub9 = sub i64 %9, 1, !dbg !1942
  %and = and i64 %sub9, -9223372036854775808, !dbg !1942
  %tobool10 = icmp ne i64 %and, 0, !dbg !1942
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1942

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1942

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub13 = sub i64 %10, 1, !dbg !1942
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1942
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1942
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1942

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1942

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub18 = sub i64 %11, 1, !dbg !1942
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1942
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1942
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1942

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1942

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub23 = sub i64 %12, 1, !dbg !1942
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1942
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1942
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1942

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1942

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub28 = sub i64 %13, 1, !dbg !1942
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1942
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1942
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1942

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1942

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub33 = sub i64 %14, 1, !dbg !1942
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1942
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1942
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1942

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1942

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub38 = sub i64 %15, 1, !dbg !1942
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1942
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1942
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1942

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1942

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub43 = sub i64 %16, 1, !dbg !1942
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1942
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1942
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1942

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1942

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub48 = sub i64 %17, 1, !dbg !1942
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1942
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1942
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1942

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1942

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub53 = sub i64 %18, 1, !dbg !1942
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1942
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1942
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1942

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1942

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub58 = sub i64 %19, 1, !dbg !1942
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1942
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1942
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1942

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1942

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub63 = sub i64 %20, 1, !dbg !1942
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1942
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1942
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1942

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1942

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub68 = sub i64 %21, 1, !dbg !1942
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1942
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1942
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1942

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1942

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub73 = sub i64 %22, 1, !dbg !1942
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1942
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1942
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1942

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1942

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub78 = sub i64 %23, 1, !dbg !1942
  %and79 = and i64 %sub78, 562949953421312, !dbg !1942
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1942
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1942

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1942

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub83 = sub i64 %24, 1, !dbg !1942
  %and84 = and i64 %sub83, 281474976710656, !dbg !1942
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1942
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1942

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1942

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub88 = sub i64 %25, 1, !dbg !1942
  %and89 = and i64 %sub88, 140737488355328, !dbg !1942
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1942
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1942

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1942

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub93 = sub i64 %26, 1, !dbg !1942
  %and94 = and i64 %sub93, 70368744177664, !dbg !1942
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1942
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1942

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1942

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub98 = sub i64 %27, 1, !dbg !1942
  %and99 = and i64 %sub98, 35184372088832, !dbg !1942
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1942
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1942

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1942

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub103 = sub i64 %28, 1, !dbg !1942
  %and104 = and i64 %sub103, 17592186044416, !dbg !1942
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1942
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1942

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1942

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub108 = sub i64 %29, 1, !dbg !1942
  %and109 = and i64 %sub108, 8796093022208, !dbg !1942
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1942
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1942

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1942

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub113 = sub i64 %30, 1, !dbg !1942
  %and114 = and i64 %sub113, 4398046511104, !dbg !1942
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1942
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1942

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1942

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub118 = sub i64 %31, 1, !dbg !1942
  %and119 = and i64 %sub118, 2199023255552, !dbg !1942
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1942
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1942

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1942

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub123 = sub i64 %32, 1, !dbg !1942
  %and124 = and i64 %sub123, 1099511627776, !dbg !1942
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1942
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1942

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1942

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub128 = sub i64 %33, 1, !dbg !1942
  %and129 = and i64 %sub128, 549755813888, !dbg !1942
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1942
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1942

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1942

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub133 = sub i64 %34, 1, !dbg !1942
  %and134 = and i64 %sub133, 274877906944, !dbg !1942
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1942
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1942

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1942

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub138 = sub i64 %35, 1, !dbg !1942
  %and139 = and i64 %sub138, 137438953472, !dbg !1942
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1942
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1942

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1942

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub143 = sub i64 %36, 1, !dbg !1942
  %and144 = and i64 %sub143, 68719476736, !dbg !1942
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1942
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1942

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1942

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub148 = sub i64 %37, 1, !dbg !1942
  %and149 = and i64 %sub148, 34359738368, !dbg !1942
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1942
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1942

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1942

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub153 = sub i64 %38, 1, !dbg !1942
  %and154 = and i64 %sub153, 17179869184, !dbg !1942
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1942
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1942

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1942

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub158 = sub i64 %39, 1, !dbg !1942
  %and159 = and i64 %sub158, 8589934592, !dbg !1942
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1942
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1942

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1942

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub163 = sub i64 %40, 1, !dbg !1942
  %and164 = and i64 %sub163, 4294967296, !dbg !1942
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1942
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1942

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1942

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub168 = sub i64 %41, 1, !dbg !1942
  %and169 = and i64 %sub168, 2147483648, !dbg !1942
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1942
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1942

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1942

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub173 = sub i64 %42, 1, !dbg !1942
  %and174 = and i64 %sub173, 1073741824, !dbg !1942
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1942
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1942

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1942

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub178 = sub i64 %43, 1, !dbg !1942
  %and179 = and i64 %sub178, 536870912, !dbg !1942
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1942
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1942

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1942

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub183 = sub i64 %44, 1, !dbg !1942
  %and184 = and i64 %sub183, 268435456, !dbg !1942
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1942
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1942

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1942

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub188 = sub i64 %45, 1, !dbg !1942
  %and189 = and i64 %sub188, 134217728, !dbg !1942
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1942
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1942

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1942

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub193 = sub i64 %46, 1, !dbg !1942
  %and194 = and i64 %sub193, 67108864, !dbg !1942
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1942
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1942

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1942

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub198 = sub i64 %47, 1, !dbg !1942
  %and199 = and i64 %sub198, 33554432, !dbg !1942
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1942
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1942

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1942

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub203 = sub i64 %48, 1, !dbg !1942
  %and204 = and i64 %sub203, 16777216, !dbg !1942
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1942
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1942

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1942

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub208 = sub i64 %49, 1, !dbg !1942
  %and209 = and i64 %sub208, 8388608, !dbg !1942
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1942
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1942

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1942

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub213 = sub i64 %50, 1, !dbg !1942
  %and214 = and i64 %sub213, 4194304, !dbg !1942
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1942
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1942

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1942

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub218 = sub i64 %51, 1, !dbg !1942
  %and219 = and i64 %sub218, 2097152, !dbg !1942
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1942
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1942

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1942

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub223 = sub i64 %52, 1, !dbg !1942
  %and224 = and i64 %sub223, 1048576, !dbg !1942
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1942
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1942

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1942

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub228 = sub i64 %53, 1, !dbg !1942
  %and229 = and i64 %sub228, 524288, !dbg !1942
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1942
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1942

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1942

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub233 = sub i64 %54, 1, !dbg !1942
  %and234 = and i64 %sub233, 262144, !dbg !1942
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1942
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1942

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1942

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub238 = sub i64 %55, 1, !dbg !1942
  %and239 = and i64 %sub238, 131072, !dbg !1942
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1942
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1942

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1942

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub243 = sub i64 %56, 1, !dbg !1942
  %and244 = and i64 %sub243, 65536, !dbg !1942
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1942
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1942

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1942

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub248 = sub i64 %57, 1, !dbg !1942
  %and249 = and i64 %sub248, 32768, !dbg !1942
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1942
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1942

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1942

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub253 = sub i64 %58, 1, !dbg !1942
  %and254 = and i64 %sub253, 16384, !dbg !1942
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1942
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1942

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1942

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub258 = sub i64 %59, 1, !dbg !1942
  %and259 = and i64 %sub258, 8192, !dbg !1942
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1942
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1942

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1942

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub263 = sub i64 %60, 1, !dbg !1942
  %and264 = and i64 %sub263, 4096, !dbg !1942
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1942
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1942

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1942

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub268 = sub i64 %61, 1, !dbg !1942
  %and269 = and i64 %sub268, 2048, !dbg !1942
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1942
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1942

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1942

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub273 = sub i64 %62, 1, !dbg !1942
  %and274 = and i64 %sub273, 1024, !dbg !1942
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1942
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1942

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1942

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub278 = sub i64 %63, 1, !dbg !1942
  %and279 = and i64 %sub278, 512, !dbg !1942
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1942
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1942

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1942

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub283 = sub i64 %64, 1, !dbg !1942
  %and284 = and i64 %sub283, 256, !dbg !1942
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1942
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1942

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1942

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub288 = sub i64 %65, 1, !dbg !1942
  %and289 = and i64 %sub288, 128, !dbg !1942
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1942
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1942

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1942

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub293 = sub i64 %66, 1, !dbg !1942
  %and294 = and i64 %sub293, 64, !dbg !1942
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1942
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1942

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1942

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub298 = sub i64 %67, 1, !dbg !1942
  %and299 = and i64 %sub298, 32, !dbg !1942
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1942
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1942

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1942

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub303 = sub i64 %68, 1, !dbg !1942
  %and304 = and i64 %sub303, 16, !dbg !1942
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1942
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1942

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1942

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub308 = sub i64 %69, 1, !dbg !1942
  %and309 = and i64 %sub308, 8, !dbg !1942
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1942
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1942

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1942

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub313 = sub i64 %70, 1, !dbg !1942
  %and314 = and i64 %sub313, 4, !dbg !1942
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1942
  %71 = zext i1 %tobool315 to i64, !dbg !1942
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1942
  br label %cond.end, !dbg !1942

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1942
  br label %cond.end317, !dbg !1942

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1942
  br label %cond.end319, !dbg !1942

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1942
  br label %cond.end321, !dbg !1942

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1942
  br label %cond.end323, !dbg !1942

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1942
  br label %cond.end325, !dbg !1942

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1942
  br label %cond.end327, !dbg !1942

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1942
  br label %cond.end329, !dbg !1942

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1942
  br label %cond.end331, !dbg !1942

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1942
  br label %cond.end333, !dbg !1942

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1942
  br label %cond.end335, !dbg !1942

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1942
  br label %cond.end337, !dbg !1942

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1942
  br label %cond.end339, !dbg !1942

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1942
  br label %cond.end341, !dbg !1942

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1942
  br label %cond.end343, !dbg !1942

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1942
  br label %cond.end345, !dbg !1942

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1942
  br label %cond.end347, !dbg !1942

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1942
  br label %cond.end349, !dbg !1942

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1942
  br label %cond.end351, !dbg !1942

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1942
  br label %cond.end353, !dbg !1942

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1942
  br label %cond.end355, !dbg !1942

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1942
  br label %cond.end357, !dbg !1942

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1942
  br label %cond.end359, !dbg !1942

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1942
  br label %cond.end361, !dbg !1942

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1942
  br label %cond.end363, !dbg !1942

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1942
  br label %cond.end365, !dbg !1942

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1942
  br label %cond.end367, !dbg !1942

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1942
  br label %cond.end369, !dbg !1942

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1942
  br label %cond.end371, !dbg !1942

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1942
  br label %cond.end373, !dbg !1942

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1942
  br label %cond.end375, !dbg !1942

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1942
  br label %cond.end377, !dbg !1942

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1942
  br label %cond.end379, !dbg !1942

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1942
  br label %cond.end381, !dbg !1942

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1942
  br label %cond.end383, !dbg !1942

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1942
  br label %cond.end385, !dbg !1942

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1942
  br label %cond.end387, !dbg !1942

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1942
  br label %cond.end389, !dbg !1942

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1942
  br label %cond.end391, !dbg !1942

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1942
  br label %cond.end393, !dbg !1942

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1942
  br label %cond.end395, !dbg !1942

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1942
  br label %cond.end397, !dbg !1942

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1942
  br label %cond.end399, !dbg !1942

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1942
  br label %cond.end401, !dbg !1942

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1942
  br label %cond.end403, !dbg !1942

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1942
  br label %cond.end405, !dbg !1942

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1942
  br label %cond.end407, !dbg !1942

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1942
  br label %cond.end409, !dbg !1942

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1942
  br label %cond.end411, !dbg !1942

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1942
  br label %cond.end413, !dbg !1942

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1942
  br label %cond.end415, !dbg !1942

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1942
  br label %cond.end417, !dbg !1942

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1942
  br label %cond.end419, !dbg !1942

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1942
  br label %cond.end421, !dbg !1942

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1942
  br label %cond.end423, !dbg !1942

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1942
  br label %cond.end425, !dbg !1942

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1942
  br label %cond.end427, !dbg !1942

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1942
  br label %cond.end429, !dbg !1942

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1942
  br label %cond.end431, !dbg !1942

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1942
  br label %cond.end433, !dbg !1942

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1942
  br label %cond.end435, !dbg !1942

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1942
  br label %cond.end437, !dbg !1942

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1942
  br label %cond.end440, !dbg !1942

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1942

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1942
  br label %cond.end444, !dbg !1942

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1942
  %sub443 = sub i64 %72, 1, !dbg !1942
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !1942
  br label %cond.end444, !dbg !1942

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1942
  %sub446 = sub i32 %cond445, 12, !dbg !1943
  %add = add i32 %sub446, 1, !dbg !1944
  store i32 %add, i32* %retval, align 4, !dbg !1945
  br label %return, !dbg !1945

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1946
  %dec = add i64 %73, -1, !dbg !1946
  store i64 %dec, i64* %size.addr, align 8, !dbg !1946
  %74 = load i64, i64* %size.addr, align 8, !dbg !1947
  %shr = lshr i64 %74, 12, !dbg !1947
  store i64 %shr, i64* %size.addr, align 8, !dbg !1947
  %75 = load i64, i64* %size.addr, align 8, !dbg !1948
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1925
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1949
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1950
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !1949, !srcloc !1951
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1949
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1952
  %add.i = add i32 %79, 1, !dbg !1953
  store i32 %add.i, i32* %retval, align 4, !dbg !1954
  br label %return, !dbg !1954

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1955
  ret i32 %80, !dbg !1955
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !1956 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1917, metadata !DIExpression()), !dbg !1960
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1924, metadata !DIExpression()), !dbg !1962
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1963, metadata !DIExpression()), !dbg !1964
  %0 = load i64, i64* %n.addr, align 8, !dbg !1965
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1962
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1966
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1967
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !1966, !srcloc !1951
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1966
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1968
  %add.i = add i32 %4, 1, !dbg !1969
  %sub = sub i32 %add.i, 1, !dbg !1970
  ret i32 %sub, !dbg !1971
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1972 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1978, metadata !DIExpression()), !dbg !1979
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1980, metadata !DIExpression()), !dbg !1981
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1982, metadata !DIExpression()), !dbg !1983
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1984, metadata !DIExpression()), !dbg !1985
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1986
  ret i8* %0, !dbg !1987
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

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
!llvm.named.register.rsp = !{!801}
!llvm.module.flags = !{!802, !803, !804, !805}
!llvm.ident = !{!806}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 23, type: !799, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !798, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dsfield.c", directory: "/home/lizy2001/genbc/linux")
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
!19 = !{!20, !25, !29, !32, !33, !37, !39, !34, !27, !115, !795, !797}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !21, line: 19, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !23, line: 24, baseType: !24)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!24 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !26, line: 421, baseType: !27)
!26 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !7)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !21, line: 17, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !31)
!31 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !26, line: 805, baseType: !29)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !26, line: 127, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !21, line: 23, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !36)
!36 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !41)
!41 = !{!42, !782, !783, !784, !785, !791, !792, !793, !794}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !40, file: !6, line: 134, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !45, line: 367, size: 576, elements: !46)
!45 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!46 = !{!47, !55, !68, !78, !92, !106, !116, !433, !450, !465, !478, !556, !568, !582, !592, !610, !632, !651, !670, !689, !702, !728, !745, !758, !772, !781}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !44, file: !45, line: 368, baseType: !48, size: 128)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !45, line: 73, size: 128, elements: !49)
!49 = !{!50, !51, !52, !53, !54}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !48, file: !45, line: 74, baseType: !43, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !48, file: !45, line: 74, baseType: !29, size: 8, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !48, file: !45, line: 74, baseType: !29, size: 8, offset: 72)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !48, file: !45, line: 74, baseType: !20, size: 16, offset: 80)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !48, file: !45, line: 74, baseType: !29, size: 8, offset: 96)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !44, file: !45, line: 369, baseType: !56, size: 192)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !45, line: 76, size: 192, elements: !57)
!57 = !{!58, !59, !60, !61, !62, !63, !67}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !56, file: !45, line: 77, baseType: !43, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !56, file: !45, line: 77, baseType: !29, size: 8, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !56, file: !45, line: 77, baseType: !29, size: 8, offset: 72)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !56, file: !45, line: 77, baseType: !20, size: 16, offset: 80)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !56, file: !45, line: 77, baseType: !29, size: 8, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !56, file: !45, line: 77, baseType: !64, size: 24, offset: 104)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 24, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 3)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !56, file: !45, line: 78, baseType: !34, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !44, file: !45, line: 370, baseType: !69, size: 256)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !45, line: 93, size: 256, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76, !77}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !69, file: !45, line: 94, baseType: !43, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !69, file: !45, line: 94, baseType: !29, size: 8, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !69, file: !45, line: 94, baseType: !29, size: 8, offset: 72)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !69, file: !45, line: 94, baseType: !20, size: 16, offset: 80)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !69, file: !45, line: 94, baseType: !29, size: 8, offset: 96)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !69, file: !45, line: 94, baseType: !37, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !69, file: !45, line: 94, baseType: !27, size: 32, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !44, file: !45, line: 371, baseType: !79, size: 384)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !45, line: 97, size: 384, elements: !80)
!80 = !{!81, !82, !83, !84, !85, !86, !88, !89, !90, !91}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !79, file: !45, line: 98, baseType: !43, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !79, file: !45, line: 98, baseType: !29, size: 8, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !79, file: !45, line: 98, baseType: !29, size: 8, offset: 72)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !79, file: !45, line: 98, baseType: !20, size: 16, offset: 80)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !79, file: !45, line: 98, baseType: !29, size: 8, offset: 96)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !79, file: !45, line: 98, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !79, file: !45, line: 98, baseType: !27, size: 32, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !79, file: !45, line: 99, baseType: !27, size: 32, offset: 224)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !79, file: !45, line: 100, baseType: !87, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !79, file: !45, line: 101, baseType: !39, size: 64, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !44, file: !45, line: 372, baseType: !93, size: 384)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !45, line: 104, size: 384, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100, !101, !103, !104, !105}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !93, file: !45, line: 105, baseType: !43, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !93, file: !45, line: 105, baseType: !29, size: 8, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !93, file: !45, line: 105, baseType: !29, size: 8, offset: 72)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !93, file: !45, line: 105, baseType: !20, size: 16, offset: 80)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !93, file: !45, line: 105, baseType: !29, size: 8, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !93, file: !45, line: 105, baseType: !39, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !93, file: !45, line: 106, baseType: !102, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !93, file: !45, line: 107, baseType: !87, size: 64, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !93, file: !45, line: 108, baseType: !27, size: 32, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !93, file: !45, line: 109, baseType: !27, size: 32, offset: 352)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !44, file: !45, line: 373, baseType: !107, size: 192)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !45, line: 118, size: 192, elements: !108)
!108 = !{!109, !110, !111, !112, !113, !114}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !107, file: !45, line: 119, baseType: !43, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !107, file: !45, line: 119, baseType: !29, size: 8, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !107, file: !45, line: 119, baseType: !29, size: 8, offset: 72)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !107, file: !45, line: 119, baseType: !20, size: 16, offset: 80)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !107, file: !45, line: 119, baseType: !29, size: 8, offset: 96)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !107, file: !45, line: 119, baseType: !115, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !44, file: !45, line: 374, baseType: !117, size: 448)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !45, line: 143, size: 448, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !430, !431, !432}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !117, file: !45, line: 144, baseType: !43, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !117, file: !45, line: 144, baseType: !29, size: 8, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !117, file: !45, line: 144, baseType: !29, size: 8, offset: 72)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !117, file: !45, line: 144, baseType: !20, size: 16, offset: 80)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !117, file: !45, line: 144, baseType: !29, size: 8, offset: 96)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !117, file: !45, line: 144, baseType: !29, size: 8, offset: 104)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !117, file: !45, line: 145, baseType: !29, size: 8, offset: 112)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !117, file: !45, line: 146, baseType: !29, size: 8, offset: 120)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !117, file: !45, line: 147, baseType: !43, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !117, file: !45, line: 148, baseType: !43, size: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !117, file: !45, line: 149, baseType: !87, size: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !117, file: !45, line: 153, baseType: !131, size: 64, offset: 320)
!131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !117, file: !45, line: 150, size: 64, elements: !132)
!132 = !{!133, !429}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !131, file: !45, line: 151, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{!25, !138}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !140, line: 37, size: 9024, elements: !141)
!140 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !375, !376, !377, !378, !379, !383, !385, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !412, !413, !414, !415, !416, !417, !418, !419, !421, !427}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !139, file: !140, line: 38, baseType: !138, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !139, file: !140, line: 39, baseType: !29, size: 8, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !139, file: !140, line: 40, baseType: !29, size: 8, offset: 72)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !139, file: !140, line: 41, baseType: !20, size: 16, offset: 80)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !139, file: !140, line: 42, baseType: !29, size: 8, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !139, file: !140, line: 43, baseType: !29, size: 8, offset: 104)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !139, file: !140, line: 44, baseType: !29, size: 8, offset: 112)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !139, file: !140, line: 45, baseType: !150, size: 16, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !26, line: 445, baseType: !20)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !139, file: !140, line: 46, baseType: !29, size: 8, offset: 144)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !139, file: !140, line: 47, baseType: !29, size: 8, offset: 152)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !139, file: !140, line: 48, baseType: !29, size: 8, offset: 160)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !139, file: !140, line: 49, baseType: !29, size: 8, offset: 168)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !139, file: !140, line: 50, baseType: !29, size: 8, offset: 176)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !139, file: !140, line: 51, baseType: !29, size: 8, offset: 184)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !139, file: !140, line: 52, baseType: !29, size: 8, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !139, file: !140, line: 53, baseType: !29, size: 8, offset: 200)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !139, file: !140, line: 54, baseType: !87, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !139, file: !140, line: 55, baseType: !27, size: 32, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !139, file: !140, line: 56, baseType: !27, size: 32, offset: 352)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !139, file: !140, line: 57, baseType: !27, size: 32, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !139, file: !140, line: 58, baseType: !27, size: 32, offset: 416)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !139, file: !140, line: 60, baseType: !165, size: 640, offset: 448)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 893, size: 640, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !256, !257, !373, !374}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !165, file: !6, line: 894, baseType: !87, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !165, file: !6, line: 895, baseType: !87, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !165, file: !6, line: 896, baseType: !87, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !165, file: !6, line: 897, baseType: !87, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !165, file: !6, line: 898, baseType: !87, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !165, file: !6, line: 899, baseType: !173, size: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 875, size: 1600, elements: !175)
!175 = !{!176, !196, !212}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !174, file: !6, line: 876, baseType: !177, size: 448)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 828, size: 448, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !195}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !177, file: !6, line: 829, baseType: !173, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !177, file: !6, line: 829, baseType: !29, size: 8, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !177, file: !6, line: 829, baseType: !29, size: 8, offset: 72)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !177, file: !6, line: 829, baseType: !20, size: 16, offset: 80)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !177, file: !6, line: 829, baseType: !87, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !177, file: !6, line: 829, baseType: !173, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !177, file: !6, line: 829, baseType: !39, size: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !177, file: !6, line: 829, baseType: !187, size: 64, offset: 320)
!187 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 716, size: 64, elements: !188)
!188 = !{!189, !190, !191, !192, !193, !194}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !187, file: !6, line: 717, baseType: !34, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !187, file: !6, line: 718, baseType: !27, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !187, file: !6, line: 719, baseType: !37, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !187, file: !6, line: 720, baseType: !87, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !187, file: !6, line: 721, baseType: !37, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !187, file: !6, line: 722, baseType: !173, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !177, file: !6, line: 829, baseType: !29, size: 8, offset: 384)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !174, file: !6, line: 877, baseType: !197, size: 640)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 835, size: 640, elements: !198)
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !197, file: !6, line: 836, baseType: !173, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !197, file: !6, line: 836, baseType: !29, size: 8, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !197, file: !6, line: 836, baseType: !29, size: 8, offset: 72)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !197, file: !6, line: 836, baseType: !20, size: 16, offset: 80)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !197, file: !6, line: 836, baseType: !87, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !197, file: !6, line: 836, baseType: !173, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !197, file: !6, line: 836, baseType: !39, size: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !197, file: !6, line: 836, baseType: !187, size: 64, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !197, file: !6, line: 836, baseType: !29, size: 8, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !197, file: !6, line: 836, baseType: !37, size: 64, offset: 448)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !197, file: !6, line: 837, baseType: !87, size: 64, offset: 512)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !197, file: !6, line: 838, baseType: !27, size: 32, offset: 576)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !6, line: 839, baseType: !27, size: 32, offset: 608)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !174, file: !6, line: 878, baseType: !213, size: 1600)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 846, size: 1600, elements: !214)
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !213, file: !6, line: 847, baseType: !173, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !213, file: !6, line: 847, baseType: !29, size: 8, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !213, file: !6, line: 847, baseType: !29, size: 8, offset: 72)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !213, file: !6, line: 847, baseType: !20, size: 16, offset: 80)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !213, file: !6, line: 847, baseType: !87, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !213, file: !6, line: 847, baseType: !173, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !213, file: !6, line: 847, baseType: !39, size: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !213, file: !6, line: 847, baseType: !187, size: 64, offset: 320)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !213, file: !6, line: 847, baseType: !29, size: 8, offset: 384)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !213, file: !6, line: 847, baseType: !173, size: 64, offset: 448)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !213, file: !6, line: 848, baseType: !173, size: 64, offset: 512)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !213, file: !6, line: 849, baseType: !37, size: 64, offset: 576)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !213, file: !6, line: 850, baseType: !29, size: 8, offset: 640)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !213, file: !6, line: 851, baseType: !37, size: 64, offset: 704)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !213, file: !6, line: 852, baseType: !37, size: 64, offset: 768)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !213, file: !6, line: 853, baseType: !37, size: 64, offset: 832)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !213, file: !6, line: 854, baseType: !232, size: 32, offset: 896)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 4)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !213, file: !6, line: 855, baseType: !27, size: 32, offset: 928)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !213, file: !6, line: 856, baseType: !27, size: 32, offset: 960)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !213, file: !6, line: 857, baseType: !27, size: 32, offset: 992)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !213, file: !6, line: 858, baseType: !27, size: 32, offset: 1024)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !213, file: !6, line: 859, baseType: !27, size: 32, offset: 1056)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !213, file: !6, line: 860, baseType: !27, size: 32, offset: 1088)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !213, file: !6, line: 861, baseType: !27, size: 32, offset: 1120)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !213, file: !6, line: 862, baseType: !27, size: 32, offset: 1152)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !213, file: !6, line: 863, baseType: !27, size: 32, offset: 1184)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !213, file: !6, line: 864, baseType: !27, size: 32, offset: 1216)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !213, file: !6, line: 865, baseType: !27, size: 32, offset: 1248)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !213, file: !6, line: 866, baseType: !27, size: 32, offset: 1280)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !213, file: !6, line: 867, baseType: !27, size: 32, offset: 1312)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !213, file: !6, line: 868, baseType: !20, size: 16, offset: 1344)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !213, file: !6, line: 869, baseType: !29, size: 8, offset: 1360)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !213, file: !6, line: 870, baseType: !29, size: 8, offset: 1368)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !213, file: !6, line: 871, baseType: !29, size: 8, offset: 1376)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !213, file: !6, line: 872, baseType: !253, size: 160, offset: 1384)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 160, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 20)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !165, file: !6, line: 900, baseType: !39, size: 64, offset: 384)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !165, file: !6, line: 901, baseType: !258, size: 64, offset: 448)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 663, size: 640, elements: !260)
!260 = !{!261, !269, !282, !291, !300, !313, !327, !339, !351}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !259, file: !6, line: 664, baseType: !262, size: 128)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 567, size: 128, elements: !263)
!263 = !{!264, !265, !266, !267, !268}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !262, file: !6, line: 568, baseType: !115, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !262, file: !6, line: 568, baseType: !29, size: 8, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !262, file: !6, line: 568, baseType: !29, size: 8, offset: 72)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !262, file: !6, line: 568, baseType: !20, size: 16, offset: 80)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !262, file: !6, line: 568, baseType: !20, size: 16, offset: 96)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !259, file: !6, line: 665, baseType: !270, size: 384)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 593, size: 384, elements: !271)
!271 = !{!272, !273, !274, !275, !276, !277, !278, !279, !280, !281}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !270, file: !6, line: 594, baseType: !115, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !270, file: !6, line: 594, baseType: !29, size: 8, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !270, file: !6, line: 594, baseType: !29, size: 8, offset: 72)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !270, file: !6, line: 594, baseType: !20, size: 16, offset: 80)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !270, file: !6, line: 594, baseType: !20, size: 16, offset: 96)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !270, file: !6, line: 594, baseType: !20, size: 16, offset: 112)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !270, file: !6, line: 595, baseType: !173, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !270, file: !6, line: 596, baseType: !87, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !270, file: !6, line: 597, baseType: !87, size: 64, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !270, file: !6, line: 598, baseType: !34, size: 64, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !259, file: !6, line: 666, baseType: !283, size: 192)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 573, size: 192, elements: !284)
!284 = !{!285, !286, !287, !288, !289, !290}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !283, file: !6, line: 574, baseType: !115, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !283, file: !6, line: 574, baseType: !29, size: 8, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !283, file: !6, line: 574, baseType: !29, size: 8, offset: 72)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !283, file: !6, line: 574, baseType: !20, size: 16, offset: 80)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !283, file: !6, line: 574, baseType: !20, size: 16, offset: 96)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !283, file: !6, line: 574, baseType: !43, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !259, file: !6, line: 667, baseType: !292, size: 192)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 604, size: 192, elements: !293)
!293 = !{!294, !295, !296, !297, !298, !299}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !292, file: !6, line: 605, baseType: !115, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !292, file: !6, line: 605, baseType: !29, size: 8, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !292, file: !6, line: 605, baseType: !29, size: 8, offset: 72)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !292, file: !6, line: 605, baseType: !20, size: 16, offset: 80)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !292, file: !6, line: 605, baseType: !20, size: 16, offset: 96)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !292, file: !6, line: 605, baseType: !39, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !259, file: !6, line: 668, baseType: !301, size: 448)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 608, size: 448, elements: !302)
!302 = !{!303, !304, !305, !306, !307, !308, !309, !310, !311, !312}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !6, line: 609, baseType: !115, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !301, file: !6, line: 609, baseType: !29, size: 8, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !6, line: 609, baseType: !29, size: 8, offset: 72)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !301, file: !6, line: 609, baseType: !20, size: 16, offset: 80)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !301, file: !6, line: 609, baseType: !20, size: 16, offset: 96)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !301, file: !6, line: 609, baseType: !27, size: 32, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !301, file: !6, line: 610, baseType: !173, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !301, file: !6, line: 611, baseType: !87, size: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !301, file: !6, line: 612, baseType: !87, size: 64, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !301, file: !6, line: 613, baseType: !27, size: 32, offset: 384)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !259, file: !6, line: 669, baseType: !314, size: 512)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 580, size: 512, elements: !315)
!315 = !{!316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !6, line: 581, baseType: !115, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !314, file: !6, line: 581, baseType: !29, size: 8, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !314, file: !6, line: 581, baseType: !29, size: 8, offset: 72)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !314, file: !6, line: 581, baseType: !20, size: 16, offset: 80)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !314, file: !6, line: 581, baseType: !20, size: 16, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !314, file: !6, line: 581, baseType: !27, size: 32, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !314, file: !6, line: 582, baseType: !43, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !314, file: !6, line: 583, baseType: !43, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !314, file: !6, line: 584, baseType: !138, size: 64, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !314, file: !6, line: 585, baseType: !115, size: 64, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !314, file: !6, line: 586, baseType: !27, size: 32, offset: 448)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !259, file: !6, line: 670, baseType: !328, size: 320)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 620, size: 320, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !338}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !328, file: !6, line: 621, baseType: !115, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !328, file: !6, line: 621, baseType: !29, size: 8, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !328, file: !6, line: 621, baseType: !29, size: 8, offset: 72)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !328, file: !6, line: 621, baseType: !20, size: 16, offset: 80)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !328, file: !6, line: 621, baseType: !20, size: 16, offset: 96)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !328, file: !6, line: 621, baseType: !29, size: 8, offset: 112)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !328, file: !6, line: 622, baseType: !138, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !328, file: !6, line: 623, baseType: !43, size: 64, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !328, file: !6, line: 624, baseType: !34, size: 64, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !259, file: !6, line: 671, baseType: !340, size: 640)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 631, size: 640, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !340, file: !6, line: 632, baseType: !115, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !340, file: !6, line: 632, baseType: !29, size: 8, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !6, line: 632, baseType: !29, size: 8, offset: 72)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !340, file: !6, line: 632, baseType: !20, size: 16, offset: 80)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !340, file: !6, line: 632, baseType: !20, size: 16, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !340, file: !6, line: 633, baseType: !348, size: 512, offset: 128)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 512, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 8)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !259, file: !6, line: 672, baseType: !352, size: 320)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 654, size: 320, elements: !353)
!353 = !{!354, !355, !356, !357, !358, !359, !360, !361, !362}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !352, file: !6, line: 655, baseType: !115, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !352, file: !6, line: 655, baseType: !29, size: 8, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !352, file: !6, line: 655, baseType: !29, size: 8, offset: 72)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !352, file: !6, line: 655, baseType: !20, size: 16, offset: 80)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !352, file: !6, line: 655, baseType: !20, size: 16, offset: 96)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !352, file: !6, line: 655, baseType: !29, size: 8, offset: 112)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !352, file: !6, line: 656, baseType: !39, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !352, file: !6, line: 657, baseType: !43, size: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !352, file: !6, line: 658, baseType: !363, size: 64, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 645, size: 128, elements: !365)
!365 = !{!366, !372}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !364, file: !6, line: 646, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !26, line: 1052, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !371, !27, !115}
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !26, line: 424, baseType: !115)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !364, file: !6, line: 647, baseType: !115, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !165, file: !6, line: 902, baseType: !173, size: 64, offset: 512)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !165, file: !6, line: 903, baseType: !27, size: 32, offset: 576)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !139, file: !140, line: 61, baseType: !27, size: 32, offset: 1088)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !139, file: !140, line: 62, baseType: !27, size: 32, offset: 1120)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !139, file: !140, line: 63, baseType: !20, size: 16, offset: 1152)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !139, file: !140, line: 64, baseType: !29, size: 8, offset: 1168)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !139, file: !140, line: 66, baseType: !380, size: 2688, offset: 1216)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2688, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 7)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !139, file: !140, line: 67, baseType: !384, size: 3072, offset: 3904)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 3072, elements: !349)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !139, file: !140, line: 68, baseType: !386, size: 576, offset: 6976)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 576, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 9)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !139, file: !140, line: 69, baseType: !102, size: 64, offset: 7552)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !139, file: !140, line: 71, baseType: !87, size: 64, offset: 7616)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !139, file: !140, line: 72, baseType: !102, size: 64, offset: 7680)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !139, file: !140, line: 73, baseType: !258, size: 64, offset: 7744)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !139, file: !140, line: 74, baseType: !39, size: 64, offset: 7808)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !139, file: !140, line: 75, baseType: !43, size: 64, offset: 7872)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !139, file: !140, line: 76, baseType: !39, size: 64, offset: 7936)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !139, file: !140, line: 77, baseType: !173, size: 64, offset: 8000)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !139, file: !140, line: 78, baseType: !43, size: 64, offset: 8064)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !139, file: !140, line: 79, baseType: !39, size: 64, offset: 8128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !139, file: !140, line: 80, baseType: !37, size: 64, offset: 8192)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !139, file: !140, line: 81, baseType: !173, size: 64, offset: 8256)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !139, file: !140, line: 82, baseType: !402, size: 64, offset: 8320)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 702, size: 128, elements: !405)
!405 = !{!406, !407, !408, !409, !410, !411}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !404, file: !6, line: 706, baseType: !27, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !404, file: !6, line: 707, baseType: !27, size: 32, offset: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !404, file: !6, line: 708, baseType: !20, size: 16, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !404, file: !6, line: 709, baseType: !29, size: 8, offset: 80)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !404, file: !6, line: 710, baseType: !29, size: 8, offset: 88)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !404, file: !6, line: 711, baseType: !29, size: 8, offset: 96)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !139, file: !140, line: 83, baseType: !173, size: 64, offset: 8384)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !139, file: !140, line: 84, baseType: !43, size: 64, offset: 8448)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !139, file: !140, line: 85, baseType: !258, size: 64, offset: 8512)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !139, file: !140, line: 86, baseType: !43, size: 64, offset: 8576)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !139, file: !140, line: 87, baseType: !258, size: 64, offset: 8640)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !139, file: !140, line: 88, baseType: !173, size: 64, offset: 8704)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !139, file: !140, line: 89, baseType: !173, size: 64, offset: 8768)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !139, file: !140, line: 90, baseType: !420, size: 64, offset: 8832)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !139, file: !140, line: 91, baseType: !422, size: 64, offset: 8896)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 637, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!25, !138, !426}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !139, file: !140, line: 92, baseType: !428, size: 64, offset: 8960)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 641, baseType: !135)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !131, file: !45, line: 152, baseType: !43, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !117, file: !45, line: 155, baseType: !27, size: 32, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !117, file: !45, line: 156, baseType: !150, size: 16, offset: 416)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !117, file: !45, line: 157, baseType: !29, size: 8, offset: 432)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !44, file: !45, line: 375, baseType: !434, size: 576)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !45, line: 122, size: 576, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !434, file: !45, line: 123, baseType: !43, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !434, file: !45, line: 123, baseType: !29, size: 8, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !434, file: !45, line: 123, baseType: !29, size: 8, offset: 72)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !434, file: !45, line: 123, baseType: !20, size: 16, offset: 80)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !434, file: !45, line: 123, baseType: !29, size: 8, offset: 96)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !434, file: !45, line: 123, baseType: !29, size: 8, offset: 104)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !434, file: !45, line: 124, baseType: !20, size: 16, offset: 112)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !434, file: !45, line: 125, baseType: !115, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !434, file: !45, line: 126, baseType: !34, size: 64, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !434, file: !45, line: 127, baseType: !420, size: 64, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !434, file: !45, line: 128, baseType: !43, size: 64, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !434, file: !45, line: 129, baseType: !43, size: 64, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !434, file: !45, line: 130, baseType: !39, size: 64, offset: 448)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !434, file: !45, line: 131, baseType: !29, size: 8, offset: 512)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !44, file: !45, line: 376, baseType: !451, size: 448)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !45, line: 134, size: 448, elements: !452)
!452 = !{!453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !464}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !451, file: !45, line: 135, baseType: !43, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !451, file: !45, line: 135, baseType: !29, size: 8, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !451, file: !45, line: 135, baseType: !29, size: 8, offset: 72)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !451, file: !45, line: 135, baseType: !20, size: 16, offset: 80)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !451, file: !45, line: 135, baseType: !29, size: 8, offset: 96)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !451, file: !45, line: 135, baseType: !29, size: 8, offset: 104)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !451, file: !45, line: 136, baseType: !39, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !451, file: !45, line: 137, baseType: !43, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !451, file: !45, line: 138, baseType: !43, size: 64, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !451, file: !45, line: 139, baseType: !463, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !26, line: 129, baseType: !34)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !451, file: !45, line: 140, baseType: !27, size: 32, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !44, file: !45, line: 377, baseType: !466, size: 320)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !45, line: 184, size: 320, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !477}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !466, file: !45, line: 185, baseType: !43, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !466, file: !45, line: 185, baseType: !29, size: 8, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !466, file: !45, line: 185, baseType: !29, size: 8, offset: 72)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !466, file: !45, line: 185, baseType: !20, size: 16, offset: 80)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !45, line: 185, baseType: !29, size: 8, offset: 96)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !466, file: !45, line: 185, baseType: !474, size: 128, offset: 128)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 128, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 2)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !466, file: !45, line: 185, baseType: !43, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !44, file: !45, line: 378, baseType: !479, size: 384)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !45, line: 187, size: 384, elements: !480)
!480 = !{!481, !482, !483, !484, !485, !486, !487, !488}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !479, file: !45, line: 188, baseType: !43, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !479, file: !45, line: 188, baseType: !29, size: 8, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !479, file: !45, line: 188, baseType: !29, size: 8, offset: 72)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !479, file: !45, line: 188, baseType: !20, size: 16, offset: 80)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !479, file: !45, line: 188, baseType: !29, size: 8, offset: 96)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !479, file: !45, line: 189, baseType: !474, size: 128, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !479, file: !45, line: 189, baseType: !43, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !479, file: !45, line: 189, baseType: !489, size: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !491)
!491 = !{!492, !493, !494, !495, !503, !518, !550, !551, !552, !553, !554, !555}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !490, file: !6, line: 481, baseType: !39, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !490, file: !6, line: 482, baseType: !489, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !490, file: !6, line: 483, baseType: !489, size: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !490, file: !6, line: 484, baseType: !496, size: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !498)
!498 = !{!499, !500, !501, !502}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !497, file: !6, line: 498, baseType: !496, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !497, file: !6, line: 499, baseType: !496, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !497, file: !6, line: 500, baseType: !489, size: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !497, file: !6, line: 501, baseType: !27, size: 32, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !490, file: !6, line: 485, baseType: !504, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !506)
!506 = !{!507, !512, !513, !514, !515, !516, !517}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !505, file: !6, line: 467, baseType: !508, size: 128)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !508, file: !6, line: 460, baseType: !29, size: 8)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !508, file: !6, line: 461, baseType: !34, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !505, file: !6, line: 468, baseType: !508, size: 128, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !505, file: !6, line: 469, baseType: !20, size: 16, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !505, file: !6, line: 470, baseType: !29, size: 8, offset: 272)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !505, file: !6, line: 471, baseType: !29, size: 8, offset: 280)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !505, file: !6, line: 472, baseType: !29, size: 8, offset: 288)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !505, file: !6, line: 473, baseType: !29, size: 8, offset: 296)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !490, file: !6, line: 486, baseType: !519, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !521)
!521 = !{!522, !545, !546, !547, !548, !549}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !520, file: !6, line: 449, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !524)
!524 = !{!525, !526, !539}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !523, file: !6, line: 439, baseType: !39, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !523, file: !6, line: 440, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !529)
!529 = !{!530, !535, !536, !537, !538}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !528, file: !6, line: 420, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !26, line: 1049, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!27, !371, !27, !115}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !528, file: !6, line: 421, baseType: !115, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !528, file: !6, line: 422, baseType: !39, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !528, file: !6, line: 423, baseType: !29, size: 8, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !528, file: !6, line: 424, baseType: !29, size: 8, offset: 200)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !523, file: !6, line: 441, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !542)
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !541, file: !6, line: 430, baseType: !39, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !541, file: !6, line: 431, baseType: !540, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !520, file: !6, line: 450, baseType: !504, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !520, file: !6, line: 451, baseType: !29, size: 8, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !520, file: !6, line: 452, baseType: !29, size: 8, offset: 136)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !520, file: !6, line: 453, baseType: !29, size: 8, offset: 144)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !520, file: !6, line: 454, baseType: !29, size: 8, offset: 152)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !490, file: !6, line: 487, baseType: !34, size: 64, offset: 384)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !490, file: !6, line: 488, baseType: !27, size: 32, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !490, file: !6, line: 489, baseType: !20, size: 16, offset: 480)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !490, file: !6, line: 490, baseType: !20, size: 16, offset: 496)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !490, file: !6, line: 491, baseType: !29, size: 8, offset: 512)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !490, file: !6, line: 492, baseType: !29, size: 8, offset: 520)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !44, file: !45, line: 379, baseType: !557, size: 384)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !45, line: 192, size: 384, elements: !558)
!558 = !{!559, !560, !561, !562, !563, !564, !565, !566, !567}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !557, file: !45, line: 193, baseType: !43, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !557, file: !45, line: 193, baseType: !29, size: 8, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !557, file: !45, line: 193, baseType: !29, size: 8, offset: 72)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !557, file: !45, line: 193, baseType: !20, size: 16, offset: 80)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !557, file: !45, line: 193, baseType: !29, size: 8, offset: 96)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !557, file: !45, line: 193, baseType: !474, size: 128, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !557, file: !45, line: 193, baseType: !43, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !557, file: !45, line: 193, baseType: !27, size: 32, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !557, file: !45, line: 194, baseType: !27, size: 32, offset: 352)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !44, file: !45, line: 380, baseType: !569, size: 384)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !45, line: 197, size: 384, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577, !578, !579, !580}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !569, file: !45, line: 198, baseType: !43, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !569, file: !45, line: 198, baseType: !29, size: 8, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !569, file: !45, line: 198, baseType: !29, size: 8, offset: 72)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !569, file: !45, line: 198, baseType: !20, size: 16, offset: 80)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !569, file: !45, line: 198, baseType: !29, size: 8, offset: 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !569, file: !45, line: 200, baseType: !29, size: 8, offset: 104)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !569, file: !45, line: 201, baseType: !29, size: 8, offset: 112)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !569, file: !45, line: 202, baseType: !474, size: 128, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !569, file: !45, line: 202, baseType: !43, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !569, file: !45, line: 202, baseType: !581, size: 64, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !26, line: 128, baseType: !34)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !44, file: !45, line: 381, baseType: !583, size: 320)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !45, line: 205, size: 320, elements: !584)
!584 = !{!585, !586, !587, !588, !589, !590, !591}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !583, file: !45, line: 206, baseType: !43, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !583, file: !45, line: 206, baseType: !29, size: 8, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !583, file: !45, line: 206, baseType: !29, size: 8, offset: 72)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !583, file: !45, line: 206, baseType: !20, size: 16, offset: 80)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !583, file: !45, line: 206, baseType: !29, size: 8, offset: 96)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !583, file: !45, line: 206, baseType: !474, size: 128, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !583, file: !45, line: 206, baseType: !43, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !44, file: !45, line: 382, baseType: !593, size: 384)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !45, line: 233, size: 384, elements: !594)
!594 = !{!595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !593, file: !45, line: 234, baseType: !43, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !593, file: !45, line: 234, baseType: !29, size: 8, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !593, file: !45, line: 234, baseType: !29, size: 8, offset: 72)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !593, file: !45, line: 234, baseType: !20, size: 16, offset: 80)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !593, file: !45, line: 234, baseType: !29, size: 8, offset: 96)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !593, file: !45, line: 234, baseType: !29, size: 8, offset: 104)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !593, file: !45, line: 234, baseType: !29, size: 8, offset: 112)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !593, file: !45, line: 234, baseType: !29, size: 8, offset: 120)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !593, file: !45, line: 234, baseType: !39, size: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !593, file: !45, line: 234, baseType: !27, size: 32, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !593, file: !45, line: 234, baseType: !27, size: 32, offset: 224)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !593, file: !45, line: 234, baseType: !27, size: 32, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !593, file: !45, line: 234, baseType: !29, size: 8, offset: 288)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !593, file: !45, line: 234, baseType: !29, size: 8, offset: 296)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !593, file: !45, line: 234, baseType: !43, size: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !44, file: !45, line: 383, baseType: !611, size: 576)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !45, line: 237, size: 576, elements: !612)
!612 = !{!613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !611, file: !45, line: 238, baseType: !43, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !611, file: !45, line: 238, baseType: !29, size: 8, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !611, file: !45, line: 238, baseType: !29, size: 8, offset: 72)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !611, file: !45, line: 238, baseType: !20, size: 16, offset: 80)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !611, file: !45, line: 238, baseType: !29, size: 8, offset: 96)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !611, file: !45, line: 238, baseType: !29, size: 8, offset: 104)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !611, file: !45, line: 238, baseType: !29, size: 8, offset: 112)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !611, file: !45, line: 238, baseType: !29, size: 8, offset: 120)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !611, file: !45, line: 238, baseType: !39, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !611, file: !45, line: 238, baseType: !27, size: 32, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !611, file: !45, line: 238, baseType: !27, size: 32, offset: 224)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !611, file: !45, line: 238, baseType: !27, size: 32, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !611, file: !45, line: 238, baseType: !29, size: 8, offset: 288)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !611, file: !45, line: 238, baseType: !29, size: 8, offset: 296)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !611, file: !45, line: 238, baseType: !20, size: 16, offset: 304)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !611, file: !45, line: 239, baseType: !43, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !611, file: !45, line: 240, baseType: !87, size: 64, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !611, file: !45, line: 241, baseType: !20, size: 16, offset: 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !611, file: !45, line: 242, baseType: !87, size: 64, offset: 512)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !44, file: !45, line: 384, baseType: !633, size: 384)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !45, line: 262, size: 384, elements: !634)
!634 = !{!635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !633, file: !45, line: 263, baseType: !43, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !633, file: !45, line: 263, baseType: !29, size: 8, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !633, file: !45, line: 263, baseType: !29, size: 8, offset: 72)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !633, file: !45, line: 263, baseType: !20, size: 16, offset: 80)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !45, line: 263, baseType: !29, size: 8, offset: 96)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !633, file: !45, line: 263, baseType: !29, size: 8, offset: 104)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !633, file: !45, line: 263, baseType: !29, size: 8, offset: 112)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !633, file: !45, line: 263, baseType: !29, size: 8, offset: 120)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !633, file: !45, line: 263, baseType: !39, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !633, file: !45, line: 263, baseType: !27, size: 32, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !633, file: !45, line: 263, baseType: !27, size: 32, offset: 224)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !633, file: !45, line: 263, baseType: !27, size: 32, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !633, file: !45, line: 263, baseType: !29, size: 8, offset: 288)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !633, file: !45, line: 263, baseType: !29, size: 8, offset: 296)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !633, file: !45, line: 263, baseType: !29, size: 8, offset: 304)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !633, file: !45, line: 264, baseType: !43, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !44, file: !45, line: 385, baseType: !652, size: 448)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !45, line: 245, size: 448, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !652, file: !45, line: 246, baseType: !43, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !652, file: !45, line: 246, baseType: !29, size: 8, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !652, file: !45, line: 246, baseType: !29, size: 8, offset: 72)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !652, file: !45, line: 246, baseType: !20, size: 16, offset: 80)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !652, file: !45, line: 246, baseType: !29, size: 8, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !652, file: !45, line: 246, baseType: !29, size: 8, offset: 104)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !652, file: !45, line: 246, baseType: !29, size: 8, offset: 112)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !652, file: !45, line: 246, baseType: !29, size: 8, offset: 120)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !652, file: !45, line: 246, baseType: !39, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !652, file: !45, line: 246, baseType: !27, size: 32, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !652, file: !45, line: 246, baseType: !27, size: 32, offset: 224)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !652, file: !45, line: 246, baseType: !27, size: 32, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !652, file: !45, line: 246, baseType: !29, size: 8, offset: 288)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !652, file: !45, line: 246, baseType: !29, size: 8, offset: 296)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !652, file: !45, line: 246, baseType: !43, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !652, file: !45, line: 247, baseType: !43, size: 64, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !44, file: !45, line: 386, baseType: !671, size: 448)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !45, line: 250, size: 448, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !671, file: !45, line: 251, baseType: !43, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !671, file: !45, line: 251, baseType: !29, size: 8, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !45, line: 251, baseType: !29, size: 8, offset: 72)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !671, file: !45, line: 251, baseType: !20, size: 16, offset: 80)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !45, line: 251, baseType: !29, size: 8, offset: 96)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !671, file: !45, line: 251, baseType: !29, size: 8, offset: 104)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !671, file: !45, line: 251, baseType: !29, size: 8, offset: 112)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !671, file: !45, line: 251, baseType: !29, size: 8, offset: 120)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !671, file: !45, line: 251, baseType: !39, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !671, file: !45, line: 251, baseType: !27, size: 32, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !671, file: !45, line: 251, baseType: !27, size: 32, offset: 224)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !671, file: !45, line: 251, baseType: !27, size: 32, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !671, file: !45, line: 251, baseType: !29, size: 8, offset: 288)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !671, file: !45, line: 251, baseType: !29, size: 8, offset: 296)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !671, file: !45, line: 256, baseType: !43, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !671, file: !45, line: 257, baseType: !43, size: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !44, file: !45, line: 387, baseType: !690, size: 512)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !45, line: 273, size: 512, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !690, file: !45, line: 274, baseType: !43, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !690, file: !45, line: 274, baseType: !29, size: 8, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !690, file: !45, line: 274, baseType: !29, size: 8, offset: 72)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !690, file: !45, line: 274, baseType: !20, size: 16, offset: 80)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !45, line: 274, baseType: !29, size: 8, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !690, file: !45, line: 274, baseType: !39, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !690, file: !45, line: 275, baseType: !27, size: 32, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !690, file: !45, line: 276, baseType: !367, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !690, file: !45, line: 277, baseType: !115, size: 64, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !690, file: !45, line: 278, baseType: !474, size: 128, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !44, file: !45, line: 388, baseType: !703, size: 512)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !45, line: 281, size: 512, elements: !704)
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712, !718, !719, !720, !726, !727}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !703, file: !45, line: 282, baseType: !43, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !703, file: !45, line: 282, baseType: !29, size: 8, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !703, file: !45, line: 282, baseType: !29, size: 8, offset: 72)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !703, file: !45, line: 282, baseType: !20, size: 16, offset: 80)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !703, file: !45, line: 282, baseType: !29, size: 8, offset: 96)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !703, file: !45, line: 282, baseType: !29, size: 8, offset: 104)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !703, file: !45, line: 283, baseType: !29, size: 8, offset: 112)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !703, file: !45, line: 284, baseType: !713, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !26, line: 1084, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!25, !27, !463, !27, !717, !115, !115}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !703, file: !45, line: 285, baseType: !39, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !703, file: !45, line: 286, baseType: !115, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !703, file: !45, line: 287, baseType: !721, size: 64, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !26, line: 1102, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!25, !371, !27, !115, !725}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !703, file: !45, line: 288, baseType: !43, size: 64, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !703, file: !45, line: 289, baseType: !43, size: 64, offset: 448)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !44, file: !45, line: 389, baseType: !729, size: 512)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !45, line: 307, size: 512, elements: !730)
!730 = !{!731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !729, file: !45, line: 308, baseType: !43, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !729, file: !45, line: 308, baseType: !29, size: 8, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !729, file: !45, line: 308, baseType: !29, size: 8, offset: 72)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !729, file: !45, line: 308, baseType: !20, size: 16, offset: 80)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !729, file: !45, line: 308, baseType: !29, size: 8, offset: 96)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !729, file: !45, line: 308, baseType: !29, size: 8, offset: 104)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !729, file: !45, line: 309, baseType: !29, size: 8, offset: 112)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !729, file: !45, line: 310, baseType: !29, size: 8, offset: 120)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !729, file: !45, line: 311, baseType: !115, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !729, file: !45, line: 312, baseType: !39, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !729, file: !45, line: 313, baseType: !102, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !729, file: !45, line: 314, baseType: !87, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !729, file: !45, line: 315, baseType: !87, size: 64, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !729, file: !45, line: 316, baseType: !27, size: 32, offset: 448)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !44, file: !45, line: 390, baseType: !746, size: 448)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !45, line: 340, size: 448, elements: !747)
!747 = !{!748, !749, !750, !751, !752, !753, !754, !755, !756, !757}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !746, file: !45, line: 341, baseType: !43, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !746, file: !45, line: 341, baseType: !29, size: 8, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !746, file: !45, line: 341, baseType: !29, size: 8, offset: 72)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !746, file: !45, line: 341, baseType: !20, size: 16, offset: 80)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !746, file: !45, line: 341, baseType: !29, size: 8, offset: 96)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !746, file: !45, line: 341, baseType: !39, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !746, file: !45, line: 342, baseType: !39, size: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !746, file: !45, line: 343, baseType: !115, size: 64, offset: 256)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !746, file: !45, line: 344, baseType: !87, size: 64, offset: 320)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !746, file: !45, line: 345, baseType: !27, size: 32, offset: 384)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !44, file: !45, line: 391, baseType: !759, size: 256)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !45, line: 350, size: 256, elements: !760)
!760 = !{!761, !762, !763, !764, !765, !766, !771}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !759, file: !45, line: 351, baseType: !43, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !759, file: !45, line: 351, baseType: !29, size: 8, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !759, file: !45, line: 351, baseType: !29, size: 8, offset: 72)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !759, file: !45, line: 351, baseType: !20, size: 16, offset: 80)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !759, file: !45, line: 351, baseType: !29, size: 8, offset: 96)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !759, file: !45, line: 351, baseType: !767, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !26, line: 1055, baseType: !768)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !371, !115}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !759, file: !45, line: 352, baseType: !115, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !44, file: !45, line: 392, baseType: !773, size: 192)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !45, line: 357, size: 192, elements: !774)
!774 = !{!775, !776, !777, !778, !779, !780}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !773, file: !45, line: 358, baseType: !43, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !773, file: !45, line: 358, baseType: !29, size: 8, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !773, file: !45, line: 358, baseType: !29, size: 8, offset: 72)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !773, file: !45, line: 358, baseType: !20, size: 16, offset: 80)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !773, file: !45, line: 358, baseType: !29, size: 8, offset: 96)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !773, file: !45, line: 358, baseType: !43, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !44, file: !45, line: 399, baseType: !40, size: 384)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !40, file: !6, line: 135, baseType: !29, size: 8, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !40, file: !6, line: 136, baseType: !29, size: 8, offset: 72)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !40, file: !6, line: 137, baseType: !20, size: 16, offset: 80)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !40, file: !6, line: 138, baseType: !786, size: 32, offset: 96)
!786 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !787, line: 327, size: 32, elements: !788)
!787 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !786, file: !787, line: 328, baseType: !27, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !786, file: !787, line: 329, baseType: !232, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !40, file: !6, line: 139, baseType: !39, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !40, file: !6, line: 140, baseType: !39, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !40, file: !6, line: 141, baseType: !39, size: 64, offset: 256)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !40, file: !6, line: 142, baseType: !150, size: 16, offset: 320)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !796, line: 148, baseType: !7)
!796 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!797 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!798 = !{!0}
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 64, elements: !349)
!800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!801 = !{!"rsp"}
!802 = !{i32 7, !"Dwarf Version", i32 4}
!803 = !{i32 2, !"Debug Info Version", i32 3}
!804 = !{i32 1, !"wchar_size", i32 2}
!805 = !{i32 1, !"Code Model", i32 2}
!806 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!807 = distinct !DISubprogram(name: "acpi_ds_create_buffer_field", scope: !3, file: !3, line: 120, type: !808, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !810)
!808 = !DISubroutineType(types: !809)
!809 = !{!25, !173, !138}
!810 = !{}
!811 = !DILocalVariable(name: "op", arg: 1, scope: !807, file: !3, line: 120, type: !173)
!812 = !DILocation(line: 120, column: 54, scope: !807)
!813 = !DILocalVariable(name: "walk_state", arg: 2, scope: !807, file: !3, line: 121, type: !138)
!814 = !DILocation(line: 121, column: 32, scope: !807)
!815 = !DILocalVariable(name: "arg", scope: !807, file: !3, line: 123, type: !173)
!816 = !DILocation(line: 123, column: 27, scope: !807)
!817 = !DILocalVariable(name: "node", scope: !807, file: !3, line: 124, type: !39)
!818 = !DILocation(line: 124, column: 30, scope: !807)
!819 = !DILocalVariable(name: "status", scope: !807, file: !3, line: 125, type: !25)
!820 = !DILocation(line: 125, column: 14, scope: !807)
!821 = !DILocalVariable(name: "obj_desc", scope: !807, file: !3, line: 126, type: !43)
!822 = !DILocation(line: 126, column: 29, scope: !807)
!823 = !DILocalVariable(name: "second_desc", scope: !807, file: !3, line: 127, type: !43)
!824 = !DILocation(line: 127, column: 29, scope: !807)
!825 = !DILocalVariable(name: "flags", scope: !807, file: !3, line: 128, type: !27)
!826 = !DILocation(line: 128, column: 6, scope: !807)
!827 = !DILocation(line: 135, column: 6, scope: !828)
!828 = distinct !DILexicalBlock(scope: !807, file: !3, line: 135, column: 6)
!829 = !DILocation(line: 135, column: 10, scope: !828)
!830 = !DILocation(line: 135, column: 17, scope: !828)
!831 = !DILocation(line: 135, column: 28, scope: !828)
!832 = !DILocation(line: 135, column: 6, scope: !807)
!833 = !DILocation(line: 139, column: 25, scope: !834)
!834 = distinct !DILexicalBlock(scope: !828, file: !3, line: 135, column: 52)
!835 = !DILocation(line: 139, column: 9, scope: !834)
!836 = !DILocation(line: 139, column: 7, scope: !834)
!837 = !DILocation(line: 140, column: 2, scope: !834)
!838 = !DILocation(line: 143, column: 25, scope: !839)
!839 = distinct !DILexicalBlock(scope: !828, file: !3, line: 140, column: 9)
!840 = !DILocation(line: 143, column: 9, scope: !839)
!841 = !DILocation(line: 143, column: 7, scope: !839)
!842 = !DILocation(line: 146, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !807, file: !3, line: 146, column: 6)
!844 = !DILocation(line: 146, column: 6, scope: !807)
!845 = !DILocation(line: 147, column: 3, scope: !846)
!846 = distinct !DILexicalBlock(scope: !843, file: !3, line: 146, column: 12)
!847 = !DILocation(line: 150, column: 6, scope: !848)
!848 = distinct !DILexicalBlock(scope: !807, file: !3, line: 150, column: 6)
!849 = !DILocation(line: 150, column: 18, scope: !848)
!850 = !DILocation(line: 150, column: 6, scope: !807)
!851 = !DILocation(line: 151, column: 10, scope: !852)
!852 = distinct !DILexicalBlock(scope: !848, file: !3, line: 150, column: 33)
!853 = !DILocation(line: 151, column: 22, scope: !852)
!854 = !DILocation(line: 151, column: 8, scope: !852)
!855 = !DILocation(line: 152, column: 2, scope: !852)
!856 = !DILocation(line: 155, column: 9, scope: !857)
!857 = distinct !DILexicalBlock(scope: !858, file: !3, line: 155, column: 7)
!858 = distinct !DILexicalBlock(scope: !848, file: !3, line: 152, column: 9)
!859 = !DILocation(line: 155, column: 21, scope: !857)
!860 = !DILocation(line: 155, column: 33, scope: !857)
!861 = !DILocation(line: 155, column: 7, scope: !858)
!862 = !DILocation(line: 156, column: 4, scope: !863)
!863 = distinct !DILexicalBlock(scope: !857, file: !3, line: 155, column: 56)
!864 = !DILocation(line: 157, column: 4, scope: !863)
!865 = !DILocation(line: 162, column: 9, scope: !858)
!866 = !DILocation(line: 169, column: 7, scope: !867)
!867 = distinct !DILexicalBlock(scope: !858, file: !3, line: 169, column: 7)
!868 = !DILocation(line: 169, column: 19, scope: !867)
!869 = !DILocation(line: 169, column: 31, scope: !867)
!870 = !DILocation(line: 170, column: 9, scope: !867)
!871 = !DILocation(line: 170, column: 21, scope: !867)
!872 = !DILocation(line: 170, column: 33, scope: !867)
!873 = !DILocation(line: 169, column: 7, scope: !858)
!874 = !DILocation(line: 171, column: 10, scope: !875)
!875 = distinct !DILexicalBlock(scope: !867, file: !3, line: 170, column: 61)
!876 = !DILocation(line: 172, column: 3, scope: !875)
!877 = !DILocation(line: 176, column: 27, scope: !858)
!878 = !DILocation(line: 176, column: 39, scope: !858)
!879 = !DILocation(line: 177, column: 6, scope: !858)
!880 = !DILocation(line: 177, column: 11, scope: !858)
!881 = !DILocation(line: 177, column: 18, scope: !858)
!882 = !DILocation(line: 177, column: 24, scope: !858)
!883 = !DILocation(line: 178, column: 29, scope: !858)
!884 = !DILocation(line: 179, column: 6, scope: !858)
!885 = !DILocation(line: 176, column: 12, scope: !858)
!886 = !DILocation(line: 176, column: 10, scope: !858)
!887 = !DILocation(line: 180, column: 8, scope: !888)
!888 = distinct !DILexicalBlock(scope: !858, file: !3, line: 180, column: 7)
!889 = !DILocation(line: 180, column: 20, scope: !888)
!890 = !DILocation(line: 180, column: 32, scope: !888)
!891 = !DILocation(line: 181, column: 7, scope: !888)
!892 = !DILocation(line: 181, column: 10, scope: !888)
!893 = !DILocation(line: 181, column: 17, scope: !888)
!894 = !DILocation(line: 180, column: 7, scope: !858)
!895 = !DILocation(line: 182, column: 11, scope: !896)
!896 = distinct !DILexicalBlock(scope: !888, file: !3, line: 181, column: 39)
!897 = !DILocation(line: 183, column: 3, scope: !896)
!898 = !DILocation(line: 183, column: 14, scope: !899)
!899 = distinct !DILexicalBlock(scope: !888, file: !3, line: 183, column: 14)
!900 = !DILocation(line: 183, column: 14, scope: !888)
!901 = !DILocation(line: 184, column: 4, scope: !902)
!902 = distinct !DILexicalBlock(scope: !899, file: !3, line: 183, column: 36)
!903 = !DILocation(line: 186, column: 4, scope: !902)
!904 = !DILocation(line: 195, column: 20, scope: !807)
!905 = !DILocation(line: 195, column: 2, scope: !807)
!906 = !DILocation(line: 195, column: 6, scope: !807)
!907 = !DILocation(line: 195, column: 13, scope: !807)
!908 = !DILocation(line: 195, column: 18, scope: !807)
!909 = !DILocation(line: 202, column: 41, scope: !807)
!910 = !DILocation(line: 202, column: 13, scope: !807)
!911 = !DILocation(line: 202, column: 11, scope: !807)
!912 = !DILocation(line: 203, column: 6, scope: !913)
!913 = distinct !DILexicalBlock(scope: !807, file: !3, line: 203, column: 6)
!914 = !DILocation(line: 203, column: 6, scope: !807)
!915 = !DILocation(line: 204, column: 3, scope: !916)
!916 = distinct !DILexicalBlock(scope: !913, file: !3, line: 203, column: 16)
!917 = !DILocation(line: 214, column: 13, scope: !807)
!918 = !DILocation(line: 214, column: 11, scope: !807)
!919 = !DILocation(line: 215, column: 7, scope: !920)
!920 = distinct !DILexicalBlock(scope: !807, file: !3, line: 215, column: 6)
!921 = !DILocation(line: 215, column: 6, scope: !807)
!922 = !DILocation(line: 216, column: 10, scope: !923)
!923 = distinct !DILexicalBlock(scope: !920, file: !3, line: 215, column: 17)
!924 = !DILocation(line: 217, column: 3, scope: !923)
!925 = !DILocation(line: 224, column: 16, scope: !807)
!926 = !DILocation(line: 224, column: 26, scope: !807)
!927 = !DILocation(line: 224, column: 33, scope: !807)
!928 = !DILocation(line: 224, column: 14, scope: !807)
!929 = !DILocation(line: 225, column: 33, scope: !807)
!930 = !DILocation(line: 225, column: 37, scope: !807)
!931 = !DILocation(line: 225, column: 43, scope: !807)
!932 = !DILocation(line: 225, column: 2, scope: !807)
!933 = !DILocation(line: 225, column: 15, scope: !807)
!934 = !DILocation(line: 225, column: 21, scope: !807)
!935 = !DILocation(line: 225, column: 31, scope: !807)
!936 = !DILocation(line: 226, column: 34, scope: !807)
!937 = !DILocation(line: 226, column: 38, scope: !807)
!938 = !DILocation(line: 226, column: 44, scope: !807)
!939 = !DILocation(line: 226, column: 2, scope: !807)
!940 = !DILocation(line: 226, column: 15, scope: !807)
!941 = !DILocation(line: 226, column: 21, scope: !807)
!942 = !DILocation(line: 226, column: 32, scope: !807)
!943 = !DILocation(line: 227, column: 32, scope: !807)
!944 = !DILocation(line: 227, column: 2, scope: !807)
!945 = !DILocation(line: 227, column: 12, scope: !807)
!946 = !DILocation(line: 227, column: 25, scope: !807)
!947 = !DILocation(line: 227, column: 30, scope: !807)
!948 = !DILocation(line: 231, column: 33, scope: !807)
!949 = !DILocation(line: 231, column: 39, scope: !807)
!950 = !DILocation(line: 231, column: 11, scope: !807)
!951 = !DILocation(line: 231, column: 9, scope: !807)
!952 = !DILocation(line: 232, column: 6, scope: !953)
!953 = distinct !DILexicalBlock(scope: !807, file: !3, line: 232, column: 6)
!954 = !DILocation(line: 232, column: 6, scope: !807)
!955 = !DILocation(line: 233, column: 3, scope: !956)
!956 = distinct !DILexicalBlock(scope: !953, file: !3, line: 232, column: 28)
!957 = !DILabel(scope: !807, name: "cleanup", file: !3, line: 236)
!958 = !DILocation(line: 236, column: 1, scope: !807)
!959 = !DILocation(line: 240, column: 27, scope: !807)
!960 = !DILocation(line: 240, column: 2, scope: !807)
!961 = !DILocation(line: 241, column: 2, scope: !807)
!962 = !DILocation(line: 242, column: 1, scope: !807)
!963 = distinct !DISubprogram(name: "acpi_ds_create_field", scope: !3, file: !3, line: 473, type: !964, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !810)
!964 = !DISubroutineType(types: !965)
!965 = !{!25, !173, !39, !138}
!966 = !DILocalVariable(name: "op", arg: 1, scope: !963, file: !3, line: 473, type: !173)
!967 = !DILocation(line: 473, column: 47, scope: !963)
!968 = !DILocalVariable(name: "region_node", arg: 2, scope: !963, file: !3, line: 474, type: !39)
!969 = !DILocation(line: 474, column: 36, scope: !963)
!970 = !DILocalVariable(name: "walk_state", arg: 3, scope: !963, file: !3, line: 475, type: !138)
!971 = !DILocation(line: 475, column: 32, scope: !963)
!972 = !DILocalVariable(name: "status", scope: !963, file: !3, line: 477, type: !25)
!973 = !DILocation(line: 477, column: 14, scope: !963)
!974 = !DILocalVariable(name: "arg", scope: !963, file: !3, line: 478, type: !173)
!975 = !DILocation(line: 478, column: 27, scope: !963)
!976 = !DILocalVariable(name: "info", scope: !963, file: !3, line: 479, type: !977)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_create_field_info", file: !6, line: 229, size: 576, elements: !978)
!978 = !{!979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "region_node", scope: !977, file: !6, line: 230, baseType: !39, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "field_node", scope: !977, file: !6, line: 231, baseType: !39, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "register_node", scope: !977, file: !6, line: 232, baseType: !39, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "data_register_node", scope: !977, file: !6, line: 233, baseType: !39, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "connection_node", scope: !977, file: !6, line: 234, baseType: !39, size: 64, offset: 256)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !977, file: !6, line: 235, baseType: !87, size: 64, offset: 320)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "bank_value", scope: !977, file: !6, line: 236, baseType: !27, size: 32, offset: 384)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "field_bit_position", scope: !977, file: !6, line: 237, baseType: !27, size: 32, offset: 416)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "field_bit_length", scope: !977, file: !6, line: 238, baseType: !27, size: 32, offset: 448)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !977, file: !6, line: 239, baseType: !20, size: 16, offset: 480)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !977, file: !6, line: 240, baseType: !20, size: 16, offset: 496)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !977, file: !6, line: 241, baseType: !29, size: 8, offset: 512)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !977, file: !6, line: 242, baseType: !29, size: 8, offset: 520)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "field_type", scope: !977, file: !6, line: 243, baseType: !29, size: 8, offset: 528)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !977, file: !6, line: 244, baseType: !29, size: 8, offset: 536)
!994 = !DILocation(line: 479, column: 32, scope: !963)
!995 = !DILocation(line: 485, column: 8, scope: !963)
!996 = !DILocation(line: 485, column: 12, scope: !963)
!997 = !DILocation(line: 485, column: 19, scope: !963)
!998 = !DILocation(line: 485, column: 25, scope: !963)
!999 = !DILocation(line: 485, column: 6, scope: !963)
!1000 = !DILocation(line: 487, column: 7, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !963, file: !3, line: 487, column: 6)
!1002 = !DILocation(line: 487, column: 6, scope: !963)
!1003 = !DILocation(line: 489, column: 22, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 487, column: 20)
!1005 = !DILocation(line: 489, column: 34, scope: !1004)
!1006 = !DILocation(line: 490, column: 8, scope: !1004)
!1007 = !DILocation(line: 490, column: 13, scope: !1004)
!1008 = !DILocation(line: 490, column: 20, scope: !1004)
!1009 = !DILocation(line: 490, column: 26, scope: !1004)
!1010 = !DILocation(line: 492, column: 8, scope: !1004)
!1011 = !DILocation(line: 489, column: 7, scope: !1004)
!1012 = !DILocation(line: 488, column: 10, scope: !1004)
!1013 = !DILocation(line: 499, column: 7, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 499, column: 7)
!1015 = !DILocation(line: 499, column: 7, scope: !1004)
!1016 = !DILocation(line: 500, column: 4, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 499, column: 29)
!1018 = !DILocation(line: 502, column: 4, scope: !1017)
!1019 = !DILocation(line: 504, column: 2, scope: !1004)
!1020 = !DILocation(line: 506, column: 2, scope: !963)
!1021 = !DILocation(line: 510, column: 8, scope: !963)
!1022 = !DILocation(line: 510, column: 13, scope: !963)
!1023 = !DILocation(line: 510, column: 20, scope: !963)
!1024 = !DILocation(line: 510, column: 6, scope: !963)
!1025 = !DILocation(line: 511, column: 26, scope: !963)
!1026 = !DILocation(line: 511, column: 31, scope: !963)
!1027 = !DILocation(line: 511, column: 38, scope: !963)
!1028 = !DILocation(line: 511, column: 44, scope: !963)
!1029 = !DILocation(line: 511, column: 21, scope: !963)
!1030 = !DILocation(line: 511, column: 7, scope: !963)
!1031 = !DILocation(line: 511, column: 19, scope: !963)
!1032 = !DILocation(line: 512, column: 7, scope: !963)
!1033 = !DILocation(line: 512, column: 17, scope: !963)
!1034 = !DILocation(line: 516, column: 7, scope: !963)
!1035 = !DILocation(line: 516, column: 18, scope: !963)
!1036 = !DILocation(line: 517, column: 21, scope: !963)
!1037 = !DILocation(line: 517, column: 7, scope: !963)
!1038 = !DILocation(line: 517, column: 19, scope: !963)
!1039 = !DILocation(line: 519, column: 42, scope: !963)
!1040 = !DILocation(line: 519, column: 54, scope: !963)
!1041 = !DILocation(line: 519, column: 59, scope: !963)
!1042 = !DILocation(line: 519, column: 66, scope: !963)
!1043 = !DILocation(line: 519, column: 11, scope: !963)
!1044 = !DILocation(line: 519, column: 9, scope: !963)
!1045 = !DILocation(line: 520, column: 6, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !963, file: !3, line: 520, column: 6)
!1047 = !DILocation(line: 520, column: 6, scope: !963)
!1048 = !DILocation(line: 521, column: 3, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 520, column: 28)
!1050 = !DILocation(line: 524, column: 11, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !963, file: !3, line: 524, column: 6)
!1052 = !DILocation(line: 524, column: 24, scope: !1051)
!1053 = !DILocation(line: 524, column: 32, scope: !1051)
!1054 = !DILocation(line: 524, column: 39, scope: !1051)
!1055 = !DILocation(line: 524, column: 6, scope: !1051)
!1056 = !DILocation(line: 524, column: 48, scope: !1051)
!1057 = !DILocation(line: 524, column: 6, scope: !963)
!1058 = !DILocation(line: 527, column: 7, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 525, column: 36)
!1060 = !DILocation(line: 526, column: 3, scope: !1059)
!1061 = !DILocation(line: 526, column: 16, scope: !1059)
!1062 = !DILocation(line: 526, column: 24, scope: !1059)
!1063 = !DILocation(line: 526, column: 30, scope: !1059)
!1064 = !DILocation(line: 526, column: 50, scope: !1059)
!1065 = !DILocation(line: 529, column: 8, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 529, column: 7)
!1067 = !DILocation(line: 529, column: 21, scope: !1066)
!1068 = !DILocation(line: 529, column: 29, scope: !1066)
!1069 = !DILocation(line: 529, column: 35, scope: !1066)
!1070 = !DILocation(line: 529, column: 7, scope: !1059)
!1071 = !DILocation(line: 530, column: 4, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 529, column: 56)
!1073 = !DILocation(line: 532, column: 2, scope: !1059)
!1074 = !DILocation(line: 534, column: 2, scope: !963)
!1075 = !DILocation(line: 535, column: 1, scope: !963)
!1076 = distinct !DISubprogram(name: "acpi_ds_get_field_names", scope: !3, file: !3, line: 260, type: !1077, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!25, !1079, !138, !173}
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!1080 = !DILocalVariable(name: "info", arg: 1, scope: !1076, file: !3, line: 260, type: !1079)
!1081 = !DILocation(line: 260, column: 56, scope: !1076)
!1082 = !DILocalVariable(name: "walk_state", arg: 2, scope: !1076, file: !3, line: 261, type: !138)
!1083 = !DILocation(line: 261, column: 28, scope: !1076)
!1084 = !DILocalVariable(name: "arg", arg: 3, scope: !1076, file: !3, line: 262, type: !173)
!1085 = !DILocation(line: 262, column: 29, scope: !1076)
!1086 = !DILocalVariable(name: "status", scope: !1076, file: !3, line: 264, type: !25)
!1087 = !DILocation(line: 264, column: 14, scope: !1076)
!1088 = !DILocalVariable(name: "position", scope: !1076, file: !3, line: 265, type: !34)
!1089 = !DILocation(line: 265, column: 6, scope: !1076)
!1090 = !DILocalVariable(name: "child", scope: !1076, file: !3, line: 266, type: !173)
!1091 = !DILocation(line: 266, column: 27, scope: !1076)
!1092 = !DILocation(line: 278, column: 2, scope: !1076)
!1093 = !DILocation(line: 278, column: 8, scope: !1076)
!1094 = !DILocation(line: 278, column: 27, scope: !1076)
!1095 = !DILocation(line: 282, column: 2, scope: !1076)
!1096 = !DILocation(line: 282, column: 9, scope: !1076)
!1097 = !DILocation(line: 290, column: 11, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 282, column: 14)
!1099 = !DILocation(line: 290, column: 16, scope: !1098)
!1100 = !DILocation(line: 290, column: 23, scope: !1098)
!1101 = !DILocation(line: 290, column: 3, scope: !1098)
!1102 = !DILocation(line: 293, column: 20, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 290, column: 35)
!1104 = !DILocation(line: 293, column: 26, scope: !1103)
!1105 = !DILocation(line: 293, column: 15, scope: !1103)
!1106 = !DILocation(line: 294, column: 13, scope: !1103)
!1107 = !DILocation(line: 294, column: 18, scope: !1103)
!1108 = !DILocation(line: 294, column: 25, scope: !1103)
!1109 = !DILocation(line: 294, column: 31, scope: !1103)
!1110 = !DILocation(line: 294, column: 8, scope: !1103)
!1111 = !DILocation(line: 293, column: 45, scope: !1103)
!1112 = !DILocation(line: 293, column: 13, scope: !1103)
!1113 = !DILocation(line: 296, column: 8, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 296, column: 8)
!1115 = !DILocation(line: 296, column: 17, scope: !1114)
!1116 = !DILocation(line: 296, column: 8, scope: !1103)
!1117 = !DILocation(line: 297, column: 5, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 296, column: 36)
!1119 = !DILocation(line: 299, column: 5, scope: !1118)
!1120 = !DILocation(line: 302, column: 37, scope: !1103)
!1121 = !DILocation(line: 302, column: 31, scope: !1103)
!1122 = !DILocation(line: 302, column: 4, scope: !1103)
!1123 = !DILocation(line: 302, column: 10, scope: !1103)
!1124 = !DILocation(line: 302, column: 29, scope: !1103)
!1125 = !DILocation(line: 303, column: 4, scope: !1103)
!1126 = !DILocation(line: 321, column: 10, scope: !1103)
!1127 = !DILocation(line: 322, column: 10, scope: !1103)
!1128 = !DILocation(line: 322, column: 22, scope: !1103)
!1129 = !DILocation(line: 323, column: 21, scope: !1103)
!1130 = !DILocation(line: 323, column: 26, scope: !1103)
!1131 = !DILocation(line: 323, column: 33, scope: !1103)
!1132 = !DILocation(line: 323, column: 39, scope: !1103)
!1133 = !DILocation(line: 323, column: 47, scope: !1103)
!1134 = !DILocation(line: 323, column: 15, scope: !1103)
!1135 = !DILocation(line: 323, column: 10, scope: !1103)
!1136 = !DILocation(line: 323, column: 9, scope: !1103)
!1137 = !DILocation(line: 322, column: 55, scope: !1103)
!1138 = !DILocation(line: 320, column: 24, scope: !1103)
!1139 = !DILocation(line: 320, column: 4, scope: !1103)
!1140 = !DILocation(line: 320, column: 10, scope: !1103)
!1141 = !DILocation(line: 320, column: 22, scope: !1103)
!1142 = !DILocation(line: 328, column: 10, scope: !1103)
!1143 = !DILocation(line: 328, column: 15, scope: !1103)
!1144 = !DILocation(line: 328, column: 22, scope: !1103)
!1145 = !DILocation(line: 328, column: 28, scope: !1103)
!1146 = !DILocation(line: 328, column: 36, scope: !1103)
!1147 = !DILocation(line: 328, column: 42, scope: !1103)
!1148 = !DILocation(line: 327, column: 22, scope: !1103)
!1149 = !DILocation(line: 327, column: 4, scope: !1103)
!1150 = !DILocation(line: 327, column: 10, scope: !1103)
!1151 = !DILocation(line: 327, column: 20, scope: !1103)
!1152 = !DILocation(line: 333, column: 10, scope: !1103)
!1153 = !DILocation(line: 333, column: 15, scope: !1103)
!1154 = !DILocation(line: 333, column: 22, scope: !1103)
!1155 = !DILocation(line: 333, column: 28, scope: !1103)
!1156 = !DILocation(line: 333, column: 36, scope: !1103)
!1157 = !DILocation(line: 333, column: 43, scope: !1103)
!1158 = !DILocation(line: 332, column: 26, scope: !1103)
!1159 = !DILocation(line: 332, column: 4, scope: !1103)
!1160 = !DILocation(line: 332, column: 10, scope: !1103)
!1161 = !DILocation(line: 332, column: 24, scope: !1103)
!1162 = !DILocation(line: 334, column: 4, scope: !1103)
!1163 = !DILocation(line: 341, column: 4, scope: !1103)
!1164 = !DILocation(line: 341, column: 10, scope: !1103)
!1165 = !DILocation(line: 341, column: 26, scope: !1103)
!1166 = !DILocation(line: 342, column: 4, scope: !1103)
!1167 = !DILocation(line: 342, column: 10, scope: !1103)
!1168 = !DILocation(line: 342, column: 26, scope: !1103)
!1169 = !DILocation(line: 343, column: 4, scope: !1103)
!1170 = !DILocation(line: 343, column: 10, scope: !1103)
!1171 = !DILocation(line: 343, column: 27, scope: !1103)
!1172 = !DILocation(line: 349, column: 12, scope: !1103)
!1173 = !DILocation(line: 349, column: 17, scope: !1103)
!1174 = !DILocation(line: 349, column: 24, scope: !1103)
!1175 = !DILocation(line: 349, column: 30, scope: !1103)
!1176 = !DILocation(line: 349, column: 10, scope: !1103)
!1177 = !DILocation(line: 350, column: 8, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 350, column: 8)
!1179 = !DILocation(line: 350, column: 15, scope: !1178)
!1180 = !DILocation(line: 350, column: 22, scope: !1178)
!1181 = !DILocation(line: 350, column: 33, scope: !1178)
!1182 = !DILocation(line: 350, column: 8, scope: !1103)
!1183 = !DILocation(line: 351, column: 29, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 350, column: 57)
!1185 = !DILocation(line: 351, column: 36, scope: !1184)
!1186 = !DILocation(line: 351, column: 42, scope: !1184)
!1187 = !DILocation(line: 351, column: 5, scope: !1184)
!1188 = !DILocation(line: 351, column: 11, scope: !1184)
!1189 = !DILocation(line: 351, column: 27, scope: !1184)
!1190 = !DILocation(line: 353, column: 14, scope: !1184)
!1191 = !DILocation(line: 353, column: 21, scope: !1184)
!1192 = !DILocation(line: 353, column: 27, scope: !1184)
!1193 = !DILocation(line: 353, column: 33, scope: !1184)
!1194 = !DILocation(line: 353, column: 9, scope: !1184)
!1195 = !DILocation(line: 352, column: 5, scope: !1184)
!1196 = !DILocation(line: 352, column: 11, scope: !1184)
!1197 = !DILocation(line: 352, column: 27, scope: !1184)
!1198 = !DILocation(line: 354, column: 4, scope: !1184)
!1199 = !DILocation(line: 357, column: 29, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 354, column: 11)
!1201 = !DILocation(line: 357, column: 41, scope: !1200)
!1202 = !DILocation(line: 358, column: 8, scope: !1200)
!1203 = !DILocation(line: 358, column: 15, scope: !1200)
!1204 = !DILocation(line: 358, column: 22, scope: !1200)
!1205 = !DILocation(line: 359, column: 8, scope: !1200)
!1206 = !DILocation(line: 362, column: 8, scope: !1200)
!1207 = !DILocation(line: 363, column: 9, scope: !1200)
!1208 = !DILocation(line: 363, column: 15, scope: !1200)
!1209 = !DILocation(line: 357, column: 14, scope: !1200)
!1210 = !DILocation(line: 357, column: 12, scope: !1200)
!1211 = !DILocation(line: 364, column: 9, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 364, column: 9)
!1213 = !DILocation(line: 364, column: 9, scope: !1200)
!1214 = !DILocation(line: 365, column: 6, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 364, column: 31)
!1216 = !DILocation(line: 370, column: 6, scope: !1215)
!1217 = !DILocation(line: 373, column: 4, scope: !1103)
!1218 = !DILocation(line: 379, column: 28, scope: !1103)
!1219 = !DILocation(line: 379, column: 40, scope: !1103)
!1220 = !DILocation(line: 380, column: 16, scope: !1103)
!1221 = !DILocation(line: 380, column: 21, scope: !1103)
!1222 = !DILocation(line: 380, column: 27, scope: !1103)
!1223 = !DILocation(line: 380, column: 7, scope: !1103)
!1224 = !DILocation(line: 381, column: 7, scope: !1103)
!1225 = !DILocation(line: 381, column: 13, scope: !1103)
!1226 = !DILocation(line: 384, column: 7, scope: !1103)
!1227 = !DILocation(line: 384, column: 20, scope: !1103)
!1228 = !DILocation(line: 384, column: 26, scope: !1103)
!1229 = !DILocation(line: 379, column: 13, scope: !1103)
!1230 = !DILocation(line: 379, column: 11, scope: !1103)
!1231 = !DILocation(line: 385, column: 8, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 385, column: 8)
!1233 = !DILocation(line: 385, column: 8, scope: !1103)
!1234 = !DILocation(line: 386, column: 5, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 385, column: 30)
!1236 = !DILocation(line: 389, column: 5, scope: !1235)
!1237 = !DILocation(line: 391, column: 24, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 390, column: 11)
!1239 = !DILocation(line: 391, column: 30, scope: !1238)
!1240 = !DILocation(line: 391, column: 5, scope: !1238)
!1241 = !DILocation(line: 391, column: 10, scope: !1238)
!1242 = !DILocation(line: 391, column: 17, scope: !1238)
!1243 = !DILocation(line: 391, column: 22, scope: !1238)
!1244 = !DILocation(line: 392, column: 30, scope: !1238)
!1245 = !DILocation(line: 392, column: 35, scope: !1238)
!1246 = !DILocation(line: 392, column: 42, scope: !1238)
!1247 = !DILocation(line: 392, column: 48, scope: !1238)
!1248 = !DILocation(line: 392, column: 5, scope: !1238)
!1249 = !DILocation(line: 392, column: 11, scope: !1238)
!1250 = !DILocation(line: 392, column: 28, scope: !1238)
!1251 = !DILocation(line: 401, column: 10, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 400, column: 9)
!1253 = !DILocation(line: 401, column: 16, scope: !1252)
!1254 = !DILocation(line: 400, column: 10, scope: !1252)
!1255 = !DILocation(line: 400, column: 9, scope: !1238)
!1256 = !DILocation(line: 402, column: 40, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 401, column: 29)
!1258 = !DILocation(line: 402, column: 15, scope: !1257)
!1259 = !DILocation(line: 402, column: 13, scope: !1257)
!1260 = !DILocation(line: 403, column: 10, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 403, column: 10)
!1262 = !DILocation(line: 403, column: 10, scope: !1257)
!1263 = !DILocation(line: 404, column: 7, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 403, column: 32)
!1265 = !DILocation(line: 423, column: 5, scope: !1257)
!1266 = !DILocation(line: 428, column: 20, scope: !1103)
!1267 = !DILocation(line: 428, column: 26, scope: !1103)
!1268 = !DILocation(line: 428, column: 15, scope: !1103)
!1269 = !DILocation(line: 429, column: 13, scope: !1103)
!1270 = !DILocation(line: 429, column: 18, scope: !1103)
!1271 = !DILocation(line: 429, column: 25, scope: !1103)
!1272 = !DILocation(line: 429, column: 31, scope: !1103)
!1273 = !DILocation(line: 429, column: 8, scope: !1103)
!1274 = !DILocation(line: 428, column: 45, scope: !1103)
!1275 = !DILocation(line: 428, column: 13, scope: !1103)
!1276 = !DILocation(line: 431, column: 8, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 431, column: 8)
!1278 = !DILocation(line: 431, column: 17, scope: !1277)
!1279 = !DILocation(line: 431, column: 8, scope: !1103)
!1280 = !DILocation(line: 432, column: 5, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 431, column: 36)
!1282 = !DILocation(line: 437, column: 5, scope: !1281)
!1283 = !DILocation(line: 440, column: 32, scope: !1103)
!1284 = !DILocation(line: 440, column: 38, scope: !1103)
!1285 = !DILocation(line: 440, column: 4, scope: !1103)
!1286 = !DILocation(line: 440, column: 10, scope: !1103)
!1287 = !DILocation(line: 440, column: 29, scope: !1103)
!1288 = !DILocation(line: 441, column: 4, scope: !1103)
!1289 = !DILocation(line: 441, column: 10, scope: !1103)
!1290 = !DILocation(line: 441, column: 26, scope: !1103)
!1291 = !DILocation(line: 442, column: 4, scope: !1103)
!1292 = !DILocation(line: 446, column: 4, scope: !1103)
!1293 = !DILocation(line: 449, column: 4, scope: !1103)
!1294 = !DILocation(line: 452, column: 9, scope: !1098)
!1295 = !DILocation(line: 452, column: 14, scope: !1098)
!1296 = !DILocation(line: 452, column: 21, scope: !1098)
!1297 = !DILocation(line: 452, column: 7, scope: !1098)
!1298 = distinct !{!1298, !1095, !1299}
!1299 = !DILocation(line: 453, column: 2, scope: !1076)
!1300 = !DILocation(line: 455, column: 2, scope: !1076)
!1301 = !DILocation(line: 456, column: 1, scope: !1076)
!1302 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1303, file: !1303, line: 55, type: !1304, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1303 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!115, !33}
!1306 = !DILocalVariable(name: "flags", arg: 1, scope: !1307, file: !1308, line: 162, type: !797)
!1307 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1308, file: !1308, line: 162, type: !1309, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1308 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!1311, !797}
!1311 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1312 = !DILocation(line: 162, column: 67, scope: !1307, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 57, column: 23, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !1303, line: 57, column: 23)
!1315 = distinct !DILexicalBlock(scope: !1302, file: !1303, line: 57, column: 23)
!1316 = !DILocalVariable(name: "size", arg: 1, scope: !1302, file: !1303, line: 55, type: !33)
!1317 = !DILocation(line: 55, column: 55, scope: !1302)
!1318 = !DILocation(line: 57, column: 17, scope: !1302)
!1319 = !DILocalVariable(name: "_flags", scope: !1315, file: !1303, line: 57, type: !797)
!1320 = !DILocation(line: 57, column: 23, scope: !1315)
!1321 = !DILocalVariable(name: "__dummy", scope: !1322, file: !1303, line: 57, type: !797)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !1303, line: 57, column: 23)
!1323 = distinct !DILexicalBlock(scope: !1315, file: !1303, line: 57, column: 23)
!1324 = !DILocation(line: 57, column: 23, scope: !1322)
!1325 = !DILocalVariable(name: "__dummy2", scope: !1322, file: !1303, line: 57, type: !797)
!1326 = !DILocation(line: 57, column: 23, scope: !1323)
!1327 = !DILocalVariable(name: "__dummy", scope: !1328, file: !1303, line: 57, type: !797)
!1328 = distinct !DILexicalBlock(scope: !1314, file: !1303, line: 57, column: 23)
!1329 = !DILocation(line: 57, column: 23, scope: !1328)
!1330 = !DILocalVariable(name: "__dummy2", scope: !1328, file: !1303, line: 57, type: !797)
!1331 = !DILocation(line: 57, column: 23, scope: !1314)
!1332 = !DILocation(line: 164, column: 11, scope: !1307, inlinedAt: !1313)
!1333 = !DILocation(line: 164, column: 17, scope: !1307, inlinedAt: !1313)
!1334 = !DILocation(line: 164, column: 9, scope: !1307, inlinedAt: !1313)
!1335 = !DILocation(line: 57, column: 23, scope: !1302)
!1336 = !DILocation(line: 57, column: 9, scope: !1302)
!1337 = !DILocation(line: 57, column: 2, scope: !1302)
!1338 = distinct !DISubprogram(name: "acpi_ds_init_field_objects", scope: !3, file: !3, line: 553, type: !808, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1339 = !DILocalVariable(name: "op", arg: 1, scope: !1338, file: !3, line: 553, type: !173)
!1340 = !DILocation(line: 553, column: 53, scope: !1338)
!1341 = !DILocalVariable(name: "walk_state", arg: 2, scope: !1338, file: !3, line: 554, type: !138)
!1342 = !DILocation(line: 554, column: 31, scope: !1338)
!1343 = !DILocalVariable(name: "status", scope: !1338, file: !3, line: 556, type: !25)
!1344 = !DILocation(line: 556, column: 14, scope: !1338)
!1345 = !DILocalVariable(name: "arg", scope: !1338, file: !3, line: 557, type: !173)
!1346 = !DILocation(line: 557, column: 27, scope: !1338)
!1347 = !DILocalVariable(name: "node", scope: !1338, file: !3, line: 558, type: !39)
!1348 = !DILocation(line: 558, column: 30, scope: !1338)
!1349 = !DILocalVariable(name: "type", scope: !1338, file: !3, line: 559, type: !29)
!1350 = !DILocation(line: 559, column: 5, scope: !1338)
!1351 = !DILocalVariable(name: "flags", scope: !1338, file: !3, line: 560, type: !27)
!1352 = !DILocation(line: 560, column: 6, scope: !1338)
!1353 = !DILocation(line: 566, column: 8, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 566, column: 6)
!1355 = !DILocation(line: 566, column: 20, scope: !1354)
!1356 = !DILocation(line: 566, column: 32, scope: !1354)
!1357 = !DILocation(line: 566, column: 6, scope: !1338)
!1358 = !DILocation(line: 567, column: 7, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 567, column: 7)
!1360 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 566, column: 55)
!1361 = !DILocation(line: 567, column: 19, scope: !1359)
!1362 = !DILocation(line: 567, column: 31, scope: !1359)
!1363 = !DILocation(line: 567, column: 7, scope: !1360)
!1364 = !DILocation(line: 571, column: 4, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 567, column: 57)
!1366 = !DILocation(line: 574, column: 3, scope: !1360)
!1367 = !DILocation(line: 575, column: 3, scope: !1360)
!1368 = !DILocation(line: 582, column: 10, scope: !1338)
!1369 = !DILocation(line: 582, column: 22, scope: !1338)
!1370 = !DILocation(line: 582, column: 2, scope: !1338)
!1371 = !DILocation(line: 585, column: 25, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 582, column: 30)
!1373 = !DILocation(line: 585, column: 9, scope: !1372)
!1374 = !DILocation(line: 585, column: 7, scope: !1372)
!1375 = !DILocation(line: 586, column: 8, scope: !1372)
!1376 = !DILocation(line: 587, column: 3, scope: !1372)
!1377 = !DILocation(line: 591, column: 25, scope: !1372)
!1378 = !DILocation(line: 591, column: 9, scope: !1372)
!1379 = !DILocation(line: 591, column: 7, scope: !1372)
!1380 = !DILocation(line: 592, column: 8, scope: !1372)
!1381 = !DILocation(line: 593, column: 3, scope: !1372)
!1382 = !DILocation(line: 597, column: 25, scope: !1372)
!1383 = !DILocation(line: 597, column: 9, scope: !1372)
!1384 = !DILocation(line: 597, column: 7, scope: !1372)
!1385 = !DILocation(line: 598, column: 8, scope: !1372)
!1386 = !DILocation(line: 599, column: 3, scope: !1372)
!1387 = !DILocation(line: 603, column: 3, scope: !1372)
!1388 = !DILocation(line: 608, column: 8, scope: !1338)
!1389 = !DILocation(line: 615, column: 6, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 615, column: 6)
!1391 = !DILocation(line: 615, column: 18, scope: !1390)
!1392 = !DILocation(line: 615, column: 30, scope: !1390)
!1393 = !DILocation(line: 616, column: 8, scope: !1390)
!1394 = !DILocation(line: 616, column: 20, scope: !1390)
!1395 = !DILocation(line: 616, column: 32, scope: !1390)
!1396 = !DILocation(line: 615, column: 6, scope: !1338)
!1397 = !DILocation(line: 617, column: 9, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 616, column: 60)
!1399 = !DILocation(line: 618, column: 2, scope: !1398)
!1400 = !DILocation(line: 626, column: 2, scope: !1338)
!1401 = !DILocation(line: 626, column: 9, scope: !1338)
!1402 = !DILocation(line: 631, column: 7, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 631, column: 7)
!1404 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 626, column: 14)
!1405 = !DILocation(line: 631, column: 12, scope: !1403)
!1406 = !DILocation(line: 631, column: 19, scope: !1403)
!1407 = !DILocation(line: 631, column: 30, scope: !1403)
!1408 = !DILocation(line: 631, column: 7, scope: !1404)
!1409 = !DILocation(line: 632, column: 28, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 631, column: 56)
!1411 = !DILocation(line: 632, column: 40, scope: !1410)
!1412 = !DILocation(line: 633, column: 16, scope: !1410)
!1413 = !DILocation(line: 633, column: 21, scope: !1410)
!1414 = !DILocation(line: 633, column: 27, scope: !1410)
!1415 = !DILocation(line: 633, column: 7, scope: !1410)
!1416 = !DILocation(line: 633, column: 33, scope: !1410)
!1417 = !DILocation(line: 634, column: 30, scope: !1410)
!1418 = !DILocation(line: 635, column: 7, scope: !1410)
!1419 = !DILocation(line: 632, column: 13, scope: !1410)
!1420 = !DILocation(line: 632, column: 11, scope: !1410)
!1421 = !DILocation(line: 636, column: 8, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 636, column: 8)
!1423 = !DILocation(line: 636, column: 8, scope: !1410)
!1424 = !DILocation(line: 637, column: 5, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 636, column: 30)
!1426 = !DILocation(line: 640, column: 9, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 640, column: 9)
!1428 = !DILocation(line: 640, column: 16, scope: !1427)
!1429 = !DILocation(line: 640, column: 9, scope: !1425)
!1430 = !DILocation(line: 641, column: 6, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 640, column: 38)
!1432 = !DILocation(line: 645, column: 4, scope: !1425)
!1433 = !DILocation(line: 647, column: 23, scope: !1410)
!1434 = !DILocation(line: 647, column: 4, scope: !1410)
!1435 = !DILocation(line: 647, column: 9, scope: !1410)
!1436 = !DILocation(line: 647, column: 16, scope: !1410)
!1437 = !DILocation(line: 647, column: 21, scope: !1410)
!1438 = !DILocation(line: 648, column: 3, scope: !1410)
!1439 = !DILocation(line: 652, column: 9, scope: !1404)
!1440 = !DILocation(line: 652, column: 14, scope: !1404)
!1441 = !DILocation(line: 652, column: 21, scope: !1404)
!1442 = !DILocation(line: 652, column: 7, scope: !1404)
!1443 = distinct !{!1443, !1400, !1444}
!1444 = !DILocation(line: 653, column: 2, scope: !1338)
!1445 = !DILocation(line: 655, column: 2, scope: !1338)
!1446 = !DILocation(line: 656, column: 1, scope: !1338)
!1447 = distinct !DISubprogram(name: "acpi_ds_create_bank_field", scope: !3, file: !3, line: 673, type: !964, scopeLine: 676, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1448 = !DILocalVariable(name: "op", arg: 1, scope: !1447, file: !3, line: 673, type: !173)
!1449 = !DILocation(line: 673, column: 52, scope: !1447)
!1450 = !DILocalVariable(name: "region_node", arg: 2, scope: !1447, file: !3, line: 674, type: !39)
!1451 = !DILocation(line: 674, column: 34, scope: !1447)
!1452 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1447, file: !3, line: 675, type: !138)
!1453 = !DILocation(line: 675, column: 30, scope: !1447)
!1454 = !DILocalVariable(name: "status", scope: !1447, file: !3, line: 677, type: !25)
!1455 = !DILocation(line: 677, column: 14, scope: !1447)
!1456 = !DILocalVariable(name: "arg", scope: !1447, file: !3, line: 678, type: !173)
!1457 = !DILocation(line: 678, column: 27, scope: !1447)
!1458 = !DILocalVariable(name: "info", scope: !1447, file: !3, line: 679, type: !977)
!1459 = !DILocation(line: 679, column: 32, scope: !1447)
!1460 = !DILocation(line: 685, column: 8, scope: !1447)
!1461 = !DILocation(line: 685, column: 12, scope: !1447)
!1462 = !DILocation(line: 685, column: 19, scope: !1447)
!1463 = !DILocation(line: 685, column: 25, scope: !1447)
!1464 = !DILocation(line: 685, column: 6, scope: !1447)
!1465 = !DILocation(line: 686, column: 7, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 686, column: 6)
!1467 = !DILocation(line: 686, column: 6, scope: !1447)
!1468 = !DILocation(line: 688, column: 22, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 686, column: 20)
!1470 = !DILocation(line: 688, column: 34, scope: !1469)
!1471 = !DILocation(line: 689, column: 8, scope: !1469)
!1472 = !DILocation(line: 689, column: 13, scope: !1469)
!1473 = !DILocation(line: 689, column: 20, scope: !1469)
!1474 = !DILocation(line: 689, column: 26, scope: !1469)
!1475 = !DILocation(line: 691, column: 8, scope: !1469)
!1476 = !DILocation(line: 688, column: 7, scope: !1469)
!1477 = !DILocation(line: 687, column: 10, scope: !1469)
!1478 = !DILocation(line: 698, column: 7, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 698, column: 7)
!1480 = !DILocation(line: 698, column: 7, scope: !1469)
!1481 = !DILocation(line: 699, column: 4, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 698, column: 29)
!1483 = !DILocation(line: 701, column: 4, scope: !1482)
!1484 = !DILocation(line: 703, column: 2, scope: !1469)
!1485 = !DILocation(line: 707, column: 8, scope: !1447)
!1486 = !DILocation(line: 707, column: 13, scope: !1447)
!1487 = !DILocation(line: 707, column: 20, scope: !1447)
!1488 = !DILocation(line: 707, column: 6, scope: !1447)
!1489 = !DILocation(line: 709, column: 21, scope: !1447)
!1490 = !DILocation(line: 709, column: 33, scope: !1447)
!1491 = !DILocation(line: 709, column: 45, scope: !1447)
!1492 = !DILocation(line: 709, column: 50, scope: !1447)
!1493 = !DILocation(line: 709, column: 57, scope: !1447)
!1494 = !DILocation(line: 709, column: 63, scope: !1447)
!1495 = !DILocation(line: 711, column: 30, scope: !1447)
!1496 = !DILocation(line: 712, column: 13, scope: !1447)
!1497 = !DILocation(line: 709, column: 6, scope: !1447)
!1498 = !DILocation(line: 708, column: 9, scope: !1447)
!1499 = !DILocation(line: 713, column: 6, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 713, column: 6)
!1501 = !DILocation(line: 713, column: 6, scope: !1447)
!1502 = !DILocation(line: 714, column: 3, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 713, column: 28)
!1504 = !DILocation(line: 716, column: 3, scope: !1503)
!1505 = !DILocation(line: 724, column: 8, scope: !1447)
!1506 = !DILocation(line: 724, column: 13, scope: !1447)
!1507 = !DILocation(line: 724, column: 20, scope: !1447)
!1508 = !DILocation(line: 724, column: 6, scope: !1447)
!1509 = !DILocation(line: 728, column: 8, scope: !1447)
!1510 = !DILocation(line: 728, column: 13, scope: !1447)
!1511 = !DILocation(line: 728, column: 20, scope: !1447)
!1512 = !DILocation(line: 728, column: 6, scope: !1447)
!1513 = !DILocation(line: 729, column: 26, scope: !1447)
!1514 = !DILocation(line: 729, column: 31, scope: !1447)
!1515 = !DILocation(line: 729, column: 38, scope: !1447)
!1516 = !DILocation(line: 729, column: 44, scope: !1447)
!1517 = !DILocation(line: 729, column: 21, scope: !1447)
!1518 = !DILocation(line: 729, column: 7, scope: !1447)
!1519 = !DILocation(line: 729, column: 19, scope: !1447)
!1520 = !DILocation(line: 733, column: 7, scope: !1447)
!1521 = !DILocation(line: 733, column: 18, scope: !1447)
!1522 = !DILocation(line: 734, column: 21, scope: !1447)
!1523 = !DILocation(line: 734, column: 7, scope: !1447)
!1524 = !DILocation(line: 734, column: 19, scope: !1447)
!1525 = !DILocation(line: 745, column: 58, scope: !1447)
!1526 = !DILocation(line: 745, column: 28, scope: !1447)
!1527 = !DILocation(line: 745, column: 7, scope: !1447)
!1528 = !DILocation(line: 745, column: 26, scope: !1447)
!1529 = !DILocation(line: 747, column: 42, scope: !1447)
!1530 = !DILocation(line: 747, column: 54, scope: !1447)
!1531 = !DILocation(line: 747, column: 59, scope: !1447)
!1532 = !DILocation(line: 747, column: 66, scope: !1447)
!1533 = !DILocation(line: 747, column: 11, scope: !1447)
!1534 = !DILocation(line: 747, column: 9, scope: !1447)
!1535 = !DILocation(line: 748, column: 2, scope: !1447)
!1536 = !DILocation(line: 749, column: 1, scope: !1447)
!1537 = distinct !DISubprogram(name: "acpi_ds_create_index_field", scope: !3, file: !3, line: 766, type: !964, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1538 = !DILocalVariable(name: "op", arg: 1, scope: !1537, file: !3, line: 766, type: !173)
!1539 = !DILocation(line: 766, column: 53, scope: !1537)
!1540 = !DILocalVariable(name: "region_node", arg: 2, scope: !1537, file: !3, line: 767, type: !39)
!1541 = !DILocation(line: 767, column: 35, scope: !1537)
!1542 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1537, file: !3, line: 768, type: !138)
!1543 = !DILocation(line: 768, column: 31, scope: !1537)
!1544 = !DILocalVariable(name: "status", scope: !1537, file: !3, line: 770, type: !25)
!1545 = !DILocation(line: 770, column: 14, scope: !1537)
!1546 = !DILocalVariable(name: "arg", scope: !1537, file: !3, line: 771, type: !173)
!1547 = !DILocation(line: 771, column: 27, scope: !1537)
!1548 = !DILocalVariable(name: "info", scope: !1537, file: !3, line: 772, type: !977)
!1549 = !DILocation(line: 772, column: 32, scope: !1537)
!1550 = !DILocation(line: 778, column: 8, scope: !1537)
!1551 = !DILocation(line: 778, column: 12, scope: !1537)
!1552 = !DILocation(line: 778, column: 19, scope: !1537)
!1553 = !DILocation(line: 778, column: 25, scope: !1537)
!1554 = !DILocation(line: 778, column: 6, scope: !1537)
!1555 = !DILocation(line: 780, column: 21, scope: !1537)
!1556 = !DILocation(line: 780, column: 33, scope: !1537)
!1557 = !DILocation(line: 780, column: 45, scope: !1537)
!1558 = !DILocation(line: 780, column: 50, scope: !1537)
!1559 = !DILocation(line: 780, column: 57, scope: !1537)
!1560 = !DILocation(line: 780, column: 63, scope: !1537)
!1561 = !DILocation(line: 782, column: 30, scope: !1537)
!1562 = !DILocation(line: 783, column: 13, scope: !1537)
!1563 = !DILocation(line: 780, column: 6, scope: !1537)
!1564 = !DILocation(line: 779, column: 9, scope: !1537)
!1565 = !DILocation(line: 784, column: 6, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 784, column: 6)
!1567 = !DILocation(line: 784, column: 6, scope: !1537)
!1568 = !DILocation(line: 785, column: 3, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 784, column: 28)
!1570 = !DILocation(line: 787, column: 3, scope: !1569)
!1571 = !DILocation(line: 792, column: 8, scope: !1537)
!1572 = !DILocation(line: 792, column: 13, scope: !1537)
!1573 = !DILocation(line: 792, column: 20, scope: !1537)
!1574 = !DILocation(line: 792, column: 6, scope: !1537)
!1575 = !DILocation(line: 794, column: 21, scope: !1537)
!1576 = !DILocation(line: 794, column: 33, scope: !1537)
!1577 = !DILocation(line: 794, column: 45, scope: !1537)
!1578 = !DILocation(line: 794, column: 50, scope: !1537)
!1579 = !DILocation(line: 794, column: 57, scope: !1537)
!1580 = !DILocation(line: 794, column: 63, scope: !1537)
!1581 = !DILocation(line: 796, column: 30, scope: !1537)
!1582 = !DILocation(line: 797, column: 13, scope: !1537)
!1583 = !DILocation(line: 794, column: 6, scope: !1537)
!1584 = !DILocation(line: 793, column: 9, scope: !1537)
!1585 = !DILocation(line: 798, column: 6, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 798, column: 6)
!1587 = !DILocation(line: 798, column: 6, scope: !1537)
!1588 = !DILocation(line: 799, column: 3, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 798, column: 28)
!1590 = !DILocation(line: 801, column: 3, scope: !1589)
!1591 = !DILocation(line: 806, column: 8, scope: !1537)
!1592 = !DILocation(line: 806, column: 13, scope: !1537)
!1593 = !DILocation(line: 806, column: 20, scope: !1537)
!1594 = !DILocation(line: 806, column: 6, scope: !1537)
!1595 = !DILocation(line: 807, column: 26, scope: !1537)
!1596 = !DILocation(line: 807, column: 31, scope: !1537)
!1597 = !DILocation(line: 807, column: 38, scope: !1537)
!1598 = !DILocation(line: 807, column: 44, scope: !1537)
!1599 = !DILocation(line: 807, column: 21, scope: !1537)
!1600 = !DILocation(line: 807, column: 7, scope: !1537)
!1601 = !DILocation(line: 807, column: 19, scope: !1537)
!1602 = !DILocation(line: 811, column: 7, scope: !1537)
!1603 = !DILocation(line: 811, column: 18, scope: !1537)
!1604 = !DILocation(line: 812, column: 21, scope: !1537)
!1605 = !DILocation(line: 812, column: 7, scope: !1537)
!1606 = !DILocation(line: 812, column: 19, scope: !1537)
!1607 = !DILocation(line: 814, column: 42, scope: !1537)
!1608 = !DILocation(line: 814, column: 54, scope: !1537)
!1609 = !DILocation(line: 814, column: 59, scope: !1537)
!1610 = !DILocation(line: 814, column: 66, scope: !1537)
!1611 = !DILocation(line: 814, column: 11, scope: !1537)
!1612 = !DILocation(line: 814, column: 9, scope: !1537)
!1613 = !DILocation(line: 815, column: 2, scope: !1537)
!1614 = !DILocation(line: 816, column: 1, scope: !1537)
!1615 = distinct !DISubprogram(name: "kzalloc", scope: !13, file: !13, line: 662, type: !1616, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!115, !1618, !795}
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !796, line: 55, baseType: !1619)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1620, line: 72, baseType: !1621)
!1620 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1620, line: 16, baseType: !797)
!1622 = !DILocalVariable(name: "s", arg: 1, scope: !1623, file: !13, line: 445, type: !1626)
!1623 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !13, file: !13, line: 445, type: !1624, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!115, !1626, !795, !1618}
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1628, line: 117, flags: DIFlagFwdDecl)
!1628 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1629 = !DILocation(line: 445, column: 72, scope: !1623, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 552, column: 10, scope: !1631, inlinedAt: !1634)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !13, line: 540, column: 34)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !13, line: 540, column: 6)
!1633 = distinct !DISubprogram(name: "kmalloc", scope: !13, file: !13, line: 538, type: !1616, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1634 = distinct !DILocation(line: 664, column: 9, scope: !1615)
!1635 = !DILocalVariable(name: "flags", arg: 2, scope: !1623, file: !13, line: 446, type: !795)
!1636 = !DILocation(line: 446, column: 9, scope: !1623, inlinedAt: !1630)
!1637 = !DILocalVariable(name: "size", arg: 3, scope: !1623, file: !13, line: 446, type: !1618)
!1638 = !DILocation(line: 446, column: 23, scope: !1623, inlinedAt: !1630)
!1639 = !DILocalVariable(name: "ret", scope: !1623, file: !13, line: 448, type: !115)
!1640 = !DILocation(line: 448, column: 8, scope: !1623, inlinedAt: !1630)
!1641 = !DILocalVariable(name: "flags", arg: 1, scope: !1642, file: !13, line: 318, type: !795)
!1642 = distinct !DISubprogram(name: "kmalloc_type", scope: !13, file: !13, line: 318, type: !1643, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!12, !795}
!1645 = !DILocation(line: 318, column: 67, scope: !1642, inlinedAt: !1646)
!1646 = distinct !DILocation(line: 553, column: 20, scope: !1631, inlinedAt: !1634)
!1647 = !DILocalVariable(name: "size", arg: 1, scope: !1648, file: !13, line: 346, type: !1618)
!1648 = distinct !DISubprogram(name: "kmalloc_index", scope: !13, file: !13, line: 346, type: !1649, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!7, !1618}
!1651 = !DILocation(line: 346, column: 58, scope: !1648, inlinedAt: !1652)
!1652 = distinct !DILocation(line: 547, column: 11, scope: !1631, inlinedAt: !1634)
!1653 = !DILocalVariable(name: "size", arg: 1, scope: !1654, file: !13, line: 472, type: !1618)
!1654 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !13, file: !13, line: 472, type: !1655, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!115, !1618, !795, !7}
!1657 = !DILocation(line: 472, column: 28, scope: !1654, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 481, column: 9, scope: !1659, inlinedAt: !1660)
!1659 = distinct !DISubprogram(name: "kmalloc_large", scope: !13, file: !13, line: 478, type: !1616, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1660 = distinct !DILocation(line: 545, column: 11, scope: !1661, inlinedAt: !1634)
!1661 = distinct !DILexicalBlock(scope: !1631, file: !13, line: 544, column: 7)
!1662 = !DILocalVariable(name: "flags", arg: 2, scope: !1654, file: !13, line: 472, type: !795)
!1663 = !DILocation(line: 472, column: 40, scope: !1654, inlinedAt: !1658)
!1664 = !DILocalVariable(name: "order", arg: 3, scope: !1654, file: !13, line: 472, type: !7)
!1665 = !DILocation(line: 472, column: 60, scope: !1654, inlinedAt: !1658)
!1666 = !DILocalVariable(name: "size", arg: 1, scope: !1659, file: !13, line: 478, type: !1618)
!1667 = !DILocation(line: 478, column: 51, scope: !1659, inlinedAt: !1660)
!1668 = !DILocalVariable(name: "flags", arg: 2, scope: !1659, file: !13, line: 478, type: !795)
!1669 = !DILocation(line: 478, column: 63, scope: !1659, inlinedAt: !1660)
!1670 = !DILocalVariable(name: "order", scope: !1659, file: !13, line: 480, type: !7)
!1671 = !DILocation(line: 480, column: 15, scope: !1659, inlinedAt: !1660)
!1672 = !DILocalVariable(name: "size", arg: 1, scope: !1633, file: !13, line: 538, type: !1618)
!1673 = !DILocation(line: 538, column: 45, scope: !1633, inlinedAt: !1634)
!1674 = !DILocalVariable(name: "flags", arg: 2, scope: !1633, file: !13, line: 538, type: !795)
!1675 = !DILocation(line: 538, column: 57, scope: !1633, inlinedAt: !1634)
!1676 = !DILocalVariable(name: "index", scope: !1631, file: !13, line: 542, type: !7)
!1677 = !DILocation(line: 542, column: 16, scope: !1631, inlinedAt: !1634)
!1678 = !DILocalVariable(name: "size", arg: 1, scope: !1615, file: !13, line: 662, type: !1618)
!1679 = !DILocation(line: 662, column: 36, scope: !1615)
!1680 = !DILocalVariable(name: "flags", arg: 2, scope: !1615, file: !13, line: 662, type: !795)
!1681 = !DILocation(line: 662, column: 48, scope: !1615)
!1682 = !DILocation(line: 664, column: 17, scope: !1615)
!1683 = !DILocation(line: 664, column: 23, scope: !1615)
!1684 = !DILocation(line: 664, column: 29, scope: !1615)
!1685 = !DILocation(line: 540, column: 27, scope: !1632, inlinedAt: !1634)
!1686 = !DILocation(line: 540, column: 6, scope: !1632, inlinedAt: !1634)
!1687 = !DILocation(line: 540, column: 6, scope: !1633, inlinedAt: !1634)
!1688 = !DILocation(line: 544, column: 7, scope: !1661, inlinedAt: !1634)
!1689 = !DILocation(line: 544, column: 12, scope: !1661, inlinedAt: !1634)
!1690 = !DILocation(line: 544, column: 7, scope: !1631, inlinedAt: !1634)
!1691 = !DILocation(line: 545, column: 25, scope: !1661, inlinedAt: !1634)
!1692 = !DILocation(line: 545, column: 31, scope: !1661, inlinedAt: !1634)
!1693 = !DILocation(line: 480, column: 33, scope: !1659, inlinedAt: !1660)
!1694 = !DILocation(line: 480, column: 23, scope: !1659, inlinedAt: !1660)
!1695 = !DILocation(line: 481, column: 29, scope: !1659, inlinedAt: !1660)
!1696 = !DILocation(line: 481, column: 35, scope: !1659, inlinedAt: !1660)
!1697 = !DILocation(line: 481, column: 42, scope: !1659, inlinedAt: !1660)
!1698 = !DILocation(line: 474, column: 23, scope: !1654, inlinedAt: !1658)
!1699 = !DILocation(line: 474, column: 29, scope: !1654, inlinedAt: !1658)
!1700 = !DILocation(line: 474, column: 36, scope: !1654, inlinedAt: !1658)
!1701 = !DILocation(line: 474, column: 9, scope: !1654, inlinedAt: !1658)
!1702 = !DILocation(line: 545, column: 4, scope: !1661, inlinedAt: !1634)
!1703 = !DILocation(line: 547, column: 25, scope: !1631, inlinedAt: !1634)
!1704 = !DILocation(line: 348, column: 7, scope: !1705, inlinedAt: !1652)
!1705 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 348, column: 6)
!1706 = !DILocation(line: 348, column: 6, scope: !1648, inlinedAt: !1652)
!1707 = !DILocation(line: 349, column: 3, scope: !1705, inlinedAt: !1652)
!1708 = !DILocation(line: 351, column: 6, scope: !1709, inlinedAt: !1652)
!1709 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 351, column: 6)
!1710 = !DILocation(line: 351, column: 11, scope: !1709, inlinedAt: !1652)
!1711 = !DILocation(line: 351, column: 6, scope: !1648, inlinedAt: !1652)
!1712 = !DILocation(line: 352, column: 3, scope: !1709, inlinedAt: !1652)
!1713 = !DILocation(line: 354, column: 32, scope: !1714, inlinedAt: !1652)
!1714 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 354, column: 6)
!1715 = !DILocation(line: 354, column: 37, scope: !1714, inlinedAt: !1652)
!1716 = !DILocation(line: 354, column: 42, scope: !1714, inlinedAt: !1652)
!1717 = !DILocation(line: 354, column: 45, scope: !1714, inlinedAt: !1652)
!1718 = !DILocation(line: 354, column: 50, scope: !1714, inlinedAt: !1652)
!1719 = !DILocation(line: 354, column: 6, scope: !1648, inlinedAt: !1652)
!1720 = !DILocation(line: 355, column: 3, scope: !1714, inlinedAt: !1652)
!1721 = !DILocation(line: 356, column: 32, scope: !1722, inlinedAt: !1652)
!1722 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 356, column: 6)
!1723 = !DILocation(line: 356, column: 37, scope: !1722, inlinedAt: !1652)
!1724 = !DILocation(line: 356, column: 43, scope: !1722, inlinedAt: !1652)
!1725 = !DILocation(line: 356, column: 46, scope: !1722, inlinedAt: !1652)
!1726 = !DILocation(line: 356, column: 51, scope: !1722, inlinedAt: !1652)
!1727 = !DILocation(line: 356, column: 6, scope: !1648, inlinedAt: !1652)
!1728 = !DILocation(line: 357, column: 3, scope: !1722, inlinedAt: !1652)
!1729 = !DILocation(line: 358, column: 6, scope: !1730, inlinedAt: !1652)
!1730 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 358, column: 6)
!1731 = !DILocation(line: 358, column: 11, scope: !1730, inlinedAt: !1652)
!1732 = !DILocation(line: 358, column: 6, scope: !1648, inlinedAt: !1652)
!1733 = !DILocation(line: 358, column: 26, scope: !1730, inlinedAt: !1652)
!1734 = !DILocation(line: 359, column: 6, scope: !1735, inlinedAt: !1652)
!1735 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 359, column: 6)
!1736 = !DILocation(line: 359, column: 11, scope: !1735, inlinedAt: !1652)
!1737 = !DILocation(line: 359, column: 6, scope: !1648, inlinedAt: !1652)
!1738 = !DILocation(line: 359, column: 26, scope: !1735, inlinedAt: !1652)
!1739 = !DILocation(line: 360, column: 6, scope: !1740, inlinedAt: !1652)
!1740 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 360, column: 6)
!1741 = !DILocation(line: 360, column: 11, scope: !1740, inlinedAt: !1652)
!1742 = !DILocation(line: 360, column: 6, scope: !1648, inlinedAt: !1652)
!1743 = !DILocation(line: 360, column: 26, scope: !1740, inlinedAt: !1652)
!1744 = !DILocation(line: 361, column: 6, scope: !1745, inlinedAt: !1652)
!1745 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 361, column: 6)
!1746 = !DILocation(line: 361, column: 11, scope: !1745, inlinedAt: !1652)
!1747 = !DILocation(line: 361, column: 6, scope: !1648, inlinedAt: !1652)
!1748 = !DILocation(line: 361, column: 26, scope: !1745, inlinedAt: !1652)
!1749 = !DILocation(line: 362, column: 6, scope: !1750, inlinedAt: !1652)
!1750 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 362, column: 6)
!1751 = !DILocation(line: 362, column: 11, scope: !1750, inlinedAt: !1652)
!1752 = !DILocation(line: 362, column: 6, scope: !1648, inlinedAt: !1652)
!1753 = !DILocation(line: 362, column: 26, scope: !1750, inlinedAt: !1652)
!1754 = !DILocation(line: 363, column: 6, scope: !1755, inlinedAt: !1652)
!1755 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 363, column: 6)
!1756 = !DILocation(line: 363, column: 11, scope: !1755, inlinedAt: !1652)
!1757 = !DILocation(line: 363, column: 6, scope: !1648, inlinedAt: !1652)
!1758 = !DILocation(line: 363, column: 26, scope: !1755, inlinedAt: !1652)
!1759 = !DILocation(line: 364, column: 6, scope: !1760, inlinedAt: !1652)
!1760 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 364, column: 6)
!1761 = !DILocation(line: 364, column: 11, scope: !1760, inlinedAt: !1652)
!1762 = !DILocation(line: 364, column: 6, scope: !1648, inlinedAt: !1652)
!1763 = !DILocation(line: 364, column: 26, scope: !1760, inlinedAt: !1652)
!1764 = !DILocation(line: 365, column: 6, scope: !1765, inlinedAt: !1652)
!1765 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 365, column: 6)
!1766 = !DILocation(line: 365, column: 11, scope: !1765, inlinedAt: !1652)
!1767 = !DILocation(line: 365, column: 6, scope: !1648, inlinedAt: !1652)
!1768 = !DILocation(line: 365, column: 26, scope: !1765, inlinedAt: !1652)
!1769 = !DILocation(line: 366, column: 6, scope: !1770, inlinedAt: !1652)
!1770 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 366, column: 6)
!1771 = !DILocation(line: 366, column: 11, scope: !1770, inlinedAt: !1652)
!1772 = !DILocation(line: 366, column: 6, scope: !1648, inlinedAt: !1652)
!1773 = !DILocation(line: 366, column: 26, scope: !1770, inlinedAt: !1652)
!1774 = !DILocation(line: 367, column: 6, scope: !1775, inlinedAt: !1652)
!1775 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 367, column: 6)
!1776 = !DILocation(line: 367, column: 11, scope: !1775, inlinedAt: !1652)
!1777 = !DILocation(line: 367, column: 6, scope: !1648, inlinedAt: !1652)
!1778 = !DILocation(line: 367, column: 26, scope: !1775, inlinedAt: !1652)
!1779 = !DILocation(line: 368, column: 6, scope: !1780, inlinedAt: !1652)
!1780 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 368, column: 6)
!1781 = !DILocation(line: 368, column: 11, scope: !1780, inlinedAt: !1652)
!1782 = !DILocation(line: 368, column: 6, scope: !1648, inlinedAt: !1652)
!1783 = !DILocation(line: 368, column: 26, scope: !1780, inlinedAt: !1652)
!1784 = !DILocation(line: 369, column: 6, scope: !1785, inlinedAt: !1652)
!1785 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 369, column: 6)
!1786 = !DILocation(line: 369, column: 11, scope: !1785, inlinedAt: !1652)
!1787 = !DILocation(line: 369, column: 6, scope: !1648, inlinedAt: !1652)
!1788 = !DILocation(line: 369, column: 26, scope: !1785, inlinedAt: !1652)
!1789 = !DILocation(line: 370, column: 6, scope: !1790, inlinedAt: !1652)
!1790 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 370, column: 6)
!1791 = !DILocation(line: 370, column: 11, scope: !1790, inlinedAt: !1652)
!1792 = !DILocation(line: 370, column: 6, scope: !1648, inlinedAt: !1652)
!1793 = !DILocation(line: 370, column: 26, scope: !1790, inlinedAt: !1652)
!1794 = !DILocation(line: 371, column: 6, scope: !1795, inlinedAt: !1652)
!1795 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 371, column: 6)
!1796 = !DILocation(line: 371, column: 11, scope: !1795, inlinedAt: !1652)
!1797 = !DILocation(line: 371, column: 6, scope: !1648, inlinedAt: !1652)
!1798 = !DILocation(line: 371, column: 26, scope: !1795, inlinedAt: !1652)
!1799 = !DILocation(line: 372, column: 6, scope: !1800, inlinedAt: !1652)
!1800 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 372, column: 6)
!1801 = !DILocation(line: 372, column: 11, scope: !1800, inlinedAt: !1652)
!1802 = !DILocation(line: 372, column: 6, scope: !1648, inlinedAt: !1652)
!1803 = !DILocation(line: 372, column: 26, scope: !1800, inlinedAt: !1652)
!1804 = !DILocation(line: 373, column: 6, scope: !1805, inlinedAt: !1652)
!1805 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 373, column: 6)
!1806 = !DILocation(line: 373, column: 11, scope: !1805, inlinedAt: !1652)
!1807 = !DILocation(line: 373, column: 6, scope: !1648, inlinedAt: !1652)
!1808 = !DILocation(line: 373, column: 26, scope: !1805, inlinedAt: !1652)
!1809 = !DILocation(line: 374, column: 6, scope: !1810, inlinedAt: !1652)
!1810 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 374, column: 6)
!1811 = !DILocation(line: 374, column: 11, scope: !1810, inlinedAt: !1652)
!1812 = !DILocation(line: 374, column: 6, scope: !1648, inlinedAt: !1652)
!1813 = !DILocation(line: 374, column: 26, scope: !1810, inlinedAt: !1652)
!1814 = !DILocation(line: 375, column: 6, scope: !1815, inlinedAt: !1652)
!1815 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 375, column: 6)
!1816 = !DILocation(line: 375, column: 11, scope: !1815, inlinedAt: !1652)
!1817 = !DILocation(line: 375, column: 6, scope: !1648, inlinedAt: !1652)
!1818 = !DILocation(line: 375, column: 27, scope: !1815, inlinedAt: !1652)
!1819 = !DILocation(line: 376, column: 6, scope: !1820, inlinedAt: !1652)
!1820 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 376, column: 6)
!1821 = !DILocation(line: 376, column: 11, scope: !1820, inlinedAt: !1652)
!1822 = !DILocation(line: 376, column: 6, scope: !1648, inlinedAt: !1652)
!1823 = !DILocation(line: 376, column: 32, scope: !1820, inlinedAt: !1652)
!1824 = !DILocation(line: 377, column: 6, scope: !1825, inlinedAt: !1652)
!1825 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 377, column: 6)
!1826 = !DILocation(line: 377, column: 11, scope: !1825, inlinedAt: !1652)
!1827 = !DILocation(line: 377, column: 6, scope: !1648, inlinedAt: !1652)
!1828 = !DILocation(line: 377, column: 32, scope: !1825, inlinedAt: !1652)
!1829 = !DILocation(line: 378, column: 6, scope: !1830, inlinedAt: !1652)
!1830 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 378, column: 6)
!1831 = !DILocation(line: 378, column: 11, scope: !1830, inlinedAt: !1652)
!1832 = !DILocation(line: 378, column: 6, scope: !1648, inlinedAt: !1652)
!1833 = !DILocation(line: 378, column: 32, scope: !1830, inlinedAt: !1652)
!1834 = !DILocation(line: 379, column: 6, scope: !1835, inlinedAt: !1652)
!1835 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 379, column: 6)
!1836 = !DILocation(line: 379, column: 11, scope: !1835, inlinedAt: !1652)
!1837 = !DILocation(line: 379, column: 6, scope: !1648, inlinedAt: !1652)
!1838 = !DILocation(line: 379, column: 33, scope: !1835, inlinedAt: !1652)
!1839 = !DILocation(line: 380, column: 6, scope: !1840, inlinedAt: !1652)
!1840 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 380, column: 6)
!1841 = !DILocation(line: 380, column: 11, scope: !1840, inlinedAt: !1652)
!1842 = !DILocation(line: 380, column: 6, scope: !1648, inlinedAt: !1652)
!1843 = !DILocation(line: 380, column: 33, scope: !1840, inlinedAt: !1652)
!1844 = !DILocation(line: 381, column: 6, scope: !1845, inlinedAt: !1652)
!1845 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 381, column: 6)
!1846 = !DILocation(line: 381, column: 11, scope: !1845, inlinedAt: !1652)
!1847 = !DILocation(line: 381, column: 6, scope: !1648, inlinedAt: !1652)
!1848 = !DILocation(line: 381, column: 33, scope: !1845, inlinedAt: !1652)
!1849 = !DILocation(line: 382, column: 2, scope: !1850, inlinedAt: !1652)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !13, line: 382, column: 2)
!1851 = distinct !DILexicalBlock(scope: !1648, file: !13, line: 382, column: 2)
!1852 = !{i32 -2144096747, i32 -2144096718, i32 -2144096672, i32 -2144096614, i32 -2144096560, i32 -2144096506, i32 -2144096451, i32 -2144096420}
!1853 = !DILocation(line: 382, column: 2, scope: !1854, inlinedAt: !1652)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !13, line: 382, column: 2)
!1855 = distinct !DILexicalBlock(scope: !1851, file: !13, line: 382, column: 2)
!1856 = !{i32 -2144095977, i32 -2144095970, i32 -2144095916, i32 -2144095885, i32 -2144095855}
!1857 = !DILocation(line: 382, column: 2, scope: !1855, inlinedAt: !1652)
!1858 = !DILocation(line: 386, column: 1, scope: !1648, inlinedAt: !1652)
!1859 = !DILocation(line: 547, column: 9, scope: !1631, inlinedAt: !1634)
!1860 = !DILocation(line: 549, column: 8, scope: !1861, inlinedAt: !1634)
!1861 = distinct !DILexicalBlock(scope: !1631, file: !13, line: 549, column: 7)
!1862 = !DILocation(line: 549, column: 7, scope: !1631, inlinedAt: !1634)
!1863 = !DILocation(line: 550, column: 4, scope: !1861, inlinedAt: !1634)
!1864 = !DILocation(line: 553, column: 33, scope: !1631, inlinedAt: !1634)
!1865 = !DILocation(line: 325, column: 6, scope: !1866, inlinedAt: !1646)
!1866 = distinct !DILexicalBlock(scope: !1642, file: !13, line: 325, column: 6)
!1867 = !DILocation(line: 325, column: 6, scope: !1642, inlinedAt: !1646)
!1868 = !DILocation(line: 326, column: 3, scope: !1866, inlinedAt: !1646)
!1869 = !DILocation(line: 332, column: 9, scope: !1642, inlinedAt: !1646)
!1870 = !DILocation(line: 332, column: 15, scope: !1642, inlinedAt: !1646)
!1871 = !DILocation(line: 332, column: 2, scope: !1642, inlinedAt: !1646)
!1872 = !DILocation(line: 336, column: 1, scope: !1642, inlinedAt: !1646)
!1873 = !DILocation(line: 553, column: 5, scope: !1631, inlinedAt: !1634)
!1874 = !DILocation(line: 553, column: 41, scope: !1631, inlinedAt: !1634)
!1875 = !DILocation(line: 554, column: 5, scope: !1631, inlinedAt: !1634)
!1876 = !DILocation(line: 554, column: 12, scope: !1631, inlinedAt: !1634)
!1877 = !DILocation(line: 448, column: 31, scope: !1623, inlinedAt: !1630)
!1878 = !DILocation(line: 448, column: 34, scope: !1623, inlinedAt: !1630)
!1879 = !DILocation(line: 448, column: 14, scope: !1623, inlinedAt: !1630)
!1880 = !DILocation(line: 450, column: 22, scope: !1623, inlinedAt: !1630)
!1881 = !DILocation(line: 450, column: 25, scope: !1623, inlinedAt: !1630)
!1882 = !DILocation(line: 450, column: 30, scope: !1623, inlinedAt: !1630)
!1883 = !DILocation(line: 450, column: 36, scope: !1623, inlinedAt: !1630)
!1884 = !DILocation(line: 450, column: 8, scope: !1623, inlinedAt: !1630)
!1885 = !DILocation(line: 450, column: 6, scope: !1623, inlinedAt: !1630)
!1886 = !DILocation(line: 451, column: 9, scope: !1623, inlinedAt: !1630)
!1887 = !DILocation(line: 552, column: 3, scope: !1631, inlinedAt: !1634)
!1888 = !DILocation(line: 557, column: 19, scope: !1633, inlinedAt: !1634)
!1889 = !DILocation(line: 557, column: 25, scope: !1633, inlinedAt: !1634)
!1890 = !DILocation(line: 557, column: 9, scope: !1633, inlinedAt: !1634)
!1891 = !DILocation(line: 557, column: 2, scope: !1633, inlinedAt: !1634)
!1892 = !DILocation(line: 558, column: 1, scope: !1633, inlinedAt: !1634)
!1893 = !DILocation(line: 664, column: 2, scope: !1615)
!1894 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1895, file: !1895, line: 646, type: !1896, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1895 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!797}
!1898 = !DILocalVariable(name: "__ret", scope: !1899, file: !1895, line: 648, type: !797)
!1899 = distinct !DILexicalBlock(scope: !1894, file: !1895, line: 648, column: 9)
!1900 = !DILocation(line: 648, column: 9, scope: !1899)
!1901 = !DILocalVariable(name: "__edi", scope: !1899, file: !1895, line: 648, type: !797)
!1902 = !DILocalVariable(name: "__esi", scope: !1899, file: !1895, line: 648, type: !797)
!1903 = !DILocalVariable(name: "__edx", scope: !1899, file: !1895, line: 648, type: !797)
!1904 = !DILocalVariable(name: "__ecx", scope: !1899, file: !1895, line: 648, type: !797)
!1905 = !DILocalVariable(name: "__eax", scope: !1899, file: !1895, line: 648, type: !797)
!1906 = !DILocation(line: 648, column: 9, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !1895, line: 648, column: 9)
!1908 = distinct !DILexicalBlock(scope: !1899, file: !1895, line: 648, column: 9)
!1909 = !{i32 -2145770353, i32 -2145768038, i32 -2145767804, i32 -2145767753, i32 -2145767725, i32 -2145767700, i32 -2145768016, i32 -2145768003, i32 -2145767565, i32 -2145767446, i32 -2145767911, i32 -2145767884, i32 -2145767856, i32 -2145767826}
!1910 = !DILocalVariable(name: "__mask", scope: !1911, file: !1895, line: 648, type: !797)
!1911 = distinct !DILexicalBlock(scope: !1907, file: !1895, line: 648, column: 9)
!1912 = !DILocation(line: 648, column: 9, scope: !1911)
!1913 = !DILocation(line: 648, column: 9, scope: !1908)
!1914 = !DILocation(line: 648, column: 2, scope: !1894)
!1915 = distinct !DISubprogram(name: "get_order", scope: !1916, file: !1916, line: 29, type: !1309, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1916 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1917 = !DILocalVariable(name: "x", arg: 1, scope: !1918, file: !1919, line: 366, type: !35)
!1918 = distinct !DISubprogram(name: "fls64", scope: !1919, file: !1919, line: 366, type: !1920, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1919 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!1311, !35}
!1922 = !DILocation(line: 366, column: 40, scope: !1918, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 46, column: 9, scope: !1915)
!1924 = !DILocalVariable(name: "bitpos", scope: !1918, file: !1919, line: 368, type: !1311)
!1925 = !DILocation(line: 368, column: 6, scope: !1918, inlinedAt: !1923)
!1926 = !DILocalVariable(name: "size", arg: 1, scope: !1915, file: !1916, line: 29, type: !797)
!1927 = !DILocation(line: 29, column: 63, scope: !1915)
!1928 = !DILocation(line: 31, column: 27, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1915, file: !1916, line: 31, column: 6)
!1930 = !DILocation(line: 31, column: 6, scope: !1929)
!1931 = !DILocation(line: 31, column: 6, scope: !1915)
!1932 = !DILocation(line: 32, column: 8, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !1916, line: 32, column: 7)
!1934 = distinct !DILexicalBlock(scope: !1929, file: !1916, line: 31, column: 34)
!1935 = !DILocation(line: 32, column: 7, scope: !1934)
!1936 = !DILocation(line: 33, column: 4, scope: !1933)
!1937 = !DILocation(line: 35, column: 7, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !1916, line: 35, column: 7)
!1939 = !DILocation(line: 35, column: 12, scope: !1938)
!1940 = !DILocation(line: 35, column: 7, scope: !1934)
!1941 = !DILocation(line: 36, column: 4, scope: !1938)
!1942 = !DILocation(line: 38, column: 10, scope: !1934)
!1943 = !DILocation(line: 38, column: 28, scope: !1934)
!1944 = !DILocation(line: 38, column: 41, scope: !1934)
!1945 = !DILocation(line: 38, column: 3, scope: !1934)
!1946 = !DILocation(line: 41, column: 6, scope: !1915)
!1947 = !DILocation(line: 42, column: 7, scope: !1915)
!1948 = !DILocation(line: 46, column: 15, scope: !1915)
!1949 = !DILocation(line: 374, column: 2, scope: !1918, inlinedAt: !1923)
!1950 = !DILocation(line: 376, column: 14, scope: !1918, inlinedAt: !1923)
!1951 = !{i32 674455}
!1952 = !DILocation(line: 377, column: 9, scope: !1918, inlinedAt: !1923)
!1953 = !DILocation(line: 377, column: 16, scope: !1918, inlinedAt: !1923)
!1954 = !DILocation(line: 46, column: 2, scope: !1915)
!1955 = !DILocation(line: 48, column: 1, scope: !1915)
!1956 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1957, file: !1957, line: 30, type: !1958, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1957 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!1311, !34}
!1960 = !DILocation(line: 366, column: 40, scope: !1918, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 32, column: 9, scope: !1956)
!1962 = !DILocation(line: 368, column: 6, scope: !1918, inlinedAt: !1961)
!1963 = !DILocalVariable(name: "n", arg: 1, scope: !1956, file: !1957, line: 30, type: !34)
!1964 = !DILocation(line: 30, column: 21, scope: !1956)
!1965 = !DILocation(line: 32, column: 15, scope: !1956)
!1966 = !DILocation(line: 374, column: 2, scope: !1918, inlinedAt: !1961)
!1967 = !DILocation(line: 376, column: 14, scope: !1918, inlinedAt: !1961)
!1968 = !DILocation(line: 377, column: 9, scope: !1918, inlinedAt: !1961)
!1969 = !DILocation(line: 377, column: 16, scope: !1918, inlinedAt: !1961)
!1970 = !DILocation(line: 32, column: 18, scope: !1956)
!1971 = !DILocation(line: 32, column: 2, scope: !1956)
!1972 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1973, file: !1973, line: 137, type: !1974, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1973 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!115, !1626, !1976, !1618, !795}
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1978 = !DILocalVariable(name: "s", arg: 1, scope: !1972, file: !1973, line: 137, type: !1626)
!1979 = !DILocation(line: 137, column: 54, scope: !1972)
!1980 = !DILocalVariable(name: "object", arg: 2, scope: !1972, file: !1973, line: 137, type: !1976)
!1981 = !DILocation(line: 137, column: 69, scope: !1972)
!1982 = !DILocalVariable(name: "size", arg: 3, scope: !1972, file: !1973, line: 138, type: !1618)
!1983 = !DILocation(line: 138, column: 12, scope: !1972)
!1984 = !DILocalVariable(name: "flags", arg: 4, scope: !1972, file: !1973, line: 138, type: !795)
!1985 = !DILocation(line: 138, column: 24, scope: !1972)
!1986 = !DILocation(line: 140, column: 17, scope: !1972)
!1987 = !DILocation(line: 140, column: 2, scope: !1972)
