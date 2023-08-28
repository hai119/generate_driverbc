; ModuleID = '../bcout/drivers/acpi/acpica/hwregs.llvm.bc'
source_filename = "drivers/acpi/acpica/hwregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.acpi_bit_register_info = type { i8, i8, i16 }
%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
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

@_acpi_module_name = internal constant [7 x i8] c"hwregs\00", align 1, !dbg !0
@.str = private unnamed_addr constant [32 x i8] c"Unsupported address space: 0x%X\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Unsupported register access width: 0x%X\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Requested bit width 0x%X is smaller than register bit width 0x%X\00", align 1
@acpi_gbl_hardware_lock = external dso_local global %struct.raw_spinlock*, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Invalid BitRegister ID: 0x%X\00", align 1
@acpi_gbl_bit_register_info = external dso_local global [20 x %struct.acpi_bit_register_info], align 16
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@acpi_gbl_xpm1a_status = external dso_local global %struct.acpi_generic_address, align 1
@acpi_gbl_xpm1b_status = external dso_local global %struct.acpi_generic_address, align 1
@acpi_gbl_xpm1a_enable = external dso_local global %struct.acpi_generic_address, align 1
@acpi_gbl_xpm1b_enable = external dso_local global %struct.acpi_generic_address, align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Unknown Register ID: 0x%X\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_validate_register(%struct.acpi_generic_address* %reg, i8 zeroext %max_bit_width, i64* %address) #0 !dbg !41 {
entry:
  %retval = alloca i32, align 4
  %reg.addr = alloca %struct.acpi_generic_address*, align 8
  %max_bit_width.addr = alloca i8, align 1
  %address.addr = alloca i64*, align 8
  %bit_width = alloca i8, align 1
  %access_width = alloca i8, align 1
  store %struct.acpi_generic_address* %reg, %struct.acpi_generic_address** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_generic_address** %reg.addr, metadata !53, metadata !DIExpression()), !dbg !54
  store i8 %max_bit_width, i8* %max_bit_width.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %max_bit_width.addr, metadata !55, metadata !DIExpression()), !dbg !56
  store i64* %address, i64** %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %address.addr, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i8* %bit_width, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i8* %access_width, metadata !61, metadata !DIExpression()), !dbg !62
  %0 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !63
  %tobool = icmp ne %struct.acpi_generic_address* %0, null, !dbg !63
  br i1 %tobool, label %if.end, label %if.then, !dbg !65

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !66
  br label %return, !dbg !66

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !68
  %address1 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %1, i32 0, i32 4, !dbg !68
  %2 = bitcast i64* %address1 to i8*, !dbg !68
  %3 = bitcast i8* %2 to i64*, !dbg !68
  %4 = load i64, i64* %3, align 8, !dbg !68
  %5 = load i64*, i64** %address.addr, align 8, !dbg !68
  %6 = bitcast i64* %5 to i8*, !dbg !68
  %7 = bitcast i8* %6 to i64*, !dbg !68
  store i64 %4, i64* %7, align 8, !dbg !68
  %8 = load i64*, i64** %address.addr, align 8, !dbg !69
  %9 = load i64, i64* %8, align 8, !dbg !71
  %tobool2 = icmp ne i64 %9, 0, !dbg !72
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !73

if.then3:                                         ; preds = %if.end
  store i32 4105, i32* %retval, align 4, !dbg !74
  br label %return, !dbg !74

if.end4:                                          ; preds = %if.end
  %10 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !76
  %space_id = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %10, i32 0, i32 0, !dbg !78
  %11 = load i8, i8* %space_id, align 1, !dbg !78
  %conv = zext i8 %11 to i32, !dbg !76
  %cmp = icmp ne i32 %conv, 0, !dbg !79
  br i1 %cmp, label %land.lhs.true, label %if.end13, !dbg !80

land.lhs.true:                                    ; preds = %if.end4
  %12 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !81
  %space_id6 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %12, i32 0, i32 0, !dbg !82
  %13 = load i8, i8* %space_id6, align 1, !dbg !82
  %conv7 = zext i8 %13 to i32, !dbg !81
  %cmp8 = icmp ne i32 %conv7, 1, !dbg !83
  br i1 %cmp8, label %if.then10, label %if.end13, !dbg !84

if.then10:                                        ; preds = %land.lhs.true
  %14 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !85
  %space_id11 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %14, i32 0, i32 0, !dbg !85
  %15 = load i8, i8* %space_id11, align 1, !dbg !85
  %conv12 = zext i8 %15 to i32, !dbg !85
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 148, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %conv12) #5, !dbg !85
  store i32 15, i32* %retval, align 4, !dbg !87
  br label %return, !dbg !87

if.end13:                                         ; preds = %land.lhs.true, %if.end4
  %16 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !88
  %access_width14 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %16, i32 0, i32 3, !dbg !90
  %17 = load i8, i8* %access_width14, align 1, !dbg !90
  %conv15 = zext i8 %17 to i32, !dbg !88
  %cmp16 = icmp sgt i32 %conv15, 4, !dbg !91
  br i1 %cmp16, label %if.then18, label %if.end21, !dbg !92

if.then18:                                        ; preds = %if.end13
  %18 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !93
  %access_width19 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %18, i32 0, i32 3, !dbg !93
  %19 = load i8, i8* %access_width19, align 1, !dbg !93
  %conv20 = zext i8 %19 to i32, !dbg !93
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 156, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %conv20) #5, !dbg !93
  store i32 15, i32* %retval, align 4, !dbg !95
  br label %return, !dbg !95

if.end21:                                         ; preds = %if.end13
  %20 = load i64*, i64** %address.addr, align 8, !dbg !96
  %21 = load i64, i64* %20, align 8, !dbg !97
  %22 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !98
  %23 = load i8, i8* %max_bit_width.addr, align 1, !dbg !99
  %call = call zeroext i8 @acpi_hw_get_access_bit_width(i64 %21, %struct.acpi_generic_address* %22, i8 zeroext %23) #5, !dbg !100
  store i8 %call, i8* %access_width, align 1, !dbg !101
  %24 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !102
  %bit_offset = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %24, i32 0, i32 2, !dbg !102
  %25 = load i8, i8* %bit_offset, align 1, !dbg !102
  %conv22 = zext i8 %25 to i32, !dbg !102
  %26 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !102
  %bit_width23 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %26, i32 0, i32 1, !dbg !102
  %27 = load i8, i8* %bit_width23, align 1, !dbg !102
  %conv24 = zext i8 %27 to i32, !dbg !102
  %add = add i32 %conv22, %conv24, !dbg !102
  %conv25 = sext i32 %add to i64, !dbg !102
  %28 = load i8, i8* %access_width, align 1, !dbg !102
  %conv26 = zext i8 %28 to i64, !dbg !102
  %sub = sub i64 %conv26, 1, !dbg !102
  %add27 = add i64 %conv25, %sub, !dbg !102
  %29 = load i8, i8* %access_width, align 1, !dbg !102
  %conv28 = zext i8 %29 to i64, !dbg !102
  %sub29 = sub i64 %conv28, 1, !dbg !102
  %neg = xor i64 %sub29, -1, !dbg !102
  %and = and i64 %add27, %neg, !dbg !102
  %conv30 = trunc i64 %and to i8, !dbg !102
  store i8 %conv30, i8* %bit_width, align 1, !dbg !103
  %30 = load i8, i8* %max_bit_width.addr, align 1, !dbg !104
  %conv31 = zext i8 %30 to i32, !dbg !104
  %31 = load i8, i8* %bit_width, align 1, !dbg !106
  %conv32 = zext i8 %31 to i32, !dbg !106
  %cmp33 = icmp slt i32 %conv31, %conv32, !dbg !107
  br i1 %cmp33, label %if.then35, label %if.end38, !dbg !108

if.then35:                                        ; preds = %if.end21
  %32 = load i8, i8* %max_bit_width.addr, align 1, !dbg !109
  %conv36 = zext i8 %32 to i32, !dbg !109
  %33 = load i8, i8* %bit_width, align 1, !dbg !109
  %conv37 = zext i8 %33 to i32, !dbg !109
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 169, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %conv36, i32 %conv37) #5, !dbg !109
  store i32 15, i32* %retval, align 4, !dbg !111
  br label %return, !dbg !111

if.end38:                                         ; preds = %if.end21
  store i32 0, i32* %retval, align 4, !dbg !112
  br label %return, !dbg !112

return:                                           ; preds = %if.end38, %if.then35, %if.then18, %if.then10, %if.then3, %if.then
  %34 = load i32, i32* %retval, align 4, !dbg !113
  ret i32 %34, !dbg !113
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @acpi_hw_get_access_bit_width(i64 %address, %struct.acpi_generic_address* %reg, i8 zeroext %max_bit_width) #0 !dbg !114 {
entry:
  %retval = alloca i8, align 1
  %address.addr = alloca i64, align 8
  %reg.addr = alloca %struct.acpi_generic_address*, align 8
  %max_bit_width.addr = alloca i8, align 1
  %access_bit_width = alloca i8, align 1
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !117, metadata !DIExpression()), !dbg !118
  store %struct.acpi_generic_address* %reg, %struct.acpi_generic_address** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_generic_address** %reg.addr, metadata !119, metadata !DIExpression()), !dbg !120
  store i8 %max_bit_width, i8* %max_bit_width.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %max_bit_width.addr, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata i8* %access_bit_width, metadata !123, metadata !DIExpression()), !dbg !124
  %0 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !125
  %bit_offset = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %0, i32 0, i32 2, !dbg !127
  %1 = load i8, i8* %bit_offset, align 1, !dbg !127
  %tobool = icmp ne i8 %1, 0, !dbg !125
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !128

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !129
  %bit_width = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %2, i32 0, i32 1, !dbg !130
  %3 = load i8, i8* %bit_width, align 1, !dbg !130
  %conv = zext i8 %3 to i32, !dbg !129
  %tobool1 = icmp ne i32 %conv, 0, !dbg !129
  br i1 %tobool1, label %land.lhs.true2, label %if.else, !dbg !131

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !132
  %bit_width3 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %4, i32 0, i32 1, !dbg !132
  %5 = load i8, i8* %bit_width3, align 1, !dbg !132
  %conv4 = zext i8 %5 to i32, !dbg !132
  %6 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !132
  %bit_width5 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %6, i32 0, i32 1, !dbg !132
  %7 = load i8, i8* %bit_width5, align 1, !dbg !132
  %conv6 = zext i8 %7 to i32, !dbg !132
  %sub = sub i32 %conv6, 1, !dbg !132
  %and = and i32 %conv4, %sub, !dbg !132
  %cmp = icmp eq i32 %and, 0, !dbg !132
  br i1 %cmp, label %land.lhs.true8, label %if.else, !dbg !133

land.lhs.true8:                                   ; preds = %land.lhs.true2
  %8 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !134
  %bit_width9 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %8, i32 0, i32 1, !dbg !134
  %9 = load i8, i8* %bit_width9, align 1, !dbg !134
  %conv10 = zext i8 %9 to i32, !dbg !134
  %and11 = and i32 %conv10, 7, !dbg !134
  %cmp12 = icmp eq i32 %and11, 0, !dbg !134
  br i1 %cmp12, label %if.then, label %if.else, !dbg !135

if.then:                                          ; preds = %land.lhs.true8
  %10 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !136
  %bit_width14 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %10, i32 0, i32 1, !dbg !138
  %11 = load i8, i8* %bit_width14, align 1, !dbg !138
  store i8 %11, i8* %access_bit_width, align 1, !dbg !139
  br label %if.end136, !dbg !140

if.else:                                          ; preds = %land.lhs.true8, %land.lhs.true2, %land.lhs.true, %entry
  %12 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !141
  %access_width = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %12, i32 0, i32 3, !dbg !143
  %13 = load i8, i8* %access_width, align 1, !dbg !143
  %tobool15 = icmp ne i8 %13, 0, !dbg !141
  br i1 %tobool15, label %if.then16, label %if.else20, !dbg !144

if.then16:                                        ; preds = %if.else
  %14 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !145
  %access_width17 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %14, i32 0, i32 3, !dbg !145
  %15 = load i8, i8* %access_width17, align 1, !dbg !145
  %conv18 = zext i8 %15 to i32, !dbg !145
  %add = add i32 %conv18, 2, !dbg !145
  %shl = shl i32 1, %add, !dbg !145
  %conv19 = trunc i32 %shl to i8, !dbg !145
  store i8 %conv19, i8* %access_bit_width, align 1, !dbg !147
  br label %if.end135, !dbg !148

if.else20:                                        ; preds = %if.else
  %16 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !149
  %bit_offset21 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %16, i32 0, i32 2, !dbg !149
  %17 = load i8, i8* %bit_offset21, align 1, !dbg !149
  %conv22 = zext i8 %17 to i32, !dbg !149
  %18 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !149
  %bit_width23 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %18, i32 0, i32 1, !dbg !149
  %19 = load i8, i8* %bit_width23, align 1, !dbg !149
  %conv24 = zext i8 %19 to i32, !dbg !149
  %add25 = add i32 %conv22, %conv24, !dbg !149
  %sub26 = sub i32 %add25, 1, !dbg !149
  %tobool27 = icmp ne i32 %sub26, 0, !dbg !149
  br i1 %tobool27, label %cond.true, label %cond.false115, !dbg !149

cond.true:                                        ; preds = %if.else20
  %20 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !149
  %bit_offset28 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %20, i32 0, i32 2, !dbg !149
  %21 = load i8, i8* %bit_offset28, align 1, !dbg !149
  %conv29 = zext i8 %21 to i32, !dbg !149
  %22 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !149
  %bit_width30 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %22, i32 0, i32 1, !dbg !149
  %23 = load i8, i8* %bit_width30, align 1, !dbg !149
  %conv31 = zext i8 %23 to i32, !dbg !149
  %add32 = add i32 %conv29, %conv31, !dbg !149
  %sub33 = sub i32 %add32, 1, !dbg !149
  %conv34 = trunc i32 %sub33 to i8, !dbg !149
  %conv35 = zext i8 %conv34 to i32, !dbg !149
  %and36 = and i32 %conv35, 240, !dbg !149
  %tobool37 = icmp ne i32 %and36, 0, !dbg !149
  br i1 %tobool37, label %cond.true38, label %cond.false75, !dbg !149

cond.true38:                                      ; preds = %cond.true
  %24 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !149
  %bit_offset39 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %24, i32 0, i32 2, !dbg !149
  %25 = load i8, i8* %bit_offset39, align 1, !dbg !149
  %conv40 = zext i8 %25 to i32, !dbg !149
  %26 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !149
  %bit_width41 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %26, i32 0, i32 1, !dbg !149
  %27 = load i8, i8* %bit_width41, align 1, !dbg !149
  %conv42 = zext i8 %27 to i32, !dbg !149
  %add43 = add i32 %conv40, %conv42, !dbg !149
  %sub44 = sub i32 %add43, 1, !dbg !149
  %shr = ashr i32 %sub44, 4, !dbg !149
  %conv45 = trunc i32 %shr to i8, !dbg !149
  %conv46 = zext i8 %conv45 to i32, !dbg !149
  %and47 = and i32 %conv46, 12, !dbg !149
  %tobool48 = icmp ne i32 %and47, 0, !dbg !149
  br i1 %tobool48, label %cond.true49, label %cond.false, !dbg !149

cond.true49:                                      ; preds = %cond.true38
  %28 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !149
  %bit_offset50 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %28, i32 0, i32 2, !dbg !149
  %29 = load i8, i8* %bit_offset50, align 1, !dbg !149
  %conv51 = zext i8 %29 to i32, !dbg !149
  %30 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !149
  %bit_width52 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %30, i32 0, i32 1, !dbg !149
  %31 = load i8, i8* %bit_width52, align 1, !dbg !149
  %conv53 = zext i8 %31 to i32, !dbg !149
  %add54 = add i32 %conv51, %conv53, !dbg !149
  %sub55 = sub i32 %add54, 1, !dbg !149
  %shr56 = ashr i32 %sub55, 4, !dbg !149
  %shr57 = ashr i32 %shr56, 2, !dbg !149
  %conv58 = trunc i32 %shr57 to i8, !dbg !149
  %conv59 = zext i8 %conv58 to i32, !dbg !149
  %and60 = and i32 %conv59, 2, !dbg !149
  %tobool61 = icmp ne i32 %and60, 0, !dbg !149
  %32 = zext i1 %tobool61 to i64, !dbg !149
  %cond = select i1 %tobool61, i32 8, i32 7, !dbg !149
  br label %cond.end, !dbg !149

