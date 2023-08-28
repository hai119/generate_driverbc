; ModuleID = '../bcout/drivers/acpi/acpica/evgpe.llvm.bc'
source_filename = "drivers/acpi/acpica/evgpe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_gpe_block_info = type { %struct.acpi_namespace_node*, %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info*, %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_register_info*, %struct.acpi_gpe_event_info*, i64, i32, i16, i16, i8, i8 }
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
%struct.acpi_gpe_xrupt_info = type { %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i32 }
%struct.acpi_gpe_register_info = type { %struct.acpi_gpe_address, %struct.acpi_gpe_address, i16, i8, i8, i8, i8 }
%struct.acpi_gpe_address = type { i8, i64 }
%struct.acpi_gpe_event_info = type { %union.acpi_gpe_dispatch_info, %struct.acpi_gpe_register_info*, i8, i8, i8, i8 }
%union.acpi_gpe_dispatch_info = type { %struct.acpi_namespace_node* }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
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
%struct.acpi_object_device = type { %union.acpi_operand_object*, i8, i8, i16, i8, [2 x %union.acpi_operand_object*], %union.acpi_operand_object*, %struct.acpi_gpe_block_info* }
%struct.acpi_gpe_handler_info = type { i32 (i8*, i32, i8*)*, i8*, %struct.acpi_namespace_node*, i8, i8 }
%struct.acpi_evaluate_info = type { %struct.acpi_namespace_node*, i8*, %union.acpi_operand_object**, %struct.acpi_namespace_node*, %union.acpi_operand_object*, i8*, %union.acpi_predefined_info*, %union.acpi_operand_object*, %union.acpi_operand_object*, i32, i32, i16, i16, i8, i8, i8 }
%union.acpi_predefined_info = type { %struct.acpi_name_info }
%struct.acpi_name_info = type <{ [4 x i8], i16, i8 }>
%struct.acpi_gpe_notify_info = type { %struct.acpi_namespace_node*, %struct.acpi_gpe_notify_info* }

@acpi_gbl_gpe_fadt_blocks = external dso_local global [2 x %struct.acpi_gpe_block_info*], align 16
@acpi_gbl_gpe_lock = external dso_local global %struct.spinlock*, align 8
@acpi_gpe_count = external dso_local global i32, align 4
@acpi_gbl_global_event_handler = external dso_local global void (i32, i8*, i32, i8*)*, align 8
@acpi_gbl_global_event_handler_context = external dso_local global i8*, align 8
@_acpi_module_name = internal constant [6 x i8] c"evgpe\00", align 1, !dbg !0
@.str = private unnamed_addr constant [27 x i8] c"Unable to disable GPE %02X\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to clear GPE %02X\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Unable to queue handler for GPE %02X - event disabled\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"No handler or method for GPE %02X, disabling event\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"while evaluating GPE method [%4.4s]\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_update_gpe_enable_mask(%struct.acpi_gpe_event_info* %gpe_event_info) #0 !dbg !813 {
entry:
  %retval = alloca i32, align 4
  %gpe_event_info.addr = alloca %struct.acpi_gpe_event_info*, align 8
  %gpe_register_info = alloca %struct.acpi_gpe_register_info*, align 8
  %register_bit = alloca i32, align 4
  store %struct.acpi_gpe_event_info* %gpe_event_info, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info.addr, metadata !817, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_register_info** %gpe_register_info, metadata !819, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.declare(metadata i32* %register_bit, metadata !821, metadata !DIExpression()), !dbg !822
  %0 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !823
  %register_info = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %0, i32 0, i32 1, !dbg !824
  %1 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %register_info, align 8, !dbg !824
  store %struct.acpi_gpe_register_info* %1, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !825
  %2 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !826
  %tobool = icmp ne %struct.acpi_gpe_register_info* %2, null, !dbg !826
  br i1 %tobool, label %if.end, label %if.then, !dbg !828

if.then:                                          ; preds = %entry
  store i32 6, i32* %retval, align 4, !dbg !829
  br label %return, !dbg !829

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !831
  %call = call i32 @acpi_hw_get_gpe_register_bit(%struct.acpi_gpe_event_info* %3) #8, !dbg !832
  store i32 %call, i32* %register_bit, align 4, !dbg !833
  %4 = load i32, i32* %register_bit, align 4, !dbg !834
  %neg = xor i32 %4, -1, !dbg !834
  %5 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !834
  %enable_for_run = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %5, i32 0, i32 4, !dbg !834
  %6 = load i8, i8* %enable_for_run, align 1, !dbg !834
  %conv = zext i8 %6 to i32, !dbg !834
  %and = and i32 %conv, %neg, !dbg !834
  %conv1 = trunc i32 %and to i8, !dbg !834
  store i8 %conv1, i8* %enable_for_run, align 1, !dbg !834
  %7 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !835
  %runtime_count = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %7, i32 0, i32 4, !dbg !837
  %8 = load i8, i8* %runtime_count, align 2, !dbg !837
  %tobool2 = icmp ne i8 %8, 0, !dbg !835
  br i1 %tobool2, label %if.then3, label %if.end9, !dbg !838

if.then3:                                         ; preds = %if.end
  %9 = load i32, i32* %register_bit, align 4, !dbg !839
  %conv4 = trunc i32 %9 to i8, !dbg !839
  %conv5 = zext i8 %conv4 to i32, !dbg !839
  %10 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !839
  %enable_for_run6 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %10, i32 0, i32 4, !dbg !839
  %11 = load i8, i8* %enable_for_run6, align 1, !dbg !839
  %conv7 = zext i8 %11 to i32, !dbg !839
  %or = or i32 %conv7, %conv5, !dbg !839
  %conv8 = trunc i32 %or to i8, !dbg !839
  store i8 %conv8, i8* %enable_for_run6, align 1, !dbg !839
  br label %if.end9, !dbg !841

if.end9:                                          ; preds = %if.then3, %if.end
  %12 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !842
  %enable_for_run10 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %12, i32 0, i32 4, !dbg !843
  %13 = load i8, i8* %enable_for_run10, align 1, !dbg !843
  %14 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !844
  %enable_mask = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %14, i32 0, i32 6, !dbg !845
  store i8 %13, i8* %enable_mask, align 1, !dbg !846
  store i32 0, i32* %retval, align 4, !dbg !847
  br label %return, !dbg !847

return:                                           ; preds = %if.end9, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !848
  ret i32 %15, !dbg !848
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_get_gpe_register_bit(%struct.acpi_gpe_event_info*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_enable_gpe(%struct.acpi_gpe_event_info* %gpe_event_info) #0 !dbg !849 {
entry:
  %gpe_event_info.addr = alloca %struct.acpi_gpe_event_info*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_gpe_event_info* %gpe_event_info, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info.addr, metadata !850, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.declare(metadata i32* %status, metadata !852, metadata !DIExpression()), !dbg !853
  %0 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !854
  %call = call i32 @acpi_hw_low_set_gpe(%struct.acpi_gpe_event_info* %0, i32 0) #8, !dbg !855
  store i32 %call, i32* %status, align 4, !dbg !856
  %1 = load i32, i32* %status, align 4, !dbg !857
  ret i32 %1, !dbg !857
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_low_set_gpe(%struct.acpi_gpe_event_info*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_mask_gpe(%struct.acpi_gpe_event_info* %gpe_event_info, i8 zeroext %is_masked) #0 !dbg !858 {
entry:
  %retval = alloca i32, align 4
  %gpe_event_info.addr = alloca %struct.acpi_gpe_event_info*, align 8
  %is_masked.addr = alloca i8, align 1
  %gpe_register_info = alloca %struct.acpi_gpe_register_info*, align 8
  %register_bit = alloca i32, align 4
  store %struct.acpi_gpe_event_info* %gpe_event_info, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info.addr, metadata !861, metadata !DIExpression()), !dbg !862
  store i8 %is_masked, i8* %is_masked.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %is_masked.addr, metadata !863, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_register_info** %gpe_register_info, metadata !865, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.declare(metadata i32* %register_bit, metadata !867, metadata !DIExpression()), !dbg !868
  %0 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !869
  %register_info = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %0, i32 0, i32 1, !dbg !870
  %1 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %register_info, align 8, !dbg !870
  store %struct.acpi_gpe_register_info* %1, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !871
  %2 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !872
  %tobool = icmp ne %struct.acpi_gpe_register_info* %2, null, !dbg !872
  br i1 %tobool, label %if.end, label %if.then, !dbg !874

if.then:                                          ; preds = %entry
  store i32 6, i32* %retval, align 4, !dbg !875
  br label %return, !dbg !875

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !877
  %call = call i32 @acpi_hw_get_gpe_register_bit(%struct.acpi_gpe_event_info* %3) #8, !dbg !878
  store i32 %call, i32* %register_bit, align 4, !dbg !879
  %4 = load i8, i8* %is_masked.addr, align 1, !dbg !880
  %tobool1 = icmp ne i8 %4, 0, !dbg !880
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !882

if.then2:                                         ; preds = %if.end
  %5 = load i32, i32* %register_bit, align 4, !dbg !883
  %6 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !886
  %mask_for_run = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %6, i32 0, i32 5, !dbg !887
  %7 = load i8, i8* %mask_for_run, align 4, !dbg !887
  %conv = zext i8 %7 to i32, !dbg !886
  %and = and i32 %5, %conv, !dbg !888
  %tobool3 = icmp ne i32 %and, 0, !dbg !888
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !889

if.then4:                                         ; preds = %if.then2
  store i32 4097, i32* %retval, align 4, !dbg !890
  br label %return, !dbg !890

if.end5:                                          ; preds = %if.then2
  %8 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !892
  %call6 = call i32 @acpi_hw_low_set_gpe(%struct.acpi_gpe_event_info* %8, i32 1) #8, !dbg !893
  %9 = load i32, i32* %register_bit, align 4, !dbg !894
  %conv7 = trunc i32 %9 to i8, !dbg !894
  %conv8 = zext i8 %conv7 to i32, !dbg !894
  %10 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !894
  %mask_for_run9 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %10, i32 0, i32 5, !dbg !894
  %11 = load i8, i8* %mask_for_run9, align 4, !dbg !894
  %conv10 = zext i8 %11 to i32, !dbg !894
  %or = or i32 %conv10, %conv8, !dbg !894
  %conv11 = trunc i32 %or to i8, !dbg !894
  store i8 %conv11, i8* %mask_for_run9, align 4, !dbg !894
  br label %if.end30, !dbg !895

if.else:                                          ; preds = %if.end
  %12 = load i32, i32* %register_bit, align 4, !dbg !896
  %13 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !899
  %mask_for_run12 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %13, i32 0, i32 5, !dbg !900
  %14 = load i8, i8* %mask_for_run12, align 4, !dbg !900
  %conv13 = zext i8 %14 to i32, !dbg !899
  %and14 = and i32 %12, %conv13, !dbg !901
  %tobool15 = icmp ne i32 %and14, 0, !dbg !901
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !902

if.then16:                                        ; preds = %if.else
  store i32 4097, i32* %retval, align 4, !dbg !903
  br label %return, !dbg !903

if.end17:                                         ; preds = %if.else
  %15 = load i32, i32* %register_bit, align 4, !dbg !905
  %conv18 = trunc i32 %15 to i8, !dbg !905
  %conv19 = zext i8 %conv18 to i32, !dbg !905
  %neg = xor i32 %conv19, -1, !dbg !905
  %16 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !905
  %mask_for_run20 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %16, i32 0, i32 5, !dbg !905
  %17 = load i8, i8* %mask_for_run20, align 4, !dbg !905
  %conv21 = zext i8 %17 to i32, !dbg !905
  %and22 = and i32 %conv21, %neg, !dbg !905
  %conv23 = trunc i32 %and22 to i8, !dbg !905
  store i8 %conv23, i8* %mask_for_run20, align 4, !dbg !905
  %18 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !906
  %runtime_count = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %18, i32 0, i32 4, !dbg !908
  %19 = load i8, i8* %runtime_count, align 2, !dbg !908
  %conv24 = zext i8 %19 to i32, !dbg !906
  %tobool25 = icmp ne i32 %conv24, 0, !dbg !906
  br i1 %tobool25, label %land.lhs.true, label %if.end29, !dbg !909

land.lhs.true:                                    ; preds = %if.end17
  %20 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !910
  %disable_for_dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %20, i32 0, i32 5, !dbg !911
  %21 = load i8, i8* %disable_for_dispatch, align 1, !dbg !911
  %tobool26 = icmp ne i8 %21, 0, !dbg !910
  br i1 %tobool26, label %if.end29, label %if.then27, !dbg !912

if.then27:                                        ; preds = %land.lhs.true
  %22 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !913
  %call28 = call i32 @acpi_hw_low_set_gpe(%struct.acpi_gpe_event_info* %22, i32 0) #8, !dbg !915
  br label %if.end29, !dbg !916

if.end29:                                         ; preds = %if.then27, %land.lhs.true, %if.end17
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end5
  store i32 0, i32* %retval, align 4, !dbg !917
  br label %return, !dbg !917

return:                                           ; preds = %if.end30, %if.then16, %if.then4, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !918
  ret i32 %23, !dbg !918
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_add_gpe_reference(%struct.acpi_gpe_event_info* %gpe_event_info, i8 zeroext %clear_on_enable) #0 !dbg !919 {
entry:
  %retval = alloca i32, align 4
  %gpe_event_info.addr = alloca %struct.acpi_gpe_event_info*, align 8
  %clear_on_enable.addr = alloca i8, align 1
  %status = alloca i32, align 4
  store %struct.acpi_gpe_event_info* %gpe_event_info, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info.addr, metadata !920, metadata !DIExpression()), !dbg !921
  store i8 %clear_on_enable, i8* %clear_on_enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %clear_on_enable.addr, metadata !922, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.declare(metadata i32* %status, metadata !924, metadata !DIExpression()), !dbg !925
  store i32 0, i32* %status, align 4, !dbg !925
  %0 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !926
  %runtime_count = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %0, i32 0, i32 4, !dbg !928
  %1 = load i8, i8* %runtime_count, align 2, !dbg !928
  %conv = zext i8 %1 to i32, !dbg !926
  %cmp = icmp eq i32 %conv, 255, !dbg !929
  br i1 %cmp, label %if.then, label %if.end, !dbg !930

if.then:                                          ; preds = %entry
  store i32 16, i32* %retval, align 4, !dbg !931
  br label %return, !dbg !931

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !933
  %runtime_count2 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %2, i32 0, i32 4, !dbg !934
  %3 = load i8, i8* %runtime_count2, align 2, !dbg !935
  %inc = add i8 %3, 1, !dbg !935
  store i8 %inc, i8* %runtime_count2, align 2, !dbg !935
  %4 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !936
  %runtime_count3 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %4, i32 0, i32 4, !dbg !938
  %5 = load i8, i8* %runtime_count3, align 2, !dbg !938
  %conv4 = zext i8 %5 to i32, !dbg !936
  %cmp5 = icmp eq i32 %conv4, 1, !dbg !939
  br i1 %cmp5, label %if.then7, label %if.end19, !dbg !940

if.then7:                                         ; preds = %if.end
  %6 = load i8, i8* %clear_on_enable.addr, align 1, !dbg !941
  %tobool = icmp ne i8 %6, 0, !dbg !941
  br i1 %tobool, label %if.then8, label %if.end9, !dbg !944

if.then8:                                         ; preds = %if.then7
  %7 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !945
  %call = call i32 @acpi_hw_clear_gpe(%struct.acpi_gpe_event_info* %7) #8, !dbg !947
  br label %if.end9, !dbg !948

if.end9:                                          ; preds = %if.then8, %if.then7
  %8 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !949
  %call10 = call i32 @acpi_ev_update_gpe_enable_mask(%struct.acpi_gpe_event_info* %8) #8, !dbg !950
  store i32 %call10, i32* %status, align 4, !dbg !951
  %9 = load i32, i32* %status, align 4, !dbg !952
  %tobool11 = icmp ne i32 %9, 0, !dbg !952
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !954

if.then12:                                        ; preds = %if.end9
  %10 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !955
  %call13 = call i32 @acpi_ev_enable_gpe(%struct.acpi_gpe_event_info* %10) #8, !dbg !957
  store i32 %call13, i32* %status, align 4, !dbg !958
  br label %if.end14, !dbg !959

if.end14:                                         ; preds = %if.then12, %if.end9
  %11 = load i32, i32* %status, align 4, !dbg !960
  %tobool15 = icmp ne i32 %11, 0, !dbg !960
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !962

if.then16:                                        ; preds = %if.end14
  %12 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !963
  %runtime_count17 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %12, i32 0, i32 4, !dbg !965
  %13 = load i8, i8* %runtime_count17, align 2, !dbg !966
  %dec = add i8 %13, -1, !dbg !966
  store i8 %dec, i8* %runtime_count17, align 2, !dbg !966
  br label %if.end18, !dbg !967

if.end18:                                         ; preds = %if.then16, %if.end14
  br label %if.end19, !dbg !968

if.end19:                                         ; preds = %if.end18, %if.end
  %14 = load i32, i32* %status, align 4, !dbg !969
  store i32 %14, i32* %retval, align 4, !dbg !969
  br label %return, !dbg !969

return:                                           ; preds = %if.end19, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !970
  ret i32 %15, !dbg !970
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_clear_gpe(%struct.acpi_gpe_event_info*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_remove_gpe_reference(%struct.acpi_gpe_event_info* %gpe_event_info) #0 !dbg !971 {
entry:
  %retval = alloca i32, align 4
  %gpe_event_info.addr = alloca %struct.acpi_gpe_event_info*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_gpe_event_info* %gpe_event_info, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info.addr, metadata !972, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.declare(metadata i32* %status, metadata !974, metadata !DIExpression()), !dbg !975
  store i32 0, i32* %status, align 4, !dbg !975
  %0 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !976
  %runtime_count = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %0, i32 0, i32 4, !dbg !978
  %1 = load i8, i8* %runtime_count, align 2, !dbg !978
  %tobool = icmp ne i8 %1, 0, !dbg !976
  br i1 %tobool, label %if.end, label %if.then, !dbg !979

if.then:                                          ; preds = %entry
  store i32 16, i32* %retval, align 4, !dbg !980
  br label %return, !dbg !980

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !982
  %runtime_count1 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %2, i32 0, i32 4, !dbg !983
  %3 = load i8, i8* %runtime_count1, align 2, !dbg !984
  %dec = add i8 %3, -1, !dbg !984
  store i8 %dec, i8* %runtime_count1, align 2, !dbg !984
  %4 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !985
  %runtime_count2 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %4, i32 0, i32 4, !dbg !987
  %5 = load i8, i8* %runtime_count2, align 2, !dbg !987
  %tobool3 = icmp ne i8 %5, 0, !dbg !985
  br i1 %tobool3, label %if.end13, label %if.then4, !dbg !988

if.then4:                                         ; preds = %if.end
  %6 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !989
  %call = call i32 @acpi_ev_update_gpe_enable_mask(%struct.acpi_gpe_event_info* %6) #8, !dbg !991
  store i32 %call, i32* %status, align 4, !dbg !992
  %7 = load i32, i32* %status, align 4, !dbg !993
  %tobool5 = icmp ne i32 %7, 0, !dbg !993
  br i1 %tobool5, label %if.end8, label %if.then6, !dbg !995

if.then6:                                         ; preds = %if.then4
  %8 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !996
  %call7 = call i32 @acpi_hw_low_set_gpe(%struct.acpi_gpe_event_info* %8, i32 1) #8, !dbg !998
  store i32 %call7, i32* %status, align 4, !dbg !999
  br label %if.end8, !dbg !1000

if.end8:                                          ; preds = %if.then6, %if.then4
  %9 = load i32, i32* %status, align 4, !dbg !1001
  %tobool9 = icmp ne i32 %9, 0, !dbg !1001
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !1003

if.then10:                                        ; preds = %if.end8
  %10 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !1004
  %runtime_count11 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %10, i32 0, i32 4, !dbg !1006
  %11 = load i8, i8* %runtime_count11, align 2, !dbg !1007
  %inc = add i8 %11, 1, !dbg !1007
  store i8 %inc, i8* %runtime_count11, align 2, !dbg !1007
  br label %if.end12, !dbg !1008

if.end12:                                         ; preds = %if.then10, %if.end8
  br label %if.end13, !dbg !1009

if.end13:                                         ; preds = %if.end12, %if.end
  %12 = load i32, i32* %status, align 4, !dbg !1010
  store i32 %12, i32* %retval, align 4, !dbg !1010
  br label %return, !dbg !1010

return:                                           ; preds = %if.end13, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !1011
  ret i32 %13, !dbg !1011
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.acpi_gpe_event_info* @acpi_ev_low_get_gpe_info(i32 %gpe_number, %struct.acpi_gpe_block_info* %gpe_block) #0 !dbg !1012 {
entry:
  %retval = alloca %struct.acpi_gpe_event_info*, align 8
  %gpe_number.addr = alloca i32, align 4
  %gpe_block.addr = alloca %struct.acpi_gpe_block_info*, align 8
  %gpe_index = alloca i32, align 4
  store i32 %gpe_number, i32* %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpe_number.addr, metadata !1015, metadata !DIExpression()), !dbg !1016
  store %struct.acpi_gpe_block_info* %gpe_block, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_block_info** %gpe_block.addr, metadata !1017, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.declare(metadata i32* %gpe_index, metadata !1019, metadata !DIExpression()), !dbg !1020
  %0 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1021
  %tobool = icmp ne %struct.acpi_gpe_block_info* %0, null, !dbg !1021
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1023

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %gpe_number.addr, align 4, !dbg !1024
  %2 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1025
  %block_base_number = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %2, i32 0, i32 9, !dbg !1026
  %3 = load i16, i16* %block_base_number, align 2, !dbg !1026
  %conv = zext i16 %3 to i32, !dbg !1025
  %cmp = icmp ult i32 %1, %conv, !dbg !1027
  br i1 %cmp, label %if.then, label %if.end, !dbg !1028

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.acpi_gpe_event_info* null, %struct.acpi_gpe_event_info** %retval, align 8, !dbg !1029
  br label %return, !dbg !1029

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %gpe_number.addr, align 4, !dbg !1031
  %5 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1032
  %block_base_number2 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %5, i32 0, i32 9, !dbg !1033
  %6 = load i16, i16* %block_base_number2, align 2, !dbg !1033
  %conv3 = zext i16 %6 to i32, !dbg !1032
  %sub = sub i32 %4, %conv3, !dbg !1034
  store i32 %sub, i32* %gpe_index, align 4, !dbg !1035
  %7 = load i32, i32* %gpe_index, align 4, !dbg !1036
  %8 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1038
  %gpe_count = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %8, i32 0, i32 8, !dbg !1039
  %9 = load i16, i16* %gpe_count, align 4, !dbg !1039
  %conv4 = zext i16 %9 to i32, !dbg !1038
  %cmp5 = icmp uge i32 %7, %conv4, !dbg !1040
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !1041

if.then7:                                         ; preds = %if.end
  store %struct.acpi_gpe_event_info* null, %struct.acpi_gpe_event_info** %retval, align 8, !dbg !1042
  br label %return, !dbg !1042

if.end8:                                          ; preds = %if.end
  %10 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1044
  %event_info = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %10, i32 0, i32 5, !dbg !1045
  %11 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %event_info, align 8, !dbg !1045
  %12 = load i32, i32* %gpe_index, align 4, !dbg !1046
  %idxprom = zext i32 %12 to i64, !dbg !1044
  %arrayidx = getelementptr %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %11, i64 %idxprom, !dbg !1044
  store %struct.acpi_gpe_event_info* %arrayidx, %struct.acpi_gpe_event_info** %retval, align 8, !dbg !1047
  br label %return, !dbg !1047

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %13 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %retval, align 8, !dbg !1048
  ret %struct.acpi_gpe_event_info* %13, !dbg !1048
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.acpi_gpe_event_info* @acpi_ev_get_gpe_event_info(i8* %gpe_device, i32 %gpe_number) #0 !dbg !1049 {
entry:
  %retval = alloca %struct.acpi_gpe_event_info*, align 8
  %gpe_device.addr = alloca i8*, align 8
  %gpe_number.addr = alloca i32, align 4
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %gpe_info = alloca %struct.acpi_gpe_event_info*, align 8
  %i = alloca i32, align 4
  store i8* %gpe_device, i8** %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %gpe_device.addr, metadata !1052, metadata !DIExpression()), !dbg !1053
  store i32 %gpe_number, i32* %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpe_number.addr, metadata !1054, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1056, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_info, metadata !1058, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1060, metadata !DIExpression()), !dbg !1061
  %0 = load i8*, i8** %gpe_device.addr, align 8, !dbg !1062
  %tobool = icmp ne i8* %0, null, !dbg !1062
  br i1 %tobool, label %if.end3, label %if.then, !dbg !1064

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !1065
  br label %for.cond, !dbg !1068

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !1069
  %cmp = icmp ult i32 %1, 2, !dbg !1071
  br i1 %cmp, label %for.body, label %for.end, !dbg !1072

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %gpe_number.addr, align 4, !dbg !1073
  %3 = load i32, i32* %i, align 4, !dbg !1075
  %idxprom = zext i32 %3 to i64, !dbg !1076
  %arrayidx = getelementptr [2 x %struct.acpi_gpe_block_info*], [2 x %struct.acpi_gpe_block_info*]* @acpi_gbl_gpe_fadt_blocks, i64 0, i64 %idxprom, !dbg !1076
  %4 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %arrayidx, align 8, !dbg !1076
  %call = call %struct.acpi_gpe_event_info* @acpi_ev_low_get_gpe_info(i32 %2, %struct.acpi_gpe_block_info* %4) #8, !dbg !1077
  store %struct.acpi_gpe_event_info* %call, %struct.acpi_gpe_event_info** %gpe_info, align 8, !dbg !1078
  %5 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_info, align 8, !dbg !1079
  %tobool1 = icmp ne %struct.acpi_gpe_event_info* %5, null, !dbg !1079
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !1081

if.then2:                                         ; preds = %for.body
  %6 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_info, align 8, !dbg !1082
  store %struct.acpi_gpe_event_info* %6, %struct.acpi_gpe_event_info** %retval, align 8, !dbg !1084
  br label %return, !dbg !1084

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1085

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4, !dbg !1086
  %inc = add i32 %7, 1, !dbg !1086
  store i32 %inc, i32* %i, align 4, !dbg !1086
  br label %for.cond, !dbg !1087, !llvm.loop !1088

for.end:                                          ; preds = %for.cond
  store %struct.acpi_gpe_event_info* null, %struct.acpi_gpe_event_info** %retval, align 8, !dbg !1090
  br label %return, !dbg !1090

if.end3:                                          ; preds = %entry
  %8 = load i8*, i8** %gpe_device.addr, align 8, !dbg !1091
  %9 = bitcast i8* %8 to %struct.acpi_namespace_node*, !dbg !1092
  %call4 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %9) #8, !dbg !1093
  store %union.acpi_operand_object* %call4, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1094
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1095
  %tobool5 = icmp ne %union.acpi_operand_object* %10, null, !dbg !1095
  br i1 %tobool5, label %lor.lhs.false, label %if.then7, !dbg !1097

lor.lhs.false:                                    ; preds = %if.end3
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1098
  %device = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_device*, !dbg !1099
  %gpe_block = getelementptr inbounds %struct.acpi_object_device, %struct.acpi_object_device* %device, i32 0, i32 7, !dbg !1100
  %12 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !1100
  %tobool6 = icmp ne %struct.acpi_gpe_block_info* %12, null, !dbg !1098
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1101

if.then7:                                         ; preds = %lor.lhs.false, %if.end3
  store %struct.acpi_gpe_event_info* null, %struct.acpi_gpe_event_info** %retval, align 8, !dbg !1102
  br label %return, !dbg !1102

if.end8:                                          ; preds = %lor.lhs.false
  %13 = load i32, i32* %gpe_number.addr, align 4, !dbg !1104
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1105
  %device9 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_device*, !dbg !1106
  %gpe_block10 = getelementptr inbounds %struct.acpi_object_device, %struct.acpi_object_device* %device9, i32 0, i32 7, !dbg !1107
  %15 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block10, align 8, !dbg !1107
  %call11 = call %struct.acpi_gpe_event_info* @acpi_ev_low_get_gpe_info(i32 %13, %struct.acpi_gpe_block_info* %15) #8, !dbg !1108
  store %struct.acpi_gpe_event_info* %call11, %struct.acpi_gpe_event_info** %retval, align 8, !dbg !1109
  br label %return, !dbg !1109

