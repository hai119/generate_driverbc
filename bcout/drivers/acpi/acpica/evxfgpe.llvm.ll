; ModuleID = '../bcout/drivers/acpi/acpica/evxfgpe.llvm.bc'
source_filename = "drivers/acpi/acpica/evxfgpe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%struct.acpi_gpe_notify_info = type { %struct.acpi_namespace_node*, %struct.acpi_gpe_notify_info* }
%struct.acpi_gpe_device_info = type { i32, i32, i32, %struct.acpi_namespace_node* }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.acpi_object_device = type { %union.acpi_operand_object*, i8, i8, i16, i8, [2 x %union.acpi_operand_object*], %union.acpi_operand_object*, %struct.acpi_gpe_block_info* }

@acpi_gbl_all_gpes_initialized = external dso_local global i8, align 1
@acpi_gbl_gpe_xrupt_list_head = external dso_local global %struct.acpi_gpe_xrupt_info*, align 8
@acpi_gbl_gpe_lock = external dso_local global %struct.spinlock*, align 8
@acpi_gbl_root_node = external dso_local global %struct.acpi_namespace_node*, align 8
@_acpi_module_name = internal constant [8 x i8] c"evxfgpe\00", align 1, !dbg !0
@.str = private unnamed_addr constant [19 x i8] c"%u, Invalid action\00", align 1
@acpi_current_gpe_count = external dso_local global i32, align 4
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_update_all_gpes() #0 !dbg !802 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %is_polling_needed = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i32* %status, metadata !806, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.declare(metadata i8* %is_polling_needed, metadata !808, metadata !DIExpression()), !dbg !809
  store i8 0, i8* %is_polling_needed, align 1, !dbg !809
  %call = call i32 @acpi_ut_acquire_mutex(i32 3) #8, !dbg !810
  store i32 %call, i32* %status, align 4, !dbg !811
  %0 = load i32, i32* %status, align 4, !dbg !812
  %tobool = icmp ne i32 %0, 0, !dbg !812
  br i1 %tobool, label %if.then, label %if.end, !dbg !814

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4, !dbg !815
  store i32 %1, i32* %retval, align 4, !dbg !815
  br label %return, !dbg !815

if.end:                                           ; preds = %entry
  %2 = load i8, i8* @acpi_gbl_all_gpes_initialized, align 1, !dbg !817
  %tobool1 = icmp ne i8 %2, 0, !dbg !817
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !819

if.then2:                                         ; preds = %if.end
  br label %unlock_and_exit, !dbg !820

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @acpi_ev_walk_gpe_list(i32 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)* @acpi_ev_initialize_gpe_block, i8* %is_polling_needed) #8, !dbg !822
  store i32 %call4, i32* %status, align 4, !dbg !823
  %3 = load i32, i32* %status, align 4, !dbg !824
  %tobool5 = icmp ne i32 %3, 0, !dbg !824
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !826

if.then6:                                         ; preds = %if.end3
  store i8 1, i8* @acpi_gbl_all_gpes_initialized, align 1, !dbg !827
  br label %if.end7, !dbg !829

if.end7:                                          ; preds = %if.then6, %if.end3
  br label %unlock_and_exit, !dbg !824

unlock_and_exit:                                  ; preds = %if.end7, %if.then2
  call void @llvm.dbg.label(metadata !830), !dbg !831
  %call8 = call i32 @acpi_ut_release_mutex(i32 3) #8, !dbg !832
  %4 = load i8, i8* %is_polling_needed, align 1, !dbg !833
  %conv = zext i8 %4 to i32, !dbg !833
  %tobool9 = icmp ne i32 %conv, 0, !dbg !833
  br i1 %tobool9, label %land.lhs.true, label %if.end14, !dbg !835

land.lhs.true:                                    ; preds = %unlock_and_exit
  %5 = load i8, i8* @acpi_gbl_all_gpes_initialized, align 1, !dbg !836
  %conv10 = zext i8 %5 to i32, !dbg !836
  %tobool11 = icmp ne i32 %conv10, 0, !dbg !836
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !837

if.then12:                                        ; preds = %land.lhs.true
  %6 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** @acpi_gbl_gpe_xrupt_list_head, align 8, !dbg !838
  %call13 = call i32 @acpi_ev_gpe_detect(%struct.acpi_gpe_xrupt_info* %6) #8, !dbg !840
  br label %if.end14, !dbg !841

if.end14:                                         ; preds = %if.then12, %land.lhs.true, %unlock_and_exit
  %7 = load i32, i32* %status, align 4, !dbg !842
  store i32 %7, i32* %retval, align 4, !dbg !842
  br label %return, !dbg !842

return:                                           ; preds = %if.end14, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !843
  ret i32 %8, !dbg !843
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_walk_gpe_list(i32 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_initialize_gpe_block(%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_release_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_gpe_detect(%struct.acpi_gpe_xrupt_info*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_enable_gpe(i8* %gpe_device, i32 %gpe_number) #0 !dbg !844 {
entry:
  %gpe_device.addr = alloca i8*, align 8
  %gpe_number.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %gpe_event_info = alloca %struct.acpi_gpe_event_info*, align 8
  %flags = alloca i64, align 8
  store i8* %gpe_device, i8** %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %gpe_device.addr, metadata !847, metadata !DIExpression()), !dbg !848
  store i32 %gpe_number, i32* %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpe_number.addr, metadata !849, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.declare(metadata i32* %status, metadata !851, metadata !DIExpression()), !dbg !852
  store i32 4097, i32* %status, align 4, !dbg !852
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info, metadata !853, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !855, metadata !DIExpression()), !dbg !856
  %0 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !857
  %call = call i64 @acpi_os_acquire_lock(%struct.spinlock* %0) #8, !dbg !858
  store i64 %call, i64* %flags, align 8, !dbg !859
  %1 = load i8*, i8** %gpe_device.addr, align 8, !dbg !860
  %2 = load i32, i32* %gpe_number.addr, align 4, !dbg !861
  %call1 = call %struct.acpi_gpe_event_info* @acpi_ev_get_gpe_event_info(i8* %1, i32 %2) #8, !dbg !862
  store %struct.acpi_gpe_event_info* %call1, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !863
  %3 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !864
  %tobool = icmp ne %struct.acpi_gpe_event_info* %3, null, !dbg !864
  br i1 %tobool, label %if.then, label %if.end27, !dbg !866

if.then:                                          ; preds = %entry
  %4 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !867
  %flags2 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %4, i32 0, i32 2, !dbg !867
  %5 = load i8, i8* %flags2, align 8, !dbg !867
  %conv = zext i8 %5 to i32, !dbg !867
  %and = and i32 %conv, 7, !dbg !867
  %conv3 = trunc i32 %and to i8, !dbg !867
  %conv4 = zext i8 %conv3 to i32, !dbg !867
  %cmp = icmp ne i32 %conv4, 0, !dbg !870
  br i1 %cmp, label %if.then6, label %if.else, !dbg !871

if.then6:                                         ; preds = %if.then
  %6 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !872
  %call7 = call i32 @acpi_ev_add_gpe_reference(%struct.acpi_gpe_event_info* %6, i8 zeroext 1) #8, !dbg !874
  store i32 %call7, i32* %status, align 4, !dbg !875
  %7 = load i32, i32* %status, align 4, !dbg !876
  %tobool8 = icmp ne i32 %7, 0, !dbg !876
  br i1 %tobool8, label %if.end, label %land.lhs.true, !dbg !878

land.lhs.true:                                    ; preds = %if.then6
  %8 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !879
  %runtime_count = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %8, i32 0, i32 4, !dbg !879
  %9 = load i8, i8* %runtime_count, align 2, !dbg !879
  %conv9 = zext i8 %9 to i32, !dbg !879
  %cmp10 = icmp eq i32 %conv9, 1, !dbg !879
  br i1 %cmp10, label %land.lhs.true12, label %if.end, !dbg !879

land.lhs.true12:                                  ; preds = %land.lhs.true
  %10 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !879
  %flags13 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %10, i32 0, i32 2, !dbg !879
  %11 = load i8, i8* %flags13, align 8, !dbg !879
  %conv14 = zext i8 %11 to i32, !dbg !879
  %and15 = and i32 %conv14, 64, !dbg !879
  %tobool16 = icmp ne i32 %and15, 0, !dbg !879
  br i1 %tobool16, label %land.lhs.true17, label %if.end, !dbg !879

land.lhs.true17:                                  ; preds = %land.lhs.true12
  %12 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !879
  %flags18 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %12, i32 0, i32 2, !dbg !879
  %13 = load i8, i8* %flags18, align 8, !dbg !879
  %conv19 = zext i8 %13 to i32, !dbg !879
  %and20 = and i32 %conv19, 8, !dbg !879
  %cmp21 = icmp eq i32 %and20, 0, !dbg !879
  br i1 %cmp21, label %if.then23, label %if.end, !dbg !880

if.then23:                                        ; preds = %land.lhs.true17
  %14 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !881
  %15 = load i64, i64* %flags, align 8, !dbg !883
  call void @acpi_os_release_lock(%struct.spinlock* %14, i64 %15) #8, !dbg !884
  %16 = load i8*, i8** %gpe_device.addr, align 8, !dbg !885
  %17 = bitcast i8* %16 to %struct.acpi_namespace_node*, !dbg !885
  %18 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !886
  %19 = load i32, i32* %gpe_number.addr, align 4, !dbg !887
  %call24 = call i32 @acpi_ev_detect_gpe(%struct.acpi_namespace_node* %17, %struct.acpi_gpe_event_info* %18, i32 %19) #8, !dbg !888
  %20 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !889
  %call25 = call i64 @acpi_os_acquire_lock(%struct.spinlock* %20) #8, !dbg !890
  store i64 %call25, i64* %flags, align 8, !dbg !891
  br label %if.end, !dbg !892

if.end:                                           ; preds = %if.then23, %land.lhs.true17, %land.lhs.true12, %land.lhs.true, %if.then6
  br label %if.end26, !dbg !893

if.else:                                          ; preds = %if.then
  store i32 26, i32* %status, align 4, !dbg !894
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end
  br label %if.end27, !dbg !896

if.end27:                                         ; preds = %if.end26, %entry
  %21 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !897
  %22 = load i64, i64* %flags, align 8, !dbg !898
  call void @acpi_os_release_lock(%struct.spinlock* %21, i64 %22) #8, !dbg !899
  %23 = load i32, i32* %status, align 4, !dbg !900
  ret i32 %23, !dbg !900
}

; Function Attrs: noredzone
declare dso_local i64 @acpi_os_acquire_lock(%struct.spinlock*) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_gpe_event_info* @acpi_ev_get_gpe_event_info(i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_add_gpe_reference(%struct.acpi_gpe_event_info*, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @acpi_os_release_lock(%struct.spinlock*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_detect_gpe(%struct.acpi_namespace_node*, %struct.acpi_gpe_event_info*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_disable_gpe(i8* %gpe_device, i32 %gpe_number) #0 !dbg !901 {
entry:
  %gpe_device.addr = alloca i8*, align 8
  %gpe_number.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %gpe_event_info = alloca %struct.acpi_gpe_event_info*, align 8
  %flags = alloca i64, align 8
  store i8* %gpe_device, i8** %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %gpe_device.addr, metadata !902, metadata !DIExpression()), !dbg !903
  store i32 %gpe_number, i32* %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpe_number.addr, metadata !904, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.declare(metadata i32* %status, metadata !906, metadata !DIExpression()), !dbg !907
  store i32 4097, i32* %status, align 4, !dbg !907
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info, metadata !908, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !910, metadata !DIExpression()), !dbg !911
  %0 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !912
  %call = call i64 @acpi_os_acquire_lock(%struct.spinlock* %0) #8, !dbg !913
  store i64 %call, i64* %flags, align 8, !dbg !914
  %1 = load i8*, i8** %gpe_device.addr, align 8, !dbg !915
  %2 = load i32, i32* %gpe_number.addr, align 4, !dbg !916
  %call1 = call %struct.acpi_gpe_event_info* @acpi_ev_get_gpe_event_info(i8* %1, i32 %2) #8, !dbg !917
  store %struct.acpi_gpe_event_info* %call1, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !918
  %3 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !919
  %tobool = icmp ne %struct.acpi_gpe_event_info* %3, null, !dbg !919
  br i1 %tobool, label %if.then, label %if.end, !dbg !921

if.then:                                          ; preds = %entry
  %4 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !922
  %call2 = call i32 @acpi_ev_remove_gpe_reference(%struct.acpi_gpe_event_info* %4) #8, !dbg !924
  store i32 %call2, i32* %status, align 4, !dbg !925
  br label %if.end, !dbg !926

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !927
  %6 = load i64, i64* %flags, align 8, !dbg !928
  call void @acpi_os_release_lock(%struct.spinlock* %5, i64 %6) #8, !dbg !929
  %7 = load i32, i32* %status, align 4, !dbg !930
  ret i32 %7, !dbg !930
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_remove_gpe_reference(%struct.acpi_gpe_event_info*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_set_gpe(i8* %gpe_device, i32 %gpe_number, i8 zeroext %action) #0 !dbg !931 {
entry:
  %gpe_device.addr = alloca i8*, align 8
  %gpe_number.addr = alloca i32, align 4
  %action.addr = alloca i8, align 1
  %gpe_event_info = alloca %struct.acpi_gpe_event_info*, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  store i8* %gpe_device, i8** %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %gpe_device.addr, metadata !934, metadata !DIExpression()), !dbg !935
  store i32 %gpe_number, i32* %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpe_number.addr, metadata !936, metadata !DIExpression()), !dbg !937
  store i8 %action, i8* %action.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %action.addr, metadata !938, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info, metadata !940, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.declare(metadata i32* %status, metadata !942, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !944, metadata !DIExpression()), !dbg !945
  %0 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !946
  %call = call i64 @acpi_os_acquire_lock(%struct.spinlock* %0) #8, !dbg !947
  store i64 %call, i64* %flags, align 8, !dbg !948
  %1 = load i8*, i8** %gpe_device.addr, align 8, !dbg !949
  %2 = load i32, i32* %gpe_number.addr, align 4, !dbg !950
  %call1 = call %struct.acpi_gpe_event_info* @acpi_ev_get_gpe_event_info(i8* %1, i32 %2) #8, !dbg !951
  store %struct.acpi_gpe_event_info* %call1, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !952
  %3 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !953
  %tobool = icmp ne %struct.acpi_gpe_event_info* %3, null, !dbg !953
  br i1 %tobool, label %if.end, label %if.then, !dbg !955

if.then:                                          ; preds = %entry
  store i32 4097, i32* %status, align 4, !dbg !956
  br label %unlock_and_exit, !dbg !958

if.end:                                           ; preds = %entry
  %4 = load i8, i8* %action.addr, align 1, !dbg !959
  %conv = zext i8 %4 to i32, !dbg !959
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ], !dbg !960

sw.bb:                                            ; preds = %if.end
  %5 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !961
  %call2 = call i32 @acpi_hw_low_set_gpe(%struct.acpi_gpe_event_info* %5, i32 0) #8, !dbg !963
  store i32 %call2, i32* %status, align 4, !dbg !964
  %6 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !965
  %disable_for_dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %6, i32 0, i32 5, !dbg !966
  store i8 0, i8* %disable_for_dispatch, align 1, !dbg !967
  br label %sw.epilog, !dbg !968

sw.bb3:                                           ; preds = %if.end
  %7 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !969
  %call4 = call i32 @acpi_hw_low_set_gpe(%struct.acpi_gpe_event_info* %7, i32 1) #8, !dbg !970
  store i32 %call4, i32* %status, align 4, !dbg !971
  %8 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !972
  %disable_for_dispatch5 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %8, i32 0, i32 5, !dbg !973
  store i8 1, i8* %disable_for_dispatch5, align 1, !dbg !974
  br label %sw.epilog, !dbg !975

sw.default:                                       ; preds = %if.end
  store i32 4097, i32* %status, align 4, !dbg !976
  br label %sw.epilog, !dbg !977

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  br label %unlock_and_exit, !dbg !978

unlock_and_exit:                                  ; preds = %sw.epilog, %if.then
  call void @llvm.dbg.label(metadata !979), !dbg !980
  %9 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !981
  %10 = load i64, i64* %flags, align 8, !dbg !982
  call void @acpi_os_release_lock(%struct.spinlock* %9, i64 %10) #8, !dbg !983
  %11 = load i32, i32* %status, align 4, !dbg !984
  ret i32 %11, !dbg !984
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_low_set_gpe(%struct.acpi_gpe_event_info*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_mask_gpe(i8* %gpe_device, i32 %gpe_number, i8 zeroext %is_masked) #0 !dbg !985 {
entry:
  %gpe_device.addr = alloca i8*, align 8
  %gpe_number.addr = alloca i32, align 4
  %is_masked.addr = alloca i8, align 1
  %gpe_event_info = alloca %struct.acpi_gpe_event_info*, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  store i8* %gpe_device, i8** %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %gpe_device.addr, metadata !986, metadata !DIExpression()), !dbg !987
  store i32 %gpe_number, i32* %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpe_number.addr, metadata !988, metadata !DIExpression()), !dbg !989
  store i8 %is_masked, i8* %is_masked.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %is_masked.addr, metadata !990, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info, metadata !992, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.declare(metadata i32* %status, metadata !994, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !996, metadata !DIExpression()), !dbg !997
  %0 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !998
  %call = call i64 @acpi_os_acquire_lock(%struct.spinlock* %0) #8, !dbg !999
  store i64 %call, i64* %flags, align 8, !dbg !1000
  %1 = load i8*, i8** %gpe_device.addr, align 8, !dbg !1001
  %2 = load i32, i32* %gpe_number.addr, align 4, !dbg !1002
  %call1 = call %struct.acpi_gpe_event_info* @acpi_ev_get_gpe_event_info(i8* %1, i32 %2) #8, !dbg !1003
  store %struct.acpi_gpe_event_info* %call1, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1004
  %3 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1005
  %tobool = icmp ne %struct.acpi_gpe_event_info* %3, null, !dbg !1005
  br i1 %tobool, label %if.end, label %if.then, !dbg !1007

if.then:                                          ; preds = %entry
  store i32 4097, i32* %status, align 4, !dbg !1008
  br label %unlock_and_exit, !dbg !1010

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1011
  %5 = load i8, i8* %is_masked.addr, align 1, !dbg !1012
  %call2 = call i32 @acpi_ev_mask_gpe(%struct.acpi_gpe_event_info* %4, i8 zeroext %5) #8, !dbg !1013
  store i32 %call2, i32* %status, align 4, !dbg !1014
  br label %unlock_and_exit, !dbg !1015

unlock_and_exit:                                  ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !1016), !dbg !1017
  %6 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1018
  %7 = load i64, i64* %flags, align 8, !dbg !1019
  call void @acpi_os_release_lock(%struct.spinlock* %6, i64 %7) #8, !dbg !1020
  %8 = load i32, i32* %status, align 4, !dbg !1021
  ret i32 %8, !dbg !1021
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_mask_gpe(%struct.acpi_gpe_event_info*, i8 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_mark_gpe_for_wake(i8* %gpe_device, i32 %gpe_number) #0 !dbg !1022 {
entry:
  %gpe_device.addr = alloca i8*, align 8
  %gpe_number.addr = alloca i32, align 4
  %gpe_event_info = alloca %struct.acpi_gpe_event_info*, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  store i8* %gpe_device, i8** %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %gpe_device.addr, metadata !1023, metadata !DIExpression()), !dbg !1024
  store i32 %gpe_number, i32* %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpe_number.addr, metadata !1025, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info, metadata !1027, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1029, metadata !DIExpression()), !dbg !1030
  store i32 4097, i32* %status, align 4, !dbg !1030
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !1031, metadata !DIExpression()), !dbg !1032
  %0 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1033
  %call = call i64 @acpi_os_acquire_lock(%struct.spinlock* %0) #8, !dbg !1034
  store i64 %call, i64* %flags, align 8, !dbg !1035
  %1 = load i8*, i8** %gpe_device.addr, align 8, !dbg !1036
  %2 = load i32, i32* %gpe_number.addr, align 4, !dbg !1037
  %call1 = call %struct.acpi_gpe_event_info* @acpi_ev_get_gpe_event_info(i8* %1, i32 %2) #8, !dbg !1038
  store %struct.acpi_gpe_event_info* %call1, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1039
  %3 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1040
  %tobool = icmp ne %struct.acpi_gpe_event_info* %3, null, !dbg !1040
  br i1 %tobool, label %if.then, label %if.end, !dbg !1042

if.then:                                          ; preds = %entry
  %4 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1043
  %flags2 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %4, i32 0, i32 2, !dbg !1045
  %5 = load i8, i8* %flags2, align 8, !dbg !1046
  %conv = zext i8 %5 to i32, !dbg !1046
  %or = or i32 %conv, 16, !dbg !1046
  %conv3 = trunc i32 %or to i8, !dbg !1046
  store i8 %conv3, i8* %flags2, align 8, !dbg !1046
  store i32 0, i32* %status, align 4, !dbg !1047
  br label %if.end, !dbg !1048

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1049
  %7 = load i64, i64* %flags, align 8, !dbg !1050
  call void @acpi_os_release_lock(%struct.spinlock* %6, i64 %7) #8, !dbg !1051
  %8 = load i32, i32* %status, align 4, !dbg !1052
  ret i32 %8, !dbg !1052
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_setup_gpe_for_wake(i8* %wake_device, i8* %gpe_device, i32 %gpe_number) #0 !dbg !1053 {
entry:
  %retval = alloca i32, align 4
  %wake_device.addr = alloca i8*, align 8
  %gpe_device.addr = alloca i8*, align 8
  %gpe_number.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %gpe_event_info = alloca %struct.acpi_gpe_event_info*, align 8
  %device_node = alloca %struct.acpi_namespace_node*, align 8
  %notify = alloca %struct.acpi_gpe_notify_info*, align 8
  %new_notify = alloca %struct.acpi_gpe_notify_info*, align 8
  %flags = alloca i64, align 8
  store i8* %wake_device, i8** %wake_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %wake_device.addr, metadata !1056, metadata !DIExpression()), !dbg !1057
  store i8* %gpe_device, i8** %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %gpe_device.addr, metadata !1058, metadata !DIExpression()), !dbg !1059
  store i32 %gpe_number, i32* %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpe_number.addr, metadata !1060, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1062, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info, metadata !1064, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %device_node, metadata !1066, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_notify_info** %notify, metadata !1068, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_notify_info** %new_notify, metadata !1070, metadata !DIExpression()), !dbg !1071
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !1072, metadata !DIExpression()), !dbg !1073
  %0 = load i8*, i8** %wake_device.addr, align 8, !dbg !1074
  %tobool = icmp ne i8* %0, null, !dbg !1074
  br i1 %tobool, label %if.end, label %if.then, !dbg !1076

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !1077
  br label %return, !dbg !1077

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %wake_device.addr, align 8, !dbg !1079
  %cmp = icmp eq i8* %1, inttoptr (i64 -1 to i8*), !dbg !1081
  br i1 %cmp, label %if.then1, label %if.else, !dbg !1082

if.then1:                                         ; preds = %if.end
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !1083
  store %struct.acpi_namespace_node* %2, %struct.acpi_namespace_node** %device_node, align 8, !dbg !1085
  br label %if.end2, !dbg !1086

if.else:                                          ; preds = %if.end
  %3 = load i8*, i8** %wake_device.addr, align 8, !dbg !1087
  %4 = bitcast i8* %3 to %struct.acpi_namespace_node*, !dbg !1087
  store %struct.acpi_namespace_node* %4, %struct.acpi_namespace_node** %device_node, align 8, !dbg !1089
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %device_node, align 8, !dbg !1090
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %5, i32 0, i32 2, !dbg !1092
  %6 = load i8, i8* %type, align 1, !dbg !1092
  %conv = zext i8 %6 to i32, !dbg !1090
  %cmp3 = icmp ne i32 %conv, 6, !dbg !1093
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !1094

if.then5:                                         ; preds = %if.end2
  store i32 4097, i32* %retval, align 4, !dbg !1095
  br label %return, !dbg !1095

if.end6:                                          ; preds = %if.end2
  %call = call i8* @acpi_os_allocate_zeroed(i64 16) #8, !dbg !1097
  %7 = bitcast i8* %call to %struct.acpi_gpe_notify_info*, !dbg !1097
  store %struct.acpi_gpe_notify_info* %7, %struct.acpi_gpe_notify_info** %new_notify, align 8, !dbg !1098
  %8 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %new_notify, align 8, !dbg !1099
  %tobool7 = icmp ne %struct.acpi_gpe_notify_info* %8, null, !dbg !1099
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !1101

if.then8:                                         ; preds = %if.end6
  store i32 4, i32* %retval, align 4, !dbg !1102
  br label %return, !dbg !1102

if.end9:                                          ; preds = %if.end6
  %9 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1104
  %call10 = call i64 @acpi_os_acquire_lock(%struct.spinlock* %9) #8, !dbg !1105
  store i64 %call10, i64* %flags, align 8, !dbg !1106
  %10 = load i8*, i8** %gpe_device.addr, align 8, !dbg !1107
  %11 = load i32, i32* %gpe_number.addr, align 4, !dbg !1108
  %call11 = call %struct.acpi_gpe_event_info* @acpi_ev_get_gpe_event_info(i8* %10, i32 %11) #8, !dbg !1109
  store %struct.acpi_gpe_event_info* %call11, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1110
  %12 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1111
  %tobool12 = icmp ne %struct.acpi_gpe_event_info* %12, null, !dbg !1111
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !1113

if.then13:                                        ; preds = %if.end9
  store i32 4097, i32* %status, align 4, !dbg !1114
  br label %unlock_and_exit, !dbg !1116

if.end14:                                         ; preds = %if.end9
  %13 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1117
  %flags15 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %13, i32 0, i32 2, !dbg !1117
  %14 = load i8, i8* %flags15, align 8, !dbg !1117
  %conv16 = zext i8 %14 to i32, !dbg !1117
  %and = and i32 %conv16, 7, !dbg !1117
  %conv17 = trunc i32 %and to i8, !dbg !1117
  %conv18 = zext i8 %conv17 to i32, !dbg !1117
  %cmp19 = icmp eq i32 %conv18, 0, !dbg !1119
  br i1 %cmp19, label %if.then21, label %if.else23, !dbg !1120

if.then21:                                        ; preds = %if.end14
  %15 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1121
  %flags22 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %15, i32 0, i32 2, !dbg !1123
  store i8 11, i8* %flags22, align 8, !dbg !1124
  br label %if.end35, !dbg !1125

if.else23:                                        ; preds = %if.end14
  %16 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1126
  %flags24 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %16, i32 0, i32 2, !dbg !1128
  %17 = load i8, i8* %flags24, align 8, !dbg !1128
  %conv25 = zext i8 %17 to i32, !dbg !1126
  %and26 = and i32 %conv25, 32, !dbg !1129
  %tobool27 = icmp ne i32 %and26, 0, !dbg !1129
  br i1 %tobool27, label %if.then28, label %if.end34, !dbg !1130

if.then28:                                        ; preds = %if.else23
  %18 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1131
  %call29 = call i32 @acpi_ev_remove_gpe_reference(%struct.acpi_gpe_event_info* %18) #8, !dbg !1133
  %19 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1134
  %flags30 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %19, i32 0, i32 2, !dbg !1135
  %20 = load i8, i8* %flags30, align 8, !dbg !1136
  %conv31 = zext i8 %20 to i32, !dbg !1136
  %and32 = and i32 %conv31, -33, !dbg !1136
  %conv33 = trunc i32 %and32 to i8, !dbg !1136
  store i8 %conv33, i8* %flags30, align 8, !dbg !1136
  br label %if.end34, !dbg !1137

if.end34:                                         ; preds = %if.then28, %if.else23
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then21
  %21 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1138
  %flags36 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %21, i32 0, i32 2, !dbg !1138
  %22 = load i8, i8* %flags36, align 8, !dbg !1138
  %conv37 = zext i8 %22 to i32, !dbg !1138
  %and38 = and i32 %conv37, 7, !dbg !1138
  %conv39 = trunc i32 %and38 to i8, !dbg !1138
  %conv40 = zext i8 %conv39 to i32, !dbg !1138
  %cmp41 = icmp eq i32 %conv40, 3, !dbg !1140
  br i1 %cmp41, label %if.then43, label %if.end56, !dbg !1141

if.then43:                                        ; preds = %if.end35
  %23 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1142
  %dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %23, i32 0, i32 0, !dbg !1144
  %notify_list = bitcast %union.acpi_gpe_dispatch_info* %dispatch to %struct.acpi_gpe_notify_info**, !dbg !1145
  %24 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %notify_list, align 8, !dbg !1145
  store %struct.acpi_gpe_notify_info* %24, %struct.acpi_gpe_notify_info** %notify, align 8, !dbg !1146
  br label %while.cond, !dbg !1147

while.cond:                                       ; preds = %if.end49, %if.then43
  %25 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %notify, align 8, !dbg !1148
  %tobool44 = icmp ne %struct.acpi_gpe_notify_info* %25, null, !dbg !1147
  br i1 %tobool44, label %while.body, label %while.end, !dbg !1147

while.body:                                       ; preds = %while.cond
  %26 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %notify, align 8, !dbg !1149
  %device_node45 = getelementptr inbounds %struct.acpi_gpe_notify_info, %struct.acpi_gpe_notify_info* %26, i32 0, i32 0, !dbg !1152
  %27 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %device_node45, align 8, !dbg !1152
  %28 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %device_node, align 8, !dbg !1153
  %cmp46 = icmp eq %struct.acpi_namespace_node* %27, %28, !dbg !1154
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !1155

if.then48:                                        ; preds = %while.body
  store i32 7, i32* %status, align 4, !dbg !1156
  br label %unlock_and_exit, !dbg !1158