cond.false:                                       ; preds = %cond.true38
  %33 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !149
  %bit_offset62 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %33, i32 0, i32 2, !dbg !149
  %34 = load i8, i8* %bit_offset62, align 1, !dbg !149
  %conv63 = zext i8 %34 to i32, !dbg !149
  %35 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !149
  %bit_width64 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %35, i32 0, i32 1, !dbg !149
  %36 = load i8, i8* %bit_width64, align 1, !dbg !149
  %conv65 = zext i8 %36 to i32, !dbg !149
  %add66 = add i32 %conv63, %conv65, !dbg !149
  %sub67 = sub i32 %add66, 1, !dbg !149
  %shr68 = ashr i32 %sub67, 4, !dbg !149
  %conv69 = trunc i32 %shr68 to i8, !dbg !149
  %conv70 = zext i8 %conv69 to i32, !dbg !149
  %and71 = and i32 %conv70, 2, !dbg !149
  %tobool72 = icmp ne i32 %and71, 0, !dbg !149
  %37 = zext i1 %tobool72 to i64, !dbg !149
  %cond73 = select i1 %tobool72, i32 6, i32 5, !dbg !149
  br label %cond.end, !dbg !149

cond.end:                                         ; preds = %cond.false, %cond.true49
  %cond74 = phi i32 [ %cond, %cond.true49 ], [ %cond73, %cond.false ], !dbg !149
  br label %cond.end113, !dbg !149

cond.false75:                                     ; preds = %cond.true
  %38 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !149
  %bit_offset76 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %38, i32 0, i32 2, !dbg !149
  %39 = load i8, i8* %bit_offset76, align 1, !dbg !149
  %conv77 = zext i8 %39 to i32, !dbg !149
  %40 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !149
  %bit_width78 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %40, i32 0, i32 1, !dbg !149
  %41 = load i8, i8* %bit_width78, align 1, !dbg !149
  %conv79 = zext i8 %41 to i32, !dbg !149
  %add80 = add i32 %conv77, %conv79, !dbg !149
  %sub81 = sub i32 %add80, 1, !dbg !149
  %conv82 = trunc i32 %sub81 to i8, !dbg !149
  %conv83 = zext i8 %conv82 to i32, !dbg !149
  %and84 = and i32 %conv83, 12, !dbg !149
  %tobool85 = icmp ne i32 %and84, 0, !dbg !149
  br i1 %tobool85, label %cond.true86, label %cond.false99, !dbg !149

cond.true86:                                      ; preds = %cond.false75
  %42 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !149
  %bit_offset87 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %42, i32 0, i32 2, !dbg !149
  %43 = load i8, i8* %bit_offset87, align 1, !dbg !149
  %conv88 = zext i8 %43 to i32, !dbg !149
  %44 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !149
  %bit_width89 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %44, i32 0, i32 1, !dbg !149
  %45 = load i8, i8* %bit_width89, align 1, !dbg !149
  %conv90 = zext i8 %45 to i32, !dbg !149
  %add91 = add i32 %conv88, %conv90, !dbg !149
  %sub92 = sub i32 %add91, 1, !dbg !149
  %shr93 = ashr i32 %sub92, 2, !dbg !149
  %conv94 = trunc i32 %shr93 to i8, !dbg !149
  %conv95 = zext i8 %conv94 to i32, !dbg !149
  %and96 = and i32 %conv95, 2, !dbg !149
  %tobool97 = icmp ne i32 %and96, 0, !dbg !149
  %46 = zext i1 %tobool97 to i64, !dbg !149
  %cond98 = select i1 %tobool97, i32 4, i32 3, !dbg !149
  br label %cond.end111, !dbg !149

cond.false99:                                     ; preds = %cond.false75
  %47 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !149
  %bit_offset100 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %47, i32 0, i32 2, !dbg !149
  %48 = load i8, i8* %bit_offset100, align 1, !dbg !149
  %conv101 = zext i8 %48 to i32, !dbg !149
  %49 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !149
  %bit_width102 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %49, i32 0, i32 1, !dbg !149
  %50 = load i8, i8* %bit_width102, align 1, !dbg !149
  %conv103 = zext i8 %50 to i32, !dbg !149
  %add104 = add i32 %conv101, %conv103, !dbg !149
  %sub105 = sub i32 %add104, 1, !dbg !149
  %conv106 = trunc i32 %sub105 to i8, !dbg !149
  %conv107 = zext i8 %conv106 to i32, !dbg !149
  %and108 = and i32 %conv107, 2, !dbg !149
  %tobool109 = icmp ne i32 %and108, 0, !dbg !149
  %51 = zext i1 %tobool109 to i64, !dbg !149
  %cond110 = select i1 %tobool109, i32 2, i32 1, !dbg !149
  br label %cond.end111, !dbg !149

cond.end111:                                      ; preds = %cond.false99, %cond.true86
  %cond112 = phi i32 [ %cond98, %cond.true86 ], [ %cond110, %cond.false99 ], !dbg !149
  br label %cond.end113, !dbg !149

cond.end113:                                      ; preds = %cond.end111, %cond.end
  %cond114 = phi i32 [ %cond74, %cond.end ], [ %cond112, %cond.end111 ], !dbg !149
  br label %cond.end116, !dbg !149

cond.false115:                                    ; preds = %if.else20
  br label %cond.end116, !dbg !149

cond.end116:                                      ; preds = %cond.false115, %cond.end113
  %cond117 = phi i32 [ %cond114, %cond.end113 ], [ 0, %cond.false115 ], !dbg !149
  %shl118 = shl i32 1, %cond117, !dbg !149
  %conv119 = trunc i32 %shl118 to i8, !dbg !149
  store i8 %conv119, i8* %access_bit_width, align 1, !dbg !151
  %52 = load i8, i8* %access_bit_width, align 1, !dbg !152
  %conv120 = zext i8 %52 to i32, !dbg !152
  %cmp121 = icmp sle i32 %conv120, 8, !dbg !154
  br i1 %cmp121, label %if.then123, label %if.else124, !dbg !155

if.then123:                                       ; preds = %cond.end116
  store i8 8, i8* %access_bit_width, align 1, !dbg !156
  br label %if.end, !dbg !158

if.else124:                                       ; preds = %cond.end116
  br label %while.cond, !dbg !159

while.cond:                                       ; preds = %while.body, %if.else124
  %53 = load i64, i64* %address.addr, align 8, !dbg !161
  %54 = load i8, i8* %access_bit_width, align 1, !dbg !161
  %conv125 = zext i8 %54 to i32, !dbg !161
  %shr126 = ashr i32 %conv125, 3, !dbg !161
  %sub127 = sub i32 %shr126, 1, !dbg !161
  %conv128 = sext i32 %sub127 to i64, !dbg !161
  %and129 = and i64 %53, %conv128, !dbg !161
  %cmp130 = icmp eq i64 %and129, 0, !dbg !161
  %lnot = xor i1 %cmp130, true, !dbg !162
  br i1 %lnot, label %while.body, label %while.end, !dbg !159

while.body:                                       ; preds = %while.cond
  %55 = load i8, i8* %access_bit_width, align 1, !dbg !163
  %conv132 = zext i8 %55 to i32, !dbg !163
  %shr133 = ashr i32 %conv132, 1, !dbg !163
  %conv134 = trunc i32 %shr133 to i8, !dbg !163
  store i8 %conv134, i8* %access_bit_width, align 1, !dbg !163
  br label %while.cond, !dbg !159, !llvm.loop !165

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then123
  br label %if.end135

if.end135:                                        ; preds = %if.end, %if.then16
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.then
  %56 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !167
  %space_id = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %56, i32 0, i32 0, !dbg !169
  %57 = load i8, i8* %space_id, align 1, !dbg !169
  %conv137 = zext i8 %57 to i32, !dbg !167
  %cmp138 = icmp eq i32 %conv137, 1, !dbg !170
  br i1 %cmp138, label %if.then140, label %if.end141, !dbg !171

if.then140:                                       ; preds = %if.end136
  store i8 32, i8* %max_bit_width.addr, align 1, !dbg !172
  br label %if.end141, !dbg !174

if.end141:                                        ; preds = %if.then140, %if.end136
  %58 = load i8, i8* %access_bit_width, align 1, !dbg !175
  %conv142 = zext i8 %58 to i32, !dbg !175
  %59 = load i8, i8* %max_bit_width.addr, align 1, !dbg !177
  %conv143 = zext i8 %59 to i32, !dbg !177
  %cmp144 = icmp slt i32 %conv142, %conv143, !dbg !178
  br i1 %cmp144, label %if.then146, label %if.end147, !dbg !179

if.then146:                                       ; preds = %if.end141
  %60 = load i8, i8* %access_bit_width, align 1, !dbg !180
  store i8 %60, i8* %retval, align 1, !dbg !182
  br label %return, !dbg !182

if.end147:                                        ; preds = %if.end141
  %61 = load i8, i8* %max_bit_width.addr, align 1, !dbg !183
  store i8 %61, i8* %retval, align 1, !dbg !184
  br label %return, !dbg !184

return:                                           ; preds = %if.end147, %if.then146
  %62 = load i8, i8* %retval, align 1, !dbg !185
  ret i8 %62, !dbg !185
}

