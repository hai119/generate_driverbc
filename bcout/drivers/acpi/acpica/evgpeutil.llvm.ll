; ModuleID = '../bcout/drivers/acpi/acpica/evgpeutil.llvm.bc'
source_filename = "drivers/acpi/acpica/evgpeutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.acpi_gpe_xrupt_info = type { %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i32 }
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
%struct.acpi_gpe_register_info = type { %struct.acpi_gpe_address, %struct.acpi_gpe_address, i16, i8, i8, i8, i8 }
%struct.acpi_gpe_address = type { i8, i64 }
%struct.acpi_gpe_event_info = type { %union.acpi_gpe_dispatch_info, %struct.acpi_gpe_register_info*, i8, i8, i8, i8 }
%union.acpi_gpe_dispatch_info = type { %struct.acpi_namespace_node* }
%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
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
%struct.acpi_gpe_device_info = type { i32, i32, i32, %struct.acpi_namespace_node* }
%struct.acpi_gpe_notify_info = type { %struct.acpi_namespace_node*, %struct.acpi_gpe_notify_info* }
%struct.acpi_gpe_handler_info = type { i32 (i8*, i32, i8*)*, i8*, %struct.acpi_namespace_node*, i8, i8 }

@acpi_gbl_gpe_lock = external dso_local global %struct.spinlock*, align 8
@acpi_gbl_gpe_xrupt_list_head = external dso_local global %struct.acpi_gpe_xrupt_info*, align 8
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@_acpi_module_name = internal constant [10 x i8] c"evgpeutil\00", align 1, !dbg !0
@.str = private unnamed_addr constant [54 x i8] c"Could not install GPE interrupt handler at level 0x%X\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_walk_gpe_list(i32 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)* %gpe_walk_callback, i8* %context) #0 !dbg !43 {
entry:
  %gpe_walk_callback.addr = alloca i32 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)*, align 8
  %context.addr = alloca i8*, align 8
  %gpe_block = alloca %struct.acpi_gpe_block_info*, align 8
  %gpe_xrupt_info = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  store i32 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)* %gpe_walk_callback, i32 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)** %gpe_walk_callback.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)** %gpe_walk_callback.addr, metadata !811, metadata !DIExpression()), !dbg !812
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !813, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_block_info** %gpe_block, metadata !815, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info, metadata !817, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.declare(metadata i32* %status, metadata !819, metadata !DIExpression()), !dbg !820
  store i32 0, i32* %status, align 4, !dbg !820
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !821, metadata !DIExpression()), !dbg !822
  %0 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !823
  %call = call i64 @acpi_os_acquire_lock(%struct.spinlock* %0) #8, !dbg !824
  store i64 %call, i64* %flags, align 8, !dbg !825
  %1 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** @acpi_gbl_gpe_xrupt_list_head, align 8, !dbg !826
  store %struct.acpi_gpe_xrupt_info* %1, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info, align 8, !dbg !827
  br label %while.cond, !dbg !828

while.cond:                                       ; preds = %while.end, %entry
  %2 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info, align 8, !dbg !829
  %tobool = icmp ne %struct.acpi_gpe_xrupt_info* %2, null, !dbg !828
  br i1 %tobool, label %while.body, label %while.end9, !dbg !828

while.body:                                       ; preds = %while.cond
  %3 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info, align 8, !dbg !830
  %gpe_block_list_head = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %3, i32 0, i32 2, !dbg !832
  %4 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block_list_head, align 8, !dbg !832
  store %struct.acpi_gpe_block_info* %4, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !833
  br label %while.cond1, !dbg !834

while.cond1:                                      ; preds = %if.end7, %while.body
  %5 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !835
  %tobool2 = icmp ne %struct.acpi_gpe_block_info* %5, null, !dbg !834
  br i1 %tobool2, label %while.body3, label %while.end, !dbg !834

while.body3:                                      ; preds = %while.cond1
  %6 = load i32 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)*, i32 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)** %gpe_walk_callback.addr, align 8, !dbg !836
  %7 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info, align 8, !dbg !838
  %8 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !839
  %9 = load i8*, i8** %context.addr, align 8, !dbg !840
  %call4 = call i32 %6(%struct.acpi_gpe_xrupt_info* %7, %struct.acpi_gpe_block_info* %8, i8* %9) #8, !dbg !836
  store i32 %call4, i32* %status, align 4, !dbg !841
  %10 = load i32, i32* %status, align 4, !dbg !842
  %tobool5 = icmp ne i32 %10, 0, !dbg !842
  br i1 %tobool5, label %if.then, label %if.end7, !dbg !844

if.then:                                          ; preds = %while.body3
  %11 = load i32, i32* %status, align 4, !dbg !845
  %cmp = icmp eq i32 %11, 16391, !dbg !848
  br i1 %cmp, label %if.then6, label %if.end, !dbg !849

if.then6:                                         ; preds = %if.then
  store i32 0, i32* %status, align 4, !dbg !850
  br label %if.end, !dbg !852

if.end:                                           ; preds = %if.then6, %if.then
  br label %unlock_and_exit, !dbg !853

if.end7:                                          ; preds = %while.body3
  %12 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !854
  %next = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %12, i32 0, i32 2, !dbg !855
  %13 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %next, align 8, !dbg !855
  store %struct.acpi_gpe_block_info* %13, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !856
  br label %while.cond1, !dbg !834, !llvm.loop !857

while.end:                                        ; preds = %while.cond1
  %14 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info, align 8, !dbg !859
  %next8 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %14, i32 0, i32 1, !dbg !860
  %15 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %next8, align 8, !dbg !860
  store %struct.acpi_gpe_xrupt_info* %15, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info, align 8, !dbg !861
  br label %while.cond, !dbg !828, !llvm.loop !862

while.end9:                                       ; preds = %while.cond
  br label %unlock_and_exit, !dbg !828

unlock_and_exit:                                  ; preds = %while.end9, %if.end
  call void @llvm.dbg.label(metadata !864), !dbg !865
  %16 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !866
  %17 = load i64, i64* %flags, align 8, !dbg !867
  call void @acpi_os_release_lock(%struct.spinlock* %16, i64 %17) #8, !dbg !868
  %18 = load i32, i32* %status, align 4, !dbg !869
  ret i32 %18, !dbg !869
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i64 @acpi_os_acquire_lock(%struct.spinlock*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_os_release_lock(%struct.spinlock*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_get_gpe_device(%struct.acpi_gpe_xrupt_info* %gpe_xrupt_info, %struct.acpi_gpe_block_info* %gpe_block, i8* %context) #0 !dbg !870 {
entry:
  %retval = alloca i32, align 4
  %gpe_xrupt_info.addr = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %gpe_block.addr = alloca %struct.acpi_gpe_block_info*, align 8
  %context.addr = alloca i8*, align 8
  %info = alloca %struct.acpi_gpe_device_info*, align 8
  store %struct.acpi_gpe_xrupt_info* %gpe_xrupt_info, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info.addr, metadata !871, metadata !DIExpression()), !dbg !872
  store %struct.acpi_gpe_block_info* %gpe_block, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_block_info** %gpe_block.addr, metadata !873, metadata !DIExpression()), !dbg !874
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !875, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_device_info** %info, metadata !877, metadata !DIExpression()), !dbg !885
  %0 = load i8*, i8** %context.addr, align 8, !dbg !886
  %1 = bitcast i8* %0 to %struct.acpi_gpe_device_info*, !dbg !886
  store %struct.acpi_gpe_device_info* %1, %struct.acpi_gpe_device_info** %info, align 8, !dbg !885
  %2 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !887
  %gpe_count = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %2, i32 0, i32 8, !dbg !888
  %3 = load i16, i16* %gpe_count, align 4, !dbg !888
  %conv = zext i16 %3 to i32, !dbg !887
  %4 = load %struct.acpi_gpe_device_info*, %struct.acpi_gpe_device_info** %info, align 8, !dbg !889
  %next_block_base_index = getelementptr inbounds %struct.acpi_gpe_device_info, %struct.acpi_gpe_device_info* %4, i32 0, i32 1, !dbg !890
  %5 = load i32, i32* %next_block_base_index, align 4, !dbg !891
  %add = add i32 %5, %conv, !dbg !891
  store i32 %add, i32* %next_block_base_index, align 4, !dbg !891
  %6 = load %struct.acpi_gpe_device_info*, %struct.acpi_gpe_device_info** %info, align 8, !dbg !892
  %index = getelementptr inbounds %struct.acpi_gpe_device_info, %struct.acpi_gpe_device_info* %6, i32 0, i32 0, !dbg !894
  %7 = load i32, i32* %index, align 8, !dbg !894
  %8 = load %struct.acpi_gpe_device_info*, %struct.acpi_gpe_device_info** %info, align 8, !dbg !895
  %next_block_base_index1 = getelementptr inbounds %struct.acpi_gpe_device_info, %struct.acpi_gpe_device_info* %8, i32 0, i32 1, !dbg !896
  %9 = load i32, i32* %next_block_base_index1, align 4, !dbg !896
  %cmp = icmp ult i32 %7, %9, !dbg !897
  br i1 %cmp, label %if.then, label %if.end8, !dbg !898

if.then:                                          ; preds = %entry
  %10 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !899
  %node = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %10, i32 0, i32 0, !dbg !902
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !902
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %11, i32 0, i32 2, !dbg !903
  %12 = load i8, i8* %type, align 1, !dbg !903
  %conv3 = zext i8 %12 to i32, !dbg !904
  %cmp4 = icmp eq i32 %conv3, 6, !dbg !905
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !906

if.then6:                                         ; preds = %if.then
  %13 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !907
  %node7 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %13, i32 0, i32 0, !dbg !909
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node7, align 8, !dbg !909
  %15 = load %struct.acpi_gpe_device_info*, %struct.acpi_gpe_device_info** %info, align 8, !dbg !910
  %gpe_device = getelementptr inbounds %struct.acpi_gpe_device_info, %struct.acpi_gpe_device_info* %15, i32 0, i32 3, !dbg !911
  store %struct.acpi_namespace_node* %14, %struct.acpi_namespace_node** %gpe_device, align 8, !dbg !912
  br label %if.end, !dbg !913

if.end:                                           ; preds = %if.then6, %if.then
  %16 = load %struct.acpi_gpe_device_info*, %struct.acpi_gpe_device_info** %info, align 8, !dbg !914
  %status = getelementptr inbounds %struct.acpi_gpe_device_info, %struct.acpi_gpe_device_info* %16, i32 0, i32 2, !dbg !915
  store i32 0, i32* %status, align 8, !dbg !916
  store i32 16391, i32* %retval, align 4, !dbg !917
  br label %return, !dbg !917

if.end8:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !918
  br label %return, !dbg !918

return:                                           ; preds = %if.end8, %if.end
  %17 = load i32, i32* %retval, align 4, !dbg !919
  ret i32 %17, !dbg !919
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_get_gpe_xrupt_block(i32 %interrupt_number, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_block) #0 !dbg !920 {
entry:
  %retval = alloca i32, align 4
  %interrupt_number.addr = alloca i32, align 4
  %gpe_xrupt_block.addr = alloca %struct.acpi_gpe_xrupt_info**, align 8
  %next_gpe_xrupt = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %gpe_xrupt = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  store i32 %interrupt_number, i32* %interrupt_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %interrupt_number.addr, metadata !924, metadata !DIExpression()), !dbg !925
  store %struct.acpi_gpe_xrupt_info** %gpe_xrupt_block, %struct.acpi_gpe_xrupt_info*** %gpe_xrupt_block.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_xrupt_info*** %gpe_xrupt_block.addr, metadata !926, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_xrupt_info** %next_gpe_xrupt, metadata !928, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_xrupt_info** %gpe_xrupt, metadata !930, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.declare(metadata i32* %status, metadata !932, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !934, metadata !DIExpression()), !dbg !935
  %0 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** @acpi_gbl_gpe_xrupt_list_head, align 8, !dbg !936
  store %struct.acpi_gpe_xrupt_info* %0, %struct.acpi_gpe_xrupt_info** %next_gpe_xrupt, align 8, !dbg !937
  br label %while.cond, !dbg !938

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %next_gpe_xrupt, align 8, !dbg !939
  %tobool = icmp ne %struct.acpi_gpe_xrupt_info* %1, null, !dbg !938
  br i1 %tobool, label %while.body, label %while.end, !dbg !938

while.body:                                       ; preds = %while.cond
  %2 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %next_gpe_xrupt, align 8, !dbg !940
  %interrupt_number1 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %2, i32 0, i32 3, !dbg !943
  %3 = load i32, i32* %interrupt_number1, align 8, !dbg !943
  %4 = load i32, i32* %interrupt_number.addr, align 4, !dbg !944
  %cmp = icmp eq i32 %3, %4, !dbg !945
  br i1 %cmp, label %if.then, label %if.end, !dbg !946

if.then:                                          ; preds = %while.body
  %5 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %next_gpe_xrupt, align 8, !dbg !947
  %6 = load %struct.acpi_gpe_xrupt_info**, %struct.acpi_gpe_xrupt_info*** %gpe_xrupt_block.addr, align 8, !dbg !949
  store %struct.acpi_gpe_xrupt_info* %5, %struct.acpi_gpe_xrupt_info** %6, align 8, !dbg !950
  store i32 0, i32* %retval, align 4, !dbg !951
  br label %return, !dbg !951

if.end:                                           ; preds = %while.body
  %7 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %next_gpe_xrupt, align 8, !dbg !952
  %next = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %7, i32 0, i32 1, !dbg !953
  %8 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %next, align 8, !dbg !953
  store %struct.acpi_gpe_xrupt_info* %8, %struct.acpi_gpe_xrupt_info** %next_gpe_xrupt, align 8, !dbg !954
  br label %while.cond, !dbg !938, !llvm.loop !955

while.end:                                        ; preds = %while.cond
  %call = call i8* @acpi_os_allocate_zeroed(i64 32) #8, !dbg !957
  %9 = bitcast i8* %call to %struct.acpi_gpe_xrupt_info*, !dbg !957
  store %struct.acpi_gpe_xrupt_info* %9, %struct.acpi_gpe_xrupt_info** %gpe_xrupt, align 8, !dbg !958
  %10 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt, align 8, !dbg !959
  %tobool2 = icmp ne %struct.acpi_gpe_xrupt_info* %10, null, !dbg !959
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !961

if.then3:                                         ; preds = %while.end
  store i32 4, i32* %retval, align 4, !dbg !962
  br label %return, !dbg !962

if.end4:                                          ; preds = %while.end
  %11 = load i32, i32* %interrupt_number.addr, align 4, !dbg !964
  %12 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt, align 8, !dbg !965
  %interrupt_number5 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %12, i32 0, i32 3, !dbg !966
  store i32 %11, i32* %interrupt_number5, align 8, !dbg !967
  %13 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !968
  %call6 = call i64 @acpi_os_acquire_lock(%struct.spinlock* %13) #8, !dbg !969
  store i64 %call6, i64* %flags, align 8, !dbg !970
  %14 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** @acpi_gbl_gpe_xrupt_list_head, align 8, !dbg !971
  %tobool7 = icmp ne %struct.acpi_gpe_xrupt_info* %14, null, !dbg !971
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !973

if.then8:                                         ; preds = %if.end4
  %15 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** @acpi_gbl_gpe_xrupt_list_head, align 8, !dbg !974
  store %struct.acpi_gpe_xrupt_info* %15, %struct.acpi_gpe_xrupt_info** %next_gpe_xrupt, align 8, !dbg !976
  br label %while.cond9, !dbg !977

while.cond9:                                      ; preds = %while.body12, %if.then8
  %16 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %next_gpe_xrupt, align 8, !dbg !978
  %next10 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %16, i32 0, i32 1, !dbg !979
  %17 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %next10, align 8, !dbg !979
  %tobool11 = icmp ne %struct.acpi_gpe_xrupt_info* %17, null, !dbg !977
  br i1 %tobool11, label %while.body12, label %while.end14, !dbg !977

while.body12:                                     ; preds = %while.cond9
  %18 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %next_gpe_xrupt, align 8, !dbg !980
  %next13 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %18, i32 0, i32 1, !dbg !982
  %19 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %next13, align 8, !dbg !982
  store %struct.acpi_gpe_xrupt_info* %19, %struct.acpi_gpe_xrupt_info** %next_gpe_xrupt, align 8, !dbg !983
  br label %while.cond9, !dbg !977, !llvm.loop !984

while.end14:                                      ; preds = %while.cond9
  %20 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt, align 8, !dbg !986
  %21 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %next_gpe_xrupt, align 8, !dbg !987
  %next15 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %21, i32 0, i32 1, !dbg !988
  store %struct.acpi_gpe_xrupt_info* %20, %struct.acpi_gpe_xrupt_info** %next15, align 8, !dbg !989
  %22 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %next_gpe_xrupt, align 8, !dbg !990
  %23 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt, align 8, !dbg !991
  %previous = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %23, i32 0, i32 0, !dbg !992
  store %struct.acpi_gpe_xrupt_info* %22, %struct.acpi_gpe_xrupt_info** %previous, align 8, !dbg !993
  br label %if.end16, !dbg !994

if.else:                                          ; preds = %if.end4
  %24 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt, align 8, !dbg !995
  store %struct.acpi_gpe_xrupt_info* %24, %struct.acpi_gpe_xrupt_info** @acpi_gbl_gpe_xrupt_list_head, align 8, !dbg !997
  br label %if.end16

if.end16:                                         ; preds = %if.else, %while.end14
  %25 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !998
  %26 = load i64, i64* %flags, align 8, !dbg !999
  call void @acpi_os_release_lock(%struct.spinlock* %25, i64 %26) #8, !dbg !1000
  %27 = load i32, i32* %interrupt_number.addr, align 4, !dbg !1001
  %28 = load i16, i16* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 5), align 1, !dbg !1003
  %conv = zext i16 %28 to i32, !dbg !1004
  %cmp17 = icmp ne i32 %27, %conv, !dbg !1005
  br i1 %cmp17, label %if.then19, label %if.end24, !dbg !1006

if.then19:                                        ; preds = %if.end16
  %29 = load i32, i32* %interrupt_number.addr, align 4, !dbg !1007
  %30 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt, align 8, !dbg !1009
  %31 = bitcast %struct.acpi_gpe_xrupt_info* %30 to i8*, !dbg !1009
  %call20 = call i32 @acpi_os_install_interrupt_handler(i32 %29, i32 (i8*)* @acpi_ev_gpe_xrupt_handler, i8* %31) #8, !dbg !1010
  store i32 %call20, i32* %status, align 4, !dbg !1011
  %32 = load i32, i32* %status, align 4, !dbg !1012
  %tobool21 = icmp ne i32 %32, 0, !dbg !1012
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !1014

if.then22:                                        ; preds = %if.then19
  %33 = load i32, i32* %status, align 4, !dbg !1015
  %34 = load i32, i32* %interrupt_number.addr, align 4, !dbg !1015
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 186, i32 %33, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %34) #8, !dbg !1015
  %35 = load i32, i32* %status, align 4, !dbg !1017
  store i32 %35, i32* %retval, align 4, !dbg !1017
  br label %return, !dbg !1017

if.end23:                                         ; preds = %if.then19
  br label %if.end24, !dbg !1018

if.end24:                                         ; preds = %if.end23, %if.end16
  %36 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt, align 8, !dbg !1019
  %37 = load %struct.acpi_gpe_xrupt_info**, %struct.acpi_gpe_xrupt_info*** %gpe_xrupt_block.addr, align 8, !dbg !1020
  store %struct.acpi_gpe_xrupt_info* %36, %struct.acpi_gpe_xrupt_info** %37, align 8, !dbg !1021
  store i32 0, i32* %retval, align 4, !dbg !1022
  br label %return, !dbg !1022