if.end49:                                         ; preds = %while.body
  %29 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %notify, align 8, !dbg !1159
  %next = getelementptr inbounds %struct.acpi_gpe_notify_info, %struct.acpi_gpe_notify_info* %29, i32 0, i32 1, !dbg !1160
  %30 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %next, align 8, !dbg !1160
  store %struct.acpi_gpe_notify_info* %30, %struct.acpi_gpe_notify_info** %notify, align 8, !dbg !1161
  br label %while.cond, !dbg !1147, !llvm.loop !1162

while.end:                                        ; preds = %while.cond
  %31 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %device_node, align 8, !dbg !1164
  %32 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %new_notify, align 8, !dbg !1165
  %device_node50 = getelementptr inbounds %struct.acpi_gpe_notify_info, %struct.acpi_gpe_notify_info* %32, i32 0, i32 0, !dbg !1166
  store %struct.acpi_namespace_node* %31, %struct.acpi_namespace_node** %device_node50, align 8, !dbg !1167
  %33 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1168
  %dispatch51 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %33, i32 0, i32 0, !dbg !1169
  %notify_list52 = bitcast %union.acpi_gpe_dispatch_info* %dispatch51 to %struct.acpi_gpe_notify_info**, !dbg !1170
  %34 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %notify_list52, align 8, !dbg !1170
  %35 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %new_notify, align 8, !dbg !1171
  %next53 = getelementptr inbounds %struct.acpi_gpe_notify_info, %struct.acpi_gpe_notify_info* %35, i32 0, i32 1, !dbg !1172
  store %struct.acpi_gpe_notify_info* %34, %struct.acpi_gpe_notify_info** %next53, align 8, !dbg !1173
  %36 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %new_notify, align 8, !dbg !1174
  %37 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1175
  %dispatch54 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %37, i32 0, i32 0, !dbg !1176
  %notify_list55 = bitcast %union.acpi_gpe_dispatch_info* %dispatch54 to %struct.acpi_gpe_notify_info**, !dbg !1177
  store %struct.acpi_gpe_notify_info* %36, %struct.acpi_gpe_notify_info** %notify_list55, align 8, !dbg !1178
  store %struct.acpi_gpe_notify_info* null, %struct.acpi_gpe_notify_info** %new_notify, align 8, !dbg !1179
  br label %if.end56, !dbg !1180

if.end56:                                         ; preds = %while.end, %if.end35
  %38 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1181
  %flags57 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %38, i32 0, i32 2, !dbg !1182
  %39 = load i8, i8* %flags57, align 8, !dbg !1183
  %conv58 = zext i8 %39 to i32, !dbg !1183
  %or = or i32 %conv58, 16, !dbg !1183
  %conv59 = trunc i32 %or to i8, !dbg !1183
  store i8 %conv59, i8* %flags57, align 8, !dbg !1183
  store i32 0, i32* %status, align 4, !dbg !1184
  br label %unlock_and_exit, !dbg !1185

unlock_and_exit:                                  ; preds = %if.end56, %if.then48, %if.then13
  call void @llvm.dbg.label(metadata !1186), !dbg !1187
  %40 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1188
  %41 = load i64, i64* %flags, align 8, !dbg !1189
  call void @acpi_os_release_lock(%struct.spinlock* %40, i64 %41) #8, !dbg !1190
  %42 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %new_notify, align 8, !dbg !1191
  %tobool60 = icmp ne %struct.acpi_gpe_notify_info* %42, null, !dbg !1191
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !1193

if.then61:                                        ; preds = %unlock_and_exit
  %43 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %new_notify, align 8, !dbg !1194
  %44 = bitcast %struct.acpi_gpe_notify_info* %43 to i8*, !dbg !1194
  call void @acpi_os_free(i8* %44) #8, !dbg !1194
  br label %if.end62, !dbg !1196

if.end62:                                         ; preds = %if.then61, %unlock_and_exit
  %45 = load i32, i32* %status, align 4, !dbg !1197
  store i32 %45, i32* %retval, align 4, !dbg !1197
  br label %return, !dbg !1197

return:                                           ; preds = %if.end62, %if.then8, %if.then5, %if.then
  %46 = load i32, i32* %retval, align 4, !dbg !1198
  ret i32 %46, !dbg !1198
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !1199 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1203, metadata !DIExpression()), !dbg !1209
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1213, metadata !DIExpression()), !dbg !1214
  %0 = load i64, i64* %size.addr, align 8, !dbg !1215
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1216, metadata !DIExpression()), !dbg !1217
  br label %do.body, !dbg !1217

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1218, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1222, metadata !DIExpression()), !dbg !1221
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1221
  %conv = zext i1 %cmp to i32, !dbg !1221
  store i32 1, i32* %tmp, align 4, !dbg !1221
  %1 = load i32, i32* %tmp, align 4, !dbg !1221
  %call = call i64 @arch_local_save_flags() #8, !dbg !1223
  store i64 %call, i64* %_flags, align 8, !dbg !1223
  br label %do.end, !dbg !1223

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1224, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1227, metadata !DIExpression()), !dbg !1226
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1226
  %conv6 = zext i1 %cmp5 to i32, !dbg !1226
  store i32 1, i32* %tmp7, align 4, !dbg !1226
  %2 = load i32, i32* %tmp7, align 4, !dbg !1226
  %3 = load i64, i64* %_flags, align 8, !dbg !1228
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1229
  %and.i = and i64 %4, 512, !dbg !1230
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1231
  %lnot.i = xor i1 %tobool.i, true, !dbg !1231
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1231
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1228
  %5 = load i32, i32* %tmp8, align 4, !dbg !1228
  store i32 %5, i32* %tmp1, align 4, !dbg !1223
  %6 = load i32, i32* %tmp1, align 4, !dbg !1217
  %tobool = icmp ne i32 %6, 0, !dbg !1232
  %7 = zext i1 %tobool to i64, !dbg !1232
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1232
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #8, !dbg !1233
  ret i8* %call10, !dbg !1234
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1235 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1238, metadata !DIExpression()), !dbg !1239
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1240
  call void @kfree(i8* %0) #8, !dbg !1241
  ret void, !dbg !1242
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_set_gpe_wake_mask(i8* %gpe_device, i32 %gpe_number, i8 zeroext %action) #0 !dbg !1243 {
entry:
  %gpe_device.addr = alloca i8*, align 8
  %gpe_number.addr = alloca i32, align 4
  %action.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %gpe_event_info = alloca %struct.acpi_gpe_event_info*, align 8
  %gpe_register_info = alloca %struct.acpi_gpe_register_info*, align 8
  %flags = alloca i64, align 8
  %register_bit = alloca i32, align 4
  store i8* %gpe_device, i8** %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %gpe_device.addr, metadata !1244, metadata !DIExpression()), !dbg !1245
  store i32 %gpe_number, i32* %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpe_number.addr, metadata !1246, metadata !DIExpression()), !dbg !1247
  store i8 %action, i8* %action.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %action.addr, metadata !1248, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1250, metadata !DIExpression()), !dbg !1251
  store i32 0, i32* %status, align 4, !dbg !1251
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info, metadata !1252, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_register_info** %gpe_register_info, metadata !1254, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !1256, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.declare(metadata i32* %register_bit, metadata !1258, metadata !DIExpression()), !dbg !1259
  %0 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1260
  %call = call i64 @acpi_os_acquire_lock(%struct.spinlock* %0) #8, !dbg !1261
  store i64 %call, i64* %flags, align 8, !dbg !1262
  %1 = load i8*, i8** %gpe_device.addr, align 8, !dbg !1263
  %2 = load i32, i32* %gpe_number.addr, align 4, !dbg !1264
  %call1 = call %struct.acpi_gpe_event_info* @acpi_ev_get_gpe_event_info(i8* %1, i32 %2) #8, !dbg !1265
  store %struct.acpi_gpe_event_info* %call1, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1266
  %3 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1267
  %tobool = icmp ne %struct.acpi_gpe_event_info* %3, null, !dbg !1267
  br i1 %tobool, label %if.end, label %if.then, !dbg !1269

if.then:                                          ; preds = %entry
  store i32 4097, i32* %status, align 4, !dbg !1270
  br label %unlock_and_exit, !dbg !1272

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1273
  %flags2 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %4, i32 0, i32 2, !dbg !1275
  %5 = load i8, i8* %flags2, align 8, !dbg !1275
  %conv = zext i8 %5 to i32, !dbg !1273
  %and = and i32 %conv, 16, !dbg !1276
  %tobool3 = icmp ne i32 %and, 0, !dbg !1276
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1277

if.then4:                                         ; preds = %if.end
  store i32 8, i32* %status, align 4, !dbg !1278
  br label %unlock_and_exit, !dbg !1280

if.end5:                                          ; preds = %if.end
  %6 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1281
  %register_info = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %6, i32 0, i32 1, !dbg !1282
  %7 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %register_info, align 8, !dbg !1282
  store %struct.acpi_gpe_register_info* %7, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1283
  %8 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1284
  %tobool6 = icmp ne %struct.acpi_gpe_register_info* %8, null, !dbg !1284
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1286

if.then7:                                         ; preds = %if.end5
  store i32 6, i32* %status, align 4, !dbg !1287
  br label %unlock_and_exit, !dbg !1289

if.end8:                                          ; preds = %if.end5
  %9 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1290
  %call9 = call i32 @acpi_hw_get_gpe_register_bit(%struct.acpi_gpe_event_info* %9) #8, !dbg !1291
  store i32 %call9, i32* %register_bit, align 4, !dbg !1292
  %10 = load i8, i8* %action.addr, align 1, !dbg !1293
  %conv10 = zext i8 %10 to i32, !dbg !1293
  switch i32 %conv10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
  ], !dbg !1294

sw.bb:                                            ; preds = %if.end8
  %11 = load i32, i32* %register_bit, align 4, !dbg !1295
  %conv11 = trunc i32 %11 to i8, !dbg !1295
  %conv12 = zext i8 %conv11 to i32, !dbg !1295
  %12 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1295
  %enable_for_wake = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %12, i32 0, i32 3, !dbg !1295
  %13 = load i8, i8* %enable_for_wake, align 2, !dbg !1295
  %conv13 = zext i8 %13 to i32, !dbg !1295
  %or = or i32 %conv13, %conv12, !dbg !1295
  %conv14 = trunc i32 %or to i8, !dbg !1295
  store i8 %conv14, i8* %enable_for_wake, align 2, !dbg !1295
  br label %sw.epilog, !dbg !1297

sw.bb15:                                          ; preds = %if.end8
  %14 = load i32, i32* %register_bit, align 4, !dbg !1298
  %conv16 = trunc i32 %14 to i8, !dbg !1298
  %conv17 = zext i8 %conv16 to i32, !dbg !1298
  %neg = xor i32 %conv17, -1, !dbg !1298
  %15 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %gpe_register_info, align 8, !dbg !1298
  %enable_for_wake18 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %15, i32 0, i32 3, !dbg !1298
  %16 = load i8, i8* %enable_for_wake18, align 2, !dbg !1298
  %conv19 = zext i8 %16 to i32, !dbg !1298
  %and20 = and i32 %conv19, %neg, !dbg !1298
  %conv21 = trunc i32 %and20 to i8, !dbg !1298
  store i8 %conv21, i8* %enable_for_wake18, align 2, !dbg !1298
  br label %sw.epilog, !dbg !1299

sw.default:                                       ; preds = %if.end8
  %17 = load i8, i8* %action.addr, align 1, !dbg !1300
  %conv22 = zext i8 %17 to i32, !dbg !1300
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 544, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %conv22) #8, !dbg !1300
  store i32 4097, i32* %status, align 4, !dbg !1301
  br label %sw.epilog, !dbg !1302

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb
  br label %unlock_and_exit, !dbg !1303

unlock_and_exit:                                  ; preds = %sw.epilog, %if.then7, %if.then4, %if.then
  call void @llvm.dbg.label(metadata !1304), !dbg !1305
  %18 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1306
  %19 = load i64, i64* %flags, align 8, !dbg !1307
  call void @acpi_os_release_lock(%struct.spinlock* %18, i64 %19) #8, !dbg !1308
  %20 = load i32, i32* %status, align 4, !dbg !1309
  ret i32 %20, !dbg !1309
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_get_gpe_register_bit(%struct.acpi_gpe_event_info*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_clear_gpe(i8* %gpe_device, i32 %gpe_number) #0 !dbg !1310 {
entry:
  %gpe_device.addr = alloca i8*, align 8
  %gpe_number.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %gpe_event_info = alloca %struct.acpi_gpe_event_info*, align 8
  %flags = alloca i64, align 8
  store i8* %gpe_device, i8** %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %gpe_device.addr, metadata !1311, metadata !DIExpression()), !dbg !1312
  store i32 %gpe_number, i32* %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpe_number.addr, metadata !1313, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1315, metadata !DIExpression()), !dbg !1316
  store i32 0, i32* %status, align 4, !dbg !1316
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info, metadata !1317, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !1319, metadata !DIExpression()), !dbg !1320
  %0 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1321
  %call = call i64 @acpi_os_acquire_lock(%struct.spinlock* %0) #8, !dbg !1322
  store i64 %call, i64* %flags, align 8, !dbg !1323
  %1 = load i8*, i8** %gpe_device.addr, align 8, !dbg !1324
  %2 = load i32, i32* %gpe_number.addr, align 4, !dbg !1325
  %call1 = call %struct.acpi_gpe_event_info* @acpi_ev_get_gpe_event_info(i8* %1, i32 %2) #8, !dbg !1326
  store %struct.acpi_gpe_event_info* %call1, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1327
  %3 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1328
  %tobool = icmp ne %struct.acpi_gpe_event_info* %3, null, !dbg !1328
  br i1 %tobool, label %if.end, label %if.then, !dbg !1330

if.then:                                          ; preds = %entry
  store i32 4097, i32* %status, align 4, !dbg !1331
  br label %unlock_and_exit, !dbg !1333

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1334
  %call2 = call i32 @acpi_hw_clear_gpe(%struct.acpi_gpe_event_info* %4) #8, !dbg !1335
  store i32 %call2, i32* %status, align 4, !dbg !1336
  br label %unlock_and_exit, !dbg !1337

unlock_and_exit:                                  ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !1338), !dbg !1339
  %5 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1340
  %6 = load i64, i64* %flags, align 8, !dbg !1341
  call void @acpi_os_release_lock(%struct.spinlock* %5, i64 %6) #8, !dbg !1342
  %7 = load i32, i32* %status, align 4, !dbg !1343
  ret i32 %7, !dbg !1343
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_clear_gpe(%struct.acpi_gpe_event_info*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_gpe_status(i8* %gpe_device, i32 %gpe_number, i32* %event_status) #0 !dbg !1344 {
entry:
  %gpe_device.addr = alloca i8*, align 8
  %gpe_number.addr = alloca i32, align 4
  %event_status.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  %gpe_event_info = alloca %struct.acpi_gpe_event_info*, align 8
  %flags = alloca i64, align 8
  store i8* %gpe_device, i8** %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %gpe_device.addr, metadata !1349, metadata !DIExpression()), !dbg !1350
  store i32 %gpe_number, i32* %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpe_number.addr, metadata !1351, metadata !DIExpression()), !dbg !1352
  store i32* %event_status, i32** %event_status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %event_status.addr, metadata !1353, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1355, metadata !DIExpression()), !dbg !1356
  store i32 0, i32* %status, align 4, !dbg !1356
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info, metadata !1357, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !1359, metadata !DIExpression()), !dbg !1360
  %0 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1361
  %call = call i64 @acpi_os_acquire_lock(%struct.spinlock* %0) #8, !dbg !1362
  store i64 %call, i64* %flags, align 8, !dbg !1363
  %1 = load i8*, i8** %gpe_device.addr, align 8, !dbg !1364
  %2 = load i32, i32* %gpe_number.addr, align 4, !dbg !1365
  %call1 = call %struct.acpi_gpe_event_info* @acpi_ev_get_gpe_event_info(i8* %1, i32 %2) #8, !dbg !1366
  store %struct.acpi_gpe_event_info* %call1, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1367
  %3 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1368
  %tobool = icmp ne %struct.acpi_gpe_event_info* %3, null, !dbg !1368
  br i1 %tobool, label %if.end, label %if.then, !dbg !1370

if.then:                                          ; preds = %entry
  store i32 4097, i32* %status, align 4, !dbg !1371
  br label %unlock_and_exit, !dbg !1373

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1374
  %5 = load i32*, i32** %event_status.addr, align 8, !dbg !1375
  %call2 = call i32 @acpi_hw_get_gpe_status(%struct.acpi_gpe_event_info* %4, i32* %5) #8, !dbg !1376
  store i32 %call2, i32* %status, align 4, !dbg !1377
  br label %unlock_and_exit, !dbg !1378

unlock_and_exit:                                  ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !1379), !dbg !1380
  %6 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1381
  %7 = load i64, i64* %flags, align 8, !dbg !1382
  call void @acpi_os_release_lock(%struct.spinlock* %6, i64 %7) #8, !dbg !1383
  %8 = load i32, i32* %status, align 4, !dbg !1384
  ret i32 %8, !dbg !1384
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_get_gpe_status(%struct.acpi_gpe_event_info*, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_dispatch_gpe(i8* %gpe_device, i32 %gpe_number) #0 !dbg !1385 {
entry:
  %gpe_device.addr = alloca i8*, align 8
  %gpe_number.addr = alloca i32, align 4
  store i8* %gpe_device, i8** %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %gpe_device.addr, metadata !1388, metadata !DIExpression()), !dbg !1389
  store i32 %gpe_number, i32* %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpe_number.addr, metadata !1390, metadata !DIExpression()), !dbg !1391
  %0 = load i8*, i8** %gpe_device.addr, align 8, !dbg !1392
  %1 = bitcast i8* %0 to %struct.acpi_namespace_node*, !dbg !1392
  %2 = load i32, i32* %gpe_number.addr, align 4, !dbg !1393
  %call = call i32 @acpi_ev_detect_gpe(%struct.acpi_namespace_node* %1, %struct.acpi_gpe_event_info* null, i32 %2) #8, !dbg !1394
  ret i32 %call, !dbg !1395
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_finish_gpe(i8* %gpe_device, i32 %gpe_number) #0 !dbg !1396 {
entry:
  %gpe_device.addr = alloca i8*, align 8
  %gpe_number.addr = alloca i32, align 4
  %gpe_event_info = alloca %struct.acpi_gpe_event_info*, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  store i8* %gpe_device, i8** %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %gpe_device.addr, metadata !1397, metadata !DIExpression()), !dbg !1398
  store i32 %gpe_number, i32* %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpe_number.addr, metadata !1399, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info, metadata !1401, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1403, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !1405, metadata !DIExpression()), !dbg !1406
  %0 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1407
  %call = call i64 @acpi_os_acquire_lock(%struct.spinlock* %0) #8, !dbg !1408
  store i64 %call, i64* %flags, align 8, !dbg !1409
  %1 = load i8*, i8** %gpe_device.addr, align 8, !dbg !1410
  %2 = load i32, i32* %gpe_number.addr, align 4, !dbg !1411
  %call1 = call %struct.acpi_gpe_event_info* @acpi_ev_get_gpe_event_info(i8* %1, i32 %2) #8, !dbg !1412
  store %struct.acpi_gpe_event_info* %call1, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1413
  %3 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1414
  %tobool = icmp ne %struct.acpi_gpe_event_info* %3, null, !dbg !1414
  br i1 %tobool, label %if.end, label %if.then, !dbg !1416

if.then:                                          ; preds = %entry
  store i32 4097, i32* %status, align 4, !dbg !1417
  br label %unlock_and_exit, !dbg !1419

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1420
  %call2 = call i32 @acpi_ev_finish_gpe(%struct.acpi_gpe_event_info* %4) #8, !dbg !1421
  store i32 %call2, i32* %status, align 4, !dbg !1422
  br label %unlock_and_exit, !dbg !1423

unlock_and_exit:                                  ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !1424), !dbg !1425
  %5 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !1426
  %6 = load i64, i64* %flags, align 8, !dbg !1427
  call void @acpi_os_release_lock(%struct.spinlock* %5, i64 %6) #8, !dbg !1428
  %7 = load i32, i32* %status, align 4, !dbg !1429
  ret i32 %7, !dbg !1429
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_finish_gpe(%struct.acpi_gpe_event_info*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_disable_all_gpes() #0 !dbg !1430 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1431, metadata !DIExpression()), !dbg !1432
  %call = call i32 @acpi_ut_acquire_mutex(i32 3) #8, !dbg !1433
  store i32 %call, i32* %status, align 4, !dbg !1434
  %0 = load i32, i32* %status, align 4, !dbg !1435
  %tobool = icmp ne i32 %0, 0, !dbg !1435
  br i1 %tobool, label %if.then, label %if.end, !dbg !1437

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4, !dbg !1438
  store i32 %1, i32* %retval, align 4, !dbg !1438
  br label %return, !dbg !1438

if.end:                                           ; preds = %entry
  %call1 = call i32 @acpi_hw_disable_all_gpes() #8, !dbg !1440
  store i32 %call1, i32* %status, align 4, !dbg !1441
  %call2 = call i32 @acpi_ut_release_mutex(i32 3) #8, !dbg !1442
  %2 = load i32, i32* %status, align 4, !dbg !1443
  store i32 %2, i32* %retval, align 4, !dbg !1443
  br label %return, !dbg !1443

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !1444
  ret i32 %3, !dbg !1444
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_disable_all_gpes() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_enable_all_runtime_gpes() #0 !dbg !1445 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1446, metadata !DIExpression()), !dbg !1447
  %call = call i32 @acpi_ut_acquire_mutex(i32 3) #8, !dbg !1448
  store i32 %call, i32* %status, align 4, !dbg !1449
  %0 = load i32, i32* %status, align 4, !dbg !1450
  %tobool = icmp ne i32 %0, 0, !dbg !1450
  br i1 %tobool, label %if.then, label %if.end, !dbg !1452

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4, !dbg !1453
  store i32 %1, i32* %retval, align 4, !dbg !1453
  br label %return, !dbg !1453

if.end:                                           ; preds = %entry
  %call1 = call i32 @acpi_hw_enable_all_runtime_gpes() #8, !dbg !1455
  store i32 %call1, i32* %status, align 4, !dbg !1456
  %call2 = call i32 @acpi_ut_release_mutex(i32 3) #8, !dbg !1457
  %2 = load i32, i32* %status, align 4, !dbg !1458
  store i32 %2, i32* %retval, align 4, !dbg !1458
  br label %return, !dbg !1458

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !1459
  ret i32 %3, !dbg !1459
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_enable_all_runtime_gpes() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_enable_all_wakeup_gpes() #0 !dbg !1460 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1461, metadata !DIExpression()), !dbg !1462
  %call = call i32 @acpi_ut_acquire_mutex(i32 3) #8, !dbg !1463
  store i32 %call, i32* %status, align 4, !dbg !1464
  %0 = load i32, i32* %status, align 4, !dbg !1465
  %tobool = icmp ne i32 %0, 0, !dbg !1465
  br i1 %tobool, label %if.then, label %if.end, !dbg !1467

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4, !dbg !1468
  store i32 %1, i32* %retval, align 4, !dbg !1468
  br label %return, !dbg !1468

if.end:                                           ; preds = %entry
  %call1 = call i32 @acpi_hw_enable_all_wakeup_gpes() #8, !dbg !1470
  store i32 %call1, i32* %status, align 4, !dbg !1471
  %call2 = call i32 @acpi_ut_release_mutex(i32 3) #8, !dbg !1472
  %2 = load i32, i32* %status, align 4, !dbg !1473
  store i32 %2, i32* %retval, align 4, !dbg !1473
  br label %return, !dbg !1473

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !1474
  ret i32 %3, !dbg !1474
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_enable_all_wakeup_gpes() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_any_gpe_status_set(i32 %gpe_skip_number) #0 !dbg !1475 {
entry:
  %retval = alloca i32, align 4
  %gpe_skip_number.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %gpe_device = alloca i8*, align 8
  %ret = alloca i8, align 1
  store i32 %gpe_skip_number, i32* %gpe_skip_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpe_skip_number.addr, metadata !1478, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1480, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.declare(metadata i8** %gpe_device, metadata !1482, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !1484, metadata !DIExpression()), !dbg !1485
  %call = call i32 @acpi_ut_acquire_mutex(i32 3) #8, !dbg !1486
  store i32 %call, i32* %status, align 4, !dbg !1487
  %0 = load i32, i32* %status, align 4, !dbg !1488
  %tobool = icmp ne i32 %0, 0, !dbg !1488
  br i1 %tobool, label %if.then, label %if.end, !dbg !1490

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1491
  br label %return, !dbg !1491

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %gpe_skip_number.addr, align 4, !dbg !1493
  %call1 = call i32 @acpi_get_gpe_device(i32 %1, i8** %gpe_device) #8, !dbg !1494
  store i32 %call1, i32* %status, align 4, !dbg !1495
  %2 = load i32, i32* %status, align 4, !dbg !1496
  %tobool2 = icmp ne i32 %2, 0, !dbg !1496
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1498

if.then3:                                         ; preds = %if.end
  store i8* null, i8** %gpe_device, align 8, !dbg !1499
  br label %if.end4, !dbg !1501

if.end4:                                          ; preds = %if.then3, %if.end
  %3 = load i8*, i8** %gpe_device, align 8, !dbg !1502
  %4 = load i32, i32* %gpe_skip_number.addr, align 4, !dbg !1503
  %call5 = call zeroext i8 @acpi_hw_check_all_gpes(i8* %3, i32 %4) #8, !dbg !1504
  store i8 %call5, i8* %ret, align 1, !dbg !1505
  %call6 = call i32 @acpi_ut_release_mutex(i32 3) #8, !dbg !1506
  %5 = load i8, i8* %ret, align 1, !dbg !1507
  %conv = zext i8 %5 to i32, !dbg !1508
  store i32 %conv, i32* %retval, align 4, !dbg !1509
  br label %return, !dbg !1509

return:                                           ; preds = %if.end4, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !1510
  ret i32 %6, !dbg !1510
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_gpe_device(i32 %index, i8** %gpe_device) #0 !dbg !1511 {
entry:
  %retval = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %gpe_device.addr = alloca i8**, align 8
  %info = alloca %struct.acpi_gpe_device_info, align 8
  %status = alloca i32, align 4
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !1514, metadata !DIExpression()), !dbg !1515
  store i8** %gpe_device, i8*** %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %gpe_device.addr, metadata !1516, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_device_info* %info, metadata !1518, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1526, metadata !DIExpression()), !dbg !1527
  %0 = load i8**, i8*** %gpe_device.addr, align 8, !dbg !1528
  %tobool = icmp ne i8** %0, null, !dbg !1528
  br i1 %tobool, label %if.end, label %if.then, !dbg !1530

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !1531
  br label %return, !dbg !1531

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %index.addr, align 4, !dbg !1533
  %2 = load i32, i32* @acpi_current_gpe_count, align 4, !dbg !1535
  %cmp = icmp uge i32 %1, %2, !dbg !1536
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1537

if.then1:                                         ; preds = %if.end
  store i32 6, i32* %retval, align 4, !dbg !1538
  br label %return, !dbg !1538

if.end2:                                          ; preds = %if.end
  %3 = load i32, i32* %index.addr, align 4, !dbg !1540
  %index3 = getelementptr inbounds %struct.acpi_gpe_device_info, %struct.acpi_gpe_device_info* %info, i32 0, i32 0, !dbg !1541
  store i32 %3, i32* %index3, align 8, !dbg !1542
  %status4 = getelementptr inbounds %struct.acpi_gpe_device_info, %struct.acpi_gpe_device_info* %info, i32 0, i32 2, !dbg !1543
  store i32 6, i32* %status4, align 8, !dbg !1544
  %gpe_device5 = getelementptr inbounds %struct.acpi_gpe_device_info, %struct.acpi_gpe_device_info* %info, i32 0, i32 3, !dbg !1545
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %gpe_device5, align 8, !dbg !1546
  %next_block_base_index = getelementptr inbounds %struct.acpi_gpe_device_info, %struct.acpi_gpe_device_info* %info, i32 0, i32 1, !dbg !1547
  store i32 0, i32* %next_block_base_index, align 4, !dbg !1548
  %4 = bitcast %struct.acpi_gpe_device_info* %info to i8*, !dbg !1549
  %call = call i32 @acpi_ev_walk_gpe_list(i32 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)* @acpi_ev_get_gpe_device, i8* %4) #8, !dbg !1550
  store i32 %call, i32* %status, align 4, !dbg !1551
  %5 = load i32, i32* %status, align 4, !dbg !1552
  %tobool6 = icmp ne i32 %5, 0, !dbg !1552
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1554

if.then7:                                         ; preds = %if.end2
  %6 = load i32, i32* %status, align 4, !dbg !1555
  store i32 %6, i32* %retval, align 4, !dbg !1555
  br label %return, !dbg !1555

if.end8:                                          ; preds = %if.end2
  %gpe_device9 = getelementptr inbounds %struct.acpi_gpe_device_info, %struct.acpi_gpe_device_info* %info, i32 0, i32 3, !dbg !1557
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %gpe_device9, align 8, !dbg !1557
  %8 = bitcast %struct.acpi_namespace_node* %7 to i8*, !dbg !1557
  %9 = bitcast i8* %8 to i8**, !dbg !1557
  %10 = bitcast i8** %9 to i8*, !dbg !1557
  %11 = load i8**, i8*** %gpe_device.addr, align 8, !dbg !1558
  store i8* %10, i8** %11, align 8, !dbg !1559
  %status10 = getelementptr inbounds %struct.acpi_gpe_device_info, %struct.acpi_gpe_device_info* %info, i32 0, i32 2, !dbg !1560
  %12 = load i32, i32* %status10, align 8, !dbg !1560
  store i32 %12, i32* %retval, align 4, !dbg !1560
  br label %return, !dbg !1560