; Function Attrs: noredzone
declare dso_local void @acpi_warning(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_read(i64* %value, %struct.acpi_generic_address* %reg) #0 !dbg !186 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i64*, align 8
  %reg.addr = alloca %struct.acpi_generic_address*, align 8
  %address = alloca i64, align 8
  %access_width = alloca i8, align 1
  %bit_width = alloca i32, align 4
  %bit_offset = alloca i8, align 1
  %value64 = alloca i64, align 8
  %value32 = alloca i32, align 4
  %index = alloca i8, align 1
  %status = alloca i32, align 4
  store i64* %value, i64** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %value.addr, metadata !189, metadata !DIExpression()), !dbg !190
  store %struct.acpi_generic_address* %reg, %struct.acpi_generic_address** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_generic_address** %reg.addr, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata i64* %address, metadata !193, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata i8* %access_width, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata i32* %bit_width, metadata !197, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata i8* %bit_offset, metadata !199, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.declare(metadata i64* %value64, metadata !201, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.declare(metadata i32* %value32, metadata !203, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.declare(metadata i8* %index, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata i32* %status, metadata !207, metadata !DIExpression()), !dbg !208
  %0 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !209
  %call = call i32 @acpi_hw_validate_register(%struct.acpi_generic_address* %0, i8 zeroext 64, i64* %address) #5, !dbg !210
  store i32 %call, i32* %status, align 4, !dbg !211
  %1 = load i32, i32* %status, align 4, !dbg !212
  %tobool = icmp ne i32 %1, 0, !dbg !212
  br i1 %tobool, label %if.then, label %if.end, !dbg !214

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !215
  store i32 %2, i32* %retval, align 4, !dbg !217
  br label %return, !dbg !217

if.end:                                           ; preds = %entry
  %3 = load i64*, i64** %value.addr, align 8, !dbg !218
  store i64 0, i64* %3, align 8, !dbg !219
  %4 = load i64, i64* %address, align 8, !dbg !220
  %5 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !221
  %call1 = call zeroext i8 @acpi_hw_get_access_bit_width(i64 %4, %struct.acpi_generic_address* %5, i8 zeroext 64) #5, !dbg !222
  store i8 %call1, i8* %access_width, align 1, !dbg !223
  %6 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !224
  %bit_offset2 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %6, i32 0, i32 2, !dbg !225
  %7 = load i8, i8* %bit_offset2, align 1, !dbg !225
  %conv = zext i8 %7 to i32, !dbg !224
  %8 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !226
  %bit_width3 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %8, i32 0, i32 1, !dbg !227
  %9 = load i8, i8* %bit_width3, align 1, !dbg !227
  %conv4 = zext i8 %9 to i32, !dbg !226
  %add = add i32 %conv, %conv4, !dbg !228
  store i32 %add, i32* %bit_width, align 4, !dbg !229
  %10 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !230
  %bit_offset5 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %10, i32 0, i32 2, !dbg !231
  %11 = load i8, i8* %bit_offset5, align 1, !dbg !231
  store i8 %11, i8* %bit_offset, align 1, !dbg !232
  store i8 0, i8* %index, align 1, !dbg !233
  br label %while.cond, !dbg !234

while.cond:                                       ; preds = %cond.end51, %if.end
  %12 = load i32, i32* %bit_width, align 4, !dbg !235
  %tobool6 = icmp ne i32 %12, 0, !dbg !234
  br i1 %tobool6, label %while.body, label %while.end, !dbg !234

while.body:                                       ; preds = %while.cond
  %13 = load i8, i8* %bit_offset, align 1, !dbg !236
  %conv7 = zext i8 %13 to i32, !dbg !236
  %14 = load i8, i8* %access_width, align 1, !dbg !239
  %conv8 = zext i8 %14 to i32, !dbg !239
  %cmp = icmp sge i32 %conv7, %conv8, !dbg !240
  br i1 %cmp, label %if.then10, label %if.else, !dbg !241

if.then10:                                        ; preds = %while.body
  store i64 0, i64* %value64, align 8, !dbg !242
  %15 = load i8, i8* %access_width, align 1, !dbg !244
  %conv11 = zext i8 %15 to i32, !dbg !244
  %16 = load i8, i8* %bit_offset, align 1, !dbg !245
  %conv12 = zext i8 %16 to i32, !dbg !245
  %sub = sub i32 %conv12, %conv11, !dbg !245
  %conv13 = trunc i32 %sub to i8, !dbg !245
  store i8 %conv13, i8* %bit_offset, align 1, !dbg !245
  br label %if.end35, !dbg !246

if.else:                                          ; preds = %while.body
  %17 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !247
  %space_id = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %17, i32 0, i32 0, !dbg !250
  %18 = load i8, i8* %space_id, align 1, !dbg !250
  %conv14 = zext i8 %18 to i32, !dbg !247
  %cmp15 = icmp eq i32 %conv14, 0, !dbg !251
  br i1 %cmp15, label %if.then17, label %if.else24, !dbg !252

if.then17:                                        ; preds = %if.else
  %19 = load i64, i64* %address, align 8, !dbg !253
  %20 = load i8, i8* %index, align 1, !dbg !255
  %conv18 = zext i8 %20 to i32, !dbg !255
  %21 = load i8, i8* %access_width, align 1, !dbg !256
  %conv19 = zext i8 %21 to i32, !dbg !256
  %shr = ashr i32 %conv19, 3, !dbg !256
  %mul = mul i32 %conv18, %shr, !dbg !257
  %conv20 = zext i32 %mul to i64, !dbg !255
  %add21 = add i64 %19, %conv20, !dbg !258
  %22 = load i8, i8* %access_width, align 1, !dbg !259
  %conv22 = zext i8 %22 to i32, !dbg !259
  %call23 = call i32 @acpi_os_read_memory(i64 %add21, i64* %value64, i32 %conv22) #5, !dbg !260
  store i32 %call23, i32* %status, align 4, !dbg !261
  br label %if.end34, !dbg !262

if.else24:                                        ; preds = %if.else
  %23 = load i64, i64* %address, align 8, !dbg !263
  %24 = load i8, i8* %index, align 1, !dbg !265
  %conv25 = zext i8 %24 to i32, !dbg !265
  %25 = load i8, i8* %access_width, align 1, !dbg !266
  %conv26 = zext i8 %25 to i32, !dbg !266
  %shr27 = ashr i32 %conv26, 3, !dbg !266
  %mul28 = mul i32 %conv25, %shr27, !dbg !267
  %conv29 = zext i32 %mul28 to i64, !dbg !265
  %add30 = add i64 %23, %conv29, !dbg !268
  %26 = load i8, i8* %access_width, align 1, !dbg !269
  %conv31 = zext i8 %26 to i32, !dbg !269
  %call32 = call i32 @acpi_hw_read_port(i64 %add30, i32* %value32, i32 %conv31) #5, !dbg !270
  store i32 %call32, i32* %status, align 4, !dbg !271
  %27 = load i32, i32* %value32, align 4, !dbg !272
  %conv33 = zext i32 %27 to i64, !dbg !273
  store i64 %conv33, i64* %value64, align 8, !dbg !274
  br label %if.end34

if.end34:                                         ; preds = %if.else24, %if.then17
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then10
  %28 = load i64, i64* %value64, align 8, !dbg !275
  %29 = load i8, i8* %access_width, align 1, !dbg !275
  %conv36 = zext i8 %29 to i32, !dbg !275
  %cmp37 = icmp eq i32 %conv36, 64, !dbg !275
  br i1 %cmp37, label %cond.true, label %cond.false, !dbg !275

cond.true:                                        ; preds = %if.end35
  br label %cond.end, !dbg !275

cond.false:                                       ; preds = %if.end35
  %30 = load i8, i8* %access_width, align 1, !dbg !275
  %conv39 = zext i8 %30 to i32, !dbg !275
  %sh_prom = zext i32 %conv39 to i64, !dbg !275
  %shl = shl i64 -1, %sh_prom, !dbg !275
  %neg = xor i64 %shl, -1, !dbg !275
  br label %cond.end, !dbg !275

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %neg, %cond.false ], !dbg !275
  %and = and i64 %28, %cond, !dbg !275
  %31 = load i8, i8* %index, align 1, !dbg !275
  %conv40 = zext i8 %31 to i32, !dbg !275
  %32 = load i8, i8* %access_width, align 1, !dbg !275
  %conv41 = zext i8 %32 to i32, !dbg !275
  %mul42 = mul i32 %conv40, %conv41, !dbg !275
  %sh_prom43 = zext i32 %mul42 to i64, !dbg !275
  %shl44 = shl i64 %and, %sh_prom43, !dbg !275
  %33 = load i64*, i64** %value.addr, align 8, !dbg !275
  %34 = load i64, i64* %33, align 8, !dbg !275
  %or = or i64 %34, %shl44, !dbg !275
  store i64 %or, i64* %33, align 8, !dbg !275
  %35 = load i32, i32* %bit_width, align 4, !dbg !276
  %36 = load i8, i8* %access_width, align 1, !dbg !277
  %conv45 = zext i8 %36 to i32, !dbg !277
  %cmp46 = icmp ugt i32 %35, %conv45, !dbg !278
  br i1 %cmp46, label %cond.true48, label %cond.false50, !dbg !276

cond.true48:                                      ; preds = %cond.end
  %37 = load i8, i8* %access_width, align 1, !dbg !279
  %conv49 = zext i8 %37 to i32, !dbg !279
  br label %cond.end51, !dbg !276

cond.false50:                                     ; preds = %cond.end
  %38 = load i32, i32* %bit_width, align 4, !dbg !280
  br label %cond.end51, !dbg !276

cond.end51:                                       ; preds = %cond.false50, %cond.true48
  %cond52 = phi i32 [ %conv49, %cond.true48 ], [ %38, %cond.false50 ], !dbg !276
  %39 = load i32, i32* %bit_width, align 4, !dbg !281
  %sub53 = sub i32 %39, %cond52, !dbg !281
  store i32 %sub53, i32* %bit_width, align 4, !dbg !281
  %40 = load i8, i8* %index, align 1, !dbg !282
  %inc = add i8 %40, 1, !dbg !282
  store i8 %inc, i8* %index, align 1, !dbg !282
  br label %while.cond, !dbg !234, !llvm.loop !283

while.end:                                        ; preds = %while.cond
  %41 = load i32, i32* %status, align 4, !dbg !285
  store i32 %41, i32* %retval, align 4, !dbg !286
  br label %return, !dbg !286

return:                                           ; preds = %while.end, %if.then
  %42 = load i32, i32* %retval, align 4, !dbg !287
  ret i32 %42, !dbg !287
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_read_memory(i64, i64*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_read_port(i64, i32*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_write(i64 %value, %struct.acpi_generic_address* %reg) #0 !dbg !288 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i64, align 8
  %reg.addr = alloca %struct.acpi_generic_address*, align 8
  %address = alloca i64, align 8
  %access_width = alloca i8, align 1
  %bit_width = alloca i32, align 4
  %bit_offset = alloca i8, align 1
  %value64 = alloca i64, align 8
  %index = alloca i8, align 1
  %status = alloca i32, align 4
  store i64 %value, i64* %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %value.addr, metadata !291, metadata !DIExpression()), !dbg !292
  store %struct.acpi_generic_address* %reg, %struct.acpi_generic_address** %reg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_generic_address** %reg.addr, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.declare(metadata i64* %address, metadata !295, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.declare(metadata i8* %access_width, metadata !297, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata i32* %bit_width, metadata !299, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.declare(metadata i8* %bit_offset, metadata !301, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.declare(metadata i64* %value64, metadata !303, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.declare(metadata i8* %index, metadata !305, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.declare(metadata i32* %status, metadata !307, metadata !DIExpression()), !dbg !308
  %0 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !309
  %call = call i32 @acpi_hw_validate_register(%struct.acpi_generic_address* %0, i8 zeroext 64, i64* %address) #5, !dbg !310
  store i32 %call, i32* %status, align 4, !dbg !311
  %1 = load i32, i32* %status, align 4, !dbg !312
  %tobool = icmp ne i32 %1, 0, !dbg !312
  br i1 %tobool, label %if.then, label %if.end, !dbg !314

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !315
  store i32 %2, i32* %retval, align 4, !dbg !317
  br label %return, !dbg !317

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %address, align 8, !dbg !318
  %4 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !319
  %call1 = call zeroext i8 @acpi_hw_get_access_bit_width(i64 %3, %struct.acpi_generic_address* %4, i8 zeroext 64) #5, !dbg !320
  store i8 %call1, i8* %access_width, align 1, !dbg !321
  %5 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !322
  %bit_offset2 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %5, i32 0, i32 2, !dbg !323
  %6 = load i8, i8* %bit_offset2, align 1, !dbg !323
  %conv = zext i8 %6 to i32, !dbg !322
  %7 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !324
  %bit_width3 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %7, i32 0, i32 1, !dbg !325
  %8 = load i8, i8* %bit_width3, align 1, !dbg !325
  %conv4 = zext i8 %8 to i32, !dbg !324
  %add = add i32 %conv, %conv4, !dbg !326
  store i32 %add, i32* %bit_width, align 4, !dbg !327
  %9 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !328
  %bit_offset5 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %9, i32 0, i32 2, !dbg !329
  %10 = load i8, i8* %bit_offset5, align 1, !dbg !329
  store i8 %10, i8* %bit_offset, align 1, !dbg !330
  store i8 0, i8* %index, align 1, !dbg !331
  br label %while.cond, !dbg !332

while.cond:                                       ; preds = %cond.end51, %if.end
  %11 = load i32, i32* %bit_width, align 4, !dbg !333
  %tobool6 = icmp ne i32 %11, 0, !dbg !332
  br i1 %tobool6, label %while.body, label %while.end, !dbg !332

while.body:                                       ; preds = %while.cond
  %12 = load i64, i64* %value.addr, align 8, !dbg !334
  %13 = load i8, i8* %index, align 1, !dbg !334
  %conv7 = zext i8 %13 to i32, !dbg !334
  %14 = load i8, i8* %access_width, align 1, !dbg !334
  %conv8 = zext i8 %14 to i32, !dbg !334
  %mul = mul i32 %conv7, %conv8, !dbg !334
  %sh_prom = zext i32 %mul to i64, !dbg !334
  %shr = lshr i64 %12, %sh_prom, !dbg !334
  %15 = load i8, i8* %access_width, align 1, !dbg !334
  %conv9 = zext i8 %15 to i32, !dbg !334
  %cmp = icmp eq i32 %conv9, 64, !dbg !334
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !334

cond.true:                                        ; preds = %while.body
  br label %cond.end, !dbg !334

cond.false:                                       ; preds = %while.body
  %16 = load i8, i8* %access_width, align 1, !dbg !334
  %conv11 = zext i8 %16 to i32, !dbg !334
  %sh_prom12 = zext i32 %conv11 to i64, !dbg !334
  %shl = shl i64 -1, %sh_prom12, !dbg !334
  %neg = xor i64 %shl, -1, !dbg !334
  br label %cond.end, !dbg !334

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %neg, %cond.false ], !dbg !334
  %and = and i64 %shr, %cond, !dbg !334
  store i64 %and, i64* %value64, align 8, !dbg !336
  %17 = load i8, i8* %bit_offset, align 1, !dbg !337
  %conv13 = zext i8 %17 to i32, !dbg !337
  %18 = load i8, i8* %access_width, align 1, !dbg !339
  %conv14 = zext i8 %18 to i32, !dbg !339
  %cmp15 = icmp sge i32 %conv13, %conv14, !dbg !340
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !341

if.then17:                                        ; preds = %cond.end
  %19 = load i8, i8* %access_width, align 1, !dbg !342
  %conv18 = zext i8 %19 to i32, !dbg !342
  %20 = load i8, i8* %bit_offset, align 1, !dbg !344
  %conv19 = zext i8 %20 to i32, !dbg !344
  %sub = sub i32 %conv19, %conv18, !dbg !344
  %conv20 = trunc i32 %sub to i8, !dbg !344
  store i8 %conv20, i8* %bit_offset, align 1, !dbg !344
  br label %if.end44, !dbg !345

if.else:                                          ; preds = %cond.end
  %21 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %reg.addr, align 8, !dbg !346
  %space_id = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %21, i32 0, i32 0, !dbg !349
  %22 = load i8, i8* %space_id, align 1, !dbg !349
  %conv21 = zext i8 %22 to i32, !dbg !346
  %cmp22 = icmp eq i32 %conv21, 0, !dbg !350
  br i1 %cmp22, label %if.then24, label %if.else33, !dbg !351

if.then24:                                        ; preds = %if.else
  %23 = load i64, i64* %address, align 8, !dbg !352
  %24 = load i8, i8* %index, align 1, !dbg !354
  %conv25 = zext i8 %24 to i32, !dbg !354
  %25 = load i8, i8* %access_width, align 1, !dbg !355
  %conv26 = zext i8 %25 to i32, !dbg !355
  %shr27 = ashr i32 %conv26, 3, !dbg !355
  %mul28 = mul i32 %conv25, %shr27, !dbg !356
  %conv29 = zext i32 %mul28 to i64, !dbg !354
  %add30 = add i64 %23, %conv29, !dbg !357
  %26 = load i64, i64* %value64, align 8, !dbg !358
  %27 = load i8, i8* %access_width, align 1, !dbg !359
  %conv31 = zext i8 %27 to i32, !dbg !359
  %call32 = call i32 @acpi_os_write_memory(i64 %add30, i64 %26, i32 %conv31) #5, !dbg !360
  store i32 %call32, i32* %status, align 4, !dbg !361
  br label %if.end43, !dbg !362

if.else33:                                        ; preds = %if.else
  %28 = load i64, i64* %address, align 8, !dbg !363
  %29 = load i8, i8* %index, align 1, !dbg !365
  %conv34 = zext i8 %29 to i32, !dbg !365
  %30 = load i8, i8* %access_width, align 1, !dbg !366
  %conv35 = zext i8 %30 to i32, !dbg !366
  %shr36 = ashr i32 %conv35, 3, !dbg !366
  %mul37 = mul i32 %conv34, %shr36, !dbg !367
  %conv38 = zext i32 %mul37 to i64, !dbg !365
  %add39 = add i64 %28, %conv38, !dbg !368
  %31 = load i64, i64* %value64, align 8, !dbg !369
  %conv40 = trunc i64 %31 to i32, !dbg !370
  %32 = load i8, i8* %access_width, align 1, !dbg !371
  %conv41 = zext i8 %32 to i32, !dbg !371
  %call42 = call i32 @acpi_hw_write_port(i64 %add39, i32 %conv40, i32 %conv41) #5, !dbg !372
  store i32 %call42, i32* %status, align 4, !dbg !373
  br label %if.end43

if.end43:                                         ; preds = %if.else33, %if.then24
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then17
  %33 = load i32, i32* %bit_width, align 4, !dbg !374
  %34 = load i8, i8* %access_width, align 1, !dbg !375
  %conv45 = zext i8 %34 to i32, !dbg !375
  %cmp46 = icmp ugt i32 %33, %conv45, !dbg !376
  br i1 %cmp46, label %cond.true48, label %cond.false50, !dbg !374

cond.true48:                                      ; preds = %if.end44
  %35 = load i8, i8* %access_width, align 1, !dbg !377
  %conv49 = zext i8 %35 to i32, !dbg !377
  br label %cond.end51, !dbg !374

cond.false50:                                     ; preds = %if.end44
  %36 = load i32, i32* %bit_width, align 4, !dbg !378
  br label %cond.end51, !dbg !374

cond.end51:                                       ; preds = %cond.false50, %cond.true48
  %cond52 = phi i32 [ %conv49, %cond.true48 ], [ %36, %cond.false50 ], !dbg !374
  %37 = load i32, i32* %bit_width, align 4, !dbg !379
  %sub53 = sub i32 %37, %cond52, !dbg !379
  store i32 %sub53, i32* %bit_width, align 4, !dbg !379
  %38 = load i8, i8* %index, align 1, !dbg !380
  %inc = add i8 %38, 1, !dbg !380
  store i8 %inc, i8* %index, align 1, !dbg !380
  br label %while.cond, !dbg !332, !llvm.loop !381

while.end:                                        ; preds = %while.cond
  %39 = load i32, i32* %status, align 4, !dbg !383
  store i32 %39, i32* %retval, align 4, !dbg !384
  br label %return, !dbg !384

return:                                           ; preds = %while.end, %if.then
  %40 = load i32, i32* %retval, align 4, !dbg !385
  ret i32 %40, !dbg !385
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_write_memory(i64, i64, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_write_port(i64, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_clear_acpi_status() #0 !dbg !386 {
entry:
  %status = alloca i32, align 4
  %lock_flags = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i32* %status, metadata !389, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.declare(metadata i64* %lock_flags, metadata !391, metadata !DIExpression()), !dbg !392
  store i64 0, i64* %lock_flags, align 8, !dbg !392
  %0 = load %struct.raw_spinlock*, %struct.raw_spinlock** @acpi_gbl_hardware_lock, align 8, !dbg !393
  %call = call i64 @acpi_os_acquire_raw_lock(%struct.raw_spinlock* %0) #5, !dbg !394
  store i64 %call, i64* %lock_flags, align 8, !dbg !395
  %call1 = call i32 @acpi_hw_register_write(i32 1, i32 50993) #5, !dbg !396
  store i32 %call1, i32* %status, align 4, !dbg !397
  %1 = load %struct.raw_spinlock*, %struct.raw_spinlock** @acpi_gbl_hardware_lock, align 8, !dbg !398
  %2 = load i64, i64* %lock_flags, align 8, !dbg !399
  call void @acpi_os_release_raw_lock(%struct.raw_spinlock* %1, i64 %2) #5, !dbg !400
  %3 = load i32, i32* %status, align 4, !dbg !401
  %tobool = icmp ne i32 %3, 0, !dbg !401
  br i1 %tobool, label %if.then, label %if.end, !dbg !403

if.then:                                          ; preds = %entry
  br label %exit, !dbg !404

if.end:                                           ; preds = %entry
  %call2 = call i32 @acpi_ev_walk_gpe_list(i32 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)* @acpi_hw_clear_gpe_block, i8* null) #5, !dbg !406
  store i32 %call2, i32* %status, align 4, !dbg !407
  br label %exit, !dbg !408

exit:                                             ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !409), !dbg !410
  %4 = load i32, i32* %status, align 4, !dbg !411
  ret i32 %4, !dbg !411
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_os_acquire_raw_lock(%struct.raw_spinlock* %lockp) #0 !dbg !412 {
entry:
  %lockp.addr = alloca %struct.raw_spinlock*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  store %struct.raw_spinlock* %lockp, %struct.raw_spinlock** %lockp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raw_spinlock** %lockp.addr, metadata !425, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !427, metadata !DIExpression()), !dbg !428
  br label %do.body, !dbg !429

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !430, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !434, metadata !DIExpression()), !dbg !433
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !433
  %conv = zext i1 %cmp to i32, !dbg !433
  store i32 1, i32* %tmp, align 4, !dbg !433
  %0 = load i32, i32* %tmp, align 4, !dbg !433
  br label %do.body1, !dbg !435

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !436

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !438

do.body3:                                         ; preds = %do.body2
  call void @llvm.dbg.declare(metadata i64* %__dummy4, metadata !440, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.declare(metadata i64* %__dummy25, metadata !444, metadata !DIExpression()), !dbg !443
  %cmp6 = icmp eq i64* %__dummy4, %__dummy25, !dbg !443
  %conv7 = zext i1 %cmp6 to i32, !dbg !443
  store i32 1, i32* %tmp8, align 4, !dbg !443
  %1 = load i32, i32* %tmp8, align 4, !dbg !443
  %call = call i64 @arch_local_irq_save() #5, !dbg !445
  store i64 %call, i64* %flags, align 8, !dbg !445
  br label %do.end, !dbg !445

do.end:                                           ; preds = %do.body3
  br label %do.end9, !dbg !438

do.end9:                                          ; preds = %do.end
  br label %do.body10, !dbg !436

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !446, !srcloc !448
  br label %do.body11, !dbg !446

do.body11:                                        ; preds = %do.body10
  %2 = load %struct.raw_spinlock*, %struct.raw_spinlock** %lockp.addr, align 8, !dbg !449
  br label %do.end12, !dbg !449

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !446

do.end13:                                         ; preds = %do.end12
  br label %do.end14, !dbg !436

do.end14:                                         ; preds = %do.end13
  br label %do.end15, !dbg !435

do.end15:                                         ; preds = %do.end14
  %3 = load i64, i64* %flags, align 8, !dbg !451
  ret i64 %3, !dbg !452
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_register_write(i32 %register_id, i32 %value) #0 !dbg !453 {
entry:
  %register_id.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %read_value = alloca i32, align 4
  %read_value64 = alloca i64, align 8
  store i32 %register_id, i32* %register_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %register_id.addr, metadata !456, metadata !DIExpression()), !dbg !457
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !458, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.declare(metadata i32* %status, metadata !460, metadata !DIExpression()), !dbg !461
  call void @llvm.dbg.declare(metadata i32* %read_value, metadata !462, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.declare(metadata i64* %read_value64, metadata !464, metadata !DIExpression()), !dbg !465
  %0 = load i32, i32* %register_id.addr, align 4, !dbg !466
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
    i32 4, label %sw.bb8
    i32 5, label %sw.bb18
    i32 7, label %sw.bb21
  ], !dbg !467

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %value.addr, align 4, !dbg !468
  %and = and i32 %1, -2049, !dbg !468
  store i32 %and, i32* %value.addr, align 4, !dbg !468
  %2 = load i32, i32* %value.addr, align 4, !dbg !470
  %call = call i32 @acpi_hw_write_multiple(i32 %2, %struct.acpi_generic_address* @acpi_gbl_xpm1a_status, %struct.acpi_generic_address* @acpi_gbl_xpm1b_status) #5, !dbg !471
  store i32 %call, i32* %status, align 4, !dbg !472
  br label %sw.epilog, !dbg !473

sw.bb1:                                           ; preds = %entry
  %3 = load i32, i32* %value.addr, align 4, !dbg !474
  %call2 = call i32 @acpi_hw_write_multiple(i32 %3, %struct.acpi_generic_address* @acpi_gbl_xpm1a_enable, %struct.acpi_generic_address* @acpi_gbl_xpm1b_enable) #5, !dbg !475
  store i32 %call2, i32* %status, align 4, !dbg !476
  br label %sw.epilog, !dbg !477

sw.bb3:                                           ; preds = %entry
  %call4 = call i32 @acpi_hw_read_multiple(i32* %read_value, %struct.acpi_generic_address* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 47), %struct.acpi_generic_address* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 48)) #5, !dbg !478
  store i32 %call4, i32* %status, align 4, !dbg !479
  %4 = load i32, i32* %status, align 4, !dbg !480
  %tobool = icmp ne i32 %4, 0, !dbg !480
  br i1 %tobool, label %if.then, label %if.end, !dbg !482

if.then:                                          ; preds = %sw.bb3
  br label %exit, !dbg !483

if.end:                                           ; preds = %sw.bb3
  %5 = load i32, i32* %value.addr, align 4, !dbg !485
  %and5 = and i32 %5, -50169, !dbg !485
  %6 = load i32, i32* %read_value, align 4, !dbg !485
  %and6 = and i32 %6, 50168, !dbg !485
  %or = or i32 %and5, %and6, !dbg !485
  store i32 %or, i32* %value.addr, align 4, !dbg !485
  %7 = load i32, i32* %value.addr, align 4, !dbg !486
  %call7 = call i32 @acpi_hw_write_multiple(i32 %7, %struct.acpi_generic_address* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 47), %struct.acpi_generic_address* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 48)) #5, !dbg !487
  store i32 %call7, i32* %status, align 4, !dbg !488
  br label %sw.epilog, !dbg !489