return:                                           ; preds = %if.end24, %if.then22, %if.then3, %if.then
  %38 = load i32, i32* %retval, align 4, !dbg !1023
  ret i32 %38, !dbg !1023
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !1024 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1028, metadata !DIExpression()), !dbg !1034
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1038, metadata !DIExpression()), !dbg !1039
  %0 = load i64, i64* %size.addr, align 8, !dbg !1040
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1041, metadata !DIExpression()), !dbg !1042
  br label %do.body, !dbg !1042

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1043, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1047, metadata !DIExpression()), !dbg !1046
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1046
  %conv = zext i1 %cmp to i32, !dbg !1046
  store i32 1, i32* %tmp, align 4, !dbg !1046
  %1 = load i32, i32* %tmp, align 4, !dbg !1046
  %call = call i64 @arch_local_save_flags() #8, !dbg !1048
  store i64 %call, i64* %_flags, align 8, !dbg !1048
  br label %do.end, !dbg !1048

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1049, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1052, metadata !DIExpression()), !dbg !1051
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1051
  %conv6 = zext i1 %cmp5 to i32, !dbg !1051
  store i32 1, i32* %tmp7, align 4, !dbg !1051
  %2 = load i32, i32* %tmp7, align 4, !dbg !1051
  %3 = load i64, i64* %_flags, align 8, !dbg !1053
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1054
  %and.i = and i64 %4, 512, !dbg !1055
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1056
  %lnot.i = xor i1 %tobool.i, true, !dbg !1056
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1056
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1053
  %5 = load i32, i32* %tmp8, align 4, !dbg !1053
  store i32 %5, i32* %tmp1, align 4, !dbg !1048
  %6 = load i32, i32* %tmp1, align 4, !dbg !1042
  %tobool = icmp ne i32 %6, 0, !dbg !1057
  %7 = zext i1 %tobool to i64, !dbg !1057
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1057
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #8, !dbg !1058
  ret i8* %call10, !dbg !1059
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_install_interrupt_handler(i32, i32 (i8*)*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_gpe_xrupt_handler(i8*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_delete_gpe_xrupt(%struct.acpi_gpe_xrupt_info* %gpe_xrupt) #0 !dbg !1060 {
entry:
  %retval = alloca i32, align 4
  %gpe_xrupt.addr = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  store %struct.acpi_gpe_xrupt_info* %gpe_xrupt, %struct.acpi_gpe_xrupt_info** %gpe_xrupt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_xrupt_info** %gpe_xrupt.addr, metadata !1063, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1065, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !1067, metadata !DIExpression()), !dbg !1068
  %0 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt.addr, align 8, !dbg !1069
  %interrupt_number = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %0, i32 0, i32 3, !dbg !1071
  %1 = load i32, i32* %interrupt_number, align 8, !dbg !1071
  %2 = load i16, i16* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 5), align 1, !dbg !1072
  %conv = zext i16 %2 to i32, !dbg !1073
  %cmp = icmp eq i32 %1, %conv, !dbg !1074
  br i1 %cmp, label %if.then, label %if.end, !dbg !1075

if.then:                                          ; preds = %entry
  %3 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt.addr, align 8, !dbg !1076
  %gpe_block_list_head = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %3, i32 0, i32 2, !dbg !1078
  store %struct.acpi_gpe_block_info* null, %struct.acpi_gpe_block_info** %gpe_block_list_head, align 8, !dbg !1079
  store i32 0, i32* %retval, align 4, !dbg !1080
  br label %return, !dbg !1080

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt.addr, align 8, !dbg !1081
  %interrupt_number2 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %4, i32 0, i32 3, !dbg !1082
  %5 = load i32, i32* %interrupt_number2, align 8, !dbg !1082
  %call = call i32 @acpi_os_remove_interrupt_handler(i32 %5, i32 (i8*)* @acpi_ev_gpe_xrupt_handler) #8, !dbg !1083
  store i32 %call, i32* %status, align 4, !dbg !1084
  %6 = load i32, i32* %status, align 4, !dbg !1085
  %tobool = icmp ne i32 %6, 0, !dbg !1085
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !1087

if.then3:                                         ; preds = %if.end
  %7 = load i32, i32* %status, align 4, !dbg !1088
  store i32 %7, i32* %retval, align 4, !dbg !1088
  br label %return, !dbg !1088

if.end4:                                          ; preds = %if.end
  %8 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1090
  %call5 = call i64 @acpi_os_acquire_lock(%struct.spinlock* %8) #8, !dbg !1091
  store i64 %call5, i64* %flags, align 8, !dbg !1092
  %9 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt.addr, align 8, !dbg !1093
  %previous = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %9, i32 0, i32 0, !dbg !1095
  %10 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %previous, align 8, !dbg !1095
  %tobool6 = icmp ne %struct.acpi_gpe_xrupt_info* %10, null, !dbg !1093
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !1096

if.then7:                                         ; preds = %if.end4
  %11 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt.addr, align 8, !dbg !1097
  %next = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %11, i32 0, i32 1, !dbg !1099
  %12 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %next, align 8, !dbg !1099
  %13 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt.addr, align 8, !dbg !1100
  %previous8 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %13, i32 0, i32 0, !dbg !1101
  %14 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %previous8, align 8, !dbg !1101
  %next9 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %14, i32 0, i32 1, !dbg !1102
  store %struct.acpi_gpe_xrupt_info* %12, %struct.acpi_gpe_xrupt_info** %next9, align 8, !dbg !1103
  br label %if.end11, !dbg !1104

if.else:                                          ; preds = %if.end4
  %15 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt.addr, align 8, !dbg !1105
  %next10 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %15, i32 0, i32 1, !dbg !1107
  %16 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %next10, align 8, !dbg !1107
  store %struct.acpi_gpe_xrupt_info* %16, %struct.acpi_gpe_xrupt_info** @acpi_gbl_gpe_xrupt_list_head, align 8, !dbg !1108
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then7
  %17 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt.addr, align 8, !dbg !1109
  %next12 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %17, i32 0, i32 1, !dbg !1111
  %18 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %next12, align 8, !dbg !1111
  %tobool13 = icmp ne %struct.acpi_gpe_xrupt_info* %18, null, !dbg !1109
  br i1 %tobool13, label %if.then14, label %if.end18, !dbg !1112

if.then14:                                        ; preds = %if.end11
  %19 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt.addr, align 8, !dbg !1113
  %previous15 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %19, i32 0, i32 0, !dbg !1115
  %20 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %previous15, align 8, !dbg !1115
  %21 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt.addr, align 8, !dbg !1116
  %next16 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %21, i32 0, i32 1, !dbg !1117
  %22 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %next16, align 8, !dbg !1117
  %previous17 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %22, i32 0, i32 0, !dbg !1118
  store %struct.acpi_gpe_xrupt_info* %20, %struct.acpi_gpe_xrupt_info** %previous17, align 8, !dbg !1119
  br label %if.end18, !dbg !1120

if.end18:                                         ; preds = %if.then14, %if.end11
  %23 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1121
  %24 = load i64, i64* %flags, align 8, !dbg !1122
  call void @acpi_os_release_lock(%struct.spinlock* %23, i64 %24) #8, !dbg !1123
  %25 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt.addr, align 8, !dbg !1124
  %26 = bitcast %struct.acpi_gpe_xrupt_info* %25 to i8*, !dbg !1124
  call void @acpi_os_free(i8* %26) #8, !dbg !1124
  store i32 0, i32* %retval, align 4, !dbg !1125
  br label %return, !dbg !1125

return:                                           ; preds = %if.end18, %if.then3, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !1126
  ret i32 %27, !dbg !1126
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_remove_interrupt_handler(i32, i32 (i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1127 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1130, metadata !DIExpression()), !dbg !1131
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1132
  call void @kfree(i8* %0) #8, !dbg !1133
  ret void, !dbg !1134
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_delete_gpe_handlers(%struct.acpi_gpe_xrupt_info* %gpe_xrupt_info, %struct.acpi_gpe_block_info* %gpe_block, i8* %context) #0 !dbg !1135 {
entry:
  %gpe_xrupt_info.addr = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %gpe_block.addr = alloca %struct.acpi_gpe_block_info*, align 8
  %context.addr = alloca i8*, align 8
  %gpe_event_info = alloca %struct.acpi_gpe_event_info*, align 8
  %notify = alloca %struct.acpi_gpe_notify_info*, align 8
  %next = alloca %struct.acpi_gpe_notify_info*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.acpi_gpe_xrupt_info* %gpe_xrupt_info, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info.addr, metadata !1136, metadata !DIExpression()), !dbg !1137
  store %struct.acpi_gpe_block_info* %gpe_block, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_block_info** %gpe_block.addr, metadata !1138, metadata !DIExpression()), !dbg !1139
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1140, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info, metadata !1142, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_notify_info** %notify, metadata !1144, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_notify_info** %next, metadata !1146, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1148, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.declare(metadata i32* %j, metadata !1150, metadata !DIExpression()), !dbg !1151
  store i32 0, i32* %i, align 4, !dbg !1152
  br label %for.cond, !dbg !1154

for.cond:                                         ; preds = %for.inc40, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1155
  %1 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1157
  %register_count = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %1, i32 0, i32 7, !dbg !1158
  %2 = load i32, i32* %register_count, align 8, !dbg !1158
  %cmp = icmp ult i32 %0, %2, !dbg !1159
  br i1 %cmp, label %for.body, label %for.end42, !dbg !1160

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !1161
  br label %for.cond1, !dbg !1164

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4, !dbg !1165
  %cmp2 = icmp ult i32 %3, 8, !dbg !1167
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !1168

for.body3:                                        ; preds = %for.cond1
  %4 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1169
  %event_info = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %4, i32 0, i32 5, !dbg !1171
  %5 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %event_info, align 8, !dbg !1171
  %6 = load i32, i32* %i, align 4, !dbg !1172
  %conv = zext i32 %6 to i64, !dbg !1173
  %mul = mul i64 %conv, 8, !dbg !1174
  %7 = load i32, i32* %j, align 4, !dbg !1175
  %conv4 = zext i32 %7 to i64, !dbg !1175
  %add = add i64 %mul, %conv4, !dbg !1176
  %arrayidx = getelementptr %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %5, i64 %add, !dbg !1169
  store %struct.acpi_gpe_event_info* %arrayidx, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1177
  %8 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1178
  %flags = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %8, i32 0, i32 2, !dbg !1178
  %9 = load i8, i8* %flags, align 8, !dbg !1178
  %conv5 = zext i8 %9 to i32, !dbg !1178
  %and = and i32 %conv5, 7, !dbg !1178
  %conv6 = trunc i32 %and to i8, !dbg !1178
  %conv7 = zext i8 %conv6 to i32, !dbg !1178
  %cmp8 = icmp eq i32 %conv7, 2, !dbg !1180
  br i1 %cmp8, label %if.then, label %lor.lhs.false, !dbg !1181

lor.lhs.false:                                    ; preds = %for.body3
  %10 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1182
  %flags10 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %10, i32 0, i32 2, !dbg !1182
  %11 = load i8, i8* %flags10, align 8, !dbg !1182
  %conv11 = zext i8 %11 to i32, !dbg !1182
  %and12 = and i32 %conv11, 7, !dbg !1182
  %conv13 = trunc i32 %and12 to i8, !dbg !1182
  %conv14 = zext i8 %conv13 to i32, !dbg !1182
  %cmp15 = icmp eq i32 %conv14, 4, !dbg !1183
  br i1 %cmp15, label %if.then, label %if.else, !dbg !1184

if.then:                                          ; preds = %lor.lhs.false, %for.body3
  %12 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1185
  %dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %12, i32 0, i32 0, !dbg !1185
  %handler = bitcast %union.acpi_gpe_dispatch_info* %dispatch to %struct.acpi_gpe_handler_info**, !dbg !1185
  %13 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %handler, align 8, !dbg !1185
  %14 = bitcast %struct.acpi_gpe_handler_info* %13 to i8*, !dbg !1185
  call void @acpi_os_free(i8* %14) #8, !dbg !1185
  %15 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1187
  %dispatch17 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %15, i32 0, i32 0, !dbg !1188
  %handler18 = bitcast %union.acpi_gpe_dispatch_info* %dispatch17 to %struct.acpi_gpe_handler_info**, !dbg !1189
  store %struct.acpi_gpe_handler_info* null, %struct.acpi_gpe_handler_info** %handler18, align 8, !dbg !1190
  %16 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1191
  %flags19 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %16, i32 0, i32 2, !dbg !1192
  %17 = load i8, i8* %flags19, align 8, !dbg !1193
  %conv20 = zext i8 %17 to i32, !dbg !1193
  %and21 = and i32 %conv20, -8, !dbg !1193
  %conv22 = trunc i32 %and21 to i8, !dbg !1193
  store i8 %conv22, i8* %flags19, align 8, !dbg !1193
  br label %if.end39, !dbg !1194

if.else:                                          ; preds = %lor.lhs.false
  %18 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1195
  %flags23 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %18, i32 0, i32 2, !dbg !1195
  %19 = load i8, i8* %flags23, align 8, !dbg !1195
  %conv24 = zext i8 %19 to i32, !dbg !1195
  %and25 = and i32 %conv24, 7, !dbg !1195
  %conv26 = trunc i32 %and25 to i8, !dbg !1195
  %conv27 = zext i8 %conv26 to i32, !dbg !1195
  %cmp28 = icmp eq i32 %conv27, 3, !dbg !1197
  br i1 %cmp28, label %if.then30, label %if.end, !dbg !1198

if.then30:                                        ; preds = %if.else
  %20 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1199
  %dispatch31 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %20, i32 0, i32 0, !dbg !1201
  %notify_list = bitcast %union.acpi_gpe_dispatch_info* %dispatch31 to %struct.acpi_gpe_notify_info**, !dbg !1202
  %21 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %notify_list, align 8, !dbg !1202
  store %struct.acpi_gpe_notify_info* %21, %struct.acpi_gpe_notify_info** %notify, align 8, !dbg !1203
  br label %while.cond, !dbg !1204

while.cond:                                       ; preds = %while.body, %if.then30
  %22 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %notify, align 8, !dbg !1205
  %tobool = icmp ne %struct.acpi_gpe_notify_info* %22, null, !dbg !1204
  br i1 %tobool, label %while.body, label %while.end, !dbg !1204

while.body:                                       ; preds = %while.cond
  %23 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %notify, align 8, !dbg !1206
  %next32 = getelementptr inbounds %struct.acpi_gpe_notify_info, %struct.acpi_gpe_notify_info* %23, i32 0, i32 1, !dbg !1208
  %24 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %next32, align 8, !dbg !1208
  store %struct.acpi_gpe_notify_info* %24, %struct.acpi_gpe_notify_info** %next, align 8, !dbg !1209
  %25 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %notify, align 8, !dbg !1210
  %26 = bitcast %struct.acpi_gpe_notify_info* %25 to i8*, !dbg !1210
  call void @acpi_os_free(i8* %26) #8, !dbg !1210
  %27 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %next, align 8, !dbg !1211
  store %struct.acpi_gpe_notify_info* %27, %struct.acpi_gpe_notify_info** %notify, align 8, !dbg !1212
  br label %while.cond, !dbg !1204, !llvm.loop !1213

while.end:                                        ; preds = %while.cond
  %28 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1215
  %dispatch33 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %28, i32 0, i32 0, !dbg !1216
  %notify_list34 = bitcast %union.acpi_gpe_dispatch_info* %dispatch33 to %struct.acpi_gpe_notify_info**, !dbg !1217
  store %struct.acpi_gpe_notify_info* null, %struct.acpi_gpe_notify_info** %notify_list34, align 8, !dbg !1218
  %29 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1219
  %flags35 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %29, i32 0, i32 2, !dbg !1220
  %30 = load i8, i8* %flags35, align 8, !dbg !1221
  %conv36 = zext i8 %30 to i32, !dbg !1221
  %and37 = and i32 %conv36, -8, !dbg !1221
  %conv38 = trunc i32 %and37 to i8, !dbg !1221
  store i8 %conv38, i8* %flags35, align 8, !dbg !1221
  br label %if.end, !dbg !1222

if.end:                                           ; preds = %while.end, %if.else
  br label %if.end39

if.end39:                                         ; preds = %if.end, %if.then
  br label %for.inc, !dbg !1223

for.inc:                                          ; preds = %if.end39
  %31 = load i32, i32* %j, align 4, !dbg !1224
  %inc = add i32 %31, 1, !dbg !1224
  store i32 %inc, i32* %j, align 4, !dbg !1224
  br label %for.cond1, !dbg !1225, !llvm.loop !1226

for.end:                                          ; preds = %for.cond1
  br label %for.inc40, !dbg !1228

for.inc40:                                        ; preds = %for.end
  %32 = load i32, i32* %i, align 4, !dbg !1229
  %inc41 = add i32 %32, 1, !dbg !1229
  store i32 %inc41, i32* %i, align 4, !dbg !1229
  br label %for.cond, !dbg !1230, !llvm.loop !1231