return:                                           ; preds = %if.end8, %if.then7, %for.end, %if.then2
  %16 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %retval, align 8, !dbg !1110
  ret %struct.acpi_gpe_event_info* %16, !dbg !1110
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_gpe_detect(%struct.acpi_gpe_xrupt_info* %gpe_xrupt_list) #0 !dbg !1111 {
entry:
  %retval = alloca i32, align 4
  %gpe_xrupt_list.addr = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %gpe_block = alloca %struct.acpi_gpe_block_info*, align 8
  %gpe_device = alloca %struct.acpi_namespace_node*, align 8
  %gpe_register_info = alloca %struct.acpi_gpe_register_info*, align 8
  %gpe_event_info = alloca %struct.acpi_gpe_event_info*, align 8
  %gpe_number = alloca i32, align 4
  %int_status = alloca i32, align 4
  %flags = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.acpi_gpe_xrupt_info* %gpe_xrupt_list, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_xrupt_info** %gpe_xrupt_list.addr, metadata !1114, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_block_info** %gpe_block, metadata !1116, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %gpe_device, metadata !1118, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_register_info** %gpe_register_info, metadata !1120, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info, metadata !1122, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.declare(metadata i32* %gpe_number, metadata !1124, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.declare(metadata i32* %int_status, metadata !1126, metadata !DIExpression()), !dbg !1127
  store i32 0, i32* %int_status, align 4, !dbg !1127
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !1128, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1130, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.declare(metadata i32* %j, metadata !1132, metadata !DIExpression()), !dbg !1133
  %0 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_list.addr, align 8, !dbg !1134
  %tobool = icmp ne %struct.acpi_gpe_xrupt_info* %0, null, !dbg !1134
  br i1 %tobool, label %if.end, label %if.then, !dbg !1136

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %int_status, align 4, !dbg !1137
  store i32 %1, i32* %retval, align 4, !dbg !1139
  br label %return, !dbg !1139

if.end:                                           ; preds = %entry
  %2 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1140
  %call = call i64 @acpi_os_acquire_lock(%struct.spinlock* %2) #8, !dbg !1141
  store i64 %call, i64* %flags, align 8, !dbg !1142
  %3 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_list.addr, align 8, !dbg !1143
  %gpe_block_list_head = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %3, i32 0, i32 2, !dbg !1144
  %4 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block_list_head, align 8, !dbg !1144
  store %struct.acpi_gpe_block_info* %4, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !1145
  br label %while.cond, !dbg !1146

while.cond:                                       ; preds = %for.end20, %if.end
  %5 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !1147
  %tobool1 = icmp ne %struct.acpi_gpe_block_info* %5, null, !dbg !1146
  br i1 %tobool1, label %while.body, label %while.end, !dbg !1146

while.body:                                       ; preds = %while.cond
  %6 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !1148
  %node = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %6, i32 0, i32 0, !dbg !1150
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1150
  store %struct.acpi_namespace_node* %7, %struct.acpi_namespace_node** %gpe_device, align 8, !dbg !1151
  store i32 0, i32* %i, align 4, !dbg !1152
  br label %for.cond, !dbg !1154

for.cond:                                         ; preds = %for.inc18, %while.body
  %8 = load i32, i32* %i, align 4, !dbg !1155
  %9 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !1157
  %register_count = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %9, i32 0, i32 7, !dbg !1158
  %10 = load i32, i32* %register_count, align 8, !dbg !1158
  %cmp = icmp ult i32 %8, %10, !dbg !1159
  br i1 %cmp, label %for.body, label %for.end20, !dbg !1160

for.body:                                         ; preds = %for.cond
  %11 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !1161
  %register_info = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %11, i32 0, i32 4, !dbg !1163
  %12 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %register_info, align 8, !dbg !1163
  %13 = load i32, i32* %i, align 4, !dbg !1164
  %idxprom = zext i32 %13 to i64, !dbg !1161
  %arrayidx = getelementptr %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %12, i64 %idxprom, !dbg !1161
  store %struct.acpi_gpe_register_info* %arrayidx, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1165
  %14 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1166
  %enable_for_run = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %14, i32 0, i32 4, !dbg !1168
  %15 = load i8, i8* %enable_for_run, align 1, !dbg !1168
  %conv = zext i8 %15 to i32, !dbg !1166
  %16 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1169
  %enable_for_wake = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %16, i32 0, i32 3, !dbg !1170
  %17 = load i8, i8* %enable_for_wake, align 2, !dbg !1170
  %conv2 = zext i8 %17 to i32, !dbg !1169
  %or = or i32 %conv, %conv2, !dbg !1171
  %tobool3 = icmp ne i32 %or, 0, !dbg !1171
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1172

if.then4:                                         ; preds = %for.body
  br label %for.inc18, !dbg !1173

if.end5:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !1175
  br label %for.cond6, !dbg !1177

for.cond6:                                        ; preds = %for.inc, %if.end5
  %18 = load i32, i32* %j, align 4, !dbg !1178
  %cmp7 = icmp ult i32 %18, 8, !dbg !1180
  br i1 %cmp7, label %for.body9, label %for.end, !dbg !1181

for.body9:                                        ; preds = %for.cond6
  %19 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !1182
  %event_info = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %19, i32 0, i32 5, !dbg !1184
  %20 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %event_info, align 8, !dbg !1184
  %21 = load i32, i32* %i, align 4, !dbg !1185
  %conv10 = zext i32 %21 to i64, !dbg !1186
  %mul = mul i64 %conv10, 8, !dbg !1187
  %22 = load i32, i32* %j, align 4, !dbg !1188
  %conv11 = zext i32 %22 to i64, !dbg !1188
  %add = add i64 %mul, %conv11, !dbg !1189
  %arrayidx12 = getelementptr %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %20, i64 %add, !dbg !1182
  store %struct.acpi_gpe_event_info* %arrayidx12, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1190
  %23 = load i32, i32* %j, align 4, !dbg !1191
  %24 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1192
  %base_gpe_number = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %24, i32 0, i32 2, !dbg !1193
  %25 = load i16, i16* %base_gpe_number, align 8, !dbg !1193
  %conv13 = zext i16 %25 to i32, !dbg !1192
  %add14 = add i32 %23, %conv13, !dbg !1194
  store i32 %add14, i32* %gpe_number, align 4, !dbg !1195
  %26 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1196
  %27 = load i64, i64* %flags, align 8, !dbg !1197
  call void @acpi_os_release_lock(%struct.spinlock* %26, i64 %27) #8, !dbg !1198
  %28 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %gpe_device, align 8, !dbg !1199
  %29 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1200
  %30 = load i32, i32* %gpe_number, align 4, !dbg !1201
  %call15 = call i32 @acpi_ev_detect_gpe(%struct.acpi_namespace_node* %28, %struct.acpi_gpe_event_info* %29, i32 %30) #8, !dbg !1202
  %31 = load i32, i32* %int_status, align 4, !dbg !1203
  %or16 = or i32 %31, %call15, !dbg !1203
  store i32 %or16, i32* %int_status, align 4, !dbg !1203
  %32 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1204
  %call17 = call i64 @acpi_os_acquire_lock(%struct.spinlock* %32) #8, !dbg !1205
  store i64 %call17, i64* %flags, align 8, !dbg !1206
  br label %for.inc, !dbg !1207

for.inc:                                          ; preds = %for.body9
  %33 = load i32, i32* %j, align 4, !dbg !1208
  %inc = add i32 %33, 1, !dbg !1208
  store i32 %inc, i32* %j, align 4, !dbg !1208
  br label %for.cond6, !dbg !1209, !llvm.loop !1210

for.end:                                          ; preds = %for.cond6
  br label %for.inc18, !dbg !1212

for.inc18:                                        ; preds = %for.end, %if.then4
  %34 = load i32, i32* %i, align 4, !dbg !1213
  %inc19 = add i32 %34, 1, !dbg !1213
  store i32 %inc19, i32* %i, align 4, !dbg !1213
  br label %for.cond, !dbg !1214, !llvm.loop !1215

for.end20:                                        ; preds = %for.cond
  %35 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !1217
  %next = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %35, i32 0, i32 2, !dbg !1218
  %36 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %next, align 8, !dbg !1218
  store %struct.acpi_gpe_block_info* %36, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !1219
  br label %while.cond, !dbg !1146, !llvm.loop !1220

while.end:                                        ; preds = %while.cond
  %37 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1222
  %38 = load i64, i64* %flags, align 8, !dbg !1223
  call void @acpi_os_release_lock(%struct.spinlock* %37, i64 %38) #8, !dbg !1224
  %39 = load i32, i32* %int_status, align 4, !dbg !1225
  store i32 %39, i32* %retval, align 4, !dbg !1226
  br label %return, !dbg !1226

return:                                           ; preds = %while.end, %if.then
  %40 = load i32, i32* %retval, align 4, !dbg !1227
  ret i32 %40, !dbg !1227
}

; Function Attrs: noredzone
declare dso_local i64 @acpi_os_acquire_lock(%struct.spinlock*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_os_release_lock(%struct.spinlock*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_detect_gpe(%struct.acpi_namespace_node* %gpe_device, %struct.acpi_gpe_event_info* %gpe_event_info, i32 %gpe_number) #0 !dbg !1228 {
entry:
  %gpe_device.addr = alloca %struct.acpi_namespace_node*, align 8
  %gpe_event_info.addr = alloca %struct.acpi_gpe_event_info*, align 8
  %gpe_number.addr = alloca i32, align 4
  %int_status = alloca i32, align 4
  %enabled_status_byte = alloca i8, align 1
  %status_reg = alloca i64, align 8
  %enable_reg = alloca i64, align 8
  %register_bit = alloca i32, align 4
  %gpe_register_info = alloca %struct.acpi_gpe_register_info*, align 8
  %gpe_handler_info = alloca %struct.acpi_gpe_handler_info*, align 8
  %flags = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.acpi_namespace_node* %gpe_device, %struct.acpi_namespace_node** %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %gpe_device.addr, metadata !1231, metadata !DIExpression()), !dbg !1232
  store %struct.acpi_gpe_event_info* %gpe_event_info, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info.addr, metadata !1233, metadata !DIExpression()), !dbg !1234
  store i32 %gpe_number, i32* %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpe_number.addr, metadata !1235, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.declare(metadata i32* %int_status, metadata !1237, metadata !DIExpression()), !dbg !1238
  store i32 0, i32* %int_status, align 4, !dbg !1238
  call void @llvm.dbg.declare(metadata i8* %enabled_status_byte, metadata !1239, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.declare(metadata i64* %status_reg, metadata !1241, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.declare(metadata i64* %enable_reg, metadata !1243, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.declare(metadata i32* %register_bit, metadata !1245, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_register_info** %gpe_register_info, metadata !1247, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_handler_info** %gpe_handler_info, metadata !1249, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !1251, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1253, metadata !DIExpression()), !dbg !1254
  %0 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1255
  %call = call i64 @acpi_os_acquire_lock(%struct.spinlock* %0) #8, !dbg !1256
  store i64 %call, i64* %flags, align 8, !dbg !1257
  %1 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !1258
  %tobool = icmp ne %struct.acpi_gpe_event_info* %1, null, !dbg !1258
  br i1 %tobool, label %if.end4, label %if.then, !dbg !1260

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %gpe_device.addr, align 8, !dbg !1261
  %3 = bitcast %struct.acpi_namespace_node* %2 to i8*, !dbg !1261
  %4 = load i32, i32* %gpe_number.addr, align 4, !dbg !1263
  %call1 = call %struct.acpi_gpe_event_info* @acpi_ev_get_gpe_event_info(i8* %3, i32 %4) #8, !dbg !1264
  store %struct.acpi_gpe_event_info* %call1, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !1265
  %5 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !1266
  %tobool2 = icmp ne %struct.acpi_gpe_event_info* %5, null, !dbg !1266
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !1268

if.then3:                                         ; preds = %if.then
  br label %error_exit, !dbg !1269

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !1270

if.end4:                                          ; preds = %if.end, %entry
  %6 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !1271
  %register_info = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %6, i32 0, i32 1, !dbg !1272
  %7 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %register_info, align 8, !dbg !1272
  store %struct.acpi_gpe_register_info* %7, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1273
  %8 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !1274
  %call5 = call i32 @acpi_hw_get_gpe_register_bit(%struct.acpi_gpe_event_info* %8) #8, !dbg !1275
  store i32 %call5, i32* %register_bit, align 4, !dbg !1276
  %9 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1277
  %enable_address = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %9, i32 0, i32 1, !dbg !1278
  %call6 = call i32 @acpi_hw_gpe_read(i64* %enable_reg, %struct.acpi_gpe_address* %enable_address) #8, !dbg !1279
  store i32 %call6, i32* %status, align 4, !dbg !1280
  %10 = load i32, i32* %status, align 4, !dbg !1281
  %tobool7 = icmp ne i32 %10, 0, !dbg !1281
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1283

if.then8:                                         ; preds = %if.end4
  br label %error_exit, !dbg !1284

if.end9:                                          ; preds = %if.end4
  %11 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1286
  %status_address = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %11, i32 0, i32 0, !dbg !1287
  %call10 = call i32 @acpi_hw_gpe_read(i64* %status_reg, %struct.acpi_gpe_address* %status_address) #8, !dbg !1288
  store i32 %call10, i32* %status, align 4, !dbg !1289
  %12 = load i32, i32* %status, align 4, !dbg !1290
  %tobool11 = icmp ne i32 %12, 0, !dbg !1290
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !1292

if.then12:                                        ; preds = %if.end9
  br label %error_exit, !dbg !1293

if.end13:                                         ; preds = %if.end9
  %13 = load i64, i64* %status_reg, align 8, !dbg !1295
  %14 = load i64, i64* %enable_reg, align 8, !dbg !1296
  %and = and i64 %13, %14, !dbg !1297
  %conv = trunc i64 %and to i8, !dbg !1298
  store i8 %conv, i8* %enabled_status_byte, align 1, !dbg !1299
  %15 = load i8, i8* %enabled_status_byte, align 1, !dbg !1300
  %conv14 = zext i8 %15 to i32, !dbg !1300
  %16 = load i32, i32* %register_bit, align 4, !dbg !1302
  %and15 = and i32 %conv14, %16, !dbg !1303
  %tobool16 = icmp ne i32 %and15, 0, !dbg !1303
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !1304

if.then17:                                        ; preds = %if.end13
  br label %error_exit, !dbg !1305

if.end18:                                         ; preds = %if.end13
  %17 = load i32, i32* @acpi_gpe_count, align 4, !dbg !1307
  %inc = add i32 %17, 1, !dbg !1307
  store i32 %inc, i32* @acpi_gpe_count, align 4, !dbg !1307
  %18 = load void (i32, i8*, i32, i8*)*, void (i32, i8*, i32, i8*)** @acpi_gbl_global_event_handler, align 8, !dbg !1308
  %tobool19 = icmp ne void (i32, i8*, i32, i8*)* %18, null, !dbg !1308
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1310

if.then20:                                        ; preds = %if.end18
  %19 = load void (i32, i8*, i32, i8*)*, void (i32, i8*, i32, i8*)** @acpi_gbl_global_event_handler, align 8, !dbg !1311
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %gpe_device.addr, align 8, !dbg !1313
  %21 = bitcast %struct.acpi_namespace_node* %20 to i8*, !dbg !1313
  %22 = load i32, i32* %gpe_number.addr, align 4, !dbg !1314
  %23 = load i8*, i8** @acpi_gbl_global_event_handler_context, align 8, !dbg !1315
  call void %19(i32 0, i8* %21, i32 %22, i8* %23) #8, !dbg !1311
  br label %if.end21, !dbg !1316

if.end21:                                         ; preds = %if.then20, %if.end18
  %24 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !1317
  %flags22 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %24, i32 0, i32 2, !dbg !1317
  %25 = load i8, i8* %flags22, align 8, !dbg !1317
  %conv23 = zext i8 %25 to i32, !dbg !1317
  %and24 = and i32 %conv23, 7, !dbg !1317
  %conv25 = trunc i32 %and24 to i8, !dbg !1317
  %conv26 = zext i8 %conv25 to i32, !dbg !1317
  %cmp = icmp eq i32 %conv26, 4, !dbg !1319
  br i1 %cmp, label %if.then28, label %if.else, !dbg !1320

if.then28:                                        ; preds = %if.end21
  %26 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !1321
  %dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %26, i32 0, i32 0, !dbg !1323
  %handler = bitcast %union.acpi_gpe_dispatch_info* %dispatch to %struct.acpi_gpe_handler_info**, !dbg !1324
  %27 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %handler, align 8, !dbg !1324
  store %struct.acpi_gpe_handler_info* %27, %struct.acpi_gpe_handler_info** %gpe_handler_info, align 8, !dbg !1325
  %28 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1326
  %29 = load i64, i64* %flags, align 8, !dbg !1327
  call void @acpi_os_release_lock(%struct.spinlock* %28, i64 %29) #8, !dbg !1328
  %30 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %gpe_handler_info, align 8, !dbg !1329
  %address = getelementptr inbounds %struct.acpi_gpe_handler_info, %struct.acpi_gpe_handler_info* %30, i32 0, i32 0, !dbg !1330
  %31 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %address, align 8, !dbg !1330
  %32 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %gpe_device.addr, align 8, !dbg !1331
  %33 = bitcast %struct.acpi_namespace_node* %32 to i8*, !dbg !1331
  %34 = load i32, i32* %gpe_number.addr, align 4, !dbg !1332
  %35 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %gpe_handler_info, align 8, !dbg !1333
  %context = getelementptr inbounds %struct.acpi_gpe_handler_info, %struct.acpi_gpe_handler_info* %35, i32 0, i32 1, !dbg !1334
  %36 = load i8*, i8** %context, align 8, !dbg !1334
  %call29 = call i32 %31(i8* %33, i32 %34, i8* %36) #8, !dbg !1329
  %37 = load i32, i32* %int_status, align 4, !dbg !1335
  %or = or i32 %37, %call29, !dbg !1335
  store i32 %or, i32* %int_status, align 4, !dbg !1335
  %38 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1336
  %call30 = call i64 @acpi_os_acquire_lock(%struct.spinlock* %38) #8, !dbg !1337
  store i64 %call30, i64* %flags, align 8, !dbg !1338
  br label %if.end33, !dbg !1339

if.else:                                          ; preds = %if.end21
  %39 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %gpe_device.addr, align 8, !dbg !1340
  %40 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !1342
  %41 = load i32, i32* %gpe_number.addr, align 4, !dbg !1343
  %call31 = call i32 @acpi_ev_gpe_dispatch(%struct.acpi_namespace_node* %39, %struct.acpi_gpe_event_info* %40, i32 %41) #8, !dbg !1344
  %42 = load i32, i32* %int_status, align 4, !dbg !1345
  %or32 = or i32 %42, %call31, !dbg !1345
  store i32 %or32, i32* %int_status, align 4, !dbg !1345
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then28
  br label %error_exit, !dbg !1346

error_exit:                                       ; preds = %if.end33, %if.then17, %if.then12, %if.then8, %if.then3
  call void @llvm.dbg.label(metadata !1347), !dbg !1348
  %43 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1349
  %44 = load i64, i64* %flags, align 8, !dbg !1350
  call void @acpi_os_release_lock(%struct.spinlock* %43, i64 %44) #8, !dbg !1351
  %45 = load i32, i32* %int_status, align 4, !dbg !1352
  ret i32 %45, !dbg !1353
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_finish_gpe(%struct.acpi_gpe_event_info* %gpe_event_info) #0 !dbg !1354 {
entry:
  %retval = alloca i32, align 4
  %gpe_event_info.addr = alloca %struct.acpi_gpe_event_info*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_gpe_event_info* %gpe_event_info, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info.addr, metadata !1355, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1357, metadata !DIExpression()), !dbg !1358
  %0 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !1359
  %flags = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %0, i32 0, i32 2, !dbg !1361
  %1 = load i8, i8* %flags, align 8, !dbg !1361
  %conv = zext i8 %1 to i32, !dbg !1359
  %and = and i32 %conv, 8, !dbg !1362
  %cmp = icmp eq i32 %and, 8, !dbg !1363
  br i1 %cmp, label %if.then, label %if.end3, !dbg !1364

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !1365
  %call = call i32 @acpi_hw_clear_gpe(%struct.acpi_gpe_event_info* %2) #8, !dbg !1367
  store i32 %call, i32* %status, align 4, !dbg !1368
  %3 = load i32, i32* %status, align 4, !dbg !1369
  %tobool = icmp ne i32 %3, 0, !dbg !1369
  br i1 %tobool, label %if.then2, label %if.end, !dbg !1371

if.then2:                                         ; preds = %if.then
  %4 = load i32, i32* %status, align 4, !dbg !1372
  store i32 %4, i32* %retval, align 4, !dbg !1374
  br label %return, !dbg !1374

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !1375

if.end3:                                          ; preds = %if.end, %entry
  %5 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !1376
  %call4 = call i32 @acpi_hw_low_set_gpe(%struct.acpi_gpe_event_info* %5, i32 2) #8, !dbg !1377
  %6 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !1378
  %disable_for_dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %6, i32 0, i32 5, !dbg !1379
  store i8 0, i8* %disable_for_dispatch, align 1, !dbg !1380
  store i32 0, i32* %retval, align 4, !dbg !1381
  br label %return, !dbg !1381

return:                                           ; preds = %if.end3, %if.then2
  %7 = load i32, i32* %retval, align 4, !dbg !1382
  ret i32 %7, !dbg !1382
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_gpe_read(i64*, %struct.acpi_gpe_address*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_gpe_dispatch(%struct.acpi_namespace_node* %gpe_device, %struct.acpi_gpe_event_info* %gpe_event_info, i32 %gpe_number) #0 !dbg !1383 {
entry:
  %retval = alloca i32, align 4
  %gpe_device.addr = alloca %struct.acpi_namespace_node*, align 8
  %gpe_event_info.addr = alloca %struct.acpi_gpe_event_info*, align 8
  %gpe_number.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %return_value = alloca i32, align 4
  store %struct.acpi_namespace_node* %gpe_device, %struct.acpi_namespace_node** %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %gpe_device.addr, metadata !1384, metadata !DIExpression()), !dbg !1385
  store %struct.acpi_gpe_event_info* %gpe_event_info, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info.addr, metadata !1386, metadata !DIExpression()), !dbg !1387
  store i32 %gpe_number, i32* %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpe_number.addr, metadata !1388, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1390, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.declare(metadata i32* %return_value, metadata !1392, metadata !DIExpression()), !dbg !1393
  %0 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !1394
  %call = call i32 @acpi_hw_low_set_gpe(%struct.acpi_gpe_event_info* %0, i32 1) #8, !dbg !1395
  store i32 %call, i32* %status, align 4, !dbg !1396
  %1 = load i32, i32* %status, align 4, !dbg !1397
  %tobool = icmp ne i32 %1, 0, !dbg !1397
  br i1 %tobool, label %if.then, label %if.end, !dbg !1399

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !1400
  %3 = load i32, i32* %gpe_number.addr, align 4, !dbg !1400
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @_acpi_module_name, i64 0, i64 0), i32 767, i32 %2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %3) #8, !dbg !1400
  store i32 0, i32* %retval, align 4, !dbg !1402
  br label %return, !dbg !1402

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !1403
  %flags = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %4, i32 0, i32 2, !dbg !1405
  %5 = load i8, i8* %flags, align 8, !dbg !1405
  %conv = zext i8 %5 to i32, !dbg !1403
  %and = and i32 %conv, 8, !dbg !1406
  %cmp = icmp eq i32 %and, 0, !dbg !1407
  br i1 %cmp, label %if.then2, label %if.end8, !dbg !1408

if.then2:                                         ; preds = %if.end
  %6 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !1409
  %call3 = call i32 @acpi_hw_clear_gpe(%struct.acpi_gpe_event_info* %6) #8, !dbg !1411
  store i32 %call3, i32* %status, align 4, !dbg !1412
  %7 = load i32, i32* %status, align 4, !dbg !1413
  %tobool4 = icmp ne i32 %7, 0, !dbg !1413
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !1415

if.then5:                                         ; preds = %if.then2
  %8 = load i32, i32* %status, align 4, !dbg !1416
  %9 = load i32, i32* %gpe_number.addr, align 4, !dbg !1416
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @_acpi_module_name, i64 0, i64 0), i32 780, i32 %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %9) #8, !dbg !1416
  %10 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !1418
  %call6 = call i32 @acpi_hw_low_set_gpe(%struct.acpi_gpe_event_info* %10, i32 2) #8, !dbg !1419
  store i32 0, i32* %retval, align 4, !dbg !1420
  br label %return, !dbg !1420

if.end7:                                          ; preds = %if.then2
  br label %if.end8, !dbg !1421

if.end8:                                          ; preds = %if.end7, %if.end
  %11 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !1422
  %disable_for_dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %11, i32 0, i32 5, !dbg !1423
  store i8 1, i8* %disable_for_dispatch, align 1, !dbg !1424
  %12 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !1425
  %flags9 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %12, i32 0, i32 2, !dbg !1425
  %13 = load i8, i8* %flags9, align 8, !dbg !1425
  %conv10 = zext i8 %13 to i32, !dbg !1425
  %and11 = and i32 %conv10, 7, !dbg !1425
  %conv12 = trunc i32 %and11 to i8, !dbg !1425
  %conv13 = zext i8 %conv12 to i32, !dbg !1425
  switch i32 %conv13, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb22
    i32 3, label %sw.bb22
  ], !dbg !1426

sw.bb:                                            ; preds = %if.end8
  %14 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !1427
  %dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %14, i32 0, i32 0, !dbg !1429
  %handler = bitcast %union.acpi_gpe_dispatch_info* %dispatch to %struct.acpi_gpe_handler_info**, !dbg !1430
  %15 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %handler, align 8, !dbg !1430
  %address = getelementptr inbounds %struct.acpi_gpe_handler_info, %struct.acpi_gpe_handler_info* %15, i32 0, i32 0, !dbg !1431
  %16 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %address, align 8, !dbg !1431
  %17 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %gpe_device.addr, align 8, !dbg !1432
  %18 = bitcast %struct.acpi_namespace_node* %17 to i8*, !dbg !1432
  %19 = load i32, i32* %gpe_number.addr, align 4, !dbg !1433
  %20 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !1434
  %dispatch14 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %20, i32 0, i32 0, !dbg !1435
  %handler15 = bitcast %union.acpi_gpe_dispatch_info* %dispatch14 to %struct.acpi_gpe_handler_info**, !dbg !1436
  %21 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %handler15, align 8, !dbg !1436
  %context = getelementptr inbounds %struct.acpi_gpe_handler_info, %struct.acpi_gpe_handler_info* %21, i32 0, i32 1, !dbg !1437
  %22 = load i8*, i8** %context, align 8, !dbg !1437
  %call16 = call i32 %16(i8* %18, i32 %19, i8* %22) #8, !dbg !1427
  store i32 %call16, i32* %return_value, align 4, !dbg !1438
  %23 = load i32, i32* %return_value, align 4, !dbg !1439
  %and17 = and i32 %23, 128, !dbg !1441
  %tobool18 = icmp ne i32 %and17, 0, !dbg !1441
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !1442

if.then19:                                        ; preds = %sw.bb
  %24 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !1443
  %call20 = call i32 @acpi_ev_finish_gpe(%struct.acpi_gpe_event_info* %24) #8, !dbg !1445
  br label %if.end21, !dbg !1446

if.end21:                                         ; preds = %if.then19, %sw.bb
  br label %sw.epilog, !dbg !1447

sw.bb22:                                          ; preds = %if.end8, %if.end8
  %25 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info.addr, align 8, !dbg !1448
  %26 = bitcast %struct.acpi_gpe_event_info* %25 to i8*, !dbg !1448
  %call23 = call i32 @acpi_os_execute(i32 2, void (i8*)* @acpi_ev_asynch_execute_gpe_method, i8* %26) #8, !dbg !1449
  store i32 %call23, i32* %status, align 4, !dbg !1450
  %27 = load i32, i32* %status, align 4, !dbg !1451
  %tobool24 = icmp ne i32 %27, 0, !dbg !1451
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !1453