sw.bb8:                                           ; preds = %entry
  %call9 = call i32 @acpi_hw_read(i64* %read_value64, %struct.acpi_generic_address* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 49)) #5, !dbg !490
  store i32 %call9, i32* %status, align 4, !dbg !491
  %8 = load i32, i32* %status, align 4, !dbg !492
  %tobool10 = icmp ne i32 %8, 0, !dbg !492
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !494

if.then11:                                        ; preds = %sw.bb8
  br label %exit, !dbg !495

if.end12:                                         ; preds = %sw.bb8
  %9 = load i64, i64* %read_value64, align 8, !dbg !497
  %conv = trunc i64 %9 to i32, !dbg !498
  store i32 %conv, i32* %read_value, align 4, !dbg !499
  %10 = load i32, i32* %value.addr, align 4, !dbg !500
  %and13 = and i32 %10, 1, !dbg !500
  %11 = load i32, i32* %read_value, align 4, !dbg !500
  %and14 = and i32 %11, -2, !dbg !500
  %or15 = or i32 %and13, %and14, !dbg !500
  store i32 %or15, i32* %value.addr, align 4, !dbg !500
  %12 = load i32, i32* %value.addr, align 4, !dbg !501
  %conv16 = zext i32 %12 to i64, !dbg !501
  %call17 = call i32 @acpi_hw_write(i64 %conv16, %struct.acpi_generic_address* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 49)) #5, !dbg !502
  store i32 %call17, i32* %status, align 4, !dbg !503
  br label %sw.epilog, !dbg !504

sw.bb18:                                          ; preds = %entry
  %13 = load i32, i32* %value.addr, align 4, !dbg !505
  %conv19 = zext i32 %13 to i64, !dbg !505
  %call20 = call i32 @acpi_hw_write(i64 %conv19, %struct.acpi_generic_address* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 50)) #5, !dbg !506
  store i32 %call20, i32* %status, align 4, !dbg !507
  br label %sw.epilog, !dbg !508

sw.bb21:                                          ; preds = %entry
  %14 = load i32, i32* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 6), align 1, !dbg !509
  %conv22 = zext i32 %14 to i64, !dbg !510
  %15 = load i32, i32* %value.addr, align 4, !dbg !511
  %call23 = call i32 @acpi_hw_write_port(i64 %conv22, i32 %15, i32 8) #5, !dbg !512
  store i32 %call23, i32* %status, align 4, !dbg !513
  br label %sw.epilog, !dbg !514

sw.default:                                       ; preds = %entry
  %16 = load i32, i32* %register_id.addr, align 4, !dbg !515
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 690, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %16) #5, !dbg !515
  store i32 4097, i32* %status, align 4, !dbg !516
  br label %sw.epilog, !dbg !517

sw.epilog:                                        ; preds = %sw.default, %sw.bb21, %sw.bb18, %if.end12, %if.end, %sw.bb1, %sw.bb
  br label %exit, !dbg !518

exit:                                             ; preds = %sw.epilog, %if.then11, %if.then
  call void @llvm.dbg.label(metadata !519), !dbg !520
  %17 = load i32, i32* %status, align 4, !dbg !521
  ret i32 %17, !dbg !521
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_release_raw_lock(%struct.raw_spinlock* %lockp, i64 %flags) #0 !dbg !522 {
entry:
  %lockp.addr = alloca %struct.raw_spinlock*, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  store %struct.raw_spinlock* %lockp, %struct.raw_spinlock** %lockp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raw_spinlock** %lockp.addr, metadata !525, metadata !DIExpression()), !dbg !526
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !527, metadata !DIExpression()), !dbg !528
  br label %do.body, !dbg !529

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !530, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !534, metadata !DIExpression()), !dbg !533
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !533
  %conv = zext i1 %cmp to i32, !dbg !533
  store i32 1, i32* %tmp, align 4, !dbg !533
  %0 = load i32, i32* %tmp, align 4, !dbg !533
  br label %do.body1, !dbg !535

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !536

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !538

do.body3:                                         ; preds = %do.body2
  call void @llvm.dbg.declare(metadata i64* %__dummy4, metadata !540, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.declare(metadata i64* %__dummy25, metadata !544, metadata !DIExpression()), !dbg !543
  %cmp6 = icmp eq i64* %__dummy4, %__dummy25, !dbg !543
  %conv7 = zext i1 %cmp6 to i32, !dbg !543
  store i32 1, i32* %tmp8, align 4, !dbg !543
  %1 = load i32, i32* %tmp8, align 4, !dbg !543
  %2 = load i64, i64* %flags.addr, align 8, !dbg !545
  call void @arch_local_irq_restore(i64 %2) #5, !dbg !545
  br label %do.end, !dbg !545

do.end:                                           ; preds = %do.body3
  br label %do.end9, !dbg !538

do.end9:                                          ; preds = %do.end
  br label %do.body10, !dbg !536

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !546, !srcloc !548
  br label %do.body11, !dbg !546

do.body11:                                        ; preds = %do.body10
  %3 = load %struct.raw_spinlock*, %struct.raw_spinlock** %lockp.addr, align 8, !dbg !549
  br label %do.end12, !dbg !549

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !546

do.end13:                                         ; preds = %do.end12
  br label %do.end14, !dbg !536

do.end14:                                         ; preds = %do.end13
  br label %do.end15, !dbg !535

do.end15:                                         ; preds = %do.end14
  ret void, !dbg !551
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_walk_gpe_list(i32 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_clear_gpe_block(%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.acpi_bit_register_info* @acpi_hw_get_bit_register_info(i32 %register_id) #0 !dbg !552 {
entry:
  %retval = alloca %struct.acpi_bit_register_info*, align 8
  %register_id.addr = alloca i32, align 4
  store i32 %register_id, i32* %register_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %register_id.addr, metadata !562, metadata !DIExpression()), !dbg !563
  %0 = load i32, i32* %register_id.addr, align 4, !dbg !564
  %cmp = icmp ugt i32 %0, 19, !dbg !566
  br i1 %cmp, label %if.then, label %if.end, !dbg !567

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %register_id.addr, align 4, !dbg !568
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 431, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %1) #5, !dbg !568
  store %struct.acpi_bit_register_info* null, %struct.acpi_bit_register_info** %retval, align 8, !dbg !570
  br label %return, !dbg !570

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %register_id.addr, align 4, !dbg !571
  %idxprom = zext i32 %2 to i64, !dbg !572
  %arrayidx = getelementptr [20 x %struct.acpi_bit_register_info], [20 x %struct.acpi_bit_register_info]* @acpi_gbl_bit_register_info, i64 0, i64 %idxprom, !dbg !572
  store %struct.acpi_bit_register_info* %arrayidx, %struct.acpi_bit_register_info** %retval, align 8, !dbg !573
  br label %return, !dbg !573

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %retval, align 8, !dbg !574
  ret %struct.acpi_bit_register_info* %3, !dbg !574
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_write_pm1_control(i32 %pm1a_control, i32 %pm1b_control) #0 !dbg !575 {
entry:
  %retval = alloca i32, align 4
  %pm1a_control.addr = alloca i32, align 4
  %pm1b_control.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 %pm1a_control, i32* %pm1a_control.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pm1a_control.addr, metadata !576, metadata !DIExpression()), !dbg !577
  store i32 %pm1b_control, i32* %pm1b_control.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pm1b_control.addr, metadata !578, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.declare(metadata i32* %status, metadata !580, metadata !DIExpression()), !dbg !581
  %0 = load i32, i32* %pm1a_control.addr, align 4, !dbg !582
  %conv = zext i32 %0 to i64, !dbg !582
  %call = call i32 @acpi_hw_write(i64 %conv, %struct.acpi_generic_address* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 47)) #5, !dbg !583
  store i32 %call, i32* %status, align 4, !dbg !584
  %1 = load i32, i32* %status, align 4, !dbg !585
  %tobool = icmp ne i32 %1, 0, !dbg !585
  br i1 %tobool, label %if.then, label %if.end, !dbg !587

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !588
  store i32 %2, i32* %retval, align 4, !dbg !588
  br label %return, !dbg !588

if.end:                                           ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 48, i32 4), align 1, !dbg !590
  %tobool1 = icmp ne i64 %3, 0, !dbg !592
  br i1 %tobool1, label %if.then2, label %if.end5, !dbg !593

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* %pm1b_control.addr, align 4, !dbg !594
  %conv3 = zext i32 %4 to i64, !dbg !594
  %call4 = call i32 @acpi_hw_write(i64 %conv3, %struct.acpi_generic_address* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 48)) #5, !dbg !596
  store i32 %call4, i32* %status, align 4, !dbg !597
  br label %if.end5, !dbg !598

if.end5:                                          ; preds = %if.then2, %if.end
  %5 = load i32, i32* %status, align 4, !dbg !599
  store i32 %5, i32* %retval, align 4, !dbg !599
  br label %return, !dbg !599

return:                                           ; preds = %if.end5, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !600
  ret i32 %6, !dbg !600
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_register_read(i32 %register_id, i32* %return_value) #0 !dbg !601 {
entry:
  %register_id.addr = alloca i32, align 4
  %return_value.addr = alloca i32*, align 8
  %value = alloca i32, align 4
  %value64 = alloca i64, align 8
  %status = alloca i32, align 4
  store i32 %register_id, i32* %register_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %register_id.addr, metadata !605, metadata !DIExpression()), !dbg !606
  store i32* %return_value, i32** %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %return_value.addr, metadata !607, metadata !DIExpression()), !dbg !608
  call void @llvm.dbg.declare(metadata i32* %value, metadata !609, metadata !DIExpression()), !dbg !610
  store i32 0, i32* %value, align 4, !dbg !610
  call void @llvm.dbg.declare(metadata i64* %value64, metadata !611, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.declare(metadata i32* %status, metadata !613, metadata !DIExpression()), !dbg !614
  %0 = load i32, i32* %register_id.addr, align 4, !dbg !615
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
    i32 4, label %sw.bb5
    i32 5, label %sw.bb7
    i32 7, label %sw.bb13
  ], !dbg !616

sw.bb:                                            ; preds = %entry
  %call = call i32 @acpi_hw_read_multiple(i32* %value, %struct.acpi_generic_address* @acpi_gbl_xpm1a_status, %struct.acpi_generic_address* @acpi_gbl_xpm1b_status) #5, !dbg !617
  store i32 %call, i32* %status, align 4, !dbg !619
  br label %sw.epilog, !dbg !620

sw.bb1:                                           ; preds = %entry
  %call2 = call i32 @acpi_hw_read_multiple(i32* %value, %struct.acpi_generic_address* @acpi_gbl_xpm1a_enable, %struct.acpi_generic_address* @acpi_gbl_xpm1b_enable) #5, !dbg !621
  store i32 %call2, i32* %status, align 4, !dbg !622
  br label %sw.epilog, !dbg !623

sw.bb3:                                           ; preds = %entry
  %call4 = call i32 @acpi_hw_read_multiple(i32* %value, %struct.acpi_generic_address* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 47), %struct.acpi_generic_address* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 48)) #5, !dbg !624
  store i32 %call4, i32* %status, align 4, !dbg !625
  %1 = load i32, i32* %value, align 4, !dbg !626
  %and = and i32 %1, -8197, !dbg !626
  store i32 %and, i32* %value, align 4, !dbg !626
  br label %sw.epilog, !dbg !627

sw.bb5:                                           ; preds = %entry
  %call6 = call i32 @acpi_hw_read(i64* %value64, %struct.acpi_generic_address* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 49)) #5, !dbg !628
  store i32 %call6, i32* %status, align 4, !dbg !629
  %2 = load i32, i32* %status, align 4, !dbg !630
  %tobool = icmp ne i32 %2, 0, !dbg !630
  br i1 %tobool, label %if.end, label %if.then, !dbg !632

if.then:                                          ; preds = %sw.bb5
  %3 = load i64, i64* %value64, align 8, !dbg !633
  %conv = trunc i64 %3 to i32, !dbg !635
  store i32 %conv, i32* %value, align 4, !dbg !636
  br label %if.end, !dbg !637

if.end:                                           ; preds = %if.then, %sw.bb5
  br label %sw.epilog, !dbg !638

sw.bb7:                                           ; preds = %entry
  %call8 = call i32 @acpi_hw_read(i64* %value64, %struct.acpi_generic_address* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 50)) #5, !dbg !639
  store i32 %call8, i32* %status, align 4, !dbg !640
  %4 = load i32, i32* %status, align 4, !dbg !641
  %tobool9 = icmp ne i32 %4, 0, !dbg !641
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !643

if.then10:                                        ; preds = %sw.bb7
  %5 = load i64, i64* %value64, align 8, !dbg !644
  %conv11 = trunc i64 %5 to i32, !dbg !646
  store i32 %conv11, i32* %value, align 4, !dbg !647
  br label %if.end12, !dbg !648

if.end12:                                         ; preds = %if.then10, %sw.bb7
  br label %sw.epilog, !dbg !649

sw.bb13:                                          ; preds = %entry
  %6 = load i32, i32* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 6), align 1, !dbg !650
  %conv14 = zext i32 %6 to i64, !dbg !651
  %call15 = call i32 @acpi_hw_read_port(i64 %conv14, i32* %value, i32 8) #5, !dbg !652
  store i32 %call15, i32* %status, align 4, !dbg !653
  br label %sw.epilog, !dbg !654

sw.default:                                       ; preds = %entry
  %7 = load i32, i32* %register_id.addr, align 4, !dbg !655
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 553, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %7) #5, !dbg !655
  store i32 4097, i32* %status, align 4, !dbg !656
  br label %sw.epilog, !dbg !657

sw.epilog:                                        ; preds = %sw.default, %sw.bb13, %if.end12, %if.end, %sw.bb3, %sw.bb1, %sw.bb
  %8 = load i32, i32* %status, align 4, !dbg !658
  %tobool16 = icmp ne i32 %8, 0, !dbg !658
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !660

if.then17:                                        ; preds = %sw.epilog
  %9 = load i32, i32* %value, align 4, !dbg !661
  %10 = load i32*, i32** %return_value.addr, align 8, !dbg !663
  store i32 %9, i32* %10, align 4, !dbg !664
  br label %if.end18, !dbg !665

