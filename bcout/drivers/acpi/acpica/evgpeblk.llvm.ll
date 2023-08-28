; ModuleID = '../bcout/drivers/acpi/acpica/evgpeblk.llvm.bc'
source_filename = "drivers/acpi/acpica/evgpeblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%struct.acpi_gpe_walk_info = type { %struct.acpi_namespace_node*, %struct.acpi_gpe_block_info*, i16, i16, i8 }

@acpi_gbl_gpe_lock = external dso_local global %struct.spinlock*, align 8
@acpi_current_gpe_count = external dso_local global i32, align 4
@_acpi_module_name = internal constant [9 x i8] c"evgpeblk\00", align 1, !dbg !0
@.str = private unnamed_addr constant [32 x i8] c"Unsupported address space: 0x%X\00", align 1
@acpi_gbl_all_gpes_initialized = external dso_local global i8, align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Could not enable GPE 0x%02X\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Enabled %u GPEs in block %02X to %02X\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"Could not allocate the GpeRegisterInfo table\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Could not allocate the GpeEventInfo table\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_delete_gpe_block(%struct.acpi_gpe_block_info* %gpe_block) #0 !dbg !47 {
entry:
  %retval = alloca i32, align 4
  %gpe_block.addr = alloca %struct.acpi_gpe_block_info*, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  store %struct.acpi_gpe_block_info* %gpe_block, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_block_info** %gpe_block.addr, metadata !806, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.declare(metadata i32* %status, metadata !808, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !810, metadata !DIExpression()), !dbg !811
  %call = call i32 @acpi_ut_acquire_mutex(i32 3) #8, !dbg !812
  store i32 %call, i32* %status, align 4, !dbg !813
  %0 = load i32, i32* %status, align 4, !dbg !814
  %tobool = icmp ne i32 %0, 0, !dbg !814
  br i1 %tobool, label %if.then, label %if.end, !dbg !816

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4, !dbg !817
  store i32 %1, i32* %retval, align 4, !dbg !817
  br label %return, !dbg !817

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !819
  %xrupt_block = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %2, i32 0, i32 3, !dbg !820
  %3 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %xrupt_block, align 8, !dbg !820
  %4 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !821
  %call1 = call i32 @acpi_hw_disable_gpe_block(%struct.acpi_gpe_xrupt_info* %3, %struct.acpi_gpe_block_info* %4, i8* null) #8, !dbg !822
  store i32 %call1, i32* %status, align 4, !dbg !823
  %5 = load i32, i32* %status, align 4, !dbg !824
  %tobool2 = icmp ne i32 %5, 0, !dbg !824
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !826

if.then3:                                         ; preds = %if.end
  %6 = load i32, i32* %status, align 4, !dbg !827
  store i32 %6, i32* %retval, align 4, !dbg !827
  br label %return, !dbg !827

if.end4:                                          ; preds = %if.end
  %7 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !829
  %previous = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %7, i32 0, i32 1, !dbg !831
  %8 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %previous, align 8, !dbg !831
  %tobool5 = icmp ne %struct.acpi_gpe_block_info* %8, null, !dbg !829
  br i1 %tobool5, label %if.else, label %land.lhs.true, !dbg !832

land.lhs.true:                                    ; preds = %if.end4
  %9 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !833
  %next = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %9, i32 0, i32 2, !dbg !834
  %10 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %next, align 8, !dbg !834
  %tobool6 = icmp ne %struct.acpi_gpe_block_info* %10, null, !dbg !833
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !835

if.then7:                                         ; preds = %land.lhs.true
  %11 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !836
  %xrupt_block8 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %11, i32 0, i32 3, !dbg !838
  %12 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %xrupt_block8, align 8, !dbg !838
  %call9 = call i32 @acpi_ev_delete_gpe_xrupt(%struct.acpi_gpe_xrupt_info* %12) #8, !dbg !839
  store i32 %call9, i32* %status, align 4, !dbg !840
  %13 = load i32, i32* %status, align 4, !dbg !841
  %tobool10 = icmp ne i32 %13, 0, !dbg !841
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !843

if.then11:                                        ; preds = %if.then7
  br label %unlock_and_exit, !dbg !844

if.end12:                                         ; preds = %if.then7
  br label %if.end31, !dbg !846

if.else:                                          ; preds = %land.lhs.true, %if.end4
  %14 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !847
  %call13 = call i64 @acpi_os_acquire_lock(%struct.spinlock* %14) #8, !dbg !849
  store i64 %call13, i64* %flags, align 8, !dbg !850
  %15 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !851
  %previous14 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %15, i32 0, i32 1, !dbg !853
  %16 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %previous14, align 8, !dbg !853
  %tobool15 = icmp ne %struct.acpi_gpe_block_info* %16, null, !dbg !851
  br i1 %tobool15, label %if.then16, label %if.else20, !dbg !854

if.then16:                                        ; preds = %if.else
  %17 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !855
  %next17 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %17, i32 0, i32 2, !dbg !857
  %18 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %next17, align 8, !dbg !857
  %19 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !858
  %previous18 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %19, i32 0, i32 1, !dbg !859
  %20 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %previous18, align 8, !dbg !859
  %next19 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %20, i32 0, i32 2, !dbg !860
  store %struct.acpi_gpe_block_info* %18, %struct.acpi_gpe_block_info** %next19, align 8, !dbg !861
  br label %if.end23, !dbg !862

if.else20:                                        ; preds = %if.else
  %21 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !863
  %next21 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %21, i32 0, i32 2, !dbg !865
  %22 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %next21, align 8, !dbg !865
  %23 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !866
  %xrupt_block22 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %23, i32 0, i32 3, !dbg !867
  %24 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %xrupt_block22, align 8, !dbg !867
  %gpe_block_list_head = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %24, i32 0, i32 2, !dbg !868
  store %struct.acpi_gpe_block_info* %22, %struct.acpi_gpe_block_info** %gpe_block_list_head, align 8, !dbg !869
  br label %if.end23

if.end23:                                         ; preds = %if.else20, %if.then16
  %25 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !870
  %next24 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %25, i32 0, i32 2, !dbg !872
  %26 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %next24, align 8, !dbg !872
  %tobool25 = icmp ne %struct.acpi_gpe_block_info* %26, null, !dbg !870
  br i1 %tobool25, label %if.then26, label %if.end30, !dbg !873

if.then26:                                        ; preds = %if.end23
  %27 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !874
  %previous27 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %27, i32 0, i32 1, !dbg !876
  %28 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %previous27, align 8, !dbg !876
  %29 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !877
  %next28 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %29, i32 0, i32 2, !dbg !878
  %30 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %next28, align 8, !dbg !878
  %previous29 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %30, i32 0, i32 1, !dbg !879
  store %struct.acpi_gpe_block_info* %28, %struct.acpi_gpe_block_info** %previous29, align 8, !dbg !880
  br label %if.end30, !dbg !881

if.end30:                                         ; preds = %if.then26, %if.end23
  %31 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !882
  %32 = load i64, i64* %flags, align 8, !dbg !883
  call void @acpi_os_release_lock(%struct.spinlock* %31, i64 %32) #8, !dbg !884
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end12
  %33 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !885
  %gpe_count = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %33, i32 0, i32 8, !dbg !886
  %34 = load i16, i16* %gpe_count, align 4, !dbg !886
  %conv = zext i16 %34 to i32, !dbg !885
  %35 = load i32, i32* @acpi_current_gpe_count, align 4, !dbg !887
  %sub = sub i32 %35, %conv, !dbg !887
  store i32 %sub, i32* @acpi_current_gpe_count, align 4, !dbg !887
  %36 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !888
  %register_info = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %36, i32 0, i32 4, !dbg !888
  %37 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %register_info, align 8, !dbg !888
  %38 = bitcast %struct.acpi_gpe_register_info* %37 to i8*, !dbg !888
  call void @acpi_os_free(i8* %38) #8, !dbg !888
  %39 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !889
  %event_info = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %39, i32 0, i32 5, !dbg !889
  %40 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %event_info, align 8, !dbg !889
  %41 = bitcast %struct.acpi_gpe_event_info* %40 to i8*, !dbg !889
  call void @acpi_os_free(i8* %41) #8, !dbg !889
  %42 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !890
  %43 = bitcast %struct.acpi_gpe_block_info* %42 to i8*, !dbg !890
  call void @acpi_os_free(i8* %43) #8, !dbg !890
  br label %unlock_and_exit, !dbg !890

unlock_and_exit:                                  ; preds = %if.end31, %if.then11
  call void @llvm.dbg.label(metadata !891), !dbg !892
  %call32 = call i32 @acpi_ut_release_mutex(i32 3) #8, !dbg !893
  store i32 %call32, i32* %status, align 4, !dbg !894
  %44 = load i32, i32* %status, align 4, !dbg !895
  store i32 %44, i32* %retval, align 4, !dbg !895
  br label %return, !dbg !895

return:                                           ; preds = %unlock_and_exit, %if.then3, %if.then
  %45 = load i32, i32* %retval, align 4, !dbg !896
  ret i32 %45, !dbg !896
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_disable_gpe_block(%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_delete_gpe_xrupt(%struct.acpi_gpe_xrupt_info*) #2

; Function Attrs: noredzone
declare dso_local i64 @acpi_os_acquire_lock(%struct.spinlock*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_os_release_lock(%struct.spinlock*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !897 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !901, metadata !DIExpression()), !dbg !902
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !903
  call void @kfree(i8* %0) #8, !dbg !904
  ret void, !dbg !905
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_release_mutex(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_create_gpe_block(%struct.acpi_namespace_node* %gpe_device, i64 %address, i8 zeroext %space_id, i32 %register_count, i16 zeroext %gpe_block_base_number, i32 %interrupt_number, %struct.acpi_gpe_block_info** %return_gpe_block) #0 !dbg !906 {
entry:
  %retval = alloca i32, align 4
  %gpe_device.addr = alloca %struct.acpi_namespace_node*, align 8
  %address.addr = alloca i64, align 8
  %space_id.addr = alloca i8, align 1
  %register_count.addr = alloca i32, align 4
  %gpe_block_base_number.addr = alloca i16, align 2
  %interrupt_number.addr = alloca i32, align 4
  %return_gpe_block.addr = alloca %struct.acpi_gpe_block_info**, align 8
  %status = alloca i32, align 4
  %gpe_block = alloca %struct.acpi_gpe_block_info*, align 8
  %walk_info = alloca %struct.acpi_gpe_walk_info, align 8
  store %struct.acpi_namespace_node* %gpe_device, %struct.acpi_namespace_node** %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %gpe_device.addr, metadata !910, metadata !DIExpression()), !dbg !911
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !912, metadata !DIExpression()), !dbg !913
  store i8 %space_id, i8* %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %space_id.addr, metadata !914, metadata !DIExpression()), !dbg !915
  store i32 %register_count, i32* %register_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %register_count.addr, metadata !916, metadata !DIExpression()), !dbg !917
  store i16 %gpe_block_base_number, i16* %gpe_block_base_number.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %gpe_block_base_number.addr, metadata !918, metadata !DIExpression()), !dbg !919
  store i32 %interrupt_number, i32* %interrupt_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %interrupt_number.addr, metadata !920, metadata !DIExpression()), !dbg !921
  store %struct.acpi_gpe_block_info** %return_gpe_block, %struct.acpi_gpe_block_info*** %return_gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_block_info*** %return_gpe_block.addr, metadata !922, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.declare(metadata i32* %status, metadata !924, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_block_info** %gpe_block, metadata !926, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_walk_info* %walk_info, metadata !928, metadata !DIExpression()), !dbg !936
  %0 = load i32, i32* %register_count.addr, align 4, !dbg !937
  %tobool = icmp ne i32 %0, 0, !dbg !937
  br i1 %tobool, label %if.end, label %if.then, !dbg !939

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !940
  br label %return, !dbg !940

if.end:                                           ; preds = %entry
  %1 = load i8, i8* %space_id.addr, align 1, !dbg !942
  %conv = zext i8 %1 to i32, !dbg !942
  %cmp = icmp ne i32 %conv, 0, !dbg !944
  br i1 %cmp, label %land.lhs.true, label %if.end7, !dbg !945

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, i8* %space_id.addr, align 1, !dbg !946
  %conv2 = zext i8 %2 to i32, !dbg !946
  %cmp3 = icmp ne i32 %conv2, 1, !dbg !947
  br i1 %cmp3, label %if.then5, label %if.end7, !dbg !948

if.then5:                                         ; preds = %land.lhs.true
  %3 = load i8, i8* %space_id.addr, align 1, !dbg !949
  %conv6 = zext i8 %3 to i32, !dbg !949
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 318, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %conv6) #8, !dbg !949
  store i32 15, i32* %retval, align 4, !dbg !951
  br label %return, !dbg !951

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %4 = load i8, i8* %space_id.addr, align 1, !dbg !952
  %conv8 = zext i8 %4 to i32, !dbg !952
  %cmp9 = icmp eq i32 %conv8, 1, !dbg !954
  br i1 %cmp9, label %if.then11, label %if.end15, !dbg !955

if.then11:                                        ; preds = %if.end7
  %5 = load i64, i64* %address.addr, align 8, !dbg !956
  %6 = load i32, i32* %register_count.addr, align 4, !dbg !958
  %call = call i32 @acpi_hw_validate_io_block(i64 %5, i32 8, i32 %6) #8, !dbg !959
  store i32 %call, i32* %status, align 4, !dbg !960
  %7 = load i32, i32* %status, align 4, !dbg !961
  %tobool12 = icmp ne i32 %7, 0, !dbg !961
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !963

if.then13:                                        ; preds = %if.then11
  %8 = load i32, i32* %status, align 4, !dbg !964
  store i32 %8, i32* %retval, align 4, !dbg !964
  br label %return, !dbg !964

if.end14:                                         ; preds = %if.then11
  br label %if.end15, !dbg !965

if.end15:                                         ; preds = %if.end14, %if.end7
  %call16 = call i8* @acpi_os_allocate_zeroed(i64 72) #8, !dbg !966
  %9 = bitcast i8* %call16 to %struct.acpi_gpe_block_info*, !dbg !966
  store %struct.acpi_gpe_block_info* %9, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !967
  %10 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !968
  %tobool17 = icmp ne %struct.acpi_gpe_block_info* %10, null, !dbg !968
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !970

if.then18:                                        ; preds = %if.end15
  store i32 4, i32* %retval, align 4, !dbg !971
  br label %return, !dbg !971

if.end19:                                         ; preds = %if.end15
  %11 = load i64, i64* %address.addr, align 8, !dbg !973
  %12 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !974
  %address20 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %12, i32 0, i32 6, !dbg !975
  store i64 %11, i64* %address20, align 8, !dbg !976
  %13 = load i8, i8* %space_id.addr, align 1, !dbg !977
  %14 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !978
  %space_id21 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %14, i32 0, i32 10, !dbg !979
  store i8 %13, i8* %space_id21, align 8, !dbg !980
  %15 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %gpe_device.addr, align 8, !dbg !981
  %16 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !982
  %node = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %16, i32 0, i32 0, !dbg !983
  store %struct.acpi_namespace_node* %15, %struct.acpi_namespace_node** %node, align 8, !dbg !984
  %17 = load i32, i32* %register_count.addr, align 4, !dbg !985
  %mul = mul i32 %17, 8, !dbg !986
  %conv22 = trunc i32 %mul to i16, !dbg !987
  %18 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !988
  %gpe_count = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %18, i32 0, i32 8, !dbg !989
  store i16 %conv22, i16* %gpe_count, align 4, !dbg !990
  %19 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !991
  %initialized = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %19, i32 0, i32 11, !dbg !992
  store i8 0, i8* %initialized, align 1, !dbg !993
  %20 = load i32, i32* %register_count.addr, align 4, !dbg !994
  %21 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !995
  %register_count23 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %21, i32 0, i32 7, !dbg !996
  store i32 %20, i32* %register_count23, align 8, !dbg !997
  %22 = load i16, i16* %gpe_block_base_number.addr, align 2, !dbg !998
  %23 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !999
  %block_base_number = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %23, i32 0, i32 9, !dbg !1000
  store i16 %22, i16* %block_base_number, align 2, !dbg !1001
  %24 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !1002
  %call24 = call i32 @acpi_ev_create_gpe_info_blocks(%struct.acpi_gpe_block_info* %24) #8, !dbg !1003
  store i32 %call24, i32* %status, align 4, !dbg !1004
  %25 = load i32, i32* %status, align 4, !dbg !1005
  %tobool25 = icmp ne i32 %25, 0, !dbg !1005
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !1007

if.then26:                                        ; preds = %if.end19
  %26 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !1008
  %27 = bitcast %struct.acpi_gpe_block_info* %26 to i8*, !dbg !1008
  call void @acpi_os_free(i8* %27) #8, !dbg !1008
  %28 = load i32, i32* %status, align 4, !dbg !1010
  store i32 %28, i32* %retval, align 4, !dbg !1010
  br label %return, !dbg !1010

if.end27:                                         ; preds = %if.end19
  %29 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !1011
  %30 = load i32, i32* %interrupt_number.addr, align 4, !dbg !1012
  %call28 = call i32 @acpi_ev_install_gpe_block(%struct.acpi_gpe_block_info* %29, i32 %30) #8, !dbg !1013
  store i32 %call28, i32* %status, align 4, !dbg !1014
  %31 = load i32, i32* %status, align 4, !dbg !1015
  %tobool29 = icmp ne i32 %31, 0, !dbg !1015
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !1017

if.then30:                                        ; preds = %if.end27
  %32 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !1018
  %register_info = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %32, i32 0, i32 4, !dbg !1018
  %33 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %register_info, align 8, !dbg !1018
  %34 = bitcast %struct.acpi_gpe_register_info* %33 to i8*, !dbg !1018
  call void @acpi_os_free(i8* %34) #8, !dbg !1018
  %35 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !1020
  %event_info = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %35, i32 0, i32 5, !dbg !1020
  %36 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %event_info, align 8, !dbg !1020
  %37 = bitcast %struct.acpi_gpe_event_info* %36 to i8*, !dbg !1020
  call void @acpi_os_free(i8* %37) #8, !dbg !1020
  %38 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !1021
  %39 = bitcast %struct.acpi_gpe_block_info* %38 to i8*, !dbg !1021
  call void @acpi_os_free(i8* %39) #8, !dbg !1021
  %40 = load i32, i32* %status, align 4, !dbg !1022
  store i32 %40, i32* %retval, align 4, !dbg !1022
  br label %return, !dbg !1022

if.end31:                                         ; preds = %if.end27
  store i8 0, i8* @acpi_gbl_all_gpes_initialized, align 1, !dbg !1023
  %41 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !1024
  %gpe_block32 = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %walk_info, i32 0, i32 1, !dbg !1025
  store %struct.acpi_gpe_block_info* %41, %struct.acpi_gpe_block_info** %gpe_block32, align 8, !dbg !1026
  %42 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %gpe_device.addr, align 8, !dbg !1027
  %gpe_device33 = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %walk_info, i32 0, i32 0, !dbg !1028
  store %struct.acpi_namespace_node* %42, %struct.acpi_namespace_node** %gpe_device33, align 8, !dbg !1029
  %execute_by_owner_id = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %walk_info, i32 0, i32 4, !dbg !1030
  store i8 0, i8* %execute_by_owner_id, align 4, !dbg !1031
  %43 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %gpe_device.addr, align 8, !dbg !1032
  %44 = bitcast %struct.acpi_namespace_node* %43 to i8*, !dbg !1032
  %45 = bitcast %struct.acpi_gpe_walk_info* %walk_info to i8*, !dbg !1033
  %call34 = call i32 @acpi_ns_walk_namespace(i32 8, i8* %44, i32 -1, i32 0, i32 (i8*, i32, i8*, i8**)* @acpi_ev_match_gpe_method, i32 (i8*, i32, i8*, i8**)* null, i8* %45, i8** null) #8, !dbg !1034
  %46 = load %struct.acpi_gpe_block_info**, %struct.acpi_gpe_block_info*** %return_gpe_block.addr, align 8, !dbg !1035
  %tobool35 = icmp ne %struct.acpi_gpe_block_info** %46, null, !dbg !1035
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !1037

if.then36:                                        ; preds = %if.end31
  %47 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !1038
  %48 = load %struct.acpi_gpe_block_info**, %struct.acpi_gpe_block_info*** %return_gpe_block.addr, align 8, !dbg !1040
  store %struct.acpi_gpe_block_info* %47, %struct.acpi_gpe_block_info** %48, align 8, !dbg !1041
  br label %if.end37, !dbg !1042

if.end37:                                         ; preds = %if.then36, %if.end31
  %49 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !1043
  %gpe_count38 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %49, i32 0, i32 8, !dbg !1044
  %50 = load i16, i16* %gpe_count38, align 4, !dbg !1044
  %conv39 = zext i16 %50 to i32, !dbg !1043
  %51 = load i32, i32* @acpi_current_gpe_count, align 4, !dbg !1045
  %add = add i32 %51, %conv39, !dbg !1045
  store i32 %add, i32* @acpi_current_gpe_count, align 4, !dbg !1045
  store i32 0, i32* %retval, align 4, !dbg !1046
  br label %return, !dbg !1046

return:                                           ; preds = %if.end37, %if.then30, %if.then26, %if.then18, %if.then13, %if.then5, %if.then
  %52 = load i32, i32* %retval, align 4, !dbg !1047
  ret i32 %52, !dbg !1047
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_validate_io_block(i64, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !1048 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1051, metadata !DIExpression()), !dbg !1057
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1061, metadata !DIExpression()), !dbg !1062
  %0 = load i64, i64* %size.addr, align 8, !dbg !1063
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1064, metadata !DIExpression()), !dbg !1065
  br label %do.body, !dbg !1065

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1066, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1070, metadata !DIExpression()), !dbg !1069
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1069
  %conv = zext i1 %cmp to i32, !dbg !1069
  store i32 1, i32* %tmp, align 4, !dbg !1069
  %1 = load i32, i32* %tmp, align 4, !dbg !1069
  %call = call i64 @arch_local_save_flags() #8, !dbg !1071
  store i64 %call, i64* %_flags, align 8, !dbg !1071
  br label %do.end, !dbg !1071

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1072, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1075, metadata !DIExpression()), !dbg !1074
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1074
  %conv6 = zext i1 %cmp5 to i32, !dbg !1074
  store i32 1, i32* %tmp7, align 4, !dbg !1074
  %2 = load i32, i32* %tmp7, align 4, !dbg !1074
  %3 = load i64, i64* %_flags, align 8, !dbg !1076
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1077
  %and.i = and i64 %4, 512, !dbg !1078
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1079
  %lnot.i = xor i1 %tobool.i, true, !dbg !1079
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1079
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1076
  %5 = load i32, i32* %tmp8, align 4, !dbg !1076
  store i32 %5, i32* %tmp1, align 4, !dbg !1071
  %6 = load i32, i32* %tmp1, align 4, !dbg !1065
  %tobool = icmp ne i32 %6, 0, !dbg !1080
  %7 = zext i1 %tobool to i64, !dbg !1080
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1080
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #8, !dbg !1081
  ret i8* %call10, !dbg !1082
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ev_create_gpe_info_blocks(%struct.acpi_gpe_block_info* %gpe_block) #0 !dbg !1083 {
entry:
  %retval = alloca i32, align 4
  %gpe_block.addr = alloca %struct.acpi_gpe_block_info*, align 8
  %gpe_register_info = alloca %struct.acpi_gpe_register_info*, align 8
  %gpe_event_info = alloca %struct.acpi_gpe_event_info*, align 8
  %this_event = alloca %struct.acpi_gpe_event_info*, align 8
  %this_register = alloca %struct.acpi_gpe_register_info*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.acpi_gpe_block_info* %gpe_block, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_block_info** %gpe_block.addr, metadata !1084, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_register_info** %gpe_register_info, metadata !1086, metadata !DIExpression()), !dbg !1087
  store %struct.acpi_gpe_register_info* null, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1087
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info, metadata !1088, metadata !DIExpression()), !dbg !1089
  store %struct.acpi_gpe_event_info* null, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1089
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %this_event, metadata !1090, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_register_info** %this_register, metadata !1092, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1094, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.declare(metadata i32* %j, metadata !1096, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1098, metadata !DIExpression()), !dbg !1099
  %0 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1100
  %register_count = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %0, i32 0, i32 7, !dbg !1100
  %1 = load i32, i32* %register_count, align 8, !dbg !1100
  %conv = zext i32 %1 to i64, !dbg !1100
  %mul = mul i64 %conv, 40, !dbg !1100
  %call = call i8* @acpi_os_allocate_zeroed(i64 %mul) #8, !dbg !1100
  %2 = bitcast i8* %call to %struct.acpi_gpe_register_info*, !dbg !1100
  store %struct.acpi_gpe_register_info* %2, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1101
  %3 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1102
  %tobool = icmp ne %struct.acpi_gpe_register_info* %3, null, !dbg !1102
  br i1 %tobool, label %if.end, label %if.then, !dbg !1104