if.then25:                                        ; preds = %sw.bb22
  %28 = load i32, i32* %status, align 4, !dbg !1454
  %29 = load i32, i32* %gpe_number.addr, align 4, !dbg !1454
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @_acpi_module_name, i64 0, i64 0), i32 827, i32 %28, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %29) #8, !dbg !1454
  br label %if.end26, !dbg !1456

if.end26:                                         ; preds = %if.then25, %sw.bb22
  br label %sw.epilog, !dbg !1457

sw.default:                                       ; preds = %if.end8
  %30 = load i32, i32* %gpe_number.addr, align 4, !dbg !1458
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @_acpi_module_name, i64 0, i64 0), i32 839, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %30) #8, !dbg !1458
  br label %sw.epilog, !dbg !1459

sw.epilog:                                        ; preds = %sw.default, %if.end26, %if.end21
  store i32 1, i32* %retval, align 4, !dbg !1460
  br label %return, !dbg !1460

return:                                           ; preds = %sw.epilog, %if.then5, %if.then
  %31 = load i32, i32* %retval, align 4, !dbg !1461
  ret i32 %31, !dbg !1461
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_execute(i32, void (i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_ev_asynch_execute_gpe_method(i8* %context) #0 !dbg !1462 {
entry:
  %context.addr = alloca i8*, align 8
  %gpe_event_info = alloca %struct.acpi_gpe_event_info*, align 8
  %status = alloca i32, align 4
  %info = alloca %struct.acpi_evaluate_info*, align 8
  %notify = alloca %struct.acpi_gpe_notify_info*, align 8
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1465, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info, metadata !1467, metadata !DIExpression()), !dbg !1468
  %0 = load i8*, i8** %context.addr, align 8, !dbg !1469
  %1 = bitcast i8* %0 to %struct.acpi_gpe_event_info*, !dbg !1469
  store %struct.acpi_gpe_event_info* %1, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1468
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1470, metadata !DIExpression()), !dbg !1471
  store i32 0, i32* %status, align 4, !dbg !1471
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info, metadata !1472, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_notify_info** %notify, metadata !1539, metadata !DIExpression()), !dbg !1540
  %2 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1541
  %flags = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %2, i32 0, i32 2, !dbg !1541
  %3 = load i8, i8* %flags, align 8, !dbg !1541
  %conv = zext i8 %3 to i32, !dbg !1541
  %and = and i32 %conv, 7, !dbg !1541
  %conv1 = trunc i32 %and to i8, !dbg !1541
  %conv2 = zext i8 %conv1 to i32, !dbg !1541
  switch i32 %conv2, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb4
  ], !dbg !1542

sw.bb:                                            ; preds = %entry
  %4 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1543
  %dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %4, i32 0, i32 0, !dbg !1545
  %notify_list = bitcast %union.acpi_gpe_dispatch_info* %dispatch to %struct.acpi_gpe_notify_info**, !dbg !1546
  %5 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %notify_list, align 8, !dbg !1546
  store %struct.acpi_gpe_notify_info* %5, %struct.acpi_gpe_notify_info** %notify, align 8, !dbg !1547
  br label %while.cond, !dbg !1548

while.cond:                                       ; preds = %while.body, %sw.bb
  %6 = load i32, i32* %status, align 4, !dbg !1549
  %tobool = icmp ne i32 %6, 0, !dbg !1549
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !1550

land.rhs:                                         ; preds = %while.cond
  %7 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %notify, align 8, !dbg !1551
  %tobool3 = icmp ne %struct.acpi_gpe_notify_info* %7, null, !dbg !1550
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool3, %land.rhs ], !dbg !1552
  br i1 %8, label %while.body, label %while.end, !dbg !1548

while.body:                                       ; preds = %land.end
  %9 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %notify, align 8, !dbg !1553
  %device_node = getelementptr inbounds %struct.acpi_gpe_notify_info, %struct.acpi_gpe_notify_info* %9, i32 0, i32 0, !dbg !1555
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %device_node, align 8, !dbg !1555
  %call = call i32 @acpi_ev_queue_notify_request(%struct.acpi_namespace_node* %10, i32 2) #8, !dbg !1556
  store i32 %call, i32* %status, align 4, !dbg !1557
  %11 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %notify, align 8, !dbg !1558
  %next = getelementptr inbounds %struct.acpi_gpe_notify_info, %struct.acpi_gpe_notify_info* %11, i32 0, i32 1, !dbg !1559
  %12 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %next, align 8, !dbg !1559
  store %struct.acpi_gpe_notify_info* %12, %struct.acpi_gpe_notify_info** %notify, align 8, !dbg !1560
  br label %while.cond, !dbg !1548, !llvm.loop !1561

while.end:                                        ; preds = %land.end
  br label %sw.epilog, !dbg !1563

sw.bb4:                                           ; preds = %entry
  %call5 = call i8* @acpi_os_allocate_zeroed(i64 88) #8, !dbg !1564
  %13 = bitcast i8* %call5 to %struct.acpi_evaluate_info*, !dbg !1564
  store %struct.acpi_evaluate_info* %13, %struct.acpi_evaluate_info** %info, align 8, !dbg !1565
  %14 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1566
  %tobool6 = icmp ne %struct.acpi_evaluate_info* %14, null, !dbg !1566
  br i1 %tobool6, label %if.else, label %if.then, !dbg !1568

if.then:                                          ; preds = %sw.bb4
  store i32 4, i32* %status, align 4, !dbg !1569
  br label %if.end, !dbg !1571

if.else:                                          ; preds = %sw.bb4
  %15 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1572
  %dispatch7 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %15, i32 0, i32 0, !dbg !1574
  %method_node = bitcast %union.acpi_gpe_dispatch_info* %dispatch7 to %struct.acpi_namespace_node**, !dbg !1575
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node, align 8, !dbg !1575
  %17 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1576
  %prefix_node = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %17, i32 0, i32 0, !dbg !1577
  store %struct.acpi_namespace_node* %16, %struct.acpi_namespace_node** %prefix_node, align 8, !dbg !1578
  %18 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1579
  %flags8 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %18, i32 0, i32 15, !dbg !1580
  store i8 1, i8* %flags8, align 2, !dbg !1581
  %19 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1582
  %call9 = call i32 @acpi_ns_evaluate(%struct.acpi_evaluate_info* %19) #8, !dbg !1583
  store i32 %call9, i32* %status, align 4, !dbg !1584
  %20 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info, align 8, !dbg !1585
  %21 = bitcast %struct.acpi_evaluate_info* %20 to i8*, !dbg !1585
  call void @acpi_os_free(i8* %21) #8, !dbg !1585
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load i32, i32* %status, align 4, !dbg !1586
  %tobool10 = icmp ne i32 %22, 0, !dbg !1586
  br i1 %tobool10, label %if.then11, label %if.end15, !dbg !1588

if.then11:                                        ; preds = %if.end
  %23 = load i32, i32* %status, align 4, !dbg !1589
  %24 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1589
  %dispatch12 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %24, i32 0, i32 0, !dbg !1589
  %method_node13 = bitcast %union.acpi_gpe_dispatch_info* %dispatch12 to %struct.acpi_namespace_node**, !dbg !1589
  %25 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node13, align 8, !dbg !1589
  %26 = bitcast %struct.acpi_namespace_node* %25 to i8*, !dbg !1589
  %call14 = call i8* @acpi_ut_get_node_name(i8* %26) #8, !dbg !1589
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @_acpi_module_name, i64 0, i64 0), i32 511, i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %call14) #8, !dbg !1589
  br label %if.end15, !dbg !1591

if.end15:                                         ; preds = %if.then11, %if.end
  br label %sw.epilog, !dbg !1592

sw.default:                                       ; preds = %entry
  br label %error_exit, !dbg !1593

sw.epilog:                                        ; preds = %if.end15, %while.end
  %27 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1594
  %28 = bitcast %struct.acpi_gpe_event_info* %27 to i8*, !dbg !1594
  %call16 = call i32 @acpi_os_execute(i32 1, void (i8*)* @acpi_ev_asynch_enable_gpe, i8* %28) #8, !dbg !1595
  store i32 %call16, i32* %status, align 4, !dbg !1596
  %29 = load i32, i32* %status, align 4, !dbg !1597
  %tobool17 = icmp ne i32 %29, 0, !dbg !1597
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !1599

if.then18:                                        ; preds = %sw.epilog
  br label %return, !dbg !1600

if.end19:                                         ; preds = %sw.epilog
  br label %error_exit, !dbg !1597

error_exit:                                       ; preds = %if.end19, %sw.default
  call void @llvm.dbg.label(metadata !1602), !dbg !1603
  %30 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1604
  %31 = bitcast %struct.acpi_gpe_event_info* %30 to i8*, !dbg !1604
  call void @acpi_ev_asynch_enable_gpe(i8* %31) #8, !dbg !1605
  br label %return, !dbg !1606