if.end18:                                         ; preds = %if.then17, %sw.epilog
  %11 = load i32, i32* %status, align 4, !dbg !666
  ret i32 %11, !dbg !666
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_hw_read_multiple(i32* %value, %struct.acpi_generic_address* %register_a, %struct.acpi_generic_address* %register_b) #0 !dbg !667 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i32*, align 8
  %register_a.addr = alloca %struct.acpi_generic_address*, align 8
  %register_b.addr = alloca %struct.acpi_generic_address*, align 8
  %value_a = alloca i32, align 4
  %value_b = alloca i32, align 4
  %value64 = alloca i64, align 8
  %status = alloca i32, align 4
  store i32* %value, i32** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %value.addr, metadata !670, metadata !DIExpression()), !dbg !671
  store %struct.acpi_generic_address* %register_a, %struct.acpi_generic_address** %register_a.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_generic_address** %register_a.addr, metadata !672, metadata !DIExpression()), !dbg !673
  store %struct.acpi_generic_address* %register_b, %struct.acpi_generic_address** %register_b.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_generic_address** %register_b.addr, metadata !674, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.declare(metadata i32* %value_a, metadata !676, metadata !DIExpression()), !dbg !677
  store i32 0, i32* %value_a, align 4, !dbg !677
  call void @llvm.dbg.declare(metadata i32* %value_b, metadata !678, metadata !DIExpression()), !dbg !679
  store i32 0, i32* %value_b, align 4, !dbg !679
  call void @llvm.dbg.declare(metadata i64* %value64, metadata !680, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.declare(metadata i32* %status, metadata !682, metadata !DIExpression()), !dbg !683
  %0 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %register_a.addr, align 8, !dbg !684
  %call = call i32 @acpi_hw_read(i64* %value64, %struct.acpi_generic_address* %0) #5, !dbg !685
  store i32 %call, i32* %status, align 4, !dbg !686
  %1 = load i32, i32* %status, align 4, !dbg !687
  %tobool = icmp ne i32 %1, 0, !dbg !687
  br i1 %tobool, label %if.then, label %if.end, !dbg !689

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !690
  store i32 %2, i32* %retval, align 4, !dbg !692
  br label %return, !dbg !692

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %value64, align 8, !dbg !693
  %conv = trunc i64 %3 to i32, !dbg !694
  store i32 %conv, i32* %value_a, align 4, !dbg !695
  %4 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %register_b.addr, align 8, !dbg !696
  %address = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %4, i32 0, i32 4, !dbg !698
  %5 = load i64, i64* %address, align 1, !dbg !698
  %tobool1 = icmp ne i64 %5, 0, !dbg !696
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !699

if.then2:                                         ; preds = %if.end
  %6 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %register_b.addr, align 8, !dbg !700
  %call3 = call i32 @acpi_hw_read(i64* %value64, %struct.acpi_generic_address* %6) #5, !dbg !702
  store i32 %call3, i32* %status, align 4, !dbg !703
  %7 = load i32, i32* %status, align 4, !dbg !704
  %tobool4 = icmp ne i32 %7, 0, !dbg !704
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !706

if.then5:                                         ; preds = %if.then2
  %8 = load i32, i32* %status, align 4, !dbg !707
  store i32 %8, i32* %retval, align 4, !dbg !709
  br label %return, !dbg !709

if.end6:                                          ; preds = %if.then2
  %9 = load i64, i64* %value64, align 8, !dbg !710
  %conv7 = trunc i64 %9 to i32, !dbg !711
  store i32 %conv7, i32* %value_b, align 4, !dbg !712
  br label %if.end8, !dbg !713

if.end8:                                          ; preds = %if.end6, %if.end
  %10 = load i32, i32* %value_a, align 4, !dbg !714
  %11 = load i32, i32* %value_b, align 4, !dbg !715
  %or = or i32 %10, %11, !dbg !716
  %12 = load i32*, i32** %value.addr, align 8, !dbg !717
  store i32 %or, i32* %12, align 4, !dbg !718
  store i32 0, i32* %retval, align 4, !dbg !719
  br label %return, !dbg !719

return:                                           ; preds = %if.end8, %if.then5, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !720
  ret i32 %13, !dbg !720
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_hw_write_multiple(i32 %value, %struct.acpi_generic_address* %register_a, %struct.acpi_generic_address* %register_b) #0 !dbg !721 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %register_a.addr = alloca %struct.acpi_generic_address*, align 8
  %register_b.addr = alloca %struct.acpi_generic_address*, align 8
  %status = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !724, metadata !DIExpression()), !dbg !725
  store %struct.acpi_generic_address* %register_a, %struct.acpi_generic_address** %register_a.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_generic_address** %register_a.addr, metadata !726, metadata !DIExpression()), !dbg !727
  store %struct.acpi_generic_address* %register_b, %struct.acpi_generic_address** %register_b.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_generic_address** %register_b.addr, metadata !728, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.declare(metadata i32* %status, metadata !730, metadata !DIExpression()), !dbg !731
  %0 = load i32, i32* %value.addr, align 4, !dbg !732
  %conv = zext i32 %0 to i64, !dbg !732
  %1 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %register_a.addr, align 8, !dbg !733
  %call = call i32 @acpi_hw_write(i64 %conv, %struct.acpi_generic_address* %1) #5, !dbg !734
  store i32 %call, i32* %status, align 4, !dbg !735
  %2 = load i32, i32* %status, align 4, !dbg !736
  %tobool = icmp ne i32 %2, 0, !dbg !736
  br i1 %tobool, label %if.then, label %if.end, !dbg !738

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !739
  store i32 %3, i32* %retval, align 4, !dbg !741
  br label %return, !dbg !741

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %register_b.addr, align 8, !dbg !742
  %address = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %4, i32 0, i32 4, !dbg !744
  %5 = load i64, i64* %address, align 1, !dbg !744
  %tobool1 = icmp ne i64 %5, 0, !dbg !742
  br i1 %tobool1, label %if.then2, label %if.end5, !dbg !745

if.then2:                                         ; preds = %if.end
  %6 = load i32, i32* %value.addr, align 4, !dbg !746
  %conv3 = zext i32 %6 to i64, !dbg !746
  %7 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %register_b.addr, align 8, !dbg !748
  %call4 = call i32 @acpi_hw_write(i64 %conv3, %struct.acpi_generic_address* %7) #5, !dbg !749
  store i32 %call4, i32* %status, align 4, !dbg !750
  br label %if.end5, !dbg !751

if.end5:                                          ; preds = %if.then2, %if.end
  %8 = load i32, i32* %status, align 4, !dbg !752
  store i32 %8, i32* %retval, align 4, !dbg !753
  br label %return, !dbg !753