if.then:                                          ; preds = %entry
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 188, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !1105
  store i32 4, i32* %retval, align 4, !dbg !1107
  br label %return, !dbg !1107

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1108
  %gpe_count = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %4, i32 0, i32 8, !dbg !1108
  %5 = load i16, i16* %gpe_count, align 4, !dbg !1108
  %conv1 = zext i16 %5 to i64, !dbg !1108
  %mul2 = mul i64 %conv1, 24, !dbg !1108
  %call3 = call i8* @acpi_os_allocate_zeroed(i64 %mul2) #8, !dbg !1108
  %6 = bitcast i8* %call3 to %struct.acpi_gpe_event_info*, !dbg !1108
  store %struct.acpi_gpe_event_info* %6, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1109
  %7 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1110
  %tobool4 = icmp ne %struct.acpi_gpe_event_info* %7, null, !dbg !1110
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !1112

if.then5:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 201, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !1113
  store i32 4, i32* %status, align 4, !dbg !1115
  br label %error_exit, !dbg !1116

if.end6:                                          ; preds = %if.end
  %8 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1117
  %9 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1118
  %register_info = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %9, i32 0, i32 4, !dbg !1119
  store %struct.acpi_gpe_register_info* %8, %struct.acpi_gpe_register_info** %register_info, align 8, !dbg !1120
  %10 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1121
  %11 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1122
  %event_info = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %11, i32 0, i32 5, !dbg !1123
  store %struct.acpi_gpe_event_info* %10, %struct.acpi_gpe_event_info** %event_info, align 8, !dbg !1124
  %12 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1125
  store %struct.acpi_gpe_register_info* %12, %struct.acpi_gpe_register_info** %this_register, align 8, !dbg !1126
  %13 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1127
  store %struct.acpi_gpe_event_info* %13, %struct.acpi_gpe_event_info** %this_event, align 8, !dbg !1128
  store i32 0, i32* %i, align 4, !dbg !1129
  br label %for.cond, !dbg !1131

for.cond:                                         ; preds = %for.inc47, %if.end6
  %14 = load i32, i32* %i, align 4, !dbg !1132
  %15 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1134
  %register_count7 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %15, i32 0, i32 7, !dbg !1135
  %16 = load i32, i32* %register_count7, align 8, !dbg !1135
  %cmp = icmp ult i32 %14, %16, !dbg !1136
  br i1 %cmp, label %for.body, label %for.end49, !dbg !1137

for.body:                                         ; preds = %for.cond
  %17 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1138
  %block_base_number = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %17, i32 0, i32 9, !dbg !1140
  %18 = load i16, i16* %block_base_number, align 2, !dbg !1140
  %conv9 = zext i16 %18 to i32, !dbg !1138
  %19 = load i32, i32* %i, align 4, !dbg !1141
  %mul10 = mul i32 %19, 8, !dbg !1142
  %add = add i32 %conv9, %mul10, !dbg !1143
  %conv11 = trunc i32 %add to i16, !dbg !1144
  %20 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %this_register, align 8, !dbg !1145
  %base_gpe_number = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %20, i32 0, i32 2, !dbg !1146
  store i16 %conv11, i16* %base_gpe_number, align 8, !dbg !1147
  %21 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1148
  %address = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %21, i32 0, i32 6, !dbg !1149
  %22 = load i64, i64* %address, align 8, !dbg !1149
  %23 = load i32, i32* %i, align 4, !dbg !1150
  %conv12 = zext i32 %23 to i64, !dbg !1150
  %add13 = add i64 %22, %conv12, !dbg !1151
  %24 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %this_register, align 8, !dbg !1152
  %status_address = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %24, i32 0, i32 0, !dbg !1153
  %address14 = getelementptr inbounds %struct.acpi_gpe_address, %struct.acpi_gpe_address* %status_address, i32 0, i32 1, !dbg !1154
  store i64 %add13, i64* %address14, align 8, !dbg !1155
  %25 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1156
  %address15 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %25, i32 0, i32 6, !dbg !1157
  %26 = load i64, i64* %address15, align 8, !dbg !1157
  %27 = load i32, i32* %i, align 4, !dbg !1158
  %conv16 = zext i32 %27 to i64, !dbg !1158
  %add17 = add i64 %26, %conv16, !dbg !1159
  %28 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1160
  %register_count18 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %28, i32 0, i32 7, !dbg !1161
  %29 = load i32, i32* %register_count18, align 8, !dbg !1161
  %conv19 = zext i32 %29 to i64, !dbg !1160
  %add20 = add i64 %add17, %conv19, !dbg !1162
  %30 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %this_register, align 8, !dbg !1163
  %enable_address = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %30, i32 0, i32 1, !dbg !1164
  %address21 = getelementptr inbounds %struct.acpi_gpe_address, %struct.acpi_gpe_address* %enable_address, i32 0, i32 1, !dbg !1165
  store i64 %add20, i64* %address21, align 8, !dbg !1166
  %31 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1167
  %space_id = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %31, i32 0, i32 10, !dbg !1168
  %32 = load i8, i8* %space_id, align 8, !dbg !1168
  %33 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %this_register, align 8, !dbg !1169
  %status_address22 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %33, i32 0, i32 0, !dbg !1170
  %space_id23 = getelementptr inbounds %struct.acpi_gpe_address, %struct.acpi_gpe_address* %status_address22, i32 0, i32 0, !dbg !1171
  store i8 %32, i8* %space_id23, align 8, !dbg !1172
  %34 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1173
  %space_id24 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %34, i32 0, i32 10, !dbg !1174
  %35 = load i8, i8* %space_id24, align 8, !dbg !1174
  %36 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %this_register, align 8, !dbg !1175
  %enable_address25 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %36, i32 0, i32 1, !dbg !1176
  %space_id26 = getelementptr inbounds %struct.acpi_gpe_address, %struct.acpi_gpe_address* %enable_address25, i32 0, i32 0, !dbg !1177
  store i8 %35, i8* %space_id26, align 8, !dbg !1178
  store i32 0, i32* %j, align 4, !dbg !1179
  br label %for.cond27, !dbg !1181

for.cond27:                                       ; preds = %for.inc, %for.body
  %37 = load i32, i32* %j, align 4, !dbg !1182
  %cmp28 = icmp ult i32 %37, 8, !dbg !1184
  br i1 %cmp28, label %for.body30, label %for.end, !dbg !1185

for.body30:                                       ; preds = %for.cond27
  %38 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %this_register, align 8, !dbg !1186
  %base_gpe_number31 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %38, i32 0, i32 2, !dbg !1188
  %39 = load i16, i16* %base_gpe_number31, align 8, !dbg !1188
  %conv32 = zext i16 %39 to i32, !dbg !1186
  %40 = load i32, i32* %j, align 4, !dbg !1189
  %add33 = add i32 %conv32, %40, !dbg !1190
  %conv34 = trunc i32 %add33 to i8, !dbg !1191
  %41 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %this_event, align 8, !dbg !1192
  %gpe_number = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %41, i32 0, i32 3, !dbg !1193
  store i8 %conv34, i8* %gpe_number, align 1, !dbg !1194
  %42 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %this_register, align 8, !dbg !1195
  %43 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %this_event, align 8, !dbg !1196
  %register_info35 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %43, i32 0, i32 1, !dbg !1197
  store %struct.acpi_gpe_register_info* %42, %struct.acpi_gpe_register_info** %register_info35, align 8, !dbg !1198
  %44 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %this_event, align 8, !dbg !1199
  %incdec.ptr = getelementptr %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %44, i32 1, !dbg !1199
  store %struct.acpi_gpe_event_info* %incdec.ptr, %struct.acpi_gpe_event_info** %this_event, align 8, !dbg !1199
  br label %for.inc, !dbg !1200

for.inc:                                          ; preds = %for.body30
  %45 = load i32, i32* %j, align 4, !dbg !1201
  %inc = add i32 %45, 1, !dbg !1201
  store i32 %inc, i32* %j, align 4, !dbg !1201
  br label %for.cond27, !dbg !1202, !llvm.loop !1203

for.end:                                          ; preds = %for.cond27
  %46 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %this_register, align 8, !dbg !1205
  %enable_address36 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %46, i32 0, i32 1, !dbg !1206
  %call37 = call i32 @acpi_hw_gpe_write(i64 0, %struct.acpi_gpe_address* %enable_address36) #8, !dbg !1207
  store i32 %call37, i32* %status, align 4, !dbg !1208
  %47 = load i32, i32* %status, align 4, !dbg !1209
  %tobool38 = icmp ne i32 %47, 0, !dbg !1209
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !1211

if.then39:                                        ; preds = %for.end
  br label %error_exit, !dbg !1212

if.end40:                                         ; preds = %for.end
  %48 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %this_register, align 8, !dbg !1214
  %status_address41 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %48, i32 0, i32 0, !dbg !1215
  %call42 = call i32 @acpi_hw_gpe_write(i64 255, %struct.acpi_gpe_address* %status_address41) #8, !dbg !1216
  store i32 %call42, i32* %status, align 4, !dbg !1217
  %49 = load i32, i32* %status, align 4, !dbg !1218
  %tobool43 = icmp ne i32 %49, 0, !dbg !1218
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !1220

if.then44:                                        ; preds = %if.end40
  br label %error_exit, !dbg !1221

if.end45:                                         ; preds = %if.end40
  %50 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %this_register, align 8, !dbg !1223
  %incdec.ptr46 = getelementptr %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %50, i32 1, !dbg !1223
  store %struct.acpi_gpe_register_info* %incdec.ptr46, %struct.acpi_gpe_register_info** %this_register, align 8, !dbg !1223
  br label %for.inc47, !dbg !1224

for.inc47:                                        ; preds = %if.end45
  %51 = load i32, i32* %i, align 4, !dbg !1225
  %inc48 = add i32 %51, 1, !dbg !1225
  store i32 %inc48, i32* %i, align 4, !dbg !1225
  br label %for.cond, !dbg !1226, !llvm.loop !1227

for.end49:                                        ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !1229
  br label %return, !dbg !1229

error_exit:                                       ; preds = %if.then44, %if.then39, %if.then5
  call void @llvm.dbg.label(metadata !1230), !dbg !1231
  %52 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1232
  %tobool50 = icmp ne %struct.acpi_gpe_register_info* %52, null, !dbg !1232
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !1234

if.then51:                                        ; preds = %error_exit
  %53 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1235
  %54 = bitcast %struct.acpi_gpe_register_info* %53 to i8*, !dbg !1235
  call void @acpi_os_free(i8* %54) #8, !dbg !1235
  br label %if.end52, !dbg !1237

if.end52:                                         ; preds = %if.then51, %error_exit
  %55 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1238
  %tobool53 = icmp ne %struct.acpi_gpe_event_info* %55, null, !dbg !1238
  br i1 %tobool53, label %if.then54, label %if.end55, !dbg !1240

if.then54:                                        ; preds = %if.end52
  %56 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1241
  %57 = bitcast %struct.acpi_gpe_event_info* %56 to i8*, !dbg !1241
  call void @acpi_os_free(i8* %57) #8, !dbg !1241
  br label %if.end55, !dbg !1243

if.end55:                                         ; preds = %if.then54, %if.end52
  %58 = load i32, i32* %status, align 4, !dbg !1244
  store i32 %58, i32* %retval, align 4, !dbg !1244
  br label %return, !dbg !1244

return:                                           ; preds = %if.end55, %for.end49, %if.then
  %59 = load i32, i32* %retval, align 4, !dbg !1245
  ret i32 %59, !dbg !1245
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ev_install_gpe_block(%struct.acpi_gpe_block_info* %gpe_block, i32 %interrupt_number) #0 !dbg !1246 {
entry:
  %retval = alloca i32, align 4
  %gpe_block.addr = alloca %struct.acpi_gpe_block_info*, align 8
  %interrupt_number.addr = alloca i32, align 4
  %next_gpe_block = alloca %struct.acpi_gpe_block_info*, align 8
  %gpe_xrupt_block = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  store %struct.acpi_gpe_block_info* %gpe_block, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_block_info** %gpe_block.addr, metadata !1249, metadata !DIExpression()), !dbg !1250
  store i32 %interrupt_number, i32* %interrupt_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %interrupt_number.addr, metadata !1251, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_block_info** %next_gpe_block, metadata !1253, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_xrupt_info** %gpe_xrupt_block, metadata !1255, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1257, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !1259, metadata !DIExpression()), !dbg !1260
  %call = call i32 @acpi_ut_acquire_mutex(i32 3) #8, !dbg !1261
  store i32 %call, i32* %status, align 4, !dbg !1262
  %0 = load i32, i32* %status, align 4, !dbg !1263
  %tobool = icmp ne i32 %0, 0, !dbg !1263
  br i1 %tobool, label %if.then, label %if.end, !dbg !1265

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4, !dbg !1266
  store i32 %1, i32* %retval, align 4, !dbg !1266
  br label %return, !dbg !1266

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %interrupt_number.addr, align 4, !dbg !1268
  %call1 = call i32 @acpi_ev_get_gpe_xrupt_block(i32 %2, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_block) #8, !dbg !1269
  store i32 %call1, i32* %status, align 4, !dbg !1270
  %3 = load i32, i32* %status, align 4, !dbg !1271
  %tobool2 = icmp ne i32 %3, 0, !dbg !1271
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1273

if.then3:                                         ; preds = %if.end
  br label %unlock_and_exit, !dbg !1274

if.end4:                                          ; preds = %if.end
  %4 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1276
  %call5 = call i64 @acpi_os_acquire_lock(%struct.spinlock* %4) #8, !dbg !1277
  store i64 %call5, i64* %flags, align 8, !dbg !1278
  %5 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_block, align 8, !dbg !1279
  %gpe_block_list_head = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %5, i32 0, i32 2, !dbg !1281
  %6 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block_list_head, align 8, !dbg !1281
  %tobool6 = icmp ne %struct.acpi_gpe_block_info* %6, null, !dbg !1279
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !1282

if.then7:                                         ; preds = %if.end4
  %7 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_block, align 8, !dbg !1283
  %gpe_block_list_head8 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %7, i32 0, i32 2, !dbg !1285
  %8 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block_list_head8, align 8, !dbg !1285
  store %struct.acpi_gpe_block_info* %8, %struct.acpi_gpe_block_info** %next_gpe_block, align 8, !dbg !1286
  br label %while.cond, !dbg !1287

while.cond:                                       ; preds = %while.body, %if.then7
  %9 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %next_gpe_block, align 8, !dbg !1288
  %next = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %9, i32 0, i32 2, !dbg !1289
  %10 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %next, align 8, !dbg !1289
  %tobool9 = icmp ne %struct.acpi_gpe_block_info* %10, null, !dbg !1287
  br i1 %tobool9, label %while.body, label %while.end, !dbg !1287

while.body:                                       ; preds = %while.cond
  %11 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %next_gpe_block, align 8, !dbg !1290
  %next10 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %11, i32 0, i32 2, !dbg !1292
  %12 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %next10, align 8, !dbg !1292
  store %struct.acpi_gpe_block_info* %12, %struct.acpi_gpe_block_info** %next_gpe_block, align 8, !dbg !1293
  br label %while.cond, !dbg !1287, !llvm.loop !1294

while.end:                                        ; preds = %while.cond
  %13 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1296
  %14 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %next_gpe_block, align 8, !dbg !1297
  %next11 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %14, i32 0, i32 2, !dbg !1298
  store %struct.acpi_gpe_block_info* %13, %struct.acpi_gpe_block_info** %next11, align 8, !dbg !1299
  %15 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %next_gpe_block, align 8, !dbg !1300
  %16 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1301
  %previous = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %16, i32 0, i32 1, !dbg !1302
  store %struct.acpi_gpe_block_info* %15, %struct.acpi_gpe_block_info** %previous, align 8, !dbg !1303
  br label %if.end13, !dbg !1304

if.else:                                          ; preds = %if.end4
  %17 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1305
  %18 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_block, align 8, !dbg !1307
  %gpe_block_list_head12 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %18, i32 0, i32 2, !dbg !1308
  store %struct.acpi_gpe_block_info* %17, %struct.acpi_gpe_block_info** %gpe_block_list_head12, align 8, !dbg !1309
  br label %if.end13

if.end13:                                         ; preds = %if.else, %while.end
  %19 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_block, align 8, !dbg !1310
  %20 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1311
  %xrupt_block = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %20, i32 0, i32 3, !dbg !1312
  store %struct.acpi_gpe_xrupt_info* %19, %struct.acpi_gpe_xrupt_info** %xrupt_block, align 8, !dbg !1313
  %21 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1314
  %22 = load i64, i64* %flags, align 8, !dbg !1315
  call void @acpi_os_release_lock(%struct.spinlock* %21, i64 %22) #8, !dbg !1316
  br label %unlock_and_exit, !dbg !1316

unlock_and_exit:                                  ; preds = %if.end13, %if.then3
  call void @llvm.dbg.label(metadata !1317), !dbg !1318
  %call14 = call i32 @acpi_ut_release_mutex(i32 3) #8, !dbg !1319
  %23 = load i32, i32* %status, align 4, !dbg !1320
  store i32 %23, i32* %retval, align 4, !dbg !1320
  br label %return, !dbg !1320

return:                                           ; preds = %unlock_and_exit, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !1321
  ret i32 %24, !dbg !1321
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_walk_namespace(i32, i8*, i32, i32, i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)*, i8*, i8**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_match_gpe_method(i8*, i32, i8*, i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_initialize_gpe_block(%struct.acpi_gpe_xrupt_info* %gpe_xrupt_info, %struct.acpi_gpe_block_info* %gpe_block, i8* %context) #0 !dbg !1322 {
entry:
  %retval = alloca i32, align 4
  %gpe_xrupt_info.addr = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %gpe_block.addr = alloca %struct.acpi_gpe_block_info*, align 8
  %context.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %gpe_event_info = alloca %struct.acpi_gpe_event_info*, align 8
  %gpe_enabled_count = alloca i32, align 4
  %gpe_index = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %is_polling_needed = alloca i8*, align 8
  %gpe_number = alloca i32, align 4
  store %struct.acpi_gpe_xrupt_info* %gpe_xrupt_info, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info.addr, metadata !1325, metadata !DIExpression()), !dbg !1326
  store %struct.acpi_gpe_block_info* %gpe_block, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_block_info** %gpe_block.addr, metadata !1327, metadata !DIExpression()), !dbg !1328
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1329, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1331, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info, metadata !1333, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.declare(metadata i32* %gpe_enabled_count, metadata !1335, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.declare(metadata i32* %gpe_index, metadata !1337, metadata !DIExpression()), !dbg !1338
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1339, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.declare(metadata i32* %j, metadata !1341, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.declare(metadata i8** %is_polling_needed, metadata !1343, metadata !DIExpression()), !dbg !1344
  %0 = load i8*, i8** %context.addr, align 8, !dbg !1345
  store i8* %0, i8** %is_polling_needed, align 8, !dbg !1344
  call void @llvm.dbg.declare(metadata i32* %gpe_number, metadata !1346, metadata !DIExpression()), !dbg !1347
  %1 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1348
  %tobool = icmp ne %struct.acpi_gpe_block_info* %1, null, !dbg !1348
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1350

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1351
  %initialized = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %2, i32 0, i32 11, !dbg !1352
  %3 = load i8, i8* %initialized, align 1, !dbg !1352
  %conv = zext i8 %3 to i32, !dbg !1351
  %tobool1 = icmp ne i32 %conv, 0, !dbg !1351
  br i1 %tobool1, label %if.then, label %if.end, !dbg !1353

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !1354
  br label %return, !dbg !1354

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %gpe_enabled_count, align 4, !dbg !1356
  store i32 0, i32* %i, align 4, !dbg !1357
  br label %for.cond, !dbg !1359

for.cond:                                         ; preds = %for.inc49, %if.end
  %4 = load i32, i32* %i, align 4, !dbg !1360
  %5 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1362
  %register_count = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %5, i32 0, i32 7, !dbg !1363
  %6 = load i32, i32* %register_count, align 8, !dbg !1363
  %cmp = icmp ult i32 %4, %6, !dbg !1364
  br i1 %cmp, label %for.body, label %for.end51, !dbg !1365

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !1366
  br label %for.cond3, !dbg !1369

for.cond3:                                        ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4, !dbg !1370
  %cmp4 = icmp ult i32 %7, 8, !dbg !1372
  br i1 %cmp4, label %for.body6, label %for.end, !dbg !1373

for.body6:                                        ; preds = %for.cond3
  %8 = load i32, i32* %i, align 4, !dbg !1374
  %mul = mul i32 %8, 8, !dbg !1376
  %9 = load i32, i32* %j, align 4, !dbg !1377
  %add = add i32 %mul, %9, !dbg !1378
  store i32 %add, i32* %gpe_index, align 4, !dbg !1379
  %10 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1380
  %event_info = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %10, i32 0, i32 5, !dbg !1381
  %11 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %event_info, align 8, !dbg !1381
  %12 = load i32, i32* %gpe_index, align 4, !dbg !1382
  %idxprom = zext i32 %12 to i64, !dbg !1380
  %arrayidx = getelementptr %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %11, i64 %idxprom, !dbg !1380
  store %struct.acpi_gpe_event_info* %arrayidx, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1383
  %13 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1384
  %block_base_number = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %13, i32 0, i32 9, !dbg !1384
  %14 = load i16, i16* %block_base_number, align 2, !dbg !1384
  %conv7 = zext i16 %14 to i32, !dbg !1384
  %15 = load i32, i32* %gpe_index, align 4, !dbg !1384
  %add8 = add i32 %conv7, %15, !dbg !1384
  store i32 %add8, i32* %gpe_number, align 4, !dbg !1384
  %16 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1385
  %flags = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %16, i32 0, i32 2, !dbg !1386
  %17 = load i8, i8* %flags, align 8, !dbg !1387
  %conv9 = zext i8 %17 to i32, !dbg !1387
  %or = or i32 %conv9, 64, !dbg !1387
  %conv10 = trunc i32 %or to i8, !dbg !1387
  store i8 %conv10, i8* %flags, align 8, !dbg !1387
  %18 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1388
  %flags11 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %18, i32 0, i32 2, !dbg !1388
  %19 = load i8, i8* %flags11, align 8, !dbg !1388
  %conv12 = zext i8 %19 to i32, !dbg !1388
  %and = and i32 %conv12, 7, !dbg !1388
  %conv13 = trunc i32 %and to i8, !dbg !1388
  %conv14 = zext i8 %conv13 to i32, !dbg !1388
  %cmp15 = icmp ne i32 %conv14, 1, !dbg !1390
  br i1 %cmp15, label %if.then22, label %lor.lhs.false17, !dbg !1391

lor.lhs.false17:                                  ; preds = %for.body6
  %20 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1392
  %flags18 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %20, i32 0, i32 2, !dbg !1393
  %21 = load i8, i8* %flags18, align 8, !dbg !1393
  %conv19 = zext i8 %21 to i32, !dbg !1392
  %and20 = and i32 %conv19, 16, !dbg !1394
  %tobool21 = icmp ne i32 %and20, 0, !dbg !1394
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !1395

if.then22:                                        ; preds = %lor.lhs.false17, %for.body6
  br label %for.inc, !dbg !1396

if.end23:                                         ; preds = %lor.lhs.false17
  %22 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1398
  %call = call i32 @acpi_ev_add_gpe_reference(%struct.acpi_gpe_event_info* %22, i8 zeroext 0) #8, !dbg !1399
  store i32 %call, i32* %status, align 4, !dbg !1400
  %23 = load i32, i32* %status, align 4, !dbg !1401
  %tobool24 = icmp ne i32 %23, 0, !dbg !1401
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !1403

if.then25:                                        ; preds = %if.end23
  %24 = load i32, i32* %status, align 4, !dbg !1404
  %25 = load i32, i32* %gpe_number, align 4, !dbg !1404
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 472, i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %25) #8, !dbg !1404
  br label %for.inc, !dbg !1406

if.end26:                                         ; preds = %if.end23
  %26 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1407
  %flags27 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %26, i32 0, i32 2, !dbg !1408
  %27 = load i8, i8* %flags27, align 8, !dbg !1409
  %conv28 = zext i8 %27 to i32, !dbg !1409
  %or29 = or i32 %conv28, 32, !dbg !1409
  %conv30 = trunc i32 %or29 to i8, !dbg !1409
  store i8 %conv30, i8* %flags27, align 8, !dbg !1409
  %28 = load i8*, i8** %is_polling_needed, align 8, !dbg !1410
  %tobool31 = icmp ne i8* %28, null, !dbg !1410
  br i1 %tobool31, label %land.lhs.true, label %if.end47, !dbg !1412

land.lhs.true:                                    ; preds = %if.end26
  %29 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1413
  %runtime_count = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %29, i32 0, i32 4, !dbg !1413
  %30 = load i8, i8* %runtime_count, align 2, !dbg !1413
  %conv32 = zext i8 %30 to i32, !dbg !1413
  %cmp33 = icmp eq i32 %conv32, 1, !dbg !1413
  br i1 %cmp33, label %land.lhs.true35, label %if.end47, !dbg !1413

land.lhs.true35:                                  ; preds = %land.lhs.true
  %31 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1413
  %flags36 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %31, i32 0, i32 2, !dbg !1413
  %32 = load i8, i8* %flags36, align 8, !dbg !1413
  %conv37 = zext i8 %32 to i32, !dbg !1413
  %and38 = and i32 %conv37, 64, !dbg !1413
  %tobool39 = icmp ne i32 %and38, 0, !dbg !1413
  br i1 %tobool39, label %land.lhs.true40, label %if.end47, !dbg !1413

land.lhs.true40:                                  ; preds = %land.lhs.true35
  %33 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1413
  %flags41 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %33, i32 0, i32 2, !dbg !1413
  %34 = load i8, i8* %flags41, align 8, !dbg !1413
  %conv42 = zext i8 %34 to i32, !dbg !1413
  %and43 = and i32 %conv42, 8, !dbg !1413
  %cmp44 = icmp eq i32 %and43, 0, !dbg !1413
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !1414

if.then46:                                        ; preds = %land.lhs.true40
  %35 = load i8*, i8** %is_polling_needed, align 8, !dbg !1415
  store i8 1, i8* %35, align 1, !dbg !1417
  br label %if.end47, !dbg !1418

if.end47:                                         ; preds = %if.then46, %land.lhs.true40, %land.lhs.true35, %land.lhs.true, %if.end26
  %36 = load i32, i32* %gpe_enabled_count, align 4, !dbg !1419
  %inc = add i32 %36, 1, !dbg !1419
  store i32 %inc, i32* %gpe_enabled_count, align 4, !dbg !1419
  br label %for.inc, !dbg !1420

for.inc:                                          ; preds = %if.end47, %if.then25, %if.then22
  %37 = load i32, i32* %j, align 4, !dbg !1421
  %inc48 = add i32 %37, 1, !dbg !1421
  store i32 %inc48, i32* %j, align 4, !dbg !1421
  br label %for.cond3, !dbg !1422, !llvm.loop !1423

for.end:                                          ; preds = %for.cond3
  br label %for.inc49, !dbg !1425

for.inc49:                                        ; preds = %for.end
  %38 = load i32, i32* %i, align 4, !dbg !1426
  %inc50 = add i32 %38, 1, !dbg !1426
  store i32 %inc50, i32* %i, align 4, !dbg !1426
  br label %for.cond, !dbg !1427, !llvm.loop !1428

for.end51:                                        ; preds = %for.cond
  %39 = load i32, i32* %gpe_enabled_count, align 4, !dbg !1430
  %tobool52 = icmp ne i32 %39, 0, !dbg !1430
  br i1 %tobool52, label %if.then53, label %if.end60, !dbg !1432

if.then53:                                        ; preds = %for.end51
  %40 = load i32, i32* %gpe_enabled_count, align 4, !dbg !1433
  %41 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1433
  %block_base_number54 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %41, i32 0, i32 9, !dbg !1433
  %42 = load i16, i16* %block_base_number54, align 2, !dbg !1433
  %conv55 = zext i16 %42 to i32, !dbg !1433
  %43 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1433
  %block_base_number56 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %43, i32 0, i32 9, !dbg !1433
  %44 = load i16, i16* %block_base_number56, align 2, !dbg !1433
  %conv57 = zext i16 %44 to i32, !dbg !1433
  %45 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1433
  %gpe_count = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %45, i32 0, i32 8, !dbg !1433
  %46 = load i16, i16* %gpe_count, align 4, !dbg !1433
  %conv58 = zext i16 %46 to i32, !dbg !1433
  %sub = sub i32 %conv58, 1, !dbg !1433
  %add59 = add i32 %conv57, %sub, !dbg !1433
  call void (i8*, ...) @acpi_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %conv55, i32 %add59) #8, !dbg !1433
  br label %if.end60, !dbg !1435