for.end42:                                        ; preds = %for.cond
  ret i32 0, !dbg !1233
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1234 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1241, metadata !DIExpression()), !dbg !1248
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1254, metadata !DIExpression()), !dbg !1255
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1256, metadata !DIExpression()), !dbg !1257
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1258, metadata !DIExpression()), !dbg !1259
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1260, metadata !DIExpression()), !dbg !1264
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1266, metadata !DIExpression()), !dbg !1270
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1272, metadata !DIExpression()), !dbg !1276
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1281, metadata !DIExpression()), !dbg !1282
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1283, metadata !DIExpression()), !dbg !1284
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1285, metadata !DIExpression()), !dbg !1286
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1287, metadata !DIExpression()), !dbg !1288
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1289, metadata !DIExpression()), !dbg !1290
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1291, metadata !DIExpression()), !dbg !1292
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1293, metadata !DIExpression()), !dbg !1294
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1295, metadata !DIExpression()), !dbg !1296
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1297, metadata !DIExpression()), !dbg !1298
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1299, metadata !DIExpression()), !dbg !1300
  %0 = load i64, i64* %size.addr, align 8, !dbg !1301
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1302
  %or = or i32 %1, 256, !dbg !1303
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1304
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !1305
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1306

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1307
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1308
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1309

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1310
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1311
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1312
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !1313
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1290
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1314
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1315
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1316
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1317
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1318
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1319
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !1320
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1320
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1320
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1320
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !1320
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1321
  br label %kmalloc.exit, !dbg !1321

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1322
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1323
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1323
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1325

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1326
  br label %kmalloc_index.exit.i, !dbg !1326

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1327
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1329
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1330

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1331
  br label %kmalloc_index.exit.i, !dbg !1331

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1332
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1334
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1335

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1336
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1337
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1338

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1339
  br label %kmalloc_index.exit.i, !dbg !1339

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1340
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1342
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1343

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1344
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1345
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1346

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1347
  br label %kmalloc_index.exit.i, !dbg !1347

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1348
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1350
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1351

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1352
  br label %kmalloc_index.exit.i, !dbg !1352

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1353
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1355
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1356

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1357
  br label %kmalloc_index.exit.i, !dbg !1357

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1358
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1360
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1361

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1362
  br label %kmalloc_index.exit.i, !dbg !1362

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1363
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1365
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1366

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1367
  br label %kmalloc_index.exit.i, !dbg !1367

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1368
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1370
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1371

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1372
  br label %kmalloc_index.exit.i, !dbg !1372

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1373
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1375
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1376

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1377
  br label %kmalloc_index.exit.i, !dbg !1377

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1378
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1380
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1381

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1382
  br label %kmalloc_index.exit.i, !dbg !1382

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1383
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1385
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1386

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1387
  br label %kmalloc_index.exit.i, !dbg !1387

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1388
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1390
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1391

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1392
  br label %kmalloc_index.exit.i, !dbg !1392

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1393
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1395
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1396

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1397
  br label %kmalloc_index.exit.i, !dbg !1397

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1398
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1400
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1401

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1402
  br label %kmalloc_index.exit.i, !dbg !1402

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1403
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1405
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1406

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1407
  br label %kmalloc_index.exit.i, !dbg !1407

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1408
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1410
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1411

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1412
  br label %kmalloc_index.exit.i, !dbg !1412

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1413
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1415
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1416

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1417
  br label %kmalloc_index.exit.i, !dbg !1417

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1418
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1420
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1421

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1422
  br label %kmalloc_index.exit.i, !dbg !1422

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1423
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1425
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1426

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1427
  br label %kmalloc_index.exit.i, !dbg !1427

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1428
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1430
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1431

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1432
  br label %kmalloc_index.exit.i, !dbg !1432

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1433
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1435
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1436

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1437
  br label %kmalloc_index.exit.i, !dbg !1437

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1438
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1440
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1441

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1442
  br label %kmalloc_index.exit.i, !dbg !1442

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1443
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1445
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1446

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1447
  br label %kmalloc_index.exit.i, !dbg !1447

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1448
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1450
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1451

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1452
  br label %kmalloc_index.exit.i, !dbg !1452

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1453
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1455
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1456

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1457
  br label %kmalloc_index.exit.i, !dbg !1457

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1458
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1460
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1461

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1462
  br label %kmalloc_index.exit.i, !dbg !1462

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1463
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1465
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1466

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1467
  br label %kmalloc_index.exit.i, !dbg !1467

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !1468, !srcloc !1471
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #7, !dbg !1472, !srcloc !1475
  unreachable, !dbg !1476

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1477
  store i32 %45, i32* %index.i, align 4, !dbg !1478
  %46 = load i32, i32* %index.i, align 4, !dbg !1479
  %tobool.i = icmp ne i32 %46, 0, !dbg !1479
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1481

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1482
  br label %kmalloc.exit, !dbg !1482

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1483
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1484
  %and.i.i = and i32 %48, 17, !dbg !1484
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1484
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1484
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1484
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1484
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1486

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1487
  br label %kmalloc_type.exit.i, !dbg !1487

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1488
  %and2.i.i = and i32 %49, 1, !dbg !1489
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1488
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1488
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1488
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1490
  br label %kmalloc_type.exit.i, !dbg !1490

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1491
  %idxprom.i = zext i32 %51 to i64, !dbg !1492
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1492
  %52 = load i32, i32* %index.i, align 4, !dbg !1493
  %idxprom6.i = zext i32 %52 to i64, !dbg !1492
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1492
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1492
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1494
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1495
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1496
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1497
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !1498
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1498
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1498
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1498
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !1498
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1259
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1499
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1500
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1501
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1502
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !1503
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1504
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1505
  store i8* %62, i8** %retval.i, align 8, !dbg !1506
  br label %kmalloc.exit, !dbg !1506

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1507
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1508
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !1509
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1509
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1509
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1509
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !1509
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1510
  br label %kmalloc.exit, !dbg !1510

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1511
  ret i8* %65, !dbg !1512
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1513 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1517, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1520, metadata !DIExpression()), !dbg !1519
  %0 = load i64, i64* %__edi, align 8, !dbg !1519
  store i64 %0, i64* %__edi, align 8, !dbg !1519
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1521, metadata !DIExpression()), !dbg !1519
  %1 = load i64, i64* %__esi, align 8, !dbg !1519
  store i64 %1, i64* %__esi, align 8, !dbg !1519
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1522, metadata !DIExpression()), !dbg !1519
  %2 = load i64, i64* %__edx, align 8, !dbg !1519
  store i64 %2, i64* %__edx, align 8, !dbg !1519
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1523, metadata !DIExpression()), !dbg !1519
  %3 = load i64, i64* %__ecx, align 8, !dbg !1519
  store i64 %3, i64* %__ecx, align 8, !dbg !1519
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1524, metadata !DIExpression()), !dbg !1519
  %4 = load i64, i64* %__eax, align 8, !dbg !1519
  store i64 %4, i64* %__eax, align 8, !dbg !1519
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1519
  %6 = call i64 @llvm.read_register.i64(metadata !37), !dbg !1525
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !1525, !srcloc !1528
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1525
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1525
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1525
  call void @llvm.write_register.i64(metadata !37, i64 %asmresult1), !dbg !1525
  %8 = load i64, i64* %__eax, align 8, !dbg !1525
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1529, metadata !DIExpression()), !dbg !1531
  store i64 -1, i64* %__mask, align 8, !dbg !1531
  %9 = load i64, i64* %__mask, align 8, !dbg !1531
  store i64 %9, i64* %tmp, align 8, !dbg !1531
  %10 = load i64, i64* %tmp, align 8, !dbg !1531
  %and = and i64 %8, %10, !dbg !1525
  store i64 %and, i64* %__ret, align 8, !dbg !1525
  %11 = load i64, i64* %__ret, align 8, !dbg !1519
  store i64 %11, i64* %tmp2, align 8, !dbg !1532
  %12 = load i64, i64* %tmp2, align 8, !dbg !1519
  ret i64 %12, !dbg !1533
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !1534 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1536, metadata !DIExpression()), !dbg !1541
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1543, metadata !DIExpression()), !dbg !1544
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1545, metadata !DIExpression()), !dbg !1546
  %0 = load i64, i64* %size.addr, align 8, !dbg !1547
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1549
  br i1 %1, label %if.then, label %if.end447, !dbg !1550

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1551
  %tobool = icmp ne i64 %2, 0, !dbg !1551
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1554

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1555
  br label %return, !dbg !1555

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1556
  %cmp = icmp ult i64 %3, 4096, !dbg !1558
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1559

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1560
  br label %return, !dbg !1560

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub = sub i64 %4, 1, !dbg !1561
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1561
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1561

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub4 = sub i64 %6, 1, !dbg !1561
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1561
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1561

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub6 = sub i64 %8, 1, !dbg !1561
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1561
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1561

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1561

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub9 = sub i64 %9, 1, !dbg !1561
  %and = and i64 %sub9, -9223372036854775808, !dbg !1561
  %tobool10 = icmp ne i64 %and, 0, !dbg !1561
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1561

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1561

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub13 = sub i64 %10, 1, !dbg !1561
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1561
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1561
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1561

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1561

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub18 = sub i64 %11, 1, !dbg !1561
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1561
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1561
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1561

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1561

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub23 = sub i64 %12, 1, !dbg !1561
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1561
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1561
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1561

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1561

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub28 = sub i64 %13, 1, !dbg !1561
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1561
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1561
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1561

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1561

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub33 = sub i64 %14, 1, !dbg !1561
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1561
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1561
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1561

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1561

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub38 = sub i64 %15, 1, !dbg !1561
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1561
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1561
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1561

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1561

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub43 = sub i64 %16, 1, !dbg !1561
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1561
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1561
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1561

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1561

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub48 = sub i64 %17, 1, !dbg !1561
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1561
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1561
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1561

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1561

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub53 = sub i64 %18, 1, !dbg !1561
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1561
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1561
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1561

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1561

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub58 = sub i64 %19, 1, !dbg !1561
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1561
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1561
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1561

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1561

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub63 = sub i64 %20, 1, !dbg !1561
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1561
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1561
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1561

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1561

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub68 = sub i64 %21, 1, !dbg !1561
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1561
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1561
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1561

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1561

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub73 = sub i64 %22, 1, !dbg !1561
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1561
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1561
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1561

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1561

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub78 = sub i64 %23, 1, !dbg !1561
  %and79 = and i64 %sub78, 562949953421312, !dbg !1561
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1561
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1561

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1561

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub83 = sub i64 %24, 1, !dbg !1561
  %and84 = and i64 %sub83, 281474976710656, !dbg !1561
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1561
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1561

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1561

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub88 = sub i64 %25, 1, !dbg !1561
  %and89 = and i64 %sub88, 140737488355328, !dbg !1561
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1561
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1561

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1561

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub93 = sub i64 %26, 1, !dbg !1561
  %and94 = and i64 %sub93, 70368744177664, !dbg !1561
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1561
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1561

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1561

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub98 = sub i64 %27, 1, !dbg !1561
  %and99 = and i64 %sub98, 35184372088832, !dbg !1561
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1561
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1561

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1561

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub103 = sub i64 %28, 1, !dbg !1561
  %and104 = and i64 %sub103, 17592186044416, !dbg !1561
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1561
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1561

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1561

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub108 = sub i64 %29, 1, !dbg !1561
  %and109 = and i64 %sub108, 8796093022208, !dbg !1561
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1561
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1561

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1561

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub113 = sub i64 %30, 1, !dbg !1561
  %and114 = and i64 %sub113, 4398046511104, !dbg !1561
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1561
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1561

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1561

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub118 = sub i64 %31, 1, !dbg !1561
  %and119 = and i64 %sub118, 2199023255552, !dbg !1561
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1561
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1561

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1561

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub123 = sub i64 %32, 1, !dbg !1561
  %and124 = and i64 %sub123, 1099511627776, !dbg !1561
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1561
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1561

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1561

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub128 = sub i64 %33, 1, !dbg !1561
  %and129 = and i64 %sub128, 549755813888, !dbg !1561
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1561
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1561

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1561

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub133 = sub i64 %34, 1, !dbg !1561
  %and134 = and i64 %sub133, 274877906944, !dbg !1561
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1561
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1561

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1561

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub138 = sub i64 %35, 1, !dbg !1561
  %and139 = and i64 %sub138, 137438953472, !dbg !1561
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1561
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1561

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1561

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub143 = sub i64 %36, 1, !dbg !1561
  %and144 = and i64 %sub143, 68719476736, !dbg !1561
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1561
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1561

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1561

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub148 = sub i64 %37, 1, !dbg !1561
  %and149 = and i64 %sub148, 34359738368, !dbg !1561
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1561
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1561

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1561

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub153 = sub i64 %38, 1, !dbg !1561
  %and154 = and i64 %sub153, 17179869184, !dbg !1561
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1561
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1561

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1561

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub158 = sub i64 %39, 1, !dbg !1561
  %and159 = and i64 %sub158, 8589934592, !dbg !1561
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1561
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1561

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1561

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub163 = sub i64 %40, 1, !dbg !1561
  %and164 = and i64 %sub163, 4294967296, !dbg !1561
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1561
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1561

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1561

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub168 = sub i64 %41, 1, !dbg !1561
  %and169 = and i64 %sub168, 2147483648, !dbg !1561
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1561
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1561

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1561

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub173 = sub i64 %42, 1, !dbg !1561
  %and174 = and i64 %sub173, 1073741824, !dbg !1561
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1561
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1561

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1561

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub178 = sub i64 %43, 1, !dbg !1561
  %and179 = and i64 %sub178, 536870912, !dbg !1561
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1561
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1561

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1561

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub183 = sub i64 %44, 1, !dbg !1561
  %and184 = and i64 %sub183, 268435456, !dbg !1561
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1561
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1561

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1561

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub188 = sub i64 %45, 1, !dbg !1561
  %and189 = and i64 %sub188, 134217728, !dbg !1561
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1561
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1561

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1561

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub193 = sub i64 %46, 1, !dbg !1561
  %and194 = and i64 %sub193, 67108864, !dbg !1561
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1561
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1561

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1561

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub198 = sub i64 %47, 1, !dbg !1561
  %and199 = and i64 %sub198, 33554432, !dbg !1561
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1561
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1561

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1561

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub203 = sub i64 %48, 1, !dbg !1561
  %and204 = and i64 %sub203, 16777216, !dbg !1561
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1561
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1561

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1561

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub208 = sub i64 %49, 1, !dbg !1561
  %and209 = and i64 %sub208, 8388608, !dbg !1561
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1561
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1561

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1561

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub213 = sub i64 %50, 1, !dbg !1561
  %and214 = and i64 %sub213, 4194304, !dbg !1561
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1561
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1561

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1561

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub218 = sub i64 %51, 1, !dbg !1561
  %and219 = and i64 %sub218, 2097152, !dbg !1561
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1561
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1561

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1561

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub223 = sub i64 %52, 1, !dbg !1561
  %and224 = and i64 %sub223, 1048576, !dbg !1561
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1561
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1561

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1561

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub228 = sub i64 %53, 1, !dbg !1561
  %and229 = and i64 %sub228, 524288, !dbg !1561
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1561
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1561

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1561

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub233 = sub i64 %54, 1, !dbg !1561
  %and234 = and i64 %sub233, 262144, !dbg !1561
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1561
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1561

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1561

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub238 = sub i64 %55, 1, !dbg !1561
  %and239 = and i64 %sub238, 131072, !dbg !1561
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1561
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1561

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1561

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub243 = sub i64 %56, 1, !dbg !1561
  %and244 = and i64 %sub243, 65536, !dbg !1561
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1561
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1561

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1561

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub248 = sub i64 %57, 1, !dbg !1561
  %and249 = and i64 %sub248, 32768, !dbg !1561
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1561
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1561

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1561

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub253 = sub i64 %58, 1, !dbg !1561
  %and254 = and i64 %sub253, 16384, !dbg !1561
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1561
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1561

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1561

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub258 = sub i64 %59, 1, !dbg !1561
  %and259 = and i64 %sub258, 8192, !dbg !1561
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1561
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1561

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1561

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub263 = sub i64 %60, 1, !dbg !1561
  %and264 = and i64 %sub263, 4096, !dbg !1561
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1561
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1561

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1561

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub268 = sub i64 %61, 1, !dbg !1561
  %and269 = and i64 %sub268, 2048, !dbg !1561
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1561
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1561

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1561

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub273 = sub i64 %62, 1, !dbg !1561
  %and274 = and i64 %sub273, 1024, !dbg !1561
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1561
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1561

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1561

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub278 = sub i64 %63, 1, !dbg !1561
  %and279 = and i64 %sub278, 512, !dbg !1561
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1561
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1561

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1561

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub283 = sub i64 %64, 1, !dbg !1561
  %and284 = and i64 %sub283, 256, !dbg !1561
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1561
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1561

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1561

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub288 = sub i64 %65, 1, !dbg !1561
  %and289 = and i64 %sub288, 128, !dbg !1561
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1561
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1561

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1561

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub293 = sub i64 %66, 1, !dbg !1561
  %and294 = and i64 %sub293, 64, !dbg !1561
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1561
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1561

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1561

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub298 = sub i64 %67, 1, !dbg !1561
  %and299 = and i64 %sub298, 32, !dbg !1561
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1561
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1561

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1561

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub303 = sub i64 %68, 1, !dbg !1561
  %and304 = and i64 %sub303, 16, !dbg !1561
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1561
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1561

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1561

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub308 = sub i64 %69, 1, !dbg !1561
  %and309 = and i64 %sub308, 8, !dbg !1561
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1561
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1561

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1561

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub313 = sub i64 %70, 1, !dbg !1561
  %and314 = and i64 %sub313, 4, !dbg !1561
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1561
  %71 = zext i1 %tobool315 to i64, !dbg !1561
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1561
  br label %cond.end, !dbg !1561

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1561
  br label %cond.end317, !dbg !1561

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1561
  br label %cond.end319, !dbg !1561

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1561
  br label %cond.end321, !dbg !1561

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1561
  br label %cond.end323, !dbg !1561

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1561
  br label %cond.end325, !dbg !1561

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1561
  br label %cond.end327, !dbg !1561

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1561
  br label %cond.end329, !dbg !1561

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1561
  br label %cond.end331, !dbg !1561

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1561
  br label %cond.end333, !dbg !1561

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1561
  br label %cond.end335, !dbg !1561

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1561
  br label %cond.end337, !dbg !1561

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1561
  br label %cond.end339, !dbg !1561

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1561
  br label %cond.end341, !dbg !1561

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1561
  br label %cond.end343, !dbg !1561

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1561
  br label %cond.end345, !dbg !1561

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1561
  br label %cond.end347, !dbg !1561

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1561
  br label %cond.end349, !dbg !1561

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1561
  br label %cond.end351, !dbg !1561

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1561
  br label %cond.end353, !dbg !1561

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1561
  br label %cond.end355, !dbg !1561

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1561
  br label %cond.end357, !dbg !1561

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1561
  br label %cond.end359, !dbg !1561

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1561
  br label %cond.end361, !dbg !1561

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1561
  br label %cond.end363, !dbg !1561

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1561
  br label %cond.end365, !dbg !1561

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1561
  br label %cond.end367, !dbg !1561

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1561
  br label %cond.end369, !dbg !1561

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1561
  br label %cond.end371, !dbg !1561

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1561
  br label %cond.end373, !dbg !1561

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1561
  br label %cond.end375, !dbg !1561

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1561
  br label %cond.end377, !dbg !1561

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1561
  br label %cond.end379, !dbg !1561

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1561
  br label %cond.end381, !dbg !1561

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1561
  br label %cond.end383, !dbg !1561

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1561
  br label %cond.end385, !dbg !1561

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1561
  br label %cond.end387, !dbg !1561

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1561
  br label %cond.end389, !dbg !1561

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1561
  br label %cond.end391, !dbg !1561

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1561
  br label %cond.end393, !dbg !1561

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1561
  br label %cond.end395, !dbg !1561

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1561
  br label %cond.end397, !dbg !1561

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1561
  br label %cond.end399, !dbg !1561

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1561
  br label %cond.end401, !dbg !1561

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1561
  br label %cond.end403, !dbg !1561

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1561
  br label %cond.end405, !dbg !1561

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1561
  br label %cond.end407, !dbg !1561

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1561
  br label %cond.end409, !dbg !1561

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1561
  br label %cond.end411, !dbg !1561

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1561
  br label %cond.end413, !dbg !1561

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1561
  br label %cond.end415, !dbg !1561

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1561
  br label %cond.end417, !dbg !1561

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1561
  br label %cond.end419, !dbg !1561

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1561
  br label %cond.end421, !dbg !1561

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1561
  br label %cond.end423, !dbg !1561

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1561
  br label %cond.end425, !dbg !1561

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1561
  br label %cond.end427, !dbg !1561

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1561
  br label %cond.end429, !dbg !1561

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1561
  br label %cond.end431, !dbg !1561

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1561
  br label %cond.end433, !dbg !1561

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1561
  br label %cond.end435, !dbg !1561

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1561
  br label %cond.end437, !dbg !1561

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1561
  br label %cond.end440, !dbg !1561

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1561

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1561
  br label %cond.end444, !dbg !1561

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1561
  %sub443 = sub i64 %72, 1, !dbg !1561
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !1561
  br label %cond.end444, !dbg !1561

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1561
  %sub446 = sub i32 %cond445, 12, !dbg !1562
  %add = add i32 %sub446, 1, !dbg !1563
  store i32 %add, i32* %retval, align 4, !dbg !1564
  br label %return, !dbg !1564

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1565
  %dec = add i64 %73, -1, !dbg !1565
  store i64 %dec, i64* %size.addr, align 8, !dbg !1565
  %74 = load i64, i64* %size.addr, align 8, !dbg !1566
  %shr = lshr i64 %74, 12, !dbg !1566
  store i64 %shr, i64* %size.addr, align 8, !dbg !1566
  %75 = load i64, i64* %size.addr, align 8, !dbg !1567
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1544
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1568
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1569
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !1568, !srcloc !1570
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1568
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1571
  %add.i = add i32 %79, 1, !dbg !1572
  store i32 %add.i, i32* %retval, align 4, !dbg !1573
  br label %return, !dbg !1573

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1574
  ret i32 %80, !dbg !1574
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !1575 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1536, metadata !DIExpression()), !dbg !1579
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1543, metadata !DIExpression()), !dbg !1581
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1582, metadata !DIExpression()), !dbg !1583
  %0 = load i64, i64* %n.addr, align 8, !dbg !1584
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1581
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1585
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1586
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !1585, !srcloc !1570
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1585
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1587
  %add.i = add i32 %4, 1, !dbg !1588
  %sub = sub i32 %add.i, 1, !dbg !1589
  ret i32 %sub, !dbg !1590
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1591 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1597, metadata !DIExpression()), !dbg !1598
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1599, metadata !DIExpression()), !dbg !1600
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1601, metadata !DIExpression()), !dbg !1602
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1603, metadata !DIExpression()), !dbg !1604
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1605
  ret i8* %0, !dbg !1606
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
!llvm.named.register.rsp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !32, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !31, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evgpeutil.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !20, !24, !27, !29, !30}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !15, line: 421, baseType: !16)
!15 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !17, line: 21, baseType: !18)
!17 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !19, line: 27, baseType: !7)
!19 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !15, line: 127, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !17, line: 23, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !19, line: 31, baseType: !23)
!23 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !17, line: 17, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !19, line: 21, baseType: !26)
!26 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !28, line: 148, baseType: !7)
!28 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !{!0}
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 80, elements: !35)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!35 = !{!36}
!36 = !DISubrange(count: 10)
!37 = !{!"rsp"}
!38 = !{i32 7, !"Dwarf Version", i32 4}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"Code Model", i32 2}
!42 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!43 = distinct !DISubprogram(name: "acpi_ev_walk_gpe_list", scope: !3, file: !3, line: 31, type: !44, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !810)
!44 = !DISubroutineType(types: !45)
!45 = !{!14, !46, !29}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_callback", file: !47, line: 519, baseType: !48)
!47 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!14, !51, !57, !29}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !47, line: 497, size: 256, elements: !53)
!53 = !{!54, !55, !56, !809}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !52, file: !47, line: 498, baseType: !51, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !52, file: !47, line: 499, baseType: !51, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !52, file: !47, line: 500, baseType: !57, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !47, line: 480, size: 576, elements: !59)
!59 = !{!60, !753, !754, !755, !756, !771, !803, !804, !805, !806, !807, !808}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !58, file: !47, line: 481, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !47, line: 133, size: 384, elements: !63)
!63 = !{!64, !740, !741, !742, !743, !749, !750, !751, !752}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !62, file: !47, line: 134, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !67, line: 367, size: 576, elements: !68)
!67 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !80, !93, !104, !118, !132, !141, !458, !475, !490, !503, !514, !526, !540, !550, !568, !590, !609, !628, !647, !660, !686, !703, !716, !730, !739}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !66, file: !67, line: 368, baseType: !70, size: 128)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !67, line: 73, size: 128, elements: !71)
!71 = !{!72, !73, !74, !75, !79}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !70, file: !67, line: 74, baseType: !65, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !70, file: !67, line: 74, baseType: !24, size: 8, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !67, line: 74, baseType: !24, size: 8, offset: 72)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !70, file: !67, line: 74, baseType: !76, size: 16, offset: 80)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !17, line: 19, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !19, line: 24, baseType: !78)
!78 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !70, file: !67, line: 74, baseType: !24, size: 8, offset: 96)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !66, file: !67, line: 369, baseType: !81, size: 192)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !67, line: 76, size: 192, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88, !92}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !81, file: !67, line: 77, baseType: !65, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !81, file: !67, line: 77, baseType: !24, size: 8, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !81, file: !67, line: 77, baseType: !24, size: 8, offset: 72)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !81, file: !67, line: 77, baseType: !76, size: 16, offset: 80)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !81, file: !67, line: 77, baseType: !24, size: 8, offset: 96)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !81, file: !67, line: 77, baseType: !89, size: 24, offset: 104)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 24, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 3)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !81, file: !67, line: 78, baseType: !21, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !66, file: !67, line: 370, baseType: !94, size: 256)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !67, line: 93, size: 256, elements: !95)
!95 = !{!96, !97, !98, !99, !100, !101, !103}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !94, file: !67, line: 94, baseType: !65, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !94, file: !67, line: 94, baseType: !24, size: 8, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !67, line: 94, baseType: !24, size: 8, offset: 72)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !94, file: !67, line: 94, baseType: !76, size: 16, offset: 80)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !67, line: 94, baseType: !24, size: 8, offset: 96)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !94, file: !67, line: 94, baseType: !102, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !94, file: !67, line: 94, baseType: !16, size: 32, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !66, file: !67, line: 371, baseType: !105, size: 384)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !67, line: 97, size: 384, elements: !106)
!106 = !{!107, !108, !109, !110, !111, !112, !114, !115, !116, !117}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !105, file: !67, line: 98, baseType: !65, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !105, file: !67, line: 98, baseType: !24, size: 8, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !105, file: !67, line: 98, baseType: !24, size: 8, offset: 72)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !105, file: !67, line: 98, baseType: !76, size: 16, offset: 80)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !67, line: 98, baseType: !24, size: 8, offset: 96)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !105, file: !67, line: 98, baseType: !113, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !105, file: !67, line: 98, baseType: !16, size: 32, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !105, file: !67, line: 99, baseType: !16, size: 32, offset: 224)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !105, file: !67, line: 100, baseType: !113, size: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !105, file: !67, line: 101, baseType: !61, size: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !66, file: !67, line: 372, baseType: !119, size: 384)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !67, line: 104, size: 384, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !129, !130, !131}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !119, file: !67, line: 105, baseType: !65, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !119, file: !67, line: 105, baseType: !24, size: 8, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !67, line: 105, baseType: !24, size: 8, offset: 72)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !119, file: !67, line: 105, baseType: !76, size: 16, offset: 80)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !67, line: 105, baseType: !24, size: 8, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !119, file: !67, line: 105, baseType: !61, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !119, file: !67, line: 106, baseType: !128, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !119, file: !67, line: 107, baseType: !113, size: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !119, file: !67, line: 108, baseType: !16, size: 32, offset: 320)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !119, file: !67, line: 109, baseType: !16, size: 32, offset: 352)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !66, file: !67, line: 373, baseType: !133, size: 192)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !67, line: 118, size: 192, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !133, file: !67, line: 119, baseType: !65, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !133, file: !67, line: 119, baseType: !24, size: 8, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !133, file: !67, line: 119, baseType: !24, size: 8, offset: 72)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !133, file: !67, line: 119, baseType: !76, size: 16, offset: 80)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !67, line: 119, baseType: !24, size: 8, offset: 96)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !133, file: !67, line: 119, baseType: !29, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !66, file: !67, line: 374, baseType: !142, size: 448)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !67, line: 143, size: 448, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !455, !456, !457}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !142, file: !67, line: 144, baseType: !65, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !142, file: !67, line: 144, baseType: !24, size: 8, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !142, file: !67, line: 144, baseType: !24, size: 8, offset: 72)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !142, file: !67, line: 144, baseType: !76, size: 16, offset: 80)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !142, file: !67, line: 144, baseType: !24, size: 8, offset: 96)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !142, file: !67, line: 144, baseType: !24, size: 8, offset: 104)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !142, file: !67, line: 145, baseType: !24, size: 8, offset: 112)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !142, file: !67, line: 146, baseType: !24, size: 8, offset: 120)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !142, file: !67, line: 147, baseType: !65, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !142, file: !67, line: 148, baseType: !65, size: 64, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !142, file: !67, line: 149, baseType: !113, size: 64, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !142, file: !67, line: 153, baseType: !156, size: 64, offset: 320)
!156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !142, file: !67, line: 150, size: 64, elements: !157)
!157 = !{!158, !454}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !156, file: !67, line: 151, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !47, line: 248, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!14, !163}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !165, line: 37, size: 9024, elements: !166)
!165 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !400, !401, !402, !403, !404, !408, !410, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !437, !438, !439, !440, !441, !442, !443, !444, !446, !452}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !164, file: !165, line: 38, baseType: !163, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !164, file: !165, line: 39, baseType: !24, size: 8, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !164, file: !165, line: 40, baseType: !24, size: 8, offset: 72)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !164, file: !165, line: 41, baseType: !76, size: 16, offset: 80)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !164, file: !165, line: 42, baseType: !24, size: 8, offset: 96)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !164, file: !165, line: 43, baseType: !24, size: 8, offset: 104)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !164, file: !165, line: 44, baseType: !24, size: 8, offset: 112)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !164, file: !165, line: 45, baseType: !175, size: 16, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !15, line: 445, baseType: !76)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !164, file: !165, line: 46, baseType: !24, size: 8, offset: 144)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !164, file: !165, line: 47, baseType: !24, size: 8, offset: 152)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !164, file: !165, line: 48, baseType: !24, size: 8, offset: 160)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !164, file: !165, line: 49, baseType: !24, size: 8, offset: 168)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !164, file: !165, line: 50, baseType: !24, size: 8, offset: 176)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !164, file: !165, line: 51, baseType: !24, size: 8, offset: 184)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !164, file: !165, line: 52, baseType: !24, size: 8, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !164, file: !165, line: 53, baseType: !24, size: 8, offset: 200)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !164, file: !165, line: 54, baseType: !113, size: 64, offset: 256)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !164, file: !165, line: 55, baseType: !16, size: 32, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !164, file: !165, line: 56, baseType: !16, size: 32, offset: 352)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !164, file: !165, line: 57, baseType: !16, size: 32, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !164, file: !165, line: 58, baseType: !16, size: 32, offset: 416)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !164, file: !165, line: 60, baseType: !190, size: 640, offset: 448)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !47, line: 893, size: 640, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197, !281, !282, !398, !399}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !190, file: !47, line: 894, baseType: !113, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !190, file: !47, line: 895, baseType: !113, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !190, file: !47, line: 896, baseType: !113, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !190, file: !47, line: 897, baseType: !113, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !190, file: !47, line: 898, baseType: !113, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !190, file: !47, line: 899, baseType: !198, size: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !47, line: 875, size: 1600, elements: !200)
!200 = !{!201, !221, !237}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !199, file: !47, line: 876, baseType: !202, size: 448)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !47, line: 828, size: 448, elements: !203)
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !220}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !202, file: !47, line: 829, baseType: !198, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !202, file: !47, line: 829, baseType: !24, size: 8, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !202, file: !47, line: 829, baseType: !24, size: 8, offset: 72)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !202, file: !47, line: 829, baseType: !76, size: 16, offset: 80)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !202, file: !47, line: 829, baseType: !113, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !202, file: !47, line: 829, baseType: !198, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !202, file: !47, line: 829, baseType: !61, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !202, file: !47, line: 829, baseType: !212, size: 64, offset: 320)
!212 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !47, line: 716, size: 64, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !212, file: !47, line: 717, baseType: !21, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !212, file: !47, line: 718, baseType: !16, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !212, file: !47, line: 719, baseType: !102, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !212, file: !47, line: 720, baseType: !113, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !212, file: !47, line: 721, baseType: !102, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !212, file: !47, line: 722, baseType: !198, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !202, file: !47, line: 829, baseType: !24, size: 8, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !199, file: !47, line: 877, baseType: !222, size: 640)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !47, line: 835, size: 640, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !222, file: !47, line: 836, baseType: !198, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !222, file: !47, line: 836, baseType: !24, size: 8, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !222, file: !47, line: 836, baseType: !24, size: 8, offset: 72)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !222, file: !47, line: 836, baseType: !76, size: 16, offset: 80)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !222, file: !47, line: 836, baseType: !113, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !47, line: 836, baseType: !198, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !222, file: !47, line: 836, baseType: !61, size: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !222, file: !47, line: 836, baseType: !212, size: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !222, file: !47, line: 836, baseType: !24, size: 8, offset: 384)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !222, file: !47, line: 836, baseType: !102, size: 64, offset: 448)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !222, file: !47, line: 837, baseType: !113, size: 64, offset: 512)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !222, file: !47, line: 838, baseType: !16, size: 32, offset: 576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !222, file: !47, line: 839, baseType: !16, size: 32, offset: 608)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !199, file: !47, line: 878, baseType: !238, size: 1600)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !47, line: 846, size: 1600, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !238, file: !47, line: 847, baseType: !198, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !238, file: !47, line: 847, baseType: !24, size: 8, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !238, file: !47, line: 847, baseType: !24, size: 8, offset: 72)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !238, file: !47, line: 847, baseType: !76, size: 16, offset: 80)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !238, file: !47, line: 847, baseType: !113, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !238, file: !47, line: 847, baseType: !198, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !238, file: !47, line: 847, baseType: !61, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !238, file: !47, line: 847, baseType: !212, size: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !238, file: !47, line: 847, baseType: !24, size: 8, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !238, file: !47, line: 847, baseType: !198, size: 64, offset: 448)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !238, file: !47, line: 848, baseType: !198, size: 64, offset: 512)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !238, file: !47, line: 849, baseType: !102, size: 64, offset: 576)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !238, file: !47, line: 850, baseType: !24, size: 8, offset: 640)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !238, file: !47, line: 851, baseType: !102, size: 64, offset: 704)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !238, file: !47, line: 852, baseType: !102, size: 64, offset: 768)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !238, file: !47, line: 853, baseType: !102, size: 64, offset: 832)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !238, file: !47, line: 854, baseType: !257, size: 32, offset: 896)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 32, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 4)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !238, file: !47, line: 855, baseType: !16, size: 32, offset: 928)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !238, file: !47, line: 856, baseType: !16, size: 32, offset: 960)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !238, file: !47, line: 857, baseType: !16, size: 32, offset: 992)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !238, file: !47, line: 858, baseType: !16, size: 32, offset: 1024)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !238, file: !47, line: 859, baseType: !16, size: 32, offset: 1056)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !238, file: !47, line: 860, baseType: !16, size: 32, offset: 1088)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !238, file: !47, line: 861, baseType: !16, size: 32, offset: 1120)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !238, file: !47, line: 862, baseType: !16, size: 32, offset: 1152)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !238, file: !47, line: 863, baseType: !16, size: 32, offset: 1184)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !238, file: !47, line: 864, baseType: !16, size: 32, offset: 1216)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !238, file: !47, line: 865, baseType: !16, size: 32, offset: 1248)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !238, file: !47, line: 866, baseType: !16, size: 32, offset: 1280)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !238, file: !47, line: 867, baseType: !16, size: 32, offset: 1312)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !238, file: !47, line: 868, baseType: !76, size: 16, offset: 1344)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !238, file: !47, line: 869, baseType: !24, size: 8, offset: 1360)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !238, file: !47, line: 870, baseType: !24, size: 8, offset: 1368)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !238, file: !47, line: 871, baseType: !24, size: 8, offset: 1376)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !238, file: !47, line: 872, baseType: !278, size: 160, offset: 1384)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 160, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 20)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !190, file: !47, line: 900, baseType: !61, size: 64, offset: 384)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !190, file: !47, line: 901, baseType: !283, size: 64, offset: 448)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !47, line: 663, size: 640, elements: !285)
!285 = !{!286, !294, !307, !316, !325, !338, !352, !364, !376}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !284, file: !47, line: 664, baseType: !287, size: 128)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !47, line: 567, size: 128, elements: !288)
!288 = !{!289, !290, !291, !292, !293}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !47, line: 568, baseType: !29, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !287, file: !47, line: 568, baseType: !24, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !47, line: 568, baseType: !24, size: 8, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !287, file: !47, line: 568, baseType: !76, size: 16, offset: 80)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !287, file: !47, line: 568, baseType: !76, size: 16, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !284, file: !47, line: 665, baseType: !295, size: 384)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !47, line: 593, size: 384, elements: !296)
!296 = !{!297, !298, !299, !300, !301, !302, !303, !304, !305, !306}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !47, line: 594, baseType: !29, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !295, file: !47, line: 594, baseType: !24, size: 8, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !47, line: 594, baseType: !24, size: 8, offset: 72)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !295, file: !47, line: 594, baseType: !76, size: 16, offset: 80)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !295, file: !47, line: 594, baseType: !76, size: 16, offset: 96)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !295, file: !47, line: 594, baseType: !76, size: 16, offset: 112)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !295, file: !47, line: 595, baseType: !198, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !295, file: !47, line: 596, baseType: !113, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !295, file: !47, line: 597, baseType: !113, size: 64, offset: 256)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !295, file: !47, line: 598, baseType: !21, size: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !284, file: !47, line: 666, baseType: !308, size: 192)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !47, line: 573, size: 192, elements: !309)
!309 = !{!310, !311, !312, !313, !314, !315}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !308, file: !47, line: 574, baseType: !29, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !308, file: !47, line: 574, baseType: !24, size: 8, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !308, file: !47, line: 574, baseType: !24, size: 8, offset: 72)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !308, file: !47, line: 574, baseType: !76, size: 16, offset: 80)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !308, file: !47, line: 574, baseType: !76, size: 16, offset: 96)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !308, file: !47, line: 574, baseType: !65, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !284, file: !47, line: 667, baseType: !317, size: 192)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !47, line: 604, size: 192, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !324}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !47, line: 605, baseType: !29, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !317, file: !47, line: 605, baseType: !24, size: 8, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !317, file: !47, line: 605, baseType: !24, size: 8, offset: 72)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !317, file: !47, line: 605, baseType: !76, size: 16, offset: 80)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !317, file: !47, line: 605, baseType: !76, size: 16, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !317, file: !47, line: 605, baseType: !61, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !284, file: !47, line: 668, baseType: !326, size: 448)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !47, line: 608, size: 448, elements: !327)
!327 = !{!328, !329, !330, !331, !332, !333, !334, !335, !336, !337}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !47, line: 609, baseType: !29, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !326, file: !47, line: 609, baseType: !24, size: 8, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !326, file: !47, line: 609, baseType: !24, size: 8, offset: 72)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !326, file: !47, line: 609, baseType: !76, size: 16, offset: 80)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !326, file: !47, line: 609, baseType: !76, size: 16, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !326, file: !47, line: 609, baseType: !16, size: 32, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !326, file: !47, line: 610, baseType: !198, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !326, file: !47, line: 611, baseType: !113, size: 64, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !326, file: !47, line: 612, baseType: !113, size: 64, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !326, file: !47, line: 613, baseType: !16, size: 32, offset: 384)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !284, file: !47, line: 669, baseType: !339, size: 512)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !47, line: 580, size: 512, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !47, line: 581, baseType: !29, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !339, file: !47, line: 581, baseType: !24, size: 8, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !339, file: !47, line: 581, baseType: !24, size: 8, offset: 72)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !339, file: !47, line: 581, baseType: !76, size: 16, offset: 80)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !339, file: !47, line: 581, baseType: !76, size: 16, offset: 96)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !339, file: !47, line: 581, baseType: !16, size: 32, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !339, file: !47, line: 582, baseType: !65, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !339, file: !47, line: 583, baseType: !65, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !339, file: !47, line: 584, baseType: !163, size: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !339, file: !47, line: 585, baseType: !29, size: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !339, file: !47, line: 586, baseType: !16, size: 32, offset: 448)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !284, file: !47, line: 670, baseType: !353, size: 320)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !47, line: 620, size: 320, elements: !354)
!354 = !{!355, !356, !357, !358, !359, !360, !361, !362, !363}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !47, line: 621, baseType: !29, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !353, file: !47, line: 621, baseType: !24, size: 8, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !353, file: !47, line: 621, baseType: !24, size: 8, offset: 72)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !353, file: !47, line: 621, baseType: !76, size: 16, offset: 80)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !353, file: !47, line: 621, baseType: !76, size: 16, offset: 96)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !353, file: !47, line: 621, baseType: !24, size: 8, offset: 112)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !353, file: !47, line: 622, baseType: !163, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !353, file: !47, line: 623, baseType: !65, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !353, file: !47, line: 624, baseType: !21, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !284, file: !47, line: 671, baseType: !365, size: 640)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !47, line: 631, size: 640, elements: !366)
!366 = !{!367, !368, !369, !370, !371, !372}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !365, file: !47, line: 632, baseType: !29, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !365, file: !47, line: 632, baseType: !24, size: 8, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !365, file: !47, line: 632, baseType: !24, size: 8, offset: 72)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !365, file: !47, line: 632, baseType: !76, size: 16, offset: 80)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !365, file: !47, line: 632, baseType: !76, size: 16, offset: 96)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !365, file: !47, line: 633, baseType: !373, size: 512, offset: 128)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 512, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 8)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !284, file: !47, line: 672, baseType: !377, size: 320)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !47, line: 654, size: 320, elements: !378)
!378 = !{!379, !380, !381, !382, !383, !384, !385, !386, !387}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !47, line: 655, baseType: !29, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !377, file: !47, line: 655, baseType: !24, size: 8, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !377, file: !47, line: 655, baseType: !24, size: 8, offset: 72)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !377, file: !47, line: 655, baseType: !76, size: 16, offset: 80)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !377, file: !47, line: 655, baseType: !76, size: 16, offset: 96)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !377, file: !47, line: 655, baseType: !24, size: 8, offset: 112)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !377, file: !47, line: 656, baseType: !61, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !377, file: !47, line: 657, baseType: !65, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !377, file: !47, line: 658, baseType: !388, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !47, line: 645, size: 128, elements: !390)
!390 = !{!391, !397}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !389, file: !47, line: 646, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !15, line: 1052, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !396, !16, !29}
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !15, line: 424, baseType: !29)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !389, file: !47, line: 647, baseType: !29, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !190, file: !47, line: 902, baseType: !198, size: 64, offset: 512)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !190, file: !47, line: 903, baseType: !16, size: 32, offset: 576)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !164, file: !165, line: 61, baseType: !16, size: 32, offset: 1088)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !164, file: !165, line: 62, baseType: !16, size: 32, offset: 1120)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !164, file: !165, line: 63, baseType: !76, size: 16, offset: 1152)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !164, file: !165, line: 64, baseType: !24, size: 8, offset: 1168)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !164, file: !165, line: 66, baseType: !405, size: 2688, offset: 1216)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 2688, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 7)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !164, file: !165, line: 67, baseType: !409, size: 3072, offset: 3904)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 3072, elements: !374)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !164, file: !165, line: 68, baseType: !411, size: 576, offset: 6976)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 576, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 9)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !164, file: !165, line: 69, baseType: !128, size: 64, offset: 7552)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !164, file: !165, line: 71, baseType: !113, size: 64, offset: 7616)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !164, file: !165, line: 72, baseType: !128, size: 64, offset: 7680)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !164, file: !165, line: 73, baseType: !283, size: 64, offset: 7744)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !164, file: !165, line: 74, baseType: !61, size: 64, offset: 7808)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !164, file: !165, line: 75, baseType: !65, size: 64, offset: 7872)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !164, file: !165, line: 76, baseType: !61, size: 64, offset: 7936)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !164, file: !165, line: 77, baseType: !198, size: 64, offset: 8000)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !164, file: !165, line: 78, baseType: !65, size: 64, offset: 8064)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !164, file: !165, line: 79, baseType: !61, size: 64, offset: 8128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !164, file: !165, line: 80, baseType: !102, size: 64, offset: 8192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !164, file: !165, line: 81, baseType: !198, size: 64, offset: 8256)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !164, file: !165, line: 82, baseType: !427, size: 64, offset: 8320)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !47, line: 702, size: 128, elements: !430)
!430 = !{!431, !432, !433, !434, !435, !436}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !429, file: !47, line: 706, baseType: !16, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !429, file: !47, line: 707, baseType: !16, size: 32, offset: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !429, file: !47, line: 708, baseType: !76, size: 16, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !429, file: !47, line: 709, baseType: !24, size: 8, offset: 80)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !429, file: !47, line: 710, baseType: !24, size: 8, offset: 88)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !429, file: !47, line: 711, baseType: !24, size: 8, offset: 96)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !164, file: !165, line: 83, baseType: !198, size: 64, offset: 8384)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !164, file: !165, line: 84, baseType: !65, size: 64, offset: 8448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !164, file: !165, line: 85, baseType: !283, size: 64, offset: 8512)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !164, file: !165, line: 86, baseType: !65, size: 64, offset: 8576)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !164, file: !165, line: 87, baseType: !283, size: 64, offset: 8640)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !164, file: !165, line: 88, baseType: !198, size: 64, offset: 8704)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !164, file: !165, line: 89, baseType: !198, size: 64, offset: 8768)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !164, file: !165, line: 90, baseType: !445, size: 64, offset: 8832)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !164, file: !165, line: 91, baseType: !447, size: 64, offset: 8896)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !47, line: 637, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!14, !163, !451}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !164, file: !165, line: 92, baseType: !453, size: 64, offset: 8960)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !47, line: 641, baseType: !160)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !156, file: !67, line: 152, baseType: !65, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !142, file: !67, line: 155, baseType: !16, size: 32, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !142, file: !67, line: 156, baseType: !175, size: 16, offset: 416)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !142, file: !67, line: 157, baseType: !24, size: 8, offset: 432)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !66, file: !67, line: 375, baseType: !459, size: 576)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !67, line: 122, size: 576, elements: !460)
!460 = !{!461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !459, file: !67, line: 123, baseType: !65, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !459, file: !67, line: 123, baseType: !24, size: 8, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !459, file: !67, line: 123, baseType: !24, size: 8, offset: 72)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !459, file: !67, line: 123, baseType: !76, size: 16, offset: 80)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !459, file: !67, line: 123, baseType: !24, size: 8, offset: 96)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !459, file: !67, line: 123, baseType: !24, size: 8, offset: 104)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !459, file: !67, line: 124, baseType: !76, size: 16, offset: 112)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !459, file: !67, line: 125, baseType: !29, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !459, file: !67, line: 126, baseType: !21, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !459, file: !67, line: 127, baseType: !445, size: 64, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !459, file: !67, line: 128, baseType: !65, size: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !459, file: !67, line: 129, baseType: !65, size: 64, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !459, file: !67, line: 130, baseType: !61, size: 64, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !459, file: !67, line: 131, baseType: !24, size: 8, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !66, file: !67, line: 376, baseType: !476, size: 448)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !67, line: 134, size: 448, elements: !477)
!477 = !{!478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !489}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !476, file: !67, line: 135, baseType: !65, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !476, file: !67, line: 135, baseType: !24, size: 8, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !476, file: !67, line: 135, baseType: !24, size: 8, offset: 72)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !476, file: !67, line: 135, baseType: !76, size: 16, offset: 80)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !476, file: !67, line: 135, baseType: !24, size: 8, offset: 96)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !476, file: !67, line: 135, baseType: !24, size: 8, offset: 104)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !476, file: !67, line: 136, baseType: !61, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !476, file: !67, line: 137, baseType: !65, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !476, file: !67, line: 138, baseType: !65, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !476, file: !67, line: 139, baseType: !488, size: 64, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !15, line: 129, baseType: !21)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !476, file: !67, line: 140, baseType: !16, size: 32, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !66, file: !67, line: 377, baseType: !491, size: 320)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !67, line: 184, size: 320, elements: !492)
!492 = !{!493, !494, !495, !496, !497, !498, !502}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !491, file: !67, line: 185, baseType: !65, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !491, file: !67, line: 185, baseType: !24, size: 8, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !491, file: !67, line: 185, baseType: !24, size: 8, offset: 72)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !491, file: !67, line: 185, baseType: !76, size: 16, offset: 80)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !491, file: !67, line: 185, baseType: !24, size: 8, offset: 96)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !491, file: !67, line: 185, baseType: !499, size: 128, offset: 128)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 128, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 2)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !491, file: !67, line: 185, baseType: !65, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !66, file: !67, line: 378, baseType: !504, size: 384)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !67, line: 187, size: 384, elements: !505)
!505 = !{!506, !507, !508, !509, !510, !511, !512, !513}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !504, file: !67, line: 188, baseType: !65, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !504, file: !67, line: 188, baseType: !24, size: 8, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !504, file: !67, line: 188, baseType: !24, size: 8, offset: 72)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !504, file: !67, line: 188, baseType: !76, size: 16, offset: 80)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !504, file: !67, line: 188, baseType: !24, size: 8, offset: 96)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !504, file: !67, line: 189, baseType: !499, size: 128, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !504, file: !67, line: 189, baseType: !65, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !504, file: !67, line: 189, baseType: !57, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !66, file: !67, line: 379, baseType: !515, size: 384)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !67, line: 192, size: 384, elements: !516)
!516 = !{!517, !518, !519, !520, !521, !522, !523, !524, !525}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !515, file: !67, line: 193, baseType: !65, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !515, file: !67, line: 193, baseType: !24, size: 8, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !515, file: !67, line: 193, baseType: !24, size: 8, offset: 72)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !515, file: !67, line: 193, baseType: !76, size: 16, offset: 80)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !515, file: !67, line: 193, baseType: !24, size: 8, offset: 96)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !515, file: !67, line: 193, baseType: !499, size: 128, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !515, file: !67, line: 193, baseType: !65, size: 64, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !515, file: !67, line: 193, baseType: !16, size: 32, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !515, file: !67, line: 194, baseType: !16, size: 32, offset: 352)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !66, file: !67, line: 380, baseType: !527, size: 384)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !67, line: 197, size: 384, elements: !528)
!528 = !{!529, !530, !531, !532, !533, !534, !535, !536, !537, !538}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !527, file: !67, line: 198, baseType: !65, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !527, file: !67, line: 198, baseType: !24, size: 8, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !527, file: !67, line: 198, baseType: !24, size: 8, offset: 72)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !527, file: !67, line: 198, baseType: !76, size: 16, offset: 80)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !527, file: !67, line: 198, baseType: !24, size: 8, offset: 96)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !527, file: !67, line: 200, baseType: !24, size: 8, offset: 104)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !527, file: !67, line: 201, baseType: !24, size: 8, offset: 112)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !527, file: !67, line: 202, baseType: !499, size: 128, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !527, file: !67, line: 202, baseType: !65, size: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !527, file: !67, line: 202, baseType: !539, size: 64, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !15, line: 128, baseType: !21)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !66, file: !67, line: 381, baseType: !541, size: 320)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !67, line: 205, size: 320, elements: !542)
!542 = !{!543, !544, !545, !546, !547, !548, !549}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !541, file: !67, line: 206, baseType: !65, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !541, file: !67, line: 206, baseType: !24, size: 8, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !541, file: !67, line: 206, baseType: !24, size: 8, offset: 72)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !541, file: !67, line: 206, baseType: !76, size: 16, offset: 80)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !541, file: !67, line: 206, baseType: !24, size: 8, offset: 96)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !541, file: !67, line: 206, baseType: !499, size: 128, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !541, file: !67, line: 206, baseType: !65, size: 64, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !66, file: !67, line: 382, baseType: !551, size: 384)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !67, line: 233, size: 384, elements: !552)
!552 = !{!553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !551, file: !67, line: 234, baseType: !65, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !551, file: !67, line: 234, baseType: !24, size: 8, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !551, file: !67, line: 234, baseType: !24, size: 8, offset: 72)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !551, file: !67, line: 234, baseType: !76, size: 16, offset: 80)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !551, file: !67, line: 234, baseType: !24, size: 8, offset: 96)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !551, file: !67, line: 234, baseType: !24, size: 8, offset: 104)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !551, file: !67, line: 234, baseType: !24, size: 8, offset: 112)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !551, file: !67, line: 234, baseType: !24, size: 8, offset: 120)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !551, file: !67, line: 234, baseType: !61, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !551, file: !67, line: 234, baseType: !16, size: 32, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !551, file: !67, line: 234, baseType: !16, size: 32, offset: 224)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !551, file: !67, line: 234, baseType: !16, size: 32, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !551, file: !67, line: 234, baseType: !24, size: 8, offset: 288)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !551, file: !67, line: 234, baseType: !24, size: 8, offset: 296)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !551, file: !67, line: 234, baseType: !65, size: 64, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !66, file: !67, line: 383, baseType: !569, size: 576)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !67, line: 237, size: 576, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !569, file: !67, line: 238, baseType: !65, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !569, file: !67, line: 238, baseType: !24, size: 8, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !569, file: !67, line: 238, baseType: !24, size: 8, offset: 72)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !569, file: !67, line: 238, baseType: !76, size: 16, offset: 80)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !569, file: !67, line: 238, baseType: !24, size: 8, offset: 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !569, file: !67, line: 238, baseType: !24, size: 8, offset: 104)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !569, file: !67, line: 238, baseType: !24, size: 8, offset: 112)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !569, file: !67, line: 238, baseType: !24, size: 8, offset: 120)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !569, file: !67, line: 238, baseType: !61, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !569, file: !67, line: 238, baseType: !16, size: 32, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !569, file: !67, line: 238, baseType: !16, size: 32, offset: 224)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !569, file: !67, line: 238, baseType: !16, size: 32, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !569, file: !67, line: 238, baseType: !24, size: 8, offset: 288)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !569, file: !67, line: 238, baseType: !24, size: 8, offset: 296)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !569, file: !67, line: 238, baseType: !76, size: 16, offset: 304)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !569, file: !67, line: 239, baseType: !65, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !569, file: !67, line: 240, baseType: !113, size: 64, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !569, file: !67, line: 241, baseType: !76, size: 16, offset: 448)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !569, file: !67, line: 242, baseType: !113, size: 64, offset: 512)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !66, file: !67, line: 384, baseType: !591, size: 384)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !67, line: 262, size: 384, elements: !592)
!592 = !{!593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !591, file: !67, line: 263, baseType: !65, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !591, file: !67, line: 263, baseType: !24, size: 8, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !591, file: !67, line: 263, baseType: !24, size: 8, offset: 72)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !591, file: !67, line: 263, baseType: !76, size: 16, offset: 80)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !591, file: !67, line: 263, baseType: !24, size: 8, offset: 96)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !591, file: !67, line: 263, baseType: !24, size: 8, offset: 104)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !591, file: !67, line: 263, baseType: !24, size: 8, offset: 112)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !591, file: !67, line: 263, baseType: !24, size: 8, offset: 120)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !591, file: !67, line: 263, baseType: !61, size: 64, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !591, file: !67, line: 263, baseType: !16, size: 32, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !591, file: !67, line: 263, baseType: !16, size: 32, offset: 224)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !591, file: !67, line: 263, baseType: !16, size: 32, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !591, file: !67, line: 263, baseType: !24, size: 8, offset: 288)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !591, file: !67, line: 263, baseType: !24, size: 8, offset: 296)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !591, file: !67, line: 263, baseType: !24, size: 8, offset: 304)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !591, file: !67, line: 264, baseType: !65, size: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !66, file: !67, line: 385, baseType: !610, size: 448)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !67, line: 245, size: 448, elements: !611)
!611 = !{!612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !610, file: !67, line: 246, baseType: !65, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !610, file: !67, line: 246, baseType: !24, size: 8, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !610, file: !67, line: 246, baseType: !24, size: 8, offset: 72)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !610, file: !67, line: 246, baseType: !76, size: 16, offset: 80)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !610, file: !67, line: 246, baseType: !24, size: 8, offset: 96)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !610, file: !67, line: 246, baseType: !24, size: 8, offset: 104)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !610, file: !67, line: 246, baseType: !24, size: 8, offset: 112)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !610, file: !67, line: 246, baseType: !24, size: 8, offset: 120)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !610, file: !67, line: 246, baseType: !61, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !610, file: !67, line: 246, baseType: !16, size: 32, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !610, file: !67, line: 246, baseType: !16, size: 32, offset: 224)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !610, file: !67, line: 246, baseType: !16, size: 32, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !610, file: !67, line: 246, baseType: !24, size: 8, offset: 288)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !610, file: !67, line: 246, baseType: !24, size: 8, offset: 296)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !610, file: !67, line: 246, baseType: !65, size: 64, offset: 320)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !610, file: !67, line: 247, baseType: !65, size: 64, offset: 384)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !66, file: !67, line: 386, baseType: !629, size: 448)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !67, line: 250, size: 448, elements: !630)
!630 = !{!631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !629, file: !67, line: 251, baseType: !65, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !629, file: !67, line: 251, baseType: !24, size: 8, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !629, file: !67, line: 251, baseType: !24, size: 8, offset: 72)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !629, file: !67, line: 251, baseType: !76, size: 16, offset: 80)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !629, file: !67, line: 251, baseType: !24, size: 8, offset: 96)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !629, file: !67, line: 251, baseType: !24, size: 8, offset: 104)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !629, file: !67, line: 251, baseType: !24, size: 8, offset: 112)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !629, file: !67, line: 251, baseType: !24, size: 8, offset: 120)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !629, file: !67, line: 251, baseType: !61, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !629, file: !67, line: 251, baseType: !16, size: 32, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !629, file: !67, line: 251, baseType: !16, size: 32, offset: 224)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !629, file: !67, line: 251, baseType: !16, size: 32, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !629, file: !67, line: 251, baseType: !24, size: 8, offset: 288)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !629, file: !67, line: 251, baseType: !24, size: 8, offset: 296)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !629, file: !67, line: 256, baseType: !65, size: 64, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !629, file: !67, line: 257, baseType: !65, size: 64, offset: 384)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !66, file: !67, line: 387, baseType: !648, size: 512)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !67, line: 273, size: 512, elements: !649)
!649 = !{!650, !651, !652, !653, !654, !655, !656, !657, !658, !659}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !648, file: !67, line: 274, baseType: !65, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !648, file: !67, line: 274, baseType: !24, size: 8, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !648, file: !67, line: 274, baseType: !24, size: 8, offset: 72)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !648, file: !67, line: 274, baseType: !76, size: 16, offset: 80)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !648, file: !67, line: 274, baseType: !24, size: 8, offset: 96)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !648, file: !67, line: 274, baseType: !61, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !648, file: !67, line: 275, baseType: !16, size: 32, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !648, file: !67, line: 276, baseType: !392, size: 64, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !648, file: !67, line: 277, baseType: !29, size: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !648, file: !67, line: 278, baseType: !499, size: 128, offset: 384)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !66, file: !67, line: 388, baseType: !661, size: 512)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !67, line: 281, size: 512, elements: !662)
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !676, !677, !678, !684, !685}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !661, file: !67, line: 282, baseType: !65, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !661, file: !67, line: 282, baseType: !24, size: 8, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !661, file: !67, line: 282, baseType: !24, size: 8, offset: 72)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !661, file: !67, line: 282, baseType: !76, size: 16, offset: 80)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !67, line: 282, baseType: !24, size: 8, offset: 96)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !661, file: !67, line: 282, baseType: !24, size: 8, offset: 104)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !661, file: !67, line: 283, baseType: !24, size: 8, offset: 112)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !661, file: !67, line: 284, baseType: !671, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !15, line: 1084, baseType: !672)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!14, !16, !488, !16, !675, !29, !29}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !661, file: !67, line: 285, baseType: !61, size: 64, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !661, file: !67, line: 286, baseType: !29, size: 64, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !661, file: !67, line: 287, baseType: !679, size: 64, offset: 320)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !15, line: 1102, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!14, !396, !16, !29, !683}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !661, file: !67, line: 288, baseType: !65, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !661, file: !67, line: 289, baseType: !65, size: 64, offset: 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !66, file: !67, line: 389, baseType: !687, size: 512)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !67, line: 307, size: 512, elements: !688)
!688 = !{!689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !687, file: !67, line: 308, baseType: !65, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !687, file: !67, line: 308, baseType: !24, size: 8, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !687, file: !67, line: 308, baseType: !24, size: 8, offset: 72)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !687, file: !67, line: 308, baseType: !76, size: 16, offset: 80)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !687, file: !67, line: 308, baseType: !24, size: 8, offset: 96)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !687, file: !67, line: 308, baseType: !24, size: 8, offset: 104)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !687, file: !67, line: 309, baseType: !24, size: 8, offset: 112)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !687, file: !67, line: 310, baseType: !24, size: 8, offset: 120)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !687, file: !67, line: 311, baseType: !29, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !687, file: !67, line: 312, baseType: !61, size: 64, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !687, file: !67, line: 313, baseType: !128, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !687, file: !67, line: 314, baseType: !113, size: 64, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !687, file: !67, line: 315, baseType: !113, size: 64, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !687, file: !67, line: 316, baseType: !16, size: 32, offset: 448)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !66, file: !67, line: 390, baseType: !704, size: 448)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !67, line: 340, size: 448, elements: !705)
!705 = !{!706, !707, !708, !709, !710, !711, !712, !713, !714, !715}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !704, file: !67, line: 341, baseType: !65, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !704, file: !67, line: 341, baseType: !24, size: 8, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !704, file: !67, line: 341, baseType: !24, size: 8, offset: 72)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !704, file: !67, line: 341, baseType: !76, size: 16, offset: 80)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !704, file: !67, line: 341, baseType: !24, size: 8, offset: 96)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !704, file: !67, line: 341, baseType: !61, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !704, file: !67, line: 342, baseType: !61, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !704, file: !67, line: 343, baseType: !29, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !704, file: !67, line: 344, baseType: !113, size: 64, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !704, file: !67, line: 345, baseType: !16, size: 32, offset: 384)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !66, file: !67, line: 391, baseType: !717, size: 256)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !67, line: 350, size: 256, elements: !718)
!718 = !{!719, !720, !721, !722, !723, !724, !729}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !717, file: !67, line: 351, baseType: !65, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !717, file: !67, line: 351, baseType: !24, size: 8, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !717, file: !67, line: 351, baseType: !24, size: 8, offset: 72)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !717, file: !67, line: 351, baseType: !76, size: 16, offset: 80)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !717, file: !67, line: 351, baseType: !24, size: 8, offset: 96)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !717, file: !67, line: 351, baseType: !725, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !15, line: 1055, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !396, !29}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !717, file: !67, line: 352, baseType: !29, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !66, file: !67, line: 392, baseType: !731, size: 192)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !67, line: 357, size: 192, elements: !732)
!732 = !{!733, !734, !735, !736, !737, !738}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !731, file: !67, line: 358, baseType: !65, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !731, file: !67, line: 358, baseType: !24, size: 8, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !731, file: !67, line: 358, baseType: !24, size: 8, offset: 72)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !731, file: !67, line: 358, baseType: !76, size: 16, offset: 80)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !731, file: !67, line: 358, baseType: !24, size: 8, offset: 96)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !731, file: !67, line: 358, baseType: !65, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !66, file: !67, line: 399, baseType: !62, size: 384)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !62, file: !47, line: 135, baseType: !24, size: 8, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !62, file: !47, line: 136, baseType: !24, size: 8, offset: 72)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !62, file: !47, line: 137, baseType: !76, size: 16, offset: 80)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !62, file: !47, line: 138, baseType: !744, size: 32, offset: 96)
!744 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !745, line: 327, size: 32, elements: !746)
!745 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !744, file: !745, line: 328, baseType: !16, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !744, file: !745, line: 329, baseType: !257, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !62, file: !47, line: 139, baseType: !61, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !62, file: !47, line: 140, baseType: !61, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !62, file: !47, line: 141, baseType: !61, size: 64, offset: 256)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !62, file: !47, line: 142, baseType: !175, size: 16, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !58, file: !47, line: 482, baseType: !57, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !58, file: !47, line: 483, baseType: !57, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !58, file: !47, line: 484, baseType: !51, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !58, file: !47, line: 485, baseType: !757, size: 64, offset: 256)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !47, line: 466, size: 320, elements: !759)
!759 = !{!760, !765, !766, !767, !768, !769, !770}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !758, file: !47, line: 467, baseType: !761, size: 128)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !47, line: 459, size: 128, elements: !762)
!762 = !{!763, !764}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !761, file: !47, line: 460, baseType: !24, size: 8)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !761, file: !47, line: 461, baseType: !21, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !758, file: !47, line: 468, baseType: !761, size: 128, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !758, file: !47, line: 469, baseType: !76, size: 16, offset: 256)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !758, file: !47, line: 470, baseType: !24, size: 8, offset: 272)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !758, file: !47, line: 471, baseType: !24, size: 8, offset: 280)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !758, file: !47, line: 472, baseType: !24, size: 8, offset: 288)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !758, file: !47, line: 473, baseType: !24, size: 8, offset: 296)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !58, file: !47, line: 486, baseType: !772, size: 64, offset: 320)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !47, line: 448, size: 192, elements: !774)
!774 = !{!775, !798, !799, !800, !801, !802}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !773, file: !47, line: 449, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !47, line: 438, size: 64, elements: !777)
!777 = !{!778, !779, !792}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !776, file: !47, line: 439, baseType: !61, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !776, file: !47, line: 440, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !47, line: 419, size: 256, elements: !782)
!782 = !{!783, !788, !789, !790, !791}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !781, file: !47, line: 420, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !15, line: 1049, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!16, !396, !16, !29}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !781, file: !47, line: 421, baseType: !29, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !781, file: !47, line: 422, baseType: !61, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !781, file: !47, line: 423, baseType: !24, size: 8, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !781, file: !47, line: 424, baseType: !24, size: 8, offset: 200)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !776, file: !47, line: 441, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !47, line: 429, size: 128, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !794, file: !47, line: 430, baseType: !61, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !794, file: !47, line: 431, baseType: !793, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !773, file: !47, line: 450, baseType: !757, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !773, file: !47, line: 451, baseType: !24, size: 8, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !773, file: !47, line: 452, baseType: !24, size: 8, offset: 136)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !773, file: !47, line: 453, baseType: !24, size: 8, offset: 144)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !773, file: !47, line: 454, baseType: !24, size: 8, offset: 152)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !58, file: !47, line: 487, baseType: !21, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !58, file: !47, line: 488, baseType: !16, size: 32, offset: 448)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !58, file: !47, line: 489, baseType: !76, size: 16, offset: 480)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !58, file: !47, line: 490, baseType: !76, size: 16, offset: 496)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !58, file: !47, line: 491, baseType: !24, size: 8, offset: 512)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !58, file: !47, line: 492, baseType: !24, size: 8, offset: 520)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !52, file: !47, line: 501, baseType: !16, size: 32, offset: 192)
!810 = !{}
!811 = !DILocalVariable(name: "gpe_walk_callback", arg: 1, scope: !43, file: !3, line: 31, type: !46)
!812 = !DILocation(line: 31, column: 41, scope: !43)
!813 = !DILocalVariable(name: "context", arg: 2, scope: !43, file: !3, line: 31, type: !29)
!814 = !DILocation(line: 31, column: 66, scope: !43)
!815 = !DILocalVariable(name: "gpe_block", scope: !43, file: !3, line: 33, type: !57)
!816 = !DILocation(line: 33, column: 30, scope: !43)
!817 = !DILocalVariable(name: "gpe_xrupt_info", scope: !43, file: !3, line: 34, type: !51)
!818 = !DILocation(line: 34, column: 30, scope: !43)
!819 = !DILocalVariable(name: "status", scope: !43, file: !3, line: 35, type: !14)
!820 = !DILocation(line: 35, column: 14, scope: !43)
!821 = !DILocalVariable(name: "flags", scope: !43, file: !3, line: 36, type: !30)
!822 = !DILocation(line: 36, column: 17, scope: !43)
!823 = !DILocation(line: 40, column: 31, scope: !43)
!824 = !DILocation(line: 40, column: 10, scope: !43)
!825 = !DILocation(line: 40, column: 8, scope: !43)
!826 = !DILocation(line: 44, column: 19, scope: !43)
!827 = !DILocation(line: 44, column: 17, scope: !43)
!828 = !DILocation(line: 45, column: 2, scope: !43)
!829 = !DILocation(line: 45, column: 9, scope: !43)
!830 = !DILocation(line: 49, column: 15, scope: !831)
!831 = distinct !DILexicalBlock(scope: !43, file: !3, line: 45, column: 25)
!832 = !DILocation(line: 49, column: 31, scope: !831)
!833 = !DILocation(line: 49, column: 13, scope: !831)
!834 = !DILocation(line: 50, column: 3, scope: !831)
!835 = !DILocation(line: 50, column: 10, scope: !831)
!836 = !DILocation(line: 55, column: 8, scope: !837)
!837 = distinct !DILexicalBlock(scope: !831, file: !3, line: 50, column: 21)
!838 = !DILocation(line: 55, column: 26, scope: !837)
!839 = !DILocation(line: 55, column: 42, scope: !837)
!840 = !DILocation(line: 56, column: 12, scope: !837)
!841 = !DILocation(line: 54, column: 11, scope: !837)
!842 = !DILocation(line: 57, column: 8, scope: !843)
!843 = distinct !DILexicalBlock(scope: !837, file: !3, line: 57, column: 8)
!844 = !DILocation(line: 57, column: 8, scope: !837)
!845 = !DILocation(line: 58, column: 9, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !3, line: 58, column: 9)
!847 = distinct !DILexicalBlock(scope: !843, file: !3, line: 57, column: 30)
!848 = !DILocation(line: 58, column: 16, scope: !846)
!849 = !DILocation(line: 58, column: 9, scope: !847)
!850 = !DILocation(line: 59, column: 13, scope: !851)
!851 = distinct !DILexicalBlock(scope: !846, file: !3, line: 58, column: 32)
!852 = !DILocation(line: 60, column: 5, scope: !851)
!853 = !DILocation(line: 61, column: 5, scope: !847)
!854 = !DILocation(line: 64, column: 16, scope: !837)
!855 = !DILocation(line: 64, column: 27, scope: !837)
!856 = !DILocation(line: 64, column: 14, scope: !837)
!857 = distinct !{!857, !834, !858}
!858 = !DILocation(line: 65, column: 3, scope: !831)
!859 = !DILocation(line: 67, column: 20, scope: !831)
!860 = !DILocation(line: 67, column: 36, scope: !831)
!861 = !DILocation(line: 67, column: 18, scope: !831)
!862 = distinct !{!862, !828, !863}
!863 = !DILocation(line: 68, column: 2, scope: !43)
!864 = !DILabel(scope: !43, name: "unlock_and_exit", file: !3, line: 70)
!865 = !DILocation(line: 70, column: 1, scope: !43)
!866 = !DILocation(line: 71, column: 23, scope: !43)
!867 = !DILocation(line: 71, column: 42, scope: !43)
!868 = !DILocation(line: 71, column: 2, scope: !43)
!869 = !DILocation(line: 72, column: 2, scope: !43)
!870 = distinct !DISubprogram(name: "acpi_ev_get_gpe_device", scope: !3, file: !3, line: 89, type: !49, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !810)
!871 = !DILocalVariable(name: "gpe_xrupt_info", arg: 1, scope: !870, file: !3, line: 89, type: !51)
!872 = !DILocation(line: 89, column: 52, scope: !870)
!873 = !DILocalVariable(name: "gpe_block", arg: 2, scope: !870, file: !3, line: 90, type: !57)
!874 = !DILocation(line: 90, column: 38, scope: !870)
!875 = !DILocalVariable(name: "context", arg: 3, scope: !870, file: !3, line: 90, type: !29)
!876 = !DILocation(line: 90, column: 55, scope: !870)
!877 = !DILocalVariable(name: "info", scope: !870, file: !3, line: 92, type: !878)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_device_info", file: !47, line: 512, size: 192, elements: !880)
!880 = !{!881, !882, !883, !884}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !879, file: !47, line: 513, baseType: !16, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "next_block_base_index", scope: !879, file: !47, line: 514, baseType: !16, size: 32, offset: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !879, file: !47, line: 515, baseType: !14, size: 32, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !879, file: !47, line: 516, baseType: !61, size: 64, offset: 128)
!885 = !DILocation(line: 92, column: 31, scope: !870)
!886 = !DILocation(line: 92, column: 38, scope: !870)
!887 = !DILocation(line: 96, column: 33, scope: !870)
!888 = !DILocation(line: 96, column: 44, scope: !870)
!889 = !DILocation(line: 96, column: 2, scope: !870)
!890 = !DILocation(line: 96, column: 8, scope: !870)
!891 = !DILocation(line: 96, column: 30, scope: !870)
!892 = !DILocation(line: 98, column: 6, scope: !893)
!893 = distinct !DILexicalBlock(scope: !870, file: !3, line: 98, column: 6)
!894 = !DILocation(line: 98, column: 12, scope: !893)
!895 = !DILocation(line: 98, column: 20, scope: !893)
!896 = !DILocation(line: 98, column: 26, scope: !893)
!897 = !DILocation(line: 98, column: 18, scope: !893)
!898 = !DILocation(line: 98, column: 6, scope: !870)
!899 = !DILocation(line: 103, column: 8, scope: !900)
!900 = distinct !DILexicalBlock(scope: !901, file: !3, line: 103, column: 7)
!901 = distinct !DILexicalBlock(scope: !893, file: !3, line: 98, column: 49)
!902 = !DILocation(line: 103, column: 19, scope: !900)
!903 = !DILocation(line: 103, column: 26, scope: !900)
!904 = !DILocation(line: 103, column: 7, scope: !900)
!905 = !DILocation(line: 103, column: 31, scope: !900)
!906 = !DILocation(line: 103, column: 7, scope: !901)
!907 = !DILocation(line: 104, column: 23, scope: !908)
!908 = distinct !DILexicalBlock(scope: !900, file: !3, line: 103, column: 52)
!909 = !DILocation(line: 104, column: 34, scope: !908)
!910 = !DILocation(line: 104, column: 4, scope: !908)
!911 = !DILocation(line: 104, column: 10, scope: !908)
!912 = !DILocation(line: 104, column: 21, scope: !908)
!913 = !DILocation(line: 105, column: 3, scope: !908)
!914 = !DILocation(line: 107, column: 3, scope: !901)
!915 = !DILocation(line: 107, column: 9, scope: !901)
!916 = !DILocation(line: 107, column: 16, scope: !901)
!917 = !DILocation(line: 108, column: 3, scope: !901)
!918 = !DILocation(line: 111, column: 2, scope: !870)
!919 = !DILocation(line: 112, column: 1, scope: !870)
!920 = distinct !DISubprogram(name: "acpi_ev_get_gpe_xrupt_block", scope: !3, file: !3, line: 131, type: !921, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !810)
!921 = !DISubroutineType(types: !922)
!922 = !{!14, !16, !923}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!924 = !DILocalVariable(name: "interrupt_number", arg: 1, scope: !920, file: !3, line: 131, type: !16)
!925 = !DILocation(line: 131, column: 33, scope: !920)
!926 = !DILocalVariable(name: "gpe_xrupt_block", arg: 2, scope: !920, file: !3, line: 132, type: !923)
!927 = !DILocation(line: 132, column: 37, scope: !920)
!928 = !DILocalVariable(name: "next_gpe_xrupt", scope: !920, file: !3, line: 134, type: !51)
!929 = !DILocation(line: 134, column: 30, scope: !920)
!930 = !DILocalVariable(name: "gpe_xrupt", scope: !920, file: !3, line: 135, type: !51)
!931 = !DILocation(line: 135, column: 30, scope: !920)
!932 = !DILocalVariable(name: "status", scope: !920, file: !3, line: 136, type: !14)
!933 = !DILocation(line: 136, column: 14, scope: !920)
!934 = !DILocalVariable(name: "flags", scope: !920, file: !3, line: 137, type: !30)
!935 = !DILocation(line: 137, column: 17, scope: !920)
!936 = !DILocation(line: 143, column: 19, scope: !920)
!937 = !DILocation(line: 143, column: 17, scope: !920)
!938 = !DILocation(line: 144, column: 2, scope: !920)
!939 = !DILocation(line: 144, column: 9, scope: !920)
!940 = !DILocation(line: 145, column: 7, scope: !941)
!941 = distinct !DILexicalBlock(scope: !942, file: !3, line: 145, column: 7)
!942 = distinct !DILexicalBlock(scope: !920, file: !3, line: 144, column: 25)
!943 = !DILocation(line: 145, column: 23, scope: !941)
!944 = !DILocation(line: 145, column: 43, scope: !941)
!945 = !DILocation(line: 145, column: 40, scope: !941)
!946 = !DILocation(line: 145, column: 7, scope: !942)
!947 = !DILocation(line: 146, column: 23, scope: !948)
!948 = distinct !DILexicalBlock(scope: !941, file: !3, line: 145, column: 61)
!949 = !DILocation(line: 146, column: 5, scope: !948)
!950 = !DILocation(line: 146, column: 21, scope: !948)
!951 = !DILocation(line: 147, column: 4, scope: !948)
!952 = !DILocation(line: 150, column: 20, scope: !942)
!953 = !DILocation(line: 150, column: 36, scope: !942)
!954 = !DILocation(line: 150, column: 18, scope: !942)
!955 = distinct !{!955, !938, !956}
!956 = !DILocation(line: 151, column: 2, scope: !920)
!957 = !DILocation(line: 155, column: 14, scope: !920)
!958 = !DILocation(line: 155, column: 12, scope: !920)
!959 = !DILocation(line: 156, column: 7, scope: !960)
!960 = distinct !DILexicalBlock(scope: !920, file: !3, line: 156, column: 6)
!961 = !DILocation(line: 156, column: 6, scope: !920)
!962 = !DILocation(line: 157, column: 3, scope: !963)
!963 = distinct !DILexicalBlock(scope: !960, file: !3, line: 156, column: 18)
!964 = !DILocation(line: 160, column: 32, scope: !920)
!965 = !DILocation(line: 160, column: 2, scope: !920)
!966 = !DILocation(line: 160, column: 13, scope: !920)
!967 = !DILocation(line: 160, column: 30, scope: !920)
!968 = !DILocation(line: 164, column: 31, scope: !920)
!969 = !DILocation(line: 164, column: 10, scope: !920)
!970 = !DILocation(line: 164, column: 8, scope: !920)
!971 = !DILocation(line: 165, column: 6, scope: !972)
!972 = distinct !DILexicalBlock(scope: !920, file: !3, line: 165, column: 6)
!973 = !DILocation(line: 165, column: 6, scope: !920)
!974 = !DILocation(line: 166, column: 20, scope: !975)
!975 = distinct !DILexicalBlock(scope: !972, file: !3, line: 165, column: 36)
!976 = !DILocation(line: 166, column: 18, scope: !975)
!977 = !DILocation(line: 167, column: 3, scope: !975)
!978 = !DILocation(line: 167, column: 10, scope: !975)
!979 = !DILocation(line: 167, column: 26, scope: !975)
!980 = !DILocation(line: 168, column: 21, scope: !981)
!981 = distinct !DILexicalBlock(scope: !975, file: !3, line: 167, column: 32)
!982 = !DILocation(line: 168, column: 37, scope: !981)
!983 = !DILocation(line: 168, column: 19, scope: !981)
!984 = distinct !{!984, !977, !985}
!985 = !DILocation(line: 169, column: 3, scope: !975)
!986 = !DILocation(line: 171, column: 26, scope: !975)
!987 = !DILocation(line: 171, column: 3, scope: !975)
!988 = !DILocation(line: 171, column: 19, scope: !975)
!989 = !DILocation(line: 171, column: 24, scope: !975)
!990 = !DILocation(line: 172, column: 25, scope: !975)
!991 = !DILocation(line: 172, column: 3, scope: !975)
!992 = !DILocation(line: 172, column: 14, scope: !975)
!993 = !DILocation(line: 172, column: 23, scope: !975)
!994 = !DILocation(line: 173, column: 2, scope: !975)
!995 = !DILocation(line: 174, column: 34, scope: !996)
!996 = distinct !DILexicalBlock(scope: !972, file: !3, line: 173, column: 9)
!997 = !DILocation(line: 174, column: 32, scope: !996)
!998 = !DILocation(line: 177, column: 23, scope: !920)
!999 = !DILocation(line: 177, column: 42, scope: !920)
!1000 = !DILocation(line: 177, column: 2, scope: !920)
!1001 = !DILocation(line: 181, column: 6, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !920, file: !3, line: 181, column: 6)
!1003 = !DILocation(line: 181, column: 40, scope: !1002)
!1004 = !DILocation(line: 181, column: 26, scope: !1002)
!1005 = !DILocation(line: 181, column: 23, scope: !1002)
!1006 = !DILocation(line: 181, column: 6, scope: !920)
!1007 = !DILocation(line: 182, column: 46, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 181, column: 55)
!1009 = !DILocation(line: 184, column: 11, scope: !1008)
!1010 = !DILocation(line: 182, column: 12, scope: !1008)
!1011 = !DILocation(line: 182, column: 10, scope: !1008)
!1012 = !DILocation(line: 185, column: 7, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 185, column: 7)
!1014 = !DILocation(line: 185, column: 7, scope: !1008)
!1015 = !DILocation(line: 186, column: 4, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 185, column: 29)
!1017 = !DILocation(line: 189, column: 4, scope: !1016)
!1018 = !DILocation(line: 191, column: 2, scope: !1008)
!1019 = !DILocation(line: 193, column: 21, scope: !920)
!1020 = !DILocation(line: 193, column: 3, scope: !920)
!1021 = !DILocation(line: 193, column: 19, scope: !920)
!1022 = !DILocation(line: 194, column: 2, scope: !920)
!1023 = !DILocation(line: 195, column: 1, scope: !920)
!1024 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1025, file: !1025, line: 55, type: !1026, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1025 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!29, !20}
!1028 = !DILocalVariable(name: "flags", arg: 1, scope: !1029, file: !1030, line: 162, type: !30)
!1029 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1030, file: !1030, line: 162, type: !1031, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1030 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!1033, !30}
!1033 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1034 = !DILocation(line: 162, column: 67, scope: !1029, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 57, column: 23, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !1025, line: 57, column: 23)
!1037 = distinct !DILexicalBlock(scope: !1024, file: !1025, line: 57, column: 23)
!1038 = !DILocalVariable(name: "size", arg: 1, scope: !1024, file: !1025, line: 55, type: !20)
!1039 = !DILocation(line: 55, column: 55, scope: !1024)
!1040 = !DILocation(line: 57, column: 17, scope: !1024)
!1041 = !DILocalVariable(name: "_flags", scope: !1037, file: !1025, line: 57, type: !30)
!1042 = !DILocation(line: 57, column: 23, scope: !1037)
!1043 = !DILocalVariable(name: "__dummy", scope: !1044, file: !1025, line: 57, type: !30)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !1025, line: 57, column: 23)
!1045 = distinct !DILexicalBlock(scope: !1037, file: !1025, line: 57, column: 23)
!1046 = !DILocation(line: 57, column: 23, scope: !1044)
!1047 = !DILocalVariable(name: "__dummy2", scope: !1044, file: !1025, line: 57, type: !30)
!1048 = !DILocation(line: 57, column: 23, scope: !1045)
!1049 = !DILocalVariable(name: "__dummy", scope: !1050, file: !1025, line: 57, type: !30)
!1050 = distinct !DILexicalBlock(scope: !1036, file: !1025, line: 57, column: 23)
!1051 = !DILocation(line: 57, column: 23, scope: !1050)
!1052 = !DILocalVariable(name: "__dummy2", scope: !1050, file: !1025, line: 57, type: !30)
!1053 = !DILocation(line: 57, column: 23, scope: !1036)
!1054 = !DILocation(line: 164, column: 11, scope: !1029, inlinedAt: !1035)
!1055 = !DILocation(line: 164, column: 17, scope: !1029, inlinedAt: !1035)
!1056 = !DILocation(line: 164, column: 9, scope: !1029, inlinedAt: !1035)
!1057 = !DILocation(line: 57, column: 23, scope: !1024)
!1058 = !DILocation(line: 57, column: 9, scope: !1024)
!1059 = !DILocation(line: 57, column: 2, scope: !1024)
!1060 = distinct !DISubprogram(name: "acpi_ev_delete_gpe_xrupt", scope: !3, file: !3, line: 210, type: !1061, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!14, !51}
!1063 = !DILocalVariable(name: "gpe_xrupt", arg: 1, scope: !1060, file: !3, line: 210, type: !51)
!1064 = !DILocation(line: 210, column: 66, scope: !1060)
!1065 = !DILocalVariable(name: "status", scope: !1060, file: !3, line: 212, type: !14)
!1066 = !DILocation(line: 212, column: 14, scope: !1060)
!1067 = !DILocalVariable(name: "flags", scope: !1060, file: !3, line: 213, type: !30)
!1068 = !DILocation(line: 213, column: 17, scope: !1060)
!1069 = !DILocation(line: 219, column: 6, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 219, column: 6)
!1071 = !DILocation(line: 219, column: 17, scope: !1070)
!1072 = !DILocation(line: 219, column: 51, scope: !1070)
!1073 = !DILocation(line: 219, column: 37, scope: !1070)
!1074 = !DILocation(line: 219, column: 34, scope: !1070)
!1075 = !DILocation(line: 219, column: 6, scope: !1060)
!1076 = !DILocation(line: 220, column: 3, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 219, column: 66)
!1078 = !DILocation(line: 220, column: 14, scope: !1077)
!1079 = !DILocation(line: 220, column: 34, scope: !1077)
!1080 = !DILocation(line: 221, column: 3, scope: !1077)
!1081 = !DILocation(line: 227, column: 39, scope: !1060)
!1082 = !DILocation(line: 227, column: 50, scope: !1060)
!1083 = !DILocation(line: 227, column: 6, scope: !1060)
!1084 = !DILocation(line: 226, column: 9, scope: !1060)
!1085 = !DILocation(line: 229, column: 6, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 229, column: 6)
!1087 = !DILocation(line: 229, column: 6, scope: !1060)
!1088 = !DILocation(line: 230, column: 3, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 229, column: 28)
!1090 = !DILocation(line: 235, column: 31, scope: !1060)
!1091 = !DILocation(line: 235, column: 10, scope: !1060)
!1092 = !DILocation(line: 235, column: 8, scope: !1060)
!1093 = !DILocation(line: 236, column: 6, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 236, column: 6)
!1095 = !DILocation(line: 236, column: 17, scope: !1094)
!1096 = !DILocation(line: 236, column: 6, scope: !1060)
!1097 = !DILocation(line: 237, column: 31, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 236, column: 27)
!1099 = !DILocation(line: 237, column: 42, scope: !1098)
!1100 = !DILocation(line: 237, column: 3, scope: !1098)
!1101 = !DILocation(line: 237, column: 14, scope: !1098)
!1102 = !DILocation(line: 237, column: 24, scope: !1098)
!1103 = !DILocation(line: 237, column: 29, scope: !1098)
!1104 = !DILocation(line: 238, column: 2, scope: !1098)
!1105 = !DILocation(line: 241, column: 34, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 238, column: 9)
!1107 = !DILocation(line: 241, column: 45, scope: !1106)
!1108 = !DILocation(line: 241, column: 32, scope: !1106)
!1109 = !DILocation(line: 244, column: 6, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 244, column: 6)
!1111 = !DILocation(line: 244, column: 17, scope: !1110)
!1112 = !DILocation(line: 244, column: 6, scope: !1060)
!1113 = !DILocation(line: 245, column: 31, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 244, column: 23)
!1115 = !DILocation(line: 245, column: 42, scope: !1114)
!1116 = !DILocation(line: 245, column: 3, scope: !1114)
!1117 = !DILocation(line: 245, column: 14, scope: !1114)
!1118 = !DILocation(line: 245, column: 20, scope: !1114)
!1119 = !DILocation(line: 245, column: 29, scope: !1114)
!1120 = !DILocation(line: 246, column: 2, scope: !1114)
!1121 = !DILocation(line: 247, column: 23, scope: !1060)
!1122 = !DILocation(line: 247, column: 42, scope: !1060)
!1123 = !DILocation(line: 247, column: 2, scope: !1060)
!1124 = !DILocation(line: 251, column: 2, scope: !1060)
!1125 = !DILocation(line: 252, column: 2, scope: !1060)
!1126 = !DILocation(line: 253, column: 1, scope: !1060)
!1127 = distinct !DISubprogram(name: "acpi_os_free", scope: !1025, file: !1025, line: 60, type: !1128, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{null, !29}
!1130 = !DILocalVariable(name: "memory", arg: 1, scope: !1127, file: !1025, line: 60, type: !29)
!1131 = !DILocation(line: 60, column: 39, scope: !1127)
!1132 = !DILocation(line: 62, column: 8, scope: !1127)
!1133 = !DILocation(line: 62, column: 2, scope: !1127)
!1134 = !DILocation(line: 63, column: 1, scope: !1127)
!1135 = distinct !DISubprogram(name: "acpi_ev_delete_gpe_handlers", scope: !3, file: !3, line: 270, type: !49, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1136 = !DILocalVariable(name: "gpe_xrupt_info", arg: 1, scope: !1135, file: !3, line: 270, type: !51)
!1137 = !DILocation(line: 270, column: 57, scope: !1135)
!1138 = !DILocalVariable(name: "gpe_block", arg: 2, scope: !1135, file: !3, line: 271, type: !57)
!1139 = !DILocation(line: 271, column: 36, scope: !1135)
!1140 = !DILocalVariable(name: "context", arg: 3, scope: !1135, file: !3, line: 272, type: !29)
!1141 = !DILocation(line: 272, column: 14, scope: !1135)
!1142 = !DILocalVariable(name: "gpe_event_info", scope: !1135, file: !3, line: 274, type: !772)
!1143 = !DILocation(line: 274, column: 30, scope: !1135)
!1144 = !DILocalVariable(name: "notify", scope: !1135, file: !3, line: 275, type: !793)
!1145 = !DILocation(line: 275, column: 31, scope: !1135)
!1146 = !DILocalVariable(name: "next", scope: !1135, file: !3, line: 276, type: !793)
!1147 = !DILocation(line: 276, column: 31, scope: !1135)
!1148 = !DILocalVariable(name: "i", scope: !1135, file: !3, line: 277, type: !16)
!1149 = !DILocation(line: 277, column: 6, scope: !1135)
!1150 = !DILocalVariable(name: "j", scope: !1135, file: !3, line: 278, type: !16)
!1151 = !DILocation(line: 278, column: 6, scope: !1135)
!1152 = !DILocation(line: 284, column: 9, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 284, column: 2)
!1154 = !DILocation(line: 284, column: 7, scope: !1153)
!1155 = !DILocation(line: 284, column: 14, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 284, column: 2)
!1157 = !DILocation(line: 284, column: 18, scope: !1156)
!1158 = !DILocation(line: 284, column: 29, scope: !1156)
!1159 = !DILocation(line: 284, column: 16, scope: !1156)
!1160 = !DILocation(line: 284, column: 2, scope: !1153)
!1161 = !DILocation(line: 288, column: 10, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 288, column: 3)
!1163 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 284, column: 50)
!1164 = !DILocation(line: 288, column: 8, scope: !1162)
!1165 = !DILocation(line: 288, column: 15, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 288, column: 3)
!1167 = !DILocation(line: 288, column: 17, scope: !1166)
!1168 = !DILocation(line: 288, column: 3, scope: !1162)
!1169 = !DILocation(line: 289, column: 22, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 288, column: 49)
!1171 = !DILocation(line: 289, column: 33, scope: !1170)
!1172 = !DILocation(line: 289, column: 56, scope: !1170)
!1173 = !DILocation(line: 289, column: 45, scope: !1170)
!1174 = !DILocation(line: 289, column: 58, scope: !1170)
!1175 = !DILocation(line: 291, column: 11, scope: !1170)
!1176 = !DILocation(line: 291, column: 9, scope: !1170)
!1177 = !DILocation(line: 289, column: 19, scope: !1170)
!1178 = !DILocation(line: 293, column: 9, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 293, column: 8)
!1180 = !DILocation(line: 293, column: 55, scope: !1179)
!1181 = !DILocation(line: 294, column: 36, scope: !1179)
!1182 = !DILocation(line: 295, column: 9, scope: !1179)
!1183 = !DILocation(line: 295, column: 55, scope: !1179)
!1184 = !DILocation(line: 293, column: 8, scope: !1170)
!1185 = !DILocation(line: 300, column: 5, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 296, column: 41)
!1187 = !DILocation(line: 301, column: 5, scope: !1186)
!1188 = !DILocation(line: 301, column: 21, scope: !1186)
!1189 = !DILocation(line: 301, column: 30, scope: !1186)
!1190 = !DILocation(line: 301, column: 38, scope: !1186)
!1191 = !DILocation(line: 302, column: 5, scope: !1186)
!1192 = !DILocation(line: 302, column: 21, scope: !1186)
!1193 = !DILocation(line: 302, column: 27, scope: !1186)
!1194 = !DILocation(line: 304, column: 4, scope: !1186)
!1195 = !DILocation(line: 304, column: 15, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 304, column: 15)
!1197 = !DILocation(line: 305, column: 8, scope: !1196)
!1198 = !DILocation(line: 304, column: 15, scope: !1179)
!1199 = !DILocation(line: 309, column: 14, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 305, column: 37)
!1201 = !DILocation(line: 309, column: 30, scope: !1200)
!1202 = !DILocation(line: 309, column: 39, scope: !1200)
!1203 = !DILocation(line: 309, column: 12, scope: !1200)
!1204 = !DILocation(line: 310, column: 5, scope: !1200)
!1205 = !DILocation(line: 310, column: 12, scope: !1200)
!1206 = !DILocation(line: 311, column: 13, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 310, column: 20)
!1208 = !DILocation(line: 311, column: 21, scope: !1207)
!1209 = !DILocation(line: 311, column: 11, scope: !1207)
!1210 = !DILocation(line: 312, column: 6, scope: !1207)
!1211 = !DILocation(line: 313, column: 15, scope: !1207)
!1212 = !DILocation(line: 313, column: 13, scope: !1207)
!1213 = distinct !{!1213, !1204, !1214}
!1214 = !DILocation(line: 314, column: 5, scope: !1200)
!1215 = !DILocation(line: 316, column: 5, scope: !1200)
!1216 = !DILocation(line: 316, column: 21, scope: !1200)
!1217 = !DILocation(line: 316, column: 30, scope: !1200)
!1218 = !DILocation(line: 316, column: 42, scope: !1200)
!1219 = !DILocation(line: 317, column: 5, scope: !1200)
!1220 = !DILocation(line: 317, column: 21, scope: !1200)
!1221 = !DILocation(line: 317, column: 27, scope: !1200)
!1222 = !DILocation(line: 319, column: 4, scope: !1200)
!1223 = !DILocation(line: 320, column: 3, scope: !1170)
!1224 = !DILocation(line: 288, column: 45, scope: !1166)
!1225 = !DILocation(line: 288, column: 3, scope: !1166)
!1226 = distinct !{!1226, !1168, !1227}
!1227 = !DILocation(line: 320, column: 3, scope: !1162)
!1228 = !DILocation(line: 321, column: 2, scope: !1163)
!1229 = !DILocation(line: 284, column: 46, scope: !1156)
!1230 = !DILocation(line: 284, column: 2, scope: !1156)
!1231 = distinct !{!1231, !1160, !1232}
!1232 = !DILocation(line: 321, column: 2, scope: !1153)
!1233 = !DILocation(line: 323, column: 2, scope: !1135)
!1234 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !1235, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!29, !1237, !27}
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 55, baseType: !1238)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1239, line: 72, baseType: !1240)
!1239 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1239, line: 16, baseType: !30)
!1241 = !DILocalVariable(name: "s", arg: 1, scope: !1242, file: !6, line: 445, type: !1245)
!1242 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !1243, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!29, !1245, !27, !1237}
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1247, line: 117, flags: DIFlagFwdDecl)
!1247 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1248 = !DILocation(line: 445, column: 72, scope: !1242, inlinedAt: !1249)
!1249 = distinct !DILocation(line: 552, column: 10, scope: !1250, inlinedAt: !1253)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !6, line: 540, column: 34)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !6, line: 540, column: 6)
!1252 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !1235, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1253 = distinct !DILocation(line: 664, column: 9, scope: !1234)
!1254 = !DILocalVariable(name: "flags", arg: 2, scope: !1242, file: !6, line: 446, type: !27)
!1255 = !DILocation(line: 446, column: 9, scope: !1242, inlinedAt: !1249)
!1256 = !DILocalVariable(name: "size", arg: 3, scope: !1242, file: !6, line: 446, type: !1237)
!1257 = !DILocation(line: 446, column: 23, scope: !1242, inlinedAt: !1249)
!1258 = !DILocalVariable(name: "ret", scope: !1242, file: !6, line: 448, type: !29)
!1259 = !DILocation(line: 448, column: 8, scope: !1242, inlinedAt: !1249)
!1260 = !DILocalVariable(name: "flags", arg: 1, scope: !1261, file: !6, line: 318, type: !27)
!1261 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !1262, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!5, !27}
!1264 = !DILocation(line: 318, column: 67, scope: !1261, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 553, column: 20, scope: !1250, inlinedAt: !1253)
!1266 = !DILocalVariable(name: "size", arg: 1, scope: !1267, file: !6, line: 346, type: !1237)
!1267 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !1268, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!7, !1237}
!1270 = !DILocation(line: 346, column: 58, scope: !1267, inlinedAt: !1271)
!1271 = distinct !DILocation(line: 547, column: 11, scope: !1250, inlinedAt: !1253)
!1272 = !DILocalVariable(name: "size", arg: 1, scope: !1273, file: !6, line: 472, type: !1237)
!1273 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !1274, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!29, !1237, !27, !7}
!1276 = !DILocation(line: 472, column: 28, scope: !1273, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 481, column: 9, scope: !1278, inlinedAt: !1279)
!1278 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !1235, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1279 = distinct !DILocation(line: 545, column: 11, scope: !1280, inlinedAt: !1253)
!1280 = distinct !DILexicalBlock(scope: !1250, file: !6, line: 544, column: 7)
!1281 = !DILocalVariable(name: "flags", arg: 2, scope: !1273, file: !6, line: 472, type: !27)
!1282 = !DILocation(line: 472, column: 40, scope: !1273, inlinedAt: !1277)
!1283 = !DILocalVariable(name: "order", arg: 3, scope: !1273, file: !6, line: 472, type: !7)
!1284 = !DILocation(line: 472, column: 60, scope: !1273, inlinedAt: !1277)
!1285 = !DILocalVariable(name: "size", arg: 1, scope: !1278, file: !6, line: 478, type: !1237)
!1286 = !DILocation(line: 478, column: 51, scope: !1278, inlinedAt: !1279)
!1287 = !DILocalVariable(name: "flags", arg: 2, scope: !1278, file: !6, line: 478, type: !27)
!1288 = !DILocation(line: 478, column: 63, scope: !1278, inlinedAt: !1279)
!1289 = !DILocalVariable(name: "order", scope: !1278, file: !6, line: 480, type: !7)
!1290 = !DILocation(line: 480, column: 15, scope: !1278, inlinedAt: !1279)
!1291 = !DILocalVariable(name: "size", arg: 1, scope: !1252, file: !6, line: 538, type: !1237)
!1292 = !DILocation(line: 538, column: 45, scope: !1252, inlinedAt: !1253)
!1293 = !DILocalVariable(name: "flags", arg: 2, scope: !1252, file: !6, line: 538, type: !27)
!1294 = !DILocation(line: 538, column: 57, scope: !1252, inlinedAt: !1253)
!1295 = !DILocalVariable(name: "index", scope: !1250, file: !6, line: 542, type: !7)
!1296 = !DILocation(line: 542, column: 16, scope: !1250, inlinedAt: !1253)
!1297 = !DILocalVariable(name: "size", arg: 1, scope: !1234, file: !6, line: 662, type: !1237)
!1298 = !DILocation(line: 662, column: 36, scope: !1234)
!1299 = !DILocalVariable(name: "flags", arg: 2, scope: !1234, file: !6, line: 662, type: !27)
!1300 = !DILocation(line: 662, column: 48, scope: !1234)
!1301 = !DILocation(line: 664, column: 17, scope: !1234)
!1302 = !DILocation(line: 664, column: 23, scope: !1234)
!1303 = !DILocation(line: 664, column: 29, scope: !1234)
!1304 = !DILocation(line: 540, column: 27, scope: !1251, inlinedAt: !1253)
!1305 = !DILocation(line: 540, column: 6, scope: !1251, inlinedAt: !1253)
!1306 = !DILocation(line: 540, column: 6, scope: !1252, inlinedAt: !1253)
!1307 = !DILocation(line: 544, column: 7, scope: !1280, inlinedAt: !1253)
!1308 = !DILocation(line: 544, column: 12, scope: !1280, inlinedAt: !1253)
!1309 = !DILocation(line: 544, column: 7, scope: !1250, inlinedAt: !1253)
!1310 = !DILocation(line: 545, column: 25, scope: !1280, inlinedAt: !1253)
!1311 = !DILocation(line: 545, column: 31, scope: !1280, inlinedAt: !1253)
!1312 = !DILocation(line: 480, column: 33, scope: !1278, inlinedAt: !1279)
!1313 = !DILocation(line: 480, column: 23, scope: !1278, inlinedAt: !1279)
!1314 = !DILocation(line: 481, column: 29, scope: !1278, inlinedAt: !1279)
!1315 = !DILocation(line: 481, column: 35, scope: !1278, inlinedAt: !1279)
!1316 = !DILocation(line: 481, column: 42, scope: !1278, inlinedAt: !1279)
!1317 = !DILocation(line: 474, column: 23, scope: !1273, inlinedAt: !1277)
!1318 = !DILocation(line: 474, column: 29, scope: !1273, inlinedAt: !1277)
!1319 = !DILocation(line: 474, column: 36, scope: !1273, inlinedAt: !1277)
!1320 = !DILocation(line: 474, column: 9, scope: !1273, inlinedAt: !1277)
!1321 = !DILocation(line: 545, column: 4, scope: !1280, inlinedAt: !1253)
!1322 = !DILocation(line: 547, column: 25, scope: !1250, inlinedAt: !1253)
!1323 = !DILocation(line: 348, column: 7, scope: !1324, inlinedAt: !1271)
!1324 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 348, column: 6)
!1325 = !DILocation(line: 348, column: 6, scope: !1267, inlinedAt: !1271)
!1326 = !DILocation(line: 349, column: 3, scope: !1324, inlinedAt: !1271)
!1327 = !DILocation(line: 351, column: 6, scope: !1328, inlinedAt: !1271)
!1328 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 351, column: 6)
!1329 = !DILocation(line: 351, column: 11, scope: !1328, inlinedAt: !1271)
!1330 = !DILocation(line: 351, column: 6, scope: !1267, inlinedAt: !1271)
!1331 = !DILocation(line: 352, column: 3, scope: !1328, inlinedAt: !1271)
!1332 = !DILocation(line: 354, column: 32, scope: !1333, inlinedAt: !1271)
!1333 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 354, column: 6)
!1334 = !DILocation(line: 354, column: 37, scope: !1333, inlinedAt: !1271)
!1335 = !DILocation(line: 354, column: 42, scope: !1333, inlinedAt: !1271)
!1336 = !DILocation(line: 354, column: 45, scope: !1333, inlinedAt: !1271)
!1337 = !DILocation(line: 354, column: 50, scope: !1333, inlinedAt: !1271)
!1338 = !DILocation(line: 354, column: 6, scope: !1267, inlinedAt: !1271)
!1339 = !DILocation(line: 355, column: 3, scope: !1333, inlinedAt: !1271)
!1340 = !DILocation(line: 356, column: 32, scope: !1341, inlinedAt: !1271)
!1341 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 356, column: 6)
!1342 = !DILocation(line: 356, column: 37, scope: !1341, inlinedAt: !1271)
!1343 = !DILocation(line: 356, column: 43, scope: !1341, inlinedAt: !1271)
!1344 = !DILocation(line: 356, column: 46, scope: !1341, inlinedAt: !1271)
!1345 = !DILocation(line: 356, column: 51, scope: !1341, inlinedAt: !1271)
!1346 = !DILocation(line: 356, column: 6, scope: !1267, inlinedAt: !1271)
!1347 = !DILocation(line: 357, column: 3, scope: !1341, inlinedAt: !1271)
!1348 = !DILocation(line: 358, column: 6, scope: !1349, inlinedAt: !1271)
!1349 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 358, column: 6)
!1350 = !DILocation(line: 358, column: 11, scope: !1349, inlinedAt: !1271)
!1351 = !DILocation(line: 358, column: 6, scope: !1267, inlinedAt: !1271)
!1352 = !DILocation(line: 358, column: 26, scope: !1349, inlinedAt: !1271)
!1353 = !DILocation(line: 359, column: 6, scope: !1354, inlinedAt: !1271)
!1354 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 359, column: 6)
!1355 = !DILocation(line: 359, column: 11, scope: !1354, inlinedAt: !1271)
!1356 = !DILocation(line: 359, column: 6, scope: !1267, inlinedAt: !1271)
!1357 = !DILocation(line: 359, column: 26, scope: !1354, inlinedAt: !1271)
!1358 = !DILocation(line: 360, column: 6, scope: !1359, inlinedAt: !1271)
!1359 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 360, column: 6)
!1360 = !DILocation(line: 360, column: 11, scope: !1359, inlinedAt: !1271)
!1361 = !DILocation(line: 360, column: 6, scope: !1267, inlinedAt: !1271)
!1362 = !DILocation(line: 360, column: 26, scope: !1359, inlinedAt: !1271)
!1363 = !DILocation(line: 361, column: 6, scope: !1364, inlinedAt: !1271)
!1364 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 361, column: 6)
!1365 = !DILocation(line: 361, column: 11, scope: !1364, inlinedAt: !1271)
!1366 = !DILocation(line: 361, column: 6, scope: !1267, inlinedAt: !1271)
!1367 = !DILocation(line: 361, column: 26, scope: !1364, inlinedAt: !1271)
!1368 = !DILocation(line: 362, column: 6, scope: !1369, inlinedAt: !1271)
!1369 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 362, column: 6)
!1370 = !DILocation(line: 362, column: 11, scope: !1369, inlinedAt: !1271)
!1371 = !DILocation(line: 362, column: 6, scope: !1267, inlinedAt: !1271)
!1372 = !DILocation(line: 362, column: 26, scope: !1369, inlinedAt: !1271)
!1373 = !DILocation(line: 363, column: 6, scope: !1374, inlinedAt: !1271)
!1374 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 363, column: 6)
!1375 = !DILocation(line: 363, column: 11, scope: !1374, inlinedAt: !1271)
!1376 = !DILocation(line: 363, column: 6, scope: !1267, inlinedAt: !1271)
!1377 = !DILocation(line: 363, column: 26, scope: !1374, inlinedAt: !1271)
!1378 = !DILocation(line: 364, column: 6, scope: !1379, inlinedAt: !1271)
!1379 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 364, column: 6)
!1380 = !DILocation(line: 364, column: 11, scope: !1379, inlinedAt: !1271)
!1381 = !DILocation(line: 364, column: 6, scope: !1267, inlinedAt: !1271)
!1382 = !DILocation(line: 364, column: 26, scope: !1379, inlinedAt: !1271)
!1383 = !DILocation(line: 365, column: 6, scope: !1384, inlinedAt: !1271)
!1384 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 365, column: 6)
!1385 = !DILocation(line: 365, column: 11, scope: !1384, inlinedAt: !1271)
!1386 = !DILocation(line: 365, column: 6, scope: !1267, inlinedAt: !1271)
!1387 = !DILocation(line: 365, column: 26, scope: !1384, inlinedAt: !1271)
!1388 = !DILocation(line: 366, column: 6, scope: !1389, inlinedAt: !1271)
!1389 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 366, column: 6)
!1390 = !DILocation(line: 366, column: 11, scope: !1389, inlinedAt: !1271)
!1391 = !DILocation(line: 366, column: 6, scope: !1267, inlinedAt: !1271)
!1392 = !DILocation(line: 366, column: 26, scope: !1389, inlinedAt: !1271)
!1393 = !DILocation(line: 367, column: 6, scope: !1394, inlinedAt: !1271)
!1394 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 367, column: 6)
!1395 = !DILocation(line: 367, column: 11, scope: !1394, inlinedAt: !1271)
!1396 = !DILocation(line: 367, column: 6, scope: !1267, inlinedAt: !1271)
!1397 = !DILocation(line: 367, column: 26, scope: !1394, inlinedAt: !1271)
!1398 = !DILocation(line: 368, column: 6, scope: !1399, inlinedAt: !1271)
!1399 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 368, column: 6)
!1400 = !DILocation(line: 368, column: 11, scope: !1399, inlinedAt: !1271)
!1401 = !DILocation(line: 368, column: 6, scope: !1267, inlinedAt: !1271)
!1402 = !DILocation(line: 368, column: 26, scope: !1399, inlinedAt: !1271)
!1403 = !DILocation(line: 369, column: 6, scope: !1404, inlinedAt: !1271)
!1404 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 369, column: 6)
!1405 = !DILocation(line: 369, column: 11, scope: !1404, inlinedAt: !1271)
!1406 = !DILocation(line: 369, column: 6, scope: !1267, inlinedAt: !1271)
!1407 = !DILocation(line: 369, column: 26, scope: !1404, inlinedAt: !1271)
!1408 = !DILocation(line: 370, column: 6, scope: !1409, inlinedAt: !1271)
!1409 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 370, column: 6)
!1410 = !DILocation(line: 370, column: 11, scope: !1409, inlinedAt: !1271)
!1411 = !DILocation(line: 370, column: 6, scope: !1267, inlinedAt: !1271)
!1412 = !DILocation(line: 370, column: 26, scope: !1409, inlinedAt: !1271)
!1413 = !DILocation(line: 371, column: 6, scope: !1414, inlinedAt: !1271)
!1414 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 371, column: 6)
!1415 = !DILocation(line: 371, column: 11, scope: !1414, inlinedAt: !1271)
!1416 = !DILocation(line: 371, column: 6, scope: !1267, inlinedAt: !1271)
!1417 = !DILocation(line: 371, column: 26, scope: !1414, inlinedAt: !1271)
!1418 = !DILocation(line: 372, column: 6, scope: !1419, inlinedAt: !1271)
!1419 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 372, column: 6)
!1420 = !DILocation(line: 372, column: 11, scope: !1419, inlinedAt: !1271)
!1421 = !DILocation(line: 372, column: 6, scope: !1267, inlinedAt: !1271)
!1422 = !DILocation(line: 372, column: 26, scope: !1419, inlinedAt: !1271)
!1423 = !DILocation(line: 373, column: 6, scope: !1424, inlinedAt: !1271)
!1424 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 373, column: 6)
!1425 = !DILocation(line: 373, column: 11, scope: !1424, inlinedAt: !1271)
!1426 = !DILocation(line: 373, column: 6, scope: !1267, inlinedAt: !1271)
!1427 = !DILocation(line: 373, column: 26, scope: !1424, inlinedAt: !1271)
!1428 = !DILocation(line: 374, column: 6, scope: !1429, inlinedAt: !1271)
!1429 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 374, column: 6)
!1430 = !DILocation(line: 374, column: 11, scope: !1429, inlinedAt: !1271)
!1431 = !DILocation(line: 374, column: 6, scope: !1267, inlinedAt: !1271)
!1432 = !DILocation(line: 374, column: 26, scope: !1429, inlinedAt: !1271)
!1433 = !DILocation(line: 375, column: 6, scope: !1434, inlinedAt: !1271)
!1434 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 375, column: 6)
!1435 = !DILocation(line: 375, column: 11, scope: !1434, inlinedAt: !1271)
!1436 = !DILocation(line: 375, column: 6, scope: !1267, inlinedAt: !1271)
!1437 = !DILocation(line: 375, column: 27, scope: !1434, inlinedAt: !1271)
!1438 = !DILocation(line: 376, column: 6, scope: !1439, inlinedAt: !1271)
!1439 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 376, column: 6)
!1440 = !DILocation(line: 376, column: 11, scope: !1439, inlinedAt: !1271)
!1441 = !DILocation(line: 376, column: 6, scope: !1267, inlinedAt: !1271)
!1442 = !DILocation(line: 376, column: 32, scope: !1439, inlinedAt: !1271)
!1443 = !DILocation(line: 377, column: 6, scope: !1444, inlinedAt: !1271)
!1444 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 377, column: 6)
!1445 = !DILocation(line: 377, column: 11, scope: !1444, inlinedAt: !1271)
!1446 = !DILocation(line: 377, column: 6, scope: !1267, inlinedAt: !1271)
!1447 = !DILocation(line: 377, column: 32, scope: !1444, inlinedAt: !1271)
!1448 = !DILocation(line: 378, column: 6, scope: !1449, inlinedAt: !1271)
!1449 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 378, column: 6)
!1450 = !DILocation(line: 378, column: 11, scope: !1449, inlinedAt: !1271)
!1451 = !DILocation(line: 378, column: 6, scope: !1267, inlinedAt: !1271)
!1452 = !DILocation(line: 378, column: 32, scope: !1449, inlinedAt: !1271)
!1453 = !DILocation(line: 379, column: 6, scope: !1454, inlinedAt: !1271)
!1454 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 379, column: 6)
!1455 = !DILocation(line: 379, column: 11, scope: !1454, inlinedAt: !1271)
!1456 = !DILocation(line: 379, column: 6, scope: !1267, inlinedAt: !1271)
!1457 = !DILocation(line: 379, column: 33, scope: !1454, inlinedAt: !1271)
!1458 = !DILocation(line: 380, column: 6, scope: !1459, inlinedAt: !1271)
!1459 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 380, column: 6)
!1460 = !DILocation(line: 380, column: 11, scope: !1459, inlinedAt: !1271)
!1461 = !DILocation(line: 380, column: 6, scope: !1267, inlinedAt: !1271)
!1462 = !DILocation(line: 380, column: 33, scope: !1459, inlinedAt: !1271)
!1463 = !DILocation(line: 381, column: 6, scope: !1464, inlinedAt: !1271)
!1464 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 381, column: 6)
!1465 = !DILocation(line: 381, column: 11, scope: !1464, inlinedAt: !1271)
!1466 = !DILocation(line: 381, column: 6, scope: !1267, inlinedAt: !1271)
!1467 = !DILocation(line: 381, column: 33, scope: !1464, inlinedAt: !1271)
!1468 = !DILocation(line: 382, column: 2, scope: !1469, inlinedAt: !1271)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 382, column: 2)
!1470 = distinct !DILexicalBlock(scope: !1267, file: !6, line: 382, column: 2)
!1471 = !{i32 -2144111129, i32 -2144111100, i32 -2144111054, i32 -2144110996, i32 -2144110942, i32 -2144110888, i32 -2144110833, i32 -2144110802}
!1472 = !DILocation(line: 382, column: 2, scope: !1473, inlinedAt: !1271)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 382, column: 2)
!1474 = distinct !DILexicalBlock(scope: !1470, file: !6, line: 382, column: 2)
!1475 = !{i32 -2144110359, i32 -2144110352, i32 -2144110298, i32 -2144110267, i32 -2144110237}
!1476 = !DILocation(line: 382, column: 2, scope: !1474, inlinedAt: !1271)
!1477 = !DILocation(line: 386, column: 1, scope: !1267, inlinedAt: !1271)
!1478 = !DILocation(line: 547, column: 9, scope: !1250, inlinedAt: !1253)
!1479 = !DILocation(line: 549, column: 8, scope: !1480, inlinedAt: !1253)
!1480 = distinct !DILexicalBlock(scope: !1250, file: !6, line: 549, column: 7)
!1481 = !DILocation(line: 549, column: 7, scope: !1250, inlinedAt: !1253)
!1482 = !DILocation(line: 550, column: 4, scope: !1480, inlinedAt: !1253)
!1483 = !DILocation(line: 553, column: 33, scope: !1250, inlinedAt: !1253)
!1484 = !DILocation(line: 325, column: 6, scope: !1485, inlinedAt: !1265)
!1485 = distinct !DILexicalBlock(scope: !1261, file: !6, line: 325, column: 6)
!1486 = !DILocation(line: 325, column: 6, scope: !1261, inlinedAt: !1265)
!1487 = !DILocation(line: 326, column: 3, scope: !1485, inlinedAt: !1265)
!1488 = !DILocation(line: 332, column: 9, scope: !1261, inlinedAt: !1265)
!1489 = !DILocation(line: 332, column: 15, scope: !1261, inlinedAt: !1265)
!1490 = !DILocation(line: 332, column: 2, scope: !1261, inlinedAt: !1265)
!1491 = !DILocation(line: 336, column: 1, scope: !1261, inlinedAt: !1265)
!1492 = !DILocation(line: 553, column: 5, scope: !1250, inlinedAt: !1253)
!1493 = !DILocation(line: 553, column: 41, scope: !1250, inlinedAt: !1253)
!1494 = !DILocation(line: 554, column: 5, scope: !1250, inlinedAt: !1253)
!1495 = !DILocation(line: 554, column: 12, scope: !1250, inlinedAt: !1253)
!1496 = !DILocation(line: 448, column: 31, scope: !1242, inlinedAt: !1249)
!1497 = !DILocation(line: 448, column: 34, scope: !1242, inlinedAt: !1249)
!1498 = !DILocation(line: 448, column: 14, scope: !1242, inlinedAt: !1249)
!1499 = !DILocation(line: 450, column: 22, scope: !1242, inlinedAt: !1249)
!1500 = !DILocation(line: 450, column: 25, scope: !1242, inlinedAt: !1249)
!1501 = !DILocation(line: 450, column: 30, scope: !1242, inlinedAt: !1249)
!1502 = !DILocation(line: 450, column: 36, scope: !1242, inlinedAt: !1249)
!1503 = !DILocation(line: 450, column: 8, scope: !1242, inlinedAt: !1249)
!1504 = !DILocation(line: 450, column: 6, scope: !1242, inlinedAt: !1249)
!1505 = !DILocation(line: 451, column: 9, scope: !1242, inlinedAt: !1249)
!1506 = !DILocation(line: 552, column: 3, scope: !1250, inlinedAt: !1253)
!1507 = !DILocation(line: 557, column: 19, scope: !1252, inlinedAt: !1253)
!1508 = !DILocation(line: 557, column: 25, scope: !1252, inlinedAt: !1253)
!1509 = !DILocation(line: 557, column: 9, scope: !1252, inlinedAt: !1253)
!1510 = !DILocation(line: 557, column: 2, scope: !1252, inlinedAt: !1253)
!1511 = !DILocation(line: 558, column: 1, scope: !1252, inlinedAt: !1253)
!1512 = !DILocation(line: 664, column: 2, scope: !1234)
!1513 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1514, file: !1514, line: 646, type: !1515, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1514 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!30}
!1517 = !DILocalVariable(name: "__ret", scope: !1518, file: !1514, line: 648, type: !30)
!1518 = distinct !DILexicalBlock(scope: !1513, file: !1514, line: 648, column: 9)
!1519 = !DILocation(line: 648, column: 9, scope: !1518)
!1520 = !DILocalVariable(name: "__edi", scope: !1518, file: !1514, line: 648, type: !30)
!1521 = !DILocalVariable(name: "__esi", scope: !1518, file: !1514, line: 648, type: !30)
!1522 = !DILocalVariable(name: "__edx", scope: !1518, file: !1514, line: 648, type: !30)
!1523 = !DILocalVariable(name: "__ecx", scope: !1518, file: !1514, line: 648, type: !30)
!1524 = !DILocalVariable(name: "__eax", scope: !1518, file: !1514, line: 648, type: !30)
!1525 = !DILocation(line: 648, column: 9, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !1514, line: 648, column: 9)
!1527 = distinct !DILexicalBlock(scope: !1518, file: !1514, line: 648, column: 9)
!1528 = !{i32 -2145784735, i32 -2145782420, i32 -2145782186, i32 -2145782135, i32 -2145782107, i32 -2145782082, i32 -2145782398, i32 -2145782385, i32 -2145781947, i32 -2145781828, i32 -2145782293, i32 -2145782266, i32 -2145782238, i32 -2145782208}
!1529 = !DILocalVariable(name: "__mask", scope: !1530, file: !1514, line: 648, type: !30)
!1530 = distinct !DILexicalBlock(scope: !1526, file: !1514, line: 648, column: 9)
!1531 = !DILocation(line: 648, column: 9, scope: !1530)
!1532 = !DILocation(line: 648, column: 9, scope: !1527)
!1533 = !DILocation(line: 648, column: 2, scope: !1513)
!1534 = distinct !DISubprogram(name: "get_order", scope: !1535, file: !1535, line: 29, type: !1031, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1535 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1536 = !DILocalVariable(name: "x", arg: 1, scope: !1537, file: !1538, line: 366, type: !22)
!1537 = distinct !DISubprogram(name: "fls64", scope: !1538, file: !1538, line: 366, type: !1539, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1538 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!1033, !22}
!1541 = !DILocation(line: 366, column: 40, scope: !1537, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 46, column: 9, scope: !1534)
!1543 = !DILocalVariable(name: "bitpos", scope: !1537, file: !1538, line: 368, type: !1033)
!1544 = !DILocation(line: 368, column: 6, scope: !1537, inlinedAt: !1542)
!1545 = !DILocalVariable(name: "size", arg: 1, scope: !1534, file: !1535, line: 29, type: !30)
!1546 = !DILocation(line: 29, column: 63, scope: !1534)
!1547 = !DILocation(line: 31, column: 27, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1534, file: !1535, line: 31, column: 6)
!1549 = !DILocation(line: 31, column: 6, scope: !1548)
!1550 = !DILocation(line: 31, column: 6, scope: !1534)
!1551 = !DILocation(line: 32, column: 8, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !1535, line: 32, column: 7)
!1553 = distinct !DILexicalBlock(scope: !1548, file: !1535, line: 31, column: 34)
!1554 = !DILocation(line: 32, column: 7, scope: !1553)
!1555 = !DILocation(line: 33, column: 4, scope: !1552)
!1556 = !DILocation(line: 35, column: 7, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1553, file: !1535, line: 35, column: 7)
!1558 = !DILocation(line: 35, column: 12, scope: !1557)
!1559 = !DILocation(line: 35, column: 7, scope: !1553)
!1560 = !DILocation(line: 36, column: 4, scope: !1557)
!1561 = !DILocation(line: 38, column: 10, scope: !1553)
!1562 = !DILocation(line: 38, column: 28, scope: !1553)
!1563 = !DILocation(line: 38, column: 41, scope: !1553)
!1564 = !DILocation(line: 38, column: 3, scope: !1553)
!1565 = !DILocation(line: 41, column: 6, scope: !1534)
!1566 = !DILocation(line: 42, column: 7, scope: !1534)
!1567 = !DILocation(line: 46, column: 15, scope: !1534)
!1568 = !DILocation(line: 374, column: 2, scope: !1537, inlinedAt: !1542)
!1569 = !DILocation(line: 376, column: 14, scope: !1537, inlinedAt: !1542)
!1570 = !{i32 660073}
!1571 = !DILocation(line: 377, column: 9, scope: !1537, inlinedAt: !1542)
!1572 = !DILocation(line: 377, column: 16, scope: !1537, inlinedAt: !1542)
!1573 = !DILocation(line: 46, column: 2, scope: !1534)
!1574 = !DILocation(line: 48, column: 1, scope: !1534)
!1575 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1576, file: !1576, line: 30, type: !1577, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1576 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!1033, !21}
!1579 = !DILocation(line: 366, column: 40, scope: !1537, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 32, column: 9, scope: !1575)
!1581 = !DILocation(line: 368, column: 6, scope: !1537, inlinedAt: !1580)
!1582 = !DILocalVariable(name: "n", arg: 1, scope: !1575, file: !1576, line: 30, type: !21)
!1583 = !DILocation(line: 30, column: 21, scope: !1575)
!1584 = !DILocation(line: 32, column: 15, scope: !1575)
!1585 = !DILocation(line: 374, column: 2, scope: !1537, inlinedAt: !1580)
!1586 = !DILocation(line: 376, column: 14, scope: !1537, inlinedAt: !1580)
!1587 = !DILocation(line: 377, column: 9, scope: !1537, inlinedAt: !1580)
!1588 = !DILocation(line: 377, column: 16, scope: !1537, inlinedAt: !1580)
!1589 = !DILocation(line: 32, column: 18, scope: !1575)
!1590 = !DILocation(line: 32, column: 2, scope: !1575)
!1591 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1592, file: !1592, line: 137, type: !1593, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !810)
!1592 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!29, !1245, !1595, !1237, !27}
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1597 = !DILocalVariable(name: "s", arg: 1, scope: !1591, file: !1592, line: 137, type: !1245)
!1598 = !DILocation(line: 137, column: 54, scope: !1591)
!1599 = !DILocalVariable(name: "object", arg: 2, scope: !1591, file: !1592, line: 137, type: !1595)
!1600 = !DILocation(line: 137, column: 69, scope: !1591)
!1601 = !DILocalVariable(name: "size", arg: 3, scope: !1591, file: !1592, line: 138, type: !1237)
!1602 = !DILocation(line: 138, column: 12, scope: !1591)
!1603 = !DILocalVariable(name: "flags", arg: 4, scope: !1591, file: !1592, line: 138, type: !27)
!1604 = !DILocation(line: 138, column: 24, scope: !1591)
!1605 = !DILocation(line: 140, column: 17, scope: !1591)
!1606 = !DILocation(line: 140, column: 2, scope: !1591)