return:                                           ; preds = %if.end8, %if.then7, %if.then1, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !1561
  ret i32 %13, !dbg !1561
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_hw_check_all_gpes(i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_install_gpe_block(i8* %gpe_device, %struct.acpi_generic_address* %gpe_block_address, i32 %register_count, i32 %interrupt_number) #0 !dbg !1562 {
entry:
  %retval = alloca i32, align 4
  %gpe_device.addr = alloca i8*, align 8
  %gpe_block_address.addr = alloca %struct.acpi_generic_address*, align 8
  %register_count.addr = alloca i32, align 4
  %interrupt_number.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %gpe_block = alloca %struct.acpi_gpe_block_info*, align 8
  store i8* %gpe_device, i8** %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %gpe_device.addr, metadata !1573, metadata !DIExpression()), !dbg !1574
  store %struct.acpi_generic_address* %gpe_block_address, %struct.acpi_generic_address** %gpe_block_address.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_generic_address** %gpe_block_address.addr, metadata !1575, metadata !DIExpression()), !dbg !1576
  store i32 %register_count, i32* %register_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %register_count.addr, metadata !1577, metadata !DIExpression()), !dbg !1578
  store i32 %interrupt_number, i32* %interrupt_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %interrupt_number.addr, metadata !1579, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1581, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1583, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1585, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_block_info** %gpe_block, metadata !1587, metadata !DIExpression()), !dbg !1588
  %0 = load i8*, i8** %gpe_device.addr, align 8, !dbg !1589
  %tobool = icmp ne i8* %0, null, !dbg !1589
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1591

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %gpe_block_address.addr, align 8, !dbg !1592
  %tobool1 = icmp ne %struct.acpi_generic_address* %1, null, !dbg !1592
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !1593

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %register_count.addr, align 4, !dbg !1594
  %tobool3 = icmp ne i32 %2, 0, !dbg !1594
  br i1 %tobool3, label %if.end, label %if.then, !dbg !1595

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !1596
  br label %return, !dbg !1596

if.end:                                           ; preds = %lor.lhs.false2
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #8, !dbg !1598
  store i32 %call, i32* %status, align 4, !dbg !1599
  %3 = load i32, i32* %status, align 4, !dbg !1600
  %tobool4 = icmp ne i32 %3, 0, !dbg !1600
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1602

if.then5:                                         ; preds = %if.end
  %4 = load i32, i32* %status, align 4, !dbg !1603
  store i32 %4, i32* %retval, align 4, !dbg !1603
  br label %return, !dbg !1603

if.end6:                                          ; preds = %if.end
  %5 = load i8*, i8** %gpe_device.addr, align 8, !dbg !1605
  %call7 = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8* %5) #8, !dbg !1606
  store %struct.acpi_namespace_node* %call7, %struct.acpi_namespace_node** %node, align 8, !dbg !1607
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1608
  %tobool8 = icmp ne %struct.acpi_namespace_node* %6, null, !dbg !1608
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !1610

if.then9:                                         ; preds = %if.end6
  store i32 4097, i32* %status, align 4, !dbg !1611
  br label %unlock_and_exit, !dbg !1613

if.end10:                                         ; preds = %if.end6
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1614
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %7, i32 0, i32 2, !dbg !1616
  %8 = load i8, i8* %type, align 1, !dbg !1616
  %conv = zext i8 %8 to i32, !dbg !1614
  %cmp = icmp ne i32 %conv, 6, !dbg !1617
  br i1 %cmp, label %if.then12, label %if.end13, !dbg !1618

if.then12:                                        ; preds = %if.end10
  store i32 8, i32* %status, align 4, !dbg !1619
  br label %unlock_and_exit, !dbg !1621

if.end13:                                         ; preds = %if.end10
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1622
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %9, i32 0, i32 0, !dbg !1624
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1624
  %tobool14 = icmp ne %union.acpi_operand_object* %10, null, !dbg !1622
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !1625

if.then15:                                        ; preds = %if.end13
  store i32 7, i32* %status, align 4, !dbg !1626
  br label %unlock_and_exit, !dbg !1628

if.end16:                                         ; preds = %if.end13
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1629
  %12 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %gpe_block_address.addr, align 8, !dbg !1630
  %address = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %12, i32 0, i32 4, !dbg !1631
  %13 = load i64, i64* %address, align 1, !dbg !1631
  %14 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %gpe_block_address.addr, align 8, !dbg !1632
  %space_id = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %14, i32 0, i32 0, !dbg !1633
  %15 = load i8, i8* %space_id, align 1, !dbg !1633
  %16 = load i32, i32* %register_count.addr, align 4, !dbg !1634
  %17 = load i32, i32* %interrupt_number.addr, align 4, !dbg !1635
  %call17 = call i32 @acpi_ev_create_gpe_block(%struct.acpi_namespace_node* %11, i64 %13, i8 zeroext %15, i32 %16, i16 zeroext 0, i32 %17, %struct.acpi_gpe_block_info** %gpe_block) #8, !dbg !1636
  store i32 %call17, i32* %status, align 4, !dbg !1637
  %18 = load i32, i32* %status, align 4, !dbg !1638
  %tobool18 = icmp ne i32 %18, 0, !dbg !1638
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !1640

if.then19:                                        ; preds = %if.end16
  br label %unlock_and_exit, !dbg !1641

if.end20:                                         ; preds = %if.end16
  %19 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1643
  %call21 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %19) #8, !dbg !1644
  store %union.acpi_operand_object* %call21, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1645
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1646
  %tobool22 = icmp ne %union.acpi_operand_object* %20, null, !dbg !1646
  br i1 %tobool22, label %if.end32, label %if.then23, !dbg !1648

if.then23:                                        ; preds = %if.end20
  %call24 = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 912, i32 4, i32 6) #8, !dbg !1649
  store %union.acpi_operand_object* %call24, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1651
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1652
  %tobool25 = icmp ne %union.acpi_operand_object* %21, null, !dbg !1652
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !1654

if.then26:                                        ; preds = %if.then23
  store i32 4, i32* %status, align 4, !dbg !1655
  br label %unlock_and_exit, !dbg !1657

if.end27:                                         ; preds = %if.then23
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1658
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1659
  %call28 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %22, %union.acpi_operand_object* %23, i32 6) #8, !dbg !1660
  store i32 %call28, i32* %status, align 4, !dbg !1661
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1662
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %24) #8, !dbg !1663
  %25 = load i32, i32* %status, align 4, !dbg !1664
  %tobool29 = icmp ne i32 %25, 0, !dbg !1664
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !1666

if.then30:                                        ; preds = %if.end27
  br label %unlock_and_exit, !dbg !1667

if.end31:                                         ; preds = %if.end27
  br label %if.end32, !dbg !1669

if.end32:                                         ; preds = %if.end31, %if.end20
  %26 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !1670
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1671
  %device = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_device*, !dbg !1672
  %gpe_block33 = getelementptr inbounds %struct.acpi_object_device, %struct.acpi_object_device* %device, i32 0, i32 7, !dbg !1673
  store %struct.acpi_gpe_block_info* %26, %struct.acpi_gpe_block_info** %gpe_block33, align 8, !dbg !1674
  br label %unlock_and_exit, !dbg !1671

unlock_and_exit:                                  ; preds = %if.end32, %if.then30, %if.then26, %if.then19, %if.then15, %if.then12, %if.then9
  call void @llvm.dbg.label(metadata !1675), !dbg !1676
  %call34 = call i32 @acpi_ut_release_mutex(i32 1) #8, !dbg !1677
  %28 = load i32, i32* %status, align 4, !dbg !1678
  store i32 %28, i32* %retval, align 4, !dbg !1678
  br label %return, !dbg !1678

return:                                           ; preds = %unlock_and_exit, %if.then5, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !1679
  ret i32 %29, !dbg !1679
}

; Function Attrs: noredzone
declare dso_local %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_create_gpe_block(%struct.acpi_namespace_node*, i64, i8 zeroext, i32, i16 zeroext, i32, %struct.acpi_gpe_block_info**) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_remove_gpe_block(i8* %gpe_device) #0 !dbg !1680 {
entry:
  %retval = alloca i32, align 4
  %gpe_device.addr = alloca i8*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %node = alloca %struct.acpi_namespace_node*, align 8
  store i8* %gpe_device, i8** %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %gpe_device.addr, metadata !1683, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1685, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1687, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1689, metadata !DIExpression()), !dbg !1690
  %0 = load i8*, i8** %gpe_device.addr, align 8, !dbg !1691
  %tobool = icmp ne i8* %0, null, !dbg !1691
  br i1 %tobool, label %if.end, label %if.then, !dbg !1693

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !1694
  br label %return, !dbg !1694

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #8, !dbg !1696
  store i32 %call, i32* %status, align 4, !dbg !1697
  %1 = load i32, i32* %status, align 4, !dbg !1698
  %tobool1 = icmp ne i32 %1, 0, !dbg !1698
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1700

if.then2:                                         ; preds = %if.end
  %2 = load i32, i32* %status, align 4, !dbg !1701
  store i32 %2, i32* %retval, align 4, !dbg !1701
  br label %return, !dbg !1701

if.end3:                                          ; preds = %if.end
  %3 = load i8*, i8** %gpe_device.addr, align 8, !dbg !1703
  %call4 = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8* %3) #8, !dbg !1704
  store %struct.acpi_namespace_node* %call4, %struct.acpi_namespace_node** %node, align 8, !dbg !1705
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1706
  %tobool5 = icmp ne %struct.acpi_namespace_node* %4, null, !dbg !1706
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !1708

if.then6:                                         ; preds = %if.end3
  store i32 4097, i32* %status, align 4, !dbg !1709
  br label %unlock_and_exit, !dbg !1711

if.end7:                                          ; preds = %if.end3
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1712
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %5, i32 0, i32 2, !dbg !1714
  %6 = load i8, i8* %type, align 1, !dbg !1714
  %conv = zext i8 %6 to i32, !dbg !1712
  %cmp = icmp ne i32 %conv, 6, !dbg !1715
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !1716

if.then9:                                         ; preds = %if.end7
  store i32 8, i32* %status, align 4, !dbg !1717
  br label %unlock_and_exit, !dbg !1719

if.end10:                                         ; preds = %if.end7
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1720
  %call11 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %7) #8, !dbg !1721
  store %union.acpi_operand_object* %call11, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1722
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1723
  %tobool12 = icmp ne %union.acpi_operand_object* %8, null, !dbg !1723
  br i1 %tobool12, label %lor.lhs.false, label %if.then14, !dbg !1725

lor.lhs.false:                                    ; preds = %if.end10
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1726
  %device = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_device*, !dbg !1727
  %gpe_block = getelementptr inbounds %struct.acpi_object_device, %struct.acpi_object_device* %device, i32 0, i32 7, !dbg !1728
  %10 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !1728
  %tobool13 = icmp ne %struct.acpi_gpe_block_info* %10, null, !dbg !1726
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !1729

if.then14:                                        ; preds = %lor.lhs.false, %if.end10
  store i32 9, i32* %retval, align 4, !dbg !1730
  br label %return, !dbg !1730

if.end15:                                         ; preds = %lor.lhs.false
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1732
  %device16 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_device*, !dbg !1733
  %gpe_block17 = getelementptr inbounds %struct.acpi_object_device, %struct.acpi_object_device* %device16, i32 0, i32 7, !dbg !1734
  %12 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block17, align 8, !dbg !1734
  %call18 = call i32 @acpi_ev_delete_gpe_block(%struct.acpi_gpe_block_info* %12) #8, !dbg !1735
  store i32 %call18, i32* %status, align 4, !dbg !1736
  %13 = load i32, i32* %status, align 4, !dbg !1737
  %tobool19 = icmp ne i32 %13, 0, !dbg !1737
  br i1 %tobool19, label %if.end23, label %if.then20, !dbg !1739

if.then20:                                        ; preds = %if.end15
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1740
  %device21 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_device*, !dbg !1742
  %gpe_block22 = getelementptr inbounds %struct.acpi_object_device, %struct.acpi_object_device* %device21, i32 0, i32 7, !dbg !1743
  store %struct.acpi_gpe_block_info* null, %struct.acpi_gpe_block_info** %gpe_block22, align 8, !dbg !1744
  br label %if.end23, !dbg !1745

if.end23:                                         ; preds = %if.then20, %if.end15
  br label %unlock_and_exit, !dbg !1737

unlock_and_exit:                                  ; preds = %if.end23, %if.then9, %if.then6
  call void @llvm.dbg.label(metadata !1746), !dbg !1747
  %call24 = call i32 @acpi_ut_release_mutex(i32 1) #8, !dbg !1748
  %15 = load i32, i32* %status, align 4, !dbg !1749
  store i32 %15, i32* %retval, align 4, !dbg !1749
  br label %return, !dbg !1749