if.end60:                                         ; preds = %if.then53, %for.end51
  %47 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block.addr, align 8, !dbg !1436
  %initialized61 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %47, i32 0, i32 11, !dbg !1437
  store i8 1, i8* %initialized61, align 1, !dbg !1438
  store i32 0, i32* %retval, align 4, !dbg !1439
  br label %return, !dbg !1439

return:                                           ; preds = %if.end60, %if.then
  %48 = load i32, i32* %retval, align 4, !dbg !1440
  ret i32 %48, !dbg !1440
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_add_gpe_reference(%struct.acpi_gpe_event_info*, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_info(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1441 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1448, metadata !DIExpression()), !dbg !1455
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1461, metadata !DIExpression()), !dbg !1462
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1463, metadata !DIExpression()), !dbg !1464
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1465, metadata !DIExpression()), !dbg !1466
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1467, metadata !DIExpression()), !dbg !1471
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1473, metadata !DIExpression()), !dbg !1477
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1479, metadata !DIExpression()), !dbg !1483
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1488, metadata !DIExpression()), !dbg !1489
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1490, metadata !DIExpression()), !dbg !1491
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1492, metadata !DIExpression()), !dbg !1493
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1494, metadata !DIExpression()), !dbg !1495
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1496, metadata !DIExpression()), !dbg !1497
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1498, metadata !DIExpression()), !dbg !1499
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1500, metadata !DIExpression()), !dbg !1501
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1502, metadata !DIExpression()), !dbg !1503
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1504, metadata !DIExpression()), !dbg !1505
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1506, metadata !DIExpression()), !dbg !1507
  %0 = load i64, i64* %size.addr, align 8, !dbg !1508
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1509
  %or = or i32 %1, 256, !dbg !1510
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1511
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !1512
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1513

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1514
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1515
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1516

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1517
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1518
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1519
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !1520
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1497
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1521
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1522
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1523
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1524
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1525
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1526
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !1527
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1527
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1527
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1527
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !1527
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1528
  br label %kmalloc.exit, !dbg !1528

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1529
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1530
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1530
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1532

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1533
  br label %kmalloc_index.exit.i, !dbg !1533

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1534
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1536
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1537

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1538
  br label %kmalloc_index.exit.i, !dbg !1538

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1539
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1541
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1542

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1543
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1544
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1545

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1546
  br label %kmalloc_index.exit.i, !dbg !1546

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1547
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1549
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1550

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1551
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1552
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1553

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1554
  br label %kmalloc_index.exit.i, !dbg !1554

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1555
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1557
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1558

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1559
  br label %kmalloc_index.exit.i, !dbg !1559

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1560
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1562
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1563

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1564
  br label %kmalloc_index.exit.i, !dbg !1564

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1565
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1567
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1568

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1569
  br label %kmalloc_index.exit.i, !dbg !1569

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1570
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1572
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1573

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1574
  br label %kmalloc_index.exit.i, !dbg !1574

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1575
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1577
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1578

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1579
  br label %kmalloc_index.exit.i, !dbg !1579

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1580
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1582
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1583

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1584
  br label %kmalloc_index.exit.i, !dbg !1584

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1585
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1587
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1588

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1589
  br label %kmalloc_index.exit.i, !dbg !1589

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1590
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1592
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1593

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1594
  br label %kmalloc_index.exit.i, !dbg !1594

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1595
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1597
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1598

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1599
  br label %kmalloc_index.exit.i, !dbg !1599

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1600
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1602
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1603

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1604
  br label %kmalloc_index.exit.i, !dbg !1604

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1605
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1607
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1608

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1609
  br label %kmalloc_index.exit.i, !dbg !1609

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1610
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1612
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1613

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1614
  br label %kmalloc_index.exit.i, !dbg !1614

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1615
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1617
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1618

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1619
  br label %kmalloc_index.exit.i, !dbg !1619

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1620
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1622
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1623

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1624
  br label %kmalloc_index.exit.i, !dbg !1624

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1625
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1627
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1628

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1629
  br label %kmalloc_index.exit.i, !dbg !1629

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1630
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1632
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1633

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1634
  br label %kmalloc_index.exit.i, !dbg !1634

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1635
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1637
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1638

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1639
  br label %kmalloc_index.exit.i, !dbg !1639

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1640
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1642
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1643

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1644
  br label %kmalloc_index.exit.i, !dbg !1644

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1645
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1647
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1648

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1649
  br label %kmalloc_index.exit.i, !dbg !1649

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1650
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1652
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1653

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1654
  br label %kmalloc_index.exit.i, !dbg !1654

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1655
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1657
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1658

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1659
  br label %kmalloc_index.exit.i, !dbg !1659

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1660
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1662
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1663

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1664
  br label %kmalloc_index.exit.i, !dbg !1664

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1665
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1667
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1668

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1669
  br label %kmalloc_index.exit.i, !dbg !1669

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1670
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1672
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1673

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1674
  br label %kmalloc_index.exit.i, !dbg !1674

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !1675, !srcloc !1678
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #7, !dbg !1679, !srcloc !1682
  unreachable, !dbg !1683

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1684
  store i32 %45, i32* %index.i, align 4, !dbg !1685
  %46 = load i32, i32* %index.i, align 4, !dbg !1686
  %tobool.i = icmp ne i32 %46, 0, !dbg !1686
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1688

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1689
  br label %kmalloc.exit, !dbg !1689

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1690
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1691
  %and.i.i = and i32 %48, 17, !dbg !1691
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1691
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1691
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1691
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1691
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1693

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1694
  br label %kmalloc_type.exit.i, !dbg !1694

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1695
  %and2.i.i = and i32 %49, 1, !dbg !1696
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1695
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1695
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1695
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1697
  br label %kmalloc_type.exit.i, !dbg !1697

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1698
  %idxprom.i = zext i32 %51 to i64, !dbg !1699
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1699
  %52 = load i32, i32* %index.i, align 4, !dbg !1700
  %idxprom6.i = zext i32 %52 to i64, !dbg !1699
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1699
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1699
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1701
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1702
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1703
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1704
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !1705
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1705
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1705
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1705
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !1705
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1466
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1706
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1707
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1708
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1709
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !1710
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1711
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1712
  store i8* %62, i8** %retval.i, align 8, !dbg !1713
  br label %kmalloc.exit, !dbg !1713

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1714
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1715
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !1716
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1716
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1716
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1716
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !1716
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1717
  br label %kmalloc.exit, !dbg !1717

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1718
  ret i8* %65, !dbg !1719
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1720 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1724, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1727, metadata !DIExpression()), !dbg !1726
  %0 = load i64, i64* %__edi, align 8, !dbg !1726
  store i64 %0, i64* %__edi, align 8, !dbg !1726
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1728, metadata !DIExpression()), !dbg !1726
  %1 = load i64, i64* %__esi, align 8, !dbg !1726
  store i64 %1, i64* %__esi, align 8, !dbg !1726
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1729, metadata !DIExpression()), !dbg !1726
  %2 = load i64, i64* %__edx, align 8, !dbg !1726
  store i64 %2, i64* %__edx, align 8, !dbg !1726
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1730, metadata !DIExpression()), !dbg !1726
  %3 = load i64, i64* %__ecx, align 8, !dbg !1726
  store i64 %3, i64* %__ecx, align 8, !dbg !1726
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1731, metadata !DIExpression()), !dbg !1726
  %4 = load i64, i64* %__eax, align 8, !dbg !1726
  store i64 %4, i64* %__eax, align 8, !dbg !1726
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1726
  %6 = call i64 @llvm.read_register.i64(metadata !41), !dbg !1732
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !1732, !srcloc !1735
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1732
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1732
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1732
  call void @llvm.write_register.i64(metadata !41, i64 %asmresult1), !dbg !1732
  %8 = load i64, i64* %__eax, align 8, !dbg !1732
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1736, metadata !DIExpression()), !dbg !1738
  store i64 -1, i64* %__mask, align 8, !dbg !1738
  %9 = load i64, i64* %__mask, align 8, !dbg !1738
  store i64 %9, i64* %tmp, align 8, !dbg !1738
  %10 = load i64, i64* %tmp, align 8, !dbg !1738
  %and = and i64 %8, %10, !dbg !1732
  store i64 %and, i64* %__ret, align 8, !dbg !1732
  %11 = load i64, i64* %__ret, align 8, !dbg !1726
  store i64 %11, i64* %tmp2, align 8, !dbg !1739
  %12 = load i64, i64* %tmp2, align 8, !dbg !1726
  ret i64 %12, !dbg !1740
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !1741 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1743, metadata !DIExpression()), !dbg !1748
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1750, metadata !DIExpression()), !dbg !1751
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1752, metadata !DIExpression()), !dbg !1753
  %0 = load i64, i64* %size.addr, align 8, !dbg !1754
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1756
  br i1 %1, label %if.then, label %if.end447, !dbg !1757

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1758
  %tobool = icmp ne i64 %2, 0, !dbg !1758
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1761

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1762
  br label %return, !dbg !1762

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1763
  %cmp = icmp ult i64 %3, 4096, !dbg !1765
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1766

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1767
  br label %return, !dbg !1767

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub = sub i64 %4, 1, !dbg !1768
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1768
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1768

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub4 = sub i64 %6, 1, !dbg !1768
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1768
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1768

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub6 = sub i64 %8, 1, !dbg !1768
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1768
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1768

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1768

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub9 = sub i64 %9, 1, !dbg !1768
  %and = and i64 %sub9, -9223372036854775808, !dbg !1768
  %tobool10 = icmp ne i64 %and, 0, !dbg !1768
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1768

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1768

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub13 = sub i64 %10, 1, !dbg !1768
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1768
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1768
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1768

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1768

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub18 = sub i64 %11, 1, !dbg !1768
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1768
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1768
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1768

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1768

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub23 = sub i64 %12, 1, !dbg !1768
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1768
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1768
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1768

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1768

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub28 = sub i64 %13, 1, !dbg !1768
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1768
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1768
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1768

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1768

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub33 = sub i64 %14, 1, !dbg !1768
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1768
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1768
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1768

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1768

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub38 = sub i64 %15, 1, !dbg !1768
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1768
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1768
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1768

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1768

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub43 = sub i64 %16, 1, !dbg !1768
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1768
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1768
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1768

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1768

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub48 = sub i64 %17, 1, !dbg !1768
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1768
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1768
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1768

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1768

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub53 = sub i64 %18, 1, !dbg !1768
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1768
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1768
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1768

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1768

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub58 = sub i64 %19, 1, !dbg !1768
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1768
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1768
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1768

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1768

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub63 = sub i64 %20, 1, !dbg !1768
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1768
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1768
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1768

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1768

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub68 = sub i64 %21, 1, !dbg !1768
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1768
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1768
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1768

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1768

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub73 = sub i64 %22, 1, !dbg !1768
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1768
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1768
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1768

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1768

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub78 = sub i64 %23, 1, !dbg !1768
  %and79 = and i64 %sub78, 562949953421312, !dbg !1768
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1768
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1768

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1768

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub83 = sub i64 %24, 1, !dbg !1768
  %and84 = and i64 %sub83, 281474976710656, !dbg !1768
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1768
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1768

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1768

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub88 = sub i64 %25, 1, !dbg !1768
  %and89 = and i64 %sub88, 140737488355328, !dbg !1768
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1768
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1768

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1768

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub93 = sub i64 %26, 1, !dbg !1768
  %and94 = and i64 %sub93, 70368744177664, !dbg !1768
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1768
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1768

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1768

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub98 = sub i64 %27, 1, !dbg !1768
  %and99 = and i64 %sub98, 35184372088832, !dbg !1768
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1768
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1768

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1768

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub103 = sub i64 %28, 1, !dbg !1768
  %and104 = and i64 %sub103, 17592186044416, !dbg !1768
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1768
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1768

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1768

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub108 = sub i64 %29, 1, !dbg !1768
  %and109 = and i64 %sub108, 8796093022208, !dbg !1768
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1768
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1768

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1768

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub113 = sub i64 %30, 1, !dbg !1768
  %and114 = and i64 %sub113, 4398046511104, !dbg !1768
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1768
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1768

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1768

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub118 = sub i64 %31, 1, !dbg !1768
  %and119 = and i64 %sub118, 2199023255552, !dbg !1768
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1768
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1768

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1768

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub123 = sub i64 %32, 1, !dbg !1768
  %and124 = and i64 %sub123, 1099511627776, !dbg !1768
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1768
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1768

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1768

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub128 = sub i64 %33, 1, !dbg !1768
  %and129 = and i64 %sub128, 549755813888, !dbg !1768
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1768
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1768

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1768

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub133 = sub i64 %34, 1, !dbg !1768
  %and134 = and i64 %sub133, 274877906944, !dbg !1768
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1768
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1768

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1768

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub138 = sub i64 %35, 1, !dbg !1768
  %and139 = and i64 %sub138, 137438953472, !dbg !1768
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1768
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1768

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1768

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub143 = sub i64 %36, 1, !dbg !1768
  %and144 = and i64 %sub143, 68719476736, !dbg !1768
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1768
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1768

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1768

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub148 = sub i64 %37, 1, !dbg !1768
  %and149 = and i64 %sub148, 34359738368, !dbg !1768
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1768
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1768

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1768

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub153 = sub i64 %38, 1, !dbg !1768
  %and154 = and i64 %sub153, 17179869184, !dbg !1768
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1768
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1768

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1768

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub158 = sub i64 %39, 1, !dbg !1768
  %and159 = and i64 %sub158, 8589934592, !dbg !1768
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1768
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1768

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1768

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub163 = sub i64 %40, 1, !dbg !1768
  %and164 = and i64 %sub163, 4294967296, !dbg !1768
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1768
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1768

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1768

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub168 = sub i64 %41, 1, !dbg !1768
  %and169 = and i64 %sub168, 2147483648, !dbg !1768
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1768
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1768

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1768

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub173 = sub i64 %42, 1, !dbg !1768
  %and174 = and i64 %sub173, 1073741824, !dbg !1768
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1768
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1768

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1768

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub178 = sub i64 %43, 1, !dbg !1768
  %and179 = and i64 %sub178, 536870912, !dbg !1768
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1768
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1768

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1768

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub183 = sub i64 %44, 1, !dbg !1768
  %and184 = and i64 %sub183, 268435456, !dbg !1768
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1768
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1768

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1768

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub188 = sub i64 %45, 1, !dbg !1768
  %and189 = and i64 %sub188, 134217728, !dbg !1768
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1768
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1768

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1768

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub193 = sub i64 %46, 1, !dbg !1768
  %and194 = and i64 %sub193, 67108864, !dbg !1768
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1768
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1768

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1768

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub198 = sub i64 %47, 1, !dbg !1768
  %and199 = and i64 %sub198, 33554432, !dbg !1768
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1768
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1768

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1768

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub203 = sub i64 %48, 1, !dbg !1768
  %and204 = and i64 %sub203, 16777216, !dbg !1768
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1768
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1768

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1768

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub208 = sub i64 %49, 1, !dbg !1768
  %and209 = and i64 %sub208, 8388608, !dbg !1768
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1768
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1768

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1768

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub213 = sub i64 %50, 1, !dbg !1768
  %and214 = and i64 %sub213, 4194304, !dbg !1768
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1768
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1768

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1768

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub218 = sub i64 %51, 1, !dbg !1768
  %and219 = and i64 %sub218, 2097152, !dbg !1768
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1768
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1768

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1768

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub223 = sub i64 %52, 1, !dbg !1768
  %and224 = and i64 %sub223, 1048576, !dbg !1768
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1768
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1768

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1768

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub228 = sub i64 %53, 1, !dbg !1768
  %and229 = and i64 %sub228, 524288, !dbg !1768
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1768
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1768

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1768

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub233 = sub i64 %54, 1, !dbg !1768
  %and234 = and i64 %sub233, 262144, !dbg !1768
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1768
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1768

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1768

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub238 = sub i64 %55, 1, !dbg !1768
  %and239 = and i64 %sub238, 131072, !dbg !1768
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1768
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1768

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1768

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub243 = sub i64 %56, 1, !dbg !1768
  %and244 = and i64 %sub243, 65536, !dbg !1768
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1768
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1768

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1768

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub248 = sub i64 %57, 1, !dbg !1768
  %and249 = and i64 %sub248, 32768, !dbg !1768
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1768
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1768

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1768

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub253 = sub i64 %58, 1, !dbg !1768
  %and254 = and i64 %sub253, 16384, !dbg !1768
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1768
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1768

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1768

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub258 = sub i64 %59, 1, !dbg !1768
  %and259 = and i64 %sub258, 8192, !dbg !1768
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1768
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1768

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1768

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub263 = sub i64 %60, 1, !dbg !1768
  %and264 = and i64 %sub263, 4096, !dbg !1768
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1768
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1768

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1768

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub268 = sub i64 %61, 1, !dbg !1768
  %and269 = and i64 %sub268, 2048, !dbg !1768
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1768
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1768

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1768

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub273 = sub i64 %62, 1, !dbg !1768
  %and274 = and i64 %sub273, 1024, !dbg !1768
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1768
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1768

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1768

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub278 = sub i64 %63, 1, !dbg !1768
  %and279 = and i64 %sub278, 512, !dbg !1768
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1768
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1768

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1768

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub283 = sub i64 %64, 1, !dbg !1768
  %and284 = and i64 %sub283, 256, !dbg !1768
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1768
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1768

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1768

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub288 = sub i64 %65, 1, !dbg !1768
  %and289 = and i64 %sub288, 128, !dbg !1768
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1768
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1768

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1768

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub293 = sub i64 %66, 1, !dbg !1768
  %and294 = and i64 %sub293, 64, !dbg !1768
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1768
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1768

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1768

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub298 = sub i64 %67, 1, !dbg !1768
  %and299 = and i64 %sub298, 32, !dbg !1768
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1768
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1768

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1768

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub303 = sub i64 %68, 1, !dbg !1768
  %and304 = and i64 %sub303, 16, !dbg !1768
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1768
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1768

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1768

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub308 = sub i64 %69, 1, !dbg !1768
  %and309 = and i64 %sub308, 8, !dbg !1768
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1768
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1768

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1768

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub313 = sub i64 %70, 1, !dbg !1768
  %and314 = and i64 %sub313, 4, !dbg !1768
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1768
  %71 = zext i1 %tobool315 to i64, !dbg !1768
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1768
  br label %cond.end, !dbg !1768

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1768
  br label %cond.end317, !dbg !1768

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1768
  br label %cond.end319, !dbg !1768

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1768
  br label %cond.end321, !dbg !1768

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1768
  br label %cond.end323, !dbg !1768

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1768
  br label %cond.end325, !dbg !1768

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1768
  br label %cond.end327, !dbg !1768

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1768
  br label %cond.end329, !dbg !1768

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1768
  br label %cond.end331, !dbg !1768

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1768
  br label %cond.end333, !dbg !1768

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1768
  br label %cond.end335, !dbg !1768

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1768
  br label %cond.end337, !dbg !1768

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1768
  br label %cond.end339, !dbg !1768

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1768
  br label %cond.end341, !dbg !1768

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1768
  br label %cond.end343, !dbg !1768

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1768
  br label %cond.end345, !dbg !1768

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1768
  br label %cond.end347, !dbg !1768

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1768
  br label %cond.end349, !dbg !1768

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1768
  br label %cond.end351, !dbg !1768

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1768
  br label %cond.end353, !dbg !1768

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1768
  br label %cond.end355, !dbg !1768

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1768
  br label %cond.end357, !dbg !1768

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1768
  br label %cond.end359, !dbg !1768

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1768
  br label %cond.end361, !dbg !1768

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1768
  br label %cond.end363, !dbg !1768

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1768
  br label %cond.end365, !dbg !1768

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1768
  br label %cond.end367, !dbg !1768

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1768
  br label %cond.end369, !dbg !1768

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1768
  br label %cond.end371, !dbg !1768

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1768
  br label %cond.end373, !dbg !1768

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1768
  br label %cond.end375, !dbg !1768

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1768
  br label %cond.end377, !dbg !1768

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1768
  br label %cond.end379, !dbg !1768

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1768
  br label %cond.end381, !dbg !1768

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1768
  br label %cond.end383, !dbg !1768

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1768
  br label %cond.end385, !dbg !1768

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1768
  br label %cond.end387, !dbg !1768

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1768
  br label %cond.end389, !dbg !1768

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1768
  br label %cond.end391, !dbg !1768

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1768
  br label %cond.end393, !dbg !1768

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1768
  br label %cond.end395, !dbg !1768

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1768
  br label %cond.end397, !dbg !1768

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1768
  br label %cond.end399, !dbg !1768

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1768
  br label %cond.end401, !dbg !1768

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1768
  br label %cond.end403, !dbg !1768

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1768
  br label %cond.end405, !dbg !1768

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1768
  br label %cond.end407, !dbg !1768

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1768
  br label %cond.end409, !dbg !1768

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1768
  br label %cond.end411, !dbg !1768

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1768
  br label %cond.end413, !dbg !1768

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1768
  br label %cond.end415, !dbg !1768

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1768
  br label %cond.end417, !dbg !1768

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1768
  br label %cond.end419, !dbg !1768

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1768
  br label %cond.end421, !dbg !1768

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1768
  br label %cond.end423, !dbg !1768

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1768
  br label %cond.end425, !dbg !1768

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1768
  br label %cond.end427, !dbg !1768

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1768
  br label %cond.end429, !dbg !1768

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1768
  br label %cond.end431, !dbg !1768

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1768
  br label %cond.end433, !dbg !1768

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1768
  br label %cond.end435, !dbg !1768

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1768
  br label %cond.end437, !dbg !1768

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1768
  br label %cond.end440, !dbg !1768

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1768

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1768
  br label %cond.end444, !dbg !1768

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1768
  %sub443 = sub i64 %72, 1, !dbg !1768
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !1768
  br label %cond.end444, !dbg !1768

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1768
  %sub446 = sub i32 %cond445, 12, !dbg !1769
  %add = add i32 %sub446, 1, !dbg !1770
  store i32 %add, i32* %retval, align 4, !dbg !1771
  br label %return, !dbg !1771

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1772
  %dec = add i64 %73, -1, !dbg !1772
  store i64 %dec, i64* %size.addr, align 8, !dbg !1772
  %74 = load i64, i64* %size.addr, align 8, !dbg !1773
  %shr = lshr i64 %74, 12, !dbg !1773
  store i64 %shr, i64* %size.addr, align 8, !dbg !1773
  %75 = load i64, i64* %size.addr, align 8, !dbg !1774
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1751
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1775
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1776
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !1775, !srcloc !1777
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1775
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1778
  %add.i = add i32 %79, 1, !dbg !1779
  store i32 %add.i, i32* %retval, align 4, !dbg !1780
  br label %return, !dbg !1780

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1781
  ret i32 %80, !dbg !1781
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !1782 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1743, metadata !DIExpression()), !dbg !1786
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1750, metadata !DIExpression()), !dbg !1788
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1789, metadata !DIExpression()), !dbg !1790
  %0 = load i64, i64* %n.addr, align 8, !dbg !1791
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1788
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1792
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1793
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !1792, !srcloc !1777
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1792
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1794
  %add.i = add i32 %4, 1, !dbg !1795
  %sub = sub i32 %add.i, 1, !dbg !1796
  ret i32 %sub, !dbg !1797
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1798 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1804, metadata !DIExpression()), !dbg !1805
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1806, metadata !DIExpression()), !dbg !1807
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1808, metadata !DIExpression()), !dbg !1809
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1810, metadata !DIExpression()), !dbg !1811
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1812
  ret i8* %0, !dbg !1813
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_gpe_write(i64, %struct.acpi_gpe_address*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_get_gpe_xrupt_block(i32, %struct.acpi_gpe_xrupt_info**) #2

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
!llvm.named.register.rsp = !{!41}
!llvm.module.flags = !{!42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !36, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !35, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evgpeblk.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !15, !21, !25, !29, !17, !22, !32, !34}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !16, line: 421, baseType: !17)
!16 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !18, line: 21, baseType: !19)
!18 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !20, line: 27, baseType: !7)
!20 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !16, line: 805, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !18, line: 17, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !20, line: 21, baseType: !24)
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !16, line: 127, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !18, line: 23, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !20, line: 31, baseType: !28)
!28 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !18, line: 19, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !20, line: 24, baseType: !31)
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !33, line: 148, baseType: !7)
!33 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!34 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!35 = !{!0}
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 72, elements: !39)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !{!40}
!40 = !DISubrange(count: 9)
!41 = !{!"rsp"}
!42 = !{i32 7, !"Dwarf Version", i32 4}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"Code Model", i32 2}
!46 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!47 = distinct !DISubprogram(name: "acpi_ev_delete_gpe_block", scope: !3, file: !3, line: 97, type: !48, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!48 = !DISubroutineType(types: !49)
!49 = !{!15, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !52, line: 480, size: 576, elements: !53)
!52 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!53 = !{!54, !742, !743, !744, !752, !767, !799, !800, !801, !802, !803, !804}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !51, file: !52, line: 481, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !52, line: 133, size: 384, elements: !57)
!57 = !{!58, !729, !730, !731, !732, !738, !739, !740, !741}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !56, file: !52, line: 134, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !61, line: 367, size: 576, elements: !62)
!61 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!62 = !{!63, !71, !84, !95, !109, !123, !132, !447, !464, !479, !492, !503, !515, !529, !539, !557, !579, !598, !617, !636, !649, !675, !692, !705, !719, !728}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !60, file: !61, line: 368, baseType: !64, size: 128)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !61, line: 73, size: 128, elements: !65)
!65 = !{!66, !67, !68, !69, !70}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !64, file: !61, line: 74, baseType: !59, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !64, file: !61, line: 74, baseType: !22, size: 8, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !64, file: !61, line: 74, baseType: !22, size: 8, offset: 72)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !64, file: !61, line: 74, baseType: !29, size: 16, offset: 80)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !64, file: !61, line: 74, baseType: !22, size: 8, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !60, file: !61, line: 369, baseType: !72, size: 192)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !61, line: 76, size: 192, elements: !73)
!73 = !{!74, !75, !76, !77, !78, !79, !83}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !72, file: !61, line: 77, baseType: !59, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !72, file: !61, line: 77, baseType: !22, size: 8, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !61, line: 77, baseType: !22, size: 8, offset: 72)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !72, file: !61, line: 77, baseType: !29, size: 16, offset: 80)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !72, file: !61, line: 77, baseType: !22, size: 8, offset: 96)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !72, file: !61, line: 77, baseType: !80, size: 24, offset: 104)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 24, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 3)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !72, file: !61, line: 78, baseType: !26, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !60, file: !61, line: 370, baseType: !85, size: 256)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !61, line: 93, size: 256, elements: !86)
!86 = !{!87, !88, !89, !90, !91, !92, !94}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !85, file: !61, line: 94, baseType: !59, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !85, file: !61, line: 94, baseType: !22, size: 8, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !85, file: !61, line: 94, baseType: !22, size: 8, offset: 72)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !85, file: !61, line: 94, baseType: !29, size: 16, offset: 80)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !85, file: !61, line: 94, baseType: !22, size: 8, offset: 96)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !85, file: !61, line: 94, baseType: !93, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !85, file: !61, line: 94, baseType: !17, size: 32, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !60, file: !61, line: 371, baseType: !96, size: 384)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !61, line: 97, size: 384, elements: !97)
!97 = !{!98, !99, !100, !101, !102, !103, !105, !106, !107, !108}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !96, file: !61, line: 98, baseType: !59, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !96, file: !61, line: 98, baseType: !22, size: 8, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !96, file: !61, line: 98, baseType: !22, size: 8, offset: 72)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !96, file: !61, line: 98, baseType: !29, size: 16, offset: 80)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !96, file: !61, line: 98, baseType: !22, size: 8, offset: 96)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !96, file: !61, line: 98, baseType: !104, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !96, file: !61, line: 98, baseType: !17, size: 32, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !96, file: !61, line: 99, baseType: !17, size: 32, offset: 224)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !96, file: !61, line: 100, baseType: !104, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !96, file: !61, line: 101, baseType: !55, size: 64, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !60, file: !61, line: 372, baseType: !110, size: 384)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !61, line: 104, size: 384, elements: !111)
!111 = !{!112, !113, !114, !115, !116, !117, !118, !120, !121, !122}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !110, file: !61, line: 105, baseType: !59, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !110, file: !61, line: 105, baseType: !22, size: 8, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !110, file: !61, line: 105, baseType: !22, size: 8, offset: 72)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !110, file: !61, line: 105, baseType: !29, size: 16, offset: 80)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !110, file: !61, line: 105, baseType: !22, size: 8, offset: 96)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !110, file: !61, line: 105, baseType: !55, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !110, file: !61, line: 106, baseType: !119, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !110, file: !61, line: 107, baseType: !104, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !110, file: !61, line: 108, baseType: !17, size: 32, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !110, file: !61, line: 109, baseType: !17, size: 32, offset: 352)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !60, file: !61, line: 373, baseType: !124, size: 192)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !61, line: 118, size: 192, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !124, file: !61, line: 119, baseType: !59, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !124, file: !61, line: 119, baseType: !22, size: 8, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !124, file: !61, line: 119, baseType: !22, size: 8, offset: 72)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !124, file: !61, line: 119, baseType: !29, size: 16, offset: 80)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !124, file: !61, line: 119, baseType: !22, size: 8, offset: 96)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !124, file: !61, line: 119, baseType: !14, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !60, file: !61, line: 374, baseType: !133, size: 448)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !61, line: 143, size: 448, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !444, !445, !446}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !133, file: !61, line: 144, baseType: !59, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !133, file: !61, line: 144, baseType: !22, size: 8, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !133, file: !61, line: 144, baseType: !22, size: 8, offset: 72)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !133, file: !61, line: 144, baseType: !29, size: 16, offset: 80)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !61, line: 144, baseType: !22, size: 8, offset: 96)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !133, file: !61, line: 144, baseType: !22, size: 8, offset: 104)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !133, file: !61, line: 145, baseType: !22, size: 8, offset: 112)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !133, file: !61, line: 146, baseType: !22, size: 8, offset: 120)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !133, file: !61, line: 147, baseType: !59, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !133, file: !61, line: 148, baseType: !59, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !133, file: !61, line: 149, baseType: !104, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !133, file: !61, line: 153, baseType: !147, size: 64, offset: 320)
!147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !133, file: !61, line: 150, size: 64, elements: !148)
!148 = !{!149, !443}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !147, file: !61, line: 151, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !52, line: 248, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!15, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !156, line: 37, size: 9024, elements: !157)
!156 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !391, !392, !393, !394, !395, !399, !401, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !426, !427, !428, !429, !430, !431, !432, !433, !435, !441}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !155, file: !156, line: 38, baseType: !154, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !155, file: !156, line: 39, baseType: !22, size: 8, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !155, file: !156, line: 40, baseType: !22, size: 8, offset: 72)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !155, file: !156, line: 41, baseType: !29, size: 16, offset: 80)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !155, file: !156, line: 42, baseType: !22, size: 8, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !155, file: !156, line: 43, baseType: !22, size: 8, offset: 104)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !155, file: !156, line: 44, baseType: !22, size: 8, offset: 112)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !155, file: !156, line: 45, baseType: !166, size: 16, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !16, line: 445, baseType: !29)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !155, file: !156, line: 46, baseType: !22, size: 8, offset: 144)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !155, file: !156, line: 47, baseType: !22, size: 8, offset: 152)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !155, file: !156, line: 48, baseType: !22, size: 8, offset: 160)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !155, file: !156, line: 49, baseType: !22, size: 8, offset: 168)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !155, file: !156, line: 50, baseType: !22, size: 8, offset: 176)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !155, file: !156, line: 51, baseType: !22, size: 8, offset: 184)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !155, file: !156, line: 52, baseType: !22, size: 8, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !155, file: !156, line: 53, baseType: !22, size: 8, offset: 200)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !155, file: !156, line: 54, baseType: !104, size: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !155, file: !156, line: 55, baseType: !17, size: 32, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !155, file: !156, line: 56, baseType: !17, size: 32, offset: 352)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !155, file: !156, line: 57, baseType: !17, size: 32, offset: 384)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !155, file: !156, line: 58, baseType: !17, size: 32, offset: 416)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !155, file: !156, line: 60, baseType: !181, size: 640, offset: 448)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !52, line: 893, size: 640, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188, !272, !273, !389, !390}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !181, file: !52, line: 894, baseType: !104, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !181, file: !52, line: 895, baseType: !104, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !181, file: !52, line: 896, baseType: !104, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !181, file: !52, line: 897, baseType: !104, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !181, file: !52, line: 898, baseType: !104, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !181, file: !52, line: 899, baseType: !189, size: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !52, line: 875, size: 1600, elements: !191)
!191 = !{!192, !212, !228}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !190, file: !52, line: 876, baseType: !193, size: 448)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !52, line: 828, size: 448, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !211}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !193, file: !52, line: 829, baseType: !189, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !193, file: !52, line: 829, baseType: !22, size: 8, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !193, file: !52, line: 829, baseType: !22, size: 8, offset: 72)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !193, file: !52, line: 829, baseType: !29, size: 16, offset: 80)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !193, file: !52, line: 829, baseType: !104, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !193, file: !52, line: 829, baseType: !189, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !193, file: !52, line: 829, baseType: !55, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !193, file: !52, line: 829, baseType: !203, size: 64, offset: 320)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !52, line: 716, size: 64, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !203, file: !52, line: 717, baseType: !26, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !203, file: !52, line: 718, baseType: !17, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !203, file: !52, line: 719, baseType: !93, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !203, file: !52, line: 720, baseType: !104, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !203, file: !52, line: 721, baseType: !93, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !203, file: !52, line: 722, baseType: !189, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !193, file: !52, line: 829, baseType: !22, size: 8, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !190, file: !52, line: 877, baseType: !213, size: 640)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !52, line: 835, size: 640, elements: !214)
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !213, file: !52, line: 836, baseType: !189, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !213, file: !52, line: 836, baseType: !22, size: 8, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !213, file: !52, line: 836, baseType: !22, size: 8, offset: 72)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !213, file: !52, line: 836, baseType: !29, size: 16, offset: 80)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !213, file: !52, line: 836, baseType: !104, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !213, file: !52, line: 836, baseType: !189, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !213, file: !52, line: 836, baseType: !55, size: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !213, file: !52, line: 836, baseType: !203, size: 64, offset: 320)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !213, file: !52, line: 836, baseType: !22, size: 8, offset: 384)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !213, file: !52, line: 836, baseType: !93, size: 64, offset: 448)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !213, file: !52, line: 837, baseType: !104, size: 64, offset: 512)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !213, file: !52, line: 838, baseType: !17, size: 32, offset: 576)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !52, line: 839, baseType: !17, size: 32, offset: 608)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !190, file: !52, line: 878, baseType: !229, size: 1600)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !52, line: 846, size: 1600, elements: !230)
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !229, file: !52, line: 847, baseType: !189, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !229, file: !52, line: 847, baseType: !22, size: 8, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !229, file: !52, line: 847, baseType: !22, size: 8, offset: 72)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !229, file: !52, line: 847, baseType: !29, size: 16, offset: 80)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !229, file: !52, line: 847, baseType: !104, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !229, file: !52, line: 847, baseType: !189, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !229, file: !52, line: 847, baseType: !55, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !229, file: !52, line: 847, baseType: !203, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !229, file: !52, line: 847, baseType: !22, size: 8, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !229, file: !52, line: 847, baseType: !189, size: 64, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !229, file: !52, line: 848, baseType: !189, size: 64, offset: 512)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !229, file: !52, line: 849, baseType: !93, size: 64, offset: 576)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !229, file: !52, line: 850, baseType: !22, size: 8, offset: 640)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !229, file: !52, line: 851, baseType: !93, size: 64, offset: 704)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !229, file: !52, line: 852, baseType: !93, size: 64, offset: 768)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !229, file: !52, line: 853, baseType: !93, size: 64, offset: 832)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !229, file: !52, line: 854, baseType: !248, size: 32, offset: 896)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 4)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !229, file: !52, line: 855, baseType: !17, size: 32, offset: 928)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !229, file: !52, line: 856, baseType: !17, size: 32, offset: 960)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !229, file: !52, line: 857, baseType: !17, size: 32, offset: 992)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !229, file: !52, line: 858, baseType: !17, size: 32, offset: 1024)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !229, file: !52, line: 859, baseType: !17, size: 32, offset: 1056)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !229, file: !52, line: 860, baseType: !17, size: 32, offset: 1088)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !229, file: !52, line: 861, baseType: !17, size: 32, offset: 1120)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !229, file: !52, line: 862, baseType: !17, size: 32, offset: 1152)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !229, file: !52, line: 863, baseType: !17, size: 32, offset: 1184)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !229, file: !52, line: 864, baseType: !17, size: 32, offset: 1216)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !229, file: !52, line: 865, baseType: !17, size: 32, offset: 1248)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !229, file: !52, line: 866, baseType: !17, size: 32, offset: 1280)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !229, file: !52, line: 867, baseType: !17, size: 32, offset: 1312)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !229, file: !52, line: 868, baseType: !29, size: 16, offset: 1344)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !229, file: !52, line: 869, baseType: !22, size: 8, offset: 1360)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !229, file: !52, line: 870, baseType: !22, size: 8, offset: 1368)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !229, file: !52, line: 871, baseType: !22, size: 8, offset: 1376)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !229, file: !52, line: 872, baseType: !269, size: 160, offset: 1384)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 160, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 20)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !181, file: !52, line: 900, baseType: !55, size: 64, offset: 384)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !181, file: !52, line: 901, baseType: !274, size: 64, offset: 448)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !52, line: 663, size: 640, elements: !276)
!276 = !{!277, !285, !298, !307, !316, !329, !343, !355, !367}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !275, file: !52, line: 664, baseType: !278, size: 128)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !52, line: 567, size: 128, elements: !279)
!279 = !{!280, !281, !282, !283, !284}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !52, line: 568, baseType: !14, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !278, file: !52, line: 568, baseType: !22, size: 8, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !52, line: 568, baseType: !22, size: 8, offset: 72)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !278, file: !52, line: 568, baseType: !29, size: 16, offset: 80)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !278, file: !52, line: 568, baseType: !29, size: 16, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !275, file: !52, line: 665, baseType: !286, size: 384)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !52, line: 593, size: 384, elements: !287)
!287 = !{!288, !289, !290, !291, !292, !293, !294, !295, !296, !297}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !286, file: !52, line: 594, baseType: !14, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !286, file: !52, line: 594, baseType: !22, size: 8, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !286, file: !52, line: 594, baseType: !22, size: 8, offset: 72)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !286, file: !52, line: 594, baseType: !29, size: 16, offset: 80)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !286, file: !52, line: 594, baseType: !29, size: 16, offset: 96)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !286, file: !52, line: 594, baseType: !29, size: 16, offset: 112)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !286, file: !52, line: 595, baseType: !189, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !286, file: !52, line: 596, baseType: !104, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !286, file: !52, line: 597, baseType: !104, size: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !286, file: !52, line: 598, baseType: !26, size: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !275, file: !52, line: 666, baseType: !299, size: 192)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !52, line: 573, size: 192, elements: !300)
!300 = !{!301, !302, !303, !304, !305, !306}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !299, file: !52, line: 574, baseType: !14, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !299, file: !52, line: 574, baseType: !22, size: 8, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !299, file: !52, line: 574, baseType: !22, size: 8, offset: 72)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !299, file: !52, line: 574, baseType: !29, size: 16, offset: 80)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !299, file: !52, line: 574, baseType: !29, size: 16, offset: 96)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !299, file: !52, line: 574, baseType: !59, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !275, file: !52, line: 667, baseType: !308, size: 192)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !52, line: 604, size: 192, elements: !309)
!309 = !{!310, !311, !312, !313, !314, !315}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !308, file: !52, line: 605, baseType: !14, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !308, file: !52, line: 605, baseType: !22, size: 8, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !308, file: !52, line: 605, baseType: !22, size: 8, offset: 72)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !308, file: !52, line: 605, baseType: !29, size: 16, offset: 80)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !308, file: !52, line: 605, baseType: !29, size: 16, offset: 96)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !308, file: !52, line: 605, baseType: !55, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !275, file: !52, line: 668, baseType: !317, size: 448)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !52, line: 608, size: 448, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !324, !325, !326, !327, !328}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !52, line: 609, baseType: !14, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !317, file: !52, line: 609, baseType: !22, size: 8, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !317, file: !52, line: 609, baseType: !22, size: 8, offset: 72)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !317, file: !52, line: 609, baseType: !29, size: 16, offset: 80)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !317, file: !52, line: 609, baseType: !29, size: 16, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !317, file: !52, line: 609, baseType: !17, size: 32, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !317, file: !52, line: 610, baseType: !189, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !317, file: !52, line: 611, baseType: !104, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !317, file: !52, line: 612, baseType: !104, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !317, file: !52, line: 613, baseType: !17, size: 32, offset: 384)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !275, file: !52, line: 669, baseType: !330, size: 512)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !52, line: 580, size: 512, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !52, line: 581, baseType: !14, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !330, file: !52, line: 581, baseType: !22, size: 8, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !330, file: !52, line: 581, baseType: !22, size: 8, offset: 72)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !330, file: !52, line: 581, baseType: !29, size: 16, offset: 80)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !330, file: !52, line: 581, baseType: !29, size: 16, offset: 96)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !330, file: !52, line: 581, baseType: !17, size: 32, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !330, file: !52, line: 582, baseType: !59, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !330, file: !52, line: 583, baseType: !59, size: 64, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !330, file: !52, line: 584, baseType: !154, size: 64, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !330, file: !52, line: 585, baseType: !14, size: 64, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !330, file: !52, line: 586, baseType: !17, size: 32, offset: 448)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !275, file: !52, line: 670, baseType: !344, size: 320)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !52, line: 620, size: 320, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351, !352, !353, !354}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !344, file: !52, line: 621, baseType: !14, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !344, file: !52, line: 621, baseType: !22, size: 8, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !344, file: !52, line: 621, baseType: !22, size: 8, offset: 72)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !344, file: !52, line: 621, baseType: !29, size: 16, offset: 80)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !344, file: !52, line: 621, baseType: !29, size: 16, offset: 96)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !344, file: !52, line: 621, baseType: !22, size: 8, offset: 112)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !344, file: !52, line: 622, baseType: !154, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !344, file: !52, line: 623, baseType: !59, size: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !344, file: !52, line: 624, baseType: !26, size: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !275, file: !52, line: 671, baseType: !356, size: 640)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !52, line: 631, size: 640, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !52, line: 632, baseType: !14, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !356, file: !52, line: 632, baseType: !22, size: 8, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !356, file: !52, line: 632, baseType: !22, size: 8, offset: 72)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !356, file: !52, line: 632, baseType: !29, size: 16, offset: 80)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !356, file: !52, line: 632, baseType: !29, size: 16, offset: 96)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !356, file: !52, line: 633, baseType: !364, size: 512, offset: 128)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 512, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 8)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !275, file: !52, line: 672, baseType: !368, size: 320)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !52, line: 654, size: 320, elements: !369)
!369 = !{!370, !371, !372, !373, !374, !375, !376, !377, !378}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !368, file: !52, line: 655, baseType: !14, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !368, file: !52, line: 655, baseType: !22, size: 8, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !368, file: !52, line: 655, baseType: !22, size: 8, offset: 72)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !368, file: !52, line: 655, baseType: !29, size: 16, offset: 80)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !368, file: !52, line: 655, baseType: !29, size: 16, offset: 96)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !368, file: !52, line: 655, baseType: !22, size: 8, offset: 112)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !368, file: !52, line: 656, baseType: !55, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !368, file: !52, line: 657, baseType: !59, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !368, file: !52, line: 658, baseType: !379, size: 64, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !52, line: 645, size: 128, elements: !381)
!381 = !{!382, !388}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !380, file: !52, line: 646, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !16, line: 1052, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !387, !17, !14}
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !16, line: 424, baseType: !14)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !380, file: !52, line: 647, baseType: !14, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !181, file: !52, line: 902, baseType: !189, size: 64, offset: 512)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !181, file: !52, line: 903, baseType: !17, size: 32, offset: 576)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !155, file: !156, line: 61, baseType: !17, size: 32, offset: 1088)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !155, file: !156, line: 62, baseType: !17, size: 32, offset: 1120)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !155, file: !156, line: 63, baseType: !29, size: 16, offset: 1152)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !155, file: !156, line: 64, baseType: !22, size: 8, offset: 1168)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !155, file: !156, line: 66, baseType: !396, size: 2688, offset: 1216)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 2688, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 7)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !155, file: !156, line: 67, baseType: !400, size: 3072, offset: 3904)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 3072, elements: !365)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !155, file: !156, line: 68, baseType: !402, size: 576, offset: 6976)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 576, elements: !39)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !155, file: !156, line: 69, baseType: !119, size: 64, offset: 7552)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !155, file: !156, line: 71, baseType: !104, size: 64, offset: 7616)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !155, file: !156, line: 72, baseType: !119, size: 64, offset: 7680)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !155, file: !156, line: 73, baseType: !274, size: 64, offset: 7744)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !155, file: !156, line: 74, baseType: !55, size: 64, offset: 7808)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !155, file: !156, line: 75, baseType: !59, size: 64, offset: 7872)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !155, file: !156, line: 76, baseType: !55, size: 64, offset: 7936)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !155, file: !156, line: 77, baseType: !189, size: 64, offset: 8000)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !155, file: !156, line: 78, baseType: !59, size: 64, offset: 8064)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !155, file: !156, line: 79, baseType: !55, size: 64, offset: 8128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !155, file: !156, line: 80, baseType: !93, size: 64, offset: 8192)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !155, file: !156, line: 81, baseType: !189, size: 64, offset: 8256)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !155, file: !156, line: 82, baseType: !416, size: 64, offset: 8320)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !52, line: 702, size: 128, elements: !419)
!419 = !{!420, !421, !422, !423, !424, !425}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !418, file: !52, line: 706, baseType: !17, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !418, file: !52, line: 707, baseType: !17, size: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !418, file: !52, line: 708, baseType: !29, size: 16, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !418, file: !52, line: 709, baseType: !22, size: 8, offset: 80)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !418, file: !52, line: 710, baseType: !22, size: 8, offset: 88)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !418, file: !52, line: 711, baseType: !22, size: 8, offset: 96)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !155, file: !156, line: 83, baseType: !189, size: 64, offset: 8384)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !155, file: !156, line: 84, baseType: !59, size: 64, offset: 8448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !155, file: !156, line: 85, baseType: !274, size: 64, offset: 8512)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !155, file: !156, line: 86, baseType: !59, size: 64, offset: 8576)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !155, file: !156, line: 87, baseType: !274, size: 64, offset: 8640)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !155, file: !156, line: 88, baseType: !189, size: 64, offset: 8704)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !155, file: !156, line: 89, baseType: !189, size: 64, offset: 8768)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !155, file: !156, line: 90, baseType: !434, size: 64, offset: 8832)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !155, file: !156, line: 91, baseType: !436, size: 64, offset: 8896)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !52, line: 637, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!15, !154, !440}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !155, file: !156, line: 92, baseType: !442, size: 64, offset: 8960)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !52, line: 641, baseType: !151)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !147, file: !61, line: 152, baseType: !59, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !133, file: !61, line: 155, baseType: !17, size: 32, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !133, file: !61, line: 156, baseType: !166, size: 16, offset: 416)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !133, file: !61, line: 157, baseType: !22, size: 8, offset: 432)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !60, file: !61, line: 375, baseType: !448, size: 576)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !61, line: 122, size: 576, elements: !449)
!449 = !{!450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !448, file: !61, line: 123, baseType: !59, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !448, file: !61, line: 123, baseType: !22, size: 8, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !448, file: !61, line: 123, baseType: !22, size: 8, offset: 72)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !448, file: !61, line: 123, baseType: !29, size: 16, offset: 80)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !448, file: !61, line: 123, baseType: !22, size: 8, offset: 96)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !448, file: !61, line: 123, baseType: !22, size: 8, offset: 104)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !448, file: !61, line: 124, baseType: !29, size: 16, offset: 112)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !448, file: !61, line: 125, baseType: !14, size: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !448, file: !61, line: 126, baseType: !26, size: 64, offset: 192)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !448, file: !61, line: 127, baseType: !434, size: 64, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !448, file: !61, line: 128, baseType: !59, size: 64, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !448, file: !61, line: 129, baseType: !59, size: 64, offset: 384)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !448, file: !61, line: 130, baseType: !55, size: 64, offset: 448)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !448, file: !61, line: 131, baseType: !22, size: 8, offset: 512)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !60, file: !61, line: 376, baseType: !465, size: 448)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !61, line: 134, size: 448, elements: !466)
!466 = !{!467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !478}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !465, file: !61, line: 135, baseType: !59, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !465, file: !61, line: 135, baseType: !22, size: 8, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !465, file: !61, line: 135, baseType: !22, size: 8, offset: 72)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !465, file: !61, line: 135, baseType: !29, size: 16, offset: 80)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !465, file: !61, line: 135, baseType: !22, size: 8, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !465, file: !61, line: 135, baseType: !22, size: 8, offset: 104)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !465, file: !61, line: 136, baseType: !55, size: 64, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !465, file: !61, line: 137, baseType: !59, size: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !465, file: !61, line: 138, baseType: !59, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !465, file: !61, line: 139, baseType: !477, size: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !16, line: 129, baseType: !26)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !465, file: !61, line: 140, baseType: !17, size: 32, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !60, file: !61, line: 377, baseType: !480, size: 320)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !61, line: 184, size: 320, elements: !481)
!481 = !{!482, !483, !484, !485, !486, !487, !491}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !480, file: !61, line: 185, baseType: !59, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !480, file: !61, line: 185, baseType: !22, size: 8, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !480, file: !61, line: 185, baseType: !22, size: 8, offset: 72)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !480, file: !61, line: 185, baseType: !29, size: 16, offset: 80)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !480, file: !61, line: 185, baseType: !22, size: 8, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !480, file: !61, line: 185, baseType: !488, size: 128, offset: 128)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 128, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 2)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !480, file: !61, line: 185, baseType: !59, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !60, file: !61, line: 378, baseType: !493, size: 384)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !61, line: 187, size: 384, elements: !494)
!494 = !{!495, !496, !497, !498, !499, !500, !501, !502}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !493, file: !61, line: 188, baseType: !59, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !493, file: !61, line: 188, baseType: !22, size: 8, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !493, file: !61, line: 188, baseType: !22, size: 8, offset: 72)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !493, file: !61, line: 188, baseType: !29, size: 16, offset: 80)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !493, file: !61, line: 188, baseType: !22, size: 8, offset: 96)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !493, file: !61, line: 189, baseType: !488, size: 128, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !493, file: !61, line: 189, baseType: !59, size: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !493, file: !61, line: 189, baseType: !50, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !60, file: !61, line: 379, baseType: !504, size: 384)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !61, line: 192, size: 384, elements: !505)
!505 = !{!506, !507, !508, !509, !510, !511, !512, !513, !514}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !504, file: !61, line: 193, baseType: !59, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !504, file: !61, line: 193, baseType: !22, size: 8, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !504, file: !61, line: 193, baseType: !22, size: 8, offset: 72)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !504, file: !61, line: 193, baseType: !29, size: 16, offset: 80)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !504, file: !61, line: 193, baseType: !22, size: 8, offset: 96)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !504, file: !61, line: 193, baseType: !488, size: 128, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !504, file: !61, line: 193, baseType: !59, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !504, file: !61, line: 193, baseType: !17, size: 32, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !504, file: !61, line: 194, baseType: !17, size: 32, offset: 352)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !60, file: !61, line: 380, baseType: !516, size: 384)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !61, line: 197, size: 384, elements: !517)
!517 = !{!518, !519, !520, !521, !522, !523, !524, !525, !526, !527}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !516, file: !61, line: 198, baseType: !59, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !516, file: !61, line: 198, baseType: !22, size: 8, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !516, file: !61, line: 198, baseType: !22, size: 8, offset: 72)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !516, file: !61, line: 198, baseType: !29, size: 16, offset: 80)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !516, file: !61, line: 198, baseType: !22, size: 8, offset: 96)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !516, file: !61, line: 200, baseType: !22, size: 8, offset: 104)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !516, file: !61, line: 201, baseType: !22, size: 8, offset: 112)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !516, file: !61, line: 202, baseType: !488, size: 128, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !516, file: !61, line: 202, baseType: !59, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !516, file: !61, line: 202, baseType: !528, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !16, line: 128, baseType: !26)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !60, file: !61, line: 381, baseType: !530, size: 320)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !61, line: 205, size: 320, elements: !531)
!531 = !{!532, !533, !534, !535, !536, !537, !538}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !530, file: !61, line: 206, baseType: !59, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !530, file: !61, line: 206, baseType: !22, size: 8, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !530, file: !61, line: 206, baseType: !22, size: 8, offset: 72)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !530, file: !61, line: 206, baseType: !29, size: 16, offset: 80)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !530, file: !61, line: 206, baseType: !22, size: 8, offset: 96)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !530, file: !61, line: 206, baseType: !488, size: 128, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !530, file: !61, line: 206, baseType: !59, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !60, file: !61, line: 382, baseType: !540, size: 384)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !61, line: 233, size: 384, elements: !541)
!541 = !{!542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !540, file: !61, line: 234, baseType: !59, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !540, file: !61, line: 234, baseType: !22, size: 8, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !540, file: !61, line: 234, baseType: !22, size: 8, offset: 72)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !540, file: !61, line: 234, baseType: !29, size: 16, offset: 80)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !540, file: !61, line: 234, baseType: !22, size: 8, offset: 96)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !540, file: !61, line: 234, baseType: !22, size: 8, offset: 104)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !540, file: !61, line: 234, baseType: !22, size: 8, offset: 112)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !540, file: !61, line: 234, baseType: !22, size: 8, offset: 120)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !540, file: !61, line: 234, baseType: !55, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !540, file: !61, line: 234, baseType: !17, size: 32, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !540, file: !61, line: 234, baseType: !17, size: 32, offset: 224)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !540, file: !61, line: 234, baseType: !17, size: 32, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !540, file: !61, line: 234, baseType: !22, size: 8, offset: 288)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !540, file: !61, line: 234, baseType: !22, size: 8, offset: 296)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !540, file: !61, line: 234, baseType: !59, size: 64, offset: 320)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !60, file: !61, line: 383, baseType: !558, size: 576)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !61, line: 237, size: 576, elements: !559)
!559 = !{!560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !558, file: !61, line: 238, baseType: !59, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !558, file: !61, line: 238, baseType: !22, size: 8, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !558, file: !61, line: 238, baseType: !22, size: 8, offset: 72)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !558, file: !61, line: 238, baseType: !29, size: 16, offset: 80)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !558, file: !61, line: 238, baseType: !22, size: 8, offset: 96)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !558, file: !61, line: 238, baseType: !22, size: 8, offset: 104)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !558, file: !61, line: 238, baseType: !22, size: 8, offset: 112)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !558, file: !61, line: 238, baseType: !22, size: 8, offset: 120)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !558, file: !61, line: 238, baseType: !55, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !558, file: !61, line: 238, baseType: !17, size: 32, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !558, file: !61, line: 238, baseType: !17, size: 32, offset: 224)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !558, file: !61, line: 238, baseType: !17, size: 32, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !558, file: !61, line: 238, baseType: !22, size: 8, offset: 288)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !558, file: !61, line: 238, baseType: !22, size: 8, offset: 296)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !558, file: !61, line: 238, baseType: !29, size: 16, offset: 304)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !558, file: !61, line: 239, baseType: !59, size: 64, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !558, file: !61, line: 240, baseType: !104, size: 64, offset: 384)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !558, file: !61, line: 241, baseType: !29, size: 16, offset: 448)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !558, file: !61, line: 242, baseType: !104, size: 64, offset: 512)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !60, file: !61, line: 384, baseType: !580, size: 384)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !61, line: 262, size: 384, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !580, file: !61, line: 263, baseType: !59, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !580, file: !61, line: 263, baseType: !22, size: 8, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !580, file: !61, line: 263, baseType: !22, size: 8, offset: 72)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !580, file: !61, line: 263, baseType: !29, size: 16, offset: 80)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !580, file: !61, line: 263, baseType: !22, size: 8, offset: 96)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !580, file: !61, line: 263, baseType: !22, size: 8, offset: 104)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !580, file: !61, line: 263, baseType: !22, size: 8, offset: 112)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !580, file: !61, line: 263, baseType: !22, size: 8, offset: 120)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !580, file: !61, line: 263, baseType: !55, size: 64, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !580, file: !61, line: 263, baseType: !17, size: 32, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !580, file: !61, line: 263, baseType: !17, size: 32, offset: 224)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !580, file: !61, line: 263, baseType: !17, size: 32, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !580, file: !61, line: 263, baseType: !22, size: 8, offset: 288)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !580, file: !61, line: 263, baseType: !22, size: 8, offset: 296)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !580, file: !61, line: 263, baseType: !22, size: 8, offset: 304)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !580, file: !61, line: 264, baseType: !59, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !60, file: !61, line: 385, baseType: !599, size: 448)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !61, line: 245, size: 448, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !599, file: !61, line: 246, baseType: !59, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !599, file: !61, line: 246, baseType: !22, size: 8, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !599, file: !61, line: 246, baseType: !22, size: 8, offset: 72)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !599, file: !61, line: 246, baseType: !29, size: 16, offset: 80)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !61, line: 246, baseType: !22, size: 8, offset: 96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !599, file: !61, line: 246, baseType: !22, size: 8, offset: 104)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !599, file: !61, line: 246, baseType: !22, size: 8, offset: 112)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !599, file: !61, line: 246, baseType: !22, size: 8, offset: 120)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !599, file: !61, line: 246, baseType: !55, size: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !599, file: !61, line: 246, baseType: !17, size: 32, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !599, file: !61, line: 246, baseType: !17, size: 32, offset: 224)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !599, file: !61, line: 246, baseType: !17, size: 32, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !599, file: !61, line: 246, baseType: !22, size: 8, offset: 288)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !599, file: !61, line: 246, baseType: !22, size: 8, offset: 296)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !599, file: !61, line: 246, baseType: !59, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !599, file: !61, line: 247, baseType: !59, size: 64, offset: 384)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !60, file: !61, line: 386, baseType: !618, size: 448)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !61, line: 250, size: 448, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !618, file: !61, line: 251, baseType: !59, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !618, file: !61, line: 251, baseType: !22, size: 8, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !618, file: !61, line: 251, baseType: !22, size: 8, offset: 72)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !618, file: !61, line: 251, baseType: !29, size: 16, offset: 80)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !618, file: !61, line: 251, baseType: !22, size: 8, offset: 96)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !618, file: !61, line: 251, baseType: !22, size: 8, offset: 104)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !618, file: !61, line: 251, baseType: !22, size: 8, offset: 112)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !618, file: !61, line: 251, baseType: !22, size: 8, offset: 120)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !618, file: !61, line: 251, baseType: !55, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !618, file: !61, line: 251, baseType: !17, size: 32, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !618, file: !61, line: 251, baseType: !17, size: 32, offset: 224)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !618, file: !61, line: 251, baseType: !17, size: 32, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !618, file: !61, line: 251, baseType: !22, size: 8, offset: 288)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !618, file: !61, line: 251, baseType: !22, size: 8, offset: 296)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !618, file: !61, line: 256, baseType: !59, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !618, file: !61, line: 257, baseType: !59, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !60, file: !61, line: 387, baseType: !637, size: 512)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !61, line: 273, size: 512, elements: !638)
!638 = !{!639, !640, !641, !642, !643, !644, !645, !646, !647, !648}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !637, file: !61, line: 274, baseType: !59, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !637, file: !61, line: 274, baseType: !22, size: 8, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !637, file: !61, line: 274, baseType: !22, size: 8, offset: 72)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !637, file: !61, line: 274, baseType: !29, size: 16, offset: 80)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !637, file: !61, line: 274, baseType: !22, size: 8, offset: 96)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !637, file: !61, line: 274, baseType: !55, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !637, file: !61, line: 275, baseType: !17, size: 32, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !637, file: !61, line: 276, baseType: !383, size: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !637, file: !61, line: 277, baseType: !14, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !637, file: !61, line: 278, baseType: !488, size: 128, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !60, file: !61, line: 388, baseType: !650, size: 512)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !61, line: 281, size: 512, elements: !651)
!651 = !{!652, !653, !654, !655, !656, !657, !658, !659, !665, !666, !667, !673, !674}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !650, file: !61, line: 282, baseType: !59, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !650, file: !61, line: 282, baseType: !22, size: 8, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !650, file: !61, line: 282, baseType: !22, size: 8, offset: 72)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !650, file: !61, line: 282, baseType: !29, size: 16, offset: 80)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !650, file: !61, line: 282, baseType: !22, size: 8, offset: 96)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !650, file: !61, line: 282, baseType: !22, size: 8, offset: 104)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !650, file: !61, line: 283, baseType: !22, size: 8, offset: 112)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !650, file: !61, line: 284, baseType: !660, size: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !16, line: 1084, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!15, !17, !477, !17, !664, !14, !14}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !650, file: !61, line: 285, baseType: !55, size: 64, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !650, file: !61, line: 286, baseType: !14, size: 64, offset: 256)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !650, file: !61, line: 287, baseType: !668, size: 64, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !16, line: 1102, baseType: !669)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!15, !387, !17, !14, !672}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !650, file: !61, line: 288, baseType: !59, size: 64, offset: 384)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !650, file: !61, line: 289, baseType: !59, size: 64, offset: 448)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !60, file: !61, line: 389, baseType: !676, size: 512)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !61, line: 307, size: 512, elements: !677)
!677 = !{!678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !676, file: !61, line: 308, baseType: !59, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !676, file: !61, line: 308, baseType: !22, size: 8, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !676, file: !61, line: 308, baseType: !22, size: 8, offset: 72)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !676, file: !61, line: 308, baseType: !29, size: 16, offset: 80)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !676, file: !61, line: 308, baseType: !22, size: 8, offset: 96)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !676, file: !61, line: 308, baseType: !22, size: 8, offset: 104)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !676, file: !61, line: 309, baseType: !22, size: 8, offset: 112)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !676, file: !61, line: 310, baseType: !22, size: 8, offset: 120)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !676, file: !61, line: 311, baseType: !14, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !676, file: !61, line: 312, baseType: !55, size: 64, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !676, file: !61, line: 313, baseType: !119, size: 64, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !676, file: !61, line: 314, baseType: !104, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !676, file: !61, line: 315, baseType: !104, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !676, file: !61, line: 316, baseType: !17, size: 32, offset: 448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !60, file: !61, line: 390, baseType: !693, size: 448)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !61, line: 340, size: 448, elements: !694)
!694 = !{!695, !696, !697, !698, !699, !700, !701, !702, !703, !704}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !693, file: !61, line: 341, baseType: !59, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !693, file: !61, line: 341, baseType: !22, size: 8, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !693, file: !61, line: 341, baseType: !22, size: 8, offset: 72)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !693, file: !61, line: 341, baseType: !29, size: 16, offset: 80)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !693, file: !61, line: 341, baseType: !22, size: 8, offset: 96)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !693, file: !61, line: 341, baseType: !55, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !693, file: !61, line: 342, baseType: !55, size: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !693, file: !61, line: 343, baseType: !14, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !693, file: !61, line: 344, baseType: !104, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !693, file: !61, line: 345, baseType: !17, size: 32, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !60, file: !61, line: 391, baseType: !706, size: 256)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !61, line: 350, size: 256, elements: !707)
!707 = !{!708, !709, !710, !711, !712, !713, !718}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !706, file: !61, line: 351, baseType: !59, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !706, file: !61, line: 351, baseType: !22, size: 8, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !706, file: !61, line: 351, baseType: !22, size: 8, offset: 72)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !706, file: !61, line: 351, baseType: !29, size: 16, offset: 80)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !706, file: !61, line: 351, baseType: !22, size: 8, offset: 96)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !706, file: !61, line: 351, baseType: !714, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !16, line: 1055, baseType: !715)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !387, !14}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !706, file: !61, line: 352, baseType: !14, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !60, file: !61, line: 392, baseType: !720, size: 192)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !61, line: 357, size: 192, elements: !721)
!721 = !{!722, !723, !724, !725, !726, !727}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !720, file: !61, line: 358, baseType: !59, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !720, file: !61, line: 358, baseType: !22, size: 8, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !720, file: !61, line: 358, baseType: !22, size: 8, offset: 72)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !720, file: !61, line: 358, baseType: !29, size: 16, offset: 80)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !720, file: !61, line: 358, baseType: !22, size: 8, offset: 96)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !720, file: !61, line: 358, baseType: !59, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !60, file: !61, line: 399, baseType: !56, size: 384)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !56, file: !52, line: 135, baseType: !22, size: 8, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !56, file: !52, line: 136, baseType: !22, size: 8, offset: 72)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !56, file: !52, line: 137, baseType: !29, size: 16, offset: 80)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !56, file: !52, line: 138, baseType: !733, size: 32, offset: 96)
!733 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !734, line: 327, size: 32, elements: !735)
!734 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !733, file: !734, line: 328, baseType: !17, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !733, file: !734, line: 329, baseType: !248, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !56, file: !52, line: 139, baseType: !55, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !56, file: !52, line: 140, baseType: !55, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !56, file: !52, line: 141, baseType: !55, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !56, file: !52, line: 142, baseType: !166, size: 16, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !51, file: !52, line: 482, baseType: !50, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !51, file: !52, line: 483, baseType: !50, size: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !51, file: !52, line: 484, baseType: !745, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !52, line: 497, size: 256, elements: !747)
!747 = !{!748, !749, !750, !751}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !746, file: !52, line: 498, baseType: !745, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !746, file: !52, line: 499, baseType: !745, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !746, file: !52, line: 500, baseType: !50, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !746, file: !52, line: 501, baseType: !17, size: 32, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !51, file: !52, line: 485, baseType: !753, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !52, line: 466, size: 320, elements: !755)
!755 = !{!756, !761, !762, !763, !764, !765, !766}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !754, file: !52, line: 467, baseType: !757, size: 128)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !52, line: 459, size: 128, elements: !758)
!758 = !{!759, !760}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !757, file: !52, line: 460, baseType: !22, size: 8)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !757, file: !52, line: 461, baseType: !26, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !754, file: !52, line: 468, baseType: !757, size: 128, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !754, file: !52, line: 469, baseType: !29, size: 16, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !754, file: !52, line: 470, baseType: !22, size: 8, offset: 272)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !754, file: !52, line: 471, baseType: !22, size: 8, offset: 280)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !754, file: !52, line: 472, baseType: !22, size: 8, offset: 288)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !754, file: !52, line: 473, baseType: !22, size: 8, offset: 296)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !51, file: !52, line: 486, baseType: !768, size: 64, offset: 320)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !52, line: 448, size: 192, elements: !770)
!770 = !{!771, !794, !795, !796, !797, !798}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !769, file: !52, line: 449, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !52, line: 438, size: 64, elements: !773)
!773 = !{!774, !775, !788}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !772, file: !52, line: 439, baseType: !55, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !772, file: !52, line: 440, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !52, line: 419, size: 256, elements: !778)
!778 = !{!779, !784, !785, !786, !787}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !777, file: !52, line: 420, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !16, line: 1049, baseType: !781)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!17, !387, !17, !14}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !777, file: !52, line: 421, baseType: !14, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !777, file: !52, line: 422, baseType: !55, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !777, file: !52, line: 423, baseType: !22, size: 8, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !777, file: !52, line: 424, baseType: !22, size: 8, offset: 200)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !772, file: !52, line: 441, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !52, line: 429, size: 128, elements: !791)
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !790, file: !52, line: 430, baseType: !55, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !790, file: !52, line: 431, baseType: !789, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !769, file: !52, line: 450, baseType: !753, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !769, file: !52, line: 451, baseType: !22, size: 8, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !769, file: !52, line: 452, baseType: !22, size: 8, offset: 136)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !769, file: !52, line: 453, baseType: !22, size: 8, offset: 144)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !769, file: !52, line: 454, baseType: !22, size: 8, offset: 152)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !51, file: !52, line: 487, baseType: !26, size: 64, offset: 384)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !51, file: !52, line: 488, baseType: !17, size: 32, offset: 448)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !51, file: !52, line: 489, baseType: !29, size: 16, offset: 480)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !51, file: !52, line: 490, baseType: !29, size: 16, offset: 496)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !51, file: !52, line: 491, baseType: !22, size: 8, offset: 512)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !51, file: !52, line: 492, baseType: !22, size: 8, offset: 520)
!805 = !{}
!806 = !DILocalVariable(name: "gpe_block", arg: 1, scope: !47, file: !3, line: 97, type: !50)
!807 = !DILocation(line: 97, column: 66, scope: !47)
!808 = !DILocalVariable(name: "status", scope: !47, file: !3, line: 99, type: !15)
!809 = !DILocation(line: 99, column: 14, scope: !47)
!810 = !DILocalVariable(name: "flags", scope: !47, file: !3, line: 100, type: !34)
!811 = !DILocation(line: 100, column: 17, scope: !47)
!812 = !DILocation(line: 104, column: 11, scope: !47)
!813 = !DILocation(line: 104, column: 9, scope: !47)
!814 = !DILocation(line: 105, column: 6, scope: !815)
!815 = distinct !DILexicalBlock(scope: !47, file: !3, line: 105, column: 6)
!816 = !DILocation(line: 105, column: 6, scope: !47)
!817 = !DILocation(line: 106, column: 3, scope: !818)
!818 = distinct !DILexicalBlock(scope: !815, file: !3, line: 105, column: 28)
!819 = !DILocation(line: 112, column: 32, scope: !47)
!820 = !DILocation(line: 112, column: 43, scope: !47)
!821 = !DILocation(line: 112, column: 56, scope: !47)
!822 = !DILocation(line: 112, column: 6, scope: !47)
!823 = !DILocation(line: 111, column: 9, scope: !47)
!824 = !DILocation(line: 113, column: 6, scope: !825)
!825 = distinct !DILexicalBlock(scope: !47, file: !3, line: 113, column: 6)
!826 = !DILocation(line: 113, column: 6, scope: !47)
!827 = !DILocation(line: 114, column: 3, scope: !828)
!828 = distinct !DILexicalBlock(scope: !825, file: !3, line: 113, column: 28)
!829 = !DILocation(line: 117, column: 7, scope: !830)
!830 = distinct !DILexicalBlock(scope: !47, file: !3, line: 117, column: 6)
!831 = !DILocation(line: 117, column: 18, scope: !830)
!832 = !DILocation(line: 117, column: 27, scope: !830)
!833 = !DILocation(line: 117, column: 31, scope: !830)
!834 = !DILocation(line: 117, column: 42, scope: !830)
!835 = !DILocation(line: 117, column: 6, scope: !47)
!836 = !DILocation(line: 121, column: 37, scope: !837)
!837 = distinct !DILexicalBlock(scope: !830, file: !3, line: 117, column: 48)
!838 = !DILocation(line: 121, column: 48, scope: !837)
!839 = !DILocation(line: 121, column: 12, scope: !837)
!840 = !DILocation(line: 121, column: 10, scope: !837)
!841 = !DILocation(line: 122, column: 7, scope: !842)
!842 = distinct !DILexicalBlock(scope: !837, file: !3, line: 122, column: 7)
!843 = !DILocation(line: 122, column: 7, scope: !837)
!844 = !DILocation(line: 123, column: 4, scope: !845)
!845 = distinct !DILexicalBlock(scope: !842, file: !3, line: 122, column: 29)
!846 = !DILocation(line: 125, column: 2, scope: !837)
!847 = !DILocation(line: 128, column: 32, scope: !848)
!848 = distinct !DILexicalBlock(scope: !830, file: !3, line: 125, column: 9)
!849 = !DILocation(line: 128, column: 11, scope: !848)
!850 = !DILocation(line: 128, column: 9, scope: !848)
!851 = !DILocation(line: 129, column: 7, scope: !852)
!852 = distinct !DILexicalBlock(scope: !848, file: !3, line: 129, column: 7)
!853 = !DILocation(line: 129, column: 18, scope: !852)
!854 = !DILocation(line: 129, column: 7, scope: !848)
!855 = !DILocation(line: 130, column: 32, scope: !856)
!856 = distinct !DILexicalBlock(scope: !852, file: !3, line: 129, column: 28)
!857 = !DILocation(line: 130, column: 43, scope: !856)
!858 = !DILocation(line: 130, column: 4, scope: !856)
!859 = !DILocation(line: 130, column: 15, scope: !856)
!860 = !DILocation(line: 130, column: 25, scope: !856)
!861 = !DILocation(line: 130, column: 30, scope: !856)
!862 = !DILocation(line: 131, column: 3, scope: !856)
!863 = !DILocation(line: 133, column: 8, scope: !864)
!864 = distinct !DILexicalBlock(scope: !852, file: !3, line: 131, column: 10)
!865 = !DILocation(line: 133, column: 19, scope: !864)
!866 = !DILocation(line: 132, column: 4, scope: !864)
!867 = !DILocation(line: 132, column: 15, scope: !864)
!868 = !DILocation(line: 132, column: 28, scope: !864)
!869 = !DILocation(line: 132, column: 48, scope: !864)
!870 = !DILocation(line: 136, column: 7, scope: !871)
!871 = distinct !DILexicalBlock(scope: !848, file: !3, line: 136, column: 7)
!872 = !DILocation(line: 136, column: 18, scope: !871)
!873 = !DILocation(line: 136, column: 7, scope: !848)
!874 = !DILocation(line: 137, column: 32, scope: !875)
!875 = distinct !DILexicalBlock(scope: !871, file: !3, line: 136, column: 24)
!876 = !DILocation(line: 137, column: 43, scope: !875)
!877 = !DILocation(line: 137, column: 4, scope: !875)
!878 = !DILocation(line: 137, column: 15, scope: !875)
!879 = !DILocation(line: 137, column: 21, scope: !875)
!880 = !DILocation(line: 137, column: 30, scope: !875)
!881 = !DILocation(line: 138, column: 3, scope: !875)
!882 = !DILocation(line: 140, column: 24, scope: !848)
!883 = !DILocation(line: 140, column: 43, scope: !848)
!884 = !DILocation(line: 140, column: 3, scope: !848)
!885 = !DILocation(line: 143, column: 28, scope: !47)
!886 = !DILocation(line: 143, column: 39, scope: !47)
!887 = !DILocation(line: 143, column: 25, scope: !47)
!888 = !DILocation(line: 147, column: 2, scope: !47)
!889 = !DILocation(line: 148, column: 2, scope: !47)
!890 = !DILocation(line: 149, column: 2, scope: !47)
!891 = !DILabel(scope: !47, name: "unlock_and_exit", file: !3, line: 151)
!892 = !DILocation(line: 151, column: 1, scope: !47)
!893 = !DILocation(line: 152, column: 11, scope: !47)
!894 = !DILocation(line: 152, column: 9, scope: !47)
!895 = !DILocation(line: 153, column: 2, scope: !47)
!896 = !DILocation(line: 154, column: 1, scope: !47)
!897 = distinct !DISubprogram(name: "acpi_os_free", scope: !898, file: !898, line: 60, type: !899, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!898 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!899 = !DISubroutineType(types: !900)
!900 = !{null, !14}
!901 = !DILocalVariable(name: "memory", arg: 1, scope: !897, file: !898, line: 60, type: !14)
!902 = !DILocation(line: 60, column: 39, scope: !897)
!903 = !DILocation(line: 62, column: 8, scope: !897)
!904 = !DILocation(line: 62, column: 2, scope: !897)
!905 = !DILocation(line: 63, column: 1, scope: !897)
!906 = distinct !DISubprogram(name: "acpi_ev_create_gpe_block", scope: !3, file: !3, line: 296, type: !907, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!907 = !DISubroutineType(types: !908)
!908 = !{!15, !55, !26, !22, !17, !29, !17, !909}
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!910 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !906, file: !3, line: 296, type: !55)
!911 = !DILocation(line: 296, column: 54, scope: !906)
!912 = !DILocalVariable(name: "address", arg: 2, scope: !906, file: !3, line: 297, type: !26)
!913 = !DILocation(line: 297, column: 9, scope: !906)
!914 = !DILocalVariable(name: "space_id", arg: 3, scope: !906, file: !3, line: 298, type: !22)
!915 = !DILocation(line: 298, column: 8, scope: !906)
!916 = !DILocalVariable(name: "register_count", arg: 4, scope: !906, file: !3, line: 299, type: !17)
!917 = !DILocation(line: 299, column: 9, scope: !906)
!918 = !DILocalVariable(name: "gpe_block_base_number", arg: 5, scope: !906, file: !3, line: 300, type: !29)
!919 = !DILocation(line: 300, column: 9, scope: !906)
!920 = !DILocalVariable(name: "interrupt_number", arg: 6, scope: !906, file: !3, line: 301, type: !17)
!921 = !DILocation(line: 301, column: 9, scope: !906)
!922 = !DILocalVariable(name: "return_gpe_block", arg: 7, scope: !906, file: !3, line: 302, type: !909)
!923 = !DILocation(line: 302, column: 34, scope: !906)
!924 = !DILocalVariable(name: "status", scope: !906, file: !3, line: 304, type: !15)
!925 = !DILocation(line: 304, column: 14, scope: !906)
!926 = !DILocalVariable(name: "gpe_block", scope: !906, file: !3, line: 305, type: !50)
!927 = !DILocation(line: 305, column: 30, scope: !906)
!928 = !DILocalVariable(name: "walk_info", scope: !906, file: !3, line: 306, type: !929)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_walk_info", file: !52, line: 504, size: 192, elements: !930)
!930 = !{!931, !932, !933, !934, !935}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !929, file: !52, line: 505, baseType: !55, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !929, file: !52, line: 506, baseType: !50, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !929, file: !52, line: 507, baseType: !29, size: 16, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !929, file: !52, line: 508, baseType: !166, size: 16, offset: 144)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "execute_by_owner_id", scope: !929, file: !52, line: 509, baseType: !22, size: 8, offset: 160)
!936 = !DILocation(line: 306, column: 28, scope: !906)
!937 = !DILocation(line: 310, column: 7, scope: !938)
!938 = distinct !DILexicalBlock(scope: !906, file: !3, line: 310, column: 6)
!939 = !DILocation(line: 310, column: 6, scope: !906)
!940 = !DILocation(line: 311, column: 3, scope: !941)
!941 = distinct !DILexicalBlock(scope: !938, file: !3, line: 310, column: 23)
!942 = !DILocation(line: 316, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !906, file: !3, line: 316, column: 6)
!944 = !DILocation(line: 316, column: 16, scope: !943)
!945 = !DILocation(line: 316, column: 49, scope: !943)
!946 = !DILocation(line: 317, column: 7, scope: !943)
!947 = !DILocation(line: 317, column: 16, scope: !943)
!948 = !DILocation(line: 316, column: 6, scope: !906)
!949 = !DILocation(line: 318, column: 3, scope: !950)
!950 = distinct !DILexicalBlock(scope: !943, file: !3, line: 317, column: 46)
!951 = !DILocation(line: 320, column: 3, scope: !950)
!952 = !DILocation(line: 323, column: 6, scope: !953)
!953 = distinct !DILexicalBlock(scope: !906, file: !3, line: 323, column: 6)
!954 = !DILocation(line: 323, column: 15, scope: !953)
!955 = !DILocation(line: 323, column: 6, scope: !906)
!956 = !DILocation(line: 324, column: 38, scope: !957)
!957 = distinct !DILexicalBlock(scope: !953, file: !3, line: 323, column: 44)
!958 = !DILocation(line: 326, column: 10, scope: !957)
!959 = !DILocation(line: 324, column: 12, scope: !957)
!960 = !DILocation(line: 324, column: 10, scope: !957)
!961 = !DILocation(line: 327, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !957, file: !3, line: 327, column: 7)
!963 = !DILocation(line: 327, column: 7, scope: !957)
!964 = !DILocation(line: 328, column: 4, scope: !962)
!965 = !DILocation(line: 329, column: 2, scope: !957)
!966 = !DILocation(line: 333, column: 14, scope: !906)
!967 = !DILocation(line: 333, column: 12, scope: !906)
!968 = !DILocation(line: 334, column: 7, scope: !969)
!969 = distinct !DILexicalBlock(scope: !906, file: !3, line: 334, column: 6)
!970 = !DILocation(line: 334, column: 6, scope: !906)
!971 = !DILocation(line: 335, column: 3, scope: !972)
!972 = distinct !DILexicalBlock(scope: !969, file: !3, line: 334, column: 18)
!973 = !DILocation(line: 340, column: 23, scope: !906)
!974 = !DILocation(line: 340, column: 2, scope: !906)
!975 = !DILocation(line: 340, column: 13, scope: !906)
!976 = !DILocation(line: 340, column: 21, scope: !906)
!977 = !DILocation(line: 341, column: 24, scope: !906)
!978 = !DILocation(line: 341, column: 2, scope: !906)
!979 = !DILocation(line: 341, column: 13, scope: !906)
!980 = !DILocation(line: 341, column: 22, scope: !906)
!981 = !DILocation(line: 342, column: 20, scope: !906)
!982 = !DILocation(line: 342, column: 2, scope: !906)
!983 = !DILocation(line: 342, column: 13, scope: !906)
!984 = !DILocation(line: 342, column: 18, scope: !906)
!985 = !DILocation(line: 343, column: 31, scope: !906)
!986 = !DILocation(line: 343, column: 46, scope: !906)
!987 = !DILocation(line: 343, column: 25, scope: !906)
!988 = !DILocation(line: 343, column: 2, scope: !906)
!989 = !DILocation(line: 343, column: 13, scope: !906)
!990 = !DILocation(line: 343, column: 23, scope: !906)
!991 = !DILocation(line: 344, column: 2, scope: !906)
!992 = !DILocation(line: 344, column: 13, scope: !906)
!993 = !DILocation(line: 344, column: 25, scope: !906)
!994 = !DILocation(line: 345, column: 30, scope: !906)
!995 = !DILocation(line: 345, column: 2, scope: !906)
!996 = !DILocation(line: 345, column: 13, scope: !906)
!997 = !DILocation(line: 345, column: 28, scope: !906)
!998 = !DILocation(line: 346, column: 33, scope: !906)
!999 = !DILocation(line: 346, column: 2, scope: !906)
!1000 = !DILocation(line: 346, column: 13, scope: !906)
!1001 = !DILocation(line: 346, column: 31, scope: !906)
!1002 = !DILocation(line: 352, column: 42, scope: !906)
!1003 = !DILocation(line: 352, column: 11, scope: !906)
!1004 = !DILocation(line: 352, column: 9, scope: !906)
!1005 = !DILocation(line: 353, column: 6, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !906, file: !3, line: 353, column: 6)
!1007 = !DILocation(line: 353, column: 6, scope: !906)
!1008 = !DILocation(line: 354, column: 3, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 353, column: 28)
!1010 = !DILocation(line: 355, column: 3, scope: !1009)
!1011 = !DILocation(line: 360, column: 37, scope: !906)
!1012 = !DILocation(line: 360, column: 48, scope: !906)
!1013 = !DILocation(line: 360, column: 11, scope: !906)
!1014 = !DILocation(line: 360, column: 9, scope: !906)
!1015 = !DILocation(line: 361, column: 6, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !906, file: !3, line: 361, column: 6)
!1017 = !DILocation(line: 361, column: 6, scope: !906)
!1018 = !DILocation(line: 362, column: 3, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 361, column: 28)
!1020 = !DILocation(line: 363, column: 3, scope: !1019)
!1021 = !DILocation(line: 364, column: 3, scope: !1019)
!1022 = !DILocation(line: 365, column: 3, scope: !1019)
!1023 = !DILocation(line: 368, column: 32, scope: !906)
!1024 = !DILocation(line: 372, column: 24, scope: !906)
!1025 = !DILocation(line: 372, column: 12, scope: !906)
!1026 = !DILocation(line: 372, column: 22, scope: !906)
!1027 = !DILocation(line: 373, column: 25, scope: !906)
!1028 = !DILocation(line: 373, column: 12, scope: !906)
!1029 = !DILocation(line: 373, column: 23, scope: !906)
!1030 = !DILocation(line: 374, column: 12, scope: !906)
!1031 = !DILocation(line: 374, column: 32, scope: !906)
!1032 = !DILocation(line: 376, column: 49, scope: !906)
!1033 = !DILocation(line: 378, column: 42, scope: !906)
!1034 = !DILocation(line: 376, column: 8, scope: !906)
!1035 = !DILocation(line: 383, column: 6, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !906, file: !3, line: 383, column: 6)
!1037 = !DILocation(line: 383, column: 6, scope: !906)
!1038 = !DILocation(line: 384, column: 25, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 383, column: 24)
!1040 = !DILocation(line: 384, column: 5, scope: !1039)
!1041 = !DILocation(line: 384, column: 23, scope: !1039)
!1042 = !DILocation(line: 385, column: 2, scope: !1039)
!1043 = !DILocation(line: 399, column: 28, scope: !906)
!1044 = !DILocation(line: 399, column: 39, scope: !906)
!1045 = !DILocation(line: 399, column: 25, scope: !906)
!1046 = !DILocation(line: 400, column: 2, scope: !906)
!1047 = !DILocation(line: 401, column: 1, scope: !906)
!1048 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !898, file: !898, line: 55, type: !1049, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!14, !25}
!1051 = !DILocalVariable(name: "flags", arg: 1, scope: !1052, file: !1053, line: 162, type: !34)
!1052 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1053, file: !1053, line: 162, type: !1054, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1053 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!1056, !34}
!1056 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1057 = !DILocation(line: 162, column: 67, scope: !1052, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 57, column: 23, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !898, line: 57, column: 23)
!1060 = distinct !DILexicalBlock(scope: !1048, file: !898, line: 57, column: 23)
!1061 = !DILocalVariable(name: "size", arg: 1, scope: !1048, file: !898, line: 55, type: !25)
!1062 = !DILocation(line: 55, column: 55, scope: !1048)
!1063 = !DILocation(line: 57, column: 17, scope: !1048)
!1064 = !DILocalVariable(name: "_flags", scope: !1060, file: !898, line: 57, type: !34)
!1065 = !DILocation(line: 57, column: 23, scope: !1060)
!1066 = !DILocalVariable(name: "__dummy", scope: !1067, file: !898, line: 57, type: !34)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !898, line: 57, column: 23)
!1068 = distinct !DILexicalBlock(scope: !1060, file: !898, line: 57, column: 23)
!1069 = !DILocation(line: 57, column: 23, scope: !1067)
!1070 = !DILocalVariable(name: "__dummy2", scope: !1067, file: !898, line: 57, type: !34)
!1071 = !DILocation(line: 57, column: 23, scope: !1068)
!1072 = !DILocalVariable(name: "__dummy", scope: !1073, file: !898, line: 57, type: !34)
!1073 = distinct !DILexicalBlock(scope: !1059, file: !898, line: 57, column: 23)
!1074 = !DILocation(line: 57, column: 23, scope: !1073)
!1075 = !DILocalVariable(name: "__dummy2", scope: !1073, file: !898, line: 57, type: !34)
!1076 = !DILocation(line: 57, column: 23, scope: !1059)
!1077 = !DILocation(line: 164, column: 11, scope: !1052, inlinedAt: !1058)
!1078 = !DILocation(line: 164, column: 17, scope: !1052, inlinedAt: !1058)
!1079 = !DILocation(line: 164, column: 9, scope: !1052, inlinedAt: !1058)
!1080 = !DILocation(line: 57, column: 23, scope: !1048)
!1081 = !DILocation(line: 57, column: 9, scope: !1048)
!1082 = !DILocation(line: 57, column: 2, scope: !1048)
!1083 = distinct !DISubprogram(name: "acpi_ev_create_gpe_info_blocks", scope: !3, file: !3, line: 169, type: !48, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1084 = !DILocalVariable(name: "gpe_block", arg: 1, scope: !1083, file: !3, line: 169, type: !50)
!1085 = !DILocation(line: 169, column: 60, scope: !1083)
!1086 = !DILocalVariable(name: "gpe_register_info", scope: !1083, file: !3, line: 171, type: !753)
!1087 = !DILocation(line: 171, column: 33, scope: !1083)
!1088 = !DILocalVariable(name: "gpe_event_info", scope: !1083, file: !3, line: 172, type: !768)
!1089 = !DILocation(line: 172, column: 30, scope: !1083)
!1090 = !DILocalVariable(name: "this_event", scope: !1083, file: !3, line: 173, type: !768)
!1091 = !DILocation(line: 173, column: 30, scope: !1083)
!1092 = !DILocalVariable(name: "this_register", scope: !1083, file: !3, line: 174, type: !753)
!1093 = !DILocation(line: 174, column: 33, scope: !1083)
!1094 = !DILocalVariable(name: "i", scope: !1083, file: !3, line: 175, type: !17)
!1095 = !DILocation(line: 175, column: 6, scope: !1083)
!1096 = !DILocalVariable(name: "j", scope: !1083, file: !3, line: 176, type: !17)
!1097 = !DILocation(line: 176, column: 6, scope: !1083)
!1098 = !DILocalVariable(name: "status", scope: !1083, file: !3, line: 177, type: !15)
!1099 = !DILocation(line: 177, column: 14, scope: !1083)
!1100 = !DILocation(line: 183, column: 22, scope: !1083)
!1101 = !DILocation(line: 183, column: 20, scope: !1083)
!1102 = !DILocation(line: 187, column: 7, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 187, column: 6)
!1104 = !DILocation(line: 187, column: 6, scope: !1083)
!1105 = !DILocation(line: 188, column: 3, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 187, column: 26)
!1107 = !DILocation(line: 190, column: 3, scope: !1106)
!1108 = !DILocation(line: 197, column: 19, scope: !1083)
!1109 = !DILocation(line: 197, column: 17, scope: !1083)
!1110 = !DILocation(line: 200, column: 7, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 200, column: 6)
!1112 = !DILocation(line: 200, column: 6, scope: !1083)
!1113 = !DILocation(line: 201, column: 3, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 200, column: 23)
!1115 = !DILocation(line: 203, column: 10, scope: !1114)
!1116 = !DILocation(line: 204, column: 3, scope: !1114)
!1117 = !DILocation(line: 209, column: 29, scope: !1083)
!1118 = !DILocation(line: 209, column: 2, scope: !1083)
!1119 = !DILocation(line: 209, column: 13, scope: !1083)
!1120 = !DILocation(line: 209, column: 27, scope: !1083)
!1121 = !DILocation(line: 210, column: 26, scope: !1083)
!1122 = !DILocation(line: 210, column: 2, scope: !1083)
!1123 = !DILocation(line: 210, column: 13, scope: !1083)
!1124 = !DILocation(line: 210, column: 24, scope: !1083)
!1125 = !DILocation(line: 218, column: 18, scope: !1083)
!1126 = !DILocation(line: 218, column: 16, scope: !1083)
!1127 = !DILocation(line: 219, column: 15, scope: !1083)
!1128 = !DILocation(line: 219, column: 13, scope: !1083)
!1129 = !DILocation(line: 221, column: 9, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 221, column: 2)
!1131 = !DILocation(line: 221, column: 7, scope: !1130)
!1132 = !DILocation(line: 221, column: 14, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 221, column: 2)
!1134 = !DILocation(line: 221, column: 18, scope: !1133)
!1135 = !DILocation(line: 221, column: 29, scope: !1133)
!1136 = !DILocation(line: 221, column: 16, scope: !1133)
!1137 = !DILocation(line: 221, column: 2, scope: !1130)
!1138 = !DILocation(line: 226, column: 8, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 221, column: 50)
!1140 = !DILocation(line: 226, column: 19, scope: !1139)
!1141 = !DILocation(line: 227, column: 9, scope: !1139)
!1142 = !DILocation(line: 227, column: 11, scope: !1139)
!1143 = !DILocation(line: 226, column: 37, scope: !1139)
!1144 = !DILocation(line: 225, column: 36, scope: !1139)
!1145 = !DILocation(line: 225, column: 3, scope: !1139)
!1146 = !DILocation(line: 225, column: 18, scope: !1139)
!1147 = !DILocation(line: 225, column: 34, scope: !1139)
!1148 = !DILocation(line: 229, column: 43, scope: !1139)
!1149 = !DILocation(line: 229, column: 54, scope: !1139)
!1150 = !DILocation(line: 229, column: 64, scope: !1139)
!1151 = !DILocation(line: 229, column: 62, scope: !1139)
!1152 = !DILocation(line: 229, column: 3, scope: !1139)
!1153 = !DILocation(line: 229, column: 18, scope: !1139)
!1154 = !DILocation(line: 229, column: 33, scope: !1139)
!1155 = !DILocation(line: 229, column: 41, scope: !1139)
!1156 = !DILocation(line: 232, column: 7, scope: !1139)
!1157 = !DILocation(line: 232, column: 18, scope: !1139)
!1158 = !DILocation(line: 232, column: 28, scope: !1139)
!1159 = !DILocation(line: 232, column: 26, scope: !1139)
!1160 = !DILocation(line: 232, column: 32, scope: !1139)
!1161 = !DILocation(line: 232, column: 43, scope: !1139)
!1162 = !DILocation(line: 232, column: 30, scope: !1139)
!1163 = !DILocation(line: 231, column: 3, scope: !1139)
!1164 = !DILocation(line: 231, column: 18, scope: !1139)
!1165 = !DILocation(line: 231, column: 33, scope: !1139)
!1166 = !DILocation(line: 231, column: 41, scope: !1139)
!1167 = !DILocation(line: 234, column: 44, scope: !1139)
!1168 = !DILocation(line: 234, column: 55, scope: !1139)
!1169 = !DILocation(line: 234, column: 3, scope: !1139)
!1170 = !DILocation(line: 234, column: 18, scope: !1139)
!1171 = !DILocation(line: 234, column: 33, scope: !1139)
!1172 = !DILocation(line: 234, column: 42, scope: !1139)
!1173 = !DILocation(line: 235, column: 44, scope: !1139)
!1174 = !DILocation(line: 235, column: 55, scope: !1139)
!1175 = !DILocation(line: 235, column: 3, scope: !1139)
!1176 = !DILocation(line: 235, column: 18, scope: !1139)
!1177 = !DILocation(line: 235, column: 33, scope: !1139)
!1178 = !DILocation(line: 235, column: 42, scope: !1139)
!1179 = !DILocation(line: 239, column: 10, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 239, column: 3)
!1181 = !DILocation(line: 239, column: 8, scope: !1180)
!1182 = !DILocation(line: 239, column: 15, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 239, column: 3)
!1184 = !DILocation(line: 239, column: 17, scope: !1183)
!1185 = !DILocation(line: 239, column: 3, scope: !1180)
!1186 = !DILocation(line: 241, column: 14, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 239, column: 49)
!1188 = !DILocation(line: 241, column: 29, scope: !1187)
!1189 = !DILocation(line: 241, column: 47, scope: !1187)
!1190 = !DILocation(line: 241, column: 45, scope: !1187)
!1191 = !DILocation(line: 241, column: 8, scope: !1187)
!1192 = !DILocation(line: 240, column: 4, scope: !1187)
!1193 = !DILocation(line: 240, column: 16, scope: !1187)
!1194 = !DILocation(line: 240, column: 27, scope: !1187)
!1195 = !DILocation(line: 242, column: 32, scope: !1187)
!1196 = !DILocation(line: 242, column: 4, scope: !1187)
!1197 = !DILocation(line: 242, column: 16, scope: !1187)
!1198 = !DILocation(line: 242, column: 30, scope: !1187)
!1199 = !DILocation(line: 243, column: 14, scope: !1187)
!1200 = !DILocation(line: 244, column: 3, scope: !1187)
!1201 = !DILocation(line: 239, column: 45, scope: !1183)
!1202 = !DILocation(line: 239, column: 3, scope: !1183)
!1203 = distinct !{!1203, !1185, !1204}
!1204 = !DILocation(line: 244, column: 3, scope: !1180)
!1205 = !DILocation(line: 248, column: 37, scope: !1139)
!1206 = !DILocation(line: 248, column: 52, scope: !1139)
!1207 = !DILocation(line: 248, column: 12, scope: !1139)
!1208 = !DILocation(line: 248, column: 10, scope: !1139)
!1209 = !DILocation(line: 249, column: 7, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 249, column: 7)
!1211 = !DILocation(line: 249, column: 7, scope: !1139)
!1212 = !DILocation(line: 250, column: 4, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 249, column: 29)
!1214 = !DILocation(line: 255, column: 37, scope: !1139)
!1215 = !DILocation(line: 255, column: 52, scope: !1139)
!1216 = !DILocation(line: 255, column: 12, scope: !1139)
!1217 = !DILocation(line: 255, column: 10, scope: !1139)
!1218 = !DILocation(line: 256, column: 7, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 256, column: 7)
!1220 = !DILocation(line: 256, column: 7, scope: !1139)
!1221 = !DILocation(line: 257, column: 4, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 256, column: 29)
!1223 = !DILocation(line: 260, column: 16, scope: !1139)
!1224 = !DILocation(line: 261, column: 2, scope: !1139)
!1225 = !DILocation(line: 221, column: 46, scope: !1133)
!1226 = !DILocation(line: 221, column: 2, scope: !1133)
!1227 = distinct !{!1227, !1137, !1228}
!1228 = !DILocation(line: 261, column: 2, scope: !1130)
!1229 = !DILocation(line: 263, column: 2, scope: !1083)
!1230 = !DILabel(scope: !1083, name: "error_exit", file: !3, line: 265)
!1231 = !DILocation(line: 265, column: 1, scope: !1083)
!1232 = !DILocation(line: 266, column: 6, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 266, column: 6)
!1234 = !DILocation(line: 266, column: 6, scope: !1083)
!1235 = !DILocation(line: 267, column: 3, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 266, column: 25)
!1237 = !DILocation(line: 268, column: 2, scope: !1236)
!1238 = !DILocation(line: 269, column: 6, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 269, column: 6)
!1240 = !DILocation(line: 269, column: 6, scope: !1083)
!1241 = !DILocation(line: 270, column: 3, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 269, column: 22)
!1243 = !DILocation(line: 271, column: 2, scope: !1242)
!1244 = !DILocation(line: 273, column: 2, scope: !1083)
!1245 = !DILocation(line: 274, column: 1, scope: !1083)
!1246 = distinct !DISubprogram(name: "acpi_ev_install_gpe_block", scope: !3, file: !3, line: 41, type: !1247, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!15, !50, !17}
!1249 = !DILocalVariable(name: "gpe_block", arg: 1, scope: !1246, file: !3, line: 41, type: !50)
!1250 = !DILocation(line: 41, column: 55, scope: !1246)
!1251 = !DILocalVariable(name: "interrupt_number", arg: 2, scope: !1246, file: !3, line: 42, type: !17)
!1252 = !DILocation(line: 42, column: 10, scope: !1246)
!1253 = !DILocalVariable(name: "next_gpe_block", scope: !1246, file: !3, line: 44, type: !50)
!1254 = !DILocation(line: 44, column: 30, scope: !1246)
!1255 = !DILocalVariable(name: "gpe_xrupt_block", scope: !1246, file: !3, line: 45, type: !745)
!1256 = !DILocation(line: 45, column: 30, scope: !1246)
!1257 = !DILocalVariable(name: "status", scope: !1246, file: !3, line: 46, type: !15)
!1258 = !DILocation(line: 46, column: 14, scope: !1246)
!1259 = !DILocalVariable(name: "flags", scope: !1246, file: !3, line: 47, type: !34)
!1260 = !DILocation(line: 47, column: 17, scope: !1246)
!1261 = !DILocation(line: 51, column: 11, scope: !1246)
!1262 = !DILocation(line: 51, column: 9, scope: !1246)
!1263 = !DILocation(line: 52, column: 6, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 52, column: 6)
!1265 = !DILocation(line: 52, column: 6, scope: !1246)
!1266 = !DILocation(line: 53, column: 3, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 52, column: 28)
!1268 = !DILocation(line: 57, column: 34, scope: !1246)
!1269 = !DILocation(line: 57, column: 6, scope: !1246)
!1270 = !DILocation(line: 56, column: 9, scope: !1246)
!1271 = !DILocation(line: 58, column: 6, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 58, column: 6)
!1273 = !DILocation(line: 58, column: 6, scope: !1246)
!1274 = !DILocation(line: 59, column: 3, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 58, column: 28)
!1276 = !DILocation(line: 64, column: 31, scope: !1246)
!1277 = !DILocation(line: 64, column: 10, scope: !1246)
!1278 = !DILocation(line: 64, column: 8, scope: !1246)
!1279 = !DILocation(line: 65, column: 6, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 65, column: 6)
!1281 = !DILocation(line: 65, column: 23, scope: !1280)
!1282 = !DILocation(line: 65, column: 6, scope: !1246)
!1283 = !DILocation(line: 66, column: 20, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 65, column: 44)
!1285 = !DILocation(line: 66, column: 37, scope: !1284)
!1286 = !DILocation(line: 66, column: 18, scope: !1284)
!1287 = !DILocation(line: 67, column: 3, scope: !1284)
!1288 = !DILocation(line: 67, column: 10, scope: !1284)
!1289 = !DILocation(line: 67, column: 26, scope: !1284)
!1290 = !DILocation(line: 68, column: 21, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 67, column: 32)
!1292 = !DILocation(line: 68, column: 37, scope: !1291)
!1293 = !DILocation(line: 68, column: 19, scope: !1291)
!1294 = distinct !{!1294, !1287, !1295}
!1295 = !DILocation(line: 69, column: 3, scope: !1284)
!1296 = !DILocation(line: 71, column: 26, scope: !1284)
!1297 = !DILocation(line: 71, column: 3, scope: !1284)
!1298 = !DILocation(line: 71, column: 19, scope: !1284)
!1299 = !DILocation(line: 71, column: 24, scope: !1284)
!1300 = !DILocation(line: 72, column: 25, scope: !1284)
!1301 = !DILocation(line: 72, column: 3, scope: !1284)
!1302 = !DILocation(line: 72, column: 14, scope: !1284)
!1303 = !DILocation(line: 72, column: 23, scope: !1284)
!1304 = !DILocation(line: 73, column: 2, scope: !1284)
!1305 = !DILocation(line: 74, column: 42, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 73, column: 9)
!1307 = !DILocation(line: 74, column: 3, scope: !1306)
!1308 = !DILocation(line: 74, column: 20, scope: !1306)
!1309 = !DILocation(line: 74, column: 40, scope: !1306)
!1310 = !DILocation(line: 77, column: 27, scope: !1246)
!1311 = !DILocation(line: 77, column: 2, scope: !1246)
!1312 = !DILocation(line: 77, column: 13, scope: !1246)
!1313 = !DILocation(line: 77, column: 25, scope: !1246)
!1314 = !DILocation(line: 78, column: 23, scope: !1246)
!1315 = !DILocation(line: 78, column: 42, scope: !1246)
!1316 = !DILocation(line: 78, column: 2, scope: !1246)
!1317 = !DILabel(scope: !1246, name: "unlock_and_exit", file: !3, line: 80)
!1318 = !DILocation(line: 80, column: 1, scope: !1246)
!1319 = !DILocation(line: 81, column: 8, scope: !1246)
!1320 = !DILocation(line: 82, column: 2, scope: !1246)
!1321 = !DILocation(line: 83, column: 1, scope: !1246)
!1322 = distinct !DISubprogram(name: "acpi_ev_initialize_gpe_block", scope: !3, file: !3, line: 418, type: !1323, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!15, !745, !50, !14}
!1325 = !DILocalVariable(name: "gpe_xrupt_info", arg: 1, scope: !1322, file: !3, line: 418, type: !745)
!1326 = !DILocation(line: 418, column: 58, scope: !1322)
!1327 = !DILocalVariable(name: "gpe_block", arg: 2, scope: !1322, file: !3, line: 419, type: !50)
!1328 = !DILocation(line: 419, column: 37, scope: !1322)
!1329 = !DILocalVariable(name: "context", arg: 3, scope: !1322, file: !3, line: 420, type: !14)
!1330 = !DILocation(line: 420, column: 15, scope: !1322)
!1331 = !DILocalVariable(name: "status", scope: !1322, file: !3, line: 422, type: !15)
!1332 = !DILocation(line: 422, column: 14, scope: !1322)
!1333 = !DILocalVariable(name: "gpe_event_info", scope: !1322, file: !3, line: 423, type: !768)
!1334 = !DILocation(line: 423, column: 30, scope: !1322)
!1335 = !DILocalVariable(name: "gpe_enabled_count", scope: !1322, file: !3, line: 424, type: !17)
!1336 = !DILocation(line: 424, column: 6, scope: !1322)
!1337 = !DILocalVariable(name: "gpe_index", scope: !1322, file: !3, line: 425, type: !17)
!1338 = !DILocation(line: 425, column: 6, scope: !1322)
!1339 = !DILocalVariable(name: "i", scope: !1322, file: !3, line: 426, type: !17)
!1340 = !DILocation(line: 426, column: 6, scope: !1322)
!1341 = !DILocalVariable(name: "j", scope: !1322, file: !3, line: 427, type: !17)
!1342 = !DILocation(line: 427, column: 6, scope: !1322)
!1343 = !DILocalVariable(name: "is_polling_needed", scope: !1322, file: !3, line: 428, type: !104)
!1344 = !DILocation(line: 428, column: 6, scope: !1322)
!1345 = !DILocation(line: 428, column: 26, scope: !1322)
!1346 = !DILocalVariable(name: "gpe_number", scope: !1322, file: !3, line: 429, type: !17)
!1347 = !DILocation(line: 429, column: 2, scope: !1322)
!1348 = !DILocation(line: 437, column: 7, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 437, column: 6)
!1350 = !DILocation(line: 437, column: 17, scope: !1349)
!1351 = !DILocation(line: 437, column: 20, scope: !1349)
!1352 = !DILocation(line: 437, column: 31, scope: !1349)
!1353 = !DILocation(line: 437, column: 6, scope: !1322)
!1354 = !DILocation(line: 438, column: 3, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 437, column: 44)
!1356 = !DILocation(line: 446, column: 20, scope: !1322)
!1357 = !DILocation(line: 448, column: 9, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 448, column: 2)
!1359 = !DILocation(line: 448, column: 7, scope: !1358)
!1360 = !DILocation(line: 448, column: 14, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 448, column: 2)
!1362 = !DILocation(line: 448, column: 18, scope: !1361)
!1363 = !DILocation(line: 448, column: 29, scope: !1361)
!1364 = !DILocation(line: 448, column: 16, scope: !1361)
!1365 = !DILocation(line: 448, column: 2, scope: !1358)
!1366 = !DILocation(line: 449, column: 10, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 449, column: 3)
!1368 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 448, column: 50)
!1369 = !DILocation(line: 449, column: 8, scope: !1367)
!1370 = !DILocation(line: 449, column: 15, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 449, column: 3)
!1372 = !DILocation(line: 449, column: 17, scope: !1371)
!1373 = !DILocation(line: 449, column: 3, scope: !1367)
!1374 = !DILocation(line: 453, column: 17, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 449, column: 49)
!1376 = !DILocation(line: 453, column: 19, scope: !1375)
!1377 = !DILocation(line: 453, column: 48, scope: !1375)
!1378 = !DILocation(line: 453, column: 46, scope: !1375)
!1379 = !DILocation(line: 453, column: 14, scope: !1375)
!1380 = !DILocation(line: 454, column: 22, scope: !1375)
!1381 = !DILocation(line: 454, column: 33, scope: !1375)
!1382 = !DILocation(line: 454, column: 44, scope: !1375)
!1383 = !DILocation(line: 454, column: 19, scope: !1375)
!1384 = !DILocation(line: 455, column: 4, scope: !1375)
!1385 = !DILocation(line: 458, column: 4, scope: !1375)
!1386 = !DILocation(line: 458, column: 20, scope: !1375)
!1387 = !DILocation(line: 458, column: 26, scope: !1375)
!1388 = !DILocation(line: 464, column: 9, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 464, column: 8)
!1390 = !DILocation(line: 464, column: 55, scope: !1389)
!1391 = !DILocation(line: 466, column: 8, scope: !1389)
!1392 = !DILocation(line: 466, column: 12, scope: !1389)
!1393 = !DILocation(line: 466, column: 28, scope: !1389)
!1394 = !DILocation(line: 466, column: 34, scope: !1389)
!1395 = !DILocation(line: 464, column: 8, scope: !1375)
!1396 = !DILocation(line: 467, column: 5, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 466, column: 56)
!1398 = !DILocation(line: 470, column: 39, scope: !1375)
!1399 = !DILocation(line: 470, column: 13, scope: !1375)
!1400 = !DILocation(line: 470, column: 11, scope: !1375)
!1401 = !DILocation(line: 471, column: 8, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 471, column: 8)
!1403 = !DILocation(line: 471, column: 8, scope: !1375)
!1404 = !DILocation(line: 472, column: 5, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 471, column: 30)
!1406 = !DILocation(line: 475, column: 5, scope: !1405)
!1407 = !DILocation(line: 478, column: 4, scope: !1375)
!1408 = !DILocation(line: 478, column: 20, scope: !1375)
!1409 = !DILocation(line: 478, column: 26, scope: !1375)
!1410 = !DILocation(line: 480, column: 8, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 480, column: 8)
!1412 = !DILocation(line: 480, column: 26, scope: !1411)
!1413 = !DILocation(line: 481, column: 8, scope: !1411)
!1414 = !DILocation(line: 480, column: 8, scope: !1375)
!1415 = !DILocation(line: 482, column: 6, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 481, column: 52)
!1417 = !DILocation(line: 482, column: 24, scope: !1416)
!1418 = !DILocation(line: 483, column: 4, scope: !1416)
!1419 = !DILocation(line: 485, column: 21, scope: !1375)
!1420 = !DILocation(line: 486, column: 3, scope: !1375)
!1421 = !DILocation(line: 449, column: 45, scope: !1371)
!1422 = !DILocation(line: 449, column: 3, scope: !1371)
!1423 = distinct !{!1423, !1373, !1424}
!1424 = !DILocation(line: 486, column: 3, scope: !1367)
!1425 = !DILocation(line: 487, column: 2, scope: !1368)
!1426 = !DILocation(line: 448, column: 46, scope: !1361)
!1427 = !DILocation(line: 448, column: 2, scope: !1361)
!1428 = distinct !{!1428, !1365, !1429}
!1429 = !DILocation(line: 487, column: 2, scope: !1358)
!1430 = !DILocation(line: 489, column: 6, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 489, column: 6)
!1432 = !DILocation(line: 489, column: 6, scope: !1322)
!1433 = !DILocation(line: 490, column: 3, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 489, column: 25)
!1435 = !DILocation(line: 494, column: 2, scope: !1434)
!1436 = !DILocation(line: 496, column: 2, scope: !1322)
!1437 = !DILocation(line: 496, column: 13, scope: !1322)
!1438 = !DILocation(line: 496, column: 25, scope: !1322)
!1439 = !DILocation(line: 498, column: 2, scope: !1322)
!1440 = !DILocation(line: 499, column: 1, scope: !1322)
!1441 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !1442, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!14, !1444, !32}
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 55, baseType: !1445)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1446, line: 72, baseType: !1447)
!1446 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1446, line: 16, baseType: !34)
!1448 = !DILocalVariable(name: "s", arg: 1, scope: !1449, file: !6, line: 445, type: !1452)
!1449 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !1450, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!14, !1452, !32, !1444}
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1454, line: 117, flags: DIFlagFwdDecl)
!1454 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1455 = !DILocation(line: 445, column: 72, scope: !1449, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 552, column: 10, scope: !1457, inlinedAt: !1460)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !6, line: 540, column: 34)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !6, line: 540, column: 6)
!1459 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !1442, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1460 = distinct !DILocation(line: 664, column: 9, scope: !1441)
!1461 = !DILocalVariable(name: "flags", arg: 2, scope: !1449, file: !6, line: 446, type: !32)
!1462 = !DILocation(line: 446, column: 9, scope: !1449, inlinedAt: !1456)
!1463 = !DILocalVariable(name: "size", arg: 3, scope: !1449, file: !6, line: 446, type: !1444)
!1464 = !DILocation(line: 446, column: 23, scope: !1449, inlinedAt: !1456)
!1465 = !DILocalVariable(name: "ret", scope: !1449, file: !6, line: 448, type: !14)
!1466 = !DILocation(line: 448, column: 8, scope: !1449, inlinedAt: !1456)
!1467 = !DILocalVariable(name: "flags", arg: 1, scope: !1468, file: !6, line: 318, type: !32)
!1468 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !1469, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!5, !32}
!1471 = !DILocation(line: 318, column: 67, scope: !1468, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 553, column: 20, scope: !1457, inlinedAt: !1460)
!1473 = !DILocalVariable(name: "size", arg: 1, scope: !1474, file: !6, line: 346, type: !1444)
!1474 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !1475, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!7, !1444}
!1477 = !DILocation(line: 346, column: 58, scope: !1474, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 547, column: 11, scope: !1457, inlinedAt: !1460)
!1479 = !DILocalVariable(name: "size", arg: 1, scope: !1480, file: !6, line: 472, type: !1444)
!1480 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !1481, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!14, !1444, !32, !7}
!1483 = !DILocation(line: 472, column: 28, scope: !1480, inlinedAt: !1484)
!1484 = distinct !DILocation(line: 481, column: 9, scope: !1485, inlinedAt: !1486)
!1485 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !1442, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1486 = distinct !DILocation(line: 545, column: 11, scope: !1487, inlinedAt: !1460)
!1487 = distinct !DILexicalBlock(scope: !1457, file: !6, line: 544, column: 7)
!1488 = !DILocalVariable(name: "flags", arg: 2, scope: !1480, file: !6, line: 472, type: !32)
!1489 = !DILocation(line: 472, column: 40, scope: !1480, inlinedAt: !1484)
!1490 = !DILocalVariable(name: "order", arg: 3, scope: !1480, file: !6, line: 472, type: !7)
!1491 = !DILocation(line: 472, column: 60, scope: !1480, inlinedAt: !1484)
!1492 = !DILocalVariable(name: "size", arg: 1, scope: !1485, file: !6, line: 478, type: !1444)
!1493 = !DILocation(line: 478, column: 51, scope: !1485, inlinedAt: !1486)
!1494 = !DILocalVariable(name: "flags", arg: 2, scope: !1485, file: !6, line: 478, type: !32)
!1495 = !DILocation(line: 478, column: 63, scope: !1485, inlinedAt: !1486)
!1496 = !DILocalVariable(name: "order", scope: !1485, file: !6, line: 480, type: !7)
!1497 = !DILocation(line: 480, column: 15, scope: !1485, inlinedAt: !1486)
!1498 = !DILocalVariable(name: "size", arg: 1, scope: !1459, file: !6, line: 538, type: !1444)
!1499 = !DILocation(line: 538, column: 45, scope: !1459, inlinedAt: !1460)
!1500 = !DILocalVariable(name: "flags", arg: 2, scope: !1459, file: !6, line: 538, type: !32)
!1501 = !DILocation(line: 538, column: 57, scope: !1459, inlinedAt: !1460)
!1502 = !DILocalVariable(name: "index", scope: !1457, file: !6, line: 542, type: !7)
!1503 = !DILocation(line: 542, column: 16, scope: !1457, inlinedAt: !1460)
!1504 = !DILocalVariable(name: "size", arg: 1, scope: !1441, file: !6, line: 662, type: !1444)
!1505 = !DILocation(line: 662, column: 36, scope: !1441)
!1506 = !DILocalVariable(name: "flags", arg: 2, scope: !1441, file: !6, line: 662, type: !32)
!1507 = !DILocation(line: 662, column: 48, scope: !1441)
!1508 = !DILocation(line: 664, column: 17, scope: !1441)
!1509 = !DILocation(line: 664, column: 23, scope: !1441)
!1510 = !DILocation(line: 664, column: 29, scope: !1441)
!1511 = !DILocation(line: 540, column: 27, scope: !1458, inlinedAt: !1460)
!1512 = !DILocation(line: 540, column: 6, scope: !1458, inlinedAt: !1460)
!1513 = !DILocation(line: 540, column: 6, scope: !1459, inlinedAt: !1460)
!1514 = !DILocation(line: 544, column: 7, scope: !1487, inlinedAt: !1460)
!1515 = !DILocation(line: 544, column: 12, scope: !1487, inlinedAt: !1460)
!1516 = !DILocation(line: 544, column: 7, scope: !1457, inlinedAt: !1460)
!1517 = !DILocation(line: 545, column: 25, scope: !1487, inlinedAt: !1460)
!1518 = !DILocation(line: 545, column: 31, scope: !1487, inlinedAt: !1460)
!1519 = !DILocation(line: 480, column: 33, scope: !1485, inlinedAt: !1486)
!1520 = !DILocation(line: 480, column: 23, scope: !1485, inlinedAt: !1486)
!1521 = !DILocation(line: 481, column: 29, scope: !1485, inlinedAt: !1486)
!1522 = !DILocation(line: 481, column: 35, scope: !1485, inlinedAt: !1486)
!1523 = !DILocation(line: 481, column: 42, scope: !1485, inlinedAt: !1486)
!1524 = !DILocation(line: 474, column: 23, scope: !1480, inlinedAt: !1484)
!1525 = !DILocation(line: 474, column: 29, scope: !1480, inlinedAt: !1484)
!1526 = !DILocation(line: 474, column: 36, scope: !1480, inlinedAt: !1484)
!1527 = !DILocation(line: 474, column: 9, scope: !1480, inlinedAt: !1484)
!1528 = !DILocation(line: 545, column: 4, scope: !1487, inlinedAt: !1460)
!1529 = !DILocation(line: 547, column: 25, scope: !1457, inlinedAt: !1460)
!1530 = !DILocation(line: 348, column: 7, scope: !1531, inlinedAt: !1478)
!1531 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 348, column: 6)
!1532 = !DILocation(line: 348, column: 6, scope: !1474, inlinedAt: !1478)
!1533 = !DILocation(line: 349, column: 3, scope: !1531, inlinedAt: !1478)
!1534 = !DILocation(line: 351, column: 6, scope: !1535, inlinedAt: !1478)
!1535 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 351, column: 6)
!1536 = !DILocation(line: 351, column: 11, scope: !1535, inlinedAt: !1478)
!1537 = !DILocation(line: 351, column: 6, scope: !1474, inlinedAt: !1478)
!1538 = !DILocation(line: 352, column: 3, scope: !1535, inlinedAt: !1478)
!1539 = !DILocation(line: 354, column: 32, scope: !1540, inlinedAt: !1478)
!1540 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 354, column: 6)
!1541 = !DILocation(line: 354, column: 37, scope: !1540, inlinedAt: !1478)
!1542 = !DILocation(line: 354, column: 42, scope: !1540, inlinedAt: !1478)
!1543 = !DILocation(line: 354, column: 45, scope: !1540, inlinedAt: !1478)
!1544 = !DILocation(line: 354, column: 50, scope: !1540, inlinedAt: !1478)
!1545 = !DILocation(line: 354, column: 6, scope: !1474, inlinedAt: !1478)
!1546 = !DILocation(line: 355, column: 3, scope: !1540, inlinedAt: !1478)
!1547 = !DILocation(line: 356, column: 32, scope: !1548, inlinedAt: !1478)
!1548 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 356, column: 6)
!1549 = !DILocation(line: 356, column: 37, scope: !1548, inlinedAt: !1478)
!1550 = !DILocation(line: 356, column: 43, scope: !1548, inlinedAt: !1478)
!1551 = !DILocation(line: 356, column: 46, scope: !1548, inlinedAt: !1478)
!1552 = !DILocation(line: 356, column: 51, scope: !1548, inlinedAt: !1478)
!1553 = !DILocation(line: 356, column: 6, scope: !1474, inlinedAt: !1478)
!1554 = !DILocation(line: 357, column: 3, scope: !1548, inlinedAt: !1478)
!1555 = !DILocation(line: 358, column: 6, scope: !1556, inlinedAt: !1478)
!1556 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 358, column: 6)
!1557 = !DILocation(line: 358, column: 11, scope: !1556, inlinedAt: !1478)
!1558 = !DILocation(line: 358, column: 6, scope: !1474, inlinedAt: !1478)
!1559 = !DILocation(line: 358, column: 26, scope: !1556, inlinedAt: !1478)
!1560 = !DILocation(line: 359, column: 6, scope: !1561, inlinedAt: !1478)
!1561 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 359, column: 6)
!1562 = !DILocation(line: 359, column: 11, scope: !1561, inlinedAt: !1478)
!1563 = !DILocation(line: 359, column: 6, scope: !1474, inlinedAt: !1478)
!1564 = !DILocation(line: 359, column: 26, scope: !1561, inlinedAt: !1478)
!1565 = !DILocation(line: 360, column: 6, scope: !1566, inlinedAt: !1478)
!1566 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 360, column: 6)
!1567 = !DILocation(line: 360, column: 11, scope: !1566, inlinedAt: !1478)
!1568 = !DILocation(line: 360, column: 6, scope: !1474, inlinedAt: !1478)
!1569 = !DILocation(line: 360, column: 26, scope: !1566, inlinedAt: !1478)
!1570 = !DILocation(line: 361, column: 6, scope: !1571, inlinedAt: !1478)
!1571 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 361, column: 6)
!1572 = !DILocation(line: 361, column: 11, scope: !1571, inlinedAt: !1478)
!1573 = !DILocation(line: 361, column: 6, scope: !1474, inlinedAt: !1478)
!1574 = !DILocation(line: 361, column: 26, scope: !1571, inlinedAt: !1478)
!1575 = !DILocation(line: 362, column: 6, scope: !1576, inlinedAt: !1478)
!1576 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 362, column: 6)
!1577 = !DILocation(line: 362, column: 11, scope: !1576, inlinedAt: !1478)
!1578 = !DILocation(line: 362, column: 6, scope: !1474, inlinedAt: !1478)
!1579 = !DILocation(line: 362, column: 26, scope: !1576, inlinedAt: !1478)
!1580 = !DILocation(line: 363, column: 6, scope: !1581, inlinedAt: !1478)
!1581 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 363, column: 6)
!1582 = !DILocation(line: 363, column: 11, scope: !1581, inlinedAt: !1478)
!1583 = !DILocation(line: 363, column: 6, scope: !1474, inlinedAt: !1478)
!1584 = !DILocation(line: 363, column: 26, scope: !1581, inlinedAt: !1478)
!1585 = !DILocation(line: 364, column: 6, scope: !1586, inlinedAt: !1478)
!1586 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 364, column: 6)
!1587 = !DILocation(line: 364, column: 11, scope: !1586, inlinedAt: !1478)
!1588 = !DILocation(line: 364, column: 6, scope: !1474, inlinedAt: !1478)
!1589 = !DILocation(line: 364, column: 26, scope: !1586, inlinedAt: !1478)
!1590 = !DILocation(line: 365, column: 6, scope: !1591, inlinedAt: !1478)
!1591 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 365, column: 6)
!1592 = !DILocation(line: 365, column: 11, scope: !1591, inlinedAt: !1478)
!1593 = !DILocation(line: 365, column: 6, scope: !1474, inlinedAt: !1478)
!1594 = !DILocation(line: 365, column: 26, scope: !1591, inlinedAt: !1478)
!1595 = !DILocation(line: 366, column: 6, scope: !1596, inlinedAt: !1478)
!1596 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 366, column: 6)
!1597 = !DILocation(line: 366, column: 11, scope: !1596, inlinedAt: !1478)
!1598 = !DILocation(line: 366, column: 6, scope: !1474, inlinedAt: !1478)
!1599 = !DILocation(line: 366, column: 26, scope: !1596, inlinedAt: !1478)
!1600 = !DILocation(line: 367, column: 6, scope: !1601, inlinedAt: !1478)
!1601 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 367, column: 6)
!1602 = !DILocation(line: 367, column: 11, scope: !1601, inlinedAt: !1478)
!1603 = !DILocation(line: 367, column: 6, scope: !1474, inlinedAt: !1478)
!1604 = !DILocation(line: 367, column: 26, scope: !1601, inlinedAt: !1478)
!1605 = !DILocation(line: 368, column: 6, scope: !1606, inlinedAt: !1478)
!1606 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 368, column: 6)
!1607 = !DILocation(line: 368, column: 11, scope: !1606, inlinedAt: !1478)
!1608 = !DILocation(line: 368, column: 6, scope: !1474, inlinedAt: !1478)
!1609 = !DILocation(line: 368, column: 26, scope: !1606, inlinedAt: !1478)
!1610 = !DILocation(line: 369, column: 6, scope: !1611, inlinedAt: !1478)
!1611 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 369, column: 6)
!1612 = !DILocation(line: 369, column: 11, scope: !1611, inlinedAt: !1478)
!1613 = !DILocation(line: 369, column: 6, scope: !1474, inlinedAt: !1478)
!1614 = !DILocation(line: 369, column: 26, scope: !1611, inlinedAt: !1478)
!1615 = !DILocation(line: 370, column: 6, scope: !1616, inlinedAt: !1478)
!1616 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 370, column: 6)
!1617 = !DILocation(line: 370, column: 11, scope: !1616, inlinedAt: !1478)
!1618 = !DILocation(line: 370, column: 6, scope: !1474, inlinedAt: !1478)
!1619 = !DILocation(line: 370, column: 26, scope: !1616, inlinedAt: !1478)
!1620 = !DILocation(line: 371, column: 6, scope: !1621, inlinedAt: !1478)
!1621 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 371, column: 6)
!1622 = !DILocation(line: 371, column: 11, scope: !1621, inlinedAt: !1478)
!1623 = !DILocation(line: 371, column: 6, scope: !1474, inlinedAt: !1478)
!1624 = !DILocation(line: 371, column: 26, scope: !1621, inlinedAt: !1478)
!1625 = !DILocation(line: 372, column: 6, scope: !1626, inlinedAt: !1478)
!1626 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 372, column: 6)
!1627 = !DILocation(line: 372, column: 11, scope: !1626, inlinedAt: !1478)
!1628 = !DILocation(line: 372, column: 6, scope: !1474, inlinedAt: !1478)
!1629 = !DILocation(line: 372, column: 26, scope: !1626, inlinedAt: !1478)
!1630 = !DILocation(line: 373, column: 6, scope: !1631, inlinedAt: !1478)
!1631 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 373, column: 6)
!1632 = !DILocation(line: 373, column: 11, scope: !1631, inlinedAt: !1478)
!1633 = !DILocation(line: 373, column: 6, scope: !1474, inlinedAt: !1478)
!1634 = !DILocation(line: 373, column: 26, scope: !1631, inlinedAt: !1478)
!1635 = !DILocation(line: 374, column: 6, scope: !1636, inlinedAt: !1478)
!1636 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 374, column: 6)
!1637 = !DILocation(line: 374, column: 11, scope: !1636, inlinedAt: !1478)
!1638 = !DILocation(line: 374, column: 6, scope: !1474, inlinedAt: !1478)
!1639 = !DILocation(line: 374, column: 26, scope: !1636, inlinedAt: !1478)
!1640 = !DILocation(line: 375, column: 6, scope: !1641, inlinedAt: !1478)
!1641 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 375, column: 6)
!1642 = !DILocation(line: 375, column: 11, scope: !1641, inlinedAt: !1478)
!1643 = !DILocation(line: 375, column: 6, scope: !1474, inlinedAt: !1478)
!1644 = !DILocation(line: 375, column: 27, scope: !1641, inlinedAt: !1478)
!1645 = !DILocation(line: 376, column: 6, scope: !1646, inlinedAt: !1478)
!1646 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 376, column: 6)
!1647 = !DILocation(line: 376, column: 11, scope: !1646, inlinedAt: !1478)
!1648 = !DILocation(line: 376, column: 6, scope: !1474, inlinedAt: !1478)
!1649 = !DILocation(line: 376, column: 32, scope: !1646, inlinedAt: !1478)
!1650 = !DILocation(line: 377, column: 6, scope: !1651, inlinedAt: !1478)
!1651 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 377, column: 6)
!1652 = !DILocation(line: 377, column: 11, scope: !1651, inlinedAt: !1478)
!1653 = !DILocation(line: 377, column: 6, scope: !1474, inlinedAt: !1478)
!1654 = !DILocation(line: 377, column: 32, scope: !1651, inlinedAt: !1478)
!1655 = !DILocation(line: 378, column: 6, scope: !1656, inlinedAt: !1478)
!1656 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 378, column: 6)
!1657 = !DILocation(line: 378, column: 11, scope: !1656, inlinedAt: !1478)
!1658 = !DILocation(line: 378, column: 6, scope: !1474, inlinedAt: !1478)
!1659 = !DILocation(line: 378, column: 32, scope: !1656, inlinedAt: !1478)
!1660 = !DILocation(line: 379, column: 6, scope: !1661, inlinedAt: !1478)
!1661 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 379, column: 6)
!1662 = !DILocation(line: 379, column: 11, scope: !1661, inlinedAt: !1478)
!1663 = !DILocation(line: 379, column: 6, scope: !1474, inlinedAt: !1478)
!1664 = !DILocation(line: 379, column: 33, scope: !1661, inlinedAt: !1478)
!1665 = !DILocation(line: 380, column: 6, scope: !1666, inlinedAt: !1478)
!1666 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 380, column: 6)
!1667 = !DILocation(line: 380, column: 11, scope: !1666, inlinedAt: !1478)
!1668 = !DILocation(line: 380, column: 6, scope: !1474, inlinedAt: !1478)
!1669 = !DILocation(line: 380, column: 33, scope: !1666, inlinedAt: !1478)
!1670 = !DILocation(line: 381, column: 6, scope: !1671, inlinedAt: !1478)
!1671 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 381, column: 6)
!1672 = !DILocation(line: 381, column: 11, scope: !1671, inlinedAt: !1478)
!1673 = !DILocation(line: 381, column: 6, scope: !1474, inlinedAt: !1478)
!1674 = !DILocation(line: 381, column: 33, scope: !1671, inlinedAt: !1478)
!1675 = !DILocation(line: 382, column: 2, scope: !1676, inlinedAt: !1478)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 382, column: 2)
!1677 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 382, column: 2)
!1678 = !{i32 -2144106101, i32 -2144106072, i32 -2144106026, i32 -2144105968, i32 -2144105914, i32 -2144105860, i32 -2144105805, i32 -2144105774}
!1679 = !DILocation(line: 382, column: 2, scope: !1680, inlinedAt: !1478)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !6, line: 382, column: 2)
!1681 = distinct !DILexicalBlock(scope: !1677, file: !6, line: 382, column: 2)
!1682 = !{i32 -2144105331, i32 -2144105324, i32 -2144105270, i32 -2144105239, i32 -2144105209}
!1683 = !DILocation(line: 382, column: 2, scope: !1681, inlinedAt: !1478)
!1684 = !DILocation(line: 386, column: 1, scope: !1474, inlinedAt: !1478)
!1685 = !DILocation(line: 547, column: 9, scope: !1457, inlinedAt: !1460)
!1686 = !DILocation(line: 549, column: 8, scope: !1687, inlinedAt: !1460)
!1687 = distinct !DILexicalBlock(scope: !1457, file: !6, line: 549, column: 7)
!1688 = !DILocation(line: 549, column: 7, scope: !1457, inlinedAt: !1460)
!1689 = !DILocation(line: 550, column: 4, scope: !1687, inlinedAt: !1460)
!1690 = !DILocation(line: 553, column: 33, scope: !1457, inlinedAt: !1460)
!1691 = !DILocation(line: 325, column: 6, scope: !1692, inlinedAt: !1472)
!1692 = distinct !DILexicalBlock(scope: !1468, file: !6, line: 325, column: 6)
!1693 = !DILocation(line: 325, column: 6, scope: !1468, inlinedAt: !1472)
!1694 = !DILocation(line: 326, column: 3, scope: !1692, inlinedAt: !1472)
!1695 = !DILocation(line: 332, column: 9, scope: !1468, inlinedAt: !1472)
!1696 = !DILocation(line: 332, column: 15, scope: !1468, inlinedAt: !1472)
!1697 = !DILocation(line: 332, column: 2, scope: !1468, inlinedAt: !1472)
!1698 = !DILocation(line: 336, column: 1, scope: !1468, inlinedAt: !1472)
!1699 = !DILocation(line: 553, column: 5, scope: !1457, inlinedAt: !1460)
!1700 = !DILocation(line: 553, column: 41, scope: !1457, inlinedAt: !1460)
!1701 = !DILocation(line: 554, column: 5, scope: !1457, inlinedAt: !1460)
!1702 = !DILocation(line: 554, column: 12, scope: !1457, inlinedAt: !1460)
!1703 = !DILocation(line: 448, column: 31, scope: !1449, inlinedAt: !1456)
!1704 = !DILocation(line: 448, column: 34, scope: !1449, inlinedAt: !1456)
!1705 = !DILocation(line: 448, column: 14, scope: !1449, inlinedAt: !1456)
!1706 = !DILocation(line: 450, column: 22, scope: !1449, inlinedAt: !1456)
!1707 = !DILocation(line: 450, column: 25, scope: !1449, inlinedAt: !1456)
!1708 = !DILocation(line: 450, column: 30, scope: !1449, inlinedAt: !1456)
!1709 = !DILocation(line: 450, column: 36, scope: !1449, inlinedAt: !1456)
!1710 = !DILocation(line: 450, column: 8, scope: !1449, inlinedAt: !1456)
!1711 = !DILocation(line: 450, column: 6, scope: !1449, inlinedAt: !1456)
!1712 = !DILocation(line: 451, column: 9, scope: !1449, inlinedAt: !1456)
!1713 = !DILocation(line: 552, column: 3, scope: !1457, inlinedAt: !1460)
!1714 = !DILocation(line: 557, column: 19, scope: !1459, inlinedAt: !1460)
!1715 = !DILocation(line: 557, column: 25, scope: !1459, inlinedAt: !1460)
!1716 = !DILocation(line: 557, column: 9, scope: !1459, inlinedAt: !1460)
!1717 = !DILocation(line: 557, column: 2, scope: !1459, inlinedAt: !1460)
!1718 = !DILocation(line: 558, column: 1, scope: !1459, inlinedAt: !1460)
!1719 = !DILocation(line: 664, column: 2, scope: !1441)
!1720 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1721, file: !1721, line: 646, type: !1722, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1721 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!34}
!1724 = !DILocalVariable(name: "__ret", scope: !1725, file: !1721, line: 648, type: !34)
!1725 = distinct !DILexicalBlock(scope: !1720, file: !1721, line: 648, column: 9)
!1726 = !DILocation(line: 648, column: 9, scope: !1725)
!1727 = !DILocalVariable(name: "__edi", scope: !1725, file: !1721, line: 648, type: !34)
!1728 = !DILocalVariable(name: "__esi", scope: !1725, file: !1721, line: 648, type: !34)
!1729 = !DILocalVariable(name: "__edx", scope: !1725, file: !1721, line: 648, type: !34)
!1730 = !DILocalVariable(name: "__ecx", scope: !1725, file: !1721, line: 648, type: !34)
!1731 = !DILocalVariable(name: "__eax", scope: !1725, file: !1721, line: 648, type: !34)
!1732 = !DILocation(line: 648, column: 9, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !1721, line: 648, column: 9)
!1734 = distinct !DILexicalBlock(scope: !1725, file: !1721, line: 648, column: 9)
!1735 = !{i32 -2145779707, i32 -2145777392, i32 -2145777158, i32 -2145777107, i32 -2145777079, i32 -2145777054, i32 -2145777370, i32 -2145777357, i32 -2145776919, i32 -2145776800, i32 -2145777265, i32 -2145777238, i32 -2145777210, i32 -2145777180}
!1736 = !DILocalVariable(name: "__mask", scope: !1737, file: !1721, line: 648, type: !34)
!1737 = distinct !DILexicalBlock(scope: !1733, file: !1721, line: 648, column: 9)
!1738 = !DILocation(line: 648, column: 9, scope: !1737)
!1739 = !DILocation(line: 648, column: 9, scope: !1734)
!1740 = !DILocation(line: 648, column: 2, scope: !1720)
!1741 = distinct !DISubprogram(name: "get_order", scope: !1742, file: !1742, line: 29, type: !1054, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1742 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1743 = !DILocalVariable(name: "x", arg: 1, scope: !1744, file: !1745, line: 366, type: !27)
!1744 = distinct !DISubprogram(name: "fls64", scope: !1745, file: !1745, line: 366, type: !1746, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1745 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!1056, !27}
!1748 = !DILocation(line: 366, column: 40, scope: !1744, inlinedAt: !1749)
!1749 = distinct !DILocation(line: 46, column: 9, scope: !1741)
!1750 = !DILocalVariable(name: "bitpos", scope: !1744, file: !1745, line: 368, type: !1056)
!1751 = !DILocation(line: 368, column: 6, scope: !1744, inlinedAt: !1749)
!1752 = !DILocalVariable(name: "size", arg: 1, scope: !1741, file: !1742, line: 29, type: !34)
!1753 = !DILocation(line: 29, column: 63, scope: !1741)
!1754 = !DILocation(line: 31, column: 27, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1741, file: !1742, line: 31, column: 6)
!1756 = !DILocation(line: 31, column: 6, scope: !1755)
!1757 = !DILocation(line: 31, column: 6, scope: !1741)
!1758 = !DILocation(line: 32, column: 8, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !1742, line: 32, column: 7)
!1760 = distinct !DILexicalBlock(scope: !1755, file: !1742, line: 31, column: 34)
!1761 = !DILocation(line: 32, column: 7, scope: !1760)
!1762 = !DILocation(line: 33, column: 4, scope: !1759)
!1763 = !DILocation(line: 35, column: 7, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1760, file: !1742, line: 35, column: 7)
!1765 = !DILocation(line: 35, column: 12, scope: !1764)
!1766 = !DILocation(line: 35, column: 7, scope: !1760)
!1767 = !DILocation(line: 36, column: 4, scope: !1764)
!1768 = !DILocation(line: 38, column: 10, scope: !1760)
!1769 = !DILocation(line: 38, column: 28, scope: !1760)
!1770 = !DILocation(line: 38, column: 41, scope: !1760)
!1771 = !DILocation(line: 38, column: 3, scope: !1760)
!1772 = !DILocation(line: 41, column: 6, scope: !1741)
!1773 = !DILocation(line: 42, column: 7, scope: !1741)
!1774 = !DILocation(line: 46, column: 15, scope: !1741)
!1775 = !DILocation(line: 374, column: 2, scope: !1744, inlinedAt: !1749)
!1776 = !DILocation(line: 376, column: 14, scope: !1744, inlinedAt: !1749)
!1777 = !{i32 665101}
!1778 = !DILocation(line: 377, column: 9, scope: !1744, inlinedAt: !1749)
!1779 = !DILocation(line: 377, column: 16, scope: !1744, inlinedAt: !1749)
!1780 = !DILocation(line: 46, column: 2, scope: !1741)
!1781 = !DILocation(line: 48, column: 1, scope: !1741)
!1782 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1783, file: !1783, line: 30, type: !1784, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1783 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!1056, !26}
!1786 = !DILocation(line: 366, column: 40, scope: !1744, inlinedAt: !1787)
!1787 = distinct !DILocation(line: 32, column: 9, scope: !1782)
!1788 = !DILocation(line: 368, column: 6, scope: !1744, inlinedAt: !1787)
!1789 = !DILocalVariable(name: "n", arg: 1, scope: !1782, file: !1783, line: 30, type: !26)
!1790 = !DILocation(line: 30, column: 21, scope: !1782)
!1791 = !DILocation(line: 32, column: 15, scope: !1782)
!1792 = !DILocation(line: 374, column: 2, scope: !1744, inlinedAt: !1787)
!1793 = !DILocation(line: 376, column: 14, scope: !1744, inlinedAt: !1787)
!1794 = !DILocation(line: 377, column: 9, scope: !1744, inlinedAt: !1787)
!1795 = !DILocation(line: 377, column: 16, scope: !1744, inlinedAt: !1787)
!1796 = !DILocation(line: 32, column: 18, scope: !1782)
!1797 = !DILocation(line: 32, column: 2, scope: !1782)
!1798 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1799, file: !1799, line: 137, type: !1800, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1799 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!14, !1452, !1802, !1444, !32}
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1804 = !DILocalVariable(name: "s", arg: 1, scope: !1798, file: !1799, line: 137, type: !1452)
!1805 = !DILocation(line: 137, column: 54, scope: !1798)
!1806 = !DILocalVariable(name: "object", arg: 2, scope: !1798, file: !1799, line: 137, type: !1802)
!1807 = !DILocation(line: 137, column: 69, scope: !1798)
!1808 = !DILocalVariable(name: "size", arg: 3, scope: !1798, file: !1799, line: 138, type: !1444)
!1809 = !DILocation(line: 138, column: 12, scope: !1798)
!1810 = !DILocalVariable(name: "flags", arg: 4, scope: !1798, file: !1799, line: 138, type: !32)
!1811 = !DILocation(line: 138, column: 24, scope: !1798)
!1812 = !DILocation(line: 140, column: 17, scope: !1798)
!1813 = !DILocation(line: 140, column: 2, scope: !1798)