return:                                           ; preds = %error_exit, %if.then18
  ret void, !dbg !1607
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_queue_notify_request(%struct.acpi_namespace_node*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !1608 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1612, metadata !DIExpression()), !dbg !1618
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1622, metadata !DIExpression()), !dbg !1623
  %0 = load i64, i64* %size.addr, align 8, !dbg !1624
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1625, metadata !DIExpression()), !dbg !1626
  br label %do.body, !dbg !1626

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1627, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1631, metadata !DIExpression()), !dbg !1630
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1630
  %conv = zext i1 %cmp to i32, !dbg !1630
  store i32 1, i32* %tmp, align 4, !dbg !1630
  %1 = load i32, i32* %tmp, align 4, !dbg !1630
  %call = call i64 @arch_local_save_flags() #8, !dbg !1632
  store i64 %call, i64* %_flags, align 8, !dbg !1632
  br label %do.end, !dbg !1632

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1633, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1636, metadata !DIExpression()), !dbg !1635
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1635
  %conv6 = zext i1 %cmp5 to i32, !dbg !1635
  store i32 1, i32* %tmp7, align 4, !dbg !1635
  %2 = load i32, i32* %tmp7, align 4, !dbg !1635
  %3 = load i64, i64* %_flags, align 8, !dbg !1637
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1638
  %and.i = and i64 %4, 512, !dbg !1639
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1640
  %lnot.i = xor i1 %tobool.i, true, !dbg !1640
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1640
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1637
  %5 = load i32, i32* %tmp8, align 4, !dbg !1637
  store i32 %5, i32* %tmp1, align 4, !dbg !1632
  %6 = load i32, i32* %tmp1, align 4, !dbg !1626
  %tobool = icmp ne i32 %6, 0, !dbg !1641
  %7 = zext i1 %tobool to i64, !dbg !1641
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1641
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #8, !dbg !1642
  ret i8* %call10, !dbg !1643
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_evaluate(%struct.acpi_evaluate_info*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1644 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1645, metadata !DIExpression()), !dbg !1646
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1647
  call void @kfree(i8* %0) #8, !dbg !1648
  ret void, !dbg !1649
}

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_node_name(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_ev_asynch_enable_gpe(i8* %context) #0 !dbg !1650 {
entry:
  %context.addr = alloca i8*, align 8
  %gpe_event_info = alloca %struct.acpi_gpe_event_info*, align 8
  %flags = alloca i64, align 8
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1651, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info, metadata !1653, metadata !DIExpression()), !dbg !1654
  %0 = load i8*, i8** %context.addr, align 8, !dbg !1655
  %1 = bitcast i8* %0 to %struct.acpi_gpe_event_info*, !dbg !1655
  store %struct.acpi_gpe_event_info* %1, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1654
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !1656, metadata !DIExpression()), !dbg !1657
  %2 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1658
  %call = call i64 @acpi_os_acquire_lock(%struct.spinlock* %2) #8, !dbg !1659
  store i64 %call, i64* %flags, align 8, !dbg !1660
  %3 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1661
  %call1 = call i32 @acpi_ev_finish_gpe(%struct.acpi_gpe_event_info* %3) #8, !dbg !1662
  %4 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1663
  %5 = load i64, i64* %flags, align 8, !dbg !1664
  call void @acpi_os_release_lock(%struct.spinlock* %4, i64 %5) #8, !dbg !1665
  ret void, !dbg !1666
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1667 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1674, metadata !DIExpression()), !dbg !1681
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1687, metadata !DIExpression()), !dbg !1688
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1689, metadata !DIExpression()), !dbg !1690
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1691, metadata !DIExpression()), !dbg !1692
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1693, metadata !DIExpression()), !dbg !1697
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1699, metadata !DIExpression()), !dbg !1703
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1705, metadata !DIExpression()), !dbg !1709
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1714, metadata !DIExpression()), !dbg !1715
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1716, metadata !DIExpression()), !dbg !1717
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1718, metadata !DIExpression()), !dbg !1719
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1720, metadata !DIExpression()), !dbg !1721
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1722, metadata !DIExpression()), !dbg !1723
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1724, metadata !DIExpression()), !dbg !1725
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1726, metadata !DIExpression()), !dbg !1727
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1728, metadata !DIExpression()), !dbg !1729
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1730, metadata !DIExpression()), !dbg !1731
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1732, metadata !DIExpression()), !dbg !1733
  %0 = load i64, i64* %size.addr, align 8, !dbg !1734
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1735
  %or = or i32 %1, 256, !dbg !1736
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1737
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !1738
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1739

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1740
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1741
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1742

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1743
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1744
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1745
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !1746
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1723
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1747
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1748
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1749
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1750
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1751
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1752
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !1753
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1753
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1753
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1753
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !1753
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1754
  br label %kmalloc.exit, !dbg !1754

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1755
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1756
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1756
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1758

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1759
  br label %kmalloc_index.exit.i, !dbg !1759

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1760
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1762
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1763

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1764
  br label %kmalloc_index.exit.i, !dbg !1764

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1765
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1767
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1768

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1769
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1770
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1771

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1772
  br label %kmalloc_index.exit.i, !dbg !1772

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1773
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1775
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1776

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1777
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1778
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1779

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1780
  br label %kmalloc_index.exit.i, !dbg !1780

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1781
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1783
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1784

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1785
  br label %kmalloc_index.exit.i, !dbg !1785

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1786
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1788
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1789

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1790
  br label %kmalloc_index.exit.i, !dbg !1790

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1791
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1793
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1794

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1795
  br label %kmalloc_index.exit.i, !dbg !1795

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1796
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1798
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1799

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1800
  br label %kmalloc_index.exit.i, !dbg !1800

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1801
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1803
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1804

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1805
  br label %kmalloc_index.exit.i, !dbg !1805

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1806
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1808
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1809

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1810
  br label %kmalloc_index.exit.i, !dbg !1810

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1811
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1813
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1814

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1815
  br label %kmalloc_index.exit.i, !dbg !1815

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1816
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1818
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1819

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1820
  br label %kmalloc_index.exit.i, !dbg !1820

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1821
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1823
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1824

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1825
  br label %kmalloc_index.exit.i, !dbg !1825

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1826
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1828
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1829

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1830
  br label %kmalloc_index.exit.i, !dbg !1830

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1831
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1833
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1834

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1835
  br label %kmalloc_index.exit.i, !dbg !1835

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1836
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1838
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1839

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1840
  br label %kmalloc_index.exit.i, !dbg !1840

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1841
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1843
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1844

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1845
  br label %kmalloc_index.exit.i, !dbg !1845

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1846
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1848
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1849

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1850
  br label %kmalloc_index.exit.i, !dbg !1850

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1851
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1853
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1854

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1855
  br label %kmalloc_index.exit.i, !dbg !1855

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1856
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1858
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1859

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1860
  br label %kmalloc_index.exit.i, !dbg !1860

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1861
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1863
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1864

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1865
  br label %kmalloc_index.exit.i, !dbg !1865

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1866
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1868
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1869

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1870
  br label %kmalloc_index.exit.i, !dbg !1870

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1871
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1873
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1874

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1875
  br label %kmalloc_index.exit.i, !dbg !1875

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1876
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1878
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1879

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1880
  br label %kmalloc_index.exit.i, !dbg !1880

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1881
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1883
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1884

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1885
  br label %kmalloc_index.exit.i, !dbg !1885

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1886
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1888
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1889

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1890
  br label %kmalloc_index.exit.i, !dbg !1890

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1891
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1893
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1894

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1895
  br label %kmalloc_index.exit.i, !dbg !1895

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1896
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1898
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1899

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1900
  br label %kmalloc_index.exit.i, !dbg !1900

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !1901, !srcloc !1904
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #7, !dbg !1905, !srcloc !1908
  unreachable, !dbg !1909

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1910
  store i32 %45, i32* %index.i, align 4, !dbg !1911
  %46 = load i32, i32* %index.i, align 4, !dbg !1912
  %tobool.i = icmp ne i32 %46, 0, !dbg !1912
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1914

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1915
  br label %kmalloc.exit, !dbg !1915

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1916
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1917
  %and.i.i = and i32 %48, 17, !dbg !1917
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1917
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1917
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1917
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1917
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1919

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1920
  br label %kmalloc_type.exit.i, !dbg !1920

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1921
  %and2.i.i = and i32 %49, 1, !dbg !1922
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1921
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1921
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1921
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1923
  br label %kmalloc_type.exit.i, !dbg !1923

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1924
  %idxprom.i = zext i32 %51 to i64, !dbg !1925
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1925
  %52 = load i32, i32* %index.i, align 4, !dbg !1926
  %idxprom6.i = zext i32 %52 to i64, !dbg !1925
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1925
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1925
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1927
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1928
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1929
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1930
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !1931
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1931
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1931
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1931
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !1931
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1692
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1932
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1933
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1934
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1935
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !1936
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1937
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1938
  store i8* %62, i8** %retval.i, align 8, !dbg !1939
  br label %kmalloc.exit, !dbg !1939

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1940
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1941
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !1942
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1942
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1942
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1942
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !1942
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1943
  br label %kmalloc.exit, !dbg !1943

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1944
  ret i8* %65, !dbg !1945
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1946 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1950, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1953, metadata !DIExpression()), !dbg !1952
  %0 = load i64, i64* %__edi, align 8, !dbg !1952
  store i64 %0, i64* %__edi, align 8, !dbg !1952
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1954, metadata !DIExpression()), !dbg !1952
  %1 = load i64, i64* %__esi, align 8, !dbg !1952
  store i64 %1, i64* %__esi, align 8, !dbg !1952
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1955, metadata !DIExpression()), !dbg !1952
  %2 = load i64, i64* %__edx, align 8, !dbg !1952
  store i64 %2, i64* %__edx, align 8, !dbg !1952
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1956, metadata !DIExpression()), !dbg !1952
  %3 = load i64, i64* %__ecx, align 8, !dbg !1952
  store i64 %3, i64* %__ecx, align 8, !dbg !1952
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1957, metadata !DIExpression()), !dbg !1952
  %4 = load i64, i64* %__eax, align 8, !dbg !1952
  store i64 %4, i64* %__eax, align 8, !dbg !1952
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1952
  %6 = call i64 @llvm.read_register.i64(metadata !807), !dbg !1958
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !1958, !srcloc !1961
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1958
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1958
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1958
  call void @llvm.write_register.i64(metadata !807, i64 %asmresult1), !dbg !1958
  %8 = load i64, i64* %__eax, align 8, !dbg !1958
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1962, metadata !DIExpression()), !dbg !1964
  store i64 -1, i64* %__mask, align 8, !dbg !1964
  %9 = load i64, i64* %__mask, align 8, !dbg !1964
  store i64 %9, i64* %tmp, align 8, !dbg !1964
  %10 = load i64, i64* %tmp, align 8, !dbg !1964
  %and = and i64 %8, %10, !dbg !1958
  store i64 %and, i64* %__ret, align 8, !dbg !1958
  %11 = load i64, i64* %__ret, align 8, !dbg !1952
  store i64 %11, i64* %tmp2, align 8, !dbg !1965
  %12 = load i64, i64* %tmp2, align 8, !dbg !1952
  ret i64 %12, !dbg !1966
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !1967 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1969, metadata !DIExpression()), !dbg !1974
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1976, metadata !DIExpression()), !dbg !1977
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1978, metadata !DIExpression()), !dbg !1979
  %0 = load i64, i64* %size.addr, align 8, !dbg !1980
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1982
  br i1 %1, label %if.then, label %if.end447, !dbg !1983

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1984
  %tobool = icmp ne i64 %2, 0, !dbg !1984
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1987

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1988
  br label %return, !dbg !1988

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1989
  %cmp = icmp ult i64 %3, 4096, !dbg !1991
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1992

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1993
  br label %return, !dbg !1993

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub = sub i64 %4, 1, !dbg !1994
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1994
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1994

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub4 = sub i64 %6, 1, !dbg !1994
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1994
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1994

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub6 = sub i64 %8, 1, !dbg !1994
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1994
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1994

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1994

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub9 = sub i64 %9, 1, !dbg !1994
  %and = and i64 %sub9, -9223372036854775808, !dbg !1994
  %tobool10 = icmp ne i64 %and, 0, !dbg !1994
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1994

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1994

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub13 = sub i64 %10, 1, !dbg !1994
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1994
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1994
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1994

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1994

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub18 = sub i64 %11, 1, !dbg !1994
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1994
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1994
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1994

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1994

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub23 = sub i64 %12, 1, !dbg !1994
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1994
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1994
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1994

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1994

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub28 = sub i64 %13, 1, !dbg !1994
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1994
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1994
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1994

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1994

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub33 = sub i64 %14, 1, !dbg !1994
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1994
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1994
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1994

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1994

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub38 = sub i64 %15, 1, !dbg !1994
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1994
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1994
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1994

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1994

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub43 = sub i64 %16, 1, !dbg !1994
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1994
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1994
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1994

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1994

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub48 = sub i64 %17, 1, !dbg !1994
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1994
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1994
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1994

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1994

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub53 = sub i64 %18, 1, !dbg !1994
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1994
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1994
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1994

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1994

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub58 = sub i64 %19, 1, !dbg !1994
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1994
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1994
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1994

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1994

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub63 = sub i64 %20, 1, !dbg !1994
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1994
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1994
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1994

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1994

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub68 = sub i64 %21, 1, !dbg !1994
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1994
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1994
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1994

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1994

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub73 = sub i64 %22, 1, !dbg !1994
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1994
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1994
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1994

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1994

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub78 = sub i64 %23, 1, !dbg !1994
  %and79 = and i64 %sub78, 562949953421312, !dbg !1994
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1994
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1994

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1994

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub83 = sub i64 %24, 1, !dbg !1994
  %and84 = and i64 %sub83, 281474976710656, !dbg !1994
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1994
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1994

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1994

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub88 = sub i64 %25, 1, !dbg !1994
  %and89 = and i64 %sub88, 140737488355328, !dbg !1994
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1994
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1994

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1994

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub93 = sub i64 %26, 1, !dbg !1994
  %and94 = and i64 %sub93, 70368744177664, !dbg !1994
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1994
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1994

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1994

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub98 = sub i64 %27, 1, !dbg !1994
  %and99 = and i64 %sub98, 35184372088832, !dbg !1994
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1994
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1994

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1994

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub103 = sub i64 %28, 1, !dbg !1994
  %and104 = and i64 %sub103, 17592186044416, !dbg !1994
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1994
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1994

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1994

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub108 = sub i64 %29, 1, !dbg !1994
  %and109 = and i64 %sub108, 8796093022208, !dbg !1994
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1994
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1994

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1994

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub113 = sub i64 %30, 1, !dbg !1994
  %and114 = and i64 %sub113, 4398046511104, !dbg !1994
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1994
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1994

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1994

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub118 = sub i64 %31, 1, !dbg !1994
  %and119 = and i64 %sub118, 2199023255552, !dbg !1994
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1994
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1994

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1994

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub123 = sub i64 %32, 1, !dbg !1994
  %and124 = and i64 %sub123, 1099511627776, !dbg !1994
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1994
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1994

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1994

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub128 = sub i64 %33, 1, !dbg !1994
  %and129 = and i64 %sub128, 549755813888, !dbg !1994
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1994
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1994

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1994

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub133 = sub i64 %34, 1, !dbg !1994
  %and134 = and i64 %sub133, 274877906944, !dbg !1994
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1994
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1994

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1994

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub138 = sub i64 %35, 1, !dbg !1994
  %and139 = and i64 %sub138, 137438953472, !dbg !1994
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1994
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1994

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1994

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub143 = sub i64 %36, 1, !dbg !1994
  %and144 = and i64 %sub143, 68719476736, !dbg !1994
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1994
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1994

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1994

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub148 = sub i64 %37, 1, !dbg !1994
  %and149 = and i64 %sub148, 34359738368, !dbg !1994
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1994
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1994

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1994

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub153 = sub i64 %38, 1, !dbg !1994
  %and154 = and i64 %sub153, 17179869184, !dbg !1994
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1994
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1994

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1994

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub158 = sub i64 %39, 1, !dbg !1994
  %and159 = and i64 %sub158, 8589934592, !dbg !1994
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1994
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1994

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1994

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub163 = sub i64 %40, 1, !dbg !1994
  %and164 = and i64 %sub163, 4294967296, !dbg !1994
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1994
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1994

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1994

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub168 = sub i64 %41, 1, !dbg !1994
  %and169 = and i64 %sub168, 2147483648, !dbg !1994
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1994
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1994

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1994

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub173 = sub i64 %42, 1, !dbg !1994
  %and174 = and i64 %sub173, 1073741824, !dbg !1994
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1994
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1994

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1994

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub178 = sub i64 %43, 1, !dbg !1994
  %and179 = and i64 %sub178, 536870912, !dbg !1994
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1994
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1994

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1994

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub183 = sub i64 %44, 1, !dbg !1994
  %and184 = and i64 %sub183, 268435456, !dbg !1994
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1994
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1994

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1994

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub188 = sub i64 %45, 1, !dbg !1994
  %and189 = and i64 %sub188, 134217728, !dbg !1994
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1994
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1994

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1994

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub193 = sub i64 %46, 1, !dbg !1994
  %and194 = and i64 %sub193, 67108864, !dbg !1994
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1994
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1994

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1994

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub198 = sub i64 %47, 1, !dbg !1994
  %and199 = and i64 %sub198, 33554432, !dbg !1994
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1994
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1994

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1994

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub203 = sub i64 %48, 1, !dbg !1994
  %and204 = and i64 %sub203, 16777216, !dbg !1994
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1994
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1994

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1994

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub208 = sub i64 %49, 1, !dbg !1994
  %and209 = and i64 %sub208, 8388608, !dbg !1994
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1994
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1994

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1994

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub213 = sub i64 %50, 1, !dbg !1994
  %and214 = and i64 %sub213, 4194304, !dbg !1994
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1994
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1994

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1994

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub218 = sub i64 %51, 1, !dbg !1994
  %and219 = and i64 %sub218, 2097152, !dbg !1994
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1994
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1994

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1994

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub223 = sub i64 %52, 1, !dbg !1994
  %and224 = and i64 %sub223, 1048576, !dbg !1994
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1994
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1994

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1994

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub228 = sub i64 %53, 1, !dbg !1994
  %and229 = and i64 %sub228, 524288, !dbg !1994
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1994
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1994

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1994

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub233 = sub i64 %54, 1, !dbg !1994
  %and234 = and i64 %sub233, 262144, !dbg !1994
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1994
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1994

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1994

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub238 = sub i64 %55, 1, !dbg !1994
  %and239 = and i64 %sub238, 131072, !dbg !1994
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1994
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1994

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1994

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub243 = sub i64 %56, 1, !dbg !1994
  %and244 = and i64 %sub243, 65536, !dbg !1994
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1994
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1994

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1994

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub248 = sub i64 %57, 1, !dbg !1994
  %and249 = and i64 %sub248, 32768, !dbg !1994
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1994
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1994

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1994

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub253 = sub i64 %58, 1, !dbg !1994
  %and254 = and i64 %sub253, 16384, !dbg !1994
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1994
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1994

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1994

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub258 = sub i64 %59, 1, !dbg !1994
  %and259 = and i64 %sub258, 8192, !dbg !1994
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1994
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1994

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1994

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub263 = sub i64 %60, 1, !dbg !1994
  %and264 = and i64 %sub263, 4096, !dbg !1994
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1994
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1994

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1994

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub268 = sub i64 %61, 1, !dbg !1994
  %and269 = and i64 %sub268, 2048, !dbg !1994
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1994
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1994

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1994

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub273 = sub i64 %62, 1, !dbg !1994
  %and274 = and i64 %sub273, 1024, !dbg !1994
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1994
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1994

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1994

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub278 = sub i64 %63, 1, !dbg !1994
  %and279 = and i64 %sub278, 512, !dbg !1994
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1994
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1994

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1994

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub283 = sub i64 %64, 1, !dbg !1994
  %and284 = and i64 %sub283, 256, !dbg !1994
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1994
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1994

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1994

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub288 = sub i64 %65, 1, !dbg !1994
  %and289 = and i64 %sub288, 128, !dbg !1994
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1994
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1994

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1994

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub293 = sub i64 %66, 1, !dbg !1994
  %and294 = and i64 %sub293, 64, !dbg !1994
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1994
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1994

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1994

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub298 = sub i64 %67, 1, !dbg !1994
  %and299 = and i64 %sub298, 32, !dbg !1994
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1994
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1994

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1994

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub303 = sub i64 %68, 1, !dbg !1994
  %and304 = and i64 %sub303, 16, !dbg !1994
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1994
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1994

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1994

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub308 = sub i64 %69, 1, !dbg !1994
  %and309 = and i64 %sub308, 8, !dbg !1994
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1994
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1994

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1994

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub313 = sub i64 %70, 1, !dbg !1994
  %and314 = and i64 %sub313, 4, !dbg !1994
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1994
  %71 = zext i1 %tobool315 to i64, !dbg !1994
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1994
  br label %cond.end, !dbg !1994

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1994
  br label %cond.end317, !dbg !1994

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1994
  br label %cond.end319, !dbg !1994

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1994
  br label %cond.end321, !dbg !1994

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1994
  br label %cond.end323, !dbg !1994

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1994
  br label %cond.end325, !dbg !1994

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1994
  br label %cond.end327, !dbg !1994

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1994
  br label %cond.end329, !dbg !1994

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1994
  br label %cond.end331, !dbg !1994

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1994
  br label %cond.end333, !dbg !1994

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1994
  br label %cond.end335, !dbg !1994

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1994
  br label %cond.end337, !dbg !1994

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1994
  br label %cond.end339, !dbg !1994

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1994
  br label %cond.end341, !dbg !1994

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1994
  br label %cond.end343, !dbg !1994

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1994
  br label %cond.end345, !dbg !1994

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1994
  br label %cond.end347, !dbg !1994

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1994
  br label %cond.end349, !dbg !1994

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1994
  br label %cond.end351, !dbg !1994

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1994
  br label %cond.end353, !dbg !1994

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1994
  br label %cond.end355, !dbg !1994

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1994
  br label %cond.end357, !dbg !1994

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1994
  br label %cond.end359, !dbg !1994

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1994
  br label %cond.end361, !dbg !1994

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1994
  br label %cond.end363, !dbg !1994

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1994
  br label %cond.end365, !dbg !1994

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1994
  br label %cond.end367, !dbg !1994

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1994
  br label %cond.end369, !dbg !1994

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1994
  br label %cond.end371, !dbg !1994

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1994
  br label %cond.end373, !dbg !1994

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1994
  br label %cond.end375, !dbg !1994

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1994
  br label %cond.end377, !dbg !1994

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1994
  br label %cond.end379, !dbg !1994

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1994
  br label %cond.end381, !dbg !1994

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1994
  br label %cond.end383, !dbg !1994

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1994
  br label %cond.end385, !dbg !1994

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1994
  br label %cond.end387, !dbg !1994

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1994
  br label %cond.end389, !dbg !1994

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1994
  br label %cond.end391, !dbg !1994

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1994
  br label %cond.end393, !dbg !1994

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1994
  br label %cond.end395, !dbg !1994

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1994
  br label %cond.end397, !dbg !1994

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1994
  br label %cond.end399, !dbg !1994

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1994
  br label %cond.end401, !dbg !1994

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1994
  br label %cond.end403, !dbg !1994

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1994
  br label %cond.end405, !dbg !1994

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1994
  br label %cond.end407, !dbg !1994

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1994
  br label %cond.end409, !dbg !1994

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1994
  br label %cond.end411, !dbg !1994

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1994
  br label %cond.end413, !dbg !1994

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1994
  br label %cond.end415, !dbg !1994

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1994
  br label %cond.end417, !dbg !1994

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1994
  br label %cond.end419, !dbg !1994

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1994
  br label %cond.end421, !dbg !1994

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1994
  br label %cond.end423, !dbg !1994

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1994
  br label %cond.end425, !dbg !1994

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1994
  br label %cond.end427, !dbg !1994

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1994
  br label %cond.end429, !dbg !1994

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1994
  br label %cond.end431, !dbg !1994

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1994
  br label %cond.end433, !dbg !1994

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1994
  br label %cond.end435, !dbg !1994

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1994
  br label %cond.end437, !dbg !1994

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1994
  br label %cond.end440, !dbg !1994

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1994

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1994
  br label %cond.end444, !dbg !1994

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1994
  %sub443 = sub i64 %72, 1, !dbg !1994
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !1994
  br label %cond.end444, !dbg !1994

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1994
  %sub446 = sub i32 %cond445, 12, !dbg !1995
  %add = add i32 %sub446, 1, !dbg !1996
  store i32 %add, i32* %retval, align 4, !dbg !1997
  br label %return, !dbg !1997

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1998
  %dec = add i64 %73, -1, !dbg !1998
  store i64 %dec, i64* %size.addr, align 8, !dbg !1998
  %74 = load i64, i64* %size.addr, align 8, !dbg !1999
  %shr = lshr i64 %74, 12, !dbg !1999
  store i64 %shr, i64* %size.addr, align 8, !dbg !1999
  %75 = load i64, i64* %size.addr, align 8, !dbg !2000
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1977
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2001
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2002
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !2001, !srcloc !2003
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2001
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2004
  %add.i = add i32 %79, 1, !dbg !2005
  store i32 %add.i, i32* %retval, align 4, !dbg !2006
  br label %return, !dbg !2006

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2007
  ret i32 %80, !dbg !2007
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !2008 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1969, metadata !DIExpression()), !dbg !2012
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1976, metadata !DIExpression()), !dbg !2014
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2015, metadata !DIExpression()), !dbg !2016
  %0 = load i64, i64* %n.addr, align 8, !dbg !2017
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2014
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2018
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2019
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !2018, !srcloc !2003
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2018
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2020
  %add.i = add i32 %4, 1, !dbg !2021
  %sub = sub i32 %add.i, 1, !dbg !2022
  ret i32 %sub, !dbg !2023
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !2024 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2030, metadata !DIExpression()), !dbg !2031
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2032, metadata !DIExpression()), !dbg !2033
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2034, metadata !DIExpression()), !dbg !2035
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2036, metadata !DIExpression()), !dbg !2037
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2038
  ret i8* %0, !dbg !2039
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
!llvm.named.register.rsp = !{!807}
!llvm.module.flags = !{!808, !809, !810, !811}
!llvm.ident = !{!812}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !803, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !23, globals: !802, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evgpe.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !16}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 20, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15}
!9 = !DIEnumerator(name: "OSL_GLOBAL_LOCK_HANDLER", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "OSL_NOTIFY_HANDLER", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "OSL_GPE_HANDLER", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "OSL_DEBUGGER_MAIN_THREAD", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "OSL_DEBUGGER_EXEC_THREAD", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "OSL_EC_POLL_HANDLER", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "OSL_EC_BURST_HANDLER", value: 6, isUnsigned: true)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !17, line: 305, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!18 = !{!19, !20, !21, !22}
!19 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!20 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!21 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!22 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!23 = !{!24, !30, !33, !798, !799, !118, !801}
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !25, line: 421, baseType: !26)
!25 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !27, line: 21, baseType: !28)
!27 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !29, line: 27, baseType: !7)
!29 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !27, line: 17, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !29, line: 21, baseType: !32)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !35, line: 133, size: 384, elements: !36)
!35 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !785, !786, !787, !788, !794, !795, !796, !797}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !34, file: !35, line: 134, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !40, line: 367, size: 576, elements: !41)
!40 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!41 = !{!42, !53, !69, !81, !95, !109, !119, !436, !453, !468, !481, !559, !571, !585, !595, !613, !635, !654, !673, !692, !705, !731, !748, !761, !775, !784}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !39, file: !40, line: 368, baseType: !43, size: 128)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !40, line: 73, size: 128, elements: !44)
!44 = !{!45, !46, !47, !48, !52}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !43, file: !40, line: 74, baseType: !38, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !43, file: !40, line: 74, baseType: !30, size: 8, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !43, file: !40, line: 74, baseType: !30, size: 8, offset: 72)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !43, file: !40, line: 74, baseType: !49, size: 16, offset: 80)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !27, line: 19, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !29, line: 24, baseType: !51)
!51 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !43, file: !40, line: 74, baseType: !30, size: 8, offset: 96)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !39, file: !40, line: 369, baseType: !54, size: 192)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !40, line: 76, size: 192, elements: !55)
!55 = !{!56, !57, !58, !59, !60, !61, !65}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !54, file: !40, line: 77, baseType: !38, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !54, file: !40, line: 77, baseType: !30, size: 8, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !54, file: !40, line: 77, baseType: !30, size: 8, offset: 72)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !54, file: !40, line: 77, baseType: !49, size: 16, offset: 80)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !54, file: !40, line: 77, baseType: !30, size: 8, offset: 96)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !54, file: !40, line: 77, baseType: !62, size: 24, offset: 104)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 24, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 3)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !54, file: !40, line: 78, baseType: !66, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !27, line: 23, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !29, line: 31, baseType: !68)
!68 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !39, file: !40, line: 370, baseType: !70, size: 256)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !40, line: 93, size: 256, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !80}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !70, file: !40, line: 94, baseType: !38, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !70, file: !40, line: 94, baseType: !30, size: 8, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !40, line: 94, baseType: !30, size: 8, offset: 72)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !70, file: !40, line: 94, baseType: !49, size: 16, offset: 80)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !70, file: !40, line: 94, baseType: !30, size: 8, offset: 96)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !70, file: !40, line: 94, baseType: !78, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !70, file: !40, line: 94, baseType: !26, size: 32, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !39, file: !40, line: 371, baseType: !82, size: 384)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !40, line: 97, size: 384, elements: !83)
!83 = !{!84, !85, !86, !87, !88, !89, !91, !92, !93, !94}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !82, file: !40, line: 98, baseType: !38, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !82, file: !40, line: 98, baseType: !30, size: 8, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !40, line: 98, baseType: !30, size: 8, offset: 72)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !82, file: !40, line: 98, baseType: !49, size: 16, offset: 80)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !82, file: !40, line: 98, baseType: !30, size: 8, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !82, file: !40, line: 98, baseType: !90, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !82, file: !40, line: 98, baseType: !26, size: 32, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !82, file: !40, line: 99, baseType: !26, size: 32, offset: 224)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !82, file: !40, line: 100, baseType: !90, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !82, file: !40, line: 101, baseType: !33, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !39, file: !40, line: 372, baseType: !96, size: 384)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !40, line: 104, size: 384, elements: !97)
!97 = !{!98, !99, !100, !101, !102, !103, !104, !106, !107, !108}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !96, file: !40, line: 105, baseType: !38, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !96, file: !40, line: 105, baseType: !30, size: 8, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !96, file: !40, line: 105, baseType: !30, size: 8, offset: 72)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !96, file: !40, line: 105, baseType: !49, size: 16, offset: 80)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !96, file: !40, line: 105, baseType: !30, size: 8, offset: 96)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !96, file: !40, line: 105, baseType: !33, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !96, file: !40, line: 106, baseType: !105, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !96, file: !40, line: 107, baseType: !90, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !96, file: !40, line: 108, baseType: !26, size: 32, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !96, file: !40, line: 109, baseType: !26, size: 32, offset: 352)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !39, file: !40, line: 373, baseType: !110, size: 192)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !40, line: 118, size: 192, elements: !111)
!111 = !{!112, !113, !114, !115, !116, !117}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !110, file: !40, line: 119, baseType: !38, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !110, file: !40, line: 119, baseType: !30, size: 8, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !110, file: !40, line: 119, baseType: !30, size: 8, offset: 72)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !110, file: !40, line: 119, baseType: !49, size: 16, offset: 80)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !110, file: !40, line: 119, baseType: !30, size: 8, offset: 96)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !110, file: !40, line: 119, baseType: !118, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !39, file: !40, line: 374, baseType: !120, size: 448)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !40, line: 143, size: 448, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !433, !434, !435}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !120, file: !40, line: 144, baseType: !38, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !120, file: !40, line: 144, baseType: !30, size: 8, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !120, file: !40, line: 144, baseType: !30, size: 8, offset: 72)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !120, file: !40, line: 144, baseType: !49, size: 16, offset: 80)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !120, file: !40, line: 144, baseType: !30, size: 8, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !120, file: !40, line: 144, baseType: !30, size: 8, offset: 104)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !120, file: !40, line: 145, baseType: !30, size: 8, offset: 112)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !120, file: !40, line: 146, baseType: !30, size: 8, offset: 120)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !120, file: !40, line: 147, baseType: !38, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !120, file: !40, line: 148, baseType: !38, size: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !120, file: !40, line: 149, baseType: !90, size: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !120, file: !40, line: 153, baseType: !134, size: 64, offset: 320)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !120, file: !40, line: 150, size: 64, elements: !135)
!135 = !{!136, !432}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !134, file: !40, line: 151, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !35, line: 248, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!24, !141}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !143, line: 37, size: 9024, elements: !144)
!143 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !378, !379, !380, !381, !382, !386, !388, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !415, !416, !417, !418, !419, !420, !421, !422, !424, !430}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !142, file: !143, line: 38, baseType: !141, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !142, file: !143, line: 39, baseType: !30, size: 8, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !142, file: !143, line: 40, baseType: !30, size: 8, offset: 72)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !142, file: !143, line: 41, baseType: !49, size: 16, offset: 80)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !142, file: !143, line: 42, baseType: !30, size: 8, offset: 96)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !142, file: !143, line: 43, baseType: !30, size: 8, offset: 104)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !142, file: !143, line: 44, baseType: !30, size: 8, offset: 112)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !142, file: !143, line: 45, baseType: !153, size: 16, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !25, line: 445, baseType: !49)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !142, file: !143, line: 46, baseType: !30, size: 8, offset: 144)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !142, file: !143, line: 47, baseType: !30, size: 8, offset: 152)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !142, file: !143, line: 48, baseType: !30, size: 8, offset: 160)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !142, file: !143, line: 49, baseType: !30, size: 8, offset: 168)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !142, file: !143, line: 50, baseType: !30, size: 8, offset: 176)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !142, file: !143, line: 51, baseType: !30, size: 8, offset: 184)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !142, file: !143, line: 52, baseType: !30, size: 8, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !142, file: !143, line: 53, baseType: !30, size: 8, offset: 200)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !142, file: !143, line: 54, baseType: !90, size: 64, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !142, file: !143, line: 55, baseType: !26, size: 32, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !142, file: !143, line: 56, baseType: !26, size: 32, offset: 352)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !142, file: !143, line: 57, baseType: !26, size: 32, offset: 384)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !142, file: !143, line: 58, baseType: !26, size: 32, offset: 416)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !142, file: !143, line: 60, baseType: !168, size: 640, offset: 448)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !35, line: 893, size: 640, elements: !169)
!169 = !{!170, !171, !172, !173, !174, !175, !259, !260, !376, !377}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !168, file: !35, line: 894, baseType: !90, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !168, file: !35, line: 895, baseType: !90, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !168, file: !35, line: 896, baseType: !90, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !168, file: !35, line: 897, baseType: !90, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !168, file: !35, line: 898, baseType: !90, size: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !168, file: !35, line: 899, baseType: !176, size: 64, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !35, line: 875, size: 1600, elements: !178)
!178 = !{!179, !199, !215}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !177, file: !35, line: 876, baseType: !180, size: 448)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !35, line: 828, size: 448, elements: !181)
!181 = !{!182, !183, !184, !185, !186, !187, !188, !189, !198}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !180, file: !35, line: 829, baseType: !176, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !180, file: !35, line: 829, baseType: !30, size: 8, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !180, file: !35, line: 829, baseType: !30, size: 8, offset: 72)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !180, file: !35, line: 829, baseType: !49, size: 16, offset: 80)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !180, file: !35, line: 829, baseType: !90, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !180, file: !35, line: 829, baseType: !176, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !180, file: !35, line: 829, baseType: !33, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !180, file: !35, line: 829, baseType: !190, size: 64, offset: 320)
!190 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !35, line: 716, size: 64, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !190, file: !35, line: 717, baseType: !66, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !190, file: !35, line: 718, baseType: !26, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !190, file: !35, line: 719, baseType: !78, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !190, file: !35, line: 720, baseType: !90, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !190, file: !35, line: 721, baseType: !78, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !190, file: !35, line: 722, baseType: !176, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !180, file: !35, line: 829, baseType: !30, size: 8, offset: 384)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !177, file: !35, line: 877, baseType: !200, size: 640)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !35, line: 835, size: 640, elements: !201)
!201 = !{!202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !200, file: !35, line: 836, baseType: !176, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !200, file: !35, line: 836, baseType: !30, size: 8, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !200, file: !35, line: 836, baseType: !30, size: 8, offset: 72)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !200, file: !35, line: 836, baseType: !49, size: 16, offset: 80)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !200, file: !35, line: 836, baseType: !90, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !200, file: !35, line: 836, baseType: !176, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !200, file: !35, line: 836, baseType: !33, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !200, file: !35, line: 836, baseType: !190, size: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !200, file: !35, line: 836, baseType: !30, size: 8, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !200, file: !35, line: 836, baseType: !78, size: 64, offset: 448)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !200, file: !35, line: 837, baseType: !90, size: 64, offset: 512)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !200, file: !35, line: 838, baseType: !26, size: 32, offset: 576)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !200, file: !35, line: 839, baseType: !26, size: 32, offset: 608)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !177, file: !35, line: 878, baseType: !216, size: 1600)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !35, line: 846, size: 1600, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !216, file: !35, line: 847, baseType: !176, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !216, file: !35, line: 847, baseType: !30, size: 8, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !216, file: !35, line: 847, baseType: !30, size: 8, offset: 72)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !216, file: !35, line: 847, baseType: !49, size: 16, offset: 80)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !216, file: !35, line: 847, baseType: !90, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !216, file: !35, line: 847, baseType: !176, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !216, file: !35, line: 847, baseType: !33, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !216, file: !35, line: 847, baseType: !190, size: 64, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !216, file: !35, line: 847, baseType: !30, size: 8, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !216, file: !35, line: 847, baseType: !176, size: 64, offset: 448)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !216, file: !35, line: 848, baseType: !176, size: 64, offset: 512)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !216, file: !35, line: 849, baseType: !78, size: 64, offset: 576)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !216, file: !35, line: 850, baseType: !30, size: 8, offset: 640)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !216, file: !35, line: 851, baseType: !78, size: 64, offset: 704)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !216, file: !35, line: 852, baseType: !78, size: 64, offset: 768)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !216, file: !35, line: 853, baseType: !78, size: 64, offset: 832)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !216, file: !35, line: 854, baseType: !235, size: 32, offset: 896)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 32, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 4)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !216, file: !35, line: 855, baseType: !26, size: 32, offset: 928)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !216, file: !35, line: 856, baseType: !26, size: 32, offset: 960)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !216, file: !35, line: 857, baseType: !26, size: 32, offset: 992)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !216, file: !35, line: 858, baseType: !26, size: 32, offset: 1024)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !216, file: !35, line: 859, baseType: !26, size: 32, offset: 1056)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !216, file: !35, line: 860, baseType: !26, size: 32, offset: 1088)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !216, file: !35, line: 861, baseType: !26, size: 32, offset: 1120)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !216, file: !35, line: 862, baseType: !26, size: 32, offset: 1152)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !216, file: !35, line: 863, baseType: !26, size: 32, offset: 1184)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !216, file: !35, line: 864, baseType: !26, size: 32, offset: 1216)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !216, file: !35, line: 865, baseType: !26, size: 32, offset: 1248)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !216, file: !35, line: 866, baseType: !26, size: 32, offset: 1280)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !216, file: !35, line: 867, baseType: !26, size: 32, offset: 1312)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !216, file: !35, line: 868, baseType: !49, size: 16, offset: 1344)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !216, file: !35, line: 869, baseType: !30, size: 8, offset: 1360)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !216, file: !35, line: 870, baseType: !30, size: 8, offset: 1368)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !216, file: !35, line: 871, baseType: !30, size: 8, offset: 1376)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !216, file: !35, line: 872, baseType: !256, size: 160, offset: 1384)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 160, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 20)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !168, file: !35, line: 900, baseType: !33, size: 64, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !168, file: !35, line: 901, baseType: !261, size: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !35, line: 663, size: 640, elements: !263)
!263 = !{!264, !272, !285, !294, !303, !316, !330, !342, !354}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !262, file: !35, line: 664, baseType: !265, size: 128)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !35, line: 567, size: 128, elements: !266)
!266 = !{!267, !268, !269, !270, !271}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !35, line: 568, baseType: !118, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !265, file: !35, line: 568, baseType: !30, size: 8, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !265, file: !35, line: 568, baseType: !30, size: 8, offset: 72)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !265, file: !35, line: 568, baseType: !49, size: 16, offset: 80)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !265, file: !35, line: 568, baseType: !49, size: 16, offset: 96)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !262, file: !35, line: 665, baseType: !273, size: 384)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !35, line: 593, size: 384, elements: !274)
!274 = !{!275, !276, !277, !278, !279, !280, !281, !282, !283, !284}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !273, file: !35, line: 594, baseType: !118, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !273, file: !35, line: 594, baseType: !30, size: 8, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !273, file: !35, line: 594, baseType: !30, size: 8, offset: 72)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !273, file: !35, line: 594, baseType: !49, size: 16, offset: 80)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !273, file: !35, line: 594, baseType: !49, size: 16, offset: 96)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !273, file: !35, line: 594, baseType: !49, size: 16, offset: 112)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !273, file: !35, line: 595, baseType: !176, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !273, file: !35, line: 596, baseType: !90, size: 64, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !273, file: !35, line: 597, baseType: !90, size: 64, offset: 256)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !273, file: !35, line: 598, baseType: !66, size: 64, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !262, file: !35, line: 666, baseType: !286, size: 192)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !35, line: 573, size: 192, elements: !287)
!287 = !{!288, !289, !290, !291, !292, !293}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !286, file: !35, line: 574, baseType: !118, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !286, file: !35, line: 574, baseType: !30, size: 8, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !286, file: !35, line: 574, baseType: !30, size: 8, offset: 72)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !286, file: !35, line: 574, baseType: !49, size: 16, offset: 80)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !286, file: !35, line: 574, baseType: !49, size: 16, offset: 96)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !286, file: !35, line: 574, baseType: !38, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !262, file: !35, line: 667, baseType: !295, size: 192)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !35, line: 604, size: 192, elements: !296)
!296 = !{!297, !298, !299, !300, !301, !302}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !35, line: 605, baseType: !118, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !295, file: !35, line: 605, baseType: !30, size: 8, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !35, line: 605, baseType: !30, size: 8, offset: 72)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !295, file: !35, line: 605, baseType: !49, size: 16, offset: 80)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !295, file: !35, line: 605, baseType: !49, size: 16, offset: 96)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !295, file: !35, line: 605, baseType: !33, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !262, file: !35, line: 668, baseType: !304, size: 448)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !35, line: 608, size: 448, elements: !305)
!305 = !{!306, !307, !308, !309, !310, !311, !312, !313, !314, !315}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !304, file: !35, line: 609, baseType: !118, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !304, file: !35, line: 609, baseType: !30, size: 8, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !304, file: !35, line: 609, baseType: !30, size: 8, offset: 72)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !304, file: !35, line: 609, baseType: !49, size: 16, offset: 80)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !304, file: !35, line: 609, baseType: !49, size: 16, offset: 96)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !304, file: !35, line: 609, baseType: !26, size: 32, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !304, file: !35, line: 610, baseType: !176, size: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !304, file: !35, line: 611, baseType: !90, size: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !304, file: !35, line: 612, baseType: !90, size: 64, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !304, file: !35, line: 613, baseType: !26, size: 32, offset: 384)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !262, file: !35, line: 669, baseType: !317, size: 512)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !35, line: 580, size: 512, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !35, line: 581, baseType: !118, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !317, file: !35, line: 581, baseType: !30, size: 8, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !317, file: !35, line: 581, baseType: !30, size: 8, offset: 72)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !317, file: !35, line: 581, baseType: !49, size: 16, offset: 80)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !317, file: !35, line: 581, baseType: !49, size: 16, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !317, file: !35, line: 581, baseType: !26, size: 32, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !317, file: !35, line: 582, baseType: !38, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !317, file: !35, line: 583, baseType: !38, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !317, file: !35, line: 584, baseType: !141, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !317, file: !35, line: 585, baseType: !118, size: 64, offset: 384)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !317, file: !35, line: 586, baseType: !26, size: 32, offset: 448)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !262, file: !35, line: 670, baseType: !331, size: 320)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !35, line: 620, size: 320, elements: !332)
!332 = !{!333, !334, !335, !336, !337, !338, !339, !340, !341}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !331, file: !35, line: 621, baseType: !118, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !331, file: !35, line: 621, baseType: !30, size: 8, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !331, file: !35, line: 621, baseType: !30, size: 8, offset: 72)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !331, file: !35, line: 621, baseType: !49, size: 16, offset: 80)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !331, file: !35, line: 621, baseType: !49, size: 16, offset: 96)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !331, file: !35, line: 621, baseType: !30, size: 8, offset: 112)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !331, file: !35, line: 622, baseType: !141, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !331, file: !35, line: 623, baseType: !38, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !331, file: !35, line: 624, baseType: !66, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !262, file: !35, line: 671, baseType: !343, size: 640)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !35, line: 631, size: 640, elements: !344)
!344 = !{!345, !346, !347, !348, !349, !350}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !343, file: !35, line: 632, baseType: !118, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !343, file: !35, line: 632, baseType: !30, size: 8, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !343, file: !35, line: 632, baseType: !30, size: 8, offset: 72)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !343, file: !35, line: 632, baseType: !49, size: 16, offset: 80)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !343, file: !35, line: 632, baseType: !49, size: 16, offset: 96)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !343, file: !35, line: 633, baseType: !351, size: 512, offset: 128)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 512, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 8)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !262, file: !35, line: 672, baseType: !355, size: 320)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !35, line: 654, size: 320, elements: !356)
!356 = !{!357, !358, !359, !360, !361, !362, !363, !364, !365}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !355, file: !35, line: 655, baseType: !118, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !355, file: !35, line: 655, baseType: !30, size: 8, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !355, file: !35, line: 655, baseType: !30, size: 8, offset: 72)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !355, file: !35, line: 655, baseType: !49, size: 16, offset: 80)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !355, file: !35, line: 655, baseType: !49, size: 16, offset: 96)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !355, file: !35, line: 655, baseType: !30, size: 8, offset: 112)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !355, file: !35, line: 656, baseType: !33, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !355, file: !35, line: 657, baseType: !38, size: 64, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !355, file: !35, line: 658, baseType: !366, size: 64, offset: 256)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !35, line: 645, size: 128, elements: !368)
!368 = !{!369, !375}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !367, file: !35, line: 646, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !25, line: 1052, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !374, !26, !118}
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !25, line: 424, baseType: !118)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !367, file: !35, line: 647, baseType: !118, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !168, file: !35, line: 902, baseType: !176, size: 64, offset: 512)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !168, file: !35, line: 903, baseType: !26, size: 32, offset: 576)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !142, file: !143, line: 61, baseType: !26, size: 32, offset: 1088)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !142, file: !143, line: 62, baseType: !26, size: 32, offset: 1120)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !142, file: !143, line: 63, baseType: !49, size: 16, offset: 1152)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !142, file: !143, line: 64, baseType: !30, size: 8, offset: 1168)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !142, file: !143, line: 66, baseType: !383, size: 2688, offset: 1216)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 2688, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 7)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !142, file: !143, line: 67, baseType: !387, size: 3072, offset: 3904)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 3072, elements: !352)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !142, file: !143, line: 68, baseType: !389, size: 576, offset: 6976)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 576, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 9)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !142, file: !143, line: 69, baseType: !105, size: 64, offset: 7552)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !142, file: !143, line: 71, baseType: !90, size: 64, offset: 7616)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !142, file: !143, line: 72, baseType: !105, size: 64, offset: 7680)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !142, file: !143, line: 73, baseType: !261, size: 64, offset: 7744)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !142, file: !143, line: 74, baseType: !33, size: 64, offset: 7808)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !142, file: !143, line: 75, baseType: !38, size: 64, offset: 7872)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !142, file: !143, line: 76, baseType: !33, size: 64, offset: 7936)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !142, file: !143, line: 77, baseType: !176, size: 64, offset: 8000)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !142, file: !143, line: 78, baseType: !38, size: 64, offset: 8064)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !142, file: !143, line: 79, baseType: !33, size: 64, offset: 8128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !142, file: !143, line: 80, baseType: !78, size: 64, offset: 8192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !142, file: !143, line: 81, baseType: !176, size: 64, offset: 8256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !142, file: !143, line: 82, baseType: !405, size: 64, offset: 8320)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !35, line: 702, size: 128, elements: !408)
!408 = !{!409, !410, !411, !412, !413, !414}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !407, file: !35, line: 706, baseType: !26, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !407, file: !35, line: 707, baseType: !26, size: 32, offset: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !407, file: !35, line: 708, baseType: !49, size: 16, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !407, file: !35, line: 709, baseType: !30, size: 8, offset: 80)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !407, file: !35, line: 710, baseType: !30, size: 8, offset: 88)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !407, file: !35, line: 711, baseType: !30, size: 8, offset: 96)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !142, file: !143, line: 83, baseType: !176, size: 64, offset: 8384)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !142, file: !143, line: 84, baseType: !38, size: 64, offset: 8448)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !142, file: !143, line: 85, baseType: !261, size: 64, offset: 8512)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !142, file: !143, line: 86, baseType: !38, size: 64, offset: 8576)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !142, file: !143, line: 87, baseType: !261, size: 64, offset: 8640)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !142, file: !143, line: 88, baseType: !176, size: 64, offset: 8704)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !142, file: !143, line: 89, baseType: !176, size: 64, offset: 8768)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !142, file: !143, line: 90, baseType: !423, size: 64, offset: 8832)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !142, file: !143, line: 91, baseType: !425, size: 64, offset: 8896)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !35, line: 637, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!24, !141, !429}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !142, file: !143, line: 92, baseType: !431, size: 64, offset: 8960)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !35, line: 641, baseType: !138)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !134, file: !40, line: 152, baseType: !38, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !120, file: !40, line: 155, baseType: !26, size: 32, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !120, file: !40, line: 156, baseType: !153, size: 16, offset: 416)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !120, file: !40, line: 157, baseType: !30, size: 8, offset: 432)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !39, file: !40, line: 375, baseType: !437, size: 576)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !40, line: 122, size: 576, elements: !438)
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !437, file: !40, line: 123, baseType: !38, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !437, file: !40, line: 123, baseType: !30, size: 8, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !437, file: !40, line: 123, baseType: !30, size: 8, offset: 72)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !437, file: !40, line: 123, baseType: !49, size: 16, offset: 80)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !437, file: !40, line: 123, baseType: !30, size: 8, offset: 96)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !437, file: !40, line: 123, baseType: !30, size: 8, offset: 104)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !437, file: !40, line: 124, baseType: !49, size: 16, offset: 112)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !437, file: !40, line: 125, baseType: !118, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !437, file: !40, line: 126, baseType: !66, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !437, file: !40, line: 127, baseType: !423, size: 64, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !437, file: !40, line: 128, baseType: !38, size: 64, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !437, file: !40, line: 129, baseType: !38, size: 64, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !437, file: !40, line: 130, baseType: !33, size: 64, offset: 448)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !437, file: !40, line: 131, baseType: !30, size: 8, offset: 512)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !39, file: !40, line: 376, baseType: !454, size: 448)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !40, line: 134, size: 448, elements: !455)
!455 = !{!456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !467}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !454, file: !40, line: 135, baseType: !38, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !454, file: !40, line: 135, baseType: !30, size: 8, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !454, file: !40, line: 135, baseType: !30, size: 8, offset: 72)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !454, file: !40, line: 135, baseType: !49, size: 16, offset: 80)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !454, file: !40, line: 135, baseType: !30, size: 8, offset: 96)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !454, file: !40, line: 135, baseType: !30, size: 8, offset: 104)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !454, file: !40, line: 136, baseType: !33, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !454, file: !40, line: 137, baseType: !38, size: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !454, file: !40, line: 138, baseType: !38, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !454, file: !40, line: 139, baseType: !466, size: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !25, line: 129, baseType: !66)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !454, file: !40, line: 140, baseType: !26, size: 32, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !39, file: !40, line: 377, baseType: !469, size: 320)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !40, line: 184, size: 320, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !480}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !469, file: !40, line: 185, baseType: !38, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !469, file: !40, line: 185, baseType: !30, size: 8, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !469, file: !40, line: 185, baseType: !30, size: 8, offset: 72)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !469, file: !40, line: 185, baseType: !49, size: 16, offset: 80)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !40, line: 185, baseType: !30, size: 8, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !469, file: !40, line: 185, baseType: !477, size: 128, offset: 128)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 128, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 2)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !469, file: !40, line: 185, baseType: !38, size: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !39, file: !40, line: 378, baseType: !482, size: 384)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !40, line: 187, size: 384, elements: !483)
!483 = !{!484, !485, !486, !487, !488, !489, !490, !491}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !482, file: !40, line: 188, baseType: !38, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !482, file: !40, line: 188, baseType: !30, size: 8, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !482, file: !40, line: 188, baseType: !30, size: 8, offset: 72)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !482, file: !40, line: 188, baseType: !49, size: 16, offset: 80)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !482, file: !40, line: 188, baseType: !30, size: 8, offset: 96)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !482, file: !40, line: 189, baseType: !477, size: 128, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !482, file: !40, line: 189, baseType: !38, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !482, file: !40, line: 189, baseType: !492, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !35, line: 480, size: 576, elements: !494)
!494 = !{!495, !496, !497, !498, !506, !521, !553, !554, !555, !556, !557, !558}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !493, file: !35, line: 481, baseType: !33, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !493, file: !35, line: 482, baseType: !492, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !493, file: !35, line: 483, baseType: !492, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !493, file: !35, line: 484, baseType: !499, size: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !35, line: 497, size: 256, elements: !501)
!501 = !{!502, !503, !504, !505}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !500, file: !35, line: 498, baseType: !499, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !500, file: !35, line: 499, baseType: !499, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !500, file: !35, line: 500, baseType: !492, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !500, file: !35, line: 501, baseType: !26, size: 32, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !493, file: !35, line: 485, baseType: !507, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !35, line: 466, size: 320, elements: !509)
!509 = !{!510, !515, !516, !517, !518, !519, !520}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !508, file: !35, line: 467, baseType: !511, size: 128)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !35, line: 459, size: 128, elements: !512)
!512 = !{!513, !514}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !511, file: !35, line: 460, baseType: !30, size: 8)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !511, file: !35, line: 461, baseType: !66, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !508, file: !35, line: 468, baseType: !511, size: 128, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !508, file: !35, line: 469, baseType: !49, size: 16, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !508, file: !35, line: 470, baseType: !30, size: 8, offset: 272)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !508, file: !35, line: 471, baseType: !30, size: 8, offset: 280)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !508, file: !35, line: 472, baseType: !30, size: 8, offset: 288)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !508, file: !35, line: 473, baseType: !30, size: 8, offset: 296)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !493, file: !35, line: 486, baseType: !522, size: 64, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !35, line: 448, size: 192, elements: !524)
!524 = !{!525, !548, !549, !550, !551, !552}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !523, file: !35, line: 449, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !35, line: 438, size: 64, elements: !527)
!527 = !{!528, !529, !542}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !526, file: !35, line: 439, baseType: !33, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !526, file: !35, line: 440, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !35, line: 419, size: 256, elements: !532)
!532 = !{!533, !538, !539, !540, !541}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !531, file: !35, line: 420, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !25, line: 1049, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!26, !374, !26, !118}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !531, file: !35, line: 421, baseType: !118, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !531, file: !35, line: 422, baseType: !33, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !531, file: !35, line: 423, baseType: !30, size: 8, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !531, file: !35, line: 424, baseType: !30, size: 8, offset: 200)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !526, file: !35, line: 441, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !35, line: 429, size: 128, elements: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !544, file: !35, line: 430, baseType: !33, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !544, file: !35, line: 431, baseType: !543, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !523, file: !35, line: 450, baseType: !507, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !523, file: !35, line: 451, baseType: !30, size: 8, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !523, file: !35, line: 452, baseType: !30, size: 8, offset: 136)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !523, file: !35, line: 453, baseType: !30, size: 8, offset: 144)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !523, file: !35, line: 454, baseType: !30, size: 8, offset: 152)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !493, file: !35, line: 487, baseType: !66, size: 64, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !493, file: !35, line: 488, baseType: !26, size: 32, offset: 448)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !493, file: !35, line: 489, baseType: !49, size: 16, offset: 480)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !493, file: !35, line: 490, baseType: !49, size: 16, offset: 496)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !493, file: !35, line: 491, baseType: !30, size: 8, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !493, file: !35, line: 492, baseType: !30, size: 8, offset: 520)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !39, file: !40, line: 379, baseType: !560, size: 384)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !40, line: 192, size: 384, elements: !561)
!561 = !{!562, !563, !564, !565, !566, !567, !568, !569, !570}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !560, file: !40, line: 193, baseType: !38, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !560, file: !40, line: 193, baseType: !30, size: 8, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !560, file: !40, line: 193, baseType: !30, size: 8, offset: 72)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !560, file: !40, line: 193, baseType: !49, size: 16, offset: 80)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !560, file: !40, line: 193, baseType: !30, size: 8, offset: 96)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !560, file: !40, line: 193, baseType: !477, size: 128, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !560, file: !40, line: 193, baseType: !38, size: 64, offset: 256)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !560, file: !40, line: 193, baseType: !26, size: 32, offset: 320)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !560, file: !40, line: 194, baseType: !26, size: 32, offset: 352)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !39, file: !40, line: 380, baseType: !572, size: 384)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !40, line: 197, size: 384, elements: !573)
!573 = !{!574, !575, !576, !577, !578, !579, !580, !581, !582, !583}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !572, file: !40, line: 198, baseType: !38, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !572, file: !40, line: 198, baseType: !30, size: 8, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !572, file: !40, line: 198, baseType: !30, size: 8, offset: 72)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !572, file: !40, line: 198, baseType: !49, size: 16, offset: 80)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !572, file: !40, line: 198, baseType: !30, size: 8, offset: 96)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !572, file: !40, line: 200, baseType: !30, size: 8, offset: 104)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !572, file: !40, line: 201, baseType: !30, size: 8, offset: 112)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !572, file: !40, line: 202, baseType: !477, size: 128, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !572, file: !40, line: 202, baseType: !38, size: 64, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !572, file: !40, line: 202, baseType: !584, size: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !25, line: 128, baseType: !66)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !39, file: !40, line: 381, baseType: !586, size: 320)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !40, line: 205, size: 320, elements: !587)
!587 = !{!588, !589, !590, !591, !592, !593, !594}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !586, file: !40, line: 206, baseType: !38, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !586, file: !40, line: 206, baseType: !30, size: 8, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !586, file: !40, line: 206, baseType: !30, size: 8, offset: 72)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !586, file: !40, line: 206, baseType: !49, size: 16, offset: 80)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !586, file: !40, line: 206, baseType: !30, size: 8, offset: 96)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !586, file: !40, line: 206, baseType: !477, size: 128, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !586, file: !40, line: 206, baseType: !38, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !39, file: !40, line: 382, baseType: !596, size: 384)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !40, line: 233, size: 384, elements: !597)
!597 = !{!598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !596, file: !40, line: 234, baseType: !38, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !596, file: !40, line: 234, baseType: !30, size: 8, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !596, file: !40, line: 234, baseType: !30, size: 8, offset: 72)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !596, file: !40, line: 234, baseType: !49, size: 16, offset: 80)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !596, file: !40, line: 234, baseType: !30, size: 8, offset: 96)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !596, file: !40, line: 234, baseType: !30, size: 8, offset: 104)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !596, file: !40, line: 234, baseType: !30, size: 8, offset: 112)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !596, file: !40, line: 234, baseType: !30, size: 8, offset: 120)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !596, file: !40, line: 234, baseType: !33, size: 64, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !596, file: !40, line: 234, baseType: !26, size: 32, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !596, file: !40, line: 234, baseType: !26, size: 32, offset: 224)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !596, file: !40, line: 234, baseType: !26, size: 32, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !596, file: !40, line: 234, baseType: !30, size: 8, offset: 288)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !596, file: !40, line: 234, baseType: !30, size: 8, offset: 296)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !596, file: !40, line: 234, baseType: !38, size: 64, offset: 320)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !39, file: !40, line: 383, baseType: !614, size: 576)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !40, line: 237, size: 576, elements: !615)
!615 = !{!616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !614, file: !40, line: 238, baseType: !38, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !614, file: !40, line: 238, baseType: !30, size: 8, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !614, file: !40, line: 238, baseType: !30, size: 8, offset: 72)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !614, file: !40, line: 238, baseType: !49, size: 16, offset: 80)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !614, file: !40, line: 238, baseType: !30, size: 8, offset: 96)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !614, file: !40, line: 238, baseType: !30, size: 8, offset: 104)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !614, file: !40, line: 238, baseType: !30, size: 8, offset: 112)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !614, file: !40, line: 238, baseType: !30, size: 8, offset: 120)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !614, file: !40, line: 238, baseType: !33, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !614, file: !40, line: 238, baseType: !26, size: 32, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !614, file: !40, line: 238, baseType: !26, size: 32, offset: 224)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !614, file: !40, line: 238, baseType: !26, size: 32, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !614, file: !40, line: 238, baseType: !30, size: 8, offset: 288)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !614, file: !40, line: 238, baseType: !30, size: 8, offset: 296)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !614, file: !40, line: 238, baseType: !49, size: 16, offset: 304)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !614, file: !40, line: 239, baseType: !38, size: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !614, file: !40, line: 240, baseType: !90, size: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !614, file: !40, line: 241, baseType: !49, size: 16, offset: 448)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !614, file: !40, line: 242, baseType: !90, size: 64, offset: 512)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !39, file: !40, line: 384, baseType: !636, size: 384)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !40, line: 262, size: 384, elements: !637)
!637 = !{!638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !636, file: !40, line: 263, baseType: !38, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !636, file: !40, line: 263, baseType: !30, size: 8, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !636, file: !40, line: 263, baseType: !30, size: 8, offset: 72)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !636, file: !40, line: 263, baseType: !49, size: 16, offset: 80)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !636, file: !40, line: 263, baseType: !30, size: 8, offset: 96)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !636, file: !40, line: 263, baseType: !30, size: 8, offset: 104)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !636, file: !40, line: 263, baseType: !30, size: 8, offset: 112)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !636, file: !40, line: 263, baseType: !30, size: 8, offset: 120)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !636, file: !40, line: 263, baseType: !33, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !636, file: !40, line: 263, baseType: !26, size: 32, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !636, file: !40, line: 263, baseType: !26, size: 32, offset: 224)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !636, file: !40, line: 263, baseType: !26, size: 32, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !636, file: !40, line: 263, baseType: !30, size: 8, offset: 288)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !636, file: !40, line: 263, baseType: !30, size: 8, offset: 296)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !636, file: !40, line: 263, baseType: !30, size: 8, offset: 304)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !636, file: !40, line: 264, baseType: !38, size: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !39, file: !40, line: 385, baseType: !655, size: 448)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !40, line: 245, size: 448, elements: !656)
!656 = !{!657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !655, file: !40, line: 246, baseType: !38, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !655, file: !40, line: 246, baseType: !30, size: 8, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !655, file: !40, line: 246, baseType: !30, size: 8, offset: 72)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !655, file: !40, line: 246, baseType: !49, size: 16, offset: 80)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !655, file: !40, line: 246, baseType: !30, size: 8, offset: 96)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !655, file: !40, line: 246, baseType: !30, size: 8, offset: 104)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !655, file: !40, line: 246, baseType: !30, size: 8, offset: 112)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !655, file: !40, line: 246, baseType: !30, size: 8, offset: 120)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !655, file: !40, line: 246, baseType: !33, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !655, file: !40, line: 246, baseType: !26, size: 32, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !655, file: !40, line: 246, baseType: !26, size: 32, offset: 224)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !655, file: !40, line: 246, baseType: !26, size: 32, offset: 256)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !655, file: !40, line: 246, baseType: !30, size: 8, offset: 288)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !655, file: !40, line: 246, baseType: !30, size: 8, offset: 296)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !655, file: !40, line: 246, baseType: !38, size: 64, offset: 320)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !655, file: !40, line: 247, baseType: !38, size: 64, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !39, file: !40, line: 386, baseType: !674, size: 448)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !40, line: 250, size: 448, elements: !675)
!675 = !{!676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !674, file: !40, line: 251, baseType: !38, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !674, file: !40, line: 251, baseType: !30, size: 8, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !674, file: !40, line: 251, baseType: !30, size: 8, offset: 72)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !674, file: !40, line: 251, baseType: !49, size: 16, offset: 80)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !674, file: !40, line: 251, baseType: !30, size: 8, offset: 96)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !674, file: !40, line: 251, baseType: !30, size: 8, offset: 104)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !674, file: !40, line: 251, baseType: !30, size: 8, offset: 112)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !674, file: !40, line: 251, baseType: !30, size: 8, offset: 120)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !674, file: !40, line: 251, baseType: !33, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !674, file: !40, line: 251, baseType: !26, size: 32, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !674, file: !40, line: 251, baseType: !26, size: 32, offset: 224)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !674, file: !40, line: 251, baseType: !26, size: 32, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !674, file: !40, line: 251, baseType: !30, size: 8, offset: 288)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !674, file: !40, line: 251, baseType: !30, size: 8, offset: 296)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !674, file: !40, line: 256, baseType: !38, size: 64, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !674, file: !40, line: 257, baseType: !38, size: 64, offset: 384)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !39, file: !40, line: 387, baseType: !693, size: 512)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !40, line: 273, size: 512, elements: !694)
!694 = !{!695, !696, !697, !698, !699, !700, !701, !702, !703, !704}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !693, file: !40, line: 274, baseType: !38, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !693, file: !40, line: 274, baseType: !30, size: 8, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !693, file: !40, line: 274, baseType: !30, size: 8, offset: 72)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !693, file: !40, line: 274, baseType: !49, size: 16, offset: 80)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !693, file: !40, line: 274, baseType: !30, size: 8, offset: 96)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !693, file: !40, line: 274, baseType: !33, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !693, file: !40, line: 275, baseType: !26, size: 32, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !693, file: !40, line: 276, baseType: !370, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !693, file: !40, line: 277, baseType: !118, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !693, file: !40, line: 278, baseType: !477, size: 128, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !39, file: !40, line: 388, baseType: !706, size: 512)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !40, line: 281, size: 512, elements: !707)
!707 = !{!708, !709, !710, !711, !712, !713, !714, !715, !721, !722, !723, !729, !730}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !706, file: !40, line: 282, baseType: !38, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !706, file: !40, line: 282, baseType: !30, size: 8, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !706, file: !40, line: 282, baseType: !30, size: 8, offset: 72)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !706, file: !40, line: 282, baseType: !49, size: 16, offset: 80)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !706, file: !40, line: 282, baseType: !30, size: 8, offset: 96)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !706, file: !40, line: 282, baseType: !30, size: 8, offset: 104)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !706, file: !40, line: 283, baseType: !30, size: 8, offset: 112)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !706, file: !40, line: 284, baseType: !716, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !25, line: 1084, baseType: !717)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!24, !26, !466, !26, !720, !118, !118}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !706, file: !40, line: 285, baseType: !33, size: 64, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !706, file: !40, line: 286, baseType: !118, size: 64, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !706, file: !40, line: 287, baseType: !724, size: 64, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !25, line: 1102, baseType: !725)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!24, !374, !26, !118, !728}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !706, file: !40, line: 288, baseType: !38, size: 64, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !706, file: !40, line: 289, baseType: !38, size: 64, offset: 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !39, file: !40, line: 389, baseType: !732, size: 512)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !40, line: 307, size: 512, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !732, file: !40, line: 308, baseType: !38, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !732, file: !40, line: 308, baseType: !30, size: 8, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !732, file: !40, line: 308, baseType: !30, size: 8, offset: 72)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !732, file: !40, line: 308, baseType: !49, size: 16, offset: 80)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !40, line: 308, baseType: !30, size: 8, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !732, file: !40, line: 308, baseType: !30, size: 8, offset: 104)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !732, file: !40, line: 309, baseType: !30, size: 8, offset: 112)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !732, file: !40, line: 310, baseType: !30, size: 8, offset: 120)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !732, file: !40, line: 311, baseType: !118, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !732, file: !40, line: 312, baseType: !33, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !732, file: !40, line: 313, baseType: !105, size: 64, offset: 256)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !732, file: !40, line: 314, baseType: !90, size: 64, offset: 320)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !732, file: !40, line: 315, baseType: !90, size: 64, offset: 384)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !732, file: !40, line: 316, baseType: !26, size: 32, offset: 448)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !39, file: !40, line: 390, baseType: !749, size: 448)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !40, line: 340, size: 448, elements: !750)
!750 = !{!751, !752, !753, !754, !755, !756, !757, !758, !759, !760}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !749, file: !40, line: 341, baseType: !38, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !749, file: !40, line: 341, baseType: !30, size: 8, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !749, file: !40, line: 341, baseType: !30, size: 8, offset: 72)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !749, file: !40, line: 341, baseType: !49, size: 16, offset: 80)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !749, file: !40, line: 341, baseType: !30, size: 8, offset: 96)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !749, file: !40, line: 341, baseType: !33, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !749, file: !40, line: 342, baseType: !33, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !749, file: !40, line: 343, baseType: !118, size: 64, offset: 256)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !749, file: !40, line: 344, baseType: !90, size: 64, offset: 320)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !749, file: !40, line: 345, baseType: !26, size: 32, offset: 384)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !39, file: !40, line: 391, baseType: !762, size: 256)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !40, line: 350, size: 256, elements: !763)
!763 = !{!764, !765, !766, !767, !768, !769, !774}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !762, file: !40, line: 351, baseType: !38, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !762, file: !40, line: 351, baseType: !30, size: 8, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !762, file: !40, line: 351, baseType: !30, size: 8, offset: 72)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !762, file: !40, line: 351, baseType: !49, size: 16, offset: 80)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !762, file: !40, line: 351, baseType: !30, size: 8, offset: 96)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !762, file: !40, line: 351, baseType: !770, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !25, line: 1055, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !374, !118}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !762, file: !40, line: 352, baseType: !118, size: 64, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !39, file: !40, line: 392, baseType: !776, size: 192)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !40, line: 357, size: 192, elements: !777)
!777 = !{!778, !779, !780, !781, !782, !783}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !776, file: !40, line: 358, baseType: !38, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !776, file: !40, line: 358, baseType: !30, size: 8, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !776, file: !40, line: 358, baseType: !30, size: 8, offset: 72)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !776, file: !40, line: 358, baseType: !49, size: 16, offset: 80)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !776, file: !40, line: 358, baseType: !30, size: 8, offset: 96)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !776, file: !40, line: 358, baseType: !38, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !39, file: !40, line: 399, baseType: !34, size: 384)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !34, file: !35, line: 135, baseType: !30, size: 8, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !34, file: !35, line: 136, baseType: !30, size: 8, offset: 72)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !34, file: !35, line: 137, baseType: !49, size: 16, offset: 80)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !34, file: !35, line: 138, baseType: !789, size: 32, offset: 96)
!789 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !790, line: 327, size: 32, elements: !791)
!790 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !789, file: !790, line: 328, baseType: !26, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !789, file: !790, line: 329, baseType: !235, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !34, file: !35, line: 139, baseType: !33, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !34, file: !35, line: 140, baseType: !33, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !34, file: !35, line: 141, baseType: !33, size: 64, offset: 256)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !34, file: !35, line: 142, baseType: !153, size: 16, offset: 320)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !25, line: 127, baseType: !66)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !800, line: 148, baseType: !7)
!800 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!801 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!802 = !{!0}
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 48, elements: !805)
!804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!805 = !{!806}
!806 = !DISubrange(count: 6)
!807 = !{!"rsp"}
!808 = !{i32 7, !"Dwarf Version", i32 4}
!809 = !{i32 2, !"Debug Info Version", i32 3}
!810 = !{i32 1, !"wchar_size", i32 2}
!811 = !{i32 1, !"Code Model", i32 2}
!812 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!813 = distinct !DISubprogram(name: "acpi_ev_update_gpe_enable_mask", scope: !3, file: !3, line: 37, type: !814, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !816)
!814 = !DISubroutineType(types: !815)
!815 = !{!24, !522}
!816 = !{}
!817 = !DILocalVariable(name: "gpe_event_info", arg: 1, scope: !813, file: !3, line: 37, type: !522)
!818 = !DILocation(line: 37, column: 60, scope: !813)
!819 = !DILocalVariable(name: "gpe_register_info", scope: !813, file: !3, line: 39, type: !507)
!820 = !DILocation(line: 39, column: 33, scope: !813)
!821 = !DILocalVariable(name: "register_bit", scope: !813, file: !3, line: 40, type: !26)
!822 = !DILocation(line: 40, column: 6, scope: !813)
!823 = !DILocation(line: 44, column: 22, scope: !813)
!824 = !DILocation(line: 44, column: 38, scope: !813)
!825 = !DILocation(line: 44, column: 20, scope: !813)
!826 = !DILocation(line: 45, column: 7, scope: !827)
!827 = distinct !DILexicalBlock(scope: !813, file: !3, line: 45, column: 6)
!828 = !DILocation(line: 45, column: 6, scope: !813)
!829 = !DILocation(line: 46, column: 3, scope: !830)
!830 = distinct !DILexicalBlock(scope: !827, file: !3, line: 45, column: 26)
!831 = !DILocation(line: 49, column: 46, scope: !813)
!832 = !DILocation(line: 49, column: 17, scope: !813)
!833 = !DILocation(line: 49, column: 15, scope: !813)
!834 = !DILocation(line: 53, column: 2, scope: !813)
!835 = !DILocation(line: 57, column: 6, scope: !836)
!836 = distinct !DILexicalBlock(scope: !813, file: !3, line: 57, column: 6)
!837 = !DILocation(line: 57, column: 22, scope: !836)
!838 = !DILocation(line: 57, column: 6, scope: !813)
!839 = !DILocation(line: 58, column: 3, scope: !840)
!840 = distinct !DILexicalBlock(scope: !836, file: !3, line: 57, column: 37)
!841 = !DILocation(line: 60, column: 2, scope: !840)
!842 = !DILocation(line: 62, column: 35, scope: !813)
!843 = !DILocation(line: 62, column: 54, scope: !813)
!844 = !DILocation(line: 62, column: 2, scope: !813)
!845 = !DILocation(line: 62, column: 21, scope: !813)
!846 = !DILocation(line: 62, column: 33, scope: !813)
!847 = !DILocation(line: 63, column: 2, scope: !813)
!848 = !DILocation(line: 64, column: 1, scope: !813)
!849 = distinct !DISubprogram(name: "acpi_ev_enable_gpe", scope: !3, file: !3, line: 78, type: !814, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !816)
!850 = !DILocalVariable(name: "gpe_event_info", arg: 1, scope: !849, file: !3, line: 78, type: !522)
!851 = !DILocation(line: 78, column: 60, scope: !849)
!852 = !DILocalVariable(name: "status", scope: !849, file: !3, line: 80, type: !24)
!853 = !DILocation(line: 80, column: 14, scope: !849)
!854 = !DILocation(line: 86, column: 31, scope: !849)
!855 = !DILocation(line: 86, column: 11, scope: !849)
!856 = !DILocation(line: 86, column: 9, scope: !849)
!857 = !DILocation(line: 87, column: 2, scope: !849)
!858 = distinct !DISubprogram(name: "acpi_ev_mask_gpe", scope: !3, file: !3, line: 104, type: !859, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !816)
!859 = !DISubroutineType(types: !860)
!860 = !{!24, !522, !30}
!861 = !DILocalVariable(name: "gpe_event_info", arg: 1, scope: !858, file: !3, line: 104, type: !522)
!862 = !DILocation(line: 104, column: 46, scope: !858)
!863 = !DILocalVariable(name: "is_masked", arg: 2, scope: !858, file: !3, line: 104, type: !30)
!864 = !DILocation(line: 104, column: 65, scope: !858)
!865 = !DILocalVariable(name: "gpe_register_info", scope: !858, file: !3, line: 106, type: !507)
!866 = !DILocation(line: 106, column: 33, scope: !858)
!867 = !DILocalVariable(name: "register_bit", scope: !858, file: !3, line: 107, type: !26)
!868 = !DILocation(line: 107, column: 6, scope: !858)
!869 = !DILocation(line: 111, column: 22, scope: !858)
!870 = !DILocation(line: 111, column: 38, scope: !858)
!871 = !DILocation(line: 111, column: 20, scope: !858)
!872 = !DILocation(line: 112, column: 7, scope: !873)
!873 = distinct !DILexicalBlock(scope: !858, file: !3, line: 112, column: 6)
!874 = !DILocation(line: 112, column: 6, scope: !858)
!875 = !DILocation(line: 113, column: 3, scope: !876)
!876 = distinct !DILexicalBlock(scope: !873, file: !3, line: 112, column: 26)
!877 = !DILocation(line: 116, column: 46, scope: !858)
!878 = !DILocation(line: 116, column: 17, scope: !858)
!879 = !DILocation(line: 116, column: 15, scope: !858)
!880 = !DILocation(line: 120, column: 6, scope: !881)
!881 = distinct !DILexicalBlock(scope: !858, file: !3, line: 120, column: 6)
!882 = !DILocation(line: 120, column: 6, scope: !858)
!883 = !DILocation(line: 121, column: 7, scope: !884)
!884 = distinct !DILexicalBlock(scope: !885, file: !3, line: 121, column: 7)
!885 = distinct !DILexicalBlock(scope: !881, file: !3, line: 120, column: 17)
!886 = !DILocation(line: 121, column: 22, scope: !884)
!887 = !DILocation(line: 121, column: 41, scope: !884)
!888 = !DILocation(line: 121, column: 20, scope: !884)
!889 = !DILocation(line: 121, column: 7, scope: !885)
!890 = !DILocation(line: 122, column: 4, scope: !891)
!891 = distinct !DILexicalBlock(scope: !884, file: !3, line: 121, column: 55)
!892 = !DILocation(line: 125, column: 29, scope: !885)
!893 = !DILocation(line: 125, column: 9, scope: !885)
!894 = !DILocation(line: 126, column: 3, scope: !885)
!895 = !DILocation(line: 127, column: 2, scope: !885)
!896 = !DILocation(line: 128, column: 9, scope: !897)
!897 = distinct !DILexicalBlock(scope: !898, file: !3, line: 128, column: 7)
!898 = distinct !DILexicalBlock(scope: !881, file: !3, line: 127, column: 9)
!899 = !DILocation(line: 128, column: 24, scope: !897)
!900 = !DILocation(line: 128, column: 43, scope: !897)
!901 = !DILocation(line: 128, column: 22, scope: !897)
!902 = !DILocation(line: 128, column: 7, scope: !898)
!903 = !DILocation(line: 129, column: 4, scope: !904)
!904 = distinct !DILexicalBlock(scope: !897, file: !3, line: 128, column: 58)
!905 = !DILocation(line: 132, column: 3, scope: !898)
!906 = !DILocation(line: 134, column: 7, scope: !907)
!907 = distinct !DILexicalBlock(scope: !898, file: !3, line: 134, column: 7)
!908 = !DILocation(line: 134, column: 23, scope: !907)
!909 = !DILocation(line: 135, column: 7, scope: !907)
!910 = !DILocation(line: 135, column: 11, scope: !907)
!911 = !DILocation(line: 135, column: 27, scope: !907)
!912 = !DILocation(line: 134, column: 7, scope: !898)
!913 = !DILocation(line: 136, column: 30, scope: !914)
!914 = distinct !DILexicalBlock(scope: !907, file: !3, line: 135, column: 49)
!915 = !DILocation(line: 136, column: 10, scope: !914)
!916 = !DILocation(line: 138, column: 3, scope: !914)
!917 = !DILocation(line: 141, column: 2, scope: !858)
!918 = !DILocation(line: 142, column: 1, scope: !858)
!919 = distinct !DISubprogram(name: "acpi_ev_add_gpe_reference", scope: !3, file: !3, line: 159, type: !859, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !816)
!920 = !DILocalVariable(name: "gpe_event_info", arg: 1, scope: !919, file: !3, line: 159, type: !522)
!921 = !DILocation(line: 159, column: 55, scope: !919)
!922 = !DILocalVariable(name: "clear_on_enable", arg: 2, scope: !919, file: !3, line: 160, type: !30)
!923 = !DILocation(line: 160, column: 9, scope: !919)
!924 = !DILocalVariable(name: "status", scope: !919, file: !3, line: 162, type: !24)
!925 = !DILocation(line: 162, column: 14, scope: !919)
!926 = !DILocation(line: 166, column: 6, scope: !927)
!927 = distinct !DILexicalBlock(scope: !919, file: !3, line: 166, column: 6)
!928 = !DILocation(line: 166, column: 22, scope: !927)
!929 = !DILocation(line: 166, column: 36, scope: !927)
!930 = !DILocation(line: 166, column: 6, scope: !919)
!931 = !DILocation(line: 167, column: 3, scope: !932)
!932 = distinct !DILexicalBlock(scope: !927, file: !3, line: 166, column: 55)
!933 = !DILocation(line: 170, column: 2, scope: !919)
!934 = !DILocation(line: 170, column: 18, scope: !919)
!935 = !DILocation(line: 170, column: 31, scope: !919)
!936 = !DILocation(line: 171, column: 6, scope: !937)
!937 = distinct !DILexicalBlock(scope: !919, file: !3, line: 171, column: 6)
!938 = !DILocation(line: 171, column: 22, scope: !937)
!939 = !DILocation(line: 171, column: 36, scope: !937)
!940 = !DILocation(line: 171, column: 6, scope: !919)
!941 = !DILocation(line: 175, column: 7, scope: !942)
!942 = distinct !DILexicalBlock(scope: !943, file: !3, line: 175, column: 7)
!943 = distinct !DILexicalBlock(scope: !937, file: !3, line: 171, column: 42)
!944 = !DILocation(line: 175, column: 7, scope: !943)
!945 = !DILocation(line: 176, column: 28, scope: !946)
!946 = distinct !DILexicalBlock(scope: !942, file: !3, line: 175, column: 24)
!947 = !DILocation(line: 176, column: 10, scope: !946)
!948 = !DILocation(line: 177, column: 3, scope: !946)
!949 = !DILocation(line: 179, column: 43, scope: !943)
!950 = !DILocation(line: 179, column: 12, scope: !943)
!951 = !DILocation(line: 179, column: 10, scope: !943)
!952 = !DILocation(line: 180, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !943, file: !3, line: 180, column: 7)
!954 = !DILocation(line: 180, column: 7, scope: !943)
!955 = !DILocation(line: 181, column: 32, scope: !956)
!956 = distinct !DILexicalBlock(scope: !953, file: !3, line: 180, column: 29)
!957 = !DILocation(line: 181, column: 13, scope: !956)
!958 = !DILocation(line: 181, column: 11, scope: !956)
!959 = !DILocation(line: 182, column: 3, scope: !956)
!960 = !DILocation(line: 184, column: 7, scope: !961)
!961 = distinct !DILexicalBlock(scope: !943, file: !3, line: 184, column: 7)
!962 = !DILocation(line: 184, column: 7, scope: !943)
!963 = !DILocation(line: 185, column: 4, scope: !964)
!964 = distinct !DILexicalBlock(scope: !961, file: !3, line: 184, column: 29)
!965 = !DILocation(line: 185, column: 20, scope: !964)
!966 = !DILocation(line: 185, column: 33, scope: !964)
!967 = !DILocation(line: 186, column: 3, scope: !964)
!968 = !DILocation(line: 187, column: 2, scope: !943)
!969 = !DILocation(line: 189, column: 2, scope: !919)
!970 = !DILocation(line: 190, column: 1, scope: !919)
!971 = distinct !DISubprogram(name: "acpi_ev_remove_gpe_reference", scope: !3, file: !3, line: 206, type: !814, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !816)
!972 = !DILocalVariable(name: "gpe_event_info", arg: 1, scope: !971, file: !3, line: 206, type: !522)
!973 = !DILocation(line: 206, column: 58, scope: !971)
!974 = !DILocalVariable(name: "status", scope: !971, file: !3, line: 208, type: !24)
!975 = !DILocation(line: 208, column: 14, scope: !971)
!976 = !DILocation(line: 212, column: 7, scope: !977)
!977 = distinct !DILexicalBlock(scope: !971, file: !3, line: 212, column: 6)
!978 = !DILocation(line: 212, column: 23, scope: !977)
!979 = !DILocation(line: 212, column: 6, scope: !971)
!980 = !DILocation(line: 213, column: 3, scope: !981)
!981 = distinct !DILexicalBlock(scope: !977, file: !3, line: 212, column: 38)
!982 = !DILocation(line: 216, column: 2, scope: !971)
!983 = !DILocation(line: 216, column: 18, scope: !971)
!984 = !DILocation(line: 216, column: 31, scope: !971)
!985 = !DILocation(line: 217, column: 7, scope: !986)
!986 = distinct !DILexicalBlock(scope: !971, file: !3, line: 217, column: 6)
!987 = !DILocation(line: 217, column: 23, scope: !986)
!988 = !DILocation(line: 217, column: 6, scope: !971)
!989 = !DILocation(line: 221, column: 43, scope: !990)
!990 = distinct !DILexicalBlock(scope: !986, file: !3, line: 217, column: 38)
!991 = !DILocation(line: 221, column: 12, scope: !990)
!992 = !DILocation(line: 221, column: 10, scope: !990)
!993 = !DILocation(line: 222, column: 7, scope: !994)
!994 = distinct !DILexicalBlock(scope: !990, file: !3, line: 222, column: 7)
!995 = !DILocation(line: 222, column: 7, scope: !990)
!996 = !DILocation(line: 224, column: 28, scope: !997)
!997 = distinct !DILexicalBlock(scope: !994, file: !3, line: 222, column: 29)
!998 = !DILocation(line: 224, column: 8, scope: !997)
!999 = !DILocation(line: 223, column: 11, scope: !997)
!1000 = !DILocation(line: 226, column: 3, scope: !997)
!1001 = !DILocation(line: 228, column: 7, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !990, file: !3, line: 228, column: 7)
!1003 = !DILocation(line: 228, column: 7, scope: !990)
!1004 = !DILocation(line: 229, column: 4, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 228, column: 29)
!1006 = !DILocation(line: 229, column: 20, scope: !1005)
!1007 = !DILocation(line: 229, column: 33, scope: !1005)
!1008 = !DILocation(line: 230, column: 3, scope: !1005)
!1009 = !DILocation(line: 231, column: 2, scope: !990)
!1010 = !DILocation(line: 233, column: 2, scope: !971)
!1011 = !DILocation(line: 234, column: 1, scope: !971)
!1012 = distinct !DISubprogram(name: "acpi_ev_low_get_gpe_info", scope: !3, file: !3, line: 251, type: !1013, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!522, !26, !492}
!1015 = !DILocalVariable(name: "gpe_number", arg: 1, scope: !1012, file: !3, line: 251, type: !26)
!1016 = !DILocation(line: 251, column: 58, scope: !1012)
!1017 = !DILocalVariable(name: "gpe_block", arg: 2, scope: !1012, file: !3, line: 253, type: !492)
!1018 = !DILocation(line: 253, column: 13, scope: !1012)
!1019 = !DILocalVariable(name: "gpe_index", scope: !1012, file: !3, line: 255, type: !26)
!1020 = !DILocation(line: 255, column: 6, scope: !1012)
!1021 = !DILocation(line: 261, column: 7, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 261, column: 6)
!1023 = !DILocation(line: 261, column: 17, scope: !1022)
!1024 = !DILocation(line: 261, column: 21, scope: !1022)
!1025 = !DILocation(line: 261, column: 34, scope: !1022)
!1026 = !DILocation(line: 261, column: 45, scope: !1022)
!1027 = !DILocation(line: 261, column: 32, scope: !1022)
!1028 = !DILocation(line: 261, column: 6, scope: !1012)
!1029 = !DILocation(line: 262, column: 3, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 261, column: 65)
!1031 = !DILocation(line: 265, column: 14, scope: !1012)
!1032 = !DILocation(line: 265, column: 27, scope: !1012)
!1033 = !DILocation(line: 265, column: 38, scope: !1012)
!1034 = !DILocation(line: 265, column: 25, scope: !1012)
!1035 = !DILocation(line: 265, column: 12, scope: !1012)
!1036 = !DILocation(line: 266, column: 6, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 266, column: 6)
!1038 = !DILocation(line: 266, column: 19, scope: !1037)
!1039 = !DILocation(line: 266, column: 30, scope: !1037)
!1040 = !DILocation(line: 266, column: 16, scope: !1037)
!1041 = !DILocation(line: 266, column: 6, scope: !1012)
!1042 = !DILocation(line: 267, column: 3, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 266, column: 41)
!1044 = !DILocation(line: 270, column: 11, scope: !1012)
!1045 = !DILocation(line: 270, column: 22, scope: !1012)
!1046 = !DILocation(line: 270, column: 33, scope: !1012)
!1047 = !DILocation(line: 270, column: 2, scope: !1012)
!1048 = !DILocation(line: 271, column: 1, scope: !1012)
!1049 = distinct !DISubprogram(name: "acpi_ev_get_gpe_event_info", scope: !3, file: !3, line: 291, type: !1050, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!522, !374, !26}
!1052 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1049, file: !3, line: 291, type: !374)
!1053 = !DILocation(line: 291, column: 68, scope: !1049)
!1054 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !1049, file: !3, line: 292, type: !26)
!1055 = !DILocation(line: 292, column: 18, scope: !1049)
!1056 = !DILocalVariable(name: "obj_desc", scope: !1049, file: !3, line: 294, type: !38)
!1057 = !DILocation(line: 294, column: 29, scope: !1049)
!1058 = !DILocalVariable(name: "gpe_info", scope: !1049, file: !3, line: 295, type: !522)
!1059 = !DILocation(line: 295, column: 30, scope: !1049)
!1060 = !DILocalVariable(name: "i", scope: !1049, file: !3, line: 296, type: !26)
!1061 = !DILocation(line: 296, column: 6, scope: !1049)
!1062 = !DILocation(line: 302, column: 7, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 302, column: 6)
!1064 = !DILocation(line: 302, column: 6, scope: !1049)
!1065 = !DILocation(line: 306, column: 10, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 306, column: 3)
!1067 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 302, column: 19)
!1068 = !DILocation(line: 306, column: 8, scope: !1066)
!1069 = !DILocation(line: 306, column: 15, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 306, column: 3)
!1071 = !DILocation(line: 306, column: 17, scope: !1070)
!1072 = !DILocation(line: 306, column: 3, scope: !1066)
!1073 = !DILocation(line: 307, column: 40, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 306, column: 45)
!1075 = !DILocation(line: 309, column: 13, scope: !1074)
!1076 = !DILocation(line: 308, column: 12, scope: !1074)
!1077 = !DILocation(line: 307, column: 15, scope: !1074)
!1078 = !DILocation(line: 307, column: 13, scope: !1074)
!1079 = !DILocation(line: 310, column: 8, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 310, column: 8)
!1081 = !DILocation(line: 310, column: 8, scope: !1074)
!1082 = !DILocation(line: 311, column: 13, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 310, column: 18)
!1084 = !DILocation(line: 311, column: 5, scope: !1083)
!1085 = !DILocation(line: 313, column: 3, scope: !1074)
!1086 = !DILocation(line: 306, column: 41, scope: !1070)
!1087 = !DILocation(line: 306, column: 3, scope: !1070)
!1088 = distinct !{!1088, !1072, !1089}
!1089 = !DILocation(line: 313, column: 3, scope: !1066)
!1090 = !DILocation(line: 317, column: 3, scope: !1067)
!1091 = !DILocation(line: 324, column: 13, scope: !1049)
!1092 = !DILocation(line: 323, column: 34, scope: !1049)
!1093 = !DILocation(line: 323, column: 6, scope: !1049)
!1094 = !DILocation(line: 322, column: 11, scope: !1049)
!1095 = !DILocation(line: 325, column: 7, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 325, column: 6)
!1097 = !DILocation(line: 325, column: 16, scope: !1096)
!1098 = !DILocation(line: 325, column: 20, scope: !1096)
!1099 = !DILocation(line: 325, column: 30, scope: !1096)
!1100 = !DILocation(line: 325, column: 37, scope: !1096)
!1101 = !DILocation(line: 325, column: 6, scope: !1049)
!1102 = !DILocation(line: 326, column: 3, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 325, column: 48)
!1104 = !DILocation(line: 330, column: 4, scope: !1049)
!1105 = !DILocation(line: 330, column: 16, scope: !1049)
!1106 = !DILocation(line: 330, column: 26, scope: !1049)
!1107 = !DILocation(line: 330, column: 33, scope: !1049)
!1108 = !DILocation(line: 329, column: 10, scope: !1049)
!1109 = !DILocation(line: 329, column: 2, scope: !1049)
!1110 = !DILocation(line: 331, column: 1, scope: !1049)
!1111 = distinct !DISubprogram(name: "acpi_ev_gpe_detect", scope: !3, file: !3, line: 347, type: !1112, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!26, !499}
!1114 = !DILocalVariable(name: "gpe_xrupt_list", arg: 1, scope: !1111, file: !3, line: 347, type: !499)
!1115 = !DILocation(line: 347, column: 52, scope: !1111)
!1116 = !DILocalVariable(name: "gpe_block", scope: !1111, file: !3, line: 349, type: !492)
!1117 = !DILocation(line: 349, column: 30, scope: !1111)
!1118 = !DILocalVariable(name: "gpe_device", scope: !1111, file: !3, line: 350, type: !33)
!1119 = !DILocation(line: 350, column: 30, scope: !1111)
!1120 = !DILocalVariable(name: "gpe_register_info", scope: !1111, file: !3, line: 351, type: !507)
!1121 = !DILocation(line: 351, column: 33, scope: !1111)
!1122 = !DILocalVariable(name: "gpe_event_info", scope: !1111, file: !3, line: 352, type: !522)
!1123 = !DILocation(line: 352, column: 30, scope: !1111)
!1124 = !DILocalVariable(name: "gpe_number", scope: !1111, file: !3, line: 353, type: !26)
!1125 = !DILocation(line: 353, column: 6, scope: !1111)
!1126 = !DILocalVariable(name: "int_status", scope: !1111, file: !3, line: 354, type: !26)
!1127 = !DILocation(line: 354, column: 6, scope: !1111)
!1128 = !DILocalVariable(name: "flags", scope: !1111, file: !3, line: 355, type: !801)
!1129 = !DILocation(line: 355, column: 17, scope: !1111)
!1130 = !DILocalVariable(name: "i", scope: !1111, file: !3, line: 356, type: !26)
!1131 = !DILocation(line: 356, column: 6, scope: !1111)
!1132 = !DILocalVariable(name: "j", scope: !1111, file: !3, line: 357, type: !26)
!1133 = !DILocation(line: 357, column: 6, scope: !1111)
!1134 = !DILocation(line: 363, column: 7, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 363, column: 6)
!1136 = !DILocation(line: 363, column: 6, scope: !1111)
!1137 = !DILocation(line: 364, column: 11, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 363, column: 23)
!1139 = !DILocation(line: 364, column: 3, scope: !1138)
!1140 = !DILocation(line: 372, column: 31, scope: !1111)
!1141 = !DILocation(line: 372, column: 10, scope: !1111)
!1142 = !DILocation(line: 372, column: 8, scope: !1111)
!1143 = !DILocation(line: 376, column: 14, scope: !1111)
!1144 = !DILocation(line: 376, column: 30, scope: !1111)
!1145 = !DILocation(line: 376, column: 12, scope: !1111)
!1146 = !DILocation(line: 377, column: 2, scope: !1111)
!1147 = !DILocation(line: 377, column: 9, scope: !1111)
!1148 = !DILocation(line: 378, column: 16, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 377, column: 20)
!1150 = !DILocation(line: 378, column: 27, scope: !1149)
!1151 = !DILocation(line: 378, column: 14, scope: !1149)
!1152 = !DILocation(line: 384, column: 10, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 384, column: 3)
!1154 = !DILocation(line: 384, column: 8, scope: !1153)
!1155 = !DILocation(line: 384, column: 15, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 384, column: 3)
!1157 = !DILocation(line: 384, column: 19, scope: !1156)
!1158 = !DILocation(line: 384, column: 30, scope: !1156)
!1159 = !DILocation(line: 384, column: 17, scope: !1156)
!1160 = !DILocation(line: 384, column: 3, scope: !1153)
!1161 = !DILocation(line: 388, column: 25, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 384, column: 51)
!1163 = !DILocation(line: 388, column: 36, scope: !1162)
!1164 = !DILocation(line: 388, column: 50, scope: !1162)
!1165 = !DILocation(line: 388, column: 22, scope: !1162)
!1166 = !DILocation(line: 394, column: 10, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 394, column: 8)
!1168 = !DILocation(line: 394, column: 29, scope: !1167)
!1169 = !DILocation(line: 395, column: 10, scope: !1167)
!1170 = !DILocation(line: 395, column: 29, scope: !1167)
!1171 = !DILocation(line: 394, column: 44, scope: !1167)
!1172 = !DILocation(line: 394, column: 8, scope: !1162)
!1173 = !DILocation(line: 408, column: 5, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 395, column: 47)
!1175 = !DILocation(line: 413, column: 11, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 413, column: 4)
!1177 = !DILocation(line: 413, column: 9, scope: !1176)
!1178 = !DILocation(line: 413, column: 16, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 413, column: 4)
!1180 = !DILocation(line: 413, column: 18, scope: !1179)
!1181 = !DILocation(line: 413, column: 4, scope: !1176)
!1182 = !DILocation(line: 418, column: 10, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 413, column: 50)
!1184 = !DILocation(line: 419, column: 9, scope: !1183)
!1185 = !DILocation(line: 419, column: 32, scope: !1183)
!1186 = !DILocation(line: 419, column: 21, scope: !1183)
!1187 = !DILocation(line: 419, column: 34, scope: !1183)
!1188 = !DILocation(line: 420, column: 34, scope: !1183)
!1189 = !DILocation(line: 420, column: 32, scope: !1183)
!1190 = !DILocation(line: 417, column: 20, scope: !1183)
!1191 = !DILocation(line: 422, column: 9, scope: !1183)
!1192 = !DILocation(line: 422, column: 13, scope: !1183)
!1193 = !DILocation(line: 422, column: 32, scope: !1183)
!1194 = !DILocation(line: 422, column: 11, scope: !1183)
!1195 = !DILocation(line: 421, column: 16, scope: !1183)
!1196 = !DILocation(line: 423, column: 26, scope: !1183)
!1197 = !DILocation(line: 423, column: 45, scope: !1183)
!1198 = !DILocation(line: 423, column: 5, scope: !1183)
!1199 = !DILocation(line: 425, column: 28, scope: !1183)
!1200 = !DILocation(line: 426, column: 14, scope: !1183)
!1201 = !DILocation(line: 427, column: 14, scope: !1183)
!1202 = !DILocation(line: 425, column: 9, scope: !1183)
!1203 = !DILocation(line: 424, column: 16, scope: !1183)
!1204 = !DILocation(line: 428, column: 34, scope: !1183)
!1205 = !DILocation(line: 428, column: 13, scope: !1183)
!1206 = !DILocation(line: 428, column: 11, scope: !1183)
!1207 = !DILocation(line: 429, column: 4, scope: !1183)
!1208 = !DILocation(line: 413, column: 46, scope: !1179)
!1209 = !DILocation(line: 413, column: 4, scope: !1179)
!1210 = distinct !{!1210, !1181, !1211}
!1211 = !DILocation(line: 429, column: 4, scope: !1176)
!1212 = !DILocation(line: 430, column: 3, scope: !1162)
!1213 = !DILocation(line: 384, column: 47, scope: !1156)
!1214 = !DILocation(line: 384, column: 3, scope: !1156)
!1215 = distinct !{!1215, !1160, !1216}
!1216 = !DILocation(line: 430, column: 3, scope: !1153)
!1217 = !DILocation(line: 432, column: 15, scope: !1149)
!1218 = !DILocation(line: 432, column: 26, scope: !1149)
!1219 = !DILocation(line: 432, column: 13, scope: !1149)
!1220 = distinct !{!1220, !1146, !1221}
!1221 = !DILocation(line: 433, column: 2, scope: !1111)
!1222 = !DILocation(line: 435, column: 23, scope: !1111)
!1223 = !DILocation(line: 435, column: 42, scope: !1111)
!1224 = !DILocation(line: 435, column: 2, scope: !1111)
!1225 = !DILocation(line: 436, column: 10, scope: !1111)
!1226 = !DILocation(line: 436, column: 2, scope: !1111)
!1227 = !DILocation(line: 437, column: 1, scope: !1111)
!1228 = distinct !DISubprogram(name: "acpi_ev_detect_gpe", scope: !3, file: !3, line: 626, type: !1229, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!26, !33, !522, !26}
!1231 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1228, file: !3, line: 626, type: !33)
!1232 = !DILocation(line: 626, column: 48, scope: !1228)
!1233 = !DILocalVariable(name: "gpe_event_info", arg: 2, scope: !1228, file: !3, line: 627, type: !522)
!1234 = !DILocation(line: 627, column: 34, scope: !1228)
!1235 = !DILocalVariable(name: "gpe_number", arg: 3, scope: !1228, file: !3, line: 627, type: !26)
!1236 = !DILocation(line: 627, column: 54, scope: !1228)
!1237 = !DILocalVariable(name: "int_status", scope: !1228, file: !3, line: 629, type: !26)
!1238 = !DILocation(line: 629, column: 6, scope: !1228)
!1239 = !DILocalVariable(name: "enabled_status_byte", scope: !1228, file: !3, line: 630, type: !30)
!1240 = !DILocation(line: 630, column: 5, scope: !1228)
!1241 = !DILocalVariable(name: "status_reg", scope: !1228, file: !3, line: 631, type: !66)
!1242 = !DILocation(line: 631, column: 6, scope: !1228)
!1243 = !DILocalVariable(name: "enable_reg", scope: !1228, file: !3, line: 632, type: !66)
!1244 = !DILocation(line: 632, column: 6, scope: !1228)
!1245 = !DILocalVariable(name: "register_bit", scope: !1228, file: !3, line: 633, type: !26)
!1246 = !DILocation(line: 633, column: 6, scope: !1228)
!1247 = !DILocalVariable(name: "gpe_register_info", scope: !1228, file: !3, line: 634, type: !507)
!1248 = !DILocation(line: 634, column: 33, scope: !1228)
!1249 = !DILocalVariable(name: "gpe_handler_info", scope: !1228, file: !3, line: 635, type: !530)
!1250 = !DILocation(line: 635, column: 32, scope: !1228)
!1251 = !DILocalVariable(name: "flags", scope: !1228, file: !3, line: 636, type: !801)
!1252 = !DILocation(line: 636, column: 17, scope: !1228)
!1253 = !DILocalVariable(name: "status", scope: !1228, file: !3, line: 637, type: !24)
!1254 = !DILocation(line: 637, column: 14, scope: !1228)
!1255 = !DILocation(line: 641, column: 31, scope: !1228)
!1256 = !DILocation(line: 641, column: 10, scope: !1228)
!1257 = !DILocation(line: 641, column: 8, scope: !1228)
!1258 = !DILocation(line: 643, column: 7, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 643, column: 6)
!1260 = !DILocation(line: 643, column: 6, scope: !1228)
!1261 = !DILocation(line: 644, column: 47, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 643, column: 23)
!1263 = !DILocation(line: 644, column: 59, scope: !1262)
!1264 = !DILocation(line: 644, column: 20, scope: !1262)
!1265 = !DILocation(line: 644, column: 18, scope: !1262)
!1266 = !DILocation(line: 645, column: 8, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 645, column: 7)
!1268 = !DILocation(line: 645, column: 7, scope: !1262)
!1269 = !DILocation(line: 646, column: 4, scope: !1267)
!1270 = !DILocation(line: 647, column: 2, scope: !1262)
!1271 = !DILocation(line: 651, column: 22, scope: !1228)
!1272 = !DILocation(line: 651, column: 38, scope: !1228)
!1273 = !DILocation(line: 651, column: 20, scope: !1228)
!1274 = !DILocation(line: 655, column: 46, scope: !1228)
!1275 = !DILocation(line: 655, column: 17, scope: !1228)
!1276 = !DILocation(line: 655, column: 15, scope: !1228)
!1277 = !DILocation(line: 659, column: 42, scope: !1228)
!1278 = !DILocation(line: 659, column: 61, scope: !1228)
!1279 = !DILocation(line: 659, column: 11, scope: !1228)
!1280 = !DILocation(line: 659, column: 9, scope: !1228)
!1281 = !DILocation(line: 660, column: 6, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 660, column: 6)
!1283 = !DILocation(line: 660, column: 6, scope: !1228)
!1284 = !DILocation(line: 661, column: 3, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 660, column: 28)
!1286 = !DILocation(line: 666, column: 42, scope: !1228)
!1287 = !DILocation(line: 666, column: 61, scope: !1228)
!1288 = !DILocation(line: 666, column: 11, scope: !1228)
!1289 = !DILocation(line: 666, column: 9, scope: !1228)
!1290 = !DILocation(line: 667, column: 6, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 667, column: 6)
!1292 = !DILocation(line: 667, column: 6, scope: !1228)
!1293 = !DILocation(line: 668, column: 3, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 667, column: 28)
!1295 = !DILocation(line: 682, column: 29, scope: !1228)
!1296 = !DILocation(line: 682, column: 42, scope: !1228)
!1297 = !DILocation(line: 682, column: 40, scope: !1228)
!1298 = !DILocation(line: 682, column: 24, scope: !1228)
!1299 = !DILocation(line: 682, column: 22, scope: !1228)
!1300 = !DILocation(line: 683, column: 8, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 683, column: 6)
!1302 = !DILocation(line: 683, column: 30, scope: !1301)
!1303 = !DILocation(line: 683, column: 28, scope: !1301)
!1304 = !DILocation(line: 683, column: 6, scope: !1228)
!1305 = !DILocation(line: 684, column: 3, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 683, column: 45)
!1307 = !DILocation(line: 689, column: 16, scope: !1228)
!1308 = !DILocation(line: 690, column: 6, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 690, column: 6)
!1310 = !DILocation(line: 690, column: 6, scope: !1228)
!1311 = !DILocation(line: 691, column: 3, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 690, column: 37)
!1313 = !DILocation(line: 692, column: 12, scope: !1312)
!1314 = !DILocation(line: 692, column: 24, scope: !1312)
!1315 = !DILocation(line: 693, column: 12, scope: !1312)
!1316 = !DILocation(line: 694, column: 2, scope: !1312)
!1317 = !DILocation(line: 698, column: 6, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 698, column: 6)
!1319 = !DILocation(line: 698, column: 52, scope: !1318)
!1320 = !DILocation(line: 698, column: 6, scope: !1228)
!1321 = !DILocation(line: 703, column: 22, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 699, column: 37)
!1323 = !DILocation(line: 703, column: 38, scope: !1322)
!1324 = !DILocation(line: 703, column: 47, scope: !1322)
!1325 = !DILocation(line: 703, column: 20, scope: !1322)
!1326 = !DILocation(line: 715, column: 24, scope: !1322)
!1327 = !DILocation(line: 715, column: 43, scope: !1322)
!1328 = !DILocation(line: 715, column: 3, scope: !1322)
!1329 = !DILocation(line: 717, column: 7, scope: !1322)
!1330 = !DILocation(line: 717, column: 25, scope: !1322)
!1331 = !DILocation(line: 717, column: 33, scope: !1322)
!1332 = !DILocation(line: 717, column: 45, scope: !1322)
!1333 = !DILocation(line: 718, column: 12, scope: !1322)
!1334 = !DILocation(line: 718, column: 30, scope: !1322)
!1335 = !DILocation(line: 716, column: 14, scope: !1322)
!1336 = !DILocation(line: 719, column: 32, scope: !1322)
!1337 = !DILocation(line: 719, column: 11, scope: !1322)
!1338 = !DILocation(line: 719, column: 9, scope: !1322)
!1339 = !DILocation(line: 720, column: 2, scope: !1322)
!1340 = !DILocation(line: 723, column: 38, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 720, column: 9)
!1342 = !DILocation(line: 724, column: 10, scope: !1341)
!1343 = !DILocation(line: 724, column: 26, scope: !1341)
!1344 = !DILocation(line: 723, column: 17, scope: !1341)
!1345 = !DILocation(line: 723, column: 14, scope: !1341)
!1346 = !DILocation(line: 699, column: 6, scope: !1318)
!1347 = !DILabel(scope: !1228, name: "error_exit", file: !3, line: 727)
!1348 = !DILocation(line: 727, column: 1, scope: !1228)
!1349 = !DILocation(line: 728, column: 23, scope: !1228)
!1350 = !DILocation(line: 728, column: 42, scope: !1228)
!1351 = !DILocation(line: 728, column: 2, scope: !1228)
!1352 = !DILocation(line: 729, column: 10, scope: !1228)
!1353 = !DILocation(line: 729, column: 2, scope: !1228)
!1354 = distinct !DISubprogram(name: "acpi_ev_finish_gpe", scope: !3, file: !3, line: 578, type: !814, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1355 = !DILocalVariable(name: "gpe_event_info", arg: 1, scope: !1354, file: !3, line: 578, type: !522)
!1356 = !DILocation(line: 578, column: 60, scope: !1354)
!1357 = !DILocalVariable(name: "status", scope: !1354, file: !3, line: 580, type: !24)
!1358 = !DILocation(line: 580, column: 14, scope: !1354)
!1359 = !DILocation(line: 582, column: 7, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 582, column: 6)
!1361 = !DILocation(line: 582, column: 23, scope: !1360)
!1362 = !DILocation(line: 582, column: 29, scope: !1360)
!1363 = !DILocation(line: 582, column: 57, scope: !1360)
!1364 = !DILocation(line: 582, column: 6, scope: !1354)
!1365 = !DILocation(line: 588, column: 30, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 583, column: 32)
!1367 = !DILocation(line: 588, column: 12, scope: !1366)
!1368 = !DILocation(line: 588, column: 10, scope: !1366)
!1369 = !DILocation(line: 589, column: 7, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 589, column: 7)
!1371 = !DILocation(line: 589, column: 7, scope: !1366)
!1372 = !DILocation(line: 590, column: 12, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 589, column: 29)
!1374 = !DILocation(line: 590, column: 4, scope: !1373)
!1375 = !DILocation(line: 592, column: 2, scope: !1366)
!1376 = !DILocation(line: 599, column: 28, scope: !1354)
!1377 = !DILocation(line: 599, column: 8, scope: !1354)
!1378 = !DILocation(line: 600, column: 2, scope: !1354)
!1379 = !DILocation(line: 600, column: 18, scope: !1354)
!1380 = !DILocation(line: 600, column: 39, scope: !1354)
!1381 = !DILocation(line: 601, column: 2, scope: !1354)
!1382 = !DILocation(line: 602, column: 1, scope: !1354)
!1383 = distinct !DISubprogram(name: "acpi_ev_gpe_dispatch", scope: !3, file: !3, line: 748, type: !1229, scopeLine: 750, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1384 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1383, file: !3, line: 748, type: !33)
!1385 = !DILocation(line: 748, column: 50, scope: !1383)
!1386 = !DILocalVariable(name: "gpe_event_info", arg: 2, scope: !1383, file: !3, line: 749, type: !522)
!1387 = !DILocation(line: 749, column: 36, scope: !1383)
!1388 = !DILocalVariable(name: "gpe_number", arg: 3, scope: !1383, file: !3, line: 749, type: !26)
!1389 = !DILocation(line: 749, column: 56, scope: !1383)
!1390 = !DILocalVariable(name: "status", scope: !1383, file: !3, line: 751, type: !24)
!1391 = !DILocation(line: 751, column: 14, scope: !1383)
!1392 = !DILocalVariable(name: "return_value", scope: !1383, file: !3, line: 752, type: !26)
!1393 = !DILocation(line: 752, column: 6, scope: !1383)
!1394 = !DILocation(line: 765, column: 31, scope: !1383)
!1395 = !DILocation(line: 765, column: 11, scope: !1383)
!1396 = !DILocation(line: 765, column: 9, scope: !1383)
!1397 = !DILocation(line: 766, column: 6, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 766, column: 6)
!1399 = !DILocation(line: 766, column: 6, scope: !1383)
!1400 = !DILocation(line: 767, column: 3, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 766, column: 28)
!1402 = !DILocation(line: 769, column: 3, scope: !1401)
!1403 = !DILocation(line: 776, column: 7, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 776, column: 6)
!1405 = !DILocation(line: 776, column: 23, scope: !1404)
!1406 = !DILocation(line: 776, column: 29, scope: !1404)
!1407 = !DILocation(line: 776, column: 57, scope: !1404)
!1408 = !DILocation(line: 776, column: 6, scope: !1383)
!1409 = !DILocation(line: 778, column: 30, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 777, column: 31)
!1411 = !DILocation(line: 778, column: 12, scope: !1410)
!1412 = !DILocation(line: 778, column: 10, scope: !1410)
!1413 = !DILocation(line: 779, column: 7, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 779, column: 7)
!1415 = !DILocation(line: 779, column: 7, scope: !1410)
!1416 = !DILocation(line: 780, column: 4, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 779, column: 29)
!1418 = !DILocation(line: 783, column: 30, scope: !1417)
!1419 = !DILocation(line: 783, column: 10, scope: !1417)
!1420 = !DILocation(line: 785, column: 4, scope: !1417)
!1421 = !DILocation(line: 787, column: 2, scope: !1410)
!1422 = !DILocation(line: 789, column: 2, scope: !1383)
!1423 = !DILocation(line: 789, column: 18, scope: !1383)
!1424 = !DILocation(line: 789, column: 39, scope: !1383)
!1425 = !DILocation(line: 798, column: 10, scope: !1383)
!1426 = !DILocation(line: 798, column: 2, scope: !1383)
!1427 = !DILocation(line: 804, column: 7, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 798, column: 57)
!1429 = !DILocation(line: 804, column: 23, scope: !1428)
!1430 = !DILocation(line: 804, column: 32, scope: !1428)
!1431 = !DILocation(line: 804, column: 41, scope: !1428)
!1432 = !DILocation(line: 804, column: 49, scope: !1428)
!1433 = !DILocation(line: 805, column: 14, scope: !1428)
!1434 = !DILocation(line: 806, column: 14, scope: !1428)
!1435 = !DILocation(line: 807, column: 14, scope: !1428)
!1436 = !DILocation(line: 807, column: 23, scope: !1428)
!1437 = !DILocation(line: 808, column: 14, scope: !1428)
!1438 = !DILocation(line: 803, column: 16, scope: !1428)
!1439 = !DILocation(line: 812, column: 7, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 812, column: 7)
!1441 = !DILocation(line: 812, column: 20, scope: !1440)
!1442 = !DILocation(line: 812, column: 7, scope: !1428)
!1443 = !DILocation(line: 813, column: 29, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 812, column: 41)
!1445 = !DILocation(line: 813, column: 10, scope: !1444)
!1446 = !DILocation(line: 814, column: 3, scope: !1444)
!1447 = !DILocation(line: 815, column: 3, scope: !1428)
!1448 = !DILocation(line: 825, column: 7, scope: !1428)
!1449 = !DILocation(line: 823, column: 12, scope: !1428)
!1450 = !DILocation(line: 823, column: 10, scope: !1428)
!1451 = !DILocation(line: 826, column: 7, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 826, column: 7)
!1453 = !DILocation(line: 826, column: 7, scope: !1428)
!1454 = !DILocation(line: 827, column: 4, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 826, column: 29)
!1456 = !DILocation(line: 830, column: 3, scope: !1455)
!1457 = !DILocation(line: 831, column: 3, scope: !1428)
!1458 = !DILocation(line: 839, column: 3, scope: !1428)
!1459 = !DILocation(line: 843, column: 3, scope: !1428)
!1460 = !DILocation(line: 846, column: 2, scope: !1383)
!1461 = !DILocation(line: 847, column: 1, scope: !1383)
!1462 = distinct !DISubprogram(name: "acpi_ev_asynch_execute_gpe_method", scope: !3, file: !3, line: 455, type: !1463, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{null, !118}
!1465 = !DILocalVariable(name: "context", arg: 1, scope: !1462, file: !3, line: 455, type: !118)
!1466 = !DILocation(line: 455, column: 71, scope: !1462)
!1467 = !DILocalVariable(name: "gpe_event_info", scope: !1462, file: !3, line: 457, type: !522)
!1468 = !DILocation(line: 457, column: 30, scope: !1462)
!1469 = !DILocation(line: 457, column: 47, scope: !1462)
!1470 = !DILocalVariable(name: "status", scope: !1462, file: !3, line: 458, type: !24)
!1471 = !DILocation(line: 458, column: 14, scope: !1462)
!1472 = !DILocalVariable(name: "info", scope: !1462, file: !3, line: 459, type: !1473)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !143, line: 152, size: 704, elements: !1475)
!1475 = !{!1476, !1477, !1479, !1480, !1481, !1482, !1483, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !1474, file: !143, line: 155, baseType: !33, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !1474, file: !143, line: 156, baseType: !1478, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1474, file: !143, line: 157, baseType: !105, size: 64, offset: 128)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1474, file: !143, line: 159, baseType: !33, size: 64, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !1474, file: !143, line: 160, baseType: !38, size: 64, offset: 256)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !1474, file: !143, line: 161, baseType: !78, size: 64, offset: 320)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !1474, file: !143, line: 163, baseType: !1484, size: 64, offset: 384)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1486)
!1486 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !35, line: 351, size: 56, elements: !1487)
!1487 = !{!1488, !1494, !1503, !1511, !1520}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1486, file: !35, line: 352, baseType: !1489, size: 56)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !35, line: 295, size: 56, elements: !1490)
!1490 = !{!1491, !1492, !1493}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1489, file: !35, line: 296, baseType: !235, size: 32)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !1489, file: !35, line: 297, baseType: !49, size: 16, offset: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !1489, file: !35, line: 298, baseType: !30, size: 8, offset: 48)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !1486, file: !35, line: 353, baseType: !1495, size: 56)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !35, line: 314, size: 56, elements: !1496)
!1496 = !{!1497, !1498, !1499, !1500, !1501, !1502}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1495, file: !35, line: 315, baseType: !30, size: 8)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1495, file: !35, line: 316, baseType: !30, size: 8, offset: 8)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1495, file: !35, line: 317, baseType: !30, size: 8, offset: 16)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !1495, file: !35, line: 318, baseType: !30, size: 8, offset: 24)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !1495, file: !35, line: 319, baseType: !30, size: 8, offset: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1495, file: !35, line: 320, baseType: !49, size: 16, offset: 40)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !1486, file: !35, line: 354, baseType: !1504, size: 56)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !35, line: 325, size: 56, elements: !1505)
!1505 = !{!1506, !1507, !1508, !1510}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1504, file: !35, line: 326, baseType: !30, size: 8)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1504, file: !35, line: 327, baseType: !30, size: 8, offset: 8)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1504, file: !35, line: 328, baseType: !1509, size: 32, offset: 16)
!1509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !236)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1504, file: !35, line: 329, baseType: !30, size: 8, offset: 48)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !1486, file: !35, line: 355, baseType: !1512, size: 56)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !35, line: 334, size: 56, elements: !1513)
!1513 = !{!1514, !1515, !1516, !1518, !1519}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1512, file: !35, line: 335, baseType: !30, size: 8)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1512, file: !35, line: 336, baseType: !30, size: 8, offset: 8)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1512, file: !35, line: 337, baseType: !1517, size: 16, offset: 16)
!1517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 16, elements: !478)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !1512, file: !35, line: 338, baseType: !30, size: 8, offset: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1512, file: !35, line: 339, baseType: !49, size: 16, offset: 40)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !1486, file: !35, line: 356, baseType: !1521, size: 56)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !35, line: 342, size: 56, elements: !1522)
!1522 = !{!1523, !1524, !1525, !1526, !1527, !1528}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1521, file: !35, line: 343, baseType: !30, size: 8)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1521, file: !35, line: 344, baseType: !30, size: 8, offset: 8)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1521, file: !35, line: 345, baseType: !30, size: 8, offset: 16)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !1521, file: !35, line: 346, baseType: !30, size: 8, offset: 24)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !1521, file: !35, line: 347, baseType: !30, size: 8, offset: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1521, file: !35, line: 348, baseType: !49, size: 16, offset: 40)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !1474, file: !143, line: 164, baseType: !38, size: 64, offset: 448)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !1474, file: !143, line: 165, baseType: !38, size: 64, offset: 512)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !1474, file: !143, line: 167, baseType: !26, size: 32, offset: 576)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !1474, file: !143, line: 168, baseType: !26, size: 32, offset: 608)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1474, file: !143, line: 169, baseType: !49, size: 16, offset: 640)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !1474, file: !143, line: 170, baseType: !49, size: 16, offset: 656)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !1474, file: !143, line: 171, baseType: !30, size: 8, offset: 672)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !1474, file: !143, line: 172, baseType: !30, size: 8, offset: 680)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1474, file: !143, line: 173, baseType: !30, size: 8, offset: 688)
!1538 = !DILocation(line: 459, column: 29, scope: !1462)
!1539 = !DILocalVariable(name: "notify", scope: !1462, file: !3, line: 460, type: !543)
!1540 = !DILocation(line: 460, column: 31, scope: !1462)
!1541 = !DILocation(line: 466, column: 10, scope: !1462)
!1542 = !DILocation(line: 466, column: 2, scope: !1462)
!1543 = !DILocation(line: 479, column: 12, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 466, column: 57)
!1545 = !DILocation(line: 479, column: 28, scope: !1544)
!1546 = !DILocation(line: 479, column: 37, scope: !1544)
!1547 = !DILocation(line: 479, column: 10, scope: !1544)
!1548 = !DILocation(line: 480, column: 3, scope: !1544)
!1549 = !DILocation(line: 480, column: 10, scope: !1544)
!1550 = !DILocation(line: 480, column: 31, scope: !1544)
!1551 = !DILocation(line: 480, column: 34, scope: !1544)
!1552 = !DILocation(line: 0, scope: !1544)
!1553 = !DILocation(line: 482, column: 37, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 480, column: 42)
!1555 = !DILocation(line: 482, column: 45, scope: !1554)
!1556 = !DILocation(line: 482, column: 8, scope: !1554)
!1557 = !DILocation(line: 481, column: 11, scope: !1554)
!1558 = !DILocation(line: 485, column: 13, scope: !1554)
!1559 = !DILocation(line: 485, column: 21, scope: !1554)
!1560 = !DILocation(line: 485, column: 11, scope: !1554)
!1561 = distinct !{!1561, !1548, !1562}
!1562 = !DILocation(line: 486, column: 3, scope: !1544)
!1563 = !DILocation(line: 488, column: 3, scope: !1544)
!1564 = !DILocation(line: 494, column: 10, scope: !1544)
!1565 = !DILocation(line: 494, column: 8, scope: !1544)
!1566 = !DILocation(line: 495, column: 8, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 495, column: 7)
!1568 = !DILocation(line: 495, column: 7, scope: !1544)
!1569 = !DILocation(line: 496, column: 11, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 495, column: 14)
!1571 = !DILocation(line: 497, column: 3, scope: !1570)
!1572 = !DILocation(line: 503, column: 8, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 497, column: 10)
!1574 = !DILocation(line: 503, column: 24, scope: !1573)
!1575 = !DILocation(line: 503, column: 33, scope: !1573)
!1576 = !DILocation(line: 502, column: 4, scope: !1573)
!1577 = !DILocation(line: 502, column: 10, scope: !1573)
!1578 = !DILocation(line: 502, column: 22, scope: !1573)
!1579 = !DILocation(line: 504, column: 4, scope: !1573)
!1580 = !DILocation(line: 504, column: 10, scope: !1573)
!1581 = !DILocation(line: 504, column: 16, scope: !1573)
!1582 = !DILocation(line: 506, column: 30, scope: !1573)
!1583 = !DILocation(line: 506, column: 13, scope: !1573)
!1584 = !DILocation(line: 506, column: 11, scope: !1573)
!1585 = !DILocation(line: 507, column: 4, scope: !1573)
!1586 = !DILocation(line: 510, column: 7, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 510, column: 7)
!1588 = !DILocation(line: 510, column: 7, scope: !1544)
!1589 = !DILocation(line: 511, column: 4, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 510, column: 29)
!1591 = !DILocation(line: 516, column: 3, scope: !1590)
!1592 = !DILocation(line: 517, column: 3, scope: !1544)
!1593 = !DILocation(line: 521, column: 3, scope: !1544)
!1594 = !DILocation(line: 527, column: 33, scope: !1462)
!1595 = !DILocation(line: 526, column: 11, scope: !1462)
!1596 = !DILocation(line: 526, column: 9, scope: !1462)
!1597 = !DILocation(line: 528, column: 6, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 528, column: 6)
!1599 = !DILocation(line: 528, column: 6, scope: !1462)
!1600 = !DILocation(line: 529, column: 3, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 528, column: 28)
!1602 = !DILabel(scope: !1462, name: "error_exit", file: !3, line: 532)
!1603 = !DILocation(line: 532, column: 1, scope: !1462)
!1604 = !DILocation(line: 533, column: 28, scope: !1462)
!1605 = !DILocation(line: 533, column: 2, scope: !1462)
!1606 = !DILocation(line: 534, column: 2, scope: !1462)
!1607 = !DILocation(line: 535, column: 1, scope: !1462)
!1608 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1609, file: !1609, line: 55, type: !1610, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1609 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!118, !798}
!1612 = !DILocalVariable(name: "flags", arg: 1, scope: !1613, file: !1614, line: 162, type: !801)
!1613 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1614, file: !1614, line: 162, type: !1615, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1614 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!1617, !801}
!1617 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1618 = !DILocation(line: 162, column: 67, scope: !1613, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 57, column: 23, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !1609, line: 57, column: 23)
!1621 = distinct !DILexicalBlock(scope: !1608, file: !1609, line: 57, column: 23)
!1622 = !DILocalVariable(name: "size", arg: 1, scope: !1608, file: !1609, line: 55, type: !798)
!1623 = !DILocation(line: 55, column: 55, scope: !1608)
!1624 = !DILocation(line: 57, column: 17, scope: !1608)
!1625 = !DILocalVariable(name: "_flags", scope: !1621, file: !1609, line: 57, type: !801)
!1626 = !DILocation(line: 57, column: 23, scope: !1621)
!1627 = !DILocalVariable(name: "__dummy", scope: !1628, file: !1609, line: 57, type: !801)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !1609, line: 57, column: 23)
!1629 = distinct !DILexicalBlock(scope: !1621, file: !1609, line: 57, column: 23)
!1630 = !DILocation(line: 57, column: 23, scope: !1628)
!1631 = !DILocalVariable(name: "__dummy2", scope: !1628, file: !1609, line: 57, type: !801)
!1632 = !DILocation(line: 57, column: 23, scope: !1629)
!1633 = !DILocalVariable(name: "__dummy", scope: !1634, file: !1609, line: 57, type: !801)
!1634 = distinct !DILexicalBlock(scope: !1620, file: !1609, line: 57, column: 23)
!1635 = !DILocation(line: 57, column: 23, scope: !1634)
!1636 = !DILocalVariable(name: "__dummy2", scope: !1634, file: !1609, line: 57, type: !801)
!1637 = !DILocation(line: 57, column: 23, scope: !1620)
!1638 = !DILocation(line: 164, column: 11, scope: !1613, inlinedAt: !1619)
!1639 = !DILocation(line: 164, column: 17, scope: !1613, inlinedAt: !1619)
!1640 = !DILocation(line: 164, column: 9, scope: !1613, inlinedAt: !1619)
!1641 = !DILocation(line: 57, column: 23, scope: !1608)
!1642 = !DILocation(line: 57, column: 9, scope: !1608)
!1643 = !DILocation(line: 57, column: 2, scope: !1608)
!1644 = distinct !DISubprogram(name: "acpi_os_free", scope: !1609, file: !1609, line: 60, type: !1463, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1645 = !DILocalVariable(name: "memory", arg: 1, scope: !1644, file: !1609, line: 60, type: !118)
!1646 = !DILocation(line: 60, column: 39, scope: !1644)
!1647 = !DILocation(line: 62, column: 8, scope: !1644)
!1648 = !DILocation(line: 62, column: 2, scope: !1644)
!1649 = !DILocation(line: 63, column: 1, scope: !1644)
!1650 = distinct !DISubprogram(name: "acpi_ev_asynch_enable_gpe", scope: !3, file: !3, line: 552, type: !1463, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1651 = !DILocalVariable(name: "context", arg: 1, scope: !1650, file: !3, line: 552, type: !118)
!1652 = !DILocation(line: 552, column: 63, scope: !1650)
!1653 = !DILocalVariable(name: "gpe_event_info", scope: !1650, file: !3, line: 554, type: !522)
!1654 = !DILocation(line: 554, column: 30, scope: !1650)
!1655 = !DILocation(line: 554, column: 47, scope: !1650)
!1656 = !DILocalVariable(name: "flags", scope: !1650, file: !3, line: 555, type: !801)
!1657 = !DILocation(line: 555, column: 17, scope: !1650)
!1658 = !DILocation(line: 557, column: 31, scope: !1650)
!1659 = !DILocation(line: 557, column: 10, scope: !1650)
!1660 = !DILocation(line: 557, column: 8, scope: !1650)
!1661 = !DILocation(line: 558, column: 27, scope: !1650)
!1662 = !DILocation(line: 558, column: 8, scope: !1650)
!1663 = !DILocation(line: 559, column: 23, scope: !1650)
!1664 = !DILocation(line: 559, column: 42, scope: !1650)
!1665 = !DILocation(line: 559, column: 2, scope: !1650)
!1666 = !DILocation(line: 561, column: 2, scope: !1650)
!1667 = distinct !DISubprogram(name: "kzalloc", scope: !17, file: !17, line: 662, type: !1668, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!118, !1670, !799}
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !800, line: 55, baseType: !1671)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1672, line: 72, baseType: !1673)
!1672 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1672, line: 16, baseType: !801)
!1674 = !DILocalVariable(name: "s", arg: 1, scope: !1675, file: !17, line: 445, type: !1678)
!1675 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !17, file: !17, line: 445, type: !1676, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!118, !1678, !799, !1670}
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1680, line: 117, flags: DIFlagFwdDecl)
!1680 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1681 = !DILocation(line: 445, column: 72, scope: !1675, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 552, column: 10, scope: !1683, inlinedAt: !1686)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !17, line: 540, column: 34)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !17, line: 540, column: 6)
!1685 = distinct !DISubprogram(name: "kmalloc", scope: !17, file: !17, line: 538, type: !1668, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1686 = distinct !DILocation(line: 664, column: 9, scope: !1667)
!1687 = !DILocalVariable(name: "flags", arg: 2, scope: !1675, file: !17, line: 446, type: !799)
!1688 = !DILocation(line: 446, column: 9, scope: !1675, inlinedAt: !1682)
!1689 = !DILocalVariable(name: "size", arg: 3, scope: !1675, file: !17, line: 446, type: !1670)
!1690 = !DILocation(line: 446, column: 23, scope: !1675, inlinedAt: !1682)
!1691 = !DILocalVariable(name: "ret", scope: !1675, file: !17, line: 448, type: !118)
!1692 = !DILocation(line: 448, column: 8, scope: !1675, inlinedAt: !1682)
!1693 = !DILocalVariable(name: "flags", arg: 1, scope: !1694, file: !17, line: 318, type: !799)
!1694 = distinct !DISubprogram(name: "kmalloc_type", scope: !17, file: !17, line: 318, type: !1695, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!16, !799}
!1697 = !DILocation(line: 318, column: 67, scope: !1694, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 553, column: 20, scope: !1683, inlinedAt: !1686)
!1699 = !DILocalVariable(name: "size", arg: 1, scope: !1700, file: !17, line: 346, type: !1670)
!1700 = distinct !DISubprogram(name: "kmalloc_index", scope: !17, file: !17, line: 346, type: !1701, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!7, !1670}
!1703 = !DILocation(line: 346, column: 58, scope: !1700, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 547, column: 11, scope: !1683, inlinedAt: !1686)
!1705 = !DILocalVariable(name: "size", arg: 1, scope: !1706, file: !17, line: 472, type: !1670)
!1706 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !17, file: !17, line: 472, type: !1707, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!118, !1670, !799, !7}
!1709 = !DILocation(line: 472, column: 28, scope: !1706, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 481, column: 9, scope: !1711, inlinedAt: !1712)
!1711 = distinct !DISubprogram(name: "kmalloc_large", scope: !17, file: !17, line: 478, type: !1668, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1712 = distinct !DILocation(line: 545, column: 11, scope: !1713, inlinedAt: !1686)
!1713 = distinct !DILexicalBlock(scope: !1683, file: !17, line: 544, column: 7)
!1714 = !DILocalVariable(name: "flags", arg: 2, scope: !1706, file: !17, line: 472, type: !799)
!1715 = !DILocation(line: 472, column: 40, scope: !1706, inlinedAt: !1710)
!1716 = !DILocalVariable(name: "order", arg: 3, scope: !1706, file: !17, line: 472, type: !7)
!1717 = !DILocation(line: 472, column: 60, scope: !1706, inlinedAt: !1710)
!1718 = !DILocalVariable(name: "size", arg: 1, scope: !1711, file: !17, line: 478, type: !1670)
!1719 = !DILocation(line: 478, column: 51, scope: !1711, inlinedAt: !1712)
!1720 = !DILocalVariable(name: "flags", arg: 2, scope: !1711, file: !17, line: 478, type: !799)
!1721 = !DILocation(line: 478, column: 63, scope: !1711, inlinedAt: !1712)
!1722 = !DILocalVariable(name: "order", scope: !1711, file: !17, line: 480, type: !7)
!1723 = !DILocation(line: 480, column: 15, scope: !1711, inlinedAt: !1712)
!1724 = !DILocalVariable(name: "size", arg: 1, scope: !1685, file: !17, line: 538, type: !1670)
!1725 = !DILocation(line: 538, column: 45, scope: !1685, inlinedAt: !1686)
!1726 = !DILocalVariable(name: "flags", arg: 2, scope: !1685, file: !17, line: 538, type: !799)
!1727 = !DILocation(line: 538, column: 57, scope: !1685, inlinedAt: !1686)
!1728 = !DILocalVariable(name: "index", scope: !1683, file: !17, line: 542, type: !7)
!1729 = !DILocation(line: 542, column: 16, scope: !1683, inlinedAt: !1686)
!1730 = !DILocalVariable(name: "size", arg: 1, scope: !1667, file: !17, line: 662, type: !1670)
!1731 = !DILocation(line: 662, column: 36, scope: !1667)
!1732 = !DILocalVariable(name: "flags", arg: 2, scope: !1667, file: !17, line: 662, type: !799)
!1733 = !DILocation(line: 662, column: 48, scope: !1667)
!1734 = !DILocation(line: 664, column: 17, scope: !1667)
!1735 = !DILocation(line: 664, column: 23, scope: !1667)
!1736 = !DILocation(line: 664, column: 29, scope: !1667)
!1737 = !DILocation(line: 540, column: 27, scope: !1684, inlinedAt: !1686)
!1738 = !DILocation(line: 540, column: 6, scope: !1684, inlinedAt: !1686)
!1739 = !DILocation(line: 540, column: 6, scope: !1685, inlinedAt: !1686)
!1740 = !DILocation(line: 544, column: 7, scope: !1713, inlinedAt: !1686)
!1741 = !DILocation(line: 544, column: 12, scope: !1713, inlinedAt: !1686)
!1742 = !DILocation(line: 544, column: 7, scope: !1683, inlinedAt: !1686)
!1743 = !DILocation(line: 545, column: 25, scope: !1713, inlinedAt: !1686)
!1744 = !DILocation(line: 545, column: 31, scope: !1713, inlinedAt: !1686)
!1745 = !DILocation(line: 480, column: 33, scope: !1711, inlinedAt: !1712)
!1746 = !DILocation(line: 480, column: 23, scope: !1711, inlinedAt: !1712)
!1747 = !DILocation(line: 481, column: 29, scope: !1711, inlinedAt: !1712)
!1748 = !DILocation(line: 481, column: 35, scope: !1711, inlinedAt: !1712)
!1749 = !DILocation(line: 481, column: 42, scope: !1711, inlinedAt: !1712)
!1750 = !DILocation(line: 474, column: 23, scope: !1706, inlinedAt: !1710)
!1751 = !DILocation(line: 474, column: 29, scope: !1706, inlinedAt: !1710)
!1752 = !DILocation(line: 474, column: 36, scope: !1706, inlinedAt: !1710)
!1753 = !DILocation(line: 474, column: 9, scope: !1706, inlinedAt: !1710)
!1754 = !DILocation(line: 545, column: 4, scope: !1713, inlinedAt: !1686)
!1755 = !DILocation(line: 547, column: 25, scope: !1683, inlinedAt: !1686)
!1756 = !DILocation(line: 348, column: 7, scope: !1757, inlinedAt: !1704)
!1757 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 348, column: 6)
!1758 = !DILocation(line: 348, column: 6, scope: !1700, inlinedAt: !1704)
!1759 = !DILocation(line: 349, column: 3, scope: !1757, inlinedAt: !1704)
!1760 = !DILocation(line: 351, column: 6, scope: !1761, inlinedAt: !1704)
!1761 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 351, column: 6)
!1762 = !DILocation(line: 351, column: 11, scope: !1761, inlinedAt: !1704)
!1763 = !DILocation(line: 351, column: 6, scope: !1700, inlinedAt: !1704)
!1764 = !DILocation(line: 352, column: 3, scope: !1761, inlinedAt: !1704)
!1765 = !DILocation(line: 354, column: 32, scope: !1766, inlinedAt: !1704)
!1766 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 354, column: 6)
!1767 = !DILocation(line: 354, column: 37, scope: !1766, inlinedAt: !1704)
!1768 = !DILocation(line: 354, column: 42, scope: !1766, inlinedAt: !1704)
!1769 = !DILocation(line: 354, column: 45, scope: !1766, inlinedAt: !1704)
!1770 = !DILocation(line: 354, column: 50, scope: !1766, inlinedAt: !1704)
!1771 = !DILocation(line: 354, column: 6, scope: !1700, inlinedAt: !1704)
!1772 = !DILocation(line: 355, column: 3, scope: !1766, inlinedAt: !1704)
!1773 = !DILocation(line: 356, column: 32, scope: !1774, inlinedAt: !1704)
!1774 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 356, column: 6)
!1775 = !DILocation(line: 356, column: 37, scope: !1774, inlinedAt: !1704)
!1776 = !DILocation(line: 356, column: 43, scope: !1774, inlinedAt: !1704)
!1777 = !DILocation(line: 356, column: 46, scope: !1774, inlinedAt: !1704)
!1778 = !DILocation(line: 356, column: 51, scope: !1774, inlinedAt: !1704)
!1779 = !DILocation(line: 356, column: 6, scope: !1700, inlinedAt: !1704)
!1780 = !DILocation(line: 357, column: 3, scope: !1774, inlinedAt: !1704)
!1781 = !DILocation(line: 358, column: 6, scope: !1782, inlinedAt: !1704)
!1782 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 358, column: 6)
!1783 = !DILocation(line: 358, column: 11, scope: !1782, inlinedAt: !1704)
!1784 = !DILocation(line: 358, column: 6, scope: !1700, inlinedAt: !1704)
!1785 = !DILocation(line: 358, column: 26, scope: !1782, inlinedAt: !1704)
!1786 = !DILocation(line: 359, column: 6, scope: !1787, inlinedAt: !1704)
!1787 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 359, column: 6)
!1788 = !DILocation(line: 359, column: 11, scope: !1787, inlinedAt: !1704)
!1789 = !DILocation(line: 359, column: 6, scope: !1700, inlinedAt: !1704)
!1790 = !DILocation(line: 359, column: 26, scope: !1787, inlinedAt: !1704)
!1791 = !DILocation(line: 360, column: 6, scope: !1792, inlinedAt: !1704)
!1792 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 360, column: 6)
!1793 = !DILocation(line: 360, column: 11, scope: !1792, inlinedAt: !1704)
!1794 = !DILocation(line: 360, column: 6, scope: !1700, inlinedAt: !1704)
!1795 = !DILocation(line: 360, column: 26, scope: !1792, inlinedAt: !1704)
!1796 = !DILocation(line: 361, column: 6, scope: !1797, inlinedAt: !1704)
!1797 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 361, column: 6)
!1798 = !DILocation(line: 361, column: 11, scope: !1797, inlinedAt: !1704)
!1799 = !DILocation(line: 361, column: 6, scope: !1700, inlinedAt: !1704)
!1800 = !DILocation(line: 361, column: 26, scope: !1797, inlinedAt: !1704)
!1801 = !DILocation(line: 362, column: 6, scope: !1802, inlinedAt: !1704)
!1802 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 362, column: 6)
!1803 = !DILocation(line: 362, column: 11, scope: !1802, inlinedAt: !1704)
!1804 = !DILocation(line: 362, column: 6, scope: !1700, inlinedAt: !1704)
!1805 = !DILocation(line: 362, column: 26, scope: !1802, inlinedAt: !1704)
!1806 = !DILocation(line: 363, column: 6, scope: !1807, inlinedAt: !1704)
!1807 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 363, column: 6)
!1808 = !DILocation(line: 363, column: 11, scope: !1807, inlinedAt: !1704)
!1809 = !DILocation(line: 363, column: 6, scope: !1700, inlinedAt: !1704)
!1810 = !DILocation(line: 363, column: 26, scope: !1807, inlinedAt: !1704)
!1811 = !DILocation(line: 364, column: 6, scope: !1812, inlinedAt: !1704)
!1812 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 364, column: 6)
!1813 = !DILocation(line: 364, column: 11, scope: !1812, inlinedAt: !1704)
!1814 = !DILocation(line: 364, column: 6, scope: !1700, inlinedAt: !1704)
!1815 = !DILocation(line: 364, column: 26, scope: !1812, inlinedAt: !1704)
!1816 = !DILocation(line: 365, column: 6, scope: !1817, inlinedAt: !1704)
!1817 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 365, column: 6)
!1818 = !DILocation(line: 365, column: 11, scope: !1817, inlinedAt: !1704)
!1819 = !DILocation(line: 365, column: 6, scope: !1700, inlinedAt: !1704)
!1820 = !DILocation(line: 365, column: 26, scope: !1817, inlinedAt: !1704)
!1821 = !DILocation(line: 366, column: 6, scope: !1822, inlinedAt: !1704)
!1822 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 366, column: 6)
!1823 = !DILocation(line: 366, column: 11, scope: !1822, inlinedAt: !1704)
!1824 = !DILocation(line: 366, column: 6, scope: !1700, inlinedAt: !1704)
!1825 = !DILocation(line: 366, column: 26, scope: !1822, inlinedAt: !1704)
!1826 = !DILocation(line: 367, column: 6, scope: !1827, inlinedAt: !1704)
!1827 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 367, column: 6)
!1828 = !DILocation(line: 367, column: 11, scope: !1827, inlinedAt: !1704)
!1829 = !DILocation(line: 367, column: 6, scope: !1700, inlinedAt: !1704)
!1830 = !DILocation(line: 367, column: 26, scope: !1827, inlinedAt: !1704)
!1831 = !DILocation(line: 368, column: 6, scope: !1832, inlinedAt: !1704)
!1832 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 368, column: 6)
!1833 = !DILocation(line: 368, column: 11, scope: !1832, inlinedAt: !1704)
!1834 = !DILocation(line: 368, column: 6, scope: !1700, inlinedAt: !1704)
!1835 = !DILocation(line: 368, column: 26, scope: !1832, inlinedAt: !1704)
!1836 = !DILocation(line: 369, column: 6, scope: !1837, inlinedAt: !1704)
!1837 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 369, column: 6)
!1838 = !DILocation(line: 369, column: 11, scope: !1837, inlinedAt: !1704)
!1839 = !DILocation(line: 369, column: 6, scope: !1700, inlinedAt: !1704)
!1840 = !DILocation(line: 369, column: 26, scope: !1837, inlinedAt: !1704)
!1841 = !DILocation(line: 370, column: 6, scope: !1842, inlinedAt: !1704)
!1842 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 370, column: 6)
!1843 = !DILocation(line: 370, column: 11, scope: !1842, inlinedAt: !1704)
!1844 = !DILocation(line: 370, column: 6, scope: !1700, inlinedAt: !1704)
!1845 = !DILocation(line: 370, column: 26, scope: !1842, inlinedAt: !1704)
!1846 = !DILocation(line: 371, column: 6, scope: !1847, inlinedAt: !1704)
!1847 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 371, column: 6)
!1848 = !DILocation(line: 371, column: 11, scope: !1847, inlinedAt: !1704)
!1849 = !DILocation(line: 371, column: 6, scope: !1700, inlinedAt: !1704)
!1850 = !DILocation(line: 371, column: 26, scope: !1847, inlinedAt: !1704)
!1851 = !DILocation(line: 372, column: 6, scope: !1852, inlinedAt: !1704)
!1852 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 372, column: 6)
!1853 = !DILocation(line: 372, column: 11, scope: !1852, inlinedAt: !1704)
!1854 = !DILocation(line: 372, column: 6, scope: !1700, inlinedAt: !1704)
!1855 = !DILocation(line: 372, column: 26, scope: !1852, inlinedAt: !1704)
!1856 = !DILocation(line: 373, column: 6, scope: !1857, inlinedAt: !1704)
!1857 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 373, column: 6)
!1858 = !DILocation(line: 373, column: 11, scope: !1857, inlinedAt: !1704)
!1859 = !DILocation(line: 373, column: 6, scope: !1700, inlinedAt: !1704)
!1860 = !DILocation(line: 373, column: 26, scope: !1857, inlinedAt: !1704)
!1861 = !DILocation(line: 374, column: 6, scope: !1862, inlinedAt: !1704)
!1862 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 374, column: 6)
!1863 = !DILocation(line: 374, column: 11, scope: !1862, inlinedAt: !1704)
!1864 = !DILocation(line: 374, column: 6, scope: !1700, inlinedAt: !1704)
!1865 = !DILocation(line: 374, column: 26, scope: !1862, inlinedAt: !1704)
!1866 = !DILocation(line: 375, column: 6, scope: !1867, inlinedAt: !1704)
!1867 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 375, column: 6)
!1868 = !DILocation(line: 375, column: 11, scope: !1867, inlinedAt: !1704)
!1869 = !DILocation(line: 375, column: 6, scope: !1700, inlinedAt: !1704)
!1870 = !DILocation(line: 375, column: 27, scope: !1867, inlinedAt: !1704)
!1871 = !DILocation(line: 376, column: 6, scope: !1872, inlinedAt: !1704)
!1872 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 376, column: 6)
!1873 = !DILocation(line: 376, column: 11, scope: !1872, inlinedAt: !1704)
!1874 = !DILocation(line: 376, column: 6, scope: !1700, inlinedAt: !1704)
!1875 = !DILocation(line: 376, column: 32, scope: !1872, inlinedAt: !1704)
!1876 = !DILocation(line: 377, column: 6, scope: !1877, inlinedAt: !1704)
!1877 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 377, column: 6)
!1878 = !DILocation(line: 377, column: 11, scope: !1877, inlinedAt: !1704)
!1879 = !DILocation(line: 377, column: 6, scope: !1700, inlinedAt: !1704)
!1880 = !DILocation(line: 377, column: 32, scope: !1877, inlinedAt: !1704)
!1881 = !DILocation(line: 378, column: 6, scope: !1882, inlinedAt: !1704)
!1882 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 378, column: 6)
!1883 = !DILocation(line: 378, column: 11, scope: !1882, inlinedAt: !1704)
!1884 = !DILocation(line: 378, column: 6, scope: !1700, inlinedAt: !1704)
!1885 = !DILocation(line: 378, column: 32, scope: !1882, inlinedAt: !1704)
!1886 = !DILocation(line: 379, column: 6, scope: !1887, inlinedAt: !1704)
!1887 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 379, column: 6)
!1888 = !DILocation(line: 379, column: 11, scope: !1887, inlinedAt: !1704)
!1889 = !DILocation(line: 379, column: 6, scope: !1700, inlinedAt: !1704)
!1890 = !DILocation(line: 379, column: 33, scope: !1887, inlinedAt: !1704)
!1891 = !DILocation(line: 380, column: 6, scope: !1892, inlinedAt: !1704)
!1892 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 380, column: 6)
!1893 = !DILocation(line: 380, column: 11, scope: !1892, inlinedAt: !1704)
!1894 = !DILocation(line: 380, column: 6, scope: !1700, inlinedAt: !1704)
!1895 = !DILocation(line: 380, column: 33, scope: !1892, inlinedAt: !1704)
!1896 = !DILocation(line: 381, column: 6, scope: !1897, inlinedAt: !1704)
!1897 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 381, column: 6)
!1898 = !DILocation(line: 381, column: 11, scope: !1897, inlinedAt: !1704)
!1899 = !DILocation(line: 381, column: 6, scope: !1700, inlinedAt: !1704)
!1900 = !DILocation(line: 381, column: 33, scope: !1897, inlinedAt: !1704)
!1901 = !DILocation(line: 382, column: 2, scope: !1902, inlinedAt: !1704)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !17, line: 382, column: 2)
!1903 = distinct !DILexicalBlock(scope: !1700, file: !17, line: 382, column: 2)
!1904 = !{i32 -2144095690, i32 -2144095661, i32 -2144095615, i32 -2144095557, i32 -2144095503, i32 -2144095449, i32 -2144095394, i32 -2144095363}
!1905 = !DILocation(line: 382, column: 2, scope: !1906, inlinedAt: !1704)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !17, line: 382, column: 2)
!1907 = distinct !DILexicalBlock(scope: !1903, file: !17, line: 382, column: 2)
!1908 = !{i32 -2144094920, i32 -2144094913, i32 -2144094859, i32 -2144094828, i32 -2144094798}
!1909 = !DILocation(line: 382, column: 2, scope: !1907, inlinedAt: !1704)
!1910 = !DILocation(line: 386, column: 1, scope: !1700, inlinedAt: !1704)
!1911 = !DILocation(line: 547, column: 9, scope: !1683, inlinedAt: !1686)
!1912 = !DILocation(line: 549, column: 8, scope: !1913, inlinedAt: !1686)
!1913 = distinct !DILexicalBlock(scope: !1683, file: !17, line: 549, column: 7)
!1914 = !DILocation(line: 549, column: 7, scope: !1683, inlinedAt: !1686)
!1915 = !DILocation(line: 550, column: 4, scope: !1913, inlinedAt: !1686)
!1916 = !DILocation(line: 553, column: 33, scope: !1683, inlinedAt: !1686)
!1917 = !DILocation(line: 325, column: 6, scope: !1918, inlinedAt: !1698)
!1918 = distinct !DILexicalBlock(scope: !1694, file: !17, line: 325, column: 6)
!1919 = !DILocation(line: 325, column: 6, scope: !1694, inlinedAt: !1698)
!1920 = !DILocation(line: 326, column: 3, scope: !1918, inlinedAt: !1698)
!1921 = !DILocation(line: 332, column: 9, scope: !1694, inlinedAt: !1698)
!1922 = !DILocation(line: 332, column: 15, scope: !1694, inlinedAt: !1698)
!1923 = !DILocation(line: 332, column: 2, scope: !1694, inlinedAt: !1698)
!1924 = !DILocation(line: 336, column: 1, scope: !1694, inlinedAt: !1698)
!1925 = !DILocation(line: 553, column: 5, scope: !1683, inlinedAt: !1686)
!1926 = !DILocation(line: 553, column: 41, scope: !1683, inlinedAt: !1686)
!1927 = !DILocation(line: 554, column: 5, scope: !1683, inlinedAt: !1686)
!1928 = !DILocation(line: 554, column: 12, scope: !1683, inlinedAt: !1686)
!1929 = !DILocation(line: 448, column: 31, scope: !1675, inlinedAt: !1682)
!1930 = !DILocation(line: 448, column: 34, scope: !1675, inlinedAt: !1682)
!1931 = !DILocation(line: 448, column: 14, scope: !1675, inlinedAt: !1682)
!1932 = !DILocation(line: 450, column: 22, scope: !1675, inlinedAt: !1682)
!1933 = !DILocation(line: 450, column: 25, scope: !1675, inlinedAt: !1682)
!1934 = !DILocation(line: 450, column: 30, scope: !1675, inlinedAt: !1682)
!1935 = !DILocation(line: 450, column: 36, scope: !1675, inlinedAt: !1682)
!1936 = !DILocation(line: 450, column: 8, scope: !1675, inlinedAt: !1682)
!1937 = !DILocation(line: 450, column: 6, scope: !1675, inlinedAt: !1682)
!1938 = !DILocation(line: 451, column: 9, scope: !1675, inlinedAt: !1682)
!1939 = !DILocation(line: 552, column: 3, scope: !1683, inlinedAt: !1686)
!1940 = !DILocation(line: 557, column: 19, scope: !1685, inlinedAt: !1686)
!1941 = !DILocation(line: 557, column: 25, scope: !1685, inlinedAt: !1686)
!1942 = !DILocation(line: 557, column: 9, scope: !1685, inlinedAt: !1686)
!1943 = !DILocation(line: 557, column: 2, scope: !1685, inlinedAt: !1686)
!1944 = !DILocation(line: 558, column: 1, scope: !1685, inlinedAt: !1686)
!1945 = !DILocation(line: 664, column: 2, scope: !1667)
!1946 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1947, file: !1947, line: 646, type: !1948, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1947 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!801}
!1950 = !DILocalVariable(name: "__ret", scope: !1951, file: !1947, line: 648, type: !801)
!1951 = distinct !DILexicalBlock(scope: !1946, file: !1947, line: 648, column: 9)
!1952 = !DILocation(line: 648, column: 9, scope: !1951)
!1953 = !DILocalVariable(name: "__edi", scope: !1951, file: !1947, line: 648, type: !801)
!1954 = !DILocalVariable(name: "__esi", scope: !1951, file: !1947, line: 648, type: !801)
!1955 = !DILocalVariable(name: "__edx", scope: !1951, file: !1947, line: 648, type: !801)
!1956 = !DILocalVariable(name: "__ecx", scope: !1951, file: !1947, line: 648, type: !801)
!1957 = !DILocalVariable(name: "__eax", scope: !1951, file: !1947, line: 648, type: !801)
!1958 = !DILocation(line: 648, column: 9, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !1947, line: 648, column: 9)
!1960 = distinct !DILexicalBlock(scope: !1951, file: !1947, line: 648, column: 9)
!1961 = !{i32 -2145769296, i32 -2145766981, i32 -2145766747, i32 -2145766696, i32 -2145766668, i32 -2145766643, i32 -2145766959, i32 -2145766946, i32 -2145766508, i32 -2145766389, i32 -2145766854, i32 -2145766827, i32 -2145766799, i32 -2145766769}
!1962 = !DILocalVariable(name: "__mask", scope: !1963, file: !1947, line: 648, type: !801)
!1963 = distinct !DILexicalBlock(scope: !1959, file: !1947, line: 648, column: 9)
!1964 = !DILocation(line: 648, column: 9, scope: !1963)
!1965 = !DILocation(line: 648, column: 9, scope: !1960)
!1966 = !DILocation(line: 648, column: 2, scope: !1946)
!1967 = distinct !DISubprogram(name: "get_order", scope: !1968, file: !1968, line: 29, type: !1615, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1968 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1969 = !DILocalVariable(name: "x", arg: 1, scope: !1970, file: !1971, line: 366, type: !67)
!1970 = distinct !DISubprogram(name: "fls64", scope: !1971, file: !1971, line: 366, type: !1972, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!1971 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!1617, !67}
!1974 = !DILocation(line: 366, column: 40, scope: !1970, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 46, column: 9, scope: !1967)
!1976 = !DILocalVariable(name: "bitpos", scope: !1970, file: !1971, line: 368, type: !1617)
!1977 = !DILocation(line: 368, column: 6, scope: !1970, inlinedAt: !1975)
!1978 = !DILocalVariable(name: "size", arg: 1, scope: !1967, file: !1968, line: 29, type: !801)
!1979 = !DILocation(line: 29, column: 63, scope: !1967)
!1980 = !DILocation(line: 31, column: 27, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1967, file: !1968, line: 31, column: 6)
!1982 = !DILocation(line: 31, column: 6, scope: !1981)
!1983 = !DILocation(line: 31, column: 6, scope: !1967)
!1984 = !DILocation(line: 32, column: 8, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !1968, line: 32, column: 7)
!1986 = distinct !DILexicalBlock(scope: !1981, file: !1968, line: 31, column: 34)
!1987 = !DILocation(line: 32, column: 7, scope: !1986)
!1988 = !DILocation(line: 33, column: 4, scope: !1985)
!1989 = !DILocation(line: 35, column: 7, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1986, file: !1968, line: 35, column: 7)
!1991 = !DILocation(line: 35, column: 12, scope: !1990)
!1992 = !DILocation(line: 35, column: 7, scope: !1986)
!1993 = !DILocation(line: 36, column: 4, scope: !1990)
!1994 = !DILocation(line: 38, column: 10, scope: !1986)
!1995 = !DILocation(line: 38, column: 28, scope: !1986)
!1996 = !DILocation(line: 38, column: 41, scope: !1986)
!1997 = !DILocation(line: 38, column: 3, scope: !1986)
!1998 = !DILocation(line: 41, column: 6, scope: !1967)
!1999 = !DILocation(line: 42, column: 7, scope: !1967)
!2000 = !DILocation(line: 46, column: 15, scope: !1967)
!2001 = !DILocation(line: 374, column: 2, scope: !1970, inlinedAt: !1975)
!2002 = !DILocation(line: 376, column: 14, scope: !1970, inlinedAt: !1975)
!2003 = !{i32 675512}
!2004 = !DILocation(line: 377, column: 9, scope: !1970, inlinedAt: !1975)
!2005 = !DILocation(line: 377, column: 16, scope: !1970, inlinedAt: !1975)
!2006 = !DILocation(line: 46, column: 2, scope: !1967)
!2007 = !DILocation(line: 48, column: 1, scope: !1967)
!2008 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2009, file: !2009, line: 30, type: !2010, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!2009 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!1617, !66}
!2012 = !DILocation(line: 366, column: 40, scope: !1970, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 32, column: 9, scope: !2008)
!2014 = !DILocation(line: 368, column: 6, scope: !1970, inlinedAt: !2013)
!2015 = !DILocalVariable(name: "n", arg: 1, scope: !2008, file: !2009, line: 30, type: !66)
!2016 = !DILocation(line: 30, column: 21, scope: !2008)
!2017 = !DILocation(line: 32, column: 15, scope: !2008)
!2018 = !DILocation(line: 374, column: 2, scope: !1970, inlinedAt: !2013)
!2019 = !DILocation(line: 376, column: 14, scope: !1970, inlinedAt: !2013)
!2020 = !DILocation(line: 377, column: 9, scope: !1970, inlinedAt: !2013)
!2021 = !DILocation(line: 377, column: 16, scope: !1970, inlinedAt: !2013)
!2022 = !DILocation(line: 32, column: 18, scope: !2008)
!2023 = !DILocation(line: 32, column: 2, scope: !2008)
!2024 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2025, file: !2025, line: 137, type: !2026, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !816)
!2025 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!118, !1678, !2028, !1670, !799}
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2030 = !DILocalVariable(name: "s", arg: 1, scope: !2024, file: !2025, line: 137, type: !1678)
!2031 = !DILocation(line: 137, column: 54, scope: !2024)
!2032 = !DILocalVariable(name: "object", arg: 2, scope: !2024, file: !2025, line: 137, type: !2028)
!2033 = !DILocation(line: 137, column: 69, scope: !2024)
!2034 = !DILocalVariable(name: "size", arg: 3, scope: !2024, file: !2025, line: 138, type: !1670)
!2035 = !DILocation(line: 138, column: 12, scope: !2024)
!2036 = !DILocalVariable(name: "flags", arg: 4, scope: !2024, file: !2025, line: 138, type: !799)
!2037 = !DILocation(line: 138, column: 24, scope: !2024)
!2038 = !DILocation(line: 140, column: 17, scope: !2024)
!2039 = !DILocation(line: 140, column: 2, scope: !2024)