return:                                           ; preds = %unlock_and_exit, %if.then14, %if.then2, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !1750
  ret i32 %16, !dbg !1750
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_delete_gpe_block(%struct.acpi_gpe_block_info*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_get_gpe_device(%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1751 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1758, metadata !DIExpression()), !dbg !1765
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1771, metadata !DIExpression()), !dbg !1772
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1773, metadata !DIExpression()), !dbg !1774
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1775, metadata !DIExpression()), !dbg !1776
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1777, metadata !DIExpression()), !dbg !1781
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1783, metadata !DIExpression()), !dbg !1787
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1789, metadata !DIExpression()), !dbg !1793
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1798, metadata !DIExpression()), !dbg !1799
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1800, metadata !DIExpression()), !dbg !1801
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1802, metadata !DIExpression()), !dbg !1803
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1804, metadata !DIExpression()), !dbg !1805
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1806, metadata !DIExpression()), !dbg !1807
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1808, metadata !DIExpression()), !dbg !1809
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1810, metadata !DIExpression()), !dbg !1811
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1812, metadata !DIExpression()), !dbg !1813
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1814, metadata !DIExpression()), !dbg !1815
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1816, metadata !DIExpression()), !dbg !1817
  %0 = load i64, i64* %size.addr, align 8, !dbg !1818
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1819
  %or = or i32 %1, 256, !dbg !1820
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1821
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !1822
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1823

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1824
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1825
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1826

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1827
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1828
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1829
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !1830
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1807
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1831
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1832
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1833
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1834
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1835
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1836
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !1837
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1837
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1837
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1837
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !1837
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1838
  br label %kmalloc.exit, !dbg !1838

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1839
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1840
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1840
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1842

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1843
  br label %kmalloc_index.exit.i, !dbg !1843

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1844
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1846
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1847

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1848
  br label %kmalloc_index.exit.i, !dbg !1848

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1849
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1851
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1852

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1853
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1854
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1855

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1856
  br label %kmalloc_index.exit.i, !dbg !1856

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1857
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1859
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1860

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1861
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1862
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1863

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1864
  br label %kmalloc_index.exit.i, !dbg !1864

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1865
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1867
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1868

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1869
  br label %kmalloc_index.exit.i, !dbg !1869

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1870
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1872
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1873

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1874
  br label %kmalloc_index.exit.i, !dbg !1874

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1875
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1877
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1878

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1879
  br label %kmalloc_index.exit.i, !dbg !1879

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1880
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1882
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1883

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1884
  br label %kmalloc_index.exit.i, !dbg !1884

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1885
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1887
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1888

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1889
  br label %kmalloc_index.exit.i, !dbg !1889

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1890
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1892
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1893

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1894
  br label %kmalloc_index.exit.i, !dbg !1894

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1895
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1897
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1898

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1899
  br label %kmalloc_index.exit.i, !dbg !1899

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1900
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1902
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1903

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1904
  br label %kmalloc_index.exit.i, !dbg !1904

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1905
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1907
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1908

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1909
  br label %kmalloc_index.exit.i, !dbg !1909

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1910
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1912
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1913

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1914
  br label %kmalloc_index.exit.i, !dbg !1914

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1915
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1917
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1918

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1919
  br label %kmalloc_index.exit.i, !dbg !1919

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1920
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1922
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1923

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1924
  br label %kmalloc_index.exit.i, !dbg !1924

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1925
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1927
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1928

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1929
  br label %kmalloc_index.exit.i, !dbg !1929

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1930
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1932
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1933

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1934
  br label %kmalloc_index.exit.i, !dbg !1934

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1935
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1937
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1938

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1939
  br label %kmalloc_index.exit.i, !dbg !1939

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1940
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1942
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1943

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1944
  br label %kmalloc_index.exit.i, !dbg !1944

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1945
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1947
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1948

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1949
  br label %kmalloc_index.exit.i, !dbg !1949

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1950
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1952
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1953

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1954
  br label %kmalloc_index.exit.i, !dbg !1954

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1955
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1957
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1958

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1959
  br label %kmalloc_index.exit.i, !dbg !1959

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1960
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1962
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1963

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1964
  br label %kmalloc_index.exit.i, !dbg !1964

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1965
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1967
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1968

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1969
  br label %kmalloc_index.exit.i, !dbg !1969

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1970
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1972
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1973

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1974
  br label %kmalloc_index.exit.i, !dbg !1974

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1975
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1977
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1978

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1979
  br label %kmalloc_index.exit.i, !dbg !1979

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1980
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1982
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1983

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1984
  br label %kmalloc_index.exit.i, !dbg !1984

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !1985, !srcloc !1988
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #7, !dbg !1989, !srcloc !1992
  unreachable, !dbg !1993

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1994
  store i32 %45, i32* %index.i, align 4, !dbg !1995
  %46 = load i32, i32* %index.i, align 4, !dbg !1996
  %tobool.i = icmp ne i32 %46, 0, !dbg !1996
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1998

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1999
  br label %kmalloc.exit, !dbg !1999

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2000
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2001
  %and.i.i = and i32 %48, 17, !dbg !2001
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2001
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2001
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2001
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2001
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2003

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2004
  br label %kmalloc_type.exit.i, !dbg !2004

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2005
  %and2.i.i = and i32 %49, 1, !dbg !2006
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2005
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2005
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2005
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2007
  br label %kmalloc_type.exit.i, !dbg !2007

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2008
  %idxprom.i = zext i32 %51 to i64, !dbg !2009
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2009
  %52 = load i32, i32* %index.i, align 4, !dbg !2010
  %idxprom6.i = zext i32 %52 to i64, !dbg !2009
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2009
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2009
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2011
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2012
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2013
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2014
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !2015
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2015
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2015
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2015
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !2015
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1776
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2016
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2017
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2018
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2019
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !2020
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2021
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2022
  store i8* %62, i8** %retval.i, align 8, !dbg !2023
  br label %kmalloc.exit, !dbg !2023

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2024
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2025
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !2026
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2026
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2026
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2026
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !2026
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2027
  br label %kmalloc.exit, !dbg !2027

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2028
  ret i8* %65, !dbg !2029
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !2030 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2037, metadata !DIExpression()), !dbg !2036
  %0 = load i64, i64* %__edi, align 8, !dbg !2036
  store i64 %0, i64* %__edi, align 8, !dbg !2036
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2038, metadata !DIExpression()), !dbg !2036
  %1 = load i64, i64* %__esi, align 8, !dbg !2036
  store i64 %1, i64* %__esi, align 8, !dbg !2036
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2039, metadata !DIExpression()), !dbg !2036
  %2 = load i64, i64* %__edx, align 8, !dbg !2036
  store i64 %2, i64* %__edx, align 8, !dbg !2036
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2040, metadata !DIExpression()), !dbg !2036
  %3 = load i64, i64* %__ecx, align 8, !dbg !2036
  store i64 %3, i64* %__ecx, align 8, !dbg !2036
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2041, metadata !DIExpression()), !dbg !2036
  %4 = load i64, i64* %__eax, align 8, !dbg !2036
  store i64 %4, i64* %__eax, align 8, !dbg !2036
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !2036
  %6 = call i64 @llvm.read_register.i64(metadata !796), !dbg !2042
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !2042, !srcloc !2045
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !2042
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !2042
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2042
  call void @llvm.write_register.i64(metadata !796, i64 %asmresult1), !dbg !2042
  %8 = load i64, i64* %__eax, align 8, !dbg !2042
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !2046, metadata !DIExpression()), !dbg !2048
  store i64 -1, i64* %__mask, align 8, !dbg !2048
  %9 = load i64, i64* %__mask, align 8, !dbg !2048
  store i64 %9, i64* %tmp, align 8, !dbg !2048
  %10 = load i64, i64* %tmp, align 8, !dbg !2048
  %and = and i64 %8, %10, !dbg !2042
  store i64 %and, i64* %__ret, align 8, !dbg !2042
  %11 = load i64, i64* %__ret, align 8, !dbg !2036
  store i64 %11, i64* %tmp2, align 8, !dbg !2049
  %12 = load i64, i64* %tmp2, align 8, !dbg !2036
  ret i64 %12, !dbg !2050
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !2051 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2053, metadata !DIExpression()), !dbg !2058
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2060, metadata !DIExpression()), !dbg !2061
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2062, metadata !DIExpression()), !dbg !2063
  %0 = load i64, i64* %size.addr, align 8, !dbg !2064
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2066
  br i1 %1, label %if.then, label %if.end447, !dbg !2067

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2068
  %tobool = icmp ne i64 %2, 0, !dbg !2068
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2071

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !2072
  br label %return, !dbg !2072

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !2073
  %cmp = icmp ult i64 %3, 4096, !dbg !2075
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2076

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2077
  br label %return, !dbg !2077

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub = sub i64 %4, 1, !dbg !2078
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2078
  br i1 %5, label %cond.true, label %cond.false442, !dbg !2078

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub4 = sub i64 %6, 1, !dbg !2078
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !2078
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !2078

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub6 = sub i64 %8, 1, !dbg !2078
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !2078
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !2078

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !2078

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub9 = sub i64 %9, 1, !dbg !2078
  %and = and i64 %sub9, -9223372036854775808, !dbg !2078
  %tobool10 = icmp ne i64 %and, 0, !dbg !2078
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !2078

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !2078

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub13 = sub i64 %10, 1, !dbg !2078
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !2078
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2078
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2078

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !2078

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub18 = sub i64 %11, 1, !dbg !2078
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !2078
  %tobool20 = icmp ne i64 %and19, 0, !dbg !2078
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2078

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !2078

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub23 = sub i64 %12, 1, !dbg !2078
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !2078
  %tobool25 = icmp ne i64 %and24, 0, !dbg !2078
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !2078

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !2078

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub28 = sub i64 %13, 1, !dbg !2078
  %and29 = and i64 %sub28, 576460752303423488, !dbg !2078
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2078
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !2078

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !2078

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub33 = sub i64 %14, 1, !dbg !2078
  %and34 = and i64 %sub33, 288230376151711744, !dbg !2078
  %tobool35 = icmp ne i64 %and34, 0, !dbg !2078
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !2078

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !2078

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub38 = sub i64 %15, 1, !dbg !2078
  %and39 = and i64 %sub38, 144115188075855872, !dbg !2078
  %tobool40 = icmp ne i64 %and39, 0, !dbg !2078
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2078

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !2078

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub43 = sub i64 %16, 1, !dbg !2078
  %and44 = and i64 %sub43, 72057594037927936, !dbg !2078
  %tobool45 = icmp ne i64 %and44, 0, !dbg !2078
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !2078

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !2078

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub48 = sub i64 %17, 1, !dbg !2078
  %and49 = and i64 %sub48, 36028797018963968, !dbg !2078
  %tobool50 = icmp ne i64 %and49, 0, !dbg !2078
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !2078

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !2078

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub53 = sub i64 %18, 1, !dbg !2078
  %and54 = and i64 %sub53, 18014398509481984, !dbg !2078
  %tobool55 = icmp ne i64 %and54, 0, !dbg !2078
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !2078

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !2078

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub58 = sub i64 %19, 1, !dbg !2078
  %and59 = and i64 %sub58, 9007199254740992, !dbg !2078
  %tobool60 = icmp ne i64 %and59, 0, !dbg !2078
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2078

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !2078

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub63 = sub i64 %20, 1, !dbg !2078
  %and64 = and i64 %sub63, 4503599627370496, !dbg !2078
  %tobool65 = icmp ne i64 %and64, 0, !dbg !2078
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !2078

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !2078

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub68 = sub i64 %21, 1, !dbg !2078
  %and69 = and i64 %sub68, 2251799813685248, !dbg !2078
  %tobool70 = icmp ne i64 %and69, 0, !dbg !2078
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !2078

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !2078

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub73 = sub i64 %22, 1, !dbg !2078
  %and74 = and i64 %sub73, 1125899906842624, !dbg !2078
  %tobool75 = icmp ne i64 %and74, 0, !dbg !2078
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !2078

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !2078

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub78 = sub i64 %23, 1, !dbg !2078
  %and79 = and i64 %sub78, 562949953421312, !dbg !2078
  %tobool80 = icmp ne i64 %and79, 0, !dbg !2078
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !2078

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !2078

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub83 = sub i64 %24, 1, !dbg !2078
  %and84 = and i64 %sub83, 281474976710656, !dbg !2078
  %tobool85 = icmp ne i64 %and84, 0, !dbg !2078
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !2078

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !2078

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub88 = sub i64 %25, 1, !dbg !2078
  %and89 = and i64 %sub88, 140737488355328, !dbg !2078
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2078
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !2078

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !2078

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub93 = sub i64 %26, 1, !dbg !2078
  %and94 = and i64 %sub93, 70368744177664, !dbg !2078
  %tobool95 = icmp ne i64 %and94, 0, !dbg !2078
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !2078

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !2078

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub98 = sub i64 %27, 1, !dbg !2078
  %and99 = and i64 %sub98, 35184372088832, !dbg !2078
  %tobool100 = icmp ne i64 %and99, 0, !dbg !2078
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !2078

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !2078

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub103 = sub i64 %28, 1, !dbg !2078
  %and104 = and i64 %sub103, 17592186044416, !dbg !2078
  %tobool105 = icmp ne i64 %and104, 0, !dbg !2078
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !2078

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !2078

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub108 = sub i64 %29, 1, !dbg !2078
  %and109 = and i64 %sub108, 8796093022208, !dbg !2078
  %tobool110 = icmp ne i64 %and109, 0, !dbg !2078
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !2078

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !2078

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub113 = sub i64 %30, 1, !dbg !2078
  %and114 = and i64 %sub113, 4398046511104, !dbg !2078
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2078
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !2078

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !2078

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub118 = sub i64 %31, 1, !dbg !2078
  %and119 = and i64 %sub118, 2199023255552, !dbg !2078
  %tobool120 = icmp ne i64 %and119, 0, !dbg !2078
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !2078

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !2078

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub123 = sub i64 %32, 1, !dbg !2078
  %and124 = and i64 %sub123, 1099511627776, !dbg !2078
  %tobool125 = icmp ne i64 %and124, 0, !dbg !2078
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !2078

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !2078

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub128 = sub i64 %33, 1, !dbg !2078
  %and129 = and i64 %sub128, 549755813888, !dbg !2078
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2078
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !2078

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !2078

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub133 = sub i64 %34, 1, !dbg !2078
  %and134 = and i64 %sub133, 274877906944, !dbg !2078
  %tobool135 = icmp ne i64 %and134, 0, !dbg !2078
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !2078

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !2078

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub138 = sub i64 %35, 1, !dbg !2078
  %and139 = and i64 %sub138, 137438953472, !dbg !2078
  %tobool140 = icmp ne i64 %and139, 0, !dbg !2078
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !2078

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !2078

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub143 = sub i64 %36, 1, !dbg !2078
  %and144 = and i64 %sub143, 68719476736, !dbg !2078
  %tobool145 = icmp ne i64 %and144, 0, !dbg !2078
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !2078

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !2078

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub148 = sub i64 %37, 1, !dbg !2078
  %and149 = and i64 %sub148, 34359738368, !dbg !2078
  %tobool150 = icmp ne i64 %and149, 0, !dbg !2078
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !2078

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !2078

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub153 = sub i64 %38, 1, !dbg !2078
  %and154 = and i64 %sub153, 17179869184, !dbg !2078
  %tobool155 = icmp ne i64 %and154, 0, !dbg !2078
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !2078

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !2078

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub158 = sub i64 %39, 1, !dbg !2078
  %and159 = and i64 %sub158, 8589934592, !dbg !2078
  %tobool160 = icmp ne i64 %and159, 0, !dbg !2078
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !2078

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !2078

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub163 = sub i64 %40, 1, !dbg !2078
  %and164 = and i64 %sub163, 4294967296, !dbg !2078
  %tobool165 = icmp ne i64 %and164, 0, !dbg !2078
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !2078

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !2078

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub168 = sub i64 %41, 1, !dbg !2078
  %and169 = and i64 %sub168, 2147483648, !dbg !2078
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2078
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !2078

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !2078

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub173 = sub i64 %42, 1, !dbg !2078
  %and174 = and i64 %sub173, 1073741824, !dbg !2078
  %tobool175 = icmp ne i64 %and174, 0, !dbg !2078
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !2078

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !2078

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub178 = sub i64 %43, 1, !dbg !2078
  %and179 = and i64 %sub178, 536870912, !dbg !2078
  %tobool180 = icmp ne i64 %and179, 0, !dbg !2078
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !2078

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !2078

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub183 = sub i64 %44, 1, !dbg !2078
  %and184 = and i64 %sub183, 268435456, !dbg !2078
  %tobool185 = icmp ne i64 %and184, 0, !dbg !2078
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !2078

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !2078

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub188 = sub i64 %45, 1, !dbg !2078
  %and189 = and i64 %sub188, 134217728, !dbg !2078
  %tobool190 = icmp ne i64 %and189, 0, !dbg !2078
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !2078

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !2078

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub193 = sub i64 %46, 1, !dbg !2078
  %and194 = and i64 %sub193, 67108864, !dbg !2078
  %tobool195 = icmp ne i64 %and194, 0, !dbg !2078
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !2078

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !2078

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub198 = sub i64 %47, 1, !dbg !2078
  %and199 = and i64 %sub198, 33554432, !dbg !2078
  %tobool200 = icmp ne i64 %and199, 0, !dbg !2078
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !2078

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !2078

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub203 = sub i64 %48, 1, !dbg !2078
  %and204 = and i64 %sub203, 16777216, !dbg !2078
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2078
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !2078

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !2078

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub208 = sub i64 %49, 1, !dbg !2078
  %and209 = and i64 %sub208, 8388608, !dbg !2078
  %tobool210 = icmp ne i64 %and209, 0, !dbg !2078
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !2078

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !2078

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub213 = sub i64 %50, 1, !dbg !2078
  %and214 = and i64 %sub213, 4194304, !dbg !2078
  %tobool215 = icmp ne i64 %and214, 0, !dbg !2078
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !2078

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !2078

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub218 = sub i64 %51, 1, !dbg !2078
  %and219 = and i64 %sub218, 2097152, !dbg !2078
  %tobool220 = icmp ne i64 %and219, 0, !dbg !2078
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !2078

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !2078

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub223 = sub i64 %52, 1, !dbg !2078
  %and224 = and i64 %sub223, 1048576, !dbg !2078
  %tobool225 = icmp ne i64 %and224, 0, !dbg !2078
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !2078

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !2078

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub228 = sub i64 %53, 1, !dbg !2078
  %and229 = and i64 %sub228, 524288, !dbg !2078
  %tobool230 = icmp ne i64 %and229, 0, !dbg !2078
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !2078

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !2078

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub233 = sub i64 %54, 1, !dbg !2078
  %and234 = and i64 %sub233, 262144, !dbg !2078
  %tobool235 = icmp ne i64 %and234, 0, !dbg !2078
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !2078

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !2078

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub238 = sub i64 %55, 1, !dbg !2078
  %and239 = and i64 %sub238, 131072, !dbg !2078
  %tobool240 = icmp ne i64 %and239, 0, !dbg !2078
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !2078

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !2078

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub243 = sub i64 %56, 1, !dbg !2078
  %and244 = and i64 %sub243, 65536, !dbg !2078
  %tobool245 = icmp ne i64 %and244, 0, !dbg !2078
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !2078

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !2078

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub248 = sub i64 %57, 1, !dbg !2078
  %and249 = and i64 %sub248, 32768, !dbg !2078
  %tobool250 = icmp ne i64 %and249, 0, !dbg !2078
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !2078

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !2078

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub253 = sub i64 %58, 1, !dbg !2078
  %and254 = and i64 %sub253, 16384, !dbg !2078
  %tobool255 = icmp ne i64 %and254, 0, !dbg !2078
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !2078

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !2078

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub258 = sub i64 %59, 1, !dbg !2078
  %and259 = and i64 %sub258, 8192, !dbg !2078
  %tobool260 = icmp ne i64 %and259, 0, !dbg !2078
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !2078

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !2078

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub263 = sub i64 %60, 1, !dbg !2078
  %and264 = and i64 %sub263, 4096, !dbg !2078
  %tobool265 = icmp ne i64 %and264, 0, !dbg !2078
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !2078

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !2078

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub268 = sub i64 %61, 1, !dbg !2078
  %and269 = and i64 %sub268, 2048, !dbg !2078
  %tobool270 = icmp ne i64 %and269, 0, !dbg !2078
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !2078

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !2078

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub273 = sub i64 %62, 1, !dbg !2078
  %and274 = and i64 %sub273, 1024, !dbg !2078
  %tobool275 = icmp ne i64 %and274, 0, !dbg !2078
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !2078

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !2078

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub278 = sub i64 %63, 1, !dbg !2078
  %and279 = and i64 %sub278, 512, !dbg !2078
  %tobool280 = icmp ne i64 %and279, 0, !dbg !2078
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !2078

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !2078

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub283 = sub i64 %64, 1, !dbg !2078
  %and284 = and i64 %sub283, 256, !dbg !2078
  %tobool285 = icmp ne i64 %and284, 0, !dbg !2078
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !2078

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !2078

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub288 = sub i64 %65, 1, !dbg !2078
  %and289 = and i64 %sub288, 128, !dbg !2078
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2078
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !2078

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !2078

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub293 = sub i64 %66, 1, !dbg !2078
  %and294 = and i64 %sub293, 64, !dbg !2078
  %tobool295 = icmp ne i64 %and294, 0, !dbg !2078
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !2078

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !2078

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub298 = sub i64 %67, 1, !dbg !2078
  %and299 = and i64 %sub298, 32, !dbg !2078
  %tobool300 = icmp ne i64 %and299, 0, !dbg !2078
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !2078

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !2078

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub303 = sub i64 %68, 1, !dbg !2078
  %and304 = and i64 %sub303, 16, !dbg !2078
  %tobool305 = icmp ne i64 %and304, 0, !dbg !2078
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !2078

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !2078

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub308 = sub i64 %69, 1, !dbg !2078
  %and309 = and i64 %sub308, 8, !dbg !2078
  %tobool310 = icmp ne i64 %and309, 0, !dbg !2078
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !2078

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !2078

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub313 = sub i64 %70, 1, !dbg !2078
  %and314 = and i64 %sub313, 4, !dbg !2078
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2078
  %71 = zext i1 %tobool315 to i64, !dbg !2078
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !2078
  br label %cond.end, !dbg !2078

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !2078
  br label %cond.end317, !dbg !2078

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !2078
  br label %cond.end319, !dbg !2078

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !2078
  br label %cond.end321, !dbg !2078

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !2078
  br label %cond.end323, !dbg !2078

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !2078
  br label %cond.end325, !dbg !2078

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !2078
  br label %cond.end327, !dbg !2078

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !2078
  br label %cond.end329, !dbg !2078

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !2078
  br label %cond.end331, !dbg !2078

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !2078
  br label %cond.end333, !dbg !2078

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !2078
  br label %cond.end335, !dbg !2078

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !2078
  br label %cond.end337, !dbg !2078

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !2078
  br label %cond.end339, !dbg !2078

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !2078
  br label %cond.end341, !dbg !2078

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !2078
  br label %cond.end343, !dbg !2078

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !2078
  br label %cond.end345, !dbg !2078

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !2078
  br label %cond.end347, !dbg !2078

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !2078
  br label %cond.end349, !dbg !2078

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !2078
  br label %cond.end351, !dbg !2078

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !2078
  br label %cond.end353, !dbg !2078

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !2078
  br label %cond.end355, !dbg !2078

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !2078
  br label %cond.end357, !dbg !2078

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !2078
  br label %cond.end359, !dbg !2078

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !2078
  br label %cond.end361, !dbg !2078

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !2078
  br label %cond.end363, !dbg !2078

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !2078
  br label %cond.end365, !dbg !2078

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !2078
  br label %cond.end367, !dbg !2078

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !2078
  br label %cond.end369, !dbg !2078

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !2078
  br label %cond.end371, !dbg !2078

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !2078
  br label %cond.end373, !dbg !2078

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !2078
  br label %cond.end375, !dbg !2078

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !2078
  br label %cond.end377, !dbg !2078

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !2078
  br label %cond.end379, !dbg !2078

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !2078
  br label %cond.end381, !dbg !2078

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !2078
  br label %cond.end383, !dbg !2078

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !2078
  br label %cond.end385, !dbg !2078

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !2078
  br label %cond.end387, !dbg !2078

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !2078
  br label %cond.end389, !dbg !2078

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !2078
  br label %cond.end391, !dbg !2078

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !2078
  br label %cond.end393, !dbg !2078

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !2078
  br label %cond.end395, !dbg !2078

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !2078
  br label %cond.end397, !dbg !2078

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !2078
  br label %cond.end399, !dbg !2078

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !2078
  br label %cond.end401, !dbg !2078

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !2078
  br label %cond.end403, !dbg !2078

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !2078
  br label %cond.end405, !dbg !2078

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !2078
  br label %cond.end407, !dbg !2078

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !2078
  br label %cond.end409, !dbg !2078

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !2078
  br label %cond.end411, !dbg !2078

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !2078
  br label %cond.end413, !dbg !2078

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !2078
  br label %cond.end415, !dbg !2078

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !2078
  br label %cond.end417, !dbg !2078

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !2078
  br label %cond.end419, !dbg !2078

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !2078
  br label %cond.end421, !dbg !2078

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !2078
  br label %cond.end423, !dbg !2078

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !2078
  br label %cond.end425, !dbg !2078

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !2078
  br label %cond.end427, !dbg !2078

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !2078
  br label %cond.end429, !dbg !2078

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !2078
  br label %cond.end431, !dbg !2078

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !2078
  br label %cond.end433, !dbg !2078

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !2078
  br label %cond.end435, !dbg !2078

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !2078
  br label %cond.end437, !dbg !2078

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !2078
  br label %cond.end440, !dbg !2078

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !2078

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !2078
  br label %cond.end444, !dbg !2078

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !2078
  %sub443 = sub i64 %72, 1, !dbg !2078
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !2078
  br label %cond.end444, !dbg !2078

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !2078
  %sub446 = sub i32 %cond445, 12, !dbg !2079
  %add = add i32 %sub446, 1, !dbg !2080
  store i32 %add, i32* %retval, align 4, !dbg !2081
  br label %return, !dbg !2081

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !2082
  %dec = add i64 %73, -1, !dbg !2082
  store i64 %dec, i64* %size.addr, align 8, !dbg !2082
  %74 = load i64, i64* %size.addr, align 8, !dbg !2083
  %shr = lshr i64 %74, 12, !dbg !2083
  store i64 %shr, i64* %size.addr, align 8, !dbg !2083
  %75 = load i64, i64* %size.addr, align 8, !dbg !2084
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2061
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2085
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2086
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !2085, !srcloc !2087
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2085
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2088
  %add.i = add i32 %79, 1, !dbg !2089
  store i32 %add.i, i32* %retval, align 4, !dbg !2090
  br label %return, !dbg !2090

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2091
  ret i32 %80, !dbg !2091
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !2092 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2053, metadata !DIExpression()), !dbg !2096
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2060, metadata !DIExpression()), !dbg !2098
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2099, metadata !DIExpression()), !dbg !2100
  %0 = load i64, i64* %n.addr, align 8, !dbg !2101
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2098
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2102
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2103
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !2102, !srcloc !2087
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2102
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2104
  %add.i = add i32 %4, 1, !dbg !2105
  %sub = sub i32 %add.i, 1, !dbg !2106
  ret i32 %sub, !dbg !2107
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !2108 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2114, metadata !DIExpression()), !dbg !2115
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2116, metadata !DIExpression()), !dbg !2117
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2118, metadata !DIExpression()), !dbg !2119
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2120, metadata !DIExpression()), !dbg !2121
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2122
  ret i8* %0, !dbg !2123
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
!llvm.named.register.rsp = !{!796}
!llvm.module.flags = !{!797, !798, !799, !800}
!llvm.ident = !{!801}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !794, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !793, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evxfgpe.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !20, !23, !24, !25, !26, !29, !789, !790, !792}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !15, line: 421, baseType: !16)
!15 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !17, line: 21, baseType: !18)
!17 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !19, line: 27, baseType: !7)
!19 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !17, line: 17, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !19, line: 21, baseType: !22)
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !15, line: 424, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !15, line: 127, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !17, line: 23, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !19, line: 31, baseType: !28)
!28 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !31, line: 133, size: 384, elements: !32)
!31 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !776, !777, !778, !779, !785, !786, !787, !788}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !30, file: !31, line: 134, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !36, line: 367, size: 576, elements: !37)
!36 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!37 = !{!38, !49, !62, !74, !88, !102, !111, !427, !444, !459, !472, !550, !562, !576, !586, !604, !626, !645, !664, !683, !696, !722, !739, !752, !766, !775}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !35, file: !36, line: 368, baseType: !39, size: 128)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !36, line: 73, size: 128, elements: !40)
!40 = !{!41, !42, !43, !44, !48}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !39, file: !36, line: 74, baseType: !34, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !39, file: !36, line: 74, baseType: !20, size: 8, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !39, file: !36, line: 74, baseType: !20, size: 8, offset: 72)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !39, file: !36, line: 74, baseType: !45, size: 16, offset: 80)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !17, line: 19, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !19, line: 24, baseType: !47)
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !39, file: !36, line: 74, baseType: !20, size: 8, offset: 96)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !35, file: !36, line: 369, baseType: !50, size: 192)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !36, line: 76, size: 192, elements: !51)
!51 = !{!52, !53, !54, !55, !56, !57, !61}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !50, file: !36, line: 77, baseType: !34, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !50, file: !36, line: 77, baseType: !20, size: 8, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !50, file: !36, line: 77, baseType: !20, size: 8, offset: 72)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !50, file: !36, line: 77, baseType: !45, size: 16, offset: 80)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !50, file: !36, line: 77, baseType: !20, size: 8, offset: 96)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !50, file: !36, line: 77, baseType: !58, size: 24, offset: 104)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 24, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 3)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !50, file: !36, line: 78, baseType: !26, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !35, file: !36, line: 370, baseType: !63, size: 256)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !36, line: 93, size: 256, elements: !64)
!64 = !{!65, !66, !67, !68, !69, !70, !73}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !63, file: !36, line: 94, baseType: !34, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !63, file: !36, line: 94, baseType: !20, size: 8, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !63, file: !36, line: 94, baseType: !20, size: 8, offset: 72)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !63, file: !36, line: 94, baseType: !45, size: 16, offset: 80)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !63, file: !36, line: 94, baseType: !20, size: 8, offset: 96)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !63, file: !36, line: 94, baseType: !71, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !63, file: !36, line: 94, baseType: !16, size: 32, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !35, file: !36, line: 371, baseType: !75, size: 384)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !36, line: 97, size: 384, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !84, !85, !86, !87}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !75, file: !36, line: 98, baseType: !34, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !75, file: !36, line: 98, baseType: !20, size: 8, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !36, line: 98, baseType: !20, size: 8, offset: 72)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !75, file: !36, line: 98, baseType: !45, size: 16, offset: 80)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !36, line: 98, baseType: !20, size: 8, offset: 96)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !75, file: !36, line: 98, baseType: !83, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !75, file: !36, line: 98, baseType: !16, size: 32, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !75, file: !36, line: 99, baseType: !16, size: 32, offset: 224)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !75, file: !36, line: 100, baseType: !83, size: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !75, file: !36, line: 101, baseType: !29, size: 64, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !35, file: !36, line: 372, baseType: !89, size: 384)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !36, line: 104, size: 384, elements: !90)
!90 = !{!91, !92, !93, !94, !95, !96, !97, !99, !100, !101}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !89, file: !36, line: 105, baseType: !34, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !89, file: !36, line: 105, baseType: !20, size: 8, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !36, line: 105, baseType: !20, size: 8, offset: 72)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !89, file: !36, line: 105, baseType: !45, size: 16, offset: 80)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !89, file: !36, line: 105, baseType: !20, size: 8, offset: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !89, file: !36, line: 105, baseType: !29, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !89, file: !36, line: 106, baseType: !98, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !89, file: !36, line: 107, baseType: !83, size: 64, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !89, file: !36, line: 108, baseType: !16, size: 32, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !89, file: !36, line: 109, baseType: !16, size: 32, offset: 352)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !35, file: !36, line: 373, baseType: !103, size: 192)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !36, line: 118, size: 192, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !103, file: !36, line: 119, baseType: !34, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !103, file: !36, line: 119, baseType: !20, size: 8, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !36, line: 119, baseType: !20, size: 8, offset: 72)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !103, file: !36, line: 119, baseType: !45, size: 16, offset: 80)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !103, file: !36, line: 119, baseType: !20, size: 8, offset: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !103, file: !36, line: 119, baseType: !24, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !35, file: !36, line: 374, baseType: !112, size: 448)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !36, line: 143, size: 448, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !424, !425, !426}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !112, file: !36, line: 144, baseType: !34, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !112, file: !36, line: 144, baseType: !20, size: 8, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !112, file: !36, line: 144, baseType: !20, size: 8, offset: 72)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !112, file: !36, line: 144, baseType: !45, size: 16, offset: 80)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !112, file: !36, line: 144, baseType: !20, size: 8, offset: 96)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !112, file: !36, line: 144, baseType: !20, size: 8, offset: 104)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !112, file: !36, line: 145, baseType: !20, size: 8, offset: 112)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !112, file: !36, line: 146, baseType: !20, size: 8, offset: 120)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !112, file: !36, line: 147, baseType: !34, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !112, file: !36, line: 148, baseType: !34, size: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !112, file: !36, line: 149, baseType: !83, size: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !112, file: !36, line: 153, baseType: !126, size: 64, offset: 320)
!126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !112, file: !36, line: 150, size: 64, elements: !127)
!127 = !{!128, !423}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !126, file: !36, line: 151, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !31, line: 248, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!14, !133}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !135, line: 37, size: 9024, elements: !136)
!135 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !369, !370, !371, !372, !373, !377, !379, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !406, !407, !408, !409, !410, !411, !412, !413, !415, !421}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !134, file: !135, line: 38, baseType: !133, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !134, file: !135, line: 39, baseType: !20, size: 8, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !134, file: !135, line: 40, baseType: !20, size: 8, offset: 72)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !134, file: !135, line: 41, baseType: !45, size: 16, offset: 80)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !134, file: !135, line: 42, baseType: !20, size: 8, offset: 96)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !134, file: !135, line: 43, baseType: !20, size: 8, offset: 104)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !134, file: !135, line: 44, baseType: !20, size: 8, offset: 112)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !134, file: !135, line: 45, baseType: !145, size: 16, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !15, line: 445, baseType: !45)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !134, file: !135, line: 46, baseType: !20, size: 8, offset: 144)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !134, file: !135, line: 47, baseType: !20, size: 8, offset: 152)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !134, file: !135, line: 48, baseType: !20, size: 8, offset: 160)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !134, file: !135, line: 49, baseType: !20, size: 8, offset: 168)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !134, file: !135, line: 50, baseType: !20, size: 8, offset: 176)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !134, file: !135, line: 51, baseType: !20, size: 8, offset: 184)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !134, file: !135, line: 52, baseType: !20, size: 8, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !134, file: !135, line: 53, baseType: !20, size: 8, offset: 200)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !134, file: !135, line: 54, baseType: !83, size: 64, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !134, file: !135, line: 55, baseType: !16, size: 32, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !134, file: !135, line: 56, baseType: !16, size: 32, offset: 352)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !134, file: !135, line: 57, baseType: !16, size: 32, offset: 384)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !134, file: !135, line: 58, baseType: !16, size: 32, offset: 416)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !134, file: !135, line: 60, baseType: !160, size: 640, offset: 448)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !31, line: 893, size: 640, elements: !161)
!161 = !{!162, !163, !164, !165, !166, !167, !251, !252, !367, !368}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !160, file: !31, line: 894, baseType: !83, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !160, file: !31, line: 895, baseType: !83, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !160, file: !31, line: 896, baseType: !83, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !160, file: !31, line: 897, baseType: !83, size: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !160, file: !31, line: 898, baseType: !83, size: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !160, file: !31, line: 899, baseType: !168, size: 64, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !31, line: 875, size: 1600, elements: !170)
!170 = !{!171, !191, !207}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !169, file: !31, line: 876, baseType: !172, size: 448)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !31, line: 828, size: 448, elements: !173)
!173 = !{!174, !175, !176, !177, !178, !179, !180, !181, !190}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !172, file: !31, line: 829, baseType: !168, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !172, file: !31, line: 829, baseType: !20, size: 8, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !172, file: !31, line: 829, baseType: !20, size: 8, offset: 72)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !172, file: !31, line: 829, baseType: !45, size: 16, offset: 80)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !172, file: !31, line: 829, baseType: !83, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !31, line: 829, baseType: !168, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !172, file: !31, line: 829, baseType: !29, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !172, file: !31, line: 829, baseType: !182, size: 64, offset: 320)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !31, line: 716, size: 64, elements: !183)
!183 = !{!184, !185, !186, !187, !188, !189}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !182, file: !31, line: 717, baseType: !26, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !182, file: !31, line: 718, baseType: !16, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !182, file: !31, line: 719, baseType: !71, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !182, file: !31, line: 720, baseType: !83, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !31, line: 721, baseType: !71, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !182, file: !31, line: 722, baseType: !168, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !172, file: !31, line: 829, baseType: !20, size: 8, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !169, file: !31, line: 877, baseType: !192, size: 640)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !31, line: 835, size: 640, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !192, file: !31, line: 836, baseType: !168, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !192, file: !31, line: 836, baseType: !20, size: 8, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !192, file: !31, line: 836, baseType: !20, size: 8, offset: 72)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !192, file: !31, line: 836, baseType: !45, size: 16, offset: 80)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !192, file: !31, line: 836, baseType: !83, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !192, file: !31, line: 836, baseType: !168, size: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !192, file: !31, line: 836, baseType: !29, size: 64, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !192, file: !31, line: 836, baseType: !182, size: 64, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !192, file: !31, line: 836, baseType: !20, size: 8, offset: 384)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !192, file: !31, line: 836, baseType: !71, size: 64, offset: 448)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !192, file: !31, line: 837, baseType: !83, size: 64, offset: 512)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !192, file: !31, line: 838, baseType: !16, size: 32, offset: 576)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !192, file: !31, line: 839, baseType: !16, size: 32, offset: 608)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !169, file: !31, line: 878, baseType: !208, size: 1600)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !31, line: 846, size: 1600, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !208, file: !31, line: 847, baseType: !168, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !208, file: !31, line: 847, baseType: !20, size: 8, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !208, file: !31, line: 847, baseType: !20, size: 8, offset: 72)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !208, file: !31, line: 847, baseType: !45, size: 16, offset: 80)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !208, file: !31, line: 847, baseType: !83, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !31, line: 847, baseType: !168, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !208, file: !31, line: 847, baseType: !29, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !208, file: !31, line: 847, baseType: !182, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !208, file: !31, line: 847, baseType: !20, size: 8, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !208, file: !31, line: 847, baseType: !168, size: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !208, file: !31, line: 848, baseType: !168, size: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !208, file: !31, line: 849, baseType: !71, size: 64, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !208, file: !31, line: 850, baseType: !20, size: 8, offset: 640)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !208, file: !31, line: 851, baseType: !71, size: 64, offset: 704)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !208, file: !31, line: 852, baseType: !71, size: 64, offset: 768)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !208, file: !31, line: 853, baseType: !71, size: 64, offset: 832)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !208, file: !31, line: 854, baseType: !227, size: 32, offset: 896)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 32, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 4)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !208, file: !31, line: 855, baseType: !16, size: 32, offset: 928)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !208, file: !31, line: 856, baseType: !16, size: 32, offset: 960)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !208, file: !31, line: 857, baseType: !16, size: 32, offset: 992)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !208, file: !31, line: 858, baseType: !16, size: 32, offset: 1024)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !208, file: !31, line: 859, baseType: !16, size: 32, offset: 1056)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !208, file: !31, line: 860, baseType: !16, size: 32, offset: 1088)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !208, file: !31, line: 861, baseType: !16, size: 32, offset: 1120)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !208, file: !31, line: 862, baseType: !16, size: 32, offset: 1152)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !208, file: !31, line: 863, baseType: !16, size: 32, offset: 1184)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !208, file: !31, line: 864, baseType: !16, size: 32, offset: 1216)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !208, file: !31, line: 865, baseType: !16, size: 32, offset: 1248)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !208, file: !31, line: 866, baseType: !16, size: 32, offset: 1280)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !208, file: !31, line: 867, baseType: !16, size: 32, offset: 1312)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !208, file: !31, line: 868, baseType: !45, size: 16, offset: 1344)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !208, file: !31, line: 869, baseType: !20, size: 8, offset: 1360)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !208, file: !31, line: 870, baseType: !20, size: 8, offset: 1368)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !208, file: !31, line: 871, baseType: !20, size: 8, offset: 1376)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !208, file: !31, line: 872, baseType: !248, size: 160, offset: 1384)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 160, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 20)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !160, file: !31, line: 900, baseType: !29, size: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !160, file: !31, line: 901, baseType: !253, size: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !31, line: 663, size: 640, elements: !255)
!255 = !{!256, !264, !277, !286, !295, !308, !322, !334, !346}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !254, file: !31, line: 664, baseType: !257, size: 128)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !31, line: 567, size: 128, elements: !258)
!258 = !{!259, !260, !261, !262, !263}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !257, file: !31, line: 568, baseType: !24, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !257, file: !31, line: 568, baseType: !20, size: 8, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !257, file: !31, line: 568, baseType: !20, size: 8, offset: 72)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !257, file: !31, line: 568, baseType: !45, size: 16, offset: 80)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !257, file: !31, line: 568, baseType: !45, size: 16, offset: 96)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !254, file: !31, line: 665, baseType: !265, size: 384)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !31, line: 593, size: 384, elements: !266)
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !31, line: 594, baseType: !24, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !265, file: !31, line: 594, baseType: !20, size: 8, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !265, file: !31, line: 594, baseType: !20, size: 8, offset: 72)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !265, file: !31, line: 594, baseType: !45, size: 16, offset: 80)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !265, file: !31, line: 594, baseType: !45, size: 16, offset: 96)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !265, file: !31, line: 594, baseType: !45, size: 16, offset: 112)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !265, file: !31, line: 595, baseType: !168, size: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !265, file: !31, line: 596, baseType: !83, size: 64, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !265, file: !31, line: 597, baseType: !83, size: 64, offset: 256)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !265, file: !31, line: 598, baseType: !26, size: 64, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !254, file: !31, line: 666, baseType: !278, size: 192)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !31, line: 573, size: 192, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !31, line: 574, baseType: !24, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !278, file: !31, line: 574, baseType: !20, size: 8, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !31, line: 574, baseType: !20, size: 8, offset: 72)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !278, file: !31, line: 574, baseType: !45, size: 16, offset: 80)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !278, file: !31, line: 574, baseType: !45, size: 16, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !278, file: !31, line: 574, baseType: !34, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !254, file: !31, line: 667, baseType: !287, size: 192)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !31, line: 604, size: 192, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !31, line: 605, baseType: !24, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !287, file: !31, line: 605, baseType: !20, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !31, line: 605, baseType: !20, size: 8, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !287, file: !31, line: 605, baseType: !45, size: 16, offset: 80)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !287, file: !31, line: 605, baseType: !45, size: 16, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !287, file: !31, line: 605, baseType: !29, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !254, file: !31, line: 668, baseType: !296, size: 448)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !31, line: 608, size: 448, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303, !304, !305, !306, !307}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !31, line: 609, baseType: !24, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !296, file: !31, line: 609, baseType: !20, size: 8, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !31, line: 609, baseType: !20, size: 8, offset: 72)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !296, file: !31, line: 609, baseType: !45, size: 16, offset: 80)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !296, file: !31, line: 609, baseType: !45, size: 16, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !296, file: !31, line: 609, baseType: !16, size: 32, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !296, file: !31, line: 610, baseType: !168, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !296, file: !31, line: 611, baseType: !83, size: 64, offset: 256)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !296, file: !31, line: 612, baseType: !83, size: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !296, file: !31, line: 613, baseType: !16, size: 32, offset: 384)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !254, file: !31, line: 669, baseType: !309, size: 512)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !31, line: 580, size: 512, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !31, line: 581, baseType: !24, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !309, file: !31, line: 581, baseType: !20, size: 8, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !31, line: 581, baseType: !20, size: 8, offset: 72)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !309, file: !31, line: 581, baseType: !45, size: 16, offset: 80)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !309, file: !31, line: 581, baseType: !45, size: 16, offset: 96)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !309, file: !31, line: 581, baseType: !16, size: 32, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !309, file: !31, line: 582, baseType: !34, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !309, file: !31, line: 583, baseType: !34, size: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !309, file: !31, line: 584, baseType: !133, size: 64, offset: 320)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !309, file: !31, line: 585, baseType: !24, size: 64, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !309, file: !31, line: 586, baseType: !16, size: 32, offset: 448)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !254, file: !31, line: 670, baseType: !323, size: 320)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !31, line: 620, size: 320, elements: !324)
!324 = !{!325, !326, !327, !328, !329, !330, !331, !332, !333}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !323, file: !31, line: 621, baseType: !24, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !323, file: !31, line: 621, baseType: !20, size: 8, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !323, file: !31, line: 621, baseType: !20, size: 8, offset: 72)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !323, file: !31, line: 621, baseType: !45, size: 16, offset: 80)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !323, file: !31, line: 621, baseType: !45, size: 16, offset: 96)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !323, file: !31, line: 621, baseType: !20, size: 8, offset: 112)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !323, file: !31, line: 622, baseType: !133, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !323, file: !31, line: 623, baseType: !34, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !323, file: !31, line: 624, baseType: !26, size: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !254, file: !31, line: 671, baseType: !335, size: 640)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !31, line: 631, size: 640, elements: !336)
!336 = !{!337, !338, !339, !340, !341, !342}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !335, file: !31, line: 632, baseType: !24, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !335, file: !31, line: 632, baseType: !20, size: 8, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !335, file: !31, line: 632, baseType: !20, size: 8, offset: 72)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !335, file: !31, line: 632, baseType: !45, size: 16, offset: 80)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !335, file: !31, line: 632, baseType: !45, size: 16, offset: 96)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !335, file: !31, line: 633, baseType: !343, size: 512, offset: 128)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 512, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 8)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !254, file: !31, line: 672, baseType: !347, size: 320)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !31, line: 654, size: 320, elements: !348)
!348 = !{!349, !350, !351, !352, !353, !354, !355, !356, !357}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !31, line: 655, baseType: !24, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !347, file: !31, line: 655, baseType: !20, size: 8, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !347, file: !31, line: 655, baseType: !20, size: 8, offset: 72)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !347, file: !31, line: 655, baseType: !45, size: 16, offset: 80)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !347, file: !31, line: 655, baseType: !45, size: 16, offset: 96)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !347, file: !31, line: 655, baseType: !20, size: 8, offset: 112)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !347, file: !31, line: 656, baseType: !29, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !347, file: !31, line: 657, baseType: !34, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !347, file: !31, line: 658, baseType: !358, size: 64, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !31, line: 645, size: 128, elements: !360)
!360 = !{!361, !366}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !359, file: !31, line: 646, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !15, line: 1052, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !23, !16, !24}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !359, file: !31, line: 647, baseType: !24, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !160, file: !31, line: 902, baseType: !168, size: 64, offset: 512)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !160, file: !31, line: 903, baseType: !16, size: 32, offset: 576)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !134, file: !135, line: 61, baseType: !16, size: 32, offset: 1088)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !134, file: !135, line: 62, baseType: !16, size: 32, offset: 1120)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !134, file: !135, line: 63, baseType: !45, size: 16, offset: 1152)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !134, file: !135, line: 64, baseType: !20, size: 8, offset: 1168)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !134, file: !135, line: 66, baseType: !374, size: 2688, offset: 1216)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2688, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 7)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !134, file: !135, line: 67, baseType: !378, size: 3072, offset: 3904)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 3072, elements: !344)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !134, file: !135, line: 68, baseType: !380, size: 576, offset: 6976)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 576, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 9)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !134, file: !135, line: 69, baseType: !98, size: 64, offset: 7552)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !134, file: !135, line: 71, baseType: !83, size: 64, offset: 7616)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !134, file: !135, line: 72, baseType: !98, size: 64, offset: 7680)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !134, file: !135, line: 73, baseType: !253, size: 64, offset: 7744)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !134, file: !135, line: 74, baseType: !29, size: 64, offset: 7808)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !134, file: !135, line: 75, baseType: !34, size: 64, offset: 7872)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !134, file: !135, line: 76, baseType: !29, size: 64, offset: 7936)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !134, file: !135, line: 77, baseType: !168, size: 64, offset: 8000)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !134, file: !135, line: 78, baseType: !34, size: 64, offset: 8064)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !134, file: !135, line: 79, baseType: !29, size: 64, offset: 8128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !134, file: !135, line: 80, baseType: !71, size: 64, offset: 8192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !134, file: !135, line: 81, baseType: !168, size: 64, offset: 8256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !134, file: !135, line: 82, baseType: !396, size: 64, offset: 8320)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !31, line: 702, size: 128, elements: !399)
!399 = !{!400, !401, !402, !403, !404, !405}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !398, file: !31, line: 706, baseType: !16, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !398, file: !31, line: 707, baseType: !16, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !398, file: !31, line: 708, baseType: !45, size: 16, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !398, file: !31, line: 709, baseType: !20, size: 8, offset: 80)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !398, file: !31, line: 710, baseType: !20, size: 8, offset: 88)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !398, file: !31, line: 711, baseType: !20, size: 8, offset: 96)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !134, file: !135, line: 83, baseType: !168, size: 64, offset: 8384)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !134, file: !135, line: 84, baseType: !34, size: 64, offset: 8448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !134, file: !135, line: 85, baseType: !253, size: 64, offset: 8512)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !134, file: !135, line: 86, baseType: !34, size: 64, offset: 8576)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !134, file: !135, line: 87, baseType: !253, size: 64, offset: 8640)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !134, file: !135, line: 88, baseType: !168, size: 64, offset: 8704)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !134, file: !135, line: 89, baseType: !168, size: 64, offset: 8768)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !134, file: !135, line: 90, baseType: !414, size: 64, offset: 8832)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !134, file: !135, line: 91, baseType: !416, size: 64, offset: 8896)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !31, line: 637, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!14, !133, !420}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !134, file: !135, line: 92, baseType: !422, size: 64, offset: 8960)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !31, line: 641, baseType: !130)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !126, file: !36, line: 152, baseType: !34, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !112, file: !36, line: 155, baseType: !16, size: 32, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !112, file: !36, line: 156, baseType: !145, size: 16, offset: 416)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !112, file: !36, line: 157, baseType: !20, size: 8, offset: 432)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !35, file: !36, line: 375, baseType: !428, size: 576)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !36, line: 122, size: 576, elements: !429)
!429 = !{!430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !428, file: !36, line: 123, baseType: !34, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !428, file: !36, line: 123, baseType: !20, size: 8, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !428, file: !36, line: 123, baseType: !20, size: 8, offset: 72)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !428, file: !36, line: 123, baseType: !45, size: 16, offset: 80)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !428, file: !36, line: 123, baseType: !20, size: 8, offset: 96)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !428, file: !36, line: 123, baseType: !20, size: 8, offset: 104)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !428, file: !36, line: 124, baseType: !45, size: 16, offset: 112)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !428, file: !36, line: 125, baseType: !24, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !428, file: !36, line: 126, baseType: !26, size: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !428, file: !36, line: 127, baseType: !414, size: 64, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !428, file: !36, line: 128, baseType: !34, size: 64, offset: 320)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !428, file: !36, line: 129, baseType: !34, size: 64, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !428, file: !36, line: 130, baseType: !29, size: 64, offset: 448)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !428, file: !36, line: 131, baseType: !20, size: 8, offset: 512)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !35, file: !36, line: 376, baseType: !445, size: 448)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !36, line: 134, size: 448, elements: !446)
!446 = !{!447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !458}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !445, file: !36, line: 135, baseType: !34, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !445, file: !36, line: 135, baseType: !20, size: 8, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !445, file: !36, line: 135, baseType: !20, size: 8, offset: 72)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !445, file: !36, line: 135, baseType: !45, size: 16, offset: 80)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !445, file: !36, line: 135, baseType: !20, size: 8, offset: 96)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !445, file: !36, line: 135, baseType: !20, size: 8, offset: 104)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !445, file: !36, line: 136, baseType: !29, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !445, file: !36, line: 137, baseType: !34, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !445, file: !36, line: 138, baseType: !34, size: 64, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !445, file: !36, line: 139, baseType: !457, size: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !15, line: 129, baseType: !26)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !445, file: !36, line: 140, baseType: !16, size: 32, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !35, file: !36, line: 377, baseType: !460, size: 320)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !36, line: 184, size: 320, elements: !461)
!461 = !{!462, !463, !464, !465, !466, !467, !471}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !460, file: !36, line: 185, baseType: !34, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !460, file: !36, line: 185, baseType: !20, size: 8, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !460, file: !36, line: 185, baseType: !20, size: 8, offset: 72)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !460, file: !36, line: 185, baseType: !45, size: 16, offset: 80)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !460, file: !36, line: 185, baseType: !20, size: 8, offset: 96)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !460, file: !36, line: 185, baseType: !468, size: 128, offset: 128)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 128, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 2)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !460, file: !36, line: 185, baseType: !34, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !35, file: !36, line: 378, baseType: !473, size: 384)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !36, line: 187, size: 384, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !473, file: !36, line: 188, baseType: !34, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !473, file: !36, line: 188, baseType: !20, size: 8, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !473, file: !36, line: 188, baseType: !20, size: 8, offset: 72)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !473, file: !36, line: 188, baseType: !45, size: 16, offset: 80)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !473, file: !36, line: 188, baseType: !20, size: 8, offset: 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !473, file: !36, line: 189, baseType: !468, size: 128, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !473, file: !36, line: 189, baseType: !34, size: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !473, file: !36, line: 189, baseType: !483, size: 64, offset: 320)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !31, line: 480, size: 576, elements: !485)
!485 = !{!486, !487, !488, !489, !497, !512, !544, !545, !546, !547, !548, !549}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !484, file: !31, line: 481, baseType: !29, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !484, file: !31, line: 482, baseType: !483, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !484, file: !31, line: 483, baseType: !483, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !484, file: !31, line: 484, baseType: !490, size: 64, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !31, line: 497, size: 256, elements: !492)
!492 = !{!493, !494, !495, !496}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !491, file: !31, line: 498, baseType: !490, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !491, file: !31, line: 499, baseType: !490, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !491, file: !31, line: 500, baseType: !483, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !491, file: !31, line: 501, baseType: !16, size: 32, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !484, file: !31, line: 485, baseType: !498, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !31, line: 466, size: 320, elements: !500)
!500 = !{!501, !506, !507, !508, !509, !510, !511}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !499, file: !31, line: 467, baseType: !502, size: 128)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !31, line: 459, size: 128, elements: !503)
!503 = !{!504, !505}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !502, file: !31, line: 460, baseType: !20, size: 8)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !502, file: !31, line: 461, baseType: !26, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !499, file: !31, line: 468, baseType: !502, size: 128, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !499, file: !31, line: 469, baseType: !45, size: 16, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !499, file: !31, line: 470, baseType: !20, size: 8, offset: 272)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !499, file: !31, line: 471, baseType: !20, size: 8, offset: 280)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !499, file: !31, line: 472, baseType: !20, size: 8, offset: 288)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !499, file: !31, line: 473, baseType: !20, size: 8, offset: 296)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !484, file: !31, line: 486, baseType: !513, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !31, line: 448, size: 192, elements: !515)
!515 = !{!516, !539, !540, !541, !542, !543}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !514, file: !31, line: 449, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !31, line: 438, size: 64, elements: !518)
!518 = !{!519, !520, !533}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !517, file: !31, line: 439, baseType: !29, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !517, file: !31, line: 440, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !31, line: 419, size: 256, elements: !523)
!523 = !{!524, !529, !530, !531, !532}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !522, file: !31, line: 420, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !15, line: 1049, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!16, !23, !16, !24}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !522, file: !31, line: 421, baseType: !24, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !522, file: !31, line: 422, baseType: !29, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !522, file: !31, line: 423, baseType: !20, size: 8, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !522, file: !31, line: 424, baseType: !20, size: 8, offset: 200)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !517, file: !31, line: 441, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !31, line: 429, size: 128, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !535, file: !31, line: 430, baseType: !29, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !535, file: !31, line: 431, baseType: !534, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !514, file: !31, line: 450, baseType: !498, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !514, file: !31, line: 451, baseType: !20, size: 8, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !514, file: !31, line: 452, baseType: !20, size: 8, offset: 136)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !514, file: !31, line: 453, baseType: !20, size: 8, offset: 144)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !514, file: !31, line: 454, baseType: !20, size: 8, offset: 152)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !484, file: !31, line: 487, baseType: !26, size: 64, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !484, file: !31, line: 488, baseType: !16, size: 32, offset: 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !484, file: !31, line: 489, baseType: !45, size: 16, offset: 480)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !484, file: !31, line: 490, baseType: !45, size: 16, offset: 496)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !484, file: !31, line: 491, baseType: !20, size: 8, offset: 512)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !484, file: !31, line: 492, baseType: !20, size: 8, offset: 520)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !35, file: !36, line: 379, baseType: !551, size: 384)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !36, line: 192, size: 384, elements: !552)
!552 = !{!553, !554, !555, !556, !557, !558, !559, !560, !561}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !551, file: !36, line: 193, baseType: !34, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !551, file: !36, line: 193, baseType: !20, size: 8, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !551, file: !36, line: 193, baseType: !20, size: 8, offset: 72)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !551, file: !36, line: 193, baseType: !45, size: 16, offset: 80)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !551, file: !36, line: 193, baseType: !20, size: 8, offset: 96)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !551, file: !36, line: 193, baseType: !468, size: 128, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !551, file: !36, line: 193, baseType: !34, size: 64, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !551, file: !36, line: 193, baseType: !16, size: 32, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !551, file: !36, line: 194, baseType: !16, size: 32, offset: 352)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !35, file: !36, line: 380, baseType: !563, size: 384)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !36, line: 197, size: 384, elements: !564)
!564 = !{!565, !566, !567, !568, !569, !570, !571, !572, !573, !574}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !563, file: !36, line: 198, baseType: !34, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !563, file: !36, line: 198, baseType: !20, size: 8, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !563, file: !36, line: 198, baseType: !20, size: 8, offset: 72)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !563, file: !36, line: 198, baseType: !45, size: 16, offset: 80)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !563, file: !36, line: 198, baseType: !20, size: 8, offset: 96)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !563, file: !36, line: 200, baseType: !20, size: 8, offset: 104)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !563, file: !36, line: 201, baseType: !20, size: 8, offset: 112)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !563, file: !36, line: 202, baseType: !468, size: 128, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !563, file: !36, line: 202, baseType: !34, size: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !563, file: !36, line: 202, baseType: !575, size: 64, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !15, line: 128, baseType: !26)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !35, file: !36, line: 381, baseType: !577, size: 320)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !36, line: 205, size: 320, elements: !578)
!578 = !{!579, !580, !581, !582, !583, !584, !585}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !577, file: !36, line: 206, baseType: !34, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !577, file: !36, line: 206, baseType: !20, size: 8, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !577, file: !36, line: 206, baseType: !20, size: 8, offset: 72)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !577, file: !36, line: 206, baseType: !45, size: 16, offset: 80)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !577, file: !36, line: 206, baseType: !20, size: 8, offset: 96)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !577, file: !36, line: 206, baseType: !468, size: 128, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !577, file: !36, line: 206, baseType: !34, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !35, file: !36, line: 382, baseType: !587, size: 384)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !36, line: 233, size: 384, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !587, file: !36, line: 234, baseType: !34, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !587, file: !36, line: 234, baseType: !20, size: 8, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !587, file: !36, line: 234, baseType: !20, size: 8, offset: 72)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !587, file: !36, line: 234, baseType: !45, size: 16, offset: 80)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !36, line: 234, baseType: !20, size: 8, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !587, file: !36, line: 234, baseType: !20, size: 8, offset: 104)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !587, file: !36, line: 234, baseType: !20, size: 8, offset: 112)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !587, file: !36, line: 234, baseType: !20, size: 8, offset: 120)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !587, file: !36, line: 234, baseType: !29, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !587, file: !36, line: 234, baseType: !16, size: 32, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !587, file: !36, line: 234, baseType: !16, size: 32, offset: 224)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !587, file: !36, line: 234, baseType: !16, size: 32, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !587, file: !36, line: 234, baseType: !20, size: 8, offset: 288)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !587, file: !36, line: 234, baseType: !20, size: 8, offset: 296)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !587, file: !36, line: 234, baseType: !34, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !35, file: !36, line: 383, baseType: !605, size: 576)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !36, line: 237, size: 576, elements: !606)
!606 = !{!607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !605, file: !36, line: 238, baseType: !34, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !605, file: !36, line: 238, baseType: !20, size: 8, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !605, file: !36, line: 238, baseType: !20, size: 8, offset: 72)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !605, file: !36, line: 238, baseType: !45, size: 16, offset: 80)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !605, file: !36, line: 238, baseType: !20, size: 8, offset: 96)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !605, file: !36, line: 238, baseType: !20, size: 8, offset: 104)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !605, file: !36, line: 238, baseType: !20, size: 8, offset: 112)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !605, file: !36, line: 238, baseType: !20, size: 8, offset: 120)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !605, file: !36, line: 238, baseType: !29, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !605, file: !36, line: 238, baseType: !16, size: 32, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !605, file: !36, line: 238, baseType: !16, size: 32, offset: 224)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !605, file: !36, line: 238, baseType: !16, size: 32, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !605, file: !36, line: 238, baseType: !20, size: 8, offset: 288)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !605, file: !36, line: 238, baseType: !20, size: 8, offset: 296)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !605, file: !36, line: 238, baseType: !45, size: 16, offset: 304)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !605, file: !36, line: 239, baseType: !34, size: 64, offset: 320)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !605, file: !36, line: 240, baseType: !83, size: 64, offset: 384)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !605, file: !36, line: 241, baseType: !45, size: 16, offset: 448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !605, file: !36, line: 242, baseType: !83, size: 64, offset: 512)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !35, file: !36, line: 384, baseType: !627, size: 384)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !36, line: 262, size: 384, elements: !628)
!628 = !{!629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !627, file: !36, line: 263, baseType: !34, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !627, file: !36, line: 263, baseType: !20, size: 8, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !627, file: !36, line: 263, baseType: !20, size: 8, offset: 72)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !627, file: !36, line: 263, baseType: !45, size: 16, offset: 80)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !627, file: !36, line: 263, baseType: !20, size: 8, offset: 96)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !627, file: !36, line: 263, baseType: !20, size: 8, offset: 104)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !627, file: !36, line: 263, baseType: !20, size: 8, offset: 112)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !627, file: !36, line: 263, baseType: !20, size: 8, offset: 120)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !627, file: !36, line: 263, baseType: !29, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !627, file: !36, line: 263, baseType: !16, size: 32, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !627, file: !36, line: 263, baseType: !16, size: 32, offset: 224)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !627, file: !36, line: 263, baseType: !16, size: 32, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !627, file: !36, line: 263, baseType: !20, size: 8, offset: 288)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !627, file: !36, line: 263, baseType: !20, size: 8, offset: 296)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !627, file: !36, line: 263, baseType: !20, size: 8, offset: 304)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !627, file: !36, line: 264, baseType: !34, size: 64, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !35, file: !36, line: 385, baseType: !646, size: 448)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !36, line: 245, size: 448, elements: !647)
!647 = !{!648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !646, file: !36, line: 246, baseType: !34, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !646, file: !36, line: 246, baseType: !20, size: 8, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !646, file: !36, line: 246, baseType: !20, size: 8, offset: 72)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !646, file: !36, line: 246, baseType: !45, size: 16, offset: 80)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !646, file: !36, line: 246, baseType: !20, size: 8, offset: 96)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !646, file: !36, line: 246, baseType: !20, size: 8, offset: 104)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !646, file: !36, line: 246, baseType: !20, size: 8, offset: 112)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !646, file: !36, line: 246, baseType: !20, size: 8, offset: 120)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !646, file: !36, line: 246, baseType: !29, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !646, file: !36, line: 246, baseType: !16, size: 32, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !646, file: !36, line: 246, baseType: !16, size: 32, offset: 224)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !646, file: !36, line: 246, baseType: !16, size: 32, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !646, file: !36, line: 246, baseType: !20, size: 8, offset: 288)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !646, file: !36, line: 246, baseType: !20, size: 8, offset: 296)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !646, file: !36, line: 246, baseType: !34, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !646, file: !36, line: 247, baseType: !34, size: 64, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !35, file: !36, line: 386, baseType: !665, size: 448)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !36, line: 250, size: 448, elements: !666)
!666 = !{!667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !665, file: !36, line: 251, baseType: !34, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !665, file: !36, line: 251, baseType: !20, size: 8, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !665, file: !36, line: 251, baseType: !20, size: 8, offset: 72)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !665, file: !36, line: 251, baseType: !45, size: 16, offset: 80)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !665, file: !36, line: 251, baseType: !20, size: 8, offset: 96)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !665, file: !36, line: 251, baseType: !20, size: 8, offset: 104)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !665, file: !36, line: 251, baseType: !20, size: 8, offset: 112)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !665, file: !36, line: 251, baseType: !20, size: 8, offset: 120)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !665, file: !36, line: 251, baseType: !29, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !665, file: !36, line: 251, baseType: !16, size: 32, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !665, file: !36, line: 251, baseType: !16, size: 32, offset: 224)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !665, file: !36, line: 251, baseType: !16, size: 32, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !665, file: !36, line: 251, baseType: !20, size: 8, offset: 288)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !665, file: !36, line: 251, baseType: !20, size: 8, offset: 296)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !665, file: !36, line: 256, baseType: !34, size: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !665, file: !36, line: 257, baseType: !34, size: 64, offset: 384)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !35, file: !36, line: 387, baseType: !684, size: 512)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !36, line: 273, size: 512, elements: !685)
!685 = !{!686, !687, !688, !689, !690, !691, !692, !693, !694, !695}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !684, file: !36, line: 274, baseType: !34, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !684, file: !36, line: 274, baseType: !20, size: 8, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !684, file: !36, line: 274, baseType: !20, size: 8, offset: 72)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !684, file: !36, line: 274, baseType: !45, size: 16, offset: 80)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !684, file: !36, line: 274, baseType: !20, size: 8, offset: 96)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !684, file: !36, line: 274, baseType: !29, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !684, file: !36, line: 275, baseType: !16, size: 32, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !684, file: !36, line: 276, baseType: !362, size: 64, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !684, file: !36, line: 277, baseType: !24, size: 64, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !684, file: !36, line: 278, baseType: !468, size: 128, offset: 384)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !35, file: !36, line: 388, baseType: !697, size: 512)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !36, line: 281, size: 512, elements: !698)
!698 = !{!699, !700, !701, !702, !703, !704, !705, !706, !712, !713, !714, !720, !721}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !697, file: !36, line: 282, baseType: !34, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !697, file: !36, line: 282, baseType: !20, size: 8, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !697, file: !36, line: 282, baseType: !20, size: 8, offset: 72)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !697, file: !36, line: 282, baseType: !45, size: 16, offset: 80)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !697, file: !36, line: 282, baseType: !20, size: 8, offset: 96)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !697, file: !36, line: 282, baseType: !20, size: 8, offset: 104)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !697, file: !36, line: 283, baseType: !20, size: 8, offset: 112)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !697, file: !36, line: 284, baseType: !707, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !15, line: 1084, baseType: !708)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!14, !16, !457, !16, !711, !24, !24}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !697, file: !36, line: 285, baseType: !29, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !697, file: !36, line: 286, baseType: !24, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !697, file: !36, line: 287, baseType: !715, size: 64, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !15, line: 1102, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!14, !23, !16, !24, !719}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !697, file: !36, line: 288, baseType: !34, size: 64, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !697, file: !36, line: 289, baseType: !34, size: 64, offset: 448)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !35, file: !36, line: 389, baseType: !723, size: 512)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !36, line: 307, size: 512, elements: !724)
!724 = !{!725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !723, file: !36, line: 308, baseType: !34, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !723, file: !36, line: 308, baseType: !20, size: 8, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !723, file: !36, line: 308, baseType: !20, size: 8, offset: 72)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !723, file: !36, line: 308, baseType: !45, size: 16, offset: 80)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !723, file: !36, line: 308, baseType: !20, size: 8, offset: 96)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !723, file: !36, line: 308, baseType: !20, size: 8, offset: 104)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !723, file: !36, line: 309, baseType: !20, size: 8, offset: 112)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !723, file: !36, line: 310, baseType: !20, size: 8, offset: 120)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !723, file: !36, line: 311, baseType: !24, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !723, file: !36, line: 312, baseType: !29, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !723, file: !36, line: 313, baseType: !98, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !723, file: !36, line: 314, baseType: !83, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !723, file: !36, line: 315, baseType: !83, size: 64, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !723, file: !36, line: 316, baseType: !16, size: 32, offset: 448)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !35, file: !36, line: 390, baseType: !740, size: 448)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !36, line: 340, size: 448, elements: !741)
!741 = !{!742, !743, !744, !745, !746, !747, !748, !749, !750, !751}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !740, file: !36, line: 341, baseType: !34, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !740, file: !36, line: 341, baseType: !20, size: 8, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !740, file: !36, line: 341, baseType: !20, size: 8, offset: 72)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !740, file: !36, line: 341, baseType: !45, size: 16, offset: 80)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !740, file: !36, line: 341, baseType: !20, size: 8, offset: 96)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !740, file: !36, line: 341, baseType: !29, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !740, file: !36, line: 342, baseType: !29, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !740, file: !36, line: 343, baseType: !24, size: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !740, file: !36, line: 344, baseType: !83, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !740, file: !36, line: 345, baseType: !16, size: 32, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !35, file: !36, line: 391, baseType: !753, size: 256)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !36, line: 350, size: 256, elements: !754)
!754 = !{!755, !756, !757, !758, !759, !760, !765}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !753, file: !36, line: 351, baseType: !34, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !753, file: !36, line: 351, baseType: !20, size: 8, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !753, file: !36, line: 351, baseType: !20, size: 8, offset: 72)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !753, file: !36, line: 351, baseType: !45, size: 16, offset: 80)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !753, file: !36, line: 351, baseType: !20, size: 8, offset: 96)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !753, file: !36, line: 351, baseType: !761, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !15, line: 1055, baseType: !762)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !23, !24}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !753, file: !36, line: 352, baseType: !24, size: 64, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !35, file: !36, line: 392, baseType: !767, size: 192)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !36, line: 357, size: 192, elements: !768)
!768 = !{!769, !770, !771, !772, !773, !774}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !767, file: !36, line: 358, baseType: !34, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !767, file: !36, line: 358, baseType: !20, size: 8, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !767, file: !36, line: 358, baseType: !20, size: 8, offset: 72)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !767, file: !36, line: 358, baseType: !45, size: 16, offset: 80)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !36, line: 358, baseType: !20, size: 8, offset: 96)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !767, file: !36, line: 358, baseType: !34, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !35, file: !36, line: 399, baseType: !30, size: 384)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !30, file: !31, line: 135, baseType: !20, size: 8, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !30, file: !31, line: 136, baseType: !20, size: 8, offset: 72)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !30, file: !31, line: 137, baseType: !45, size: 16, offset: 80)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !30, file: !31, line: 138, baseType: !780, size: 32, offset: 96)
!780 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !781, line: 327, size: 32, elements: !782)
!781 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !780, file: !781, line: 328, baseType: !16, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !780, file: !781, line: 329, baseType: !227, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !30, file: !31, line: 139, baseType: !29, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !30, file: !31, line: 140, baseType: !29, size: 64, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !30, file: !31, line: 141, baseType: !29, size: 64, offset: 256)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !30, file: !31, line: 142, baseType: !145, size: 16, offset: 320)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !791, line: 148, baseType: !7)
!791 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!792 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!793 = !{!0}
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 64, elements: !344)
!795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!796 = !{!"rsp"}
!797 = !{i32 7, !"Dwarf Version", i32 4}
!798 = !{i32 2, !"Debug Info Version", i32 3}
!799 = !{i32 1, !"wchar_size", i32 2}
!800 = !{i32 1, !"Code Model", i32 2}
!801 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!802 = distinct !DISubprogram(name: "acpi_update_all_gpes", scope: !3, file: !3, line: 43, type: !803, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!803 = !DISubroutineType(types: !804)
!804 = !{!14}
!805 = !{}
!806 = !DILocalVariable(name: "status", scope: !802, file: !3, line: 45, type: !14)
!807 = !DILocation(line: 45, column: 14, scope: !802)
!808 = !DILocalVariable(name: "is_polling_needed", scope: !802, file: !3, line: 46, type: !20)
!809 = !DILocation(line: 46, column: 5, scope: !802)
!810 = !DILocation(line: 50, column: 11, scope: !802)
!811 = !DILocation(line: 50, column: 9, scope: !802)
!812 = !DILocation(line: 51, column: 6, scope: !813)
!813 = distinct !DILexicalBlock(scope: !802, file: !3, line: 51, column: 6)
!814 = !DILocation(line: 51, column: 6, scope: !802)
!815 = !DILocation(line: 52, column: 3, scope: !816)
!816 = distinct !DILexicalBlock(scope: !813, file: !3, line: 51, column: 28)
!817 = !DILocation(line: 55, column: 6, scope: !818)
!818 = distinct !DILexicalBlock(scope: !802, file: !3, line: 55, column: 6)
!819 = !DILocation(line: 55, column: 6, scope: !802)
!820 = !DILocation(line: 56, column: 3, scope: !821)
!821 = distinct !DILexicalBlock(scope: !818, file: !3, line: 55, column: 37)
!822 = !DILocation(line: 59, column: 11, scope: !802)
!823 = !DILocation(line: 59, column: 9, scope: !802)
!824 = !DILocation(line: 61, column: 6, scope: !825)
!825 = distinct !DILexicalBlock(scope: !802, file: !3, line: 61, column: 6)
!826 = !DILocation(line: 61, column: 6, scope: !802)
!827 = !DILocation(line: 62, column: 33, scope: !828)
!828 = distinct !DILexicalBlock(scope: !825, file: !3, line: 61, column: 28)
!829 = !DILocation(line: 63, column: 2, scope: !828)
!830 = !DILabel(scope: !802, name: "unlock_and_exit", file: !3, line: 65)
!831 = !DILocation(line: 65, column: 1, scope: !802)
!832 = !DILocation(line: 66, column: 8, scope: !802)
!833 = !DILocation(line: 68, column: 6, scope: !834)
!834 = distinct !DILexicalBlock(scope: !802, file: !3, line: 68, column: 6)
!835 = !DILocation(line: 68, column: 24, scope: !834)
!836 = !DILocation(line: 68, column: 27, scope: !834)
!837 = !DILocation(line: 68, column: 6, scope: !802)
!838 = !DILocation(line: 72, column: 22, scope: !839)
!839 = distinct !DILexicalBlock(scope: !834, file: !3, line: 68, column: 58)
!840 = !DILocation(line: 72, column: 3, scope: !839)
!841 = !DILocation(line: 73, column: 2, scope: !839)
!842 = !DILocation(line: 74, column: 2, scope: !802)
!843 = !DILocation(line: 75, column: 1, scope: !802)
!844 = distinct !DISubprogram(name: "acpi_enable_gpe", scope: !3, file: !3, line: 92, type: !845, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!845 = !DISubroutineType(types: !846)
!846 = !{!14, !23, !16}
!847 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !844, file: !3, line: 92, type: !23)
!848 = !DILocation(line: 92, column: 41, scope: !844)
!849 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !844, file: !3, line: 92, type: !16)
!850 = !DILocation(line: 92, column: 57, scope: !844)
!851 = !DILocalVariable(name: "status", scope: !844, file: !3, line: 94, type: !14)
!852 = !DILocation(line: 94, column: 14, scope: !844)
!853 = !DILocalVariable(name: "gpe_event_info", scope: !844, file: !3, line: 95, type: !513)
!854 = !DILocation(line: 95, column: 30, scope: !844)
!855 = !DILocalVariable(name: "flags", scope: !844, file: !3, line: 96, type: !792)
!856 = !DILocation(line: 96, column: 17, scope: !844)
!857 = !DILocation(line: 100, column: 31, scope: !844)
!858 = !DILocation(line: 100, column: 10, scope: !844)
!859 = !DILocation(line: 100, column: 8, scope: !844)
!860 = !DILocation(line: 107, column: 46, scope: !844)
!861 = !DILocation(line: 107, column: 58, scope: !844)
!862 = !DILocation(line: 107, column: 19, scope: !844)
!863 = !DILocation(line: 107, column: 17, scope: !844)
!864 = !DILocation(line: 108, column: 6, scope: !865)
!865 = distinct !DILexicalBlock(scope: !844, file: !3, line: 108, column: 6)
!866 = !DILocation(line: 108, column: 6, scope: !844)
!867 = !DILocation(line: 109, column: 7, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !3, line: 109, column: 7)
!869 = distinct !DILexicalBlock(scope: !865, file: !3, line: 108, column: 22)
!870 = !DILocation(line: 109, column: 53, scope: !868)
!871 = !DILocation(line: 109, column: 7, scope: !869)
!872 = !DILocation(line: 111, column: 39, scope: !873)
!873 = distinct !DILexicalBlock(scope: !868, file: !3, line: 110, column: 31)
!874 = !DILocation(line: 111, column: 13, scope: !873)
!875 = !DILocation(line: 111, column: 11, scope: !873)
!876 = !DILocation(line: 112, column: 8, scope: !877)
!877 = distinct !DILexicalBlock(scope: !873, file: !3, line: 112, column: 8)
!878 = !DILocation(line: 112, column: 29, scope: !877)
!879 = !DILocation(line: 113, column: 8, scope: !877)
!880 = !DILocation(line: 112, column: 8, scope: !873)
!881 = !DILocation(line: 117, column: 26, scope: !882)
!882 = distinct !DILexicalBlock(scope: !877, file: !3, line: 113, column: 52)
!883 = !DILocation(line: 117, column: 45, scope: !882)
!884 = !DILocation(line: 117, column: 5, scope: !882)
!885 = !DILocation(line: 118, column: 30, scope: !882)
!886 = !DILocation(line: 119, column: 9, scope: !882)
!887 = !DILocation(line: 120, column: 9, scope: !882)
!888 = !DILocation(line: 118, column: 11, scope: !882)
!889 = !DILocation(line: 121, column: 34, scope: !882)
!890 = !DILocation(line: 121, column: 13, scope: !882)
!891 = !DILocation(line: 121, column: 11, scope: !882)
!892 = !DILocation(line: 122, column: 4, scope: !882)
!893 = !DILocation(line: 123, column: 3, scope: !873)
!894 = !DILocation(line: 124, column: 11, scope: !895)
!895 = distinct !DILexicalBlock(scope: !868, file: !3, line: 123, column: 10)
!896 = !DILocation(line: 126, column: 2, scope: !869)
!897 = !DILocation(line: 128, column: 23, scope: !844)
!898 = !DILocation(line: 128, column: 42, scope: !844)
!899 = !DILocation(line: 128, column: 2, scope: !844)
!900 = !DILocation(line: 129, column: 2, scope: !844)
!901 = distinct !DISubprogram(name: "acpi_disable_gpe", scope: !3, file: !3, line: 148, type: !845, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!902 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !901, file: !3, line: 148, type: !23)
!903 = !DILocation(line: 148, column: 42, scope: !901)
!904 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !901, file: !3, line: 148, type: !16)
!905 = !DILocation(line: 148, column: 58, scope: !901)
!906 = !DILocalVariable(name: "status", scope: !901, file: !3, line: 150, type: !14)
!907 = !DILocation(line: 150, column: 14, scope: !901)
!908 = !DILocalVariable(name: "gpe_event_info", scope: !901, file: !3, line: 151, type: !513)
!909 = !DILocation(line: 151, column: 30, scope: !901)
!910 = !DILocalVariable(name: "flags", scope: !901, file: !3, line: 152, type: !792)
!911 = !DILocation(line: 152, column: 17, scope: !901)
!912 = !DILocation(line: 156, column: 31, scope: !901)
!913 = !DILocation(line: 156, column: 10, scope: !901)
!914 = !DILocation(line: 156, column: 8, scope: !901)
!915 = !DILocation(line: 160, column: 46, scope: !901)
!916 = !DILocation(line: 160, column: 58, scope: !901)
!917 = !DILocation(line: 160, column: 19, scope: !901)
!918 = !DILocation(line: 160, column: 17, scope: !901)
!919 = !DILocation(line: 161, column: 6, scope: !920)
!920 = distinct !DILexicalBlock(scope: !901, file: !3, line: 161, column: 6)
!921 = !DILocation(line: 161, column: 6, scope: !901)
!922 = !DILocation(line: 162, column: 41, scope: !923)
!923 = distinct !DILexicalBlock(scope: !920, file: !3, line: 161, column: 22)
!924 = !DILocation(line: 162, column: 12, scope: !923)
!925 = !DILocation(line: 162, column: 10, scope: !923)
!926 = !DILocation(line: 163, column: 2, scope: !923)
!927 = !DILocation(line: 165, column: 23, scope: !901)
!928 = !DILocation(line: 165, column: 42, scope: !901)
!929 = !DILocation(line: 165, column: 2, scope: !901)
!930 = !DILocation(line: 166, column: 2, scope: !901)
!931 = distinct !DISubprogram(name: "acpi_set_gpe", scope: !3, file: !3, line: 199, type: !932, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!932 = !DISubroutineType(types: !933)
!933 = !{!14, !23, !16, !20}
!934 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !931, file: !3, line: 199, type: !23)
!935 = !DILocation(line: 199, column: 38, scope: !931)
!936 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !931, file: !3, line: 199, type: !16)
!937 = !DILocation(line: 199, column: 54, scope: !931)
!938 = !DILocalVariable(name: "action", arg: 3, scope: !931, file: !3, line: 199, type: !20)
!939 = !DILocation(line: 199, column: 69, scope: !931)
!940 = !DILocalVariable(name: "gpe_event_info", scope: !931, file: !3, line: 201, type: !513)
!941 = !DILocation(line: 201, column: 30, scope: !931)
!942 = !DILocalVariable(name: "status", scope: !931, file: !3, line: 202, type: !14)
!943 = !DILocation(line: 202, column: 14, scope: !931)
!944 = !DILocalVariable(name: "flags", scope: !931, file: !3, line: 203, type: !792)
!945 = !DILocation(line: 203, column: 17, scope: !931)
!946 = !DILocation(line: 207, column: 31, scope: !931)
!947 = !DILocation(line: 207, column: 10, scope: !931)
!948 = !DILocation(line: 207, column: 8, scope: !931)
!949 = !DILocation(line: 211, column: 46, scope: !931)
!950 = !DILocation(line: 211, column: 58, scope: !931)
!951 = !DILocation(line: 211, column: 19, scope: !931)
!952 = !DILocation(line: 211, column: 17, scope: !931)
!953 = !DILocation(line: 212, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !931, file: !3, line: 212, column: 6)
!955 = !DILocation(line: 212, column: 6, scope: !931)
!956 = !DILocation(line: 213, column: 10, scope: !957)
!957 = distinct !DILexicalBlock(scope: !954, file: !3, line: 212, column: 23)
!958 = !DILocation(line: 214, column: 3, scope: !957)
!959 = !DILocation(line: 219, column: 10, scope: !931)
!960 = !DILocation(line: 219, column: 2, scope: !931)
!961 = !DILocation(line: 222, column: 32, scope: !962)
!962 = distinct !DILexicalBlock(scope: !931, file: !3, line: 219, column: 18)
!963 = !DILocation(line: 222, column: 12, scope: !962)
!964 = !DILocation(line: 222, column: 10, scope: !962)
!965 = !DILocation(line: 223, column: 3, scope: !962)
!966 = !DILocation(line: 223, column: 19, scope: !962)
!967 = !DILocation(line: 223, column: 40, scope: !962)
!968 = !DILocation(line: 224, column: 3, scope: !962)
!969 = !DILocation(line: 228, column: 32, scope: !962)
!970 = !DILocation(line: 228, column: 12, scope: !962)
!971 = !DILocation(line: 228, column: 10, scope: !962)
!972 = !DILocation(line: 229, column: 3, scope: !962)
!973 = !DILocation(line: 229, column: 19, scope: !962)
!974 = !DILocation(line: 229, column: 40, scope: !962)
!975 = !DILocation(line: 230, column: 3, scope: !962)
!976 = !DILocation(line: 234, column: 10, scope: !962)
!977 = !DILocation(line: 235, column: 3, scope: !962)
!978 = !DILocation(line: 236, column: 2, scope: !962)
!979 = !DILabel(scope: !931, name: "unlock_and_exit", file: !3, line: 238)
!980 = !DILocation(line: 238, column: 1, scope: !931)
!981 = !DILocation(line: 239, column: 23, scope: !931)
!982 = !DILocation(line: 239, column: 42, scope: !931)
!983 = !DILocation(line: 239, column: 2, scope: !931)
!984 = !DILocation(line: 240, column: 2, scope: !931)
!985 = distinct !DISubprogram(name: "acpi_mask_gpe", scope: !3, file: !3, line: 259, type: !932, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!986 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !985, file: !3, line: 259, type: !23)
!987 = !DILocation(line: 259, column: 39, scope: !985)
!988 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !985, file: !3, line: 259, type: !16)
!989 = !DILocation(line: 259, column: 55, scope: !985)
!990 = !DILocalVariable(name: "is_masked", arg: 3, scope: !985, file: !3, line: 259, type: !20)
!991 = !DILocation(line: 259, column: 70, scope: !985)
!992 = !DILocalVariable(name: "gpe_event_info", scope: !985, file: !3, line: 261, type: !513)
!993 = !DILocation(line: 261, column: 30, scope: !985)
!994 = !DILocalVariable(name: "status", scope: !985, file: !3, line: 262, type: !14)
!995 = !DILocation(line: 262, column: 14, scope: !985)
!996 = !DILocalVariable(name: "flags", scope: !985, file: !3, line: 263, type: !792)
!997 = !DILocation(line: 263, column: 17, scope: !985)
!998 = !DILocation(line: 267, column: 31, scope: !985)
!999 = !DILocation(line: 267, column: 10, scope: !985)
!1000 = !DILocation(line: 267, column: 8, scope: !985)
!1001 = !DILocation(line: 271, column: 46, scope: !985)
!1002 = !DILocation(line: 271, column: 58, scope: !985)
!1003 = !DILocation(line: 271, column: 19, scope: !985)
!1004 = !DILocation(line: 271, column: 17, scope: !985)
!1005 = !DILocation(line: 272, column: 7, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !985, file: !3, line: 272, column: 6)
!1007 = !DILocation(line: 272, column: 6, scope: !985)
!1008 = !DILocation(line: 273, column: 10, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 272, column: 23)
!1010 = !DILocation(line: 274, column: 3, scope: !1009)
!1011 = !DILocation(line: 277, column: 28, scope: !985)
!1012 = !DILocation(line: 277, column: 44, scope: !985)
!1013 = !DILocation(line: 277, column: 11, scope: !985)
!1014 = !DILocation(line: 277, column: 9, scope: !985)
!1015 = !DILocation(line: 277, column: 2, scope: !985)
!1016 = !DILabel(scope: !985, name: "unlock_and_exit", file: !3, line: 279)
!1017 = !DILocation(line: 279, column: 1, scope: !985)
!1018 = !DILocation(line: 280, column: 23, scope: !985)
!1019 = !DILocation(line: 280, column: 42, scope: !985)
!1020 = !DILocation(line: 280, column: 2, scope: !985)
!1021 = !DILocation(line: 281, column: 2, scope: !985)
!1022 = distinct !DISubprogram(name: "acpi_mark_gpe_for_wake", scope: !3, file: !3, line: 306, type: !845, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1023 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1022, file: !3, line: 306, type: !23)
!1024 = !DILocation(line: 306, column: 48, scope: !1022)
!1025 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !1022, file: !3, line: 306, type: !16)
!1026 = !DILocation(line: 306, column: 64, scope: !1022)
!1027 = !DILocalVariable(name: "gpe_event_info", scope: !1022, file: !3, line: 308, type: !513)
!1028 = !DILocation(line: 308, column: 30, scope: !1022)
!1029 = !DILocalVariable(name: "status", scope: !1022, file: !3, line: 309, type: !14)
!1030 = !DILocation(line: 309, column: 14, scope: !1022)
!1031 = !DILocalVariable(name: "flags", scope: !1022, file: !3, line: 310, type: !792)
!1032 = !DILocation(line: 310, column: 17, scope: !1022)
!1033 = !DILocation(line: 314, column: 31, scope: !1022)
!1034 = !DILocation(line: 314, column: 10, scope: !1022)
!1035 = !DILocation(line: 314, column: 8, scope: !1022)
!1036 = !DILocation(line: 318, column: 46, scope: !1022)
!1037 = !DILocation(line: 318, column: 58, scope: !1022)
!1038 = !DILocation(line: 318, column: 19, scope: !1022)
!1039 = !DILocation(line: 318, column: 17, scope: !1022)
!1040 = !DILocation(line: 319, column: 6, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 319, column: 6)
!1042 = !DILocation(line: 319, column: 6, scope: !1022)
!1043 = !DILocation(line: 323, column: 3, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 319, column: 22)
!1045 = !DILocation(line: 323, column: 19, scope: !1044)
!1046 = !DILocation(line: 323, column: 25, scope: !1044)
!1047 = !DILocation(line: 324, column: 10, scope: !1044)
!1048 = !DILocation(line: 325, column: 2, scope: !1044)
!1049 = !DILocation(line: 327, column: 23, scope: !1022)
!1050 = !DILocation(line: 327, column: 42, scope: !1022)
!1051 = !DILocation(line: 327, column: 2, scope: !1022)
!1052 = !DILocation(line: 328, column: 2, scope: !1022)
!1053 = distinct !DISubprogram(name: "acpi_setup_gpe_for_wake", scope: !3, file: !3, line: 352, type: !1054, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!14, !23, !23, !16}
!1056 = !DILocalVariable(name: "wake_device", arg: 1, scope: !1053, file: !3, line: 352, type: !23)
!1057 = !DILocation(line: 352, column: 37, scope: !1053)
!1058 = !DILocalVariable(name: "gpe_device", arg: 2, scope: !1053, file: !3, line: 353, type: !23)
!1059 = !DILocation(line: 353, column: 16, scope: !1053)
!1060 = !DILocalVariable(name: "gpe_number", arg: 3, scope: !1053, file: !3, line: 353, type: !16)
!1061 = !DILocation(line: 353, column: 32, scope: !1053)
!1062 = !DILocalVariable(name: "status", scope: !1053, file: !3, line: 355, type: !14)
!1063 = !DILocation(line: 355, column: 14, scope: !1053)
!1064 = !DILocalVariable(name: "gpe_event_info", scope: !1053, file: !3, line: 356, type: !513)
!1065 = !DILocation(line: 356, column: 30, scope: !1053)
!1066 = !DILocalVariable(name: "device_node", scope: !1053, file: !3, line: 357, type: !29)
!1067 = !DILocation(line: 357, column: 30, scope: !1053)
!1068 = !DILocalVariable(name: "notify", scope: !1053, file: !3, line: 358, type: !534)
!1069 = !DILocation(line: 358, column: 31, scope: !1053)
!1070 = !DILocalVariable(name: "new_notify", scope: !1053, file: !3, line: 359, type: !534)
!1071 = !DILocation(line: 359, column: 31, scope: !1053)
!1072 = !DILocalVariable(name: "flags", scope: !1053, file: !3, line: 360, type: !792)
!1073 = !DILocation(line: 360, column: 17, scope: !1053)
!1074 = !DILocation(line: 366, column: 7, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 366, column: 6)
!1076 = !DILocation(line: 366, column: 6, scope: !1053)
!1077 = !DILocation(line: 371, column: 3, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 366, column: 20)
!1079 = !DILocation(line: 376, column: 6, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 376, column: 6)
!1081 = !DILocation(line: 376, column: 18, scope: !1080)
!1082 = !DILocation(line: 376, column: 6, scope: !1053)
!1083 = !DILocation(line: 377, column: 17, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 376, column: 39)
!1085 = !DILocation(line: 377, column: 15, scope: !1084)
!1086 = !DILocation(line: 378, column: 2, scope: !1084)
!1087 = !DILocation(line: 380, column: 7, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 378, column: 9)
!1089 = !DILocation(line: 379, column: 15, scope: !1088)
!1090 = !DILocation(line: 385, column: 6, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 385, column: 6)
!1092 = !DILocation(line: 385, column: 19, scope: !1091)
!1093 = !DILocation(line: 385, column: 24, scope: !1091)
!1094 = !DILocation(line: 385, column: 6, scope: !1053)
!1095 = !DILocation(line: 386, column: 3, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 385, column: 45)
!1097 = !DILocation(line: 394, column: 15, scope: !1053)
!1098 = !DILocation(line: 394, column: 13, scope: !1053)
!1099 = !DILocation(line: 395, column: 7, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 395, column: 6)
!1101 = !DILocation(line: 395, column: 6, scope: !1053)
!1102 = !DILocation(line: 396, column: 3, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 395, column: 19)
!1104 = !DILocation(line: 399, column: 31, scope: !1053)
!1105 = !DILocation(line: 399, column: 10, scope: !1053)
!1106 = !DILocation(line: 399, column: 8, scope: !1053)
!1107 = !DILocation(line: 403, column: 46, scope: !1053)
!1108 = !DILocation(line: 403, column: 58, scope: !1053)
!1109 = !DILocation(line: 403, column: 19, scope: !1053)
!1110 = !DILocation(line: 403, column: 17, scope: !1053)
!1111 = !DILocation(line: 404, column: 7, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 404, column: 6)
!1113 = !DILocation(line: 404, column: 6, scope: !1053)
!1114 = !DILocation(line: 405, column: 10, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 404, column: 23)
!1116 = !DILocation(line: 406, column: 3, scope: !1115)
!1117 = !DILocation(line: 415, column: 6, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 415, column: 6)
!1119 = !DILocation(line: 415, column: 52, scope: !1118)
!1120 = !DILocation(line: 415, column: 6, scope: !1053)
!1121 = !DILocation(line: 421, column: 3, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 416, column: 30)
!1123 = !DILocation(line: 421, column: 19, scope: !1122)
!1124 = !DILocation(line: 421, column: 25, scope: !1122)
!1125 = !DILocation(line: 423, column: 2, scope: !1122)
!1126 = !DILocation(line: 423, column: 13, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 423, column: 13)
!1128 = !DILocation(line: 423, column: 29, scope: !1127)
!1129 = !DILocation(line: 423, column: 35, scope: !1127)
!1130 = !DILocation(line: 423, column: 13, scope: !1118)
!1131 = !DILocation(line: 429, column: 38, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 423, column: 60)
!1133 = !DILocation(line: 429, column: 9, scope: !1132)
!1134 = !DILocation(line: 430, column: 3, scope: !1132)
!1135 = !DILocation(line: 430, column: 19, scope: !1132)
!1136 = !DILocation(line: 430, column: 25, scope: !1132)
!1137 = !DILocation(line: 431, column: 2, scope: !1132)
!1138 = !DILocation(line: 437, column: 6, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 437, column: 6)
!1140 = !DILocation(line: 437, column: 52, scope: !1139)
!1141 = !DILocation(line: 437, column: 6, scope: !1053)
!1142 = !DILocation(line: 442, column: 12, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 438, column: 32)
!1144 = !DILocation(line: 442, column: 28, scope: !1143)
!1145 = !DILocation(line: 442, column: 37, scope: !1143)
!1146 = !DILocation(line: 442, column: 10, scope: !1143)
!1147 = !DILocation(line: 443, column: 3, scope: !1143)
!1148 = !DILocation(line: 443, column: 10, scope: !1143)
!1149 = !DILocation(line: 444, column: 8, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 444, column: 8)
!1151 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 443, column: 18)
!1152 = !DILocation(line: 444, column: 16, scope: !1150)
!1153 = !DILocation(line: 444, column: 31, scope: !1150)
!1154 = !DILocation(line: 444, column: 28, scope: !1150)
!1155 = !DILocation(line: 444, column: 8, scope: !1151)
!1156 = !DILocation(line: 445, column: 12, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 444, column: 44)
!1158 = !DILocation(line: 446, column: 5, scope: !1157)
!1159 = !DILocation(line: 448, column: 13, scope: !1151)
!1160 = !DILocation(line: 448, column: 21, scope: !1151)
!1161 = !DILocation(line: 448, column: 11, scope: !1151)
!1162 = distinct !{!1162, !1147, !1163}
!1163 = !DILocation(line: 449, column: 3, scope: !1143)
!1164 = !DILocation(line: 453, column: 29, scope: !1143)
!1165 = !DILocation(line: 453, column: 3, scope: !1143)
!1166 = !DILocation(line: 453, column: 15, scope: !1143)
!1167 = !DILocation(line: 453, column: 27, scope: !1143)
!1168 = !DILocation(line: 454, column: 22, scope: !1143)
!1169 = !DILocation(line: 454, column: 38, scope: !1143)
!1170 = !DILocation(line: 454, column: 47, scope: !1143)
!1171 = !DILocation(line: 454, column: 3, scope: !1143)
!1172 = !DILocation(line: 454, column: 15, scope: !1143)
!1173 = !DILocation(line: 454, column: 20, scope: !1143)
!1174 = !DILocation(line: 455, column: 42, scope: !1143)
!1175 = !DILocation(line: 455, column: 3, scope: !1143)
!1176 = !DILocation(line: 455, column: 19, scope: !1143)
!1177 = !DILocation(line: 455, column: 28, scope: !1143)
!1178 = !DILocation(line: 455, column: 40, scope: !1143)
!1179 = !DILocation(line: 456, column: 14, scope: !1143)
!1180 = !DILocation(line: 457, column: 2, scope: !1143)
!1181 = !DILocation(line: 461, column: 2, scope: !1053)
!1182 = !DILocation(line: 461, column: 18, scope: !1053)
!1183 = !DILocation(line: 461, column: 24, scope: !1053)
!1184 = !DILocation(line: 462, column: 9, scope: !1053)
!1185 = !DILocation(line: 462, column: 2, scope: !1053)
!1186 = !DILabel(scope: !1053, name: "unlock_and_exit", file: !3, line: 464)
!1187 = !DILocation(line: 464, column: 1, scope: !1053)
!1188 = !DILocation(line: 465, column: 23, scope: !1053)
!1189 = !DILocation(line: 465, column: 42, scope: !1053)
!1190 = !DILocation(line: 465, column: 2, scope: !1053)
!1191 = !DILocation(line: 469, column: 6, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 469, column: 6)
!1193 = !DILocation(line: 469, column: 6, scope: !1053)
!1194 = !DILocation(line: 470, column: 3, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 469, column: 18)
!1196 = !DILocation(line: 471, column: 2, scope: !1195)
!1197 = !DILocation(line: 472, column: 2, scope: !1053)
!1198 = !DILocation(line: 473, column: 1, scope: !1053)
!1199 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1200, file: !1200, line: 55, type: !1201, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1200 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!24, !25}
!1203 = !DILocalVariable(name: "flags", arg: 1, scope: !1204, file: !1205, line: 162, type: !792)
!1204 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1205, file: !1205, line: 162, type: !1206, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1205 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!1208, !792}
!1208 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1209 = !DILocation(line: 162, column: 67, scope: !1204, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 57, column: 23, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !1200, line: 57, column: 23)
!1212 = distinct !DILexicalBlock(scope: !1199, file: !1200, line: 57, column: 23)
!1213 = !DILocalVariable(name: "size", arg: 1, scope: !1199, file: !1200, line: 55, type: !25)
!1214 = !DILocation(line: 55, column: 55, scope: !1199)
!1215 = !DILocation(line: 57, column: 17, scope: !1199)
!1216 = !DILocalVariable(name: "_flags", scope: !1212, file: !1200, line: 57, type: !792)
!1217 = !DILocation(line: 57, column: 23, scope: !1212)
!1218 = !DILocalVariable(name: "__dummy", scope: !1219, file: !1200, line: 57, type: !792)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !1200, line: 57, column: 23)
!1220 = distinct !DILexicalBlock(scope: !1212, file: !1200, line: 57, column: 23)
!1221 = !DILocation(line: 57, column: 23, scope: !1219)
!1222 = !DILocalVariable(name: "__dummy2", scope: !1219, file: !1200, line: 57, type: !792)
!1223 = !DILocation(line: 57, column: 23, scope: !1220)
!1224 = !DILocalVariable(name: "__dummy", scope: !1225, file: !1200, line: 57, type: !792)
!1225 = distinct !DILexicalBlock(scope: !1211, file: !1200, line: 57, column: 23)
!1226 = !DILocation(line: 57, column: 23, scope: !1225)
!1227 = !DILocalVariable(name: "__dummy2", scope: !1225, file: !1200, line: 57, type: !792)
!1228 = !DILocation(line: 57, column: 23, scope: !1211)
!1229 = !DILocation(line: 164, column: 11, scope: !1204, inlinedAt: !1210)
!1230 = !DILocation(line: 164, column: 17, scope: !1204, inlinedAt: !1210)
!1231 = !DILocation(line: 164, column: 9, scope: !1204, inlinedAt: !1210)
!1232 = !DILocation(line: 57, column: 23, scope: !1199)
!1233 = !DILocation(line: 57, column: 9, scope: !1199)
!1234 = !DILocation(line: 57, column: 2, scope: !1199)
!1235 = distinct !DISubprogram(name: "acpi_os_free", scope: !1200, file: !1200, line: 60, type: !1236, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{null, !24}
!1238 = !DILocalVariable(name: "memory", arg: 1, scope: !1235, file: !1200, line: 60, type: !24)
!1239 = !DILocation(line: 60, column: 39, scope: !1235)
!1240 = !DILocation(line: 62, column: 8, scope: !1235)
!1241 = !DILocation(line: 62, column: 2, scope: !1235)
!1242 = !DILocation(line: 63, column: 1, scope: !1235)
!1243 = distinct !DISubprogram(name: "acpi_set_gpe_wake_mask", scope: !3, file: !3, line: 492, type: !932, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1244 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1243, file: !3, line: 492, type: !23)
!1245 = !DILocation(line: 492, column: 36, scope: !1243)
!1246 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !1243, file: !3, line: 492, type: !16)
!1247 = !DILocation(line: 492, column: 52, scope: !1243)
!1248 = !DILocalVariable(name: "action", arg: 3, scope: !1243, file: !3, line: 492, type: !20)
!1249 = !DILocation(line: 492, column: 67, scope: !1243)
!1250 = !DILocalVariable(name: "status", scope: !1243, file: !3, line: 494, type: !14)
!1251 = !DILocation(line: 494, column: 14, scope: !1243)
!1252 = !DILocalVariable(name: "gpe_event_info", scope: !1243, file: !3, line: 495, type: !513)
!1253 = !DILocation(line: 495, column: 30, scope: !1243)
!1254 = !DILocalVariable(name: "gpe_register_info", scope: !1243, file: !3, line: 496, type: !498)
!1255 = !DILocation(line: 496, column: 33, scope: !1243)
!1256 = !DILocalVariable(name: "flags", scope: !1243, file: !3, line: 497, type: !792)
!1257 = !DILocation(line: 497, column: 17, scope: !1243)
!1258 = !DILocalVariable(name: "register_bit", scope: !1243, file: !3, line: 498, type: !16)
!1259 = !DILocation(line: 498, column: 6, scope: !1243)
!1260 = !DILocation(line: 502, column: 31, scope: !1243)
!1261 = !DILocation(line: 502, column: 10, scope: !1243)
!1262 = !DILocation(line: 502, column: 8, scope: !1243)
!1263 = !DILocation(line: 508, column: 46, scope: !1243)
!1264 = !DILocation(line: 508, column: 58, scope: !1243)
!1265 = !DILocation(line: 508, column: 19, scope: !1243)
!1266 = !DILocation(line: 508, column: 17, scope: !1243)
!1267 = !DILocation(line: 509, column: 7, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 509, column: 6)
!1269 = !DILocation(line: 509, column: 6, scope: !1243)
!1270 = !DILocation(line: 510, column: 10, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 509, column: 23)
!1272 = !DILocation(line: 511, column: 3, scope: !1271)
!1273 = !DILocation(line: 514, column: 8, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 514, column: 6)
!1275 = !DILocation(line: 514, column: 24, scope: !1274)
!1276 = !DILocation(line: 514, column: 30, scope: !1274)
!1277 = !DILocation(line: 514, column: 6, scope: !1243)
!1278 = !DILocation(line: 515, column: 10, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 514, column: 52)
!1280 = !DILocation(line: 516, column: 3, scope: !1279)
!1281 = !DILocation(line: 519, column: 22, scope: !1243)
!1282 = !DILocation(line: 519, column: 38, scope: !1243)
!1283 = !DILocation(line: 519, column: 20, scope: !1243)
!1284 = !DILocation(line: 520, column: 7, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 520, column: 6)
!1286 = !DILocation(line: 520, column: 6, scope: !1243)
!1287 = !DILocation(line: 521, column: 10, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 520, column: 26)
!1289 = !DILocation(line: 522, column: 3, scope: !1288)
!1290 = !DILocation(line: 525, column: 46, scope: !1243)
!1291 = !DILocation(line: 525, column: 17, scope: !1243)
!1292 = !DILocation(line: 525, column: 15, scope: !1243)
!1293 = !DILocation(line: 529, column: 10, scope: !1243)
!1294 = !DILocation(line: 529, column: 2, scope: !1243)
!1295 = !DILocation(line: 532, column: 3, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 529, column: 18)
!1297 = !DILocation(line: 534, column: 3, scope: !1296)
!1298 = !DILocation(line: 538, column: 3, scope: !1296)
!1299 = !DILocation(line: 540, column: 3, scope: !1296)
!1300 = !DILocation(line: 544, column: 3, scope: !1296)
!1301 = !DILocation(line: 545, column: 10, scope: !1296)
!1302 = !DILocation(line: 546, column: 3, scope: !1296)
!1303 = !DILocation(line: 547, column: 2, scope: !1296)
!1304 = !DILabel(scope: !1243, name: "unlock_and_exit", file: !3, line: 549)
!1305 = !DILocation(line: 549, column: 1, scope: !1243)
!1306 = !DILocation(line: 550, column: 23, scope: !1243)
!1307 = !DILocation(line: 550, column: 42, scope: !1243)
!1308 = !DILocation(line: 550, column: 2, scope: !1243)
!1309 = !DILocation(line: 551, column: 2, scope: !1243)
!1310 = distinct !DISubprogram(name: "acpi_clear_gpe", scope: !3, file: !3, line: 568, type: !845, scopeLine: 569, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1311 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1310, file: !3, line: 568, type: !23)
!1312 = !DILocation(line: 568, column: 40, scope: !1310)
!1313 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !1310, file: !3, line: 568, type: !16)
!1314 = !DILocation(line: 568, column: 56, scope: !1310)
!1315 = !DILocalVariable(name: "status", scope: !1310, file: !3, line: 570, type: !14)
!1316 = !DILocation(line: 570, column: 14, scope: !1310)
!1317 = !DILocalVariable(name: "gpe_event_info", scope: !1310, file: !3, line: 571, type: !513)
!1318 = !DILocation(line: 571, column: 30, scope: !1310)
!1319 = !DILocalVariable(name: "flags", scope: !1310, file: !3, line: 572, type: !792)
!1320 = !DILocation(line: 572, column: 17, scope: !1310)
!1321 = !DILocation(line: 576, column: 31, scope: !1310)
!1322 = !DILocation(line: 576, column: 10, scope: !1310)
!1323 = !DILocation(line: 576, column: 8, scope: !1310)
!1324 = !DILocation(line: 580, column: 46, scope: !1310)
!1325 = !DILocation(line: 580, column: 58, scope: !1310)
!1326 = !DILocation(line: 580, column: 19, scope: !1310)
!1327 = !DILocation(line: 580, column: 17, scope: !1310)
!1328 = !DILocation(line: 581, column: 7, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 581, column: 6)
!1330 = !DILocation(line: 581, column: 6, scope: !1310)
!1331 = !DILocation(line: 582, column: 10, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 581, column: 23)
!1333 = !DILocation(line: 583, column: 3, scope: !1332)
!1334 = !DILocation(line: 586, column: 29, scope: !1310)
!1335 = !DILocation(line: 586, column: 11, scope: !1310)
!1336 = !DILocation(line: 586, column: 9, scope: !1310)
!1337 = !DILocation(line: 586, column: 2, scope: !1310)
!1338 = !DILabel(scope: !1310, name: "unlock_and_exit", file: !3, line: 588)
!1339 = !DILocation(line: 588, column: 7, scope: !1310)
!1340 = !DILocation(line: 589, column: 23, scope: !1310)
!1341 = !DILocation(line: 589, column: 42, scope: !1310)
!1342 = !DILocation(line: 589, column: 2, scope: !1310)
!1343 = !DILocation(line: 590, column: 2, scope: !1310)
!1344 = distinct !DISubprogram(name: "acpi_get_gpe_status", scope: !3, file: !3, line: 610, type: !1345, scopeLine: 612, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!14, !23, !16, !1347}
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_event_status", file: !15, line: 738, baseType: !16)
!1349 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1344, file: !3, line: 610, type: !23)
!1350 = !DILocation(line: 610, column: 33, scope: !1344)
!1351 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !1344, file: !3, line: 611, type: !16)
!1352 = !DILocation(line: 611, column: 11, scope: !1344)
!1353 = !DILocalVariable(name: "event_status", arg: 3, scope: !1344, file: !3, line: 611, type: !1347)
!1354 = !DILocation(line: 611, column: 42, scope: !1344)
!1355 = !DILocalVariable(name: "status", scope: !1344, file: !3, line: 613, type: !14)
!1356 = !DILocation(line: 613, column: 14, scope: !1344)
!1357 = !DILocalVariable(name: "gpe_event_info", scope: !1344, file: !3, line: 614, type: !513)
!1358 = !DILocation(line: 614, column: 30, scope: !1344)
!1359 = !DILocalVariable(name: "flags", scope: !1344, file: !3, line: 615, type: !792)
!1360 = !DILocation(line: 615, column: 17, scope: !1344)
!1361 = !DILocation(line: 619, column: 31, scope: !1344)
!1362 = !DILocation(line: 619, column: 10, scope: !1344)
!1363 = !DILocation(line: 619, column: 8, scope: !1344)
!1364 = !DILocation(line: 623, column: 46, scope: !1344)
!1365 = !DILocation(line: 623, column: 58, scope: !1344)
!1366 = !DILocation(line: 623, column: 19, scope: !1344)
!1367 = !DILocation(line: 623, column: 17, scope: !1344)
!1368 = !DILocation(line: 624, column: 7, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 624, column: 6)
!1370 = !DILocation(line: 624, column: 6, scope: !1344)
!1371 = !DILocation(line: 625, column: 10, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 624, column: 23)
!1373 = !DILocation(line: 626, column: 3, scope: !1372)
!1374 = !DILocation(line: 631, column: 34, scope: !1344)
!1375 = !DILocation(line: 631, column: 50, scope: !1344)
!1376 = !DILocation(line: 631, column: 11, scope: !1344)
!1377 = !DILocation(line: 631, column: 9, scope: !1344)
!1378 = !DILocation(line: 631, column: 2, scope: !1344)
!1379 = !DILabel(scope: !1344, name: "unlock_and_exit", file: !3, line: 633)
!1380 = !DILocation(line: 633, column: 1, scope: !1344)
!1381 = !DILocation(line: 634, column: 23, scope: !1344)
!1382 = !DILocation(line: 634, column: 42, scope: !1344)
!1383 = !DILocation(line: 634, column: 2, scope: !1344)
!1384 = !DILocation(line: 635, column: 2, scope: !1344)
!1385 = distinct !DISubprogram(name: "acpi_dispatch_gpe", scope: !3, file: !3, line: 653, type: !1386, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!16, !23, !16}
!1388 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1385, file: !3, line: 653, type: !23)
!1389 = !DILocation(line: 653, column: 35, scope: !1385)
!1390 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !1385, file: !3, line: 653, type: !16)
!1391 = !DILocation(line: 653, column: 51, scope: !1385)
!1392 = !DILocation(line: 657, column: 28, scope: !1385)
!1393 = !DILocation(line: 657, column: 46, scope: !1385)
!1394 = !DILocation(line: 657, column: 9, scope: !1385)
!1395 = !DILocation(line: 657, column: 2, scope: !1385)
!1396 = distinct !DISubprogram(name: "acpi_finish_gpe", scope: !3, file: !3, line: 678, type: !845, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1397 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1396, file: !3, line: 678, type: !23)
!1398 = !DILocation(line: 678, column: 41, scope: !1396)
!1399 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !1396, file: !3, line: 678, type: !16)
!1400 = !DILocation(line: 678, column: 57, scope: !1396)
!1401 = !DILocalVariable(name: "gpe_event_info", scope: !1396, file: !3, line: 680, type: !513)
!1402 = !DILocation(line: 680, column: 30, scope: !1396)
!1403 = !DILocalVariable(name: "status", scope: !1396, file: !3, line: 681, type: !14)
!1404 = !DILocation(line: 681, column: 14, scope: !1396)
!1405 = !DILocalVariable(name: "flags", scope: !1396, file: !3, line: 682, type: !792)
!1406 = !DILocation(line: 682, column: 17, scope: !1396)
!1407 = !DILocation(line: 686, column: 31, scope: !1396)
!1408 = !DILocation(line: 686, column: 10, scope: !1396)
!1409 = !DILocation(line: 686, column: 8, scope: !1396)
!1410 = !DILocation(line: 690, column: 46, scope: !1396)
!1411 = !DILocation(line: 690, column: 58, scope: !1396)
!1412 = !DILocation(line: 690, column: 19, scope: !1396)
!1413 = !DILocation(line: 690, column: 17, scope: !1396)
!1414 = !DILocation(line: 691, column: 7, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 691, column: 6)
!1416 = !DILocation(line: 691, column: 6, scope: !1396)
!1417 = !DILocation(line: 692, column: 10, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 691, column: 23)
!1419 = !DILocation(line: 693, column: 3, scope: !1418)
!1420 = !DILocation(line: 696, column: 30, scope: !1396)
!1421 = !DILocation(line: 696, column: 11, scope: !1396)
!1422 = !DILocation(line: 696, column: 9, scope: !1396)
!1423 = !DILocation(line: 696, column: 2, scope: !1396)
!1424 = !DILabel(scope: !1396, name: "unlock_and_exit", file: !3, line: 698)
!1425 = !DILocation(line: 698, column: 1, scope: !1396)
!1426 = !DILocation(line: 699, column: 23, scope: !1396)
!1427 = !DILocation(line: 699, column: 42, scope: !1396)
!1428 = !DILocation(line: 699, column: 2, scope: !1396)
!1429 = !DILocation(line: 700, column: 2, scope: !1396)
!1430 = distinct !DISubprogram(name: "acpi_disable_all_gpes", scope: !3, file: !3, line: 717, type: !803, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1431 = !DILocalVariable(name: "status", scope: !1430, file: !3, line: 719, type: !14)
!1432 = !DILocation(line: 719, column: 14, scope: !1430)
!1433 = !DILocation(line: 723, column: 11, scope: !1430)
!1434 = !DILocation(line: 723, column: 9, scope: !1430)
!1435 = !DILocation(line: 724, column: 6, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 724, column: 6)
!1437 = !DILocation(line: 724, column: 6, scope: !1430)
!1438 = !DILocation(line: 725, column: 3, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 724, column: 28)
!1440 = !DILocation(line: 728, column: 11, scope: !1430)
!1441 = !DILocation(line: 728, column: 9, scope: !1430)
!1442 = !DILocation(line: 729, column: 8, scope: !1430)
!1443 = !DILocation(line: 731, column: 2, scope: !1430)
!1444 = !DILocation(line: 732, column: 1, scope: !1430)
!1445 = distinct !DISubprogram(name: "acpi_enable_all_runtime_gpes", scope: !3, file: !3, line: 748, type: !803, scopeLine: 749, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1446 = !DILocalVariable(name: "status", scope: !1445, file: !3, line: 750, type: !14)
!1447 = !DILocation(line: 750, column: 14, scope: !1445)
!1448 = !DILocation(line: 754, column: 11, scope: !1445)
!1449 = !DILocation(line: 754, column: 9, scope: !1445)
!1450 = !DILocation(line: 755, column: 6, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 755, column: 6)
!1452 = !DILocation(line: 755, column: 6, scope: !1445)
!1453 = !DILocation(line: 756, column: 3, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 755, column: 28)
!1455 = !DILocation(line: 759, column: 11, scope: !1445)
!1456 = !DILocation(line: 759, column: 9, scope: !1445)
!1457 = !DILocation(line: 760, column: 8, scope: !1445)
!1458 = !DILocation(line: 762, column: 2, scope: !1445)
!1459 = !DILocation(line: 763, column: 1, scope: !1445)
!1460 = distinct !DISubprogram(name: "acpi_enable_all_wakeup_gpes", scope: !3, file: !3, line: 779, type: !803, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1461 = !DILocalVariable(name: "status", scope: !1460, file: !3, line: 781, type: !14)
!1462 = !DILocation(line: 781, column: 14, scope: !1460)
!1463 = !DILocation(line: 785, column: 11, scope: !1460)
!1464 = !DILocation(line: 785, column: 9, scope: !1460)
!1465 = !DILocation(line: 786, column: 6, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 786, column: 6)
!1467 = !DILocation(line: 786, column: 6, scope: !1460)
!1468 = !DILocation(line: 787, column: 3, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 786, column: 28)
!1470 = !DILocation(line: 790, column: 11, scope: !1460)
!1471 = !DILocation(line: 790, column: 9, scope: !1460)
!1472 = !DILocation(line: 791, column: 8, scope: !1460)
!1473 = !DILocation(line: 793, column: 2, scope: !1460)
!1474 = !DILocation(line: 794, column: 1, scope: !1460)
!1475 = distinct !DISubprogram(name: "acpi_any_gpe_status_set", scope: !3, file: !3, line: 811, type: !1476, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!16, !16}
!1478 = !DILocalVariable(name: "gpe_skip_number", arg: 1, scope: !1475, file: !3, line: 811, type: !16)
!1479 = !DILocation(line: 811, column: 33, scope: !1475)
!1480 = !DILocalVariable(name: "status", scope: !1475, file: !3, line: 813, type: !14)
!1481 = !DILocation(line: 813, column: 14, scope: !1475)
!1482 = !DILocalVariable(name: "gpe_device", scope: !1475, file: !3, line: 814, type: !23)
!1483 = !DILocation(line: 814, column: 14, scope: !1475)
!1484 = !DILocalVariable(name: "ret", scope: !1475, file: !3, line: 815, type: !20)
!1485 = !DILocation(line: 815, column: 5, scope: !1475)
!1486 = !DILocation(line: 819, column: 11, scope: !1475)
!1487 = !DILocation(line: 819, column: 9, scope: !1475)
!1488 = !DILocation(line: 820, column: 6, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 820, column: 6)
!1490 = !DILocation(line: 820, column: 6, scope: !1475)
!1491 = !DILocation(line: 821, column: 3, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 820, column: 28)
!1493 = !DILocation(line: 824, column: 31, scope: !1475)
!1494 = !DILocation(line: 824, column: 11, scope: !1475)
!1495 = !DILocation(line: 824, column: 9, scope: !1475)
!1496 = !DILocation(line: 825, column: 6, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 825, column: 6)
!1498 = !DILocation(line: 825, column: 6, scope: !1475)
!1499 = !DILocation(line: 826, column: 14, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 825, column: 28)
!1501 = !DILocation(line: 827, column: 2, scope: !1500)
!1502 = !DILocation(line: 829, column: 31, scope: !1475)
!1503 = !DILocation(line: 829, column: 43, scope: !1475)
!1504 = !DILocation(line: 829, column: 8, scope: !1475)
!1505 = !DILocation(line: 829, column: 6, scope: !1475)
!1506 = !DILocation(line: 830, column: 8, scope: !1475)
!1507 = !DILocation(line: 832, column: 10, scope: !1475)
!1508 = !DILocation(line: 832, column: 9, scope: !1475)
!1509 = !DILocation(line: 832, column: 2, scope: !1475)
!1510 = !DILocation(line: 833, column: 1, scope: !1475)
!1511 = distinct !DISubprogram(name: "acpi_get_gpe_device", scope: !3, file: !3, line: 1017, type: !1512, scopeLine: 1018, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!14, !16, !789}
!1514 = !DILocalVariable(name: "index", arg: 1, scope: !1511, file: !3, line: 1017, type: !16)
!1515 = !DILocation(line: 1017, column: 37, scope: !1511)
!1516 = !DILocalVariable(name: "gpe_device", arg: 2, scope: !1511, file: !3, line: 1017, type: !789)
!1517 = !DILocation(line: 1017, column: 57, scope: !1511)
!1518 = !DILocalVariable(name: "info", scope: !1511, file: !3, line: 1019, type: !1519)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_device_info", file: !31, line: 512, size: 192, elements: !1520)
!1520 = !{!1521, !1522, !1523, !1524}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1519, file: !31, line: 513, baseType: !16, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "next_block_base_index", scope: !1519, file: !31, line: 514, baseType: !16, size: 32, offset: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1519, file: !31, line: 515, baseType: !14, size: 32, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !1519, file: !31, line: 516, baseType: !29, size: 64, offset: 128)
!1525 = !DILocation(line: 1019, column: 30, scope: !1511)
!1526 = !DILocalVariable(name: "status", scope: !1511, file: !3, line: 1020, type: !14)
!1527 = !DILocation(line: 1020, column: 14, scope: !1511)
!1528 = !DILocation(line: 1024, column: 7, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 1024, column: 6)
!1530 = !DILocation(line: 1024, column: 6, scope: !1511)
!1531 = !DILocation(line: 1025, column: 3, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 1024, column: 19)
!1533 = !DILocation(line: 1028, column: 6, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 1028, column: 6)
!1535 = !DILocation(line: 1028, column: 15, scope: !1534)
!1536 = !DILocation(line: 1028, column: 12, scope: !1534)
!1537 = !DILocation(line: 1028, column: 6, scope: !1511)
!1538 = !DILocation(line: 1029, column: 3, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 1028, column: 39)
!1540 = !DILocation(line: 1034, column: 15, scope: !1511)
!1541 = !DILocation(line: 1034, column: 7, scope: !1511)
!1542 = !DILocation(line: 1034, column: 13, scope: !1511)
!1543 = !DILocation(line: 1035, column: 7, scope: !1511)
!1544 = !DILocation(line: 1035, column: 14, scope: !1511)
!1545 = !DILocation(line: 1036, column: 7, scope: !1511)
!1546 = !DILocation(line: 1036, column: 18, scope: !1511)
!1547 = !DILocation(line: 1037, column: 7, scope: !1511)
!1548 = !DILocation(line: 1037, column: 29, scope: !1511)
!1549 = !DILocation(line: 1039, column: 57, scope: !1511)
!1550 = !DILocation(line: 1039, column: 11, scope: !1511)
!1551 = !DILocation(line: 1039, column: 9, scope: !1511)
!1552 = !DILocation(line: 1040, column: 6, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 1040, column: 6)
!1554 = !DILocation(line: 1040, column: 6, scope: !1511)
!1555 = !DILocation(line: 1041, column: 3, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 1040, column: 28)
!1557 = !DILocation(line: 1044, column: 16, scope: !1511)
!1558 = !DILocation(line: 1044, column: 3, scope: !1511)
!1559 = !DILocation(line: 1044, column: 14, scope: !1511)
!1560 = !DILocation(line: 1045, column: 2, scope: !1511)
!1561 = !DILocation(line: 1046, column: 1, scope: !1511)
!1562 = distinct !DISubprogram(name: "acpi_install_gpe_block", scope: !3, file: !3, line: 853, type: !1563, scopeLine: 856, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!14, !23, !1565, !16, !16}
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_generic_address", file: !781, line: 90, size: 96, elements: !1567)
!1567 = !{!1568, !1569, !1570, !1571, !1572}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1566, file: !781, line: 91, baseType: !20, size: 8)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !1566, file: !781, line: 92, baseType: !20, size: 8, offset: 8)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1566, file: !781, line: 93, baseType: !20, size: 8, offset: 16)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "access_width", scope: !1566, file: !781, line: 94, baseType: !20, size: 8, offset: 24)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1566, file: !781, line: 95, baseType: !26, size: 64, offset: 32)
!1573 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1562, file: !3, line: 853, type: !23)
!1574 = !DILocation(line: 853, column: 36, scope: !1562)
!1575 = !DILocalVariable(name: "gpe_block_address", arg: 2, scope: !1562, file: !3, line: 854, type: !1565)
!1576 = !DILocation(line: 854, column: 39, scope: !1562)
!1577 = !DILocalVariable(name: "register_count", arg: 3, scope: !1562, file: !3, line: 855, type: !16)
!1578 = !DILocation(line: 855, column: 14, scope: !1562)
!1579 = !DILocalVariable(name: "interrupt_number", arg: 4, scope: !1562, file: !3, line: 855, type: !16)
!1580 = !DILocation(line: 855, column: 34, scope: !1562)
!1581 = !DILocalVariable(name: "status", scope: !1562, file: !3, line: 857, type: !14)
!1582 = !DILocation(line: 857, column: 14, scope: !1562)
!1583 = !DILocalVariable(name: "obj_desc", scope: !1562, file: !3, line: 858, type: !34)
!1584 = !DILocation(line: 858, column: 29, scope: !1562)
!1585 = !DILocalVariable(name: "node", scope: !1562, file: !3, line: 859, type: !29)
!1586 = !DILocation(line: 859, column: 30, scope: !1562)
!1587 = !DILocalVariable(name: "gpe_block", scope: !1562, file: !3, line: 860, type: !483)
!1588 = !DILocation(line: 860, column: 30, scope: !1562)
!1589 = !DILocation(line: 864, column: 8, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 864, column: 6)
!1591 = !DILocation(line: 864, column: 20, scope: !1590)
!1592 = !DILocation(line: 864, column: 25, scope: !1590)
!1593 = !DILocation(line: 864, column: 44, scope: !1590)
!1594 = !DILocation(line: 864, column: 49, scope: !1590)
!1595 = !DILocation(line: 864, column: 6, scope: !1562)
!1596 = !DILocation(line: 865, column: 3, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 864, column: 66)
!1598 = !DILocation(line: 868, column: 11, scope: !1562)
!1599 = !DILocation(line: 868, column: 9, scope: !1562)
!1600 = !DILocation(line: 869, column: 6, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 869, column: 6)
!1602 = !DILocation(line: 869, column: 6, scope: !1562)
!1603 = !DILocation(line: 870, column: 3, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 869, column: 28)
!1605 = !DILocation(line: 873, column: 33, scope: !1562)
!1606 = !DILocation(line: 873, column: 9, scope: !1562)
!1607 = !DILocation(line: 873, column: 7, scope: !1562)
!1608 = !DILocation(line: 874, column: 7, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 874, column: 6)
!1610 = !DILocation(line: 874, column: 6, scope: !1562)
!1611 = !DILocation(line: 875, column: 10, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 874, column: 13)
!1613 = !DILocation(line: 876, column: 3, scope: !1612)
!1614 = !DILocation(line: 881, column: 6, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 881, column: 6)
!1616 = !DILocation(line: 881, column: 12, scope: !1615)
!1617 = !DILocation(line: 881, column: 17, scope: !1615)
!1618 = !DILocation(line: 881, column: 6, scope: !1562)
!1619 = !DILocation(line: 882, column: 10, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 881, column: 38)
!1621 = !DILocation(line: 883, column: 3, scope: !1620)
!1622 = !DILocation(line: 886, column: 6, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 886, column: 6)
!1624 = !DILocation(line: 886, column: 12, scope: !1623)
!1625 = !DILocation(line: 886, column: 6, scope: !1562)
!1626 = !DILocation(line: 887, column: 10, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 886, column: 20)
!1628 = !DILocation(line: 888, column: 3, scope: !1627)
!1629 = !DILocation(line: 895, column: 36, scope: !1562)
!1630 = !DILocation(line: 895, column: 42, scope: !1562)
!1631 = !DILocation(line: 895, column: 61, scope: !1562)
!1632 = !DILocation(line: 896, column: 8, scope: !1562)
!1633 = !DILocation(line: 896, column: 27, scope: !1562)
!1634 = !DILocation(line: 897, column: 8, scope: !1562)
!1635 = !DILocation(line: 897, column: 27, scope: !1562)
!1636 = !DILocation(line: 895, column: 11, scope: !1562)
!1637 = !DILocation(line: 895, column: 9, scope: !1562)
!1638 = !DILocation(line: 899, column: 6, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 899, column: 6)
!1640 = !DILocation(line: 899, column: 6, scope: !1562)
!1641 = !DILocation(line: 900, column: 3, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 899, column: 28)
!1643 = !DILocation(line: 905, column: 41, scope: !1562)
!1644 = !DILocation(line: 905, column: 13, scope: !1562)
!1645 = !DILocation(line: 905, column: 11, scope: !1562)
!1646 = !DILocation(line: 906, column: 7, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 906, column: 6)
!1648 = !DILocation(line: 906, column: 6, scope: !1562)
!1649 = !DILocation(line: 912, column: 14, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 906, column: 17)
!1651 = !DILocation(line: 912, column: 12, scope: !1650)
!1652 = !DILocation(line: 913, column: 8, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 913, column: 7)
!1654 = !DILocation(line: 913, column: 7, scope: !1650)
!1655 = !DILocation(line: 914, column: 11, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 913, column: 18)
!1657 = !DILocation(line: 915, column: 4, scope: !1656)
!1658 = !DILocation(line: 919, column: 29, scope: !1650)
!1659 = !DILocation(line: 919, column: 35, scope: !1650)
!1660 = !DILocation(line: 919, column: 7, scope: !1650)
!1661 = !DILocation(line: 918, column: 10, scope: !1650)
!1662 = !DILocation(line: 923, column: 28, scope: !1650)
!1663 = !DILocation(line: 923, column: 3, scope: !1650)
!1664 = !DILocation(line: 925, column: 7, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 925, column: 7)
!1666 = !DILocation(line: 925, column: 7, scope: !1650)
!1667 = !DILocation(line: 926, column: 4, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 925, column: 29)
!1669 = !DILocation(line: 928, column: 2, scope: !1650)
!1670 = !DILocation(line: 932, column: 31, scope: !1562)
!1671 = !DILocation(line: 932, column: 2, scope: !1562)
!1672 = !DILocation(line: 932, column: 12, scope: !1562)
!1673 = !DILocation(line: 932, column: 19, scope: !1562)
!1674 = !DILocation(line: 932, column: 29, scope: !1562)
!1675 = !DILabel(scope: !1562, name: "unlock_and_exit", file: !3, line: 934)
!1676 = !DILocation(line: 934, column: 1, scope: !1562)
!1677 = !DILocation(line: 935, column: 8, scope: !1562)
!1678 = !DILocation(line: 936, column: 2, scope: !1562)
!1679 = !DILocation(line: 937, column: 1, scope: !1562)
!1680 = distinct !DISubprogram(name: "acpi_remove_gpe_block", scope: !3, file: !3, line: 952, type: !1681, scopeLine: 953, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!14, !23}
!1683 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1680, file: !3, line: 952, type: !23)
!1684 = !DILocation(line: 952, column: 47, scope: !1680)
!1685 = !DILocalVariable(name: "obj_desc", scope: !1680, file: !3, line: 954, type: !34)
!1686 = !DILocation(line: 954, column: 29, scope: !1680)
!1687 = !DILocalVariable(name: "status", scope: !1680, file: !3, line: 955, type: !14)
!1688 = !DILocation(line: 955, column: 14, scope: !1680)
!1689 = !DILocalVariable(name: "node", scope: !1680, file: !3, line: 956, type: !29)
!1690 = !DILocation(line: 956, column: 30, scope: !1680)
!1691 = !DILocation(line: 960, column: 7, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 960, column: 6)
!1693 = !DILocation(line: 960, column: 6, scope: !1680)
!1694 = !DILocation(line: 961, column: 3, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 960, column: 19)
!1696 = !DILocation(line: 964, column: 11, scope: !1680)
!1697 = !DILocation(line: 964, column: 9, scope: !1680)
!1698 = !DILocation(line: 965, column: 6, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 965, column: 6)
!1700 = !DILocation(line: 965, column: 6, scope: !1680)
!1701 = !DILocation(line: 966, column: 3, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 965, column: 28)
!1703 = !DILocation(line: 969, column: 33, scope: !1680)
!1704 = !DILocation(line: 969, column: 9, scope: !1680)
!1705 = !DILocation(line: 969, column: 7, scope: !1680)
!1706 = !DILocation(line: 970, column: 7, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 970, column: 6)
!1708 = !DILocation(line: 970, column: 6, scope: !1680)
!1709 = !DILocation(line: 971, column: 10, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 970, column: 13)
!1711 = !DILocation(line: 972, column: 3, scope: !1710)
!1712 = !DILocation(line: 977, column: 6, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 977, column: 6)
!1714 = !DILocation(line: 977, column: 12, scope: !1713)
!1715 = !DILocation(line: 977, column: 17, scope: !1713)
!1716 = !DILocation(line: 977, column: 6, scope: !1680)
!1717 = !DILocation(line: 978, column: 10, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 977, column: 38)
!1719 = !DILocation(line: 979, column: 3, scope: !1718)
!1720 = !DILocation(line: 984, column: 41, scope: !1680)
!1721 = !DILocation(line: 984, column: 13, scope: !1680)
!1722 = !DILocation(line: 984, column: 11, scope: !1680)
!1723 = !DILocation(line: 985, column: 7, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 985, column: 6)
!1725 = !DILocation(line: 985, column: 16, scope: !1724)
!1726 = !DILocation(line: 985, column: 20, scope: !1724)
!1727 = !DILocation(line: 985, column: 30, scope: !1724)
!1728 = !DILocation(line: 985, column: 37, scope: !1724)
!1729 = !DILocation(line: 985, column: 6, scope: !1680)
!1730 = !DILocation(line: 986, column: 3, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 985, column: 48)
!1732 = !DILocation(line: 991, column: 36, scope: !1680)
!1733 = !DILocation(line: 991, column: 46, scope: !1680)
!1734 = !DILocation(line: 991, column: 53, scope: !1680)
!1735 = !DILocation(line: 991, column: 11, scope: !1680)
!1736 = !DILocation(line: 991, column: 9, scope: !1680)
!1737 = !DILocation(line: 992, column: 6, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 992, column: 6)
!1739 = !DILocation(line: 992, column: 6, scope: !1680)
!1740 = !DILocation(line: 993, column: 3, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1738, file: !3, line: 992, column: 28)
!1742 = !DILocation(line: 993, column: 13, scope: !1741)
!1743 = !DILocation(line: 993, column: 20, scope: !1741)
!1744 = !DILocation(line: 993, column: 30, scope: !1741)
!1745 = !DILocation(line: 994, column: 2, scope: !1741)
!1746 = !DILabel(scope: !1680, name: "unlock_and_exit", file: !3, line: 996)
!1747 = !DILocation(line: 996, column: 1, scope: !1680)
!1748 = !DILocation(line: 997, column: 8, scope: !1680)
!1749 = !DILocation(line: 998, column: 2, scope: !1680)
!1750 = !DILocation(line: 999, column: 1, scope: !1680)
!1751 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !1752, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!24, !1754, !790}
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !791, line: 55, baseType: !1755)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1756, line: 72, baseType: !1757)
!1756 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1756, line: 16, baseType: !792)
!1758 = !DILocalVariable(name: "s", arg: 1, scope: !1759, file: !6, line: 445, type: !1762)
!1759 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !1760, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!24, !1762, !790, !1754}
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1764, line: 117, flags: DIFlagFwdDecl)
!1764 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1765 = !DILocation(line: 445, column: 72, scope: !1759, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 552, column: 10, scope: !1767, inlinedAt: !1770)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !6, line: 540, column: 34)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !6, line: 540, column: 6)
!1769 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !1752, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1770 = distinct !DILocation(line: 664, column: 9, scope: !1751)
!1771 = !DILocalVariable(name: "flags", arg: 2, scope: !1759, file: !6, line: 446, type: !790)
!1772 = !DILocation(line: 446, column: 9, scope: !1759, inlinedAt: !1766)
!1773 = !DILocalVariable(name: "size", arg: 3, scope: !1759, file: !6, line: 446, type: !1754)
!1774 = !DILocation(line: 446, column: 23, scope: !1759, inlinedAt: !1766)
!1775 = !DILocalVariable(name: "ret", scope: !1759, file: !6, line: 448, type: !24)
!1776 = !DILocation(line: 448, column: 8, scope: !1759, inlinedAt: !1766)
!1777 = !DILocalVariable(name: "flags", arg: 1, scope: !1778, file: !6, line: 318, type: !790)
!1778 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !1779, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!5, !790}
!1781 = !DILocation(line: 318, column: 67, scope: !1778, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 553, column: 20, scope: !1767, inlinedAt: !1770)
!1783 = !DILocalVariable(name: "size", arg: 1, scope: !1784, file: !6, line: 346, type: !1754)
!1784 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !1785, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!7, !1754}
!1787 = !DILocation(line: 346, column: 58, scope: !1784, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 547, column: 11, scope: !1767, inlinedAt: !1770)
!1789 = !DILocalVariable(name: "size", arg: 1, scope: !1790, file: !6, line: 472, type: !1754)
!1790 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !1791, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!24, !1754, !790, !7}
!1793 = !DILocation(line: 472, column: 28, scope: !1790, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 481, column: 9, scope: !1795, inlinedAt: !1796)
!1795 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !1752, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!1796 = distinct !DILocation(line: 545, column: 11, scope: !1797, inlinedAt: !1770)
!1797 = distinct !DILexicalBlock(scope: !1767, file: !6, line: 544, column: 7)
!1798 = !DILocalVariable(name: "flags", arg: 2, scope: !1790, file: !6, line: 472, type: !790)
!1799 = !DILocation(line: 472, column: 40, scope: !1790, inlinedAt: !1794)
!1800 = !DILocalVariable(name: "order", arg: 3, scope: !1790, file: !6, line: 472, type: !7)
!1801 = !DILocation(line: 472, column: 60, scope: !1790, inlinedAt: !1794)
!1802 = !DILocalVariable(name: "size", arg: 1, scope: !1795, file: !6, line: 478, type: !1754)
!1803 = !DILocation(line: 478, column: 51, scope: !1795, inlinedAt: !1796)
!1804 = !DILocalVariable(name: "flags", arg: 2, scope: !1795, file: !6, line: 478, type: !790)
!1805 = !DILocation(line: 478, column: 63, scope: !1795, inlinedAt: !1796)
!1806 = !DILocalVariable(name: "order", scope: !1795, file: !6, line: 480, type: !7)
!1807 = !DILocation(line: 480, column: 15, scope: !1795, inlinedAt: !1796)
!1808 = !DILocalVariable(name: "size", arg: 1, scope: !1769, file: !6, line: 538, type: !1754)
!1809 = !DILocation(line: 538, column: 45, scope: !1769, inlinedAt: !1770)
!1810 = !DILocalVariable(name: "flags", arg: 2, scope: !1769, file: !6, line: 538, type: !790)
!1811 = !DILocation(line: 538, column: 57, scope: !1769, inlinedAt: !1770)
!1812 = !DILocalVariable(name: "index", scope: !1767, file: !6, line: 542, type: !7)
!1813 = !DILocation(line: 542, column: 16, scope: !1767, inlinedAt: !1770)
!1814 = !DILocalVariable(name: "size", arg: 1, scope: !1751, file: !6, line: 662, type: !1754)
!1815 = !DILocation(line: 662, column: 36, scope: !1751)
!1816 = !DILocalVariable(name: "flags", arg: 2, scope: !1751, file: !6, line: 662, type: !790)
!1817 = !DILocation(line: 662, column: 48, scope: !1751)
!1818 = !DILocation(line: 664, column: 17, scope: !1751)
!1819 = !DILocation(line: 664, column: 23, scope: !1751)
!1820 = !DILocation(line: 664, column: 29, scope: !1751)
!1821 = !DILocation(line: 540, column: 27, scope: !1768, inlinedAt: !1770)
!1822 = !DILocation(line: 540, column: 6, scope: !1768, inlinedAt: !1770)
!1823 = !DILocation(line: 540, column: 6, scope: !1769, inlinedAt: !1770)
!1824 = !DILocation(line: 544, column: 7, scope: !1797, inlinedAt: !1770)
!1825 = !DILocation(line: 544, column: 12, scope: !1797, inlinedAt: !1770)
!1826 = !DILocation(line: 544, column: 7, scope: !1767, inlinedAt: !1770)
!1827 = !DILocation(line: 545, column: 25, scope: !1797, inlinedAt: !1770)
!1828 = !DILocation(line: 545, column: 31, scope: !1797, inlinedAt: !1770)
!1829 = !DILocation(line: 480, column: 33, scope: !1795, inlinedAt: !1796)
!1830 = !DILocation(line: 480, column: 23, scope: !1795, inlinedAt: !1796)
!1831 = !DILocation(line: 481, column: 29, scope: !1795, inlinedAt: !1796)
!1832 = !DILocation(line: 481, column: 35, scope: !1795, inlinedAt: !1796)
!1833 = !DILocation(line: 481, column: 42, scope: !1795, inlinedAt: !1796)
!1834 = !DILocation(line: 474, column: 23, scope: !1790, inlinedAt: !1794)
!1835 = !DILocation(line: 474, column: 29, scope: !1790, inlinedAt: !1794)
!1836 = !DILocation(line: 474, column: 36, scope: !1790, inlinedAt: !1794)
!1837 = !DILocation(line: 474, column: 9, scope: !1790, inlinedAt: !1794)
!1838 = !DILocation(line: 545, column: 4, scope: !1797, inlinedAt: !1770)
!1839 = !DILocation(line: 547, column: 25, scope: !1767, inlinedAt: !1770)
!1840 = !DILocation(line: 348, column: 7, scope: !1841, inlinedAt: !1788)
!1841 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 348, column: 6)
!1842 = !DILocation(line: 348, column: 6, scope: !1784, inlinedAt: !1788)
!1843 = !DILocation(line: 349, column: 3, scope: !1841, inlinedAt: !1788)
!1844 = !DILocation(line: 351, column: 6, scope: !1845, inlinedAt: !1788)
!1845 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 351, column: 6)
!1846 = !DILocation(line: 351, column: 11, scope: !1845, inlinedAt: !1788)
!1847 = !DILocation(line: 351, column: 6, scope: !1784, inlinedAt: !1788)
!1848 = !DILocation(line: 352, column: 3, scope: !1845, inlinedAt: !1788)
!1849 = !DILocation(line: 354, column: 32, scope: !1850, inlinedAt: !1788)
!1850 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 354, column: 6)
!1851 = !DILocation(line: 354, column: 37, scope: !1850, inlinedAt: !1788)
!1852 = !DILocation(line: 354, column: 42, scope: !1850, inlinedAt: !1788)
!1853 = !DILocation(line: 354, column: 45, scope: !1850, inlinedAt: !1788)
!1854 = !DILocation(line: 354, column: 50, scope: !1850, inlinedAt: !1788)
!1855 = !DILocation(line: 354, column: 6, scope: !1784, inlinedAt: !1788)
!1856 = !DILocation(line: 355, column: 3, scope: !1850, inlinedAt: !1788)
!1857 = !DILocation(line: 356, column: 32, scope: !1858, inlinedAt: !1788)
!1858 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 356, column: 6)
!1859 = !DILocation(line: 356, column: 37, scope: !1858, inlinedAt: !1788)
!1860 = !DILocation(line: 356, column: 43, scope: !1858, inlinedAt: !1788)
!1861 = !DILocation(line: 356, column: 46, scope: !1858, inlinedAt: !1788)
!1862 = !DILocation(line: 356, column: 51, scope: !1858, inlinedAt: !1788)
!1863 = !DILocation(line: 356, column: 6, scope: !1784, inlinedAt: !1788)
!1864 = !DILocation(line: 357, column: 3, scope: !1858, inlinedAt: !1788)
!1865 = !DILocation(line: 358, column: 6, scope: !1866, inlinedAt: !1788)
!1866 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 358, column: 6)
!1867 = !DILocation(line: 358, column: 11, scope: !1866, inlinedAt: !1788)
!1868 = !DILocation(line: 358, column: 6, scope: !1784, inlinedAt: !1788)
!1869 = !DILocation(line: 358, column: 26, scope: !1866, inlinedAt: !1788)
!1870 = !DILocation(line: 359, column: 6, scope: !1871, inlinedAt: !1788)
!1871 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 359, column: 6)
!1872 = !DILocation(line: 359, column: 11, scope: !1871, inlinedAt: !1788)
!1873 = !DILocation(line: 359, column: 6, scope: !1784, inlinedAt: !1788)
!1874 = !DILocation(line: 359, column: 26, scope: !1871, inlinedAt: !1788)
!1875 = !DILocation(line: 360, column: 6, scope: !1876, inlinedAt: !1788)
!1876 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 360, column: 6)
!1877 = !DILocation(line: 360, column: 11, scope: !1876, inlinedAt: !1788)
!1878 = !DILocation(line: 360, column: 6, scope: !1784, inlinedAt: !1788)
!1879 = !DILocation(line: 360, column: 26, scope: !1876, inlinedAt: !1788)
!1880 = !DILocation(line: 361, column: 6, scope: !1881, inlinedAt: !1788)
!1881 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 361, column: 6)
!1882 = !DILocation(line: 361, column: 11, scope: !1881, inlinedAt: !1788)
!1883 = !DILocation(line: 361, column: 6, scope: !1784, inlinedAt: !1788)
!1884 = !DILocation(line: 361, column: 26, scope: !1881, inlinedAt: !1788)
!1885 = !DILocation(line: 362, column: 6, scope: !1886, inlinedAt: !1788)
!1886 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 362, column: 6)
!1887 = !DILocation(line: 362, column: 11, scope: !1886, inlinedAt: !1788)
!1888 = !DILocation(line: 362, column: 6, scope: !1784, inlinedAt: !1788)
!1889 = !DILocation(line: 362, column: 26, scope: !1886, inlinedAt: !1788)
!1890 = !DILocation(line: 363, column: 6, scope: !1891, inlinedAt: !1788)
!1891 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 363, column: 6)
!1892 = !DILocation(line: 363, column: 11, scope: !1891, inlinedAt: !1788)
!1893 = !DILocation(line: 363, column: 6, scope: !1784, inlinedAt: !1788)
!1894 = !DILocation(line: 363, column: 26, scope: !1891, inlinedAt: !1788)
!1895 = !DILocation(line: 364, column: 6, scope: !1896, inlinedAt: !1788)
!1896 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 364, column: 6)
!1897 = !DILocation(line: 364, column: 11, scope: !1896, inlinedAt: !1788)
!1898 = !DILocation(line: 364, column: 6, scope: !1784, inlinedAt: !1788)
!1899 = !DILocation(line: 364, column: 26, scope: !1896, inlinedAt: !1788)
!1900 = !DILocation(line: 365, column: 6, scope: !1901, inlinedAt: !1788)
!1901 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 365, column: 6)
!1902 = !DILocation(line: 365, column: 11, scope: !1901, inlinedAt: !1788)
!1903 = !DILocation(line: 365, column: 6, scope: !1784, inlinedAt: !1788)
!1904 = !DILocation(line: 365, column: 26, scope: !1901, inlinedAt: !1788)
!1905 = !DILocation(line: 366, column: 6, scope: !1906, inlinedAt: !1788)
!1906 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 366, column: 6)
!1907 = !DILocation(line: 366, column: 11, scope: !1906, inlinedAt: !1788)
!1908 = !DILocation(line: 366, column: 6, scope: !1784, inlinedAt: !1788)
!1909 = !DILocation(line: 366, column: 26, scope: !1906, inlinedAt: !1788)
!1910 = !DILocation(line: 367, column: 6, scope: !1911, inlinedAt: !1788)
!1911 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 367, column: 6)
!1912 = !DILocation(line: 367, column: 11, scope: !1911, inlinedAt: !1788)
!1913 = !DILocation(line: 367, column: 6, scope: !1784, inlinedAt: !1788)
!1914 = !DILocation(line: 367, column: 26, scope: !1911, inlinedAt: !1788)
!1915 = !DILocation(line: 368, column: 6, scope: !1916, inlinedAt: !1788)
!1916 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 368, column: 6)
!1917 = !DILocation(line: 368, column: 11, scope: !1916, inlinedAt: !1788)
!1918 = !DILocation(line: 368, column: 6, scope: !1784, inlinedAt: !1788)
!1919 = !DILocation(line: 368, column: 26, scope: !1916, inlinedAt: !1788)
!1920 = !DILocation(line: 369, column: 6, scope: !1921, inlinedAt: !1788)
!1921 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 369, column: 6)
!1922 = !DILocation(line: 369, column: 11, scope: !1921, inlinedAt: !1788)
!1923 = !DILocation(line: 369, column: 6, scope: !1784, inlinedAt: !1788)
!1924 = !DILocation(line: 369, column: 26, scope: !1921, inlinedAt: !1788)
!1925 = !DILocation(line: 370, column: 6, scope: !1926, inlinedAt: !1788)
!1926 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 370, column: 6)
!1927 = !DILocation(line: 370, column: 11, scope: !1926, inlinedAt: !1788)
!1928 = !DILocation(line: 370, column: 6, scope: !1784, inlinedAt: !1788)
!1929 = !DILocation(line: 370, column: 26, scope: !1926, inlinedAt: !1788)
!1930 = !DILocation(line: 371, column: 6, scope: !1931, inlinedAt: !1788)
!1931 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 371, column: 6)
!1932 = !DILocation(line: 371, column: 11, scope: !1931, inlinedAt: !1788)
!1933 = !DILocation(line: 371, column: 6, scope: !1784, inlinedAt: !1788)
!1934 = !DILocation(line: 371, column: 26, scope: !1931, inlinedAt: !1788)
!1935 = !DILocation(line: 372, column: 6, scope: !1936, inlinedAt: !1788)
!1936 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 372, column: 6)
!1937 = !DILocation(line: 372, column: 11, scope: !1936, inlinedAt: !1788)
!1938 = !DILocation(line: 372, column: 6, scope: !1784, inlinedAt: !1788)
!1939 = !DILocation(line: 372, column: 26, scope: !1936, inlinedAt: !1788)
!1940 = !DILocation(line: 373, column: 6, scope: !1941, inlinedAt: !1788)
!1941 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 373, column: 6)
!1942 = !DILocation(line: 373, column: 11, scope: !1941, inlinedAt: !1788)
!1943 = !DILocation(line: 373, column: 6, scope: !1784, inlinedAt: !1788)
!1944 = !DILocation(line: 373, column: 26, scope: !1941, inlinedAt: !1788)
!1945 = !DILocation(line: 374, column: 6, scope: !1946, inlinedAt: !1788)
!1946 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 374, column: 6)
!1947 = !DILocation(line: 374, column: 11, scope: !1946, inlinedAt: !1788)
!1948 = !DILocation(line: 374, column: 6, scope: !1784, inlinedAt: !1788)
!1949 = !DILocation(line: 374, column: 26, scope: !1946, inlinedAt: !1788)
!1950 = !DILocation(line: 375, column: 6, scope: !1951, inlinedAt: !1788)
!1951 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 375, column: 6)
!1952 = !DILocation(line: 375, column: 11, scope: !1951, inlinedAt: !1788)
!1953 = !DILocation(line: 375, column: 6, scope: !1784, inlinedAt: !1788)
!1954 = !DILocation(line: 375, column: 27, scope: !1951, inlinedAt: !1788)
!1955 = !DILocation(line: 376, column: 6, scope: !1956, inlinedAt: !1788)
!1956 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 376, column: 6)
!1957 = !DILocation(line: 376, column: 11, scope: !1956, inlinedAt: !1788)
!1958 = !DILocation(line: 376, column: 6, scope: !1784, inlinedAt: !1788)
!1959 = !DILocation(line: 376, column: 32, scope: !1956, inlinedAt: !1788)
!1960 = !DILocation(line: 377, column: 6, scope: !1961, inlinedAt: !1788)
!1961 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 377, column: 6)
!1962 = !DILocation(line: 377, column: 11, scope: !1961, inlinedAt: !1788)
!1963 = !DILocation(line: 377, column: 6, scope: !1784, inlinedAt: !1788)
!1964 = !DILocation(line: 377, column: 32, scope: !1961, inlinedAt: !1788)
!1965 = !DILocation(line: 378, column: 6, scope: !1966, inlinedAt: !1788)
!1966 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 378, column: 6)
!1967 = !DILocation(line: 378, column: 11, scope: !1966, inlinedAt: !1788)
!1968 = !DILocation(line: 378, column: 6, scope: !1784, inlinedAt: !1788)
!1969 = !DILocation(line: 378, column: 32, scope: !1966, inlinedAt: !1788)
!1970 = !DILocation(line: 379, column: 6, scope: !1971, inlinedAt: !1788)
!1971 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 379, column: 6)
!1972 = !DILocation(line: 379, column: 11, scope: !1971, inlinedAt: !1788)
!1973 = !DILocation(line: 379, column: 6, scope: !1784, inlinedAt: !1788)
!1974 = !DILocation(line: 379, column: 33, scope: !1971, inlinedAt: !1788)
!1975 = !DILocation(line: 380, column: 6, scope: !1976, inlinedAt: !1788)
!1976 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 380, column: 6)
!1977 = !DILocation(line: 380, column: 11, scope: !1976, inlinedAt: !1788)
!1978 = !DILocation(line: 380, column: 6, scope: !1784, inlinedAt: !1788)
!1979 = !DILocation(line: 380, column: 33, scope: !1976, inlinedAt: !1788)
!1980 = !DILocation(line: 381, column: 6, scope: !1981, inlinedAt: !1788)
!1981 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 381, column: 6)
!1982 = !DILocation(line: 381, column: 11, scope: !1981, inlinedAt: !1788)
!1983 = !DILocation(line: 381, column: 6, scope: !1784, inlinedAt: !1788)
!1984 = !DILocation(line: 381, column: 33, scope: !1981, inlinedAt: !1788)
!1985 = !DILocation(line: 382, column: 2, scope: !1986, inlinedAt: !1788)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !6, line: 382, column: 2)
!1987 = distinct !DILexicalBlock(scope: !1784, file: !6, line: 382, column: 2)
!1988 = !{i32 -2144089795, i32 -2144089766, i32 -2144089720, i32 -2144089662, i32 -2144089608, i32 -2144089554, i32 -2144089499, i32 -2144089468}
!1989 = !DILocation(line: 382, column: 2, scope: !1990, inlinedAt: !1788)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !6, line: 382, column: 2)
!1991 = distinct !DILexicalBlock(scope: !1987, file: !6, line: 382, column: 2)
!1992 = !{i32 -2144089025, i32 -2144089018, i32 -2144088964, i32 -2144088933, i32 -2144088903}
!1993 = !DILocation(line: 382, column: 2, scope: !1991, inlinedAt: !1788)
!1994 = !DILocation(line: 386, column: 1, scope: !1784, inlinedAt: !1788)
!1995 = !DILocation(line: 547, column: 9, scope: !1767, inlinedAt: !1770)
!1996 = !DILocation(line: 549, column: 8, scope: !1997, inlinedAt: !1770)
!1997 = distinct !DILexicalBlock(scope: !1767, file: !6, line: 549, column: 7)
!1998 = !DILocation(line: 549, column: 7, scope: !1767, inlinedAt: !1770)
!1999 = !DILocation(line: 550, column: 4, scope: !1997, inlinedAt: !1770)
!2000 = !DILocation(line: 553, column: 33, scope: !1767, inlinedAt: !1770)
!2001 = !DILocation(line: 325, column: 6, scope: !2002, inlinedAt: !1782)
!2002 = distinct !DILexicalBlock(scope: !1778, file: !6, line: 325, column: 6)
!2003 = !DILocation(line: 325, column: 6, scope: !1778, inlinedAt: !1782)
!2004 = !DILocation(line: 326, column: 3, scope: !2002, inlinedAt: !1782)
!2005 = !DILocation(line: 332, column: 9, scope: !1778, inlinedAt: !1782)
!2006 = !DILocation(line: 332, column: 15, scope: !1778, inlinedAt: !1782)
!2007 = !DILocation(line: 332, column: 2, scope: !1778, inlinedAt: !1782)
!2008 = !DILocation(line: 336, column: 1, scope: !1778, inlinedAt: !1782)
!2009 = !DILocation(line: 553, column: 5, scope: !1767, inlinedAt: !1770)
!2010 = !DILocation(line: 553, column: 41, scope: !1767, inlinedAt: !1770)
!2011 = !DILocation(line: 554, column: 5, scope: !1767, inlinedAt: !1770)
!2012 = !DILocation(line: 554, column: 12, scope: !1767, inlinedAt: !1770)
!2013 = !DILocation(line: 448, column: 31, scope: !1759, inlinedAt: !1766)
!2014 = !DILocation(line: 448, column: 34, scope: !1759, inlinedAt: !1766)
!2015 = !DILocation(line: 448, column: 14, scope: !1759, inlinedAt: !1766)
!2016 = !DILocation(line: 450, column: 22, scope: !1759, inlinedAt: !1766)
!2017 = !DILocation(line: 450, column: 25, scope: !1759, inlinedAt: !1766)
!2018 = !DILocation(line: 450, column: 30, scope: !1759, inlinedAt: !1766)
!2019 = !DILocation(line: 450, column: 36, scope: !1759, inlinedAt: !1766)
!2020 = !DILocation(line: 450, column: 8, scope: !1759, inlinedAt: !1766)
!2021 = !DILocation(line: 450, column: 6, scope: !1759, inlinedAt: !1766)
!2022 = !DILocation(line: 451, column: 9, scope: !1759, inlinedAt: !1766)
!2023 = !DILocation(line: 552, column: 3, scope: !1767, inlinedAt: !1770)
!2024 = !DILocation(line: 557, column: 19, scope: !1769, inlinedAt: !1770)
!2025 = !DILocation(line: 557, column: 25, scope: !1769, inlinedAt: !1770)
!2026 = !DILocation(line: 557, column: 9, scope: !1769, inlinedAt: !1770)
!2027 = !DILocation(line: 557, column: 2, scope: !1769, inlinedAt: !1770)
!2028 = !DILocation(line: 558, column: 1, scope: !1769, inlinedAt: !1770)
!2029 = !DILocation(line: 664, column: 2, scope: !1751)
!2030 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2031, file: !2031, line: 646, type: !2032, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!2031 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!792}
!2034 = !DILocalVariable(name: "__ret", scope: !2035, file: !2031, line: 648, type: !792)
!2035 = distinct !DILexicalBlock(scope: !2030, file: !2031, line: 648, column: 9)
!2036 = !DILocation(line: 648, column: 9, scope: !2035)
!2037 = !DILocalVariable(name: "__edi", scope: !2035, file: !2031, line: 648, type: !792)
!2038 = !DILocalVariable(name: "__esi", scope: !2035, file: !2031, line: 648, type: !792)
!2039 = !DILocalVariable(name: "__edx", scope: !2035, file: !2031, line: 648, type: !792)
!2040 = !DILocalVariable(name: "__ecx", scope: !2035, file: !2031, line: 648, type: !792)
!2041 = !DILocalVariable(name: "__eax", scope: !2035, file: !2031, line: 648, type: !792)
!2042 = !DILocation(line: 648, column: 9, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !2031, line: 648, column: 9)
!2044 = distinct !DILexicalBlock(scope: !2035, file: !2031, line: 648, column: 9)
!2045 = !{i32 -2145763401, i32 -2145761086, i32 -2145760852, i32 -2145760801, i32 -2145760773, i32 -2145760748, i32 -2145761064, i32 -2145761051, i32 -2145760613, i32 -2145760494, i32 -2145760959, i32 -2145760932, i32 -2145760904, i32 -2145760874}
!2046 = !DILocalVariable(name: "__mask", scope: !2047, file: !2031, line: 648, type: !792)
!2047 = distinct !DILexicalBlock(scope: !2043, file: !2031, line: 648, column: 9)
!2048 = !DILocation(line: 648, column: 9, scope: !2047)
!2049 = !DILocation(line: 648, column: 9, scope: !2044)
!2050 = !DILocation(line: 648, column: 2, scope: !2030)
!2051 = distinct !DISubprogram(name: "get_order", scope: !2052, file: !2052, line: 29, type: !1206, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!2052 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2053 = !DILocalVariable(name: "x", arg: 1, scope: !2054, file: !2055, line: 366, type: !27)
!2054 = distinct !DISubprogram(name: "fls64", scope: !2055, file: !2055, line: 366, type: !2056, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!2055 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!1208, !27}
!2058 = !DILocation(line: 366, column: 40, scope: !2054, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 46, column: 9, scope: !2051)
!2060 = !DILocalVariable(name: "bitpos", scope: !2054, file: !2055, line: 368, type: !1208)
!2061 = !DILocation(line: 368, column: 6, scope: !2054, inlinedAt: !2059)
!2062 = !DILocalVariable(name: "size", arg: 1, scope: !2051, file: !2052, line: 29, type: !792)
!2063 = !DILocation(line: 29, column: 63, scope: !2051)
!2064 = !DILocation(line: 31, column: 27, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2051, file: !2052, line: 31, column: 6)
!2066 = !DILocation(line: 31, column: 6, scope: !2065)
!2067 = !DILocation(line: 31, column: 6, scope: !2051)
!2068 = !DILocation(line: 32, column: 8, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !2052, line: 32, column: 7)
!2070 = distinct !DILexicalBlock(scope: !2065, file: !2052, line: 31, column: 34)
!2071 = !DILocation(line: 32, column: 7, scope: !2070)
!2072 = !DILocation(line: 33, column: 4, scope: !2069)
!2073 = !DILocation(line: 35, column: 7, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !2052, line: 35, column: 7)
!2075 = !DILocation(line: 35, column: 12, scope: !2074)
!2076 = !DILocation(line: 35, column: 7, scope: !2070)
!2077 = !DILocation(line: 36, column: 4, scope: !2074)
!2078 = !DILocation(line: 38, column: 10, scope: !2070)
!2079 = !DILocation(line: 38, column: 28, scope: !2070)
!2080 = !DILocation(line: 38, column: 41, scope: !2070)
!2081 = !DILocation(line: 38, column: 3, scope: !2070)
!2082 = !DILocation(line: 41, column: 6, scope: !2051)
!2083 = !DILocation(line: 42, column: 7, scope: !2051)
!2084 = !DILocation(line: 46, column: 15, scope: !2051)
!2085 = !DILocation(line: 374, column: 2, scope: !2054, inlinedAt: !2059)
!2086 = !DILocation(line: 376, column: 14, scope: !2054, inlinedAt: !2059)
!2087 = !{i32 681407}
!2088 = !DILocation(line: 377, column: 9, scope: !2054, inlinedAt: !2059)
!2089 = !DILocation(line: 377, column: 16, scope: !2054, inlinedAt: !2059)
!2090 = !DILocation(line: 46, column: 2, scope: !2051)
!2091 = !DILocation(line: 48, column: 1, scope: !2051)
!2092 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2093, file: !2093, line: 30, type: !2094, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!2093 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!1208, !26}
!2096 = !DILocation(line: 366, column: 40, scope: !2054, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 32, column: 9, scope: !2092)
!2098 = !DILocation(line: 368, column: 6, scope: !2054, inlinedAt: !2097)
!2099 = !DILocalVariable(name: "n", arg: 1, scope: !2092, file: !2093, line: 30, type: !26)
!2100 = !DILocation(line: 30, column: 21, scope: !2092)
!2101 = !DILocation(line: 32, column: 15, scope: !2092)
!2102 = !DILocation(line: 374, column: 2, scope: !2054, inlinedAt: !2097)
!2103 = !DILocation(line: 376, column: 14, scope: !2054, inlinedAt: !2097)
!2104 = !DILocation(line: 377, column: 9, scope: !2054, inlinedAt: !2097)
!2105 = !DILocation(line: 377, column: 16, scope: !2054, inlinedAt: !2097)
!2106 = !DILocation(line: 32, column: 18, scope: !2092)
!2107 = !DILocation(line: 32, column: 2, scope: !2092)
!2108 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2109, file: !2109, line: 137, type: !2110, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !805)
!2109 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!24, !1762, !2112, !1754, !790}
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2114 = !DILocalVariable(name: "s", arg: 1, scope: !2108, file: !2109, line: 137, type: !1762)
!2115 = !DILocation(line: 137, column: 54, scope: !2108)
!2116 = !DILocalVariable(name: "object", arg: 2, scope: !2108, file: !2109, line: 137, type: !2112)
!2117 = !DILocation(line: 137, column: 69, scope: !2108)
!2118 = !DILocalVariable(name: "size", arg: 3, scope: !2108, file: !2109, line: 138, type: !1754)
!2119 = !DILocation(line: 138, column: 12, scope: !2108)
!2120 = !DILocalVariable(name: "flags", arg: 4, scope: !2108, file: !2109, line: 138, type: !790)
!2121 = !DILocation(line: 138, column: 24, scope: !2108)
!2122 = !DILocation(line: 140, column: 17, scope: !2108)
!2123 = !DILocation(line: 140, column: 2, scope: !2108)