return:                                           ; preds = %if.end5, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !754
  ret i32 %9, !dbg !754
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !755 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !759, metadata !DIExpression()), !dbg !760
  %call = call i64 @arch_local_save_flags() #5, !dbg !761
  store i64 %call, i64* %f, align 8, !dbg !762
  call void @arch_local_irq_disable() #5, !dbg !763
  %0 = load i64, i64* %f, align 8, !dbg !764
  ret i64 %0, !dbg !765
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !766 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !767, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !770, metadata !DIExpression()), !dbg !769
  %0 = load i64, i64* %__edi, align 8, !dbg !769
  store i64 %0, i64* %__edi, align 8, !dbg !769
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !771, metadata !DIExpression()), !dbg !769
  %1 = load i64, i64* %__esi, align 8, !dbg !769
  store i64 %1, i64* %__esi, align 8, !dbg !769
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !772, metadata !DIExpression()), !dbg !769
  %2 = load i64, i64* %__edx, align 8, !dbg !769
  store i64 %2, i64* %__edx, align 8, !dbg !769
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !773, metadata !DIExpression()), !dbg !769
  %3 = load i64, i64* %__ecx, align 8, !dbg !769
  store i64 %3, i64* %__ecx, align 8, !dbg !769
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !774, metadata !DIExpression()), !dbg !769
  %4 = load i64, i64* %__eax, align 8, !dbg !769
  store i64 %4, i64* %__eax, align 8, !dbg !769
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !769
  %6 = call i64 @llvm.read_register.i64(metadata !35), !dbg !775
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #4, !dbg !775, !srcloc !778
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !775
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !775
  store i64 %asmresult, i64* %__eax, align 8, !dbg !775
  call void @llvm.write_register.i64(metadata !35, i64 %asmresult1), !dbg !775
  %8 = load i64, i64* %__eax, align 8, !dbg !775
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !779, metadata !DIExpression()), !dbg !781
  store i64 -1, i64* %__mask, align 8, !dbg !781
  %9 = load i64, i64* %__mask, align 8, !dbg !781
  store i64 %9, i64* %tmp, align 8, !dbg !781
  %10 = load i64, i64* %tmp, align 8, !dbg !781
  %and = and i64 %8, %10, !dbg !775
  store i64 %and, i64* %__ret, align 8, !dbg !775
  %11 = load i64, i64* %__ret, align 8, !dbg !769
  store i64 %11, i64* %tmp2, align 8, !dbg !782
  %12 = load i64, i64* %tmp2, align 8, !dbg !769
  ret i64 %12, !dbg !783
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !784 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !787, metadata !DIExpression()), !dbg !789
  %0 = load i64, i64* %__edi, align 8, !dbg !789
  store i64 %0, i64* %__edi, align 8, !dbg !789
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !790, metadata !DIExpression()), !dbg !789
  %1 = load i64, i64* %__esi, align 8, !dbg !789
  store i64 %1, i64* %__esi, align 8, !dbg !789
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !791, metadata !DIExpression()), !dbg !789
  %2 = load i64, i64* %__edx, align 8, !dbg !789
  store i64 %2, i64* %__edx, align 8, !dbg !789
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !792, metadata !DIExpression()), !dbg !789
  %3 = load i64, i64* %__ecx, align 8, !dbg !789
  store i64 %3, i64* %__ecx, align 8, !dbg !789
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !793, metadata !DIExpression()), !dbg !789
  %4 = load i64, i64* %__eax, align 8, !dbg !789
  store i64 %4, i64* %__eax, align 8, !dbg !789
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !789
  %6 = call i64 @llvm.read_register.i64(metadata !35), !dbg !789
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #4, !dbg !789, !srcloc !794
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !789
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !789
  store i64 %asmresult, i64* %__eax, align 8, !dbg !789
  call void @llvm.write_register.i64(metadata !35, i64 %asmresult1), !dbg !789
  ret void, !dbg !795
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #3

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !796 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !799, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !801, metadata !DIExpression()), !dbg !803
  %0 = load i64, i64* %__edi, align 8, !dbg !803
  store i64 %0, i64* %__edi, align 8, !dbg !803
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !804, metadata !DIExpression()), !dbg !803
  %1 = load i64, i64* %__esi, align 8, !dbg !803
  store i64 %1, i64* %__esi, align 8, !dbg !803
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !805, metadata !DIExpression()), !dbg !803
  %2 = load i64, i64* %__edx, align 8, !dbg !803
  store i64 %2, i64* %__edx, align 8, !dbg !803
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !806, metadata !DIExpression()), !dbg !803
  %3 = load i64, i64* %__ecx, align 8, !dbg !803
  store i64 %3, i64* %__ecx, align 8, !dbg !803
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !807, metadata !DIExpression()), !dbg !803
  %4 = load i64, i64* %__eax, align 8, !dbg !803
  store i64 %4, i64* %__eax, align 8, !dbg !803
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !803
  %6 = call i64 @llvm.read_register.i64(metadata !35), !dbg !803
  %7 = load i64, i64* %f.addr, align 8, !dbg !803
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #4, !dbg !803, !srcloc !808
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !803
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !803
  store i64 %asmresult, i64* %__eax, align 8, !dbg !803
  call void @llvm.write_register.i64(metadata !35, i64 %asmresult1), !dbg !803
  ret void, !dbg !809
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!35}
!llvm.module.flags = !{!36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 14, type: !30, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !29, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/hwregs.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !13, !17, !18, !22, !23, !8, !24, !14, !19, !25, !28}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !16)
!16 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !7, line: 805, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !21)
!21 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !7, line: 127, baseType: !14)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !14)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !14)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !27)
!27 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!28 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !{!0}
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 56, elements: !33)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !{!34}
!34 = !DISubrange(count: 7)
!35 = !{!"rsp"}
!36 = !{i32 7, !"Dwarf Version", i32 4}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"Code Model", i32 2}
!40 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!41 = distinct !DISubprogram(name: "acpi_hw_validate_register", scope: !3, file: !3, line: 122, type: !42, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!42 = !DISubroutineType(types: !43)
!43 = !{!6, !44, !19, !13}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_generic_address", file: !46, line: 90, size: 96, elements: !47)
!46 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !45, file: !46, line: 91, baseType: !19, size: 8)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !45, file: !46, line: 92, baseType: !19, size: 8, offset: 8)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !45, file: !46, line: 93, baseType: !19, size: 8, offset: 16)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "access_width", scope: !45, file: !46, line: 94, baseType: !19, size: 8, offset: 24)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !45, file: !46, line: 95, baseType: !14, size: 64, offset: 32)
!53 = !DILocalVariable(name: "reg", arg: 1, scope: !41, file: !3, line: 122, type: !44)
!54 = !DILocation(line: 122, column: 56, scope: !41)
!55 = !DILocalVariable(name: "max_bit_width", arg: 2, scope: !41, file: !3, line: 123, type: !19)
!56 = !DILocation(line: 123, column: 9, scope: !41)
!57 = !DILocalVariable(name: "address", arg: 3, scope: !41, file: !3, line: 123, type: !13)
!58 = !DILocation(line: 123, column: 29, scope: !41)
!59 = !DILocalVariable(name: "bit_width", scope: !41, file: !3, line: 125, type: !19)
!60 = !DILocation(line: 125, column: 5, scope: !41)
!61 = !DILocalVariable(name: "access_width", scope: !41, file: !3, line: 126, type: !19)
!62 = !DILocation(line: 126, column: 5, scope: !41)
!63 = !DILocation(line: 130, column: 7, scope: !64)
!64 = distinct !DILexicalBlock(scope: !41, file: !3, line: 130, column: 6)
!65 = !DILocation(line: 130, column: 6, scope: !41)
!66 = !DILocation(line: 131, column: 3, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !3, line: 130, column: 12)
!68 = !DILocation(line: 139, column: 2, scope: !41)
!69 = !DILocation(line: 140, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !41, file: !3, line: 140, column: 6)
!71 = !DILocation(line: 140, column: 8, scope: !70)
!72 = !DILocation(line: 140, column: 7, scope: !70)
!73 = !DILocation(line: 140, column: 6, scope: !41)
!74 = !DILocation(line: 141, column: 3, scope: !75)
!75 = distinct !DILexicalBlock(scope: !70, file: !3, line: 140, column: 19)
!76 = !DILocation(line: 146, column: 7, scope: !77)
!77 = distinct !DILexicalBlock(scope: !41, file: !3, line: 146, column: 6)
!78 = !DILocation(line: 146, column: 12, scope: !77)
!79 = !DILocation(line: 146, column: 21, scope: !77)
!80 = !DILocation(line: 146, column: 54, scope: !77)
!81 = !DILocation(line: 147, column: 7, scope: !77)
!82 = !DILocation(line: 147, column: 12, scope: !77)
!83 = !DILocation(line: 147, column: 21, scope: !77)
!84 = !DILocation(line: 146, column: 6, scope: !41)
!85 = !DILocation(line: 148, column: 3, scope: !86)
!86 = distinct !DILexicalBlock(scope: !77, file: !3, line: 147, column: 51)
!87 = !DILocation(line: 150, column: 3, scope: !86)
!88 = !DILocation(line: 155, column: 6, scope: !89)
!89 = distinct !DILexicalBlock(scope: !41, file: !3, line: 155, column: 6)
!90 = !DILocation(line: 155, column: 11, scope: !89)
!91 = !DILocation(line: 155, column: 24, scope: !89)
!92 = !DILocation(line: 155, column: 6, scope: !41)
!93 = !DILocation(line: 156, column: 3, scope: !94)
!94 = distinct !DILexicalBlock(scope: !89, file: !3, line: 155, column: 29)
!95 = !DILocation(line: 159, column: 3, scope: !94)
!96 = !DILocation(line: 165, column: 36, scope: !41)
!97 = !DILocation(line: 165, column: 35, scope: !41)
!98 = !DILocation(line: 165, column: 45, scope: !41)
!99 = !DILocation(line: 165, column: 50, scope: !41)
!100 = !DILocation(line: 165, column: 6, scope: !41)
!101 = !DILocation(line: 164, column: 15, scope: !41)
!102 = !DILocation(line: 167, column: 6, scope: !41)
!103 = !DILocation(line: 166, column: 12, scope: !41)
!104 = !DILocation(line: 168, column: 6, scope: !105)
!105 = distinct !DILexicalBlock(scope: !41, file: !3, line: 168, column: 6)
!106 = !DILocation(line: 168, column: 22, scope: !105)
!107 = !DILocation(line: 168, column: 20, scope: !105)
!108 = !DILocation(line: 168, column: 6, scope: !41)
!109 = !DILocation(line: 169, column: 3, scope: !110)
!110 = distinct !DILexicalBlock(scope: !105, file: !3, line: 168, column: 33)
!111 = !DILocation(line: 172, column: 3, scope: !110)
!112 = !DILocation(line: 175, column: 2, scope: !41)
!113 = !DILocation(line: 176, column: 1, scope: !41)
!114 = distinct !DISubprogram(name: "acpi_hw_get_access_bit_width", scope: !3, file: !3, line: 50, type: !115, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!115 = !DISubroutineType(types: !116)
!116 = !{!19, !14, !44, !19}
!117 = !DILocalVariable(name: "address", arg: 1, scope: !114, file: !3, line: 50, type: !14)
!118 = !DILocation(line: 50, column: 34, scope: !114)
!119 = !DILocalVariable(name: "reg", arg: 2, scope: !114, file: !3, line: 51, type: !44)
!120 = !DILocation(line: 51, column: 38, scope: !114)
!121 = !DILocalVariable(name: "max_bit_width", arg: 3, scope: !114, file: !3, line: 51, type: !19)
!122 = !DILocation(line: 51, column: 46, scope: !114)
!123 = !DILocalVariable(name: "access_bit_width", scope: !114, file: !3, line: 53, type: !19)
!124 = !DILocation(line: 53, column: 5, scope: !114)
!125 = !DILocation(line: 69, column: 7, scope: !126)
!126 = distinct !DILexicalBlock(scope: !114, file: !3, line: 69, column: 6)
!127 = !DILocation(line: 69, column: 12, scope: !126)
!128 = !DILocation(line: 69, column: 23, scope: !126)
!129 = !DILocation(line: 69, column: 26, scope: !126)
!130 = !DILocation(line: 69, column: 31, scope: !126)
!131 = !DILocation(line: 69, column: 41, scope: !126)
!132 = !DILocation(line: 70, column: 6, scope: !126)
!133 = !DILocation(line: 70, column: 43, scope: !126)
!134 = !DILocation(line: 71, column: 6, scope: !126)
!135 = !DILocation(line: 69, column: 6, scope: !114)
!136 = !DILocation(line: 72, column: 22, scope: !137)
!137 = distinct !DILexicalBlock(scope: !126, file: !3, line: 71, column: 42)
!138 = !DILocation(line: 72, column: 27, scope: !137)
!139 = !DILocation(line: 72, column: 20, scope: !137)
!140 = !DILocation(line: 73, column: 2, scope: !137)
!141 = !DILocation(line: 73, column: 13, scope: !142)
!142 = distinct !DILexicalBlock(scope: !126, file: !3, line: 73, column: 13)
!143 = !DILocation(line: 73, column: 18, scope: !142)
!144 = !DILocation(line: 73, column: 13, scope: !126)
!145 = !DILocation(line: 74, column: 22, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !3, line: 73, column: 32)
!147 = !DILocation(line: 74, column: 20, scope: !146)
!148 = !DILocation(line: 75, column: 2, scope: !146)
!149 = !DILocation(line: 77, column: 7, scope: !150)
!150 = distinct !DILexicalBlock(scope: !142, file: !3, line: 75, column: 9)
!151 = !DILocation(line: 76, column: 20, scope: !150)
!152 = !DILocation(line: 79, column: 7, scope: !153)
!153 = distinct !DILexicalBlock(scope: !150, file: !3, line: 79, column: 7)
!154 = !DILocation(line: 79, column: 24, scope: !153)
!155 = !DILocation(line: 79, column: 7, scope: !150)
!156 = !DILocation(line: 80, column: 21, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !3, line: 79, column: 30)
!158 = !DILocation(line: 81, column: 3, scope: !157)
!159 = !DILocation(line: 82, column: 4, scope: !160)
!160 = distinct !DILexicalBlock(scope: !153, file: !3, line: 81, column: 10)
!161 = !DILocation(line: 82, column: 12, scope: !160)
!162 = !DILocation(line: 82, column: 11, scope: !160)
!163 = !DILocation(line: 83, column: 22, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !3, line: 82, column: 61)
!165 = distinct !{!165, !159, !166}
!166 = !DILocation(line: 84, column: 4, scope: !160)
!167 = !DILocation(line: 90, column: 6, scope: !168)
!168 = distinct !DILexicalBlock(scope: !114, file: !3, line: 90, column: 6)
!169 = !DILocation(line: 90, column: 11, scope: !168)
!170 = !DILocation(line: 90, column: 20, scope: !168)
!171 = !DILocation(line: 90, column: 6, scope: !114)
!172 = !DILocation(line: 91, column: 17, scope: !173)
!173 = distinct !DILexicalBlock(scope: !168, file: !3, line: 90, column: 49)
!174 = !DILocation(line: 92, column: 2, scope: !173)
!175 = !DILocation(line: 99, column: 6, scope: !176)
!176 = distinct !DILexicalBlock(scope: !114, file: !3, line: 99, column: 6)
!177 = !DILocation(line: 99, column: 25, scope: !176)
!178 = !DILocation(line: 99, column: 23, scope: !176)
!179 = !DILocation(line: 99, column: 6, scope: !114)
!180 = !DILocation(line: 100, column: 11, scope: !181)
!181 = distinct !DILexicalBlock(scope: !176, file: !3, line: 99, column: 40)
!182 = !DILocation(line: 100, column: 3, scope: !181)
!183 = !DILocation(line: 102, column: 10, scope: !114)
!184 = !DILocation(line: 102, column: 2, scope: !114)
!185 = !DILocation(line: 103, column: 1, scope: !114)
!186 = distinct !DISubprogram(name: "acpi_hw_read", scope: !3, file: !3, line: 195, type: !187, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!187 = !DISubroutineType(types: !188)
!188 = !{!6, !13, !44}
!189 = !DILocalVariable(name: "value", arg: 1, scope: !186, file: !3, line: 195, type: !13)
!190 = !DILocation(line: 195, column: 31, scope: !186)
!191 = !DILocalVariable(name: "reg", arg: 2, scope: !186, file: !3, line: 195, type: !44)
!192 = !DILocation(line: 195, column: 67, scope: !186)
!193 = !DILocalVariable(name: "address", scope: !186, file: !3, line: 197, type: !14)
!194 = !DILocation(line: 197, column: 6, scope: !186)
!195 = !DILocalVariable(name: "access_width", scope: !186, file: !3, line: 198, type: !19)
!196 = !DILocation(line: 198, column: 5, scope: !186)
!197 = !DILocalVariable(name: "bit_width", scope: !186, file: !3, line: 199, type: !8)
!198 = !DILocation(line: 199, column: 6, scope: !186)
!199 = !DILocalVariable(name: "bit_offset", scope: !186, file: !3, line: 200, type: !19)
!200 = !DILocation(line: 200, column: 5, scope: !186)
!201 = !DILocalVariable(name: "value64", scope: !186, file: !3, line: 201, type: !14)
!202 = !DILocation(line: 201, column: 6, scope: !186)
!203 = !DILocalVariable(name: "value32", scope: !186, file: !3, line: 202, type: !8)
!204 = !DILocation(line: 202, column: 6, scope: !186)
!205 = !DILocalVariable(name: "index", scope: !186, file: !3, line: 203, type: !19)
!206 = !DILocation(line: 203, column: 5, scope: !186)
!207 = !DILocalVariable(name: "status", scope: !186, file: !3, line: 204, type: !6)
!208 = !DILocation(line: 204, column: 14, scope: !186)
!209 = !DILocation(line: 210, column: 37, scope: !186)
!210 = !DILocation(line: 210, column: 11, scope: !186)
!211 = !DILocation(line: 210, column: 9, scope: !186)
!212 = !DILocation(line: 211, column: 6, scope: !213)
!213 = distinct !DILexicalBlock(scope: !186, file: !3, line: 211, column: 6)
!214 = !DILocation(line: 211, column: 6, scope: !186)
!215 = !DILocation(line: 212, column: 11, scope: !216)
!216 = distinct !DILexicalBlock(scope: !213, file: !3, line: 211, column: 28)
!217 = !DILocation(line: 212, column: 3, scope: !216)
!218 = !DILocation(line: 219, column: 3, scope: !186)
!219 = !DILocation(line: 219, column: 9, scope: !186)
!220 = !DILocation(line: 220, column: 46, scope: !186)
!221 = !DILocation(line: 220, column: 55, scope: !186)
!222 = !DILocation(line: 220, column: 17, scope: !186)
!223 = !DILocation(line: 220, column: 15, scope: !186)
!224 = !DILocation(line: 221, column: 14, scope: !186)
!225 = !DILocation(line: 221, column: 19, scope: !186)
!226 = !DILocation(line: 221, column: 32, scope: !186)
!227 = !DILocation(line: 221, column: 37, scope: !186)
!228 = !DILocation(line: 221, column: 30, scope: !186)
!229 = !DILocation(line: 221, column: 12, scope: !186)
!230 = !DILocation(line: 222, column: 15, scope: !186)
!231 = !DILocation(line: 222, column: 20, scope: !186)
!232 = !DILocation(line: 222, column: 13, scope: !186)
!233 = !DILocation(line: 228, column: 8, scope: !186)
!234 = !DILocation(line: 229, column: 2, scope: !186)
!235 = !DILocation(line: 229, column: 9, scope: !186)
!236 = !DILocation(line: 230, column: 7, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !3, line: 230, column: 7)
!238 = distinct !DILexicalBlock(scope: !186, file: !3, line: 229, column: 20)
!239 = !DILocation(line: 230, column: 21, scope: !237)
!240 = !DILocation(line: 230, column: 18, scope: !237)
!241 = !DILocation(line: 230, column: 7, scope: !238)
!242 = !DILocation(line: 231, column: 12, scope: !243)
!243 = distinct !DILexicalBlock(scope: !237, file: !3, line: 230, column: 35)
!244 = !DILocation(line: 232, column: 18, scope: !243)
!245 = !DILocation(line: 232, column: 15, scope: !243)
!246 = !DILocation(line: 233, column: 3, scope: !243)
!247 = !DILocation(line: 234, column: 8, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !3, line: 234, column: 8)
!249 = distinct !DILexicalBlock(scope: !237, file: !3, line: 233, column: 10)
!250 = !DILocation(line: 234, column: 13, scope: !248)
!251 = !DILocation(line: 234, column: 22, scope: !248)
!252 = !DILocation(line: 234, column: 8, scope: !249)
!253 = !DILocation(line: 237, column: 8, scope: !254)
!254 = distinct !DILexicalBlock(scope: !248, file: !3, line: 234, column: 55)
!255 = !DILocation(line: 238, column: 8, scope: !254)
!256 = !DILocation(line: 239, column: 8, scope: !254)
!257 = !DILocation(line: 238, column: 14, scope: !254)
!258 = !DILocation(line: 237, column: 16, scope: !254)
!259 = !DILocation(line: 241, column: 18, scope: !254)
!260 = !DILocation(line: 236, column: 9, scope: !254)
!261 = !DILocation(line: 235, column: 12, scope: !254)
!262 = !DILocation(line: 242, column: 4, scope: !254)
!263 = !DILocation(line: 245, column: 11, scope: !264)
!264 = distinct !DILexicalBlock(scope: !248, file: !3, line: 242, column: 11)
!265 = !DILocation(line: 246, column: 11, scope: !264)
!266 = !DILocation(line: 247, column: 11, scope: !264)
!267 = !DILocation(line: 246, column: 17, scope: !264)
!268 = !DILocation(line: 245, column: 19, scope: !264)
!269 = !DILocation(line: 250, column: 11, scope: !264)
!270 = !DILocation(line: 244, column: 14, scope: !264)
!271 = !DILocation(line: 244, column: 12, scope: !264)
!272 = !DILocation(line: 251, column: 20, scope: !264)
!273 = !DILocation(line: 251, column: 15, scope: !264)
!274 = !DILocation(line: 251, column: 13, scope: !264)
!275 = !DILocation(line: 259, column: 3, scope: !238)
!276 = !DILocation(line: 263, column: 7, scope: !238)
!277 = !DILocation(line: 263, column: 19, scope: !238)
!278 = !DILocation(line: 263, column: 17, scope: !238)
!279 = !DILocation(line: 263, column: 34, scope: !238)
!280 = !DILocation(line: 263, column: 49, scope: !238)
!281 = !DILocation(line: 262, column: 13, scope: !238)
!282 = !DILocation(line: 264, column: 8, scope: !238)
!283 = distinct !{!283, !234, !284}
!284 = !DILocation(line: 265, column: 2, scope: !186)
!285 = !DILocation(line: 273, column: 10, scope: !186)
!286 = !DILocation(line: 273, column: 2, scope: !186)
!287 = !DILocation(line: 274, column: 1, scope: !186)
!288 = distinct !DISubprogram(name: "acpi_hw_write", scope: !3, file: !3, line: 290, type: !289, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!289 = !DISubroutineType(types: !290)
!290 = !{!6, !14, !44}
!291 = !DILocalVariable(name: "value", arg: 1, scope: !288, file: !3, line: 290, type: !14)
!292 = !DILocation(line: 290, column: 31, scope: !288)
!293 = !DILocalVariable(name: "reg", arg: 2, scope: !288, file: !3, line: 290, type: !44)
!294 = !DILocation(line: 290, column: 67, scope: !288)
!295 = !DILocalVariable(name: "address", scope: !288, file: !3, line: 292, type: !14)
!296 = !DILocation(line: 292, column: 6, scope: !288)
!297 = !DILocalVariable(name: "access_width", scope: !288, file: !3, line: 293, type: !19)
!298 = !DILocation(line: 293, column: 5, scope: !288)
!299 = !DILocalVariable(name: "bit_width", scope: !288, file: !3, line: 294, type: !8)
!300 = !DILocation(line: 294, column: 6, scope: !288)
!301 = !DILocalVariable(name: "bit_offset", scope: !288, file: !3, line: 295, type: !19)
!302 = !DILocation(line: 295, column: 5, scope: !288)
!303 = !DILocalVariable(name: "value64", scope: !288, file: !3, line: 296, type: !14)
!304 = !DILocation(line: 296, column: 6, scope: !288)
!305 = !DILocalVariable(name: "index", scope: !288, file: !3, line: 297, type: !19)
!306 = !DILocation(line: 297, column: 5, scope: !288)
!307 = !DILocalVariable(name: "status", scope: !288, file: !3, line: 298, type: !6)
!308 = !DILocation(line: 298, column: 14, scope: !288)
!309 = !DILocation(line: 304, column: 37, scope: !288)
!310 = !DILocation(line: 304, column: 11, scope: !288)
!311 = !DILocation(line: 304, column: 9, scope: !288)
!312 = !DILocation(line: 305, column: 6, scope: !313)
!313 = distinct !DILexicalBlock(scope: !288, file: !3, line: 305, column: 6)
!314 = !DILocation(line: 305, column: 6, scope: !288)
!315 = !DILocation(line: 306, column: 11, scope: !316)
!316 = distinct !DILexicalBlock(scope: !313, file: !3, line: 305, column: 28)
!317 = !DILocation(line: 306, column: 3, scope: !316)
!318 = !DILocation(line: 311, column: 46, scope: !288)
!319 = !DILocation(line: 311, column: 55, scope: !288)
!320 = !DILocation(line: 311, column: 17, scope: !288)
!321 = !DILocation(line: 311, column: 15, scope: !288)
!322 = !DILocation(line: 312, column: 14, scope: !288)
!323 = !DILocation(line: 312, column: 19, scope: !288)
!324 = !DILocation(line: 312, column: 32, scope: !288)
!325 = !DILocation(line: 312, column: 37, scope: !288)
!326 = !DILocation(line: 312, column: 30, scope: !288)
!327 = !DILocation(line: 312, column: 12, scope: !288)
!328 = !DILocation(line: 313, column: 15, scope: !288)
!329 = !DILocation(line: 313, column: 20, scope: !288)
!330 = !DILocation(line: 313, column: 13, scope: !288)
!331 = !DILocation(line: 319, column: 8, scope: !288)
!332 = !DILocation(line: 320, column: 2, scope: !288)
!333 = !DILocation(line: 320, column: 9, scope: !288)
!334 = !DILocation(line: 325, column: 13, scope: !335)
!335 = distinct !DILexicalBlock(scope: !288, file: !3, line: 320, column: 20)
!336 = !DILocation(line: 325, column: 11, scope: !335)
!337 = !DILocation(line: 328, column: 7, scope: !338)
!338 = distinct !DILexicalBlock(scope: !335, file: !3, line: 328, column: 7)
!339 = !DILocation(line: 328, column: 21, scope: !338)
!340 = !DILocation(line: 328, column: 18, scope: !338)
!341 = !DILocation(line: 328, column: 7, scope: !335)
!342 = !DILocation(line: 329, column: 18, scope: !343)
!343 = distinct !DILexicalBlock(scope: !338, file: !3, line: 328, column: 35)
!344 = !DILocation(line: 329, column: 15, scope: !343)
!345 = !DILocation(line: 330, column: 3, scope: !343)
!346 = !DILocation(line: 331, column: 8, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !3, line: 331, column: 8)
!348 = distinct !DILexicalBlock(scope: !338, file: !3, line: 330, column: 10)
!349 = !DILocation(line: 331, column: 13, scope: !347)
!350 = !DILocation(line: 331, column: 22, scope: !347)
!351 = !DILocation(line: 331, column: 8, scope: !348)
!352 = !DILocation(line: 334, column: 9, scope: !353)
!353 = distinct !DILexicalBlock(scope: !347, file: !3, line: 331, column: 55)
!354 = !DILocation(line: 335, column: 9, scope: !353)
!355 = !DILocation(line: 336, column: 9, scope: !353)
!356 = !DILocation(line: 335, column: 15, scope: !353)
!357 = !DILocation(line: 334, column: 17, scope: !353)
!358 = !DILocation(line: 338, column: 9, scope: !353)
!359 = !DILocation(line: 338, column: 18, scope: !353)
!360 = !DILocation(line: 333, column: 9, scope: !353)
!361 = !DILocation(line: 332, column: 12, scope: !353)
!362 = !DILocation(line: 339, column: 4, scope: !353)
!363 = !DILocation(line: 342, column: 12, scope: !364)
!364 = distinct !DILexicalBlock(scope: !347, file: !3, line: 339, column: 11)
!365 = !DILocation(line: 343, column: 12, scope: !364)
!366 = !DILocation(line: 344, column: 12, scope: !364)
!367 = !DILocation(line: 343, column: 18, scope: !364)
!368 = !DILocation(line: 342, column: 20, scope: !364)
!369 = !DILocation(line: 346, column: 17, scope: !364)
!370 = !DILocation(line: 346, column: 12, scope: !364)
!371 = !DILocation(line: 347, column: 12, scope: !364)
!372 = !DILocation(line: 341, column: 14, scope: !364)
!373 = !DILocation(line: 341, column: 12, scope: !364)
!374 = !DILocation(line: 356, column: 7, scope: !335)
!375 = !DILocation(line: 356, column: 19, scope: !335)
!376 = !DILocation(line: 356, column: 17, scope: !335)
!377 = !DILocation(line: 356, column: 34, scope: !335)
!378 = !DILocation(line: 356, column: 49, scope: !335)
!379 = !DILocation(line: 355, column: 13, scope: !335)
!380 = !DILocation(line: 357, column: 8, scope: !335)
!381 = distinct !{!381, !332, !382}
!382 = !DILocation(line: 358, column: 2, scope: !288)
!383 = !DILocation(line: 366, column: 10, scope: !288)
!384 = !DILocation(line: 366, column: 2, scope: !288)
!385 = !DILocation(line: 367, column: 1, scope: !288)
!386 = distinct !DISubprogram(name: "acpi_hw_clear_acpi_status", scope: !3, file: !3, line: 382, type: !387, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!387 = !DISubroutineType(types: !388)
!388 = !{!6}
!389 = !DILocalVariable(name: "status", scope: !386, file: !3, line: 384, type: !6)
!390 = !DILocation(line: 384, column: 14, scope: !386)
!391 = !DILocalVariable(name: "lock_flags", scope: !386, file: !3, line: 385, type: !28)
!392 = !DILocation(line: 385, column: 17, scope: !386)
!393 = !DILocation(line: 393, column: 40, scope: !386)
!394 = !DILocation(line: 393, column: 15, scope: !386)
!395 = !DILocation(line: 393, column: 13, scope: !386)
!396 = !DILocation(line: 397, column: 11, scope: !386)
!397 = !DILocation(line: 397, column: 9, scope: !386)
!398 = !DILocation(line: 400, column: 27, scope: !386)
!399 = !DILocation(line: 400, column: 51, scope: !386)
!400 = !DILocation(line: 400, column: 2, scope: !386)
!401 = !DILocation(line: 402, column: 6, scope: !402)
!402 = distinct !DILexicalBlock(scope: !386, file: !3, line: 402, column: 6)
!403 = !DILocation(line: 402, column: 6, scope: !386)
!404 = !DILocation(line: 403, column: 3, scope: !405)
!405 = distinct !DILexicalBlock(scope: !402, file: !3, line: 402, column: 28)
!406 = !DILocation(line: 408, column: 11, scope: !386)
!407 = !DILocation(line: 408, column: 9, scope: !386)
!408 = !DILocation(line: 408, column: 2, scope: !386)
!409 = !DILabel(scope: !386, name: "exit", file: !3, line: 410)
!410 = !DILocation(line: 410, column: 1, scope: !386)
!411 = !DILocation(line: 411, column: 2, scope: !386)
!412 = distinct !DISubprogram(name: "acpi_os_acquire_raw_lock", scope: !413, file: !413, line: 104, type: !414, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!413 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!414 = !DISubroutineType(types: !415)
!415 = !{!28, !416}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !418, line: 29, baseType: !419)
!418 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !418, line: 20, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !419, file: !418, line: 21, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !423, line: 25, baseType: !424)
!423 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !423, line: 25, elements: !4)
!425 = !DILocalVariable(name: "lockp", arg: 1, scope: !412, file: !413, line: 104, type: !416)
!426 = !DILocation(line: 104, column: 73, scope: !412)
!427 = !DILocalVariable(name: "flags", scope: !412, file: !413, line: 106, type: !28)
!428 = !DILocation(line: 106, column: 17, scope: !412)
!429 = !DILocation(line: 108, column: 2, scope: !412)
!430 = !DILocalVariable(name: "__dummy", scope: !431, file: !413, line: 108, type: !28)
!431 = distinct !DILexicalBlock(scope: !432, file: !413, line: 108, column: 2)
!432 = distinct !DILexicalBlock(scope: !412, file: !413, line: 108, column: 2)
!433 = !DILocation(line: 108, column: 2, scope: !431)
!434 = !DILocalVariable(name: "__dummy2", scope: !431, file: !413, line: 108, type: !28)
!435 = !DILocation(line: 108, column: 2, scope: !432)
!436 = !DILocation(line: 108, column: 2, scope: !437)
!437 = distinct !DILexicalBlock(scope: !432, file: !413, line: 108, column: 2)
!438 = !DILocation(line: 108, column: 2, scope: !439)
!439 = distinct !DILexicalBlock(scope: !437, file: !413, line: 108, column: 2)
!440 = !DILocalVariable(name: "__dummy", scope: !441, file: !413, line: 108, type: !28)
!441 = distinct !DILexicalBlock(scope: !442, file: !413, line: 108, column: 2)
!442 = distinct !DILexicalBlock(scope: !439, file: !413, line: 108, column: 2)
!443 = !DILocation(line: 108, column: 2, scope: !441)
!444 = !DILocalVariable(name: "__dummy2", scope: !441, file: !413, line: 108, type: !28)
!445 = !DILocation(line: 108, column: 2, scope: !442)
!446 = !DILocation(line: 108, column: 2, scope: !447)
!447 = distinct !DILexicalBlock(scope: !437, file: !413, line: 108, column: 2)
!448 = !{i32 -2143866954}
!449 = !DILocation(line: 108, column: 2, scope: !450)
!450 = distinct !DILexicalBlock(scope: !447, file: !413, line: 108, column: 2)
!451 = !DILocation(line: 109, column: 9, scope: !412)
!452 = !DILocation(line: 109, column: 2, scope: !412)
!453 = distinct !DISubprogram(name: "acpi_hw_register_write", scope: !3, file: !3, line: 591, type: !454, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!454 = !DISubroutineType(types: !455)
!455 = !{!6, !8, !8}
!456 = !DILocalVariable(name: "register_id", arg: 1, scope: !453, file: !3, line: 591, type: !8)
!457 = !DILocation(line: 591, column: 40, scope: !453)
!458 = !DILocalVariable(name: "value", arg: 2, scope: !453, file: !3, line: 591, type: !8)
!459 = !DILocation(line: 591, column: 57, scope: !453)
!460 = !DILocalVariable(name: "status", scope: !453, file: !3, line: 593, type: !6)
!461 = !DILocation(line: 593, column: 14, scope: !453)
!462 = !DILocalVariable(name: "read_value", scope: !453, file: !3, line: 594, type: !8)
!463 = !DILocation(line: 594, column: 6, scope: !453)
!464 = !DILocalVariable(name: "read_value64", scope: !453, file: !3, line: 595, type: !14)
!465 = !DILocation(line: 595, column: 6, scope: !453)
!466 = !DILocation(line: 599, column: 10, scope: !453)
!467 = !DILocation(line: 599, column: 2, scope: !453)
!468 = !DILocation(line: 611, column: 9, scope: !469)
!469 = distinct !DILexicalBlock(scope: !453, file: !3, line: 599, column: 23)
!470 = !DILocation(line: 613, column: 35, scope: !469)
!471 = !DILocation(line: 613, column: 12, scope: !469)
!472 = !DILocation(line: 613, column: 10, scope: !469)
!473 = !DILocation(line: 616, column: 3, scope: !469)
!474 = !DILocation(line: 620, column: 35, scope: !469)
!475 = !DILocation(line: 620, column: 12, scope: !469)
!476 = !DILocation(line: 620, column: 10, scope: !469)
!477 = !DILocation(line: 623, column: 3, scope: !469)
!478 = !DILocation(line: 630, column: 12, scope: !469)
!479 = !DILocation(line: 630, column: 10, scope: !469)
!480 = !DILocation(line: 635, column: 7, scope: !481)
!481 = distinct !DILexicalBlock(scope: !469, file: !3, line: 635, column: 7)
!482 = !DILocation(line: 635, column: 7, scope: !469)
!483 = !DILocation(line: 636, column: 4, scope: !484)
!484 = distinct !DILexicalBlock(scope: !481, file: !3, line: 635, column: 29)
!485 = !DILocation(line: 641, column: 3, scope: !469)
!486 = !DILocation(line: 646, column: 35, scope: !469)
!487 = !DILocation(line: 646, column: 12, scope: !469)
!488 = !DILocation(line: 646, column: 10, scope: !469)
!489 = !DILocation(line: 651, column: 3, scope: !469)
!490 = !DILocation(line: 659, column: 7, scope: !469)
!491 = !DILocation(line: 658, column: 10, scope: !469)
!492 = !DILocation(line: 661, column: 7, scope: !493)
!493 = distinct !DILexicalBlock(scope: !469, file: !3, line: 661, column: 7)
!494 = !DILocation(line: 661, column: 7, scope: !469)
!495 = !DILocation(line: 662, column: 4, scope: !496)
!496 = distinct !DILexicalBlock(scope: !493, file: !3, line: 661, column: 29)
!497 = !DILocation(line: 664, column: 21, scope: !469)
!498 = !DILocation(line: 664, column: 16, scope: !469)
!499 = !DILocation(line: 664, column: 14, scope: !469)
!500 = !DILocation(line: 668, column: 3, scope: !469)
!501 = !DILocation(line: 672, column: 21, scope: !469)
!502 = !DILocation(line: 672, column: 7, scope: !469)
!503 = !DILocation(line: 671, column: 10, scope: !469)
!504 = !DILocation(line: 673, column: 3, scope: !469)
!505 = !DILocation(line: 677, column: 26, scope: !469)
!506 = !DILocation(line: 677, column: 12, scope: !469)
!507 = !DILocation(line: 677, column: 10, scope: !469)
!508 = !DILocation(line: 678, column: 3, scope: !469)
!509 = !DILocation(line: 685, column: 40, scope: !469)
!510 = !DILocation(line: 685, column: 26, scope: !469)
!511 = !DILocation(line: 685, column: 53, scope: !469)
!512 = !DILocation(line: 685, column: 7, scope: !469)
!513 = !DILocation(line: 684, column: 10, scope: !469)
!514 = !DILocation(line: 686, column: 3, scope: !469)
!515 = !DILocation(line: 690, column: 3, scope: !469)
!516 = !DILocation(line: 691, column: 10, scope: !469)
!517 = !DILocation(line: 692, column: 3, scope: !469)
!518 = !DILocation(line: 693, column: 2, scope: !469)
!519 = !DILabel(scope: !453, name: "exit", file: !3, line: 695)
!520 = !DILocation(line: 695, column: 1, scope: !453)
!521 = !DILocation(line: 696, column: 2, scope: !453)
!522 = distinct !DISubprogram(name: "acpi_os_release_raw_lock", scope: !413, file: !413, line: 112, type: !523, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !416, !28}
!525 = !DILocalVariable(name: "lockp", arg: 1, scope: !522, file: !413, line: 112, type: !416)
!526 = !DILocation(line: 112, column: 63, scope: !522)
!527 = !DILocalVariable(name: "flags", arg: 2, scope: !522, file: !413, line: 113, type: !28)
!528 = !DILocation(line: 113, column: 25, scope: !522)
!529 = !DILocation(line: 115, column: 2, scope: !522)
!530 = !DILocalVariable(name: "__dummy", scope: !531, file: !413, line: 115, type: !28)
!531 = distinct !DILexicalBlock(scope: !532, file: !413, line: 115, column: 2)
!532 = distinct !DILexicalBlock(scope: !522, file: !413, line: 115, column: 2)
!533 = !DILocation(line: 115, column: 2, scope: !531)
!534 = !DILocalVariable(name: "__dummy2", scope: !531, file: !413, line: 115, type: !28)
!535 = !DILocation(line: 115, column: 2, scope: !532)
!536 = !DILocation(line: 115, column: 2, scope: !537)
!537 = distinct !DILexicalBlock(scope: !532, file: !413, line: 115, column: 2)
!538 = !DILocation(line: 115, column: 2, scope: !539)
!539 = distinct !DILexicalBlock(scope: !537, file: !413, line: 115, column: 2)
!540 = !DILocalVariable(name: "__dummy", scope: !541, file: !413, line: 115, type: !28)
!541 = distinct !DILexicalBlock(scope: !542, file: !413, line: 115, column: 2)
!542 = distinct !DILexicalBlock(scope: !539, file: !413, line: 115, column: 2)
!543 = !DILocation(line: 115, column: 2, scope: !541)
!544 = !DILocalVariable(name: "__dummy2", scope: !541, file: !413, line: 115, type: !28)
!545 = !DILocation(line: 115, column: 2, scope: !542)
!546 = !DILocation(line: 115, column: 2, scope: !547)
!547 = distinct !DILexicalBlock(scope: !537, file: !413, line: 115, column: 2)
!548 = !{i32 -2143865963}
!549 = !DILocation(line: 115, column: 2, scope: !550)
!550 = distinct !DILexicalBlock(scope: !547, file: !413, line: 115, column: 2)
!551 = !DILocation(line: 116, column: 1, scope: !522)
!552 = distinct !DISubprogram(name: "acpi_hw_get_bit_register_info", scope: !3, file: !3, line: 426, type: !553, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!553 = !DISubroutineType(types: !554)
!554 = !{!555, !8}
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_bit_register_info", file: !557, line: 934, size: 32, elements: !558)
!557 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!558 = !{!559, !560, !561}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "parent_register", scope: !556, file: !557, line: 935, baseType: !19, size: 8)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "bit_position", scope: !556, file: !557, line: 936, baseType: !19, size: 8, offset: 8)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "access_bit_mask", scope: !556, file: !557, line: 937, baseType: !25, size: 16, offset: 16)
!562 = !DILocalVariable(name: "register_id", arg: 1, scope: !552, file: !3, line: 426, type: !8)
!563 = !DILocation(line: 426, column: 66, scope: !552)
!564 = !DILocation(line: 430, column: 6, scope: !565)
!565 = distinct !DILexicalBlock(scope: !552, file: !3, line: 430, column: 6)
!566 = !DILocation(line: 430, column: 18, scope: !565)
!567 = !DILocation(line: 430, column: 6, scope: !552)
!568 = !DILocation(line: 431, column: 3, scope: !569)
!569 = distinct !DILexicalBlock(scope: !565, file: !3, line: 430, column: 37)
!570 = !DILocation(line: 433, column: 3, scope: !569)
!571 = !DILocation(line: 436, column: 38, scope: !552)
!572 = !DILocation(line: 436, column: 11, scope: !552)
!573 = !DILocation(line: 436, column: 2, scope: !552)
!574 = !DILocation(line: 437, column: 1, scope: !552)
!575 = distinct !DISubprogram(name: "acpi_hw_write_pm1_control", scope: !3, file: !3, line: 456, type: !454, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!576 = !DILocalVariable(name: "pm1a_control", arg: 1, scope: !575, file: !3, line: 456, type: !8)
!577 = !DILocation(line: 456, column: 43, scope: !575)
!578 = !DILocalVariable(name: "pm1b_control", arg: 2, scope: !575, file: !3, line: 456, type: !8)
!579 = !DILocation(line: 456, column: 61, scope: !575)
!580 = !DILocalVariable(name: "status", scope: !575, file: !3, line: 458, type: !6)
!581 = !DILocation(line: 458, column: 14, scope: !575)
!582 = !DILocation(line: 463, column: 20, scope: !575)
!583 = !DILocation(line: 463, column: 6, scope: !575)
!584 = !DILocation(line: 462, column: 9, scope: !575)
!585 = !DILocation(line: 464, column: 6, scope: !586)
!586 = distinct !DILexicalBlock(scope: !575, file: !3, line: 464, column: 6)
!587 = !DILocation(line: 464, column: 6, scope: !575)
!588 = !DILocation(line: 465, column: 3, scope: !589)
!589 = distinct !DILexicalBlock(scope: !586, file: !3, line: 464, column: 28)
!590 = !DILocation(line: 468, column: 40, scope: !591)
!591 = distinct !DILexicalBlock(scope: !575, file: !3, line: 468, column: 6)
!592 = !DILocation(line: 468, column: 6, scope: !591)
!593 = !DILocation(line: 468, column: 6, scope: !575)
!594 = !DILocation(line: 470, column: 21, scope: !595)
!595 = distinct !DILexicalBlock(scope: !591, file: !3, line: 468, column: 49)
!596 = !DILocation(line: 470, column: 7, scope: !595)
!597 = !DILocation(line: 469, column: 10, scope: !595)
!598 = !DILocation(line: 472, column: 2, scope: !595)
!599 = !DILocation(line: 473, column: 2, scope: !575)
!600 = !DILocation(line: 474, column: 1, scope: !575)
!601 = distinct !DISubprogram(name: "acpi_hw_register_read", scope: !3, file: !3, line: 488, type: !602, scopeLine: 489, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!602 = !DISubroutineType(types: !603)
!603 = !{!6, !8, !604}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!605 = !DILocalVariable(name: "register_id", arg: 1, scope: !601, file: !3, line: 488, type: !8)
!606 = !DILocation(line: 488, column: 39, scope: !601)
!607 = !DILocalVariable(name: "return_value", arg: 2, scope: !601, file: !3, line: 488, type: !604)
!608 = !DILocation(line: 488, column: 57, scope: !601)
!609 = !DILocalVariable(name: "value", scope: !601, file: !3, line: 490, type: !8)
!610 = !DILocation(line: 490, column: 6, scope: !601)
!611 = !DILocalVariable(name: "value64", scope: !601, file: !3, line: 491, type: !14)
!612 = !DILocation(line: 491, column: 6, scope: !601)
!613 = !DILocalVariable(name: "status", scope: !601, file: !3, line: 492, type: !6)
!614 = !DILocation(line: 492, column: 14, scope: !601)
!615 = !DILocation(line: 496, column: 10, scope: !601)
!616 = !DILocation(line: 496, column: 2, scope: !601)
!617 = !DILocation(line: 499, column: 12, scope: !618)
!618 = distinct !DILexicalBlock(scope: !601, file: !3, line: 496, column: 23)
!619 = !DILocation(line: 499, column: 10, scope: !618)
!620 = !DILocation(line: 502, column: 3, scope: !618)
!621 = !DILocation(line: 506, column: 12, scope: !618)
!622 = !DILocation(line: 506, column: 10, scope: !618)
!623 = !DILocation(line: 509, column: 3, scope: !618)
!624 = !DILocation(line: 513, column: 12, scope: !618)
!625 = !DILocation(line: 513, column: 10, scope: !618)
!626 = !DILocation(line: 524, column: 9, scope: !618)
!627 = !DILocation(line: 525, column: 3, scope: !618)
!628 = !DILocation(line: 530, column: 7, scope: !618)
!629 = !DILocation(line: 529, column: 10, scope: !618)
!630 = !DILocation(line: 531, column: 7, scope: !631)
!631 = distinct !DILexicalBlock(scope: !618, file: !3, line: 531, column: 7)
!632 = !DILocation(line: 531, column: 7, scope: !618)
!633 = !DILocation(line: 532, column: 17, scope: !634)
!634 = distinct !DILexicalBlock(scope: !631, file: !3, line: 531, column: 29)
!635 = !DILocation(line: 532, column: 12, scope: !634)
!636 = !DILocation(line: 532, column: 10, scope: !634)
!637 = !DILocation(line: 533, column: 3, scope: !634)
!638 = !DILocation(line: 534, column: 3, scope: !618)
!639 = !DILocation(line: 538, column: 12, scope: !618)
!640 = !DILocation(line: 538, column: 10, scope: !618)
!641 = !DILocation(line: 539, column: 7, scope: !642)
!642 = distinct !DILexicalBlock(scope: !618, file: !3, line: 539, column: 7)
!643 = !DILocation(line: 539, column: 7, scope: !618)
!644 = !DILocation(line: 540, column: 17, scope: !645)
!645 = distinct !DILexicalBlock(scope: !642, file: !3, line: 539, column: 29)
!646 = !DILocation(line: 540, column: 12, scope: !645)
!647 = !DILocation(line: 540, column: 10, scope: !645)
!648 = !DILocation(line: 541, column: 3, scope: !645)
!649 = !DILocation(line: 543, column: 3, scope: !618)
!650 = !DILocation(line: 548, column: 39, scope: !618)
!651 = !DILocation(line: 548, column: 25, scope: !618)
!652 = !DILocation(line: 548, column: 7, scope: !618)
!653 = !DILocation(line: 547, column: 10, scope: !618)
!654 = !DILocation(line: 549, column: 3, scope: !618)
!655 = !DILocation(line: 553, column: 3, scope: !618)
!656 = !DILocation(line: 554, column: 10, scope: !618)
!657 = !DILocation(line: 555, column: 3, scope: !618)
!658 = !DILocation(line: 558, column: 6, scope: !659)
!659 = distinct !DILexicalBlock(scope: !601, file: !3, line: 558, column: 6)
!660 = !DILocation(line: 558, column: 6, scope: !601)
!661 = !DILocation(line: 559, column: 24, scope: !662)
!662 = distinct !DILexicalBlock(scope: !659, file: !3, line: 558, column: 28)
!663 = !DILocation(line: 559, column: 4, scope: !662)
!664 = !DILocation(line: 559, column: 17, scope: !662)
!665 = !DILocation(line: 560, column: 2, scope: !662)
!666 = !DILocation(line: 562, column: 2, scope: !601)
!667 = distinct !DISubprogram(name: "acpi_hw_read_multiple", scope: !3, file: !3, line: 714, type: !668, scopeLine: 717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!668 = !DISubroutineType(types: !669)
!669 = !{!6, !604, !44, !44}
!670 = !DILocalVariable(name: "value", arg: 1, scope: !667, file: !3, line: 714, type: !604)
!671 = !DILocation(line: 714, column: 28, scope: !667)
!672 = !DILocalVariable(name: "register_a", arg: 2, scope: !667, file: !3, line: 715, type: !44)
!673 = !DILocation(line: 715, column: 38, scope: !667)
!674 = !DILocalVariable(name: "register_b", arg: 3, scope: !667, file: !3, line: 716, type: !44)
!675 = !DILocation(line: 716, column: 38, scope: !667)
!676 = !DILocalVariable(name: "value_a", scope: !667, file: !3, line: 718, type: !8)
!677 = !DILocation(line: 718, column: 6, scope: !667)
!678 = !DILocalVariable(name: "value_b", scope: !667, file: !3, line: 719, type: !8)
!679 = !DILocation(line: 719, column: 6, scope: !667)
!680 = !DILocalVariable(name: "value64", scope: !667, file: !3, line: 720, type: !14)
!681 = !DILocation(line: 720, column: 6, scope: !667)
!682 = !DILocalVariable(name: "status", scope: !667, file: !3, line: 721, type: !6)
!683 = !DILocation(line: 721, column: 14, scope: !667)
!684 = !DILocation(line: 725, column: 34, scope: !667)
!685 = !DILocation(line: 725, column: 11, scope: !667)
!686 = !DILocation(line: 725, column: 9, scope: !667)
!687 = !DILocation(line: 726, column: 6, scope: !688)
!688 = distinct !DILexicalBlock(scope: !667, file: !3, line: 726, column: 6)
!689 = !DILocation(line: 726, column: 6, scope: !667)
!690 = !DILocation(line: 727, column: 11, scope: !691)
!691 = distinct !DILexicalBlock(scope: !688, file: !3, line: 726, column: 28)
!692 = !DILocation(line: 727, column: 3, scope: !691)
!693 = !DILocation(line: 729, column: 17, scope: !667)
!694 = !DILocation(line: 729, column: 12, scope: !667)
!695 = !DILocation(line: 729, column: 10, scope: !667)
!696 = !DILocation(line: 733, column: 6, scope: !697)
!697 = distinct !DILexicalBlock(scope: !667, file: !3, line: 733, column: 6)
!698 = !DILocation(line: 733, column: 18, scope: !697)
!699 = !DILocation(line: 733, column: 6, scope: !667)
!700 = !DILocation(line: 734, column: 35, scope: !701)
!701 = distinct !DILexicalBlock(scope: !697, file: !3, line: 733, column: 27)
!702 = !DILocation(line: 734, column: 12, scope: !701)
!703 = !DILocation(line: 734, column: 10, scope: !701)
!704 = !DILocation(line: 735, column: 7, scope: !705)
!705 = distinct !DILexicalBlock(scope: !701, file: !3, line: 735, column: 7)
!706 = !DILocation(line: 735, column: 7, scope: !701)
!707 = !DILocation(line: 736, column: 12, scope: !708)
!708 = distinct !DILexicalBlock(scope: !705, file: !3, line: 735, column: 29)
!709 = !DILocation(line: 736, column: 4, scope: !708)
!710 = !DILocation(line: 738, column: 18, scope: !701)
!711 = !DILocation(line: 738, column: 13, scope: !701)
!712 = !DILocation(line: 738, column: 11, scope: !701)
!713 = !DILocation(line: 739, column: 2, scope: !701)
!714 = !DILocation(line: 751, column: 12, scope: !667)
!715 = !DILocation(line: 751, column: 22, scope: !667)
!716 = !DILocation(line: 751, column: 20, scope: !667)
!717 = !DILocation(line: 751, column: 3, scope: !667)
!718 = !DILocation(line: 751, column: 9, scope: !667)
!719 = !DILocation(line: 752, column: 2, scope: !667)
!720 = !DILocation(line: 753, column: 1, scope: !667)
!721 = distinct !DISubprogram(name: "acpi_hw_write_multiple", scope: !3, file: !3, line: 770, type: !722, scopeLine: 773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!722 = !DISubroutineType(types: !723)
!723 = !{!6, !8, !44, !44}
!724 = !DILocalVariable(name: "value", arg: 1, scope: !721, file: !3, line: 770, type: !8)
!725 = !DILocation(line: 770, column: 28, scope: !721)
!726 = !DILocalVariable(name: "register_a", arg: 2, scope: !721, file: !3, line: 771, type: !44)
!727 = !DILocation(line: 771, column: 39, scope: !721)
!728 = !DILocalVariable(name: "register_b", arg: 3, scope: !721, file: !3, line: 772, type: !44)
!729 = !DILocation(line: 772, column: 39, scope: !721)
!730 = !DILocalVariable(name: "status", scope: !721, file: !3, line: 774, type: !6)
!731 = !DILocation(line: 774, column: 14, scope: !721)
!732 = !DILocation(line: 778, column: 25, scope: !721)
!733 = !DILocation(line: 778, column: 32, scope: !721)
!734 = !DILocation(line: 778, column: 11, scope: !721)
!735 = !DILocation(line: 778, column: 9, scope: !721)
!736 = !DILocation(line: 779, column: 6, scope: !737)
!737 = distinct !DILexicalBlock(scope: !721, file: !3, line: 779, column: 6)
!738 = !DILocation(line: 779, column: 6, scope: !721)
!739 = !DILocation(line: 780, column: 11, scope: !740)
!740 = distinct !DILexicalBlock(scope: !737, file: !3, line: 779, column: 28)
!741 = !DILocation(line: 780, column: 3, scope: !740)
!742 = !DILocation(line: 795, column: 6, scope: !743)
!743 = distinct !DILexicalBlock(scope: !721, file: !3, line: 795, column: 6)
!744 = !DILocation(line: 795, column: 18, scope: !743)
!745 = !DILocation(line: 795, column: 6, scope: !721)
!746 = !DILocation(line: 796, column: 26, scope: !747)
!747 = distinct !DILexicalBlock(scope: !743, file: !3, line: 795, column: 27)
!748 = !DILocation(line: 796, column: 33, scope: !747)
!749 = !DILocation(line: 796, column: 12, scope: !747)
!750 = !DILocation(line: 796, column: 10, scope: !747)
!751 = !DILocation(line: 797, column: 2, scope: !747)
!752 = !DILocation(line: 799, column: 10, scope: !721)
!753 = !DILocation(line: 799, column: 2, scope: !721)
!754 = !DILocation(line: 800, column: 1, scope: !721)
!755 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !756, file: !756, line: 666, type: !757, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!756 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!757 = !DISubroutineType(types: !758)
!758 = !{!28}
!759 = !DILocalVariable(name: "f", scope: !755, file: !756, line: 668, type: !28)
!760 = !DILocation(line: 668, column: 16, scope: !755)
!761 = !DILocation(line: 670, column: 6, scope: !755)
!762 = !DILocation(line: 670, column: 4, scope: !755)
!763 = !DILocation(line: 671, column: 2, scope: !755)
!764 = !DILocation(line: 672, column: 9, scope: !755)
!765 = !DILocation(line: 672, column: 2, scope: !755)
!766 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !756, file: !756, line: 646, type: !757, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!767 = !DILocalVariable(name: "__ret", scope: !768, file: !756, line: 648, type: !28)
!768 = distinct !DILexicalBlock(scope: !766, file: !756, line: 648, column: 9)
!769 = !DILocation(line: 648, column: 9, scope: !768)
!770 = !DILocalVariable(name: "__edi", scope: !768, file: !756, line: 648, type: !28)
!771 = !DILocalVariable(name: "__esi", scope: !768, file: !756, line: 648, type: !28)
!772 = !DILocalVariable(name: "__edx", scope: !768, file: !756, line: 648, type: !28)
!773 = !DILocalVariable(name: "__ecx", scope: !768, file: !756, line: 648, type: !28)
!774 = !DILocalVariable(name: "__eax", scope: !768, file: !756, line: 648, type: !28)
!775 = !DILocation(line: 648, column: 9, scope: !776)
!776 = distinct !DILexicalBlock(scope: !777, file: !756, line: 648, column: 9)
!777 = distinct !DILexicalBlock(scope: !768, file: !756, line: 648, column: 9)
!778 = !{i32 -2145771211, i32 -2145768896, i32 -2145768662, i32 -2145768611, i32 -2145768583, i32 -2145768558, i32 -2145768874, i32 -2145768861, i32 -2145768423, i32 -2145768304, i32 -2145768769, i32 -2145768742, i32 -2145768714, i32 -2145768684}
!779 = !DILocalVariable(name: "__mask", scope: !780, file: !756, line: 648, type: !28)
!780 = distinct !DILexicalBlock(scope: !776, file: !756, line: 648, column: 9)
!781 = !DILocation(line: 648, column: 9, scope: !780)
!782 = !DILocation(line: 648, column: 9, scope: !777)
!783 = !DILocation(line: 648, column: 2, scope: !766)
!784 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !756, file: !756, line: 656, type: !785, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!785 = !DISubroutineType(types: !786)
!786 = !{null}
!787 = !DILocalVariable(name: "__edi", scope: !788, file: !756, line: 658, type: !28)
!788 = distinct !DILexicalBlock(scope: !784, file: !756, line: 658, column: 2)
!789 = !DILocation(line: 658, column: 2, scope: !788)
!790 = !DILocalVariable(name: "__esi", scope: !788, file: !756, line: 658, type: !28)
!791 = !DILocalVariable(name: "__edx", scope: !788, file: !756, line: 658, type: !28)
!792 = !DILocalVariable(name: "__ecx", scope: !788, file: !756, line: 658, type: !28)
!793 = !DILocalVariable(name: "__eax", scope: !788, file: !756, line: 658, type: !28)
!794 = !{i32 -2145764117, i32 -2145763385, i32 -2145763151, i32 -2145763100, i32 -2145763072, i32 -2145763047, i32 -2145763363, i32 -2145763350, i32 -2145762912, i32 -2145762793, i32 -2145763258, i32 -2145763231, i32 -2145763203, i32 -2145763173}
!795 = !DILocation(line: 659, column: 1, scope: !784)
!796 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !756, file: !756, line: 651, type: !797, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!797 = !DISubroutineType(types: !798)
!798 = !{null, !28}
!799 = !DILocalVariable(name: "f", arg: 1, scope: !796, file: !756, line: 651, type: !28)
!800 = !DILocation(line: 651, column: 65, scope: !796)
!801 = !DILocalVariable(name: "__edi", scope: !802, file: !756, line: 653, type: !28)
!802 = distinct !DILexicalBlock(scope: !796, file: !756, line: 653, column: 2)
!803 = !DILocation(line: 653, column: 2, scope: !802)
!804 = !DILocalVariable(name: "__esi", scope: !802, file: !756, line: 653, type: !28)
!805 = !DILocalVariable(name: "__edx", scope: !802, file: !756, line: 653, type: !28)
!806 = !DILocalVariable(name: "__ecx", scope: !802, file: !756, line: 653, type: !28)
!807 = !DILocalVariable(name: "__eax", scope: !802, file: !756, line: 653, type: !28)
!808 = !{i32 -2145766744, i32 -2145765994, i32 -2145765760, i32 -2145765709, i32 -2145765681, i32 -2145765656, i32 -2145765972, i32 -2145765959, i32 -2145765521, i32 -2145765402, i32 -2145765867, i32 -2145765840, i32 -2145765812, i32 -2145765782}
!809 = !DILocation(line: 654, column: 1, scope: !796)
