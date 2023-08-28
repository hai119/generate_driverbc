; ModuleID = '../bcout/drivers/acpi/acpica/evxface.llvm.bc'
source_filename = "drivers/acpi/acpica/evxface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_global_notify_handler = type { void (i8*, i32, i8*)*, i8* }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.acpi_sci_handler_info = type { %struct.acpi_sci_handler_info*, i32 (i8*)*, i8* }
%struct.acpi_fixed_event_handler = type { i32 (i8*)*, i8* }
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
%struct.acpi_object_notify_common = type { %union.acpi_operand_object*, i8, i8, i16, i8, [2 x %union.acpi_operand_object*], %union.acpi_operand_object* }
%struct.acpi_object_notify_handler = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, i32, void (i8*, i32, i8*)*, i8*, [2 x %union.acpi_operand_object*] }
%struct.acpi_gpe_event_info = type { %union.acpi_gpe_dispatch_info, %struct.acpi_gpe_register_info*, i8, i8, i8, i8 }
%union.acpi_gpe_dispatch_info = type { %struct.acpi_namespace_node* }
%struct.acpi_gpe_register_info = type { %struct.acpi_gpe_address, %struct.acpi_gpe_address, i16, i8, i8, i8, i8 }
%struct.acpi_gpe_address = type { i8, i64 }
%struct.acpi_gpe_handler_info = type { i32 (i8*, i32, i8*)*, i8*, %struct.acpi_namespace_node*, i8, i8 }

@acpi_gbl_global_notify = external dso_local global [2 x %struct.acpi_global_notify_handler], align 16
@_acpi_module_name = internal constant [8 x i8] c"evxface\00", align 1, !dbg !0
@acpi_gbl_gpe_lock = external dso_local global %struct.spinlock*, align 8
@acpi_gbl_sci_handler_list = external dso_local global %struct.acpi_sci_handler_info*, align 8
@acpi_gbl_global_event_handler = external dso_local global void (i32, i8*, i32, i8*)*, align 8
@acpi_gbl_global_event_handler_context = external dso_local global i8*, align 8
@acpi_gbl_fixed_event_handlers = external dso_local global [5 x %struct.acpi_fixed_event_handler], align 16
@.str = private unnamed_addr constant [39 x i8] c"Could not enable fixed event - %s (%u)\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Could not disable fixed event - %s (%u)\00", align 1
@acpi_gbl_global_lock_mutex = external dso_local global %union.acpi_operand_object*, align 8
@acpi_gbl_global_lock_handle = external dso_local global i16, align 2
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"GPE type mismatch (level/edge)\00", align 1
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_install_notify_handler(i8* %device, i32 %handler_type, void (i8*, i32, i8*)* %handler, i8* %context) #0 !dbg !1931 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca i8*, align 8
  %handler_type.addr = alloca i32, align 4
  %handler.addr = alloca void (i8*, i32, i8*)*, align 8
  %context.addr = alloca i8*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %handler_obj = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %device, i8** %device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %device.addr, metadata !1934, metadata !DIExpression()), !dbg !1935
  store i32 %handler_type, i32* %handler_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %handler_type.addr, metadata !1936, metadata !DIExpression()), !dbg !1937
  store void (i8*, i32, i8*)* %handler, void (i8*, i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i32, i8*)** %handler.addr, metadata !1938, metadata !DIExpression()), !dbg !1939
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1940, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1942, metadata !DIExpression()), !dbg !1943
  %0 = load i8*, i8** %device.addr, align 8, !dbg !1944
  %1 = bitcast i8* %0 to %struct.acpi_namespace_node*, !dbg !1944
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %node, align 8, !dbg !1943
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1945, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %handler_obj, metadata !1947, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1949, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1951, metadata !DIExpression()), !dbg !1952
  %2 = load i8*, i8** %device.addr, align 8, !dbg !1953
  %tobool = icmp ne i8* %2, null, !dbg !1953
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1955

lor.lhs.false:                                    ; preds = %entry
  %3 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %handler.addr, align 8, !dbg !1956
  %tobool1 = icmp ne void (i8*, i32, i8*)* %3, null, !dbg !1956
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !1957

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load i32, i32* %handler_type.addr, align 4, !dbg !1958
  %tobool3 = icmp ne i32 %4, 0, !dbg !1958
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !1959

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load i32, i32* %handler_type.addr, align 4, !dbg !1960
  %cmp = icmp ugt i32 %5, 3, !dbg !1961
  br i1 %cmp, label %if.then, label %if.end, !dbg !1962

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !1963
  br label %return, !dbg !1963

if.end:                                           ; preds = %lor.lhs.false4
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #8, !dbg !1965
  store i32 %call, i32* %status, align 4, !dbg !1966
  %6 = load i32, i32* %status, align 4, !dbg !1967
  %tobool5 = icmp ne i32 %6, 0, !dbg !1967
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !1969

if.then6:                                         ; preds = %if.end
  %7 = load i32, i32* %status, align 4, !dbg !1970
  store i32 %7, i32* %retval, align 4, !dbg !1970
  br label %return, !dbg !1970

if.end7:                                          ; preds = %if.end
  %8 = load i8*, i8** %device.addr, align 8, !dbg !1972
  %cmp8 = icmp eq i8* %8, inttoptr (i64 -1 to i8*), !dbg !1974
  br i1 %cmp8, label %if.then9, label %if.end24, !dbg !1975

if.then9:                                         ; preds = %if.end7
  store i32 0, i32* %i, align 4, !dbg !1976
  br label %for.cond, !dbg !1979

for.cond:                                         ; preds = %for.inc, %if.then9
  %9 = load i32, i32* %i, align 4, !dbg !1980
  %cmp10 = icmp ult i32 %9, 2, !dbg !1982
  br i1 %cmp10, label %for.body, label %for.end, !dbg !1983

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %handler_type.addr, align 4, !dbg !1984
  %11 = load i32, i32* %i, align 4, !dbg !1987
  %add = add i32 %11, 1, !dbg !1988
  %and = and i32 %10, %add, !dbg !1989
  %tobool11 = icmp ne i32 %and, 0, !dbg !1989
  br i1 %tobool11, label %if.then12, label %if.end23, !dbg !1990

if.then12:                                        ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !1991
  %idxprom = zext i32 %12 to i64, !dbg !1994
  %arrayidx = getelementptr [2 x %struct.acpi_global_notify_handler], [2 x %struct.acpi_global_notify_handler]* @acpi_gbl_global_notify, i64 0, i64 %idxprom, !dbg !1994
  %handler13 = getelementptr inbounds %struct.acpi_global_notify_handler, %struct.acpi_global_notify_handler* %arrayidx, i32 0, i32 0, !dbg !1995
  %13 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %handler13, align 16, !dbg !1995
  %tobool14 = icmp ne void (i8*, i32, i8*)* %13, null, !dbg !1994
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !1996

if.then15:                                        ; preds = %if.then12
  store i32 7, i32* %status, align 4, !dbg !1997
  br label %unlock_and_exit, !dbg !1999

if.end16:                                         ; preds = %if.then12
  %14 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %handler.addr, align 8, !dbg !2000
  %15 = load i32, i32* %i, align 4, !dbg !2001
  %idxprom17 = zext i32 %15 to i64, !dbg !2002
  %arrayidx18 = getelementptr [2 x %struct.acpi_global_notify_handler], [2 x %struct.acpi_global_notify_handler]* @acpi_gbl_global_notify, i64 0, i64 %idxprom17, !dbg !2002
  %handler19 = getelementptr inbounds %struct.acpi_global_notify_handler, %struct.acpi_global_notify_handler* %arrayidx18, i32 0, i32 0, !dbg !2003
  store void (i8*, i32, i8*)* %14, void (i8*, i32, i8*)** %handler19, align 16, !dbg !2004
  %16 = load i8*, i8** %context.addr, align 8, !dbg !2005
  %17 = load i32, i32* %i, align 4, !dbg !2006
  %idxprom20 = zext i32 %17 to i64, !dbg !2007
  %arrayidx21 = getelementptr [2 x %struct.acpi_global_notify_handler], [2 x %struct.acpi_global_notify_handler]* @acpi_gbl_global_notify, i64 0, i64 %idxprom20, !dbg !2007
  %context22 = getelementptr inbounds %struct.acpi_global_notify_handler, %struct.acpi_global_notify_handler* %arrayidx21, i32 0, i32 1, !dbg !2008
  store i8* %16, i8** %context22, align 8, !dbg !2009
  br label %if.end23, !dbg !2010

if.end23:                                         ; preds = %if.end16, %for.body
  br label %for.inc, !dbg !2011

for.inc:                                          ; preds = %if.end23
  %18 = load i32, i32* %i, align 4, !dbg !2012
  %inc = add i32 %18, 1, !dbg !2012
  store i32 %inc, i32* %i, align 4, !dbg !2012
  br label %for.cond, !dbg !2013, !llvm.loop !2014

for.end:                                          ; preds = %for.cond
  br label %unlock_and_exit, !dbg !2016

if.end24:                                         ; preds = %if.end7
  %19 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !2017
  %call25 = call zeroext i8 @acpi_ev_is_notify_object(%struct.acpi_namespace_node* %19) #8, !dbg !2019
  %tobool26 = icmp ne i8 %call25, 0, !dbg !2019
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !2020

if.then27:                                        ; preds = %if.end24
  store i32 8, i32* %status, align 4, !dbg !2021
  br label %unlock_and_exit, !dbg !2023

if.end28:                                         ; preds = %if.end24
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !2024
  %call29 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %20) #8, !dbg !2025
  store %union.acpi_operand_object* %call29, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2026
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2027
  %tobool30 = icmp ne %union.acpi_operand_object* %21, null, !dbg !2027
  br i1 %tobool30, label %if.end42, label %if.then31, !dbg !2029

if.then31:                                        ; preds = %if.end28
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !2030
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %22, i32 0, i32 2, !dbg !2030
  %23 = load i8, i8* %type, align 1, !dbg !2030
  %conv = zext i8 %23 to i32, !dbg !2030
  %call32 = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 126, i32 4, i32 %conv) #8, !dbg !2030
  store %union.acpi_operand_object* %call32, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2032
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2033
  %tobool33 = icmp ne %union.acpi_operand_object* %24, null, !dbg !2033
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !2035

if.then34:                                        ; preds = %if.then31
  store i32 4, i32* %status, align 4, !dbg !2036
  br label %unlock_and_exit, !dbg !2038

if.end35:                                         ; preds = %if.then31
  %25 = load i8*, i8** %device.addr, align 8, !dbg !2039
  %26 = bitcast i8* %25 to %struct.acpi_namespace_node*, !dbg !2039
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2040
  %28 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !2041
  %type36 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %28, i32 0, i32 2, !dbg !2042
  %29 = load i8, i8* %type36, align 1, !dbg !2042
  %conv37 = zext i8 %29 to i32, !dbg !2041
  %call38 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %26, %union.acpi_operand_object* %27, i32 %conv37) #8, !dbg !2043
  store i32 %call38, i32* %status, align 4, !dbg !2044
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2045
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %30) #8, !dbg !2046
  %31 = load i32, i32* %status, align 4, !dbg !2047
  %tobool39 = icmp ne i32 %31, 0, !dbg !2047
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !2049

if.then40:                                        ; preds = %if.end35
  br label %unlock_and_exit, !dbg !2050

if.end41:                                         ; preds = %if.end35
  br label %if.end42, !dbg !2052

if.end42:                                         ; preds = %if.end41, %if.end28
  store i32 0, i32* %i, align 4, !dbg !2053
  br label %for.cond43, !dbg !2055

for.cond43:                                       ; preds = %for.inc63, %if.end42
  %32 = load i32, i32* %i, align 4, !dbg !2056
  %cmp44 = icmp ult i32 %32, 2, !dbg !2058
  br i1 %cmp44, label %for.body46, label %for.end65, !dbg !2059

for.body46:                                       ; preds = %for.cond43
  %33 = load i32, i32* %handler_type.addr, align 4, !dbg !2060
  %34 = load i32, i32* %i, align 4, !dbg !2063
  %add47 = add i32 %34, 1, !dbg !2064
  %and48 = and i32 %33, %add47, !dbg !2065
  %tobool49 = icmp ne i32 %and48, 0, !dbg !2065
  br i1 %tobool49, label %if.then50, label %if.end62, !dbg !2066

if.then50:                                        ; preds = %for.body46
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2067
  %common_notify = bitcast %union.acpi_operand_object* %35 to %struct.acpi_object_notify_common*, !dbg !2069
  %notify_list = getelementptr inbounds %struct.acpi_object_notify_common, %struct.acpi_object_notify_common* %common_notify, i32 0, i32 5, !dbg !2070
  %36 = load i32, i32* %i, align 4, !dbg !2071
  %idxprom51 = zext i32 %36 to i64, !dbg !2067
  %arrayidx52 = getelementptr [2 x %union.acpi_operand_object*], [2 x %union.acpi_operand_object*]* %notify_list, i64 0, i64 %idxprom51, !dbg !2067
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx52, align 8, !dbg !2067
  store %union.acpi_operand_object* %37, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2072
  br label %while.cond, !dbg !2073

while.cond:                                       ; preds = %if.end58, %if.then50
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2074
  %tobool53 = icmp ne %union.acpi_operand_object* %38, null, !dbg !2073
  br i1 %tobool53, label %while.body, label %while.end, !dbg !2073

while.body:                                       ; preds = %while.cond
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2075
  %notify = bitcast %union.acpi_operand_object* %39 to %struct.acpi_object_notify_handler*, !dbg !2078
  %handler54 = getelementptr inbounds %struct.acpi_object_notify_handler, %struct.acpi_object_notify_handler* %notify, i32 0, i32 7, !dbg !2079
  %40 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %handler54, align 8, !dbg !2079
  %41 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %handler.addr, align 8, !dbg !2080
  %cmp55 = icmp eq void (i8*, i32, i8*)* %40, %41, !dbg !2081
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !2082

if.then57:                                        ; preds = %while.body
  store i32 7, i32* %status, align 4, !dbg !2083
  br label %unlock_and_exit, !dbg !2085

if.end58:                                         ; preds = %while.body
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2086
  %notify59 = bitcast %union.acpi_operand_object* %42 to %struct.acpi_object_notify_handler*, !dbg !2087
  %next = getelementptr inbounds %struct.acpi_object_notify_handler, %struct.acpi_object_notify_handler* %notify59, i32 0, i32 9, !dbg !2088
  %43 = load i32, i32* %i, align 4, !dbg !2089
  %idxprom60 = zext i32 %43 to i64, !dbg !2086
  %arrayidx61 = getelementptr [2 x %union.acpi_operand_object*], [2 x %union.acpi_operand_object*]* %next, i64 0, i64 %idxprom60, !dbg !2086
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx61, align 8, !dbg !2086
  store %union.acpi_operand_object* %44, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2090
  br label %while.cond, !dbg !2073, !llvm.loop !2091

while.end:                                        ; preds = %while.cond
  br label %if.end62, !dbg !2093

if.end62:                                         ; preds = %while.end, %for.body46
  br label %for.inc63, !dbg !2094

for.inc63:                                        ; preds = %if.end62
  %45 = load i32, i32* %i, align 4, !dbg !2095
  %inc64 = add i32 %45, 1, !dbg !2095
  store i32 %inc64, i32* %i, align 4, !dbg !2095
  br label %for.cond43, !dbg !2096, !llvm.loop !2097

for.end65:                                        ; preds = %for.cond43
  %call66 = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 159, i32 4, i32 23) #8, !dbg !2099
  store %union.acpi_operand_object* %call66, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2100
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2101
  %tobool67 = icmp ne %union.acpi_operand_object* %46, null, !dbg !2101
  br i1 %tobool67, label %if.end69, label %if.then68, !dbg !2103

if.then68:                                        ; preds = %for.end65
  store i32 4, i32* %status, align 4, !dbg !2104
  br label %unlock_and_exit, !dbg !2106

if.end69:                                         ; preds = %for.end65
  %47 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !2107
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2108
  %notify70 = bitcast %union.acpi_operand_object* %48 to %struct.acpi_object_notify_handler*, !dbg !2109
  %node71 = getelementptr inbounds %struct.acpi_object_notify_handler, %struct.acpi_object_notify_handler* %notify70, i32 0, i32 5, !dbg !2110
  store %struct.acpi_namespace_node* %47, %struct.acpi_namespace_node** %node71, align 8, !dbg !2111
  %49 = load i32, i32* %handler_type.addr, align 4, !dbg !2112
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2113
  %notify72 = bitcast %union.acpi_operand_object* %50 to %struct.acpi_object_notify_handler*, !dbg !2114
  %handler_type73 = getelementptr inbounds %struct.acpi_object_notify_handler, %struct.acpi_object_notify_handler* %notify72, i32 0, i32 6, !dbg !2115
  store i32 %49, i32* %handler_type73, align 8, !dbg !2116
  %51 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %handler.addr, align 8, !dbg !2117
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2118
  %notify74 = bitcast %union.acpi_operand_object* %52 to %struct.acpi_object_notify_handler*, !dbg !2119
  %handler75 = getelementptr inbounds %struct.acpi_object_notify_handler, %struct.acpi_object_notify_handler* %notify74, i32 0, i32 7, !dbg !2120
  store void (i8*, i32, i8*)* %51, void (i8*, i32, i8*)** %handler75, align 8, !dbg !2121
  %53 = load i8*, i8** %context.addr, align 8, !dbg !2122
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2123
  %notify76 = bitcast %union.acpi_operand_object* %54 to %struct.acpi_object_notify_handler*, !dbg !2124
  %context77 = getelementptr inbounds %struct.acpi_object_notify_handler, %struct.acpi_object_notify_handler* %notify76, i32 0, i32 8, !dbg !2125
  store i8* %53, i8** %context77, align 8, !dbg !2126
  store i32 0, i32* %i, align 4, !dbg !2127
  br label %for.cond78, !dbg !2129

for.cond78:                                       ; preds = %for.inc99, %if.end69
  %55 = load i32, i32* %i, align 4, !dbg !2130
  %cmp79 = icmp ult i32 %55, 2, !dbg !2132
  br i1 %cmp79, label %for.body81, label %for.end101, !dbg !2133

for.body81:                                       ; preds = %for.cond78
  %56 = load i32, i32* %handler_type.addr, align 4, !dbg !2134
  %57 = load i32, i32* %i, align 4, !dbg !2137
  %add82 = add i32 %57, 1, !dbg !2138
  %and83 = and i32 %56, %add82, !dbg !2139
  %tobool84 = icmp ne i32 %and83, 0, !dbg !2139
  br i1 %tobool84, label %if.then85, label %if.end98, !dbg !2140

if.then85:                                        ; preds = %for.body81
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2141
  %common_notify86 = bitcast %union.acpi_operand_object* %58 to %struct.acpi_object_notify_common*, !dbg !2143
  %notify_list87 = getelementptr inbounds %struct.acpi_object_notify_common, %struct.acpi_object_notify_common* %common_notify86, i32 0, i32 5, !dbg !2144
  %59 = load i32, i32* %i, align 4, !dbg !2145
  %idxprom88 = zext i32 %59 to i64, !dbg !2141
  %arrayidx89 = getelementptr [2 x %union.acpi_operand_object*], [2 x %union.acpi_operand_object*]* %notify_list87, i64 0, i64 %idxprom88, !dbg !2141
  %60 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx89, align 8, !dbg !2141
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2146
  %notify90 = bitcast %union.acpi_operand_object* %61 to %struct.acpi_object_notify_handler*, !dbg !2147
  %next91 = getelementptr inbounds %struct.acpi_object_notify_handler, %struct.acpi_object_notify_handler* %notify90, i32 0, i32 9, !dbg !2148
  %62 = load i32, i32* %i, align 4, !dbg !2149
  %idxprom92 = zext i32 %62 to i64, !dbg !2146
  %arrayidx93 = getelementptr [2 x %union.acpi_operand_object*], [2 x %union.acpi_operand_object*]* %next91, i64 0, i64 %idxprom92, !dbg !2146
  store %union.acpi_operand_object* %60, %union.acpi_operand_object** %arrayidx93, align 8, !dbg !2150
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2151
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2152
  %common_notify94 = bitcast %union.acpi_operand_object* %64 to %struct.acpi_object_notify_common*, !dbg !2153
  %notify_list95 = getelementptr inbounds %struct.acpi_object_notify_common, %struct.acpi_object_notify_common* %common_notify94, i32 0, i32 5, !dbg !2154
  %65 = load i32, i32* %i, align 4, !dbg !2155
  %idxprom96 = zext i32 %65 to i64, !dbg !2152
  %arrayidx97 = getelementptr [2 x %union.acpi_operand_object*], [2 x %union.acpi_operand_object*]* %notify_list95, i64 0, i64 %idxprom96, !dbg !2152
  store %union.acpi_operand_object* %63, %union.acpi_operand_object** %arrayidx97, align 8, !dbg !2156
  br label %if.end98, !dbg !2157

if.end98:                                         ; preds = %if.then85, %for.body81
  br label %for.inc99, !dbg !2158

for.inc99:                                        ; preds = %if.end98
  %66 = load i32, i32* %i, align 4, !dbg !2159
  %inc100 = add i32 %66, 1, !dbg !2159
  store i32 %inc100, i32* %i, align 4, !dbg !2159
  br label %for.cond78, !dbg !2160, !llvm.loop !2161

for.end101:                                       ; preds = %for.cond78
  %67 = load i32, i32* %handler_type.addr, align 4, !dbg !2163
  %cmp102 = icmp eq i32 %67, 3, !dbg !2165
  br i1 %cmp102, label %if.then104, label %if.end105, !dbg !2166

if.then104:                                       ; preds = %for.end101
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2167
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %68) #8, !dbg !2169
  br label %if.end105, !dbg !2170

if.end105:                                        ; preds = %if.then104, %for.end101
  br label %unlock_and_exit, !dbg !2171

unlock_and_exit:                                  ; preds = %if.end105, %if.then68, %if.then57, %if.then40, %if.then34, %if.then27, %for.end, %if.then15
  call void @llvm.dbg.label(metadata !2172), !dbg !2173
  %call106 = call i32 @acpi_ut_release_mutex(i32 1) #8, !dbg !2174
  %69 = load i32, i32* %status, align 4, !dbg !2175
  store i32 %69, i32* %retval, align 4, !dbg !2175
  br label %return, !dbg !2175

return:                                           ; preds = %unlock_and_exit, %if.then6, %if.then
  %70 = load i32, i32* %retval, align 4, !dbg !2176
  ret i32 %70, !dbg !2176
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ev_is_notify_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_add_reference(%union.acpi_operand_object*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_release_mutex(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_remove_notify_handler(i8* %device, i32 %handler_type, void (i8*, i32, i8*)* %handler) #0 !dbg !2177 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca i8*, align 8
  %handler_type.addr = alloca i32, align 4
  %handler.addr = alloca void (i8*, i32, i8*)*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %handler_obj = alloca %union.acpi_operand_object*, align 8
  %previous_handler_obj = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %device, i8** %device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %device.addr, metadata !2180, metadata !DIExpression()), !dbg !2181
  store i32 %handler_type, i32* %handler_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %handler_type.addr, metadata !2182, metadata !DIExpression()), !dbg !2183
  store void (i8*, i32, i8*)* %handler, void (i8*, i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i32, i8*)** %handler.addr, metadata !2184, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !2186, metadata !DIExpression()), !dbg !2187
  %0 = load i8*, i8** %device.addr, align 8, !dbg !2188
  %1 = bitcast i8* %0 to %struct.acpi_namespace_node*, !dbg !2188
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %node, align 8, !dbg !2187
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !2189, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %handler_obj, metadata !2191, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %previous_handler_obj, metadata !2193, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2195, metadata !DIExpression()), !dbg !2196
  store i32 0, i32* %status, align 4, !dbg !2196
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2197, metadata !DIExpression()), !dbg !2198
  %2 = load i8*, i8** %device.addr, align 8, !dbg !2199
  %tobool = icmp ne i8* %2, null, !dbg !2199
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2201

lor.lhs.false:                                    ; preds = %entry
  %3 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %handler.addr, align 8, !dbg !2202
  %tobool1 = icmp ne void (i8*, i32, i8*)* %3, null, !dbg !2202
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !2203

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load i32, i32* %handler_type.addr, align 4, !dbg !2204
  %tobool3 = icmp ne i32 %4, 0, !dbg !2204
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !2205

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load i32, i32* %handler_type.addr, align 4, !dbg !2206
  %cmp = icmp ugt i32 %5, 3, !dbg !2207
  br i1 %cmp, label %if.then, label %if.end, !dbg !2208

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !2209
  br label %return, !dbg !2209

if.end:                                           ; preds = %lor.lhs.false4
  %6 = load i8*, i8** %device.addr, align 8, !dbg !2211
  %cmp5 = icmp eq i8* %6, inttoptr (i64 -1 to i8*), !dbg !2213
  br i1 %cmp5, label %if.then6, label %if.end29, !dbg !2214

if.then6:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !2215
  br label %for.cond, !dbg !2218

for.cond:                                         ; preds = %for.inc, %if.then6
  %7 = load i32, i32* %i, align 4, !dbg !2219
  %cmp7 = icmp ult i32 %7, 2, !dbg !2221
  br i1 %cmp7, label %for.body, label %for.end, !dbg !2222

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %handler_type.addr, align 4, !dbg !2223
  %9 = load i32, i32* %i, align 4, !dbg !2226
  %add = add i32 %9, 1, !dbg !2227
  %and = and i32 %8, %add, !dbg !2228
  %tobool8 = icmp ne i32 %and, 0, !dbg !2228
  br i1 %tobool8, label %if.then9, label %if.end28, !dbg !2229

if.then9:                                         ; preds = %for.body
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #8, !dbg !2230
  store i32 %call, i32* %status, align 4, !dbg !2232
  %10 = load i32, i32* %status, align 4, !dbg !2233
  %tobool10 = icmp ne i32 %10, 0, !dbg !2233
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2235

if.then11:                                        ; preds = %if.then9
  %11 = load i32, i32* %status, align 4, !dbg !2236
  store i32 %11, i32* %retval, align 4, !dbg !2236
  br label %return, !dbg !2236

if.end12:                                         ; preds = %if.then9
  %12 = load i32, i32* %i, align 4, !dbg !2238
  %idxprom = zext i32 %12 to i64, !dbg !2240
  %arrayidx = getelementptr [2 x %struct.acpi_global_notify_handler], [2 x %struct.acpi_global_notify_handler]* @acpi_gbl_global_notify, i64 0, i64 %idxprom, !dbg !2240
  %handler13 = getelementptr inbounds %struct.acpi_global_notify_handler, %struct.acpi_global_notify_handler* %arrayidx, i32 0, i32 0, !dbg !2241
  %13 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %handler13, align 16, !dbg !2241
  %tobool14 = icmp ne void (i8*, i32, i8*)* %13, null, !dbg !2240
  br i1 %tobool14, label %lor.lhs.false15, label %if.then20, !dbg !2242

lor.lhs.false15:                                  ; preds = %if.end12
  %14 = load i32, i32* %i, align 4, !dbg !2243
  %idxprom16 = zext i32 %14 to i64, !dbg !2244
  %arrayidx17 = getelementptr [2 x %struct.acpi_global_notify_handler], [2 x %struct.acpi_global_notify_handler]* @acpi_gbl_global_notify, i64 0, i64 %idxprom16, !dbg !2244
  %handler18 = getelementptr inbounds %struct.acpi_global_notify_handler, %struct.acpi_global_notify_handler* %arrayidx17, i32 0, i32 0, !dbg !2245
  %15 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %handler18, align 16, !dbg !2245
  %16 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %handler.addr, align 8, !dbg !2246
  %cmp19 = icmp ne void (i8*, i32, i8*)* %15, %16, !dbg !2247
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !2248

if.then20:                                        ; preds = %lor.lhs.false15, %if.end12
  store i32 6, i32* %status, align 4, !dbg !2249
  br label %unlock_and_exit, !dbg !2251

if.end21:                                         ; preds = %lor.lhs.false15
  %17 = load i32, i32* %i, align 4, !dbg !2252
  %idxprom22 = zext i32 %17 to i64, !dbg !2253
  %arrayidx23 = getelementptr [2 x %struct.acpi_global_notify_handler], [2 x %struct.acpi_global_notify_handler]* @acpi_gbl_global_notify, i64 0, i64 %idxprom22, !dbg !2253
  %handler24 = getelementptr inbounds %struct.acpi_global_notify_handler, %struct.acpi_global_notify_handler* %arrayidx23, i32 0, i32 0, !dbg !2254
  store void (i8*, i32, i8*)* null, void (i8*, i32, i8*)** %handler24, align 16, !dbg !2255
  %18 = load i32, i32* %i, align 4, !dbg !2256
  %idxprom25 = zext i32 %18 to i64, !dbg !2257
  %arrayidx26 = getelementptr [2 x %struct.acpi_global_notify_handler], [2 x %struct.acpi_global_notify_handler]* @acpi_gbl_global_notify, i64 0, i64 %idxprom25, !dbg !2257
  %context = getelementptr inbounds %struct.acpi_global_notify_handler, %struct.acpi_global_notify_handler* %arrayidx26, i32 0, i32 1, !dbg !2258
  store i8* null, i8** %context, align 8, !dbg !2259
  %call27 = call i32 @acpi_ut_release_mutex(i32 1) #8, !dbg !2260
  call void @acpi_os_wait_events_complete() #8, !dbg !2261
  br label %if.end28, !dbg !2262

if.end28:                                         ; preds = %if.end21, %for.body
  br label %for.inc, !dbg !2263

for.inc:                                          ; preds = %if.end28
  %19 = load i32, i32* %i, align 4, !dbg !2264
  %inc = add i32 %19, 1, !dbg !2264
  store i32 %inc, i32* %i, align 4, !dbg !2264
  br label %for.cond, !dbg !2265, !llvm.loop !2266

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !2268
  br label %return, !dbg !2268

if.end29:                                         ; preds = %if.end
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !2269
  %call30 = call zeroext i8 @acpi_ev_is_notify_object(%struct.acpi_namespace_node* %20) #8, !dbg !2271
  %tobool31 = icmp ne i8 %call30, 0, !dbg !2271
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !2272

if.then32:                                        ; preds = %if.end29
  store i32 8, i32* %retval, align 4, !dbg !2273
  br label %return, !dbg !2273

if.end33:                                         ; preds = %if.end29
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !2275
  %call34 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %21) #8, !dbg !2276
  store %union.acpi_operand_object* %call34, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2277
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2278
  %tobool35 = icmp ne %union.acpi_operand_object* %22, null, !dbg !2278
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !2280

if.then36:                                        ; preds = %if.end33
  store i32 6, i32* %retval, align 4, !dbg !2281
  br label %return, !dbg !2281

if.end37:                                         ; preds = %if.end33
  store i32 0, i32* %i, align 4, !dbg !2283
  br label %for.cond38, !dbg !2285

for.cond38:                                       ; preds = %for.inc81, %if.end37
  %23 = load i32, i32* %i, align 4, !dbg !2286
  %cmp39 = icmp ult i32 %23, 2, !dbg !2288
  br i1 %cmp39, label %for.body40, label %for.end83, !dbg !2289

for.body40:                                       ; preds = %for.cond38
  %24 = load i32, i32* %handler_type.addr, align 4, !dbg !2290
  %25 = load i32, i32* %i, align 4, !dbg !2293
  %add41 = add i32 %25, 1, !dbg !2294
  %and42 = and i32 %24, %add41, !dbg !2295
  %tobool43 = icmp ne i32 %and42, 0, !dbg !2295
  br i1 %tobool43, label %if.then44, label %if.end80, !dbg !2296

if.then44:                                        ; preds = %for.body40
  %call45 = call i32 @acpi_ut_acquire_mutex(i32 1) #8, !dbg !2297
  store i32 %call45, i32* %status, align 4, !dbg !2299
  %26 = load i32, i32* %status, align 4, !dbg !2300
  %tobool46 = icmp ne i32 %26, 0, !dbg !2300
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !2302

if.then47:                                        ; preds = %if.then44
  %27 = load i32, i32* %status, align 4, !dbg !2303
  store i32 %27, i32* %retval, align 4, !dbg !2303
  br label %return, !dbg !2303

if.end48:                                         ; preds = %if.then44
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2305
  %common_notify = bitcast %union.acpi_operand_object* %28 to %struct.acpi_object_notify_common*, !dbg !2306
  %notify_list = getelementptr inbounds %struct.acpi_object_notify_common, %struct.acpi_object_notify_common* %common_notify, i32 0, i32 5, !dbg !2307
  %29 = load i32, i32* %i, align 4, !dbg !2308
  %idxprom49 = zext i32 %29 to i64, !dbg !2305
  %arrayidx50 = getelementptr [2 x %union.acpi_operand_object*], [2 x %union.acpi_operand_object*]* %notify_list, i64 0, i64 %idxprom49, !dbg !2305
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx50, align 8, !dbg !2305
  store %union.acpi_operand_object* %30, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2309
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %previous_handler_obj, align 8, !dbg !2310
  br label %while.cond, !dbg !2311

while.cond:                                       ; preds = %while.body, %if.end48
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2312
  %tobool51 = icmp ne %union.acpi_operand_object* %31, null, !dbg !2312
  br i1 %tobool51, label %land.rhs, label %land.end, !dbg !2313

land.rhs:                                         ; preds = %while.cond
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2314
  %notify = bitcast %union.acpi_operand_object* %32 to %struct.acpi_object_notify_handler*, !dbg !2315
  %handler52 = getelementptr inbounds %struct.acpi_object_notify_handler, %struct.acpi_object_notify_handler* %notify, i32 0, i32 7, !dbg !2316
  %33 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %handler52, align 8, !dbg !2316
  %34 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %handler.addr, align 8, !dbg !2317
  %cmp53 = icmp ne void (i8*, i32, i8*)* %33, %34, !dbg !2318
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %35 = phi i1 [ false, %while.cond ], [ %cmp53, %land.rhs ], !dbg !2319
  br i1 %35, label %while.body, label %while.end, !dbg !2311

while.body:                                       ; preds = %land.end
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2320
  store %union.acpi_operand_object* %36, %union.acpi_operand_object** %previous_handler_obj, align 8, !dbg !2322
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2323
  %notify54 = bitcast %union.acpi_operand_object* %37 to %struct.acpi_object_notify_handler*, !dbg !2324
  %next = getelementptr inbounds %struct.acpi_object_notify_handler, %struct.acpi_object_notify_handler* %notify54, i32 0, i32 9, !dbg !2325
  %38 = load i32, i32* %i, align 4, !dbg !2326
  %idxprom55 = zext i32 %38 to i64, !dbg !2323
  %arrayidx56 = getelementptr [2 x %union.acpi_operand_object*], [2 x %union.acpi_operand_object*]* %next, i64 0, i64 %idxprom55, !dbg !2323
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx56, align 8, !dbg !2323
  store %union.acpi_operand_object* %39, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2327
  br label %while.cond, !dbg !2311, !llvm.loop !2328

while.end:                                        ; preds = %land.end
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2330
  %tobool57 = icmp ne %union.acpi_operand_object* %40, null, !dbg !2330
  br i1 %tobool57, label %if.end59, label %if.then58, !dbg !2332

if.then58:                                        ; preds = %while.end
  store i32 6, i32* %status, align 4, !dbg !2333
  br label %unlock_and_exit, !dbg !2335

if.end59:                                         ; preds = %while.end
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %previous_handler_obj, align 8, !dbg !2336
  %tobool60 = icmp ne %union.acpi_operand_object* %41, null, !dbg !2336
  br i1 %tobool60, label %if.then61, label %if.else, !dbg !2338

if.then61:                                        ; preds = %if.end59
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2339
  %notify62 = bitcast %union.acpi_operand_object* %42 to %struct.acpi_object_notify_handler*, !dbg !2341
  %next63 = getelementptr inbounds %struct.acpi_object_notify_handler, %struct.acpi_object_notify_handler* %notify62, i32 0, i32 9, !dbg !2342
  %43 = load i32, i32* %i, align 4, !dbg !2343
  %idxprom64 = zext i32 %43 to i64, !dbg !2339
  %arrayidx65 = getelementptr [2 x %union.acpi_operand_object*], [2 x %union.acpi_operand_object*]* %next63, i64 0, i64 %idxprom64, !dbg !2339
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx65, align 8, !dbg !2339
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %previous_handler_obj, align 8, !dbg !2344
  %notify66 = bitcast %union.acpi_operand_object* %45 to %struct.acpi_object_notify_handler*, !dbg !2345
  %next67 = getelementptr inbounds %struct.acpi_object_notify_handler, %struct.acpi_object_notify_handler* %notify66, i32 0, i32 9, !dbg !2346
  %46 = load i32, i32* %i, align 4, !dbg !2347
  %idxprom68 = zext i32 %46 to i64, !dbg !2344
  %arrayidx69 = getelementptr [2 x %union.acpi_operand_object*], [2 x %union.acpi_operand_object*]* %next67, i64 0, i64 %idxprom68, !dbg !2344
  store %union.acpi_operand_object* %44, %union.acpi_operand_object** %arrayidx69, align 8, !dbg !2348
  br label %if.end78, !dbg !2349

if.else:                                          ; preds = %if.end59
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2350
  %notify70 = bitcast %union.acpi_operand_object* %47 to %struct.acpi_object_notify_handler*, !dbg !2352
  %next71 = getelementptr inbounds %struct.acpi_object_notify_handler, %struct.acpi_object_notify_handler* %notify70, i32 0, i32 9, !dbg !2353
  %48 = load i32, i32* %i, align 4, !dbg !2354
  %idxprom72 = zext i32 %48 to i64, !dbg !2350
  %arrayidx73 = getelementptr [2 x %union.acpi_operand_object*], [2 x %union.acpi_operand_object*]* %next71, i64 0, i64 %idxprom72, !dbg !2350
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx73, align 8, !dbg !2350
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !2355
  %common_notify74 = bitcast %union.acpi_operand_object* %50 to %struct.acpi_object_notify_common*, !dbg !2356
  %notify_list75 = getelementptr inbounds %struct.acpi_object_notify_common, %struct.acpi_object_notify_common* %common_notify74, i32 0, i32 5, !dbg !2357
  %51 = load i32, i32* %i, align 4, !dbg !2358
  %idxprom76 = zext i32 %51 to i64, !dbg !2355
  %arrayidx77 = getelementptr [2 x %union.acpi_operand_object*], [2 x %union.acpi_operand_object*]* %notify_list75, i64 0, i64 %idxprom76, !dbg !2355
  store %union.acpi_operand_object* %49, %union.acpi_operand_object** %arrayidx77, align 8, !dbg !2359
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then61
  %call79 = call i32 @acpi_ut_release_mutex(i32 1) #8, !dbg !2360
  call void @acpi_os_wait_events_complete() #8, !dbg !2361
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !2362
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %52) #8, !dbg !2363
  br label %if.end80, !dbg !2364

if.end80:                                         ; preds = %if.end78, %for.body40
  br label %for.inc81, !dbg !2365

for.inc81:                                        ; preds = %if.end80
  %53 = load i32, i32* %i, align 4, !dbg !2366
  %inc82 = add i32 %53, 1, !dbg !2366
  store i32 %inc82, i32* %i, align 4, !dbg !2366
  br label %for.cond38, !dbg !2367, !llvm.loop !2368

for.end83:                                        ; preds = %for.cond38
  %54 = load i32, i32* %status, align 4, !dbg !2370
  store i32 %54, i32* %retval, align 4, !dbg !2370
  br label %return, !dbg !2370

unlock_and_exit:                                  ; preds = %if.then58, %if.then20
  call void @llvm.dbg.label(metadata !2371), !dbg !2372
  %call84 = call i32 @acpi_ut_release_mutex(i32 1) #8, !dbg !2373
  %55 = load i32, i32* %status, align 4, !dbg !2374
  store i32 %55, i32* %retval, align 4, !dbg !2374
  br label %return, !dbg !2374

return:                                           ; preds = %unlock_and_exit, %for.end83, %if.then47, %if.then36, %if.then32, %for.end, %if.then11, %if.then
  %56 = load i32, i32* %retval, align 4, !dbg !2375
  ret i32 %56, !dbg !2375
}

; Function Attrs: noredzone
declare dso_local void @acpi_os_wait_events_complete() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_install_sci_handler(i32 (i8*)* %address, i8* %context) #0 !dbg !2376 {
entry:
  %retval = alloca i32, align 4
  %address.addr = alloca i32 (i8*)*, align 8
  %context.addr = alloca i8*, align 8
  %new_sci_handler = alloca %struct.acpi_sci_handler_info*, align 8
  %sci_handler = alloca %struct.acpi_sci_handler_info*, align 8
  %flags = alloca i64, align 8
  %status = alloca i32, align 4
  store i32 (i8*)* %address, i32 (i8*)** %address.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*)** %address.addr, metadata !2383, metadata !DIExpression()), !dbg !2384
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !2385, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.declare(metadata %struct.acpi_sci_handler_info** %new_sci_handler, metadata !2387, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.declare(metadata %struct.acpi_sci_handler_info** %sci_handler, metadata !2395, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2397, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2399, metadata !DIExpression()), !dbg !2400
  %0 = load i32 (i8*)*, i32 (i8*)** %address.addr, align 8, !dbg !2401
  %tobool = icmp ne i32 (i8*)* %0, null, !dbg !2401
  br i1 %tobool, label %if.end, label %if.then, !dbg !2403

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !2404
  br label %return, !dbg !2404

if.end:                                           ; preds = %entry
  %call = call i8* @acpi_os_allocate(i64 24) #8, !dbg !2406
  %1 = bitcast i8* %call to %struct.acpi_sci_handler_info*, !dbg !2406
  store %struct.acpi_sci_handler_info* %1, %struct.acpi_sci_handler_info** %new_sci_handler, align 8, !dbg !2407
  %2 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %new_sci_handler, align 8, !dbg !2408
  %tobool1 = icmp ne %struct.acpi_sci_handler_info* %2, null, !dbg !2408
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2410

if.then2:                                         ; preds = %if.end
  store i32 4, i32* %retval, align 4, !dbg !2411
  br label %return, !dbg !2411

if.end3:                                          ; preds = %if.end
  %3 = load i32 (i8*)*, i32 (i8*)** %address.addr, align 8, !dbg !2413
  %4 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %new_sci_handler, align 8, !dbg !2414
  %address4 = getelementptr inbounds %struct.acpi_sci_handler_info, %struct.acpi_sci_handler_info* %4, i32 0, i32 1, !dbg !2415
  store i32 (i8*)* %3, i32 (i8*)** %address4, align 8, !dbg !2416
  %5 = load i8*, i8** %context.addr, align 8, !dbg !2417
  %6 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %new_sci_handler, align 8, !dbg !2418
  %context5 = getelementptr inbounds %struct.acpi_sci_handler_info, %struct.acpi_sci_handler_info* %6, i32 0, i32 2, !dbg !2419
  store i8* %5, i8** %context5, align 8, !dbg !2420
  %call6 = call i32 @acpi_ut_acquire_mutex(i32 3) #8, !dbg !2421
  store i32 %call6, i32* %status, align 4, !dbg !2422
  %7 = load i32, i32* %status, align 4, !dbg !2423
  %tobool7 = icmp ne i32 %7, 0, !dbg !2423
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2425

if.then8:                                         ; preds = %if.end3
  br label %exit, !dbg !2426

if.end9:                                          ; preds = %if.end3
  %8 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !2428
  %call10 = call i64 @acpi_os_acquire_lock(%struct.spinlock* %8) #8, !dbg !2429
  store i64 %call10, i64* %flags, align 8, !dbg !2430
  %9 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** @acpi_gbl_sci_handler_list, align 8, !dbg !2431
  store %struct.acpi_sci_handler_info* %9, %struct.acpi_sci_handler_info** %sci_handler, align 8, !dbg !2432
  br label %while.cond, !dbg !2433

while.cond:                                       ; preds = %if.end14, %if.end9
  %10 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %sci_handler, align 8, !dbg !2434
  %tobool11 = icmp ne %struct.acpi_sci_handler_info* %10, null, !dbg !2433
  br i1 %tobool11, label %while.body, label %while.end, !dbg !2433

while.body:                                       ; preds = %while.cond
  %11 = load i32 (i8*)*, i32 (i8*)** %address.addr, align 8, !dbg !2435
  %12 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %sci_handler, align 8, !dbg !2438
  %address12 = getelementptr inbounds %struct.acpi_sci_handler_info, %struct.acpi_sci_handler_info* %12, i32 0, i32 1, !dbg !2439
  %13 = load i32 (i8*)*, i32 (i8*)** %address12, align 8, !dbg !2439
  %cmp = icmp eq i32 (i8*)* %11, %13, !dbg !2440
  br i1 %cmp, label %if.then13, label %if.end14, !dbg !2441

if.then13:                                        ; preds = %while.body
  store i32 7, i32* %status, align 4, !dbg !2442
  br label %unlock_and_exit, !dbg !2444

if.end14:                                         ; preds = %while.body
  %14 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %sci_handler, align 8, !dbg !2445
  %next = getelementptr inbounds %struct.acpi_sci_handler_info, %struct.acpi_sci_handler_info* %14, i32 0, i32 0, !dbg !2446
  %15 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %next, align 8, !dbg !2446
  store %struct.acpi_sci_handler_info* %15, %struct.acpi_sci_handler_info** %sci_handler, align 8, !dbg !2447
  br label %while.cond, !dbg !2433, !llvm.loop !2448

while.end:                                        ; preds = %while.cond
  %16 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** @acpi_gbl_sci_handler_list, align 8, !dbg !2450
  %17 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %new_sci_handler, align 8, !dbg !2451
  %next15 = getelementptr inbounds %struct.acpi_sci_handler_info, %struct.acpi_sci_handler_info* %17, i32 0, i32 0, !dbg !2452
  store %struct.acpi_sci_handler_info* %16, %struct.acpi_sci_handler_info** %next15, align 8, !dbg !2453
  %18 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %new_sci_handler, align 8, !dbg !2454
  store %struct.acpi_sci_handler_info* %18, %struct.acpi_sci_handler_info** @acpi_gbl_sci_handler_list, align 8, !dbg !2455
  br label %unlock_and_exit, !dbg !2456

unlock_and_exit:                                  ; preds = %while.end, %if.then13
  call void @llvm.dbg.label(metadata !2457), !dbg !2458
  %19 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !2459
  %20 = load i64, i64* %flags, align 8, !dbg !2460
  call void @acpi_os_release_lock(%struct.spinlock* %19, i64 %20) #8, !dbg !2461
  %call16 = call i32 @acpi_ut_release_mutex(i32 3) #8, !dbg !2462
  br label %exit, !dbg !2463

exit:                                             ; preds = %unlock_and_exit, %if.then8
  call void @llvm.dbg.label(metadata !2464), !dbg !2465
  %21 = load i32, i32* %status, align 4, !dbg !2466
  %tobool17 = icmp ne i32 %21, 0, !dbg !2466
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !2468

if.then18:                                        ; preds = %exit
  %22 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %new_sci_handler, align 8, !dbg !2469
  %23 = bitcast %struct.acpi_sci_handler_info* %22 to i8*, !dbg !2469
  call void @acpi_os_free(i8* %23) #8, !dbg !2469
  br label %if.end19, !dbg !2471

if.end19:                                         ; preds = %if.then18, %exit
  %24 = load i32, i32* %status, align 4, !dbg !2472
  store i32 %24, i32* %retval, align 4, !dbg !2472
  br label %return, !dbg !2472

return:                                           ; preds = %if.end19, %if.then2, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !2473
  ret i32 %25, !dbg !2473
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate(i64 %size) #0 !dbg !2474 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2478, metadata !DIExpression()), !dbg !2482
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2490, metadata !DIExpression()), !dbg !2491
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2492, metadata !DIExpression()), !dbg !2493
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2494, metadata !DIExpression()), !dbg !2495
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2496, metadata !DIExpression()), !dbg !2500
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2502, metadata !DIExpression()), !dbg !2506
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2508, metadata !DIExpression()), !dbg !2512
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2517, metadata !DIExpression()), !dbg !2518
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2519, metadata !DIExpression()), !dbg !2520
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2521, metadata !DIExpression()), !dbg !2522
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2523, metadata !DIExpression()), !dbg !2524
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2525, metadata !DIExpression()), !dbg !2526
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2527, metadata !DIExpression()), !dbg !2528
  %flags.addr.i11 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i11, metadata !2529, metadata !DIExpression()), !dbg !2530
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2531, metadata !DIExpression()), !dbg !2532
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2533, metadata !DIExpression()), !dbg !2538
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2542, metadata !DIExpression()), !dbg !2543
  %0 = load i64, i64* %size.addr, align 8, !dbg !2544
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !2545, metadata !DIExpression()), !dbg !2546
  br label %do.body, !dbg !2546

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2547, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2551, metadata !DIExpression()), !dbg !2550
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2550
  %conv = zext i1 %cmp to i32, !dbg !2550
  store i32 1, i32* %tmp, align 4, !dbg !2550
  %1 = load i32, i32* %tmp, align 4, !dbg !2550
  %call = call i64 @arch_local_save_flags() #8, !dbg !2552
  store i64 %call, i64* %_flags, align 8, !dbg !2552
  br label %do.end, !dbg !2552

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !2553, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !2556, metadata !DIExpression()), !dbg !2555
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !2555
  %conv6 = zext i1 %cmp5 to i32, !dbg !2555
  store i32 1, i32* %tmp7, align 4, !dbg !2555
  %2 = load i32, i32* %tmp7, align 4, !dbg !2555
  %3 = load i64, i64* %_flags, align 8, !dbg !2557
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !2558
  %and.i = and i64 %4, 512, !dbg !2559
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !2560
  %lnot.i = xor i1 %tobool.i, true, !dbg !2560
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !2560
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !2557
  %5 = load i32, i32* %tmp8, align 4, !dbg !2557
  store i32 %5, i32* %tmp1, align 4, !dbg !2552
  %6 = load i32, i32* %tmp1, align 4, !dbg !2546
  %tobool = icmp ne i32 %6, 0, !dbg !2561
  %7 = zext i1 %tobool to i64, !dbg !2561
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !2561
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %cond, i32* %flags.addr.i11, align 4
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !2562
  %9 = call i1 @llvm.is.constant.i64(i64 %8) #7, !dbg !2563
  br i1 %9, label %if.then.i, label %if.end9.i, !dbg !2564

if.then.i:                                        ; preds = %do.end
  %10 = load i64, i64* %size.addr.i, align 8, !dbg !2565
  %cmp.i = icmp ugt i64 %10, 8192, !dbg !2566
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2567

if.then1.i:                                       ; preds = %if.then.i
  %11 = load i64, i64* %size.addr.i, align 8, !dbg !2568
  %12 = load i32, i32* %flags.addr.i11, align 4, !dbg !2569
  store i64 %11, i64* %size.addr.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i, align 4
  %13 = load i64, i64* %size.addr.i.i, align 8, !dbg !2570
  %call.i.i = call i32 @get_order(i64 %13) #9, !dbg !2571
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2526
  %14 = load i64, i64* %size.addr.i.i, align 8, !dbg !2572
  %15 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2573
  %16 = load i32, i32* %order.i.i, align 4, !dbg !2574
  store i64 %14, i64* %size.addr.i.i.i, align 8
  store i32 %15, i32* %flags.addr.i.i.i, align 4
  store i32 %16, i32* %order.addr.i.i.i, align 4
  %17 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2575
  %18 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2576
  %19 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2577
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %17, i32 %18, i32 %19) #10, !dbg !2578
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2578
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2578
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2578
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !2578
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2579
  br label %kmalloc.exit, !dbg !2579

if.end.i:                                         ; preds = %if.then.i
  %20 = load i64, i64* %size.addr.i, align 8, !dbg !2580
  store i64 %20, i64* %size.addr.i11.i, align 8
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2581
  %tobool.i.i = icmp ne i64 %21, 0, !dbg !2581
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2583

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2584
  br label %kmalloc_index.exit.i, !dbg !2584

if.end.i.i:                                       ; preds = %if.end.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2585
  %cmp.i.i = icmp ule i64 %22, 8, !dbg !2587
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2588

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2589
  br label %kmalloc_index.exit.i, !dbg !2589

if.end2.i.i:                                      ; preds = %if.end.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2590
  %cmp3.i.i = icmp ugt i64 %23, 64, !dbg !2592
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2593

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2594
  %cmp4.i.i = icmp ule i64 %24, 96, !dbg !2595
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2596

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2597
  br label %kmalloc_index.exit.i, !dbg !2597

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2598
  %cmp7.i.i = icmp ugt i64 %25, 128, !dbg !2600
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2601

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2602
  %cmp9.i.i = icmp ule i64 %26, 192, !dbg !2603
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2604

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2605
  br label %kmalloc_index.exit.i, !dbg !2605

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2606
  %cmp12.i.i = icmp ule i64 %27, 8, !dbg !2608
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2609

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2610
  br label %kmalloc_index.exit.i, !dbg !2610

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2611
  %cmp15.i.i = icmp ule i64 %28, 16, !dbg !2613
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2614

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2615
  br label %kmalloc_index.exit.i, !dbg !2615

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2616
  %cmp18.i.i = icmp ule i64 %29, 32, !dbg !2618
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2619

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2620
  br label %kmalloc_index.exit.i, !dbg !2620

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2621
  %cmp21.i.i = icmp ule i64 %30, 64, !dbg !2623
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2624

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2625
  br label %kmalloc_index.exit.i, !dbg !2625

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2626
  %cmp24.i.i = icmp ule i64 %31, 128, !dbg !2628
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2629

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2630
  br label %kmalloc_index.exit.i, !dbg !2630

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2631
  %cmp27.i.i = icmp ule i64 %32, 256, !dbg !2633
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2634

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2635
  br label %kmalloc_index.exit.i, !dbg !2635

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2636
  %cmp30.i.i = icmp ule i64 %33, 512, !dbg !2638
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2639

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2640
  br label %kmalloc_index.exit.i, !dbg !2640

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2641
  %cmp33.i.i = icmp ule i64 %34, 1024, !dbg !2643
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2644

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2645
  br label %kmalloc_index.exit.i, !dbg !2645

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2646
  %cmp36.i.i = icmp ule i64 %35, 2048, !dbg !2648
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2649

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2650
  br label %kmalloc_index.exit.i, !dbg !2650

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2651
  %cmp39.i.i = icmp ule i64 %36, 4096, !dbg !2653
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2654

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2655
  br label %kmalloc_index.exit.i, !dbg !2655

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2656
  %cmp42.i.i = icmp ule i64 %37, 8192, !dbg !2658
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2659

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2660
  br label %kmalloc_index.exit.i, !dbg !2660

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2661
  %cmp45.i.i = icmp ule i64 %38, 16384, !dbg !2663
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2664

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2665
  br label %kmalloc_index.exit.i, !dbg !2665

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2666
  %cmp48.i.i = icmp ule i64 %39, 32768, !dbg !2668
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2669

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2670
  br label %kmalloc_index.exit.i, !dbg !2670

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2671
  %cmp51.i.i = icmp ule i64 %40, 65536, !dbg !2673
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2674

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2675
  br label %kmalloc_index.exit.i, !dbg !2675

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2676
  %cmp54.i.i = icmp ule i64 %41, 131072, !dbg !2678
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2679

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2680
  br label %kmalloc_index.exit.i, !dbg !2680

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2681
  %cmp57.i.i = icmp ule i64 %42, 262144, !dbg !2683
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2684

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2685
  br label %kmalloc_index.exit.i, !dbg !2685

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2686
  %cmp60.i.i = icmp ule i64 %43, 524288, !dbg !2688
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2689

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2690
  br label %kmalloc_index.exit.i, !dbg !2690

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2691
  %cmp63.i.i = icmp ule i64 %44, 1048576, !dbg !2693
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2694

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2695
  br label %kmalloc_index.exit.i, !dbg !2695

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2696
  %cmp66.i.i = icmp ule i64 %45, 2097152, !dbg !2698
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2699

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2700
  br label %kmalloc_index.exit.i, !dbg !2700

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2701
  %cmp69.i.i = icmp ule i64 %46, 4194304, !dbg !2703
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2704

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2705
  br label %kmalloc_index.exit.i, !dbg !2705

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2706
  %cmp72.i.i = icmp ule i64 %47, 8388608, !dbg !2708
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2709

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2710
  br label %kmalloc_index.exit.i, !dbg !2710

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2711
  %cmp75.i.i = icmp ule i64 %48, 16777216, !dbg !2713
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2714

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2715
  br label %kmalloc_index.exit.i, !dbg !2715

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2716
  %cmp78.i.i = icmp ule i64 %49, 33554432, !dbg !2718
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2719

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2720
  br label %kmalloc_index.exit.i, !dbg !2720

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2721
  %cmp81.i.i = icmp ule i64 %50, 67108864, !dbg !2723
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2724

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2725
  br label %kmalloc_index.exit.i, !dbg !2725

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !2726, !srcloc !2729
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #7, !dbg !2730, !srcloc !2733
  unreachable, !dbg !2734

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %51 = load i32, i32* %retval.i.i, align 4, !dbg !2735
  store i32 %51, i32* %index.i, align 4, !dbg !2736
  %52 = load i32, i32* %index.i, align 4, !dbg !2737
  %tobool.i12 = icmp ne i32 %52, 0, !dbg !2737
  br i1 %tobool.i12, label %if.end4.i, label %if.then3.i, !dbg !2739

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2740
  br label %kmalloc.exit, !dbg !2740

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %53 = load i32, i32* %flags.addr.i11, align 4, !dbg !2741
  store i32 %53, i32* %flags.addr.i13.i, align 4
  %54 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2742
  %and.i.i = and i32 %54, 17, !dbg !2742
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2742
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2742
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2742
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2742
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2744

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2745
  br label %kmalloc_type.exit.i, !dbg !2745

if.end.i16.i:                                     ; preds = %if.end4.i
  %55 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2746
  %and2.i.i = and i32 %55, 1, !dbg !2747
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2746
  %56 = zext i1 %tobool3.i.i to i64, !dbg !2746
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2746
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2748
  br label %kmalloc_type.exit.i, !dbg !2748

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %57 = load i32, i32* %retval.i12.i, align 4, !dbg !2749
  %idxprom.i = zext i32 %57 to i64, !dbg !2750
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2750
  %58 = load i32, i32* %index.i, align 4, !dbg !2751
  %idxprom6.i = zext i32 %58 to i64, !dbg !2750
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2750
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2750
  %60 = load i32, i32* %flags.addr.i11, align 4, !dbg !2752
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !2753
  store %struct.kmem_cache* %59, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %60, i32* %flags.addr.i17.i, align 4
  store i64 %61, i64* %size.addr.i18.i, align 8
  %62 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2754
  %63 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2755
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %62, i32 %63) #10, !dbg !2756
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2756
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2756
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2756
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !2756
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2495
  %64 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2757
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !2758
  %66 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2759
  %67 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2760
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %64, i8* %65, i64 %66, i32 %67) #10, !dbg !2761
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2762
  %68 = load i8*, i8** %ret.i.i, align 8, !dbg !2763
  store i8* %68, i8** %retval.i, align 8, !dbg !2764
  br label %kmalloc.exit, !dbg !2764

if.end9.i:                                        ; preds = %do.end
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !2765
  %70 = load i32, i32* %flags.addr.i11, align 4, !dbg !2766
  %call10.i = call noalias i8* @__kmalloc(i64 %69, i32 %70) #10, !dbg !2767
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2767
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2767
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2767
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !2767
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2768
  br label %kmalloc.exit, !dbg !2768

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %71 = load i8*, i8** %retval.i, align 8, !dbg !2769
  ret i8* %71, !dbg !2770
}

; Function Attrs: noredzone
declare dso_local i64 @acpi_os_acquire_lock(%struct.spinlock*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_os_release_lock(%struct.spinlock*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !2771 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !2774, metadata !DIExpression()), !dbg !2775
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !2776
  call void @kfree(i8* %0) #8, !dbg !2777
  ret void, !dbg !2778
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_remove_sci_handler(i32 (i8*)* %address) #0 !dbg !2779 {
entry:
  %retval = alloca i32, align 4
  %address.addr = alloca i32 (i8*)*, align 8
  %prev_sci_handler = alloca %struct.acpi_sci_handler_info*, align 8
  %next_sci_handler = alloca %struct.acpi_sci_handler_info*, align 8
  %flags = alloca i64, align 8
  %status = alloca i32, align 4
  store i32 (i8*)* %address, i32 (i8*)** %address.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*)** %address.addr, metadata !2782, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.declare(metadata %struct.acpi_sci_handler_info** %prev_sci_handler, metadata !2784, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.declare(metadata %struct.acpi_sci_handler_info** %next_sci_handler, metadata !2786, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2788, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2790, metadata !DIExpression()), !dbg !2791
  %0 = load i32 (i8*)*, i32 (i8*)** %address.addr, align 8, !dbg !2792
  %tobool = icmp ne i32 (i8*)* %0, null, !dbg !2792
  br i1 %tobool, label %if.end, label %if.then, !dbg !2794

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !2795
  br label %return, !dbg !2795

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 3) #8, !dbg !2797
  store i32 %call, i32* %status, align 4, !dbg !2798
  %1 = load i32, i32* %status, align 4, !dbg !2799
  %tobool1 = icmp ne i32 %1, 0, !dbg !2799
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2801

if.then2:                                         ; preds = %if.end
  %2 = load i32, i32* %status, align 4, !dbg !2802
  store i32 %2, i32* %retval, align 4, !dbg !2802
  br label %return, !dbg !2802

if.end3:                                          ; preds = %if.end
  %3 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !2804
  %call4 = call i64 @acpi_os_acquire_lock(%struct.spinlock* %3) #8, !dbg !2805
  store i64 %call4, i64* %flags, align 8, !dbg !2806
  store %struct.acpi_sci_handler_info* null, %struct.acpi_sci_handler_info** %prev_sci_handler, align 8, !dbg !2807
  %4 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** @acpi_gbl_sci_handler_list, align 8, !dbg !2808
  store %struct.acpi_sci_handler_info* %4, %struct.acpi_sci_handler_info** %next_sci_handler, align 8, !dbg !2809
  br label %while.cond, !dbg !2810

while.cond:                                       ; preds = %if.end13, %if.end3
  %5 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %next_sci_handler, align 8, !dbg !2811
  %tobool5 = icmp ne %struct.acpi_sci_handler_info* %5, null, !dbg !2810
  br i1 %tobool5, label %while.body, label %while.end, !dbg !2810

while.body:                                       ; preds = %while.cond
  %6 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %next_sci_handler, align 8, !dbg !2812
  %address6 = getelementptr inbounds %struct.acpi_sci_handler_info, %struct.acpi_sci_handler_info* %6, i32 0, i32 1, !dbg !2815
  %7 = load i32 (i8*)*, i32 (i8*)** %address6, align 8, !dbg !2815
  %8 = load i32 (i8*)*, i32 (i8*)** %address.addr, align 8, !dbg !2816
  %cmp = icmp eq i32 (i8*)* %7, %8, !dbg !2817
  br i1 %cmp, label %if.then7, label %if.end13, !dbg !2818

if.then7:                                         ; preds = %while.body
  %9 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %prev_sci_handler, align 8, !dbg !2819
  %tobool8 = icmp ne %struct.acpi_sci_handler_info* %9, null, !dbg !2819
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !2822

if.then9:                                         ; preds = %if.then7
  %10 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %next_sci_handler, align 8, !dbg !2823
  %next = getelementptr inbounds %struct.acpi_sci_handler_info, %struct.acpi_sci_handler_info* %10, i32 0, i32 0, !dbg !2825
  %11 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %next, align 8, !dbg !2825
  %12 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %prev_sci_handler, align 8, !dbg !2826
  %next10 = getelementptr inbounds %struct.acpi_sci_handler_info, %struct.acpi_sci_handler_info* %12, i32 0, i32 0, !dbg !2827
  store %struct.acpi_sci_handler_info* %11, %struct.acpi_sci_handler_info** %next10, align 8, !dbg !2828
  br label %if.end12, !dbg !2829

if.else:                                          ; preds = %if.then7
  %13 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %next_sci_handler, align 8, !dbg !2830
  %next11 = getelementptr inbounds %struct.acpi_sci_handler_info, %struct.acpi_sci_handler_info* %13, i32 0, i32 0, !dbg !2832
  %14 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %next11, align 8, !dbg !2832
  store %struct.acpi_sci_handler_info* %14, %struct.acpi_sci_handler_info** @acpi_gbl_sci_handler_list, align 8, !dbg !2833
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %15 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !2834
  %16 = load i64, i64* %flags, align 8, !dbg !2835
  call void @acpi_os_release_lock(%struct.spinlock* %15, i64 %16) #8, !dbg !2836
  %17 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %next_sci_handler, align 8, !dbg !2837
  %18 = bitcast %struct.acpi_sci_handler_info* %17 to i8*, !dbg !2837
  call void @acpi_os_free(i8* %18) #8, !dbg !2837
  br label %unlock_and_exit, !dbg !2838

if.end13:                                         ; preds = %while.body
  %19 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %next_sci_handler, align 8, !dbg !2839
  store %struct.acpi_sci_handler_info* %19, %struct.acpi_sci_handler_info** %prev_sci_handler, align 8, !dbg !2840
  %20 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %next_sci_handler, align 8, !dbg !2841
  %next14 = getelementptr inbounds %struct.acpi_sci_handler_info, %struct.acpi_sci_handler_info* %20, i32 0, i32 0, !dbg !2842
  %21 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %next14, align 8, !dbg !2842
  store %struct.acpi_sci_handler_info* %21, %struct.acpi_sci_handler_info** %next_sci_handler, align 8, !dbg !2843
  br label %while.cond, !dbg !2810, !llvm.loop !2844

while.end:                                        ; preds = %while.cond
  %22 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !2846
  %23 = load i64, i64* %flags, align 8, !dbg !2847
  call void @acpi_os_release_lock(%struct.spinlock* %22, i64 %23) #8, !dbg !2848
  store i32 6, i32* %status, align 4, !dbg !2849
  br label %unlock_and_exit, !dbg !2850

unlock_and_exit:                                  ; preds = %while.end, %if.end12
  call void @llvm.dbg.label(metadata !2851), !dbg !2852
  %call15 = call i32 @acpi_ut_release_mutex(i32 3) #8, !dbg !2853
  %24 = load i32, i32* %status, align 4, !dbg !2854
  store i32 %24, i32* %retval, align 4, !dbg !2854
  br label %return, !dbg !2854

return:                                           ; preds = %unlock_and_exit, %if.then2, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !2855
  ret i32 %25, !dbg !2855
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_install_global_event_handler(void (i32, i8*, i32, i8*)* %handler, i8* %context) #0 !dbg !2856 {
entry:
  %retval = alloca i32, align 4
  %handler.addr = alloca void (i32, i8*, i32, i8*)*, align 8
  %context.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  store void (i32, i8*, i32, i8*)* %handler, void (i32, i8*, i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32, i8*, i32, i8*)** %handler.addr, metadata !2863, metadata !DIExpression()), !dbg !2864
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !2865, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2867, metadata !DIExpression()), !dbg !2868
  %0 = load void (i32, i8*, i32, i8*)*, void (i32, i8*, i32, i8*)** %handler.addr, align 8, !dbg !2869
  %tobool = icmp ne void (i32, i8*, i32, i8*)* %0, null, !dbg !2869
  br i1 %tobool, label %if.end, label %if.then, !dbg !2871

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !2872
  br label %return, !dbg !2872

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 3) #8, !dbg !2874
  store i32 %call, i32* %status, align 4, !dbg !2875
  %1 = load i32, i32* %status, align 4, !dbg !2876
  %tobool1 = icmp ne i32 %1, 0, !dbg !2876
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2878

if.then2:                                         ; preds = %if.end
  %2 = load i32, i32* %status, align 4, !dbg !2879
  store i32 %2, i32* %retval, align 4, !dbg !2879
  br label %return, !dbg !2879

if.end3:                                          ; preds = %if.end
  %3 = load void (i32, i8*, i32, i8*)*, void (i32, i8*, i32, i8*)** @acpi_gbl_global_event_handler, align 8, !dbg !2881
  %tobool4 = icmp ne void (i32, i8*, i32, i8*)* %3, null, !dbg !2881
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2883

if.then5:                                         ; preds = %if.end3
  store i32 7, i32* %status, align 4, !dbg !2884
  br label %cleanup, !dbg !2886

if.end6:                                          ; preds = %if.end3
  %4 = load void (i32, i8*, i32, i8*)*, void (i32, i8*, i32, i8*)** %handler.addr, align 8, !dbg !2887
  store void (i32, i8*, i32, i8*)* %4, void (i32, i8*, i32, i8*)** @acpi_gbl_global_event_handler, align 8, !dbg !2888
  %5 = load i8*, i8** %context.addr, align 8, !dbg !2889
  store i8* %5, i8** @acpi_gbl_global_event_handler_context, align 8, !dbg !2890
  br label %cleanup, !dbg !2891

cleanup:                                          ; preds = %if.end6, %if.then5
  call void @llvm.dbg.label(metadata !2892), !dbg !2893
  %call7 = call i32 @acpi_ut_release_mutex(i32 3) #8, !dbg !2894
  %6 = load i32, i32* %status, align 4, !dbg !2895
  store i32 %6, i32* %retval, align 4, !dbg !2895
  br label %return, !dbg !2895

return:                                           ; preds = %cleanup, %if.then2, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !2896
  ret i32 %7, !dbg !2896
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_install_fixed_event_handler(i32 %event, i32 (i8*)* %handler, i8* %context) #0 !dbg !2897 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i8*)*, align 8
  %context.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !2901, metadata !DIExpression()), !dbg !2902
  store i32 (i8*)* %handler, i32 (i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*)** %handler.addr, metadata !2903, metadata !DIExpression()), !dbg !2904
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !2905, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2907, metadata !DIExpression()), !dbg !2908
  %0 = load i32, i32* %event.addr, align 4, !dbg !2909
  %cmp = icmp ugt i32 %0, 4, !dbg !2911
  br i1 %cmp, label %if.then, label %if.end, !dbg !2912

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !2913
  br label %return, !dbg !2913

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 3) #8, !dbg !2915
  store i32 %call, i32* %status, align 4, !dbg !2916
  %1 = load i32, i32* %status, align 4, !dbg !2917
  %tobool = icmp ne i32 %1, 0, !dbg !2917
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !2919

if.then1:                                         ; preds = %if.end
  %2 = load i32, i32* %status, align 4, !dbg !2920
  store i32 %2, i32* %retval, align 4, !dbg !2920
  br label %return, !dbg !2920

if.end2:                                          ; preds = %if.end
  %3 = load i32, i32* %event.addr, align 4, !dbg !2922
  %idxprom = zext i32 %3 to i64, !dbg !2924
  %arrayidx = getelementptr [5 x %struct.acpi_fixed_event_handler], [5 x %struct.acpi_fixed_event_handler]* @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom, !dbg !2924
  %handler3 = getelementptr inbounds %struct.acpi_fixed_event_handler, %struct.acpi_fixed_event_handler* %arrayidx, i32 0, i32 0, !dbg !2925
  %4 = load i32 (i8*)*, i32 (i8*)** %handler3, align 16, !dbg !2925
  %tobool4 = icmp ne i32 (i8*)* %4, null, !dbg !2924
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2926

if.then5:                                         ; preds = %if.end2
  store i32 7, i32* %status, align 4, !dbg !2927
  br label %cleanup, !dbg !2929

if.end6:                                          ; preds = %if.end2
  %5 = load i32 (i8*)*, i32 (i8*)** %handler.addr, align 8, !dbg !2930
  %6 = load i32, i32* %event.addr, align 4, !dbg !2931
  %idxprom7 = zext i32 %6 to i64, !dbg !2932
  %arrayidx8 = getelementptr [5 x %struct.acpi_fixed_event_handler], [5 x %struct.acpi_fixed_event_handler]* @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom7, !dbg !2932
  %handler9 = getelementptr inbounds %struct.acpi_fixed_event_handler, %struct.acpi_fixed_event_handler* %arrayidx8, i32 0, i32 0, !dbg !2933
  store i32 (i8*)* %5, i32 (i8*)** %handler9, align 16, !dbg !2934
  %7 = load i8*, i8** %context.addr, align 8, !dbg !2935
  %8 = load i32, i32* %event.addr, align 4, !dbg !2936
  %idxprom10 = zext i32 %8 to i64, !dbg !2937
  %arrayidx11 = getelementptr [5 x %struct.acpi_fixed_event_handler], [5 x %struct.acpi_fixed_event_handler]* @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom10, !dbg !2937
  %context12 = getelementptr inbounds %struct.acpi_fixed_event_handler, %struct.acpi_fixed_event_handler* %arrayidx11, i32 0, i32 1, !dbg !2938
  store i8* %7, i8** %context12, align 8, !dbg !2939
  %9 = load i32, i32* %event.addr, align 4, !dbg !2940
  %call13 = call i32 @acpi_clear_event(i32 %9) #8, !dbg !2941
  store i32 %call13, i32* %status, align 4, !dbg !2942
  %10 = load i32, i32* %status, align 4, !dbg !2943
  %tobool14 = icmp ne i32 %10, 0, !dbg !2943
  br i1 %tobool14, label %if.end17, label %if.then15, !dbg !2945

if.then15:                                        ; preds = %if.end6
  %11 = load i32, i32* %event.addr, align 4, !dbg !2946
  %call16 = call i32 @acpi_enable_event(i32 %11, i32 0) #8, !dbg !2947
  store i32 %call16, i32* %status, align 4, !dbg !2948
  br label %if.end17, !dbg !2949

if.end17:                                         ; preds = %if.then15, %if.end6
  %12 = load i32, i32* %status, align 4, !dbg !2950
  %tobool18 = icmp ne i32 %12, 0, !dbg !2950
  br i1 %tobool18, label %if.then19, label %if.else, !dbg !2952

if.then19:                                        ; preds = %if.end17
  %13 = load i32, i32* %event.addr, align 4, !dbg !2953
  %call20 = call i8* @acpi_ut_get_event_name(i32 %13) #8, !dbg !2953
  %14 = load i32, i32* %event.addr, align 4, !dbg !2953
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 618, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %call20, i32 %14) #8, !dbg !2953
  %15 = load i32, i32* %event.addr, align 4, !dbg !2955
  %idxprom21 = zext i32 %15 to i64, !dbg !2956
  %arrayidx22 = getelementptr [5 x %struct.acpi_fixed_event_handler], [5 x %struct.acpi_fixed_event_handler]* @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom21, !dbg !2956
  %handler23 = getelementptr inbounds %struct.acpi_fixed_event_handler, %struct.acpi_fixed_event_handler* %arrayidx22, i32 0, i32 0, !dbg !2957
  store i32 (i8*)* null, i32 (i8*)** %handler23, align 16, !dbg !2958
  %16 = load i32, i32* %event.addr, align 4, !dbg !2959
  %idxprom24 = zext i32 %16 to i64, !dbg !2960
  %arrayidx25 = getelementptr [5 x %struct.acpi_fixed_event_handler], [5 x %struct.acpi_fixed_event_handler]* @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom24, !dbg !2960
  %context26 = getelementptr inbounds %struct.acpi_fixed_event_handler, %struct.acpi_fixed_event_handler* %arrayidx25, i32 0, i32 1, !dbg !2961
  store i8* null, i8** %context26, align 8, !dbg !2962
  br label %if.end27, !dbg !2963

if.else:                                          ; preds = %if.end17
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then19
  br label %cleanup, !dbg !2950

cleanup:                                          ; preds = %if.end27, %if.then5
  call void @llvm.dbg.label(metadata !2964), !dbg !2965
  %call28 = call i32 @acpi_ut_release_mutex(i32 3) #8, !dbg !2966
  %17 = load i32, i32* %status, align 4, !dbg !2967
  store i32 %17, i32* %retval, align 4, !dbg !2967
  br label %return, !dbg !2967

return:                                           ; preds = %cleanup, %if.then1, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !2968
  ret i32 %18, !dbg !2968
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_clear_event(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_enable_event(i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_warning(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_event_name(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_remove_fixed_event_handler(i32 %event, i32 (i8*)* %handler) #0 !dbg !2969 {
entry:
  %retval = alloca i32, align 4
  %event.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i8*)*, align 8
  %status = alloca i32, align 4
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !2972, metadata !DIExpression()), !dbg !2973
  store i32 (i8*)* %handler, i32 (i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*)** %handler.addr, metadata !2974, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2976, metadata !DIExpression()), !dbg !2977
  store i32 0, i32* %status, align 4, !dbg !2977
  %0 = load i32, i32* %event.addr, align 4, !dbg !2978
  %cmp = icmp ugt i32 %0, 4, !dbg !2980
  br i1 %cmp, label %if.then, label %if.end, !dbg !2981

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !2982
  br label %return, !dbg !2982

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 3) #8, !dbg !2984
  store i32 %call, i32* %status, align 4, !dbg !2985
  %1 = load i32, i32* %status, align 4, !dbg !2986
  %tobool = icmp ne i32 %1, 0, !dbg !2986
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !2988

if.then1:                                         ; preds = %if.end
  %2 = load i32, i32* %status, align 4, !dbg !2989
  store i32 %2, i32* %retval, align 4, !dbg !2989
  br label %return, !dbg !2989

if.end2:                                          ; preds = %if.end
  %3 = load i32, i32* %event.addr, align 4, !dbg !2991
  %call3 = call i32 @acpi_disable_event(i32 %3, i32 0) #8, !dbg !2992
  store i32 %call3, i32* %status, align 4, !dbg !2993
  %4 = load i32, i32* %event.addr, align 4, !dbg !2994
  %idxprom = zext i32 %4 to i64, !dbg !2995
  %arrayidx = getelementptr [5 x %struct.acpi_fixed_event_handler], [5 x %struct.acpi_fixed_event_handler]* @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom, !dbg !2995
  %handler4 = getelementptr inbounds %struct.acpi_fixed_event_handler, %struct.acpi_fixed_event_handler* %arrayidx, i32 0, i32 0, !dbg !2996
  store i32 (i8*)* null, i32 (i8*)** %handler4, align 16, !dbg !2997
  %5 = load i32, i32* %event.addr, align 4, !dbg !2998
  %idxprom5 = zext i32 %5 to i64, !dbg !2999
  %arrayidx6 = getelementptr [5 x %struct.acpi_fixed_event_handler], [5 x %struct.acpi_fixed_event_handler]* @acpi_gbl_fixed_event_handlers, i64 0, i64 %idxprom5, !dbg !2999
  %context = getelementptr inbounds %struct.acpi_fixed_event_handler, %struct.acpi_fixed_event_handler* %arrayidx6, i32 0, i32 1, !dbg !3000
  store i8* null, i8** %context, align 8, !dbg !3001
  %6 = load i32, i32* %status, align 4, !dbg !3002
  %tobool7 = icmp ne i32 %6, 0, !dbg !3002
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !3004

if.then8:                                         ; preds = %if.end2
  %7 = load i32, i32* %event.addr, align 4, !dbg !3005
  %call9 = call i8* @acpi_ut_get_event_name(i32 %7) #8, !dbg !3005
  %8 = load i32, i32* %event.addr, align 4, !dbg !3005
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 680, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %call9, i32 %8) #8, !dbg !3005
  br label %if.end10, !dbg !3007

if.else:                                          ; preds = %if.end2
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  %call11 = call i32 @acpi_ut_release_mutex(i32 3) #8, !dbg !3008
  %9 = load i32, i32* %status, align 4, !dbg !3009
  store i32 %9, i32* %retval, align 4, !dbg !3009
  br label %return, !dbg !3009

return:                                           ; preds = %if.end10, %if.then1, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !3010
  ret i32 %10, !dbg !3010
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_disable_event(i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_install_gpe_handler(i8* %gpe_device, i32 %gpe_number, i32 %type, i32 (i8*, i32, i8*)* %address, i8* %context) #0 !dbg !3011 {
entry:
  %gpe_device.addr = alloca i8*, align 8
  %gpe_number.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %address.addr = alloca i32 (i8*, i32, i8*)*, align 8
  %context.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  store i8* %gpe_device, i8** %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %gpe_device.addr, metadata !3014, metadata !DIExpression()), !dbg !3015
  store i32 %gpe_number, i32* %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpe_number.addr, metadata !3016, metadata !DIExpression()), !dbg !3017
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3018, metadata !DIExpression()), !dbg !3019
  store i32 (i8*, i32, i8*)* %address, i32 (i8*, i32, i8*)** %address.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i32, i8*)** %address.addr, metadata !3020, metadata !DIExpression()), !dbg !3021
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !3022, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3024, metadata !DIExpression()), !dbg !3025
  %0 = load i8*, i8** %gpe_device.addr, align 8, !dbg !3026
  %1 = load i32, i32* %gpe_number.addr, align 4, !dbg !3027
  %2 = load i32, i32* %type.addr, align 4, !dbg !3028
  %3 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %address.addr, align 8, !dbg !3029
  %4 = load i8*, i8** %context.addr, align 8, !dbg !3030
  %call = call i32 @acpi_ev_install_gpe_handler(i8* %0, i32 %1, i32 %2, i8 zeroext 0, i32 (i8*, i32, i8*)* %3, i8* %4) #8, !dbg !3031
  store i32 %call, i32* %status, align 4, !dbg !3032
  %5 = load i32, i32* %status, align 4, !dbg !3033
  ret i32 %5, !dbg !3033
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ev_install_gpe_handler(i8* %gpe_device, i32 %gpe_number, i32 %type, i8 zeroext %is_raw_handler, i32 (i8*, i32, i8*)* %address, i8* %context) #0 !dbg !3034 {
entry:
  %retval = alloca i32, align 4
  %gpe_device.addr = alloca i8*, align 8
  %gpe_number.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %is_raw_handler.addr = alloca i8, align 1
  %address.addr = alloca i32 (i8*, i32, i8*)*, align 8
  %context.addr = alloca i8*, align 8
  %gpe_event_info = alloca %struct.acpi_gpe_event_info*, align 8
  %handler = alloca %struct.acpi_gpe_handler_info*, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  store i8* %gpe_device, i8** %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %gpe_device.addr, metadata !3037, metadata !DIExpression()), !dbg !3038
  store i32 %gpe_number, i32* %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpe_number.addr, metadata !3039, metadata !DIExpression()), !dbg !3040
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3041, metadata !DIExpression()), !dbg !3042
  store i8 %is_raw_handler, i8* %is_raw_handler.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %is_raw_handler.addr, metadata !3043, metadata !DIExpression()), !dbg !3044
  store i32 (i8*, i32, i8*)* %address, i32 (i8*, i32, i8*)** %address.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i32, i8*)** %address.addr, metadata !3045, metadata !DIExpression()), !dbg !3046
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !3047, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info, metadata !3049, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_handler_info** %handler, metadata !3051, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3053, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !3055, metadata !DIExpression()), !dbg !3056
  %0 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %address.addr, align 8, !dbg !3057
  %tobool = icmp ne i32 (i8*, i32, i8*)* %0, null, !dbg !3057
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3059

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4, !dbg !3060
  %and = and i32 %1, -9, !dbg !3061
  %tobool1 = icmp ne i32 %and, 0, !dbg !3061
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3062

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !3063
  br label %return, !dbg !3063

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @acpi_ut_acquire_mutex(i32 3) #8, !dbg !3065
  store i32 %call, i32* %status, align 4, !dbg !3066
  %2 = load i32, i32* %status, align 4, !dbg !3067
  %tobool2 = icmp ne i32 %2, 0, !dbg !3067
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3069

if.then3:                                         ; preds = %if.end
  %3 = load i32, i32* %status, align 4, !dbg !3070
  store i32 %3, i32* %retval, align 4, !dbg !3070
  br label %return, !dbg !3070

if.end4:                                          ; preds = %if.end
  %call5 = call i8* @acpi_os_allocate_zeroed(i64 32) #8, !dbg !3072
  %4 = bitcast i8* %call5 to %struct.acpi_gpe_handler_info*, !dbg !3072
  store %struct.acpi_gpe_handler_info* %4, %struct.acpi_gpe_handler_info** %handler, align 8, !dbg !3073
  %5 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %handler, align 8, !dbg !3074
  %tobool6 = icmp ne %struct.acpi_gpe_handler_info* %5, null, !dbg !3074
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !3076

if.then7:                                         ; preds = %if.end4
  store i32 4, i32* %status, align 4, !dbg !3077
  br label %unlock_and_exit, !dbg !3079

if.end8:                                          ; preds = %if.end4
  %6 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !3080
  %call9 = call i64 @acpi_os_acquire_lock(%struct.spinlock* %6) #8, !dbg !3081
  store i64 %call9, i64* %flags, align 8, !dbg !3082
  %7 = load i8*, i8** %gpe_device.addr, align 8, !dbg !3083
  %8 = load i32, i32* %gpe_number.addr, align 4, !dbg !3084
  %call10 = call %struct.acpi_gpe_event_info* @acpi_ev_get_gpe_event_info(i8* %7, i32 %8) #8, !dbg !3085
  store %struct.acpi_gpe_event_info* %call10, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3086
  %9 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3087
  %tobool11 = icmp ne %struct.acpi_gpe_event_info* %9, null, !dbg !3087
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !3089

if.then12:                                        ; preds = %if.end8
  store i32 4097, i32* %status, align 4, !dbg !3090
  br label %free_and_exit, !dbg !3092

if.end13:                                         ; preds = %if.end8
  %10 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3093
  %flags14 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %10, i32 0, i32 2, !dbg !3093
  %11 = load i8, i8* %flags14, align 8, !dbg !3093
  %conv = zext i8 %11 to i32, !dbg !3093
  %and15 = and i32 %conv, 7, !dbg !3093
  %conv16 = trunc i32 %and15 to i8, !dbg !3093
  %conv17 = zext i8 %conv16 to i32, !dbg !3093
  %cmp = icmp eq i32 %conv17, 2, !dbg !3095
  br i1 %cmp, label %if.then27, label %lor.lhs.false19, !dbg !3096

lor.lhs.false19:                                  ; preds = %if.end13
  %12 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3097
  %flags20 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %12, i32 0, i32 2, !dbg !3097
  %13 = load i8, i8* %flags20, align 8, !dbg !3097
  %conv21 = zext i8 %13 to i32, !dbg !3097
  %and22 = and i32 %conv21, 7, !dbg !3097
  %conv23 = trunc i32 %and22 to i8, !dbg !3097
  %conv24 = zext i8 %conv23 to i32, !dbg !3097
  %cmp25 = icmp eq i32 %conv24, 4, !dbg !3098
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !3099

if.then27:                                        ; preds = %lor.lhs.false19, %if.end13
  store i32 7, i32* %status, align 4, !dbg !3100
  br label %free_and_exit, !dbg !3102

if.end28:                                         ; preds = %lor.lhs.false19
  %14 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %address.addr, align 8, !dbg !3103
  %15 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %handler, align 8, !dbg !3104
  %address29 = getelementptr inbounds %struct.acpi_gpe_handler_info, %struct.acpi_gpe_handler_info* %15, i32 0, i32 0, !dbg !3105
  store i32 (i8*, i32, i8*)* %14, i32 (i8*, i32, i8*)** %address29, align 8, !dbg !3106
  %16 = load i8*, i8** %context.addr, align 8, !dbg !3107
  %17 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %handler, align 8, !dbg !3108
  %context30 = getelementptr inbounds %struct.acpi_gpe_handler_info, %struct.acpi_gpe_handler_info* %17, i32 0, i32 1, !dbg !3109
  store i8* %16, i8** %context30, align 8, !dbg !3110
  %18 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3111
  %dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %18, i32 0, i32 0, !dbg !3112
  %method_node = bitcast %union.acpi_gpe_dispatch_info* %dispatch to %struct.acpi_namespace_node**, !dbg !3113
  %19 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node, align 8, !dbg !3113
  %20 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %handler, align 8, !dbg !3114
  %method_node31 = getelementptr inbounds %struct.acpi_gpe_handler_info, %struct.acpi_gpe_handler_info* %20, i32 0, i32 2, !dbg !3115
  store %struct.acpi_namespace_node* %19, %struct.acpi_namespace_node** %method_node31, align 8, !dbg !3116
  %21 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3117
  %flags32 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %21, i32 0, i32 2, !dbg !3118
  %22 = load i8, i8* %flags32, align 8, !dbg !3118
  %conv33 = zext i8 %22 to i32, !dbg !3117
  %and34 = and i32 %conv33, 15, !dbg !3119
  %conv35 = trunc i32 %and34 to i8, !dbg !3120
  %23 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %handler, align 8, !dbg !3121
  %original_flags = getelementptr inbounds %struct.acpi_gpe_handler_info, %struct.acpi_gpe_handler_info* %23, i32 0, i32 3, !dbg !3122
  store i8 %conv35, i8* %original_flags, align 8, !dbg !3123
  %24 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %handler, align 8, !dbg !3124
  %original_flags36 = getelementptr inbounds %struct.acpi_gpe_handler_info, %struct.acpi_gpe_handler_info* %24, i32 0, i32 3, !dbg !3124
  %25 = load i8, i8* %original_flags36, align 8, !dbg !3124
  %conv37 = zext i8 %25 to i32, !dbg !3124
  %and38 = and i32 %conv37, 7, !dbg !3124
  %conv39 = trunc i32 %and38 to i8, !dbg !3124
  %conv40 = zext i8 %conv39 to i32, !dbg !3124
  %cmp41 = icmp eq i32 %conv40, 1, !dbg !3126
  br i1 %cmp41, label %land.lhs.true, label %lor.lhs.false43, !dbg !3127

lor.lhs.false43:                                  ; preds = %if.end28
  %26 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %handler, align 8, !dbg !3128
  %original_flags44 = getelementptr inbounds %struct.acpi_gpe_handler_info, %struct.acpi_gpe_handler_info* %26, i32 0, i32 3, !dbg !3128
  %27 = load i8, i8* %original_flags44, align 8, !dbg !3128
  %conv45 = zext i8 %27 to i32, !dbg !3128
  %and46 = and i32 %conv45, 7, !dbg !3128
  %conv47 = trunc i32 %and46 to i8, !dbg !3128
  %conv48 = zext i8 %conv47 to i32, !dbg !3128
  %cmp49 = icmp eq i32 %conv48, 3, !dbg !3129
  br i1 %cmp49, label %land.lhs.true, label %if.end62, !dbg !3130

land.lhs.true:                                    ; preds = %lor.lhs.false43, %if.end28
  %28 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3131
  %runtime_count = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %28, i32 0, i32 4, !dbg !3132
  %29 = load i8, i8* %runtime_count, align 2, !dbg !3132
  %conv51 = zext i8 %29 to i32, !dbg !3131
  %tobool52 = icmp ne i32 %conv51, 0, !dbg !3131
  br i1 %tobool52, label %if.then53, label %if.end62, !dbg !3133

if.then53:                                        ; preds = %land.lhs.true
  %30 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %handler, align 8, !dbg !3134
  %originally_enabled = getelementptr inbounds %struct.acpi_gpe_handler_info, %struct.acpi_gpe_handler_info* %30, i32 0, i32 4, !dbg !3136
  store i8 1, i8* %originally_enabled, align 1, !dbg !3137
  %31 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3138
  %call54 = call i32 @acpi_ev_remove_gpe_reference(%struct.acpi_gpe_event_info* %31) #8, !dbg !3139
  %32 = load i32, i32* %type.addr, align 4, !dbg !3140
  %33 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3142
  %flags55 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %33, i32 0, i32 2, !dbg !3143
  %34 = load i8, i8* %flags55, align 8, !dbg !3143
  %conv56 = zext i8 %34 to i32, !dbg !3142
  %and57 = and i32 %conv56, 8, !dbg !3144
  %cmp58 = icmp ne i32 %32, %and57, !dbg !3145
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !3146

if.then60:                                        ; preds = %if.then53
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 791, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !3147
  br label %if.end61, !dbg !3149

if.end61:                                         ; preds = %if.then60, %if.then53
  br label %if.end62, !dbg !3150

if.end62:                                         ; preds = %if.end61, %land.lhs.true, %lor.lhs.false43
  %35 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %handler, align 8, !dbg !3151
  %36 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3152
  %dispatch63 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %36, i32 0, i32 0, !dbg !3153
  %handler64 = bitcast %union.acpi_gpe_dispatch_info* %dispatch63 to %struct.acpi_gpe_handler_info**, !dbg !3154
  store %struct.acpi_gpe_handler_info* %35, %struct.acpi_gpe_handler_info** %handler64, align 8, !dbg !3155
  %37 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3156
  %flags65 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %37, i32 0, i32 2, !dbg !3157
  %38 = load i8, i8* %flags65, align 8, !dbg !3158
  %conv66 = zext i8 %38 to i32, !dbg !3158
  %and67 = and i32 %conv66, -16, !dbg !3158
  %conv68 = trunc i32 %and67 to i8, !dbg !3158
  store i8 %conv68, i8* %flags65, align 8, !dbg !3158
  %39 = load i32, i32* %type.addr, align 4, !dbg !3159
  %40 = load i8, i8* %is_raw_handler.addr, align 1, !dbg !3160
  %conv69 = zext i8 %40 to i32, !dbg !3160
  %tobool70 = icmp ne i32 %conv69, 0, !dbg !3160
  %41 = zext i1 %tobool70 to i64, !dbg !3160
  %cond = select i1 %tobool70, i32 4, i32 2, !dbg !3160
  %or = or i32 %39, %cond, !dbg !3161
  %conv71 = trunc i32 %or to i8, !dbg !3162
  %conv72 = zext i8 %conv71 to i32, !dbg !3162
  %42 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3163
  %flags73 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %42, i32 0, i32 2, !dbg !3164
  %43 = load i8, i8* %flags73, align 8, !dbg !3165
  %conv74 = zext i8 %43 to i32, !dbg !3165
  %or75 = or i32 %conv74, %conv72, !dbg !3165
  %conv76 = trunc i32 %or75 to i8, !dbg !3165
  store i8 %conv76, i8* %flags73, align 8, !dbg !3165
  %44 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !3166
  %45 = load i64, i64* %flags, align 8, !dbg !3167
  call void @acpi_os_release_lock(%struct.spinlock* %44, i64 %45) #8, !dbg !3168
  br label %unlock_and_exit, !dbg !3168

unlock_and_exit:                                  ; preds = %free_and_exit, %if.end62, %if.then7
  call void @llvm.dbg.label(metadata !3169), !dbg !3170
  %call77 = call i32 @acpi_ut_release_mutex(i32 3) #8, !dbg !3171
  %46 = load i32, i32* %status, align 4, !dbg !3172
  store i32 %46, i32* %retval, align 4, !dbg !3172
  br label %return, !dbg !3172

free_and_exit:                                    ; preds = %if.then27, %if.then12
  call void @llvm.dbg.label(metadata !3173), !dbg !3174
  %47 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !3175
  %48 = load i64, i64* %flags, align 8, !dbg !3176
  call void @acpi_os_release_lock(%struct.spinlock* %47, i64 %48) #8, !dbg !3177
  %49 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %handler, align 8, !dbg !3178
  %50 = bitcast %struct.acpi_gpe_handler_info* %49 to i8*, !dbg !3178
  call void @acpi_os_free(i8* %50) #8, !dbg !3178
  br label %unlock_and_exit, !dbg !3179

return:                                           ; preds = %unlock_and_exit, %if.then3, %if.then
  %51 = load i32, i32* %retval, align 4, !dbg !3180
  ret i32 %51, !dbg !3180
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_install_gpe_raw_handler(i8* %gpe_device, i32 %gpe_number, i32 %type, i32 (i8*, i32, i8*)* %address, i8* %context) #0 !dbg !3181 {
entry:
  %gpe_device.addr = alloca i8*, align 8
  %gpe_number.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %address.addr = alloca i32 (i8*, i32, i8*)*, align 8
  %context.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  store i8* %gpe_device, i8** %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %gpe_device.addr, metadata !3182, metadata !DIExpression()), !dbg !3183
  store i32 %gpe_number, i32* %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpe_number.addr, metadata !3184, metadata !DIExpression()), !dbg !3185
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3186, metadata !DIExpression()), !dbg !3187
  store i32 (i8*, i32, i8*)* %address, i32 (i8*, i32, i8*)** %address.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i32, i8*)** %address.addr, metadata !3188, metadata !DIExpression()), !dbg !3189
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !3190, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3192, metadata !DIExpression()), !dbg !3193
  %0 = load i8*, i8** %gpe_device.addr, align 8, !dbg !3194
  %1 = load i32, i32* %gpe_number.addr, align 4, !dbg !3195
  %2 = load i32, i32* %type.addr, align 4, !dbg !3196
  %3 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %address.addr, align 8, !dbg !3197
  %4 = load i8*, i8** %context.addr, align 8, !dbg !3198
  %call = call i32 @acpi_ev_install_gpe_handler(i8* %0, i32 %1, i32 %2, i8 zeroext 1, i32 (i8*, i32, i8*)* %3, i8* %4) #8, !dbg !3199
  store i32 %call, i32* %status, align 4, !dbg !3200
  %5 = load i32, i32* %status, align 4, !dbg !3201
  ret i32 %5, !dbg !3201
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_remove_gpe_handler(i8* %gpe_device, i32 %gpe_number, i32 (i8*, i32, i8*)* %address) #0 !dbg !3202 {
entry:
  %retval = alloca i32, align 4
  %gpe_device.addr = alloca i8*, align 8
  %gpe_number.addr = alloca i32, align 4
  %address.addr = alloca i32 (i8*, i32, i8*)*, align 8
  %gpe_event_info = alloca %struct.acpi_gpe_event_info*, align 8
  %handler = alloca %struct.acpi_gpe_handler_info*, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  store i8* %gpe_device, i8** %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %gpe_device.addr, metadata !3205, metadata !DIExpression()), !dbg !3206
  store i32 %gpe_number, i32* %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gpe_number.addr, metadata !3207, metadata !DIExpression()), !dbg !3208
  store i32 (i8*, i32, i8*)* %address, i32 (i8*, i32, i8*)** %address.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i32, i8*)** %address.addr, metadata !3209, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info, metadata !3211, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_handler_info** %handler, metadata !3213, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3215, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !3217, metadata !DIExpression()), !dbg !3218
  %0 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %address.addr, align 8, !dbg !3219
  %tobool = icmp ne i32 (i8*, i32, i8*)* %0, null, !dbg !3219
  br i1 %tobool, label %if.end, label %if.then, !dbg !3221

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !3222
  br label %return, !dbg !3222

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 3) #8, !dbg !3224
  store i32 %call, i32* %status, align 4, !dbg !3225
  %1 = load i32, i32* %status, align 4, !dbg !3226
  %tobool1 = icmp ne i32 %1, 0, !dbg !3226
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3228

if.then2:                                         ; preds = %if.end
  %2 = load i32, i32* %status, align 4, !dbg !3229
  store i32 %2, i32* %retval, align 4, !dbg !3229
  br label %return, !dbg !3229

if.end3:                                          ; preds = %if.end
  %3 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !3231
  %call4 = call i64 @acpi_os_acquire_lock(%struct.spinlock* %3) #8, !dbg !3232
  store i64 %call4, i64* %flags, align 8, !dbg !3233
  %4 = load i8*, i8** %gpe_device.addr, align 8, !dbg !3234
  %5 = load i32, i32* %gpe_number.addr, align 4, !dbg !3235
  %call5 = call %struct.acpi_gpe_event_info* @acpi_ev_get_gpe_event_info(i8* %4, i32 %5) #8, !dbg !3236
  store %struct.acpi_gpe_event_info* %call5, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3237
  %6 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3238
  %tobool6 = icmp ne %struct.acpi_gpe_event_info* %6, null, !dbg !3238
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !3240

if.then7:                                         ; preds = %if.end3
  store i32 4097, i32* %status, align 4, !dbg !3241
  br label %unlock_and_exit, !dbg !3243

if.end8:                                          ; preds = %if.end3
  %7 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3244
  %flags9 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %7, i32 0, i32 2, !dbg !3244
  %8 = load i8, i8* %flags9, align 8, !dbg !3244
  %conv = zext i8 %8 to i32, !dbg !3244
  %and = and i32 %conv, 7, !dbg !3244
  %conv10 = trunc i32 %and to i8, !dbg !3244
  %conv11 = zext i8 %conv10 to i32, !dbg !3244
  %cmp = icmp ne i32 %conv11, 2, !dbg !3246
  br i1 %cmp, label %land.lhs.true, label %if.end21, !dbg !3247

land.lhs.true:                                    ; preds = %if.end8
  %9 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3248
  %flags13 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %9, i32 0, i32 2, !dbg !3248
  %10 = load i8, i8* %flags13, align 8, !dbg !3248
  %conv14 = zext i8 %10 to i32, !dbg !3248
  %and15 = and i32 %conv14, 7, !dbg !3248
  %conv16 = trunc i32 %and15 to i8, !dbg !3248
  %conv17 = zext i8 %conv16 to i32, !dbg !3248
  %cmp18 = icmp ne i32 %conv17, 4, !dbg !3249
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !3250

if.then20:                                        ; preds = %land.lhs.true
  store i32 6, i32* %status, align 4, !dbg !3251
  br label %unlock_and_exit, !dbg !3253

if.end21:                                         ; preds = %land.lhs.true, %if.end8
  %11 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3254
  %dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %11, i32 0, i32 0, !dbg !3256
  %handler22 = bitcast %union.acpi_gpe_dispatch_info* %dispatch to %struct.acpi_gpe_handler_info**, !dbg !3257
  %12 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %handler22, align 8, !dbg !3257
  %address23 = getelementptr inbounds %struct.acpi_gpe_handler_info, %struct.acpi_gpe_handler_info* %12, i32 0, i32 0, !dbg !3258
  %13 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %address23, align 8, !dbg !3258
  %14 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %address.addr, align 8, !dbg !3259
  %cmp24 = icmp ne i32 (i8*, i32, i8*)* %13, %14, !dbg !3260
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !3261

if.then26:                                        ; preds = %if.end21
  store i32 4097, i32* %status, align 4, !dbg !3262
  br label %unlock_and_exit, !dbg !3264

if.end27:                                         ; preds = %if.end21
  %15 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3265
  %dispatch28 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %15, i32 0, i32 0, !dbg !3266
  %handler29 = bitcast %union.acpi_gpe_dispatch_info* %dispatch28 to %struct.acpi_gpe_handler_info**, !dbg !3267
  %16 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %handler29, align 8, !dbg !3267
  store %struct.acpi_gpe_handler_info* %16, %struct.acpi_gpe_handler_info** %handler, align 8, !dbg !3268
  %17 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3269
  %dispatch30 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %17, i32 0, i32 0, !dbg !3270
  %handler31 = bitcast %union.acpi_gpe_dispatch_info* %dispatch30 to %struct.acpi_gpe_handler_info**, !dbg !3271
  store %struct.acpi_gpe_handler_info* null, %struct.acpi_gpe_handler_info** %handler31, align 8, !dbg !3272
  %18 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %handler, align 8, !dbg !3273
  %method_node = getelementptr inbounds %struct.acpi_gpe_handler_info, %struct.acpi_gpe_handler_info* %18, i32 0, i32 2, !dbg !3274
  %19 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node, align 8, !dbg !3274
  %20 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3275
  %dispatch32 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %20, i32 0, i32 0, !dbg !3276
  %method_node33 = bitcast %union.acpi_gpe_dispatch_info* %dispatch32 to %struct.acpi_namespace_node**, !dbg !3277
  store %struct.acpi_namespace_node* %19, %struct.acpi_namespace_node** %method_node33, align 8, !dbg !3278
  %21 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3279
  %flags34 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %21, i32 0, i32 2, !dbg !3280
  %22 = load i8, i8* %flags34, align 8, !dbg !3281
  %conv35 = zext i8 %22 to i32, !dbg !3281
  %and36 = and i32 %conv35, -16, !dbg !3281
  %conv37 = trunc i32 %and36 to i8, !dbg !3281
  store i8 %conv37, i8* %flags34, align 8, !dbg !3281
  %23 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %handler, align 8, !dbg !3282
  %original_flags = getelementptr inbounds %struct.acpi_gpe_handler_info, %struct.acpi_gpe_handler_info* %23, i32 0, i32 3, !dbg !3283
  %24 = load i8, i8* %original_flags, align 8, !dbg !3283
  %conv38 = zext i8 %24 to i32, !dbg !3282
  %25 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3284
  %flags39 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %25, i32 0, i32 2, !dbg !3285
  %26 = load i8, i8* %flags39, align 8, !dbg !3286
  %conv40 = zext i8 %26 to i32, !dbg !3286
  %or = or i32 %conv40, %conv38, !dbg !3286
  %conv41 = trunc i32 %or to i8, !dbg !3286
  store i8 %conv41, i8* %flags39, align 8, !dbg !3286
  %27 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %handler, align 8, !dbg !3287
  %original_flags42 = getelementptr inbounds %struct.acpi_gpe_handler_info, %struct.acpi_gpe_handler_info* %27, i32 0, i32 3, !dbg !3287
  %28 = load i8, i8* %original_flags42, align 8, !dbg !3287
  %conv43 = zext i8 %28 to i32, !dbg !3287
  %and44 = and i32 %conv43, 7, !dbg !3287
  %conv45 = trunc i32 %and44 to i8, !dbg !3287
  %conv46 = zext i8 %conv45 to i32, !dbg !3287
  %cmp47 = icmp eq i32 %conv46, 1, !dbg !3289
  br i1 %cmp47, label %land.lhs.true56, label %lor.lhs.false, !dbg !3290

lor.lhs.false:                                    ; preds = %if.end27
  %29 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %handler, align 8, !dbg !3291
  %original_flags49 = getelementptr inbounds %struct.acpi_gpe_handler_info, %struct.acpi_gpe_handler_info* %29, i32 0, i32 3, !dbg !3291
  %30 = load i8, i8* %original_flags49, align 8, !dbg !3291
  %conv50 = zext i8 %30 to i32, !dbg !3291
  %and51 = and i32 %conv50, 7, !dbg !3291
  %conv52 = trunc i32 %and51 to i8, !dbg !3291
  %conv53 = zext i8 %conv52 to i32, !dbg !3291
  %cmp54 = icmp eq i32 %conv53, 3, !dbg !3292
  br i1 %cmp54, label %land.lhs.true56, label %if.end79, !dbg !3293

land.lhs.true56:                                  ; preds = %lor.lhs.false, %if.end27
  %31 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %handler, align 8, !dbg !3294
  %originally_enabled = getelementptr inbounds %struct.acpi_gpe_handler_info, %struct.acpi_gpe_handler_info* %31, i32 0, i32 4, !dbg !3295
  %32 = load i8, i8* %originally_enabled, align 1, !dbg !3295
  %conv57 = zext i8 %32 to i32, !dbg !3294
  %tobool58 = icmp ne i32 %conv57, 0, !dbg !3294
  br i1 %tobool58, label %if.then59, label %if.end79, !dbg !3296

if.then59:                                        ; preds = %land.lhs.true56
  %33 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3297
  %call60 = call i32 @acpi_ev_add_gpe_reference(%struct.acpi_gpe_event_info* %33, i8 zeroext 0) #8, !dbg !3299
  %34 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3300
  %runtime_count = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %34, i32 0, i32 4, !dbg !3300
  %35 = load i8, i8* %runtime_count, align 2, !dbg !3300
  %conv61 = zext i8 %35 to i32, !dbg !3300
  %cmp62 = icmp eq i32 %conv61, 1, !dbg !3300
  br i1 %cmp62, label %land.lhs.true64, label %if.end78, !dbg !3300

land.lhs.true64:                                  ; preds = %if.then59
  %36 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3300
  %flags65 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %36, i32 0, i32 2, !dbg !3300
  %37 = load i8, i8* %flags65, align 8, !dbg !3300
  %conv66 = zext i8 %37 to i32, !dbg !3300
  %and67 = and i32 %conv66, 64, !dbg !3300
  %tobool68 = icmp ne i32 %and67, 0, !dbg !3300
  br i1 %tobool68, label %land.lhs.true69, label %if.end78, !dbg !3300

land.lhs.true69:                                  ; preds = %land.lhs.true64
  %38 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3300
  %flags70 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %38, i32 0, i32 2, !dbg !3300
  %39 = load i8, i8* %flags70, align 8, !dbg !3300
  %conv71 = zext i8 %39 to i32, !dbg !3300
  %and72 = and i32 %conv71, 8, !dbg !3300
  %cmp73 = icmp eq i32 %and72, 0, !dbg !3300
  br i1 %cmp73, label %if.then75, label %if.end78, !dbg !3302

if.then75:                                        ; preds = %land.lhs.true69
  %40 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !3303
  %41 = load i64, i64* %flags, align 8, !dbg !3305
  call void @acpi_os_release_lock(%struct.spinlock* %40, i64 %41) #8, !dbg !3306
  %42 = load i8*, i8** %gpe_device.addr, align 8, !dbg !3307
  %43 = bitcast i8* %42 to %struct.acpi_namespace_node*, !dbg !3307
  %44 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !3308
  %45 = load i32, i32* %gpe_number.addr, align 4, !dbg !3309
  %call76 = call i32 @acpi_ev_detect_gpe(%struct.acpi_namespace_node* %43, %struct.acpi_gpe_event_info* %44, i32 %45) #8, !dbg !3310
  %46 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !3311
  %call77 = call i64 @acpi_os_acquire_lock(%struct.spinlock* %46) #8, !dbg !3312
  store i64 %call77, i64* %flags, align 8, !dbg !3313
  br label %if.end78, !dbg !3314

if.end78:                                         ; preds = %if.then75, %land.lhs.true69, %land.lhs.true64, %if.then59
  br label %if.end79, !dbg !3315

if.end79:                                         ; preds = %if.end78, %land.lhs.true56, %lor.lhs.false
  %47 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !3316
  %48 = load i64, i64* %flags, align 8, !dbg !3317
  call void @acpi_os_release_lock(%struct.spinlock* %47, i64 %48) #8, !dbg !3318
  %call80 = call i32 @acpi_ut_release_mutex(i32 3) #8, !dbg !3319
  call void @acpi_os_wait_events_complete() #8, !dbg !3320
  %49 = load %struct.acpi_gpe_handler_info*, %struct.acpi_gpe_handler_info** %handler, align 8, !dbg !3321
  %50 = bitcast %struct.acpi_gpe_handler_info* %49 to i8*, !dbg !3321
  call void @acpi_os_free(i8* %50) #8, !dbg !3321
  %51 = load i32, i32* %status, align 4, !dbg !3322
  store i32 %51, i32* %retval, align 4, !dbg !3322
  br label %return, !dbg !3322

unlock_and_exit:                                  ; preds = %if.then26, %if.then20, %if.then7
  call void @llvm.dbg.label(metadata !3323), !dbg !3324
  %52 = load %struct.spinlock*, %struct.spinlock** @acpi_gbl_gpe_lock, align 8, !dbg !3325
  %53 = load i64, i64* %flags, align 8, !dbg !3326
  call void @acpi_os_release_lock(%struct.spinlock* %52, i64 %53) #8, !dbg !3327
  %call81 = call i32 @acpi_ut_release_mutex(i32 3) #8, !dbg !3328
  %54 = load i32, i32* %status, align 4, !dbg !3329
  store i32 %54, i32* %retval, align 4, !dbg !3329
  br label %return, !dbg !3329

return:                                           ; preds = %unlock_and_exit, %if.end79, %if.then2, %if.then
  %55 = load i32, i32* %retval, align 4, !dbg !3330
  ret i32 %55, !dbg !3330
}

; Function Attrs: noredzone
declare dso_local %struct.acpi_gpe_event_info* @acpi_ev_get_gpe_event_info(i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_add_gpe_reference(%struct.acpi_gpe_event_info*, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_detect_gpe(%struct.acpi_namespace_node*, %struct.acpi_gpe_event_info*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_acquire_global_lock(i16 zeroext %timeout, i32* %handle) #0 !dbg !3331 {
entry:
  %retval = alloca i32, align 4
  %timeout.addr = alloca i16, align 2
  %handle.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  store i16 %timeout, i16* %timeout.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %timeout.addr, metadata !3334, metadata !DIExpression()), !dbg !3335
  store i32* %handle, i32** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %handle.addr, metadata !3336, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3338, metadata !DIExpression()), !dbg !3339
  %0 = load i32*, i32** %handle.addr, align 8, !dbg !3340
  %tobool = icmp ne i32* %0, null, !dbg !3340
  br i1 %tobool, label %if.end, label %if.then, !dbg !3342

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !3343
  br label %return, !dbg !3343

if.end:                                           ; preds = %entry
  call void @acpi_ex_enter_interpreter() #8, !dbg !3345
  %1 = load i16, i16* %timeout.addr, align 2, !dbg !3346
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** @acpi_gbl_global_lock_mutex, align 8, !dbg !3347
  %call = call i64 @acpi_os_get_thread_id() #8, !dbg !3348
  %call1 = call i32 @acpi_ex_acquire_mutex_object(i16 zeroext %1, %union.acpi_operand_object* %2, i64 %call) #8, !dbg !3349
  store i32 %call1, i32* %status, align 4, !dbg !3350
  %3 = load i32, i32* %status, align 4, !dbg !3351
  %tobool2 = icmp ne i32 %3, 0, !dbg !3351
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3353

if.then3:                                         ; preds = %if.end
  %4 = load i16, i16* @acpi_gbl_global_lock_handle, align 2, !dbg !3354
  %conv = zext i16 %4 to i32, !dbg !3354
  %5 = load i32*, i32** %handle.addr, align 8, !dbg !3356
  store i32 %conv, i32* %5, align 4, !dbg !3357
  br label %if.end4, !dbg !3358

if.end4:                                          ; preds = %if.then3, %if.end
  call void @acpi_ex_exit_interpreter() #8, !dbg !3359
  %6 = load i32, i32* %status, align 4, !dbg !3360
  store i32 %6, i32* %retval, align 4, !dbg !3361
  br label %return, !dbg !3361

return:                                           ; preds = %if.end4, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !3362
  ret i32 %7, !dbg !3362
}

; Function Attrs: noredzone
declare dso_local void @acpi_ex_enter_interpreter() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_acquire_mutex_object(i16 zeroext, %union.acpi_operand_object*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_os_get_thread_id() #0 !dbg !3363 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !3366, metadata !DIExpression()), !dbg !3372
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !3374, metadata !DIExpression()), !dbg !3378
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !3379, metadata !DIExpression()), !dbg !3381
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !3378
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !3378
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #11, !dbg !3381, !srcloc !3382
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !3381
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !3381
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !3381
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !3381
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !3381
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !3372
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !3372
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !3372
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !3372
  %7 = ptrtoint %struct.task_struct* %6 to i64, !dbg !3383
  ret i64 %7, !dbg !3384
}

; Function Attrs: noredzone
declare dso_local void @acpi_ex_exit_interpreter() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_release_global_lock(i32 %handle) #0 !dbg !3385 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 %handle, i32* %handle.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %handle.addr, metadata !3388, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3390, metadata !DIExpression()), !dbg !3391
  %0 = load i32, i32* %handle.addr, align 4, !dbg !3392
  %tobool = icmp ne i32 %0, 0, !dbg !3392
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3394

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %handle.addr, align 4, !dbg !3395
  %2 = load i16, i16* @acpi_gbl_global_lock_handle, align 2, !dbg !3396
  %conv = zext i16 %2 to i32, !dbg !3396
  %cmp = icmp ne i32 %1, %conv, !dbg !3397
  br i1 %cmp, label %if.then, label %if.end, !dbg !3398

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 20, i32* %retval, align 4, !dbg !3399
  br label %return, !dbg !3399

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** @acpi_gbl_global_lock_mutex, align 8, !dbg !3401
  %call = call i32 @acpi_ex_release_mutex_object(%union.acpi_operand_object* %3) #8, !dbg !3402
  store i32 %call, i32* %status, align 4, !dbg !3403
  %4 = load i32, i32* %status, align 4, !dbg !3404
  store i32 %4, i32* %retval, align 4, !dbg !3405
  br label %return, !dbg !3405

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !3406
  ret i32 %5, !dbg !3406
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_release_mutex_object(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !3407 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !3411, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3414, metadata !DIExpression()), !dbg !3413
  %0 = load i64, i64* %__edi, align 8, !dbg !3413
  store i64 %0, i64* %__edi, align 8, !dbg !3413
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3415, metadata !DIExpression()), !dbg !3413
  %1 = load i64, i64* %__esi, align 8, !dbg !3413
  store i64 %1, i64* %__esi, align 8, !dbg !3413
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3416, metadata !DIExpression()), !dbg !3413
  %2 = load i64, i64* %__edx, align 8, !dbg !3413
  store i64 %2, i64* %__edx, align 8, !dbg !3413
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3417, metadata !DIExpression()), !dbg !3413
  %3 = load i64, i64* %__ecx, align 8, !dbg !3413
  store i64 %3, i64* %__ecx, align 8, !dbg !3413
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3418, metadata !DIExpression()), !dbg !3413
  %4 = load i64, i64* %__eax, align 8, !dbg !3413
  store i64 %4, i64* %__eax, align 8, !dbg !3413
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !3413
  %6 = call i64 @llvm.read_register.i64(metadata !1925), !dbg !3419
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !3419, !srcloc !3422
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3419
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3419
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3419
  call void @llvm.write_register.i64(metadata !1925, i64 %asmresult1), !dbg !3419
  %8 = load i64, i64* %__eax, align 8, !dbg !3419
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !3423, metadata !DIExpression()), !dbg !3425
  store i64 -1, i64* %__mask, align 8, !dbg !3425
  %9 = load i64, i64* %__mask, align 8, !dbg !3425
  store i64 %9, i64* %tmp, align 8, !dbg !3425
  %10 = load i64, i64* %tmp, align 8, !dbg !3425
  %and = and i64 %8, %10, !dbg !3419
  store i64 %and, i64* %__ret, align 8, !dbg !3419
  %11 = load i64, i64* %__ret, align 8, !dbg !3413
  store i64 %11, i64* %tmp2, align 8, !dbg !3426
  %12 = load i64, i64* %tmp2, align 8, !dbg !3413
  ret i64 %12, !dbg !3427
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !3428 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3430, metadata !DIExpression()), !dbg !3435
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3437, metadata !DIExpression()), !dbg !3438
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3439, metadata !DIExpression()), !dbg !3440
  %0 = load i64, i64* %size.addr, align 8, !dbg !3441
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3443
  br i1 %1, label %if.then, label %if.end447, !dbg !3444

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3445
  %tobool = icmp ne i64 %2, 0, !dbg !3445
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3448

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3449
  br label %return, !dbg !3449

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3450
  %cmp = icmp ult i64 %3, 4096, !dbg !3452
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3453

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3454
  br label %return, !dbg !3454

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub = sub i64 %4, 1, !dbg !3455
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3455
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3455

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub4 = sub i64 %6, 1, !dbg !3455
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3455
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3455

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub6 = sub i64 %8, 1, !dbg !3455
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3455
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3455

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3455

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub9 = sub i64 %9, 1, !dbg !3455
  %and = and i64 %sub9, -9223372036854775808, !dbg !3455
  %tobool10 = icmp ne i64 %and, 0, !dbg !3455
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3455

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3455

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub13 = sub i64 %10, 1, !dbg !3455
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3455
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3455
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3455

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3455

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub18 = sub i64 %11, 1, !dbg !3455
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3455
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3455
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3455

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3455

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub23 = sub i64 %12, 1, !dbg !3455
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3455
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3455
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3455

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3455

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub28 = sub i64 %13, 1, !dbg !3455
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3455
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3455
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3455

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3455

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub33 = sub i64 %14, 1, !dbg !3455
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3455
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3455
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3455

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3455

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub38 = sub i64 %15, 1, !dbg !3455
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3455
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3455
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3455

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3455

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub43 = sub i64 %16, 1, !dbg !3455
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3455
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3455
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3455

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3455

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub48 = sub i64 %17, 1, !dbg !3455
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3455
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3455
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3455

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3455

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub53 = sub i64 %18, 1, !dbg !3455
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3455
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3455
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3455

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3455

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub58 = sub i64 %19, 1, !dbg !3455
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3455
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3455
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3455

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3455

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub63 = sub i64 %20, 1, !dbg !3455
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3455
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3455
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3455

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3455

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub68 = sub i64 %21, 1, !dbg !3455
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3455
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3455
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3455

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3455

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub73 = sub i64 %22, 1, !dbg !3455
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3455
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3455
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3455

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3455

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub78 = sub i64 %23, 1, !dbg !3455
  %and79 = and i64 %sub78, 562949953421312, !dbg !3455
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3455
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3455

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3455

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub83 = sub i64 %24, 1, !dbg !3455
  %and84 = and i64 %sub83, 281474976710656, !dbg !3455
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3455
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3455

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3455

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub88 = sub i64 %25, 1, !dbg !3455
  %and89 = and i64 %sub88, 140737488355328, !dbg !3455
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3455
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3455

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3455

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub93 = sub i64 %26, 1, !dbg !3455
  %and94 = and i64 %sub93, 70368744177664, !dbg !3455
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3455
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3455

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3455

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub98 = sub i64 %27, 1, !dbg !3455
  %and99 = and i64 %sub98, 35184372088832, !dbg !3455
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3455
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3455

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3455

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub103 = sub i64 %28, 1, !dbg !3455
  %and104 = and i64 %sub103, 17592186044416, !dbg !3455
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3455
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3455

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3455

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub108 = sub i64 %29, 1, !dbg !3455
  %and109 = and i64 %sub108, 8796093022208, !dbg !3455
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3455
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3455

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3455

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub113 = sub i64 %30, 1, !dbg !3455
  %and114 = and i64 %sub113, 4398046511104, !dbg !3455
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3455
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3455

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3455

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub118 = sub i64 %31, 1, !dbg !3455
  %and119 = and i64 %sub118, 2199023255552, !dbg !3455
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3455
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3455

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3455

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub123 = sub i64 %32, 1, !dbg !3455
  %and124 = and i64 %sub123, 1099511627776, !dbg !3455
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3455
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3455

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3455

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub128 = sub i64 %33, 1, !dbg !3455
  %and129 = and i64 %sub128, 549755813888, !dbg !3455
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3455
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3455

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3455

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub133 = sub i64 %34, 1, !dbg !3455
  %and134 = and i64 %sub133, 274877906944, !dbg !3455
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3455
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3455

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3455

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub138 = sub i64 %35, 1, !dbg !3455
  %and139 = and i64 %sub138, 137438953472, !dbg !3455
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3455
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3455

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3455

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub143 = sub i64 %36, 1, !dbg !3455
  %and144 = and i64 %sub143, 68719476736, !dbg !3455
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3455
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3455

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3455

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub148 = sub i64 %37, 1, !dbg !3455
  %and149 = and i64 %sub148, 34359738368, !dbg !3455
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3455
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3455

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3455

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub153 = sub i64 %38, 1, !dbg !3455
  %and154 = and i64 %sub153, 17179869184, !dbg !3455
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3455
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3455

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3455

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub158 = sub i64 %39, 1, !dbg !3455
  %and159 = and i64 %sub158, 8589934592, !dbg !3455
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3455
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3455

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3455

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub163 = sub i64 %40, 1, !dbg !3455
  %and164 = and i64 %sub163, 4294967296, !dbg !3455
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3455
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3455

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3455

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub168 = sub i64 %41, 1, !dbg !3455
  %and169 = and i64 %sub168, 2147483648, !dbg !3455
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3455
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3455

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3455

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub173 = sub i64 %42, 1, !dbg !3455
  %and174 = and i64 %sub173, 1073741824, !dbg !3455
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3455
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3455

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3455

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub178 = sub i64 %43, 1, !dbg !3455
  %and179 = and i64 %sub178, 536870912, !dbg !3455
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3455
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3455

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3455

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub183 = sub i64 %44, 1, !dbg !3455
  %and184 = and i64 %sub183, 268435456, !dbg !3455
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3455
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3455

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3455

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub188 = sub i64 %45, 1, !dbg !3455
  %and189 = and i64 %sub188, 134217728, !dbg !3455
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3455
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3455

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3455

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub193 = sub i64 %46, 1, !dbg !3455
  %and194 = and i64 %sub193, 67108864, !dbg !3455
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3455
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3455

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3455

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub198 = sub i64 %47, 1, !dbg !3455
  %and199 = and i64 %sub198, 33554432, !dbg !3455
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3455
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3455

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3455

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub203 = sub i64 %48, 1, !dbg !3455
  %and204 = and i64 %sub203, 16777216, !dbg !3455
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3455
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3455

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3455

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub208 = sub i64 %49, 1, !dbg !3455
  %and209 = and i64 %sub208, 8388608, !dbg !3455
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3455
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3455

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3455

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub213 = sub i64 %50, 1, !dbg !3455
  %and214 = and i64 %sub213, 4194304, !dbg !3455
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3455
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3455

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3455

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub218 = sub i64 %51, 1, !dbg !3455
  %and219 = and i64 %sub218, 2097152, !dbg !3455
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3455
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3455

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3455

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub223 = sub i64 %52, 1, !dbg !3455
  %and224 = and i64 %sub223, 1048576, !dbg !3455
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3455
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3455

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3455

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub228 = sub i64 %53, 1, !dbg !3455
  %and229 = and i64 %sub228, 524288, !dbg !3455
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3455
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3455

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3455

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub233 = sub i64 %54, 1, !dbg !3455
  %and234 = and i64 %sub233, 262144, !dbg !3455
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3455
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3455

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3455

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub238 = sub i64 %55, 1, !dbg !3455
  %and239 = and i64 %sub238, 131072, !dbg !3455
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3455
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3455

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3455

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub243 = sub i64 %56, 1, !dbg !3455
  %and244 = and i64 %sub243, 65536, !dbg !3455
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3455
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3455

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3455

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub248 = sub i64 %57, 1, !dbg !3455
  %and249 = and i64 %sub248, 32768, !dbg !3455
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3455
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3455

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3455

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub253 = sub i64 %58, 1, !dbg !3455
  %and254 = and i64 %sub253, 16384, !dbg !3455
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3455
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3455

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3455

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub258 = sub i64 %59, 1, !dbg !3455
  %and259 = and i64 %sub258, 8192, !dbg !3455
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3455
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3455

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3455

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub263 = sub i64 %60, 1, !dbg !3455
  %and264 = and i64 %sub263, 4096, !dbg !3455
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3455
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3455

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3455

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub268 = sub i64 %61, 1, !dbg !3455
  %and269 = and i64 %sub268, 2048, !dbg !3455
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3455
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3455

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3455

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub273 = sub i64 %62, 1, !dbg !3455
  %and274 = and i64 %sub273, 1024, !dbg !3455
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3455
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3455

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3455

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub278 = sub i64 %63, 1, !dbg !3455
  %and279 = and i64 %sub278, 512, !dbg !3455
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3455
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3455

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3455

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub283 = sub i64 %64, 1, !dbg !3455
  %and284 = and i64 %sub283, 256, !dbg !3455
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3455
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3455

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3455

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub288 = sub i64 %65, 1, !dbg !3455
  %and289 = and i64 %sub288, 128, !dbg !3455
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3455
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3455

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3455

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub293 = sub i64 %66, 1, !dbg !3455
  %and294 = and i64 %sub293, 64, !dbg !3455
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3455
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3455

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3455

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub298 = sub i64 %67, 1, !dbg !3455
  %and299 = and i64 %sub298, 32, !dbg !3455
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3455
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3455

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3455

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub303 = sub i64 %68, 1, !dbg !3455
  %and304 = and i64 %sub303, 16, !dbg !3455
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3455
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3455

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3455

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub308 = sub i64 %69, 1, !dbg !3455
  %and309 = and i64 %sub308, 8, !dbg !3455
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3455
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3455

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3455

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub313 = sub i64 %70, 1, !dbg !3455
  %and314 = and i64 %sub313, 4, !dbg !3455
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3455
  %71 = zext i1 %tobool315 to i64, !dbg !3455
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3455
  br label %cond.end, !dbg !3455

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3455
  br label %cond.end317, !dbg !3455

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3455
  br label %cond.end319, !dbg !3455

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3455
  br label %cond.end321, !dbg !3455

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3455
  br label %cond.end323, !dbg !3455

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3455
  br label %cond.end325, !dbg !3455

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3455
  br label %cond.end327, !dbg !3455

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3455
  br label %cond.end329, !dbg !3455

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3455
  br label %cond.end331, !dbg !3455

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3455
  br label %cond.end333, !dbg !3455

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3455
  br label %cond.end335, !dbg !3455

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3455
  br label %cond.end337, !dbg !3455

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3455
  br label %cond.end339, !dbg !3455

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3455
  br label %cond.end341, !dbg !3455

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3455
  br label %cond.end343, !dbg !3455

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3455
  br label %cond.end345, !dbg !3455

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3455
  br label %cond.end347, !dbg !3455

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3455
  br label %cond.end349, !dbg !3455

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3455
  br label %cond.end351, !dbg !3455

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3455
  br label %cond.end353, !dbg !3455

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3455
  br label %cond.end355, !dbg !3455

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3455
  br label %cond.end357, !dbg !3455

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3455
  br label %cond.end359, !dbg !3455

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3455
  br label %cond.end361, !dbg !3455

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3455
  br label %cond.end363, !dbg !3455

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3455
  br label %cond.end365, !dbg !3455

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3455
  br label %cond.end367, !dbg !3455

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3455
  br label %cond.end369, !dbg !3455

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3455
  br label %cond.end371, !dbg !3455

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3455
  br label %cond.end373, !dbg !3455

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3455
  br label %cond.end375, !dbg !3455

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3455
  br label %cond.end377, !dbg !3455

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3455
  br label %cond.end379, !dbg !3455

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3455
  br label %cond.end381, !dbg !3455

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3455
  br label %cond.end383, !dbg !3455

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3455
  br label %cond.end385, !dbg !3455

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3455
  br label %cond.end387, !dbg !3455

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3455
  br label %cond.end389, !dbg !3455

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3455
  br label %cond.end391, !dbg !3455

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3455
  br label %cond.end393, !dbg !3455

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3455
  br label %cond.end395, !dbg !3455

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3455
  br label %cond.end397, !dbg !3455

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3455
  br label %cond.end399, !dbg !3455

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3455
  br label %cond.end401, !dbg !3455

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3455
  br label %cond.end403, !dbg !3455

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3455
  br label %cond.end405, !dbg !3455

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3455
  br label %cond.end407, !dbg !3455

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3455
  br label %cond.end409, !dbg !3455

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3455
  br label %cond.end411, !dbg !3455

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3455
  br label %cond.end413, !dbg !3455

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3455
  br label %cond.end415, !dbg !3455

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3455
  br label %cond.end417, !dbg !3455

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3455
  br label %cond.end419, !dbg !3455

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3455
  br label %cond.end421, !dbg !3455

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3455
  br label %cond.end423, !dbg !3455

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3455
  br label %cond.end425, !dbg !3455

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3455
  br label %cond.end427, !dbg !3455

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3455
  br label %cond.end429, !dbg !3455

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3455
  br label %cond.end431, !dbg !3455

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3455
  br label %cond.end433, !dbg !3455

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3455
  br label %cond.end435, !dbg !3455

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3455
  br label %cond.end437, !dbg !3455

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3455
  br label %cond.end440, !dbg !3455

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3455

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3455
  br label %cond.end444, !dbg !3455

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3455
  %sub443 = sub i64 %72, 1, !dbg !3455
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !3455
  br label %cond.end444, !dbg !3455

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3455
  %sub446 = sub i32 %cond445, 12, !dbg !3456
  %add = add i32 %sub446, 1, !dbg !3457
  store i32 %add, i32* %retval, align 4, !dbg !3458
  br label %return, !dbg !3458

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3459
  %dec = add i64 %73, -1, !dbg !3459
  store i64 %dec, i64* %size.addr, align 8, !dbg !3459
  %74 = load i64, i64* %size.addr, align 8, !dbg !3460
  %shr = lshr i64 %74, 12, !dbg !3460
  store i64 %shr, i64* %size.addr, align 8, !dbg !3460
  %75 = load i64, i64* %size.addr, align 8, !dbg !3461
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3438
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3462
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3463
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !3462, !srcloc !3464
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3462
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3465
  %add.i = add i32 %79, 1, !dbg !3466
  store i32 %add.i, i32* %retval, align 4, !dbg !3467
  br label %return, !dbg !3467

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3468
  ret i32 %80, !dbg !3468
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !3469 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3430, metadata !DIExpression()), !dbg !3473
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3437, metadata !DIExpression()), !dbg !3475
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3476, metadata !DIExpression()), !dbg !3477
  %0 = load i64, i64* %n.addr, align 8, !dbg !3478
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3475
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3479
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3480
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !3479, !srcloc !3464
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3479
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3481
  %add.i = add i32 %4, 1, !dbg !3482
  %sub = sub i32 %add.i, 1, !dbg !3483
  ret i32 %sub, !dbg !3484
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3485 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3489, metadata !DIExpression()), !dbg !3490
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3491, metadata !DIExpression()), !dbg !3492
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3493, metadata !DIExpression()), !dbg !3494
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3495, metadata !DIExpression()), !dbg !3496
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3497
  ret i8* %0, !dbg !3498
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !3499 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2533, metadata !DIExpression()), !dbg !3500
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3504, metadata !DIExpression()), !dbg !3505
  %0 = load i64, i64* %size.addr, align 8, !dbg !3506
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !3507, metadata !DIExpression()), !dbg !3508
  br label %do.body, !dbg !3508

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !3509, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !3513, metadata !DIExpression()), !dbg !3512
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !3512
  %conv = zext i1 %cmp to i32, !dbg !3512
  store i32 1, i32* %tmp, align 4, !dbg !3512
  %1 = load i32, i32* %tmp, align 4, !dbg !3512
  %call = call i64 @arch_local_save_flags() #8, !dbg !3514
  store i64 %call, i64* %_flags, align 8, !dbg !3514
  br label %do.end, !dbg !3514

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !3515, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !3518, metadata !DIExpression()), !dbg !3517
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !3517
  %conv6 = zext i1 %cmp5 to i32, !dbg !3517
  store i32 1, i32* %tmp7, align 4, !dbg !3517
  %2 = load i32, i32* %tmp7, align 4, !dbg !3517
  %3 = load i64, i64* %_flags, align 8, !dbg !3519
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !3520
  %and.i = and i64 %4, 512, !dbg !3521
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !3522
  %lnot.i = xor i1 %tobool.i, true, !dbg !3522
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !3522
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !3519
  %5 = load i32, i32* %tmp8, align 4, !dbg !3519
  store i32 %5, i32* %tmp1, align 4, !dbg !3514
  %6 = load i32, i32* %tmp1, align 4, !dbg !3508
  %tobool = icmp ne i32 %6, 0, !dbg !3523
  %7 = zext i1 %tobool to i64, !dbg !3523
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !3523
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #8, !dbg !3524
  ret i8* %call10, !dbg !3525
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_remove_gpe_reference(%struct.acpi_gpe_event_info*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3526 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2478, metadata !DIExpression()), !dbg !3527
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2490, metadata !DIExpression()), !dbg !3530
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2492, metadata !DIExpression()), !dbg !3531
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2494, metadata !DIExpression()), !dbg !3532
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2496, metadata !DIExpression()), !dbg !3533
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2502, metadata !DIExpression()), !dbg !3535
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2508, metadata !DIExpression()), !dbg !3537
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2517, metadata !DIExpression()), !dbg !3540
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2519, metadata !DIExpression()), !dbg !3541
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2521, metadata !DIExpression()), !dbg !3542
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2523, metadata !DIExpression()), !dbg !3543
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2525, metadata !DIExpression()), !dbg !3544
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2527, metadata !DIExpression()), !dbg !3545
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2529, metadata !DIExpression()), !dbg !3546
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2531, metadata !DIExpression()), !dbg !3547
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3548, metadata !DIExpression()), !dbg !3549
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3550, metadata !DIExpression()), !dbg !3551
  %0 = load i64, i64* %size.addr, align 8, !dbg !3552
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3553
  %or = or i32 %1, 256, !dbg !3554
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3555
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !3556
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3557

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3558
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3559
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3560

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3561
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3562
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3563
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !3564
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3544
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3565
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3566
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3567
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3568
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3569
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3570
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !3571
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3571
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3571
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3571
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !3571
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3572
  br label %kmalloc.exit, !dbg !3572

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3573
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3574
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3574
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3575

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3576
  br label %kmalloc_index.exit.i, !dbg !3576

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3577
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3578
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3579

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3580
  br label %kmalloc_index.exit.i, !dbg !3580

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3581
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3582
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3583

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3584
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3585
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3586

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3587
  br label %kmalloc_index.exit.i, !dbg !3587

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3588
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3589
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3590

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3591
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3592
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3593

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3594
  br label %kmalloc_index.exit.i, !dbg !3594

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3595
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3596
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3597

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3598
  br label %kmalloc_index.exit.i, !dbg !3598

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3599
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3600
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3601

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3602
  br label %kmalloc_index.exit.i, !dbg !3602

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3603
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3604
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3605

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3606
  br label %kmalloc_index.exit.i, !dbg !3606

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3607
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3608
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3609

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3610
  br label %kmalloc_index.exit.i, !dbg !3610

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3611
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3612
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3613

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3614
  br label %kmalloc_index.exit.i, !dbg !3614

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3615
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3616
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3617

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3618
  br label %kmalloc_index.exit.i, !dbg !3618

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3619
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3620
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3621

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3622
  br label %kmalloc_index.exit.i, !dbg !3622

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3623
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3624
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3625

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3626
  br label %kmalloc_index.exit.i, !dbg !3626

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3627
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3628
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3629

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3630
  br label %kmalloc_index.exit.i, !dbg !3630

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3631
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3632
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3633

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3634
  br label %kmalloc_index.exit.i, !dbg !3634

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3635
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3636
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3637

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3638
  br label %kmalloc_index.exit.i, !dbg !3638

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3639
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3640
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3641

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3642
  br label %kmalloc_index.exit.i, !dbg !3642

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3643
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3644
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3645

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3646
  br label %kmalloc_index.exit.i, !dbg !3646

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3647
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3648
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3649

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3650
  br label %kmalloc_index.exit.i, !dbg !3650

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3651
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3652
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3653

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3654
  br label %kmalloc_index.exit.i, !dbg !3654

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3655
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3656
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3657

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3658
  br label %kmalloc_index.exit.i, !dbg !3658

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3659
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3660
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3661

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3662
  br label %kmalloc_index.exit.i, !dbg !3662

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3663
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3664
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3665

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3666
  br label %kmalloc_index.exit.i, !dbg !3666

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3667
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3668
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3669

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3670
  br label %kmalloc_index.exit.i, !dbg !3670

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3671
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3672
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3673

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3674
  br label %kmalloc_index.exit.i, !dbg !3674

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3675
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3676
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3677

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3678
  br label %kmalloc_index.exit.i, !dbg !3678

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3679
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3680
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3681

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3682
  br label %kmalloc_index.exit.i, !dbg !3682

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3683
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3684
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3685

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3686
  br label %kmalloc_index.exit.i, !dbg !3686

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3687
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3688
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3689

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3690
  br label %kmalloc_index.exit.i, !dbg !3690

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !3691, !srcloc !2729
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #7, !dbg !3692, !srcloc !2733
  unreachable, !dbg !3693

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3694
  store i32 %45, i32* %index.i, align 4, !dbg !3695
  %46 = load i32, i32* %index.i, align 4, !dbg !3696
  %tobool.i = icmp ne i32 %46, 0, !dbg !3696
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3697

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3698
  br label %kmalloc.exit, !dbg !3698

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3699
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3700
  %and.i.i = and i32 %48, 17, !dbg !3700
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3700
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3700
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3700
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3700
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3701

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3702
  br label %kmalloc_type.exit.i, !dbg !3702

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3703
  %and2.i.i = and i32 %49, 1, !dbg !3704
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3703
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3703
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3703
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3705
  br label %kmalloc_type.exit.i, !dbg !3705

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3706
  %idxprom.i = zext i32 %51 to i64, !dbg !3707
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3707
  %52 = load i32, i32* %index.i, align 4, !dbg !3708
  %idxprom6.i = zext i32 %52 to i64, !dbg !3707
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3707
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3707
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3709
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3710
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3711
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3712
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !3713
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3713
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3713
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3713
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !3713
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3532
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3714
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3715
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3716
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3717
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !3718
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3719
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3720
  store i8* %62, i8** %retval.i, align 8, !dbg !3721
  br label %kmalloc.exit, !dbg !3721

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3722
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3723
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !3724
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3724
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3724
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3724
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !3724
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3725
  br label %kmalloc.exit, !dbg !3725

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3726
  ret i8* %65, !dbg !3727
}

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
attributes #11 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!1925}
!llvm.module.flags = !{!1926, !1927, !1928, !1929}
!llvm.ident = !{!1930}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 19, type: !1923, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !24, globals: !1922, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evxface.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !14, line: 65, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !19, line: 16, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!24 = !{!25, !117, !140, !375, !799, !63, !39, !800, !802, !78, !803, !804}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !27, line: 133, size: 384, elements: !28)
!27 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!28 = !{!29, !786, !787, !788, !789, !795, !796, !797, !798}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !26, file: !27, line: 134, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !32, line: 367, size: 576, elements: !33)
!32 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!33 = !{!34, !50, !66, !80, !94, !108, !118, !437, !454, !469, !482, !560, !572, !586, !596, !614, !636, !655, !674, !693, !706, !732, !749, !762, !776, !785}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !31, file: !32, line: 368, baseType: !35, size: 128)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !32, line: 73, size: 128, elements: !36)
!36 = !{!37, !38, !44, !45, !49}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !35, file: !32, line: 74, baseType: !30, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !35, file: !32, line: 74, baseType: !39, size: 8, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !40, line: 17, baseType: !41)
!40 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !42, line: 21, baseType: !43)
!42 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!43 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !35, file: !32, line: 74, baseType: !39, size: 8, offset: 72)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !35, file: !32, line: 74, baseType: !46, size: 16, offset: 80)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !40, line: 19, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !42, line: 24, baseType: !48)
!48 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !35, file: !32, line: 74, baseType: !39, size: 8, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !31, file: !32, line: 369, baseType: !51, size: 192)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !32, line: 76, size: 192, elements: !52)
!52 = !{!53, !54, !55, !56, !57, !58, !62}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !51, file: !32, line: 77, baseType: !30, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !51, file: !32, line: 77, baseType: !39, size: 8, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !51, file: !32, line: 77, baseType: !39, size: 8, offset: 72)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !51, file: !32, line: 77, baseType: !46, size: 16, offset: 80)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !51, file: !32, line: 77, baseType: !39, size: 8, offset: 96)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !51, file: !32, line: 77, baseType: !59, size: 24, offset: 104)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 24, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 3)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !51, file: !32, line: 78, baseType: !63, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !40, line: 23, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !42, line: 31, baseType: !65)
!65 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !31, file: !32, line: 370, baseType: !67, size: 256)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !32, line: 93, size: 256, elements: !68)
!68 = !{!69, !70, !71, !72, !73, !74, !77}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !67, file: !32, line: 94, baseType: !30, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !67, file: !32, line: 94, baseType: !39, size: 8, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !67, file: !32, line: 94, baseType: !39, size: 8, offset: 72)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !67, file: !32, line: 94, baseType: !46, size: 16, offset: 80)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !67, file: !32, line: 94, baseType: !39, size: 8, offset: 96)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !67, file: !32, line: 94, baseType: !75, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !67, file: !32, line: 94, baseType: !78, size: 32, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !40, line: 21, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !42, line: 27, baseType: !7)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !31, file: !32, line: 371, baseType: !81, size: 384)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !32, line: 97, size: 384, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88, !90, !91, !92, !93}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !81, file: !32, line: 98, baseType: !30, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !81, file: !32, line: 98, baseType: !39, size: 8, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !81, file: !32, line: 98, baseType: !39, size: 8, offset: 72)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !81, file: !32, line: 98, baseType: !46, size: 16, offset: 80)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !81, file: !32, line: 98, baseType: !39, size: 8, offset: 96)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !81, file: !32, line: 98, baseType: !89, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !81, file: !32, line: 98, baseType: !78, size: 32, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !81, file: !32, line: 99, baseType: !78, size: 32, offset: 224)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !81, file: !32, line: 100, baseType: !89, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !81, file: !32, line: 101, baseType: !25, size: 64, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !31, file: !32, line: 372, baseType: !95, size: 384)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !32, line: 104, size: 384, elements: !96)
!96 = !{!97, !98, !99, !100, !101, !102, !103, !105, !106, !107}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !95, file: !32, line: 105, baseType: !30, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !95, file: !32, line: 105, baseType: !39, size: 8, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !95, file: !32, line: 105, baseType: !39, size: 8, offset: 72)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !95, file: !32, line: 105, baseType: !46, size: 16, offset: 80)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !95, file: !32, line: 105, baseType: !39, size: 8, offset: 96)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !95, file: !32, line: 105, baseType: !25, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !95, file: !32, line: 106, baseType: !104, size: 64, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !95, file: !32, line: 107, baseType: !89, size: 64, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !95, file: !32, line: 108, baseType: !78, size: 32, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !95, file: !32, line: 109, baseType: !78, size: 32, offset: 352)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !31, file: !32, line: 373, baseType: !109, size: 192)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !32, line: 118, size: 192, elements: !110)
!110 = !{!111, !112, !113, !114, !115, !116}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !109, file: !32, line: 119, baseType: !30, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !109, file: !32, line: 119, baseType: !39, size: 8, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !109, file: !32, line: 119, baseType: !39, size: 8, offset: 72)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !109, file: !32, line: 119, baseType: !46, size: 16, offset: 80)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !109, file: !32, line: 119, baseType: !39, size: 8, offset: 96)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !109, file: !32, line: 119, baseType: !117, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !31, file: !32, line: 374, baseType: !119, size: 448)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !32, line: 143, size: 448, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !434, !435, !436}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !119, file: !32, line: 144, baseType: !30, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !119, file: !32, line: 144, baseType: !39, size: 8, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !32, line: 144, baseType: !39, size: 8, offset: 72)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !119, file: !32, line: 144, baseType: !46, size: 16, offset: 80)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !32, line: 144, baseType: !39, size: 8, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !119, file: !32, line: 144, baseType: !39, size: 8, offset: 104)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !119, file: !32, line: 145, baseType: !39, size: 8, offset: 112)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !119, file: !32, line: 146, baseType: !39, size: 8, offset: 120)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !119, file: !32, line: 147, baseType: !30, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !119, file: !32, line: 148, baseType: !30, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !119, file: !32, line: 149, baseType: !89, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !119, file: !32, line: 153, baseType: !133, size: 64, offset: 320)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !119, file: !32, line: 150, size: 64, elements: !134)
!134 = !{!135, !433}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !133, file: !32, line: 151, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !27, line: 248, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!140, !142}
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !141, line: 421, baseType: !78)
!141 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !144, line: 37, size: 9024, elements: !145)
!144 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !379, !380, !381, !382, !383, !387, !389, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !416, !417, !418, !419, !420, !421, !422, !423, !425, !431}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !143, file: !144, line: 38, baseType: !142, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !143, file: !144, line: 39, baseType: !39, size: 8, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !143, file: !144, line: 40, baseType: !39, size: 8, offset: 72)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !143, file: !144, line: 41, baseType: !46, size: 16, offset: 80)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !143, file: !144, line: 42, baseType: !39, size: 8, offset: 96)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !143, file: !144, line: 43, baseType: !39, size: 8, offset: 104)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !143, file: !144, line: 44, baseType: !39, size: 8, offset: 112)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !143, file: !144, line: 45, baseType: !154, size: 16, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !141, line: 445, baseType: !46)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !143, file: !144, line: 46, baseType: !39, size: 8, offset: 144)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !143, file: !144, line: 47, baseType: !39, size: 8, offset: 152)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !143, file: !144, line: 48, baseType: !39, size: 8, offset: 160)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !143, file: !144, line: 49, baseType: !39, size: 8, offset: 168)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !143, file: !144, line: 50, baseType: !39, size: 8, offset: 176)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !143, file: !144, line: 51, baseType: !39, size: 8, offset: 184)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !143, file: !144, line: 52, baseType: !39, size: 8, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !143, file: !144, line: 53, baseType: !39, size: 8, offset: 200)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !143, file: !144, line: 54, baseType: !89, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !143, file: !144, line: 55, baseType: !78, size: 32, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !143, file: !144, line: 56, baseType: !78, size: 32, offset: 352)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !143, file: !144, line: 57, baseType: !78, size: 32, offset: 384)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !143, file: !144, line: 58, baseType: !78, size: 32, offset: 416)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !143, file: !144, line: 60, baseType: !169, size: 640, offset: 448)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !27, line: 893, size: 640, elements: !170)
!170 = !{!171, !172, !173, !174, !175, !176, !260, !261, !377, !378}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !169, file: !27, line: 894, baseType: !89, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !169, file: !27, line: 895, baseType: !89, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !169, file: !27, line: 896, baseType: !89, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !169, file: !27, line: 897, baseType: !89, size: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !169, file: !27, line: 898, baseType: !89, size: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !169, file: !27, line: 899, baseType: !177, size: 64, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !27, line: 875, size: 1600, elements: !179)
!179 = !{!180, !200, !216}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !178, file: !27, line: 876, baseType: !181, size: 448)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !27, line: 828, size: 448, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188, !189, !190, !199}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !181, file: !27, line: 829, baseType: !177, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !181, file: !27, line: 829, baseType: !39, size: 8, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !181, file: !27, line: 829, baseType: !39, size: 8, offset: 72)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !181, file: !27, line: 829, baseType: !46, size: 16, offset: 80)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !181, file: !27, line: 829, baseType: !89, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !181, file: !27, line: 829, baseType: !177, size: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !181, file: !27, line: 829, baseType: !25, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !181, file: !27, line: 829, baseType: !191, size: 64, offset: 320)
!191 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !27, line: 716, size: 64, elements: !192)
!192 = !{!193, !194, !195, !196, !197, !198}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !191, file: !27, line: 717, baseType: !63, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !191, file: !27, line: 718, baseType: !78, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !191, file: !27, line: 719, baseType: !75, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !191, file: !27, line: 720, baseType: !89, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !191, file: !27, line: 721, baseType: !75, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !191, file: !27, line: 722, baseType: !177, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !181, file: !27, line: 829, baseType: !39, size: 8, offset: 384)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !178, file: !27, line: 877, baseType: !201, size: 640)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !27, line: 835, size: 640, elements: !202)
!202 = !{!203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !201, file: !27, line: 836, baseType: !177, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !201, file: !27, line: 836, baseType: !39, size: 8, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !201, file: !27, line: 836, baseType: !39, size: 8, offset: 72)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !201, file: !27, line: 836, baseType: !46, size: 16, offset: 80)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !201, file: !27, line: 836, baseType: !89, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !27, line: 836, baseType: !177, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !201, file: !27, line: 836, baseType: !25, size: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !201, file: !27, line: 836, baseType: !191, size: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !201, file: !27, line: 836, baseType: !39, size: 8, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !201, file: !27, line: 836, baseType: !75, size: 64, offset: 448)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !201, file: !27, line: 837, baseType: !89, size: 64, offset: 512)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !201, file: !27, line: 838, baseType: !78, size: 32, offset: 576)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !201, file: !27, line: 839, baseType: !78, size: 32, offset: 608)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !178, file: !27, line: 878, baseType: !217, size: 1600)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !27, line: 846, size: 1600, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !217, file: !27, line: 847, baseType: !177, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !217, file: !27, line: 847, baseType: !39, size: 8, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !217, file: !27, line: 847, baseType: !39, size: 8, offset: 72)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !217, file: !27, line: 847, baseType: !46, size: 16, offset: 80)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !217, file: !27, line: 847, baseType: !89, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !217, file: !27, line: 847, baseType: !177, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !217, file: !27, line: 847, baseType: !25, size: 64, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !217, file: !27, line: 847, baseType: !191, size: 64, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !217, file: !27, line: 847, baseType: !39, size: 8, offset: 384)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !217, file: !27, line: 847, baseType: !177, size: 64, offset: 448)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !217, file: !27, line: 848, baseType: !177, size: 64, offset: 512)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !217, file: !27, line: 849, baseType: !75, size: 64, offset: 576)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !217, file: !27, line: 850, baseType: !39, size: 8, offset: 640)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !217, file: !27, line: 851, baseType: !75, size: 64, offset: 704)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !217, file: !27, line: 852, baseType: !75, size: 64, offset: 768)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !217, file: !27, line: 853, baseType: !75, size: 64, offset: 832)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !217, file: !27, line: 854, baseType: !236, size: 32, offset: 896)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 32, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 4)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !217, file: !27, line: 855, baseType: !78, size: 32, offset: 928)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !217, file: !27, line: 856, baseType: !78, size: 32, offset: 960)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !217, file: !27, line: 857, baseType: !78, size: 32, offset: 992)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !217, file: !27, line: 858, baseType: !78, size: 32, offset: 1024)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !217, file: !27, line: 859, baseType: !78, size: 32, offset: 1056)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !217, file: !27, line: 860, baseType: !78, size: 32, offset: 1088)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !217, file: !27, line: 861, baseType: !78, size: 32, offset: 1120)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !217, file: !27, line: 862, baseType: !78, size: 32, offset: 1152)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !217, file: !27, line: 863, baseType: !78, size: 32, offset: 1184)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !217, file: !27, line: 864, baseType: !78, size: 32, offset: 1216)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !217, file: !27, line: 865, baseType: !78, size: 32, offset: 1248)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !217, file: !27, line: 866, baseType: !78, size: 32, offset: 1280)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !217, file: !27, line: 867, baseType: !78, size: 32, offset: 1312)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !217, file: !27, line: 868, baseType: !46, size: 16, offset: 1344)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !217, file: !27, line: 869, baseType: !39, size: 8, offset: 1360)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !217, file: !27, line: 870, baseType: !39, size: 8, offset: 1368)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !217, file: !27, line: 871, baseType: !39, size: 8, offset: 1376)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !217, file: !27, line: 872, baseType: !257, size: 160, offset: 1384)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 160, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 20)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !169, file: !27, line: 900, baseType: !25, size: 64, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !169, file: !27, line: 901, baseType: !262, size: 64, offset: 448)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !27, line: 663, size: 640, elements: !264)
!264 = !{!265, !273, !286, !295, !304, !317, !331, !343, !355}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !263, file: !27, line: 664, baseType: !266, size: 128)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !27, line: 567, size: 128, elements: !267)
!267 = !{!268, !269, !270, !271, !272}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !266, file: !27, line: 568, baseType: !117, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !266, file: !27, line: 568, baseType: !39, size: 8, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !27, line: 568, baseType: !39, size: 8, offset: 72)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !266, file: !27, line: 568, baseType: !46, size: 16, offset: 80)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !266, file: !27, line: 568, baseType: !46, size: 16, offset: 96)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !263, file: !27, line: 665, baseType: !274, size: 384)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !27, line: 593, size: 384, elements: !275)
!275 = !{!276, !277, !278, !279, !280, !281, !282, !283, !284, !285}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !27, line: 594, baseType: !117, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !274, file: !27, line: 594, baseType: !39, size: 8, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !274, file: !27, line: 594, baseType: !39, size: 8, offset: 72)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !274, file: !27, line: 594, baseType: !46, size: 16, offset: 80)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !274, file: !27, line: 594, baseType: !46, size: 16, offset: 96)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !274, file: !27, line: 594, baseType: !46, size: 16, offset: 112)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !274, file: !27, line: 595, baseType: !177, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !274, file: !27, line: 596, baseType: !89, size: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !274, file: !27, line: 597, baseType: !89, size: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !274, file: !27, line: 598, baseType: !63, size: 64, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !263, file: !27, line: 666, baseType: !287, size: 192)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !27, line: 573, size: 192, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !27, line: 574, baseType: !117, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !287, file: !27, line: 574, baseType: !39, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !27, line: 574, baseType: !39, size: 8, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !287, file: !27, line: 574, baseType: !46, size: 16, offset: 80)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !287, file: !27, line: 574, baseType: !46, size: 16, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !287, file: !27, line: 574, baseType: !30, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !263, file: !27, line: 667, baseType: !296, size: 192)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !27, line: 604, size: 192, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !27, line: 605, baseType: !117, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !296, file: !27, line: 605, baseType: !39, size: 8, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !27, line: 605, baseType: !39, size: 8, offset: 72)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !296, file: !27, line: 605, baseType: !46, size: 16, offset: 80)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !296, file: !27, line: 605, baseType: !46, size: 16, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !296, file: !27, line: 605, baseType: !25, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !263, file: !27, line: 668, baseType: !305, size: 448)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !27, line: 608, size: 448, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314, !315, !316}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !27, line: 609, baseType: !117, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !305, file: !27, line: 609, baseType: !39, size: 8, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !27, line: 609, baseType: !39, size: 8, offset: 72)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !305, file: !27, line: 609, baseType: !46, size: 16, offset: 80)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !305, file: !27, line: 609, baseType: !46, size: 16, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !305, file: !27, line: 609, baseType: !78, size: 32, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !305, file: !27, line: 610, baseType: !177, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !305, file: !27, line: 611, baseType: !89, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !305, file: !27, line: 612, baseType: !89, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !305, file: !27, line: 613, baseType: !78, size: 32, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !263, file: !27, line: 669, baseType: !318, size: 512)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !27, line: 580, size: 512, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !27, line: 581, baseType: !117, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !318, file: !27, line: 581, baseType: !39, size: 8, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !318, file: !27, line: 581, baseType: !39, size: 8, offset: 72)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !318, file: !27, line: 581, baseType: !46, size: 16, offset: 80)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !318, file: !27, line: 581, baseType: !46, size: 16, offset: 96)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !318, file: !27, line: 581, baseType: !78, size: 32, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !318, file: !27, line: 582, baseType: !30, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !318, file: !27, line: 583, baseType: !30, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !318, file: !27, line: 584, baseType: !142, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !318, file: !27, line: 585, baseType: !117, size: 64, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !318, file: !27, line: 586, baseType: !78, size: 32, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !263, file: !27, line: 670, baseType: !332, size: 320)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !27, line: 620, size: 320, elements: !333)
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !342}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !27, line: 621, baseType: !117, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !332, file: !27, line: 621, baseType: !39, size: 8, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !27, line: 621, baseType: !39, size: 8, offset: 72)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !332, file: !27, line: 621, baseType: !46, size: 16, offset: 80)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !332, file: !27, line: 621, baseType: !46, size: 16, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !332, file: !27, line: 621, baseType: !39, size: 8, offset: 112)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !332, file: !27, line: 622, baseType: !142, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !332, file: !27, line: 623, baseType: !30, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !332, file: !27, line: 624, baseType: !63, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !263, file: !27, line: 671, baseType: !344, size: 640)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !27, line: 631, size: 640, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !344, file: !27, line: 632, baseType: !117, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !344, file: !27, line: 632, baseType: !39, size: 8, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !344, file: !27, line: 632, baseType: !39, size: 8, offset: 72)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !344, file: !27, line: 632, baseType: !46, size: 16, offset: 80)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !344, file: !27, line: 632, baseType: !46, size: 16, offset: 96)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !344, file: !27, line: 633, baseType: !352, size: 512, offset: 128)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 512, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 8)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !263, file: !27, line: 672, baseType: !356, size: 320)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !27, line: 654, size: 320, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363, !364, !365, !366}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !27, line: 655, baseType: !117, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !356, file: !27, line: 655, baseType: !39, size: 8, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !356, file: !27, line: 655, baseType: !39, size: 8, offset: 72)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !356, file: !27, line: 655, baseType: !46, size: 16, offset: 80)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !356, file: !27, line: 655, baseType: !46, size: 16, offset: 96)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !356, file: !27, line: 655, baseType: !39, size: 8, offset: 112)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !356, file: !27, line: 656, baseType: !25, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !356, file: !27, line: 657, baseType: !30, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !356, file: !27, line: 658, baseType: !367, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !27, line: 645, size: 128, elements: !369)
!369 = !{!370, !376}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !368, file: !27, line: 646, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !141, line: 1052, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !375, !78, !117}
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !141, line: 424, baseType: !117)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !368, file: !27, line: 647, baseType: !117, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !169, file: !27, line: 902, baseType: !177, size: 64, offset: 512)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !169, file: !27, line: 903, baseType: !78, size: 32, offset: 576)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !143, file: !144, line: 61, baseType: !78, size: 32, offset: 1088)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !143, file: !144, line: 62, baseType: !78, size: 32, offset: 1120)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !143, file: !144, line: 63, baseType: !46, size: 16, offset: 1152)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !143, file: !144, line: 64, baseType: !39, size: 8, offset: 1168)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !143, file: !144, line: 66, baseType: !384, size: 2688, offset: 1216)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2688, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 7)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !143, file: !144, line: 67, baseType: !388, size: 3072, offset: 3904)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 3072, elements: !353)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !143, file: !144, line: 68, baseType: !390, size: 576, offset: 6976)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 576, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 9)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !143, file: !144, line: 69, baseType: !104, size: 64, offset: 7552)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !143, file: !144, line: 71, baseType: !89, size: 64, offset: 7616)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !143, file: !144, line: 72, baseType: !104, size: 64, offset: 7680)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !143, file: !144, line: 73, baseType: !262, size: 64, offset: 7744)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !143, file: !144, line: 74, baseType: !25, size: 64, offset: 7808)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !143, file: !144, line: 75, baseType: !30, size: 64, offset: 7872)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !143, file: !144, line: 76, baseType: !25, size: 64, offset: 7936)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !143, file: !144, line: 77, baseType: !177, size: 64, offset: 8000)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !143, file: !144, line: 78, baseType: !30, size: 64, offset: 8064)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !143, file: !144, line: 79, baseType: !25, size: 64, offset: 8128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !143, file: !144, line: 80, baseType: !75, size: 64, offset: 8192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !143, file: !144, line: 81, baseType: !177, size: 64, offset: 8256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !143, file: !144, line: 82, baseType: !406, size: 64, offset: 8320)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !27, line: 702, size: 128, elements: !409)
!409 = !{!410, !411, !412, !413, !414, !415}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !408, file: !27, line: 706, baseType: !78, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !408, file: !27, line: 707, baseType: !78, size: 32, offset: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !408, file: !27, line: 708, baseType: !46, size: 16, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !408, file: !27, line: 709, baseType: !39, size: 8, offset: 80)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !408, file: !27, line: 710, baseType: !39, size: 8, offset: 88)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !408, file: !27, line: 711, baseType: !39, size: 8, offset: 96)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !143, file: !144, line: 83, baseType: !177, size: 64, offset: 8384)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !143, file: !144, line: 84, baseType: !30, size: 64, offset: 8448)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !143, file: !144, line: 85, baseType: !262, size: 64, offset: 8512)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !143, file: !144, line: 86, baseType: !30, size: 64, offset: 8576)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !143, file: !144, line: 87, baseType: !262, size: 64, offset: 8640)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !143, file: !144, line: 88, baseType: !177, size: 64, offset: 8704)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !143, file: !144, line: 89, baseType: !177, size: 64, offset: 8768)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !143, file: !144, line: 90, baseType: !424, size: 64, offset: 8832)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !143, file: !144, line: 91, baseType: !426, size: 64, offset: 8896)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !27, line: 637, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!140, !142, !430}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !143, file: !144, line: 92, baseType: !432, size: 64, offset: 8960)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !27, line: 641, baseType: !137)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !133, file: !32, line: 152, baseType: !30, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !119, file: !32, line: 155, baseType: !78, size: 32, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !119, file: !32, line: 156, baseType: !154, size: 16, offset: 416)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !119, file: !32, line: 157, baseType: !39, size: 8, offset: 432)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !31, file: !32, line: 375, baseType: !438, size: 576)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !32, line: 122, size: 576, elements: !439)
!439 = !{!440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !438, file: !32, line: 123, baseType: !30, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !438, file: !32, line: 123, baseType: !39, size: 8, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !438, file: !32, line: 123, baseType: !39, size: 8, offset: 72)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !438, file: !32, line: 123, baseType: !46, size: 16, offset: 80)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !438, file: !32, line: 123, baseType: !39, size: 8, offset: 96)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !438, file: !32, line: 123, baseType: !39, size: 8, offset: 104)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !438, file: !32, line: 124, baseType: !46, size: 16, offset: 112)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !438, file: !32, line: 125, baseType: !117, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !438, file: !32, line: 126, baseType: !63, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !438, file: !32, line: 127, baseType: !424, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !438, file: !32, line: 128, baseType: !30, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !438, file: !32, line: 129, baseType: !30, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !438, file: !32, line: 130, baseType: !25, size: 64, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !438, file: !32, line: 131, baseType: !39, size: 8, offset: 512)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !31, file: !32, line: 376, baseType: !455, size: 448)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !32, line: 134, size: 448, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !468}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !455, file: !32, line: 135, baseType: !30, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !455, file: !32, line: 135, baseType: !39, size: 8, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !455, file: !32, line: 135, baseType: !39, size: 8, offset: 72)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !455, file: !32, line: 135, baseType: !46, size: 16, offset: 80)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !32, line: 135, baseType: !39, size: 8, offset: 96)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !455, file: !32, line: 135, baseType: !39, size: 8, offset: 104)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !455, file: !32, line: 136, baseType: !25, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !455, file: !32, line: 137, baseType: !30, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !455, file: !32, line: 138, baseType: !30, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !455, file: !32, line: 139, baseType: !467, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !141, line: 129, baseType: !63)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !455, file: !32, line: 140, baseType: !78, size: 32, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !31, file: !32, line: 377, baseType: !470, size: 320)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !32, line: 184, size: 320, elements: !471)
!471 = !{!472, !473, !474, !475, !476, !477, !481}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !470, file: !32, line: 185, baseType: !30, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !470, file: !32, line: 185, baseType: !39, size: 8, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !470, file: !32, line: 185, baseType: !39, size: 8, offset: 72)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !470, file: !32, line: 185, baseType: !46, size: 16, offset: 80)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !470, file: !32, line: 185, baseType: !39, size: 8, offset: 96)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !470, file: !32, line: 185, baseType: !478, size: 128, offset: 128)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 128, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 2)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !470, file: !32, line: 185, baseType: !30, size: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !31, file: !32, line: 378, baseType: !483, size: 384)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !32, line: 187, size: 384, elements: !484)
!484 = !{!485, !486, !487, !488, !489, !490, !491, !492}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !483, file: !32, line: 188, baseType: !30, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !483, file: !32, line: 188, baseType: !39, size: 8, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !483, file: !32, line: 188, baseType: !39, size: 8, offset: 72)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !483, file: !32, line: 188, baseType: !46, size: 16, offset: 80)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !483, file: !32, line: 188, baseType: !39, size: 8, offset: 96)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !483, file: !32, line: 189, baseType: !478, size: 128, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !483, file: !32, line: 189, baseType: !30, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !483, file: !32, line: 189, baseType: !493, size: 64, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !27, line: 480, size: 576, elements: !495)
!495 = !{!496, !497, !498, !499, !507, !522, !554, !555, !556, !557, !558, !559}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !494, file: !27, line: 481, baseType: !25, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !494, file: !27, line: 482, baseType: !493, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !494, file: !27, line: 483, baseType: !493, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !494, file: !27, line: 484, baseType: !500, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !27, line: 497, size: 256, elements: !502)
!502 = !{!503, !504, !505, !506}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !501, file: !27, line: 498, baseType: !500, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !501, file: !27, line: 499, baseType: !500, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !501, file: !27, line: 500, baseType: !493, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !501, file: !27, line: 501, baseType: !78, size: 32, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !494, file: !27, line: 485, baseType: !508, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !27, line: 466, size: 320, elements: !510)
!510 = !{!511, !516, !517, !518, !519, !520, !521}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !509, file: !27, line: 467, baseType: !512, size: 128)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !27, line: 459, size: 128, elements: !513)
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !512, file: !27, line: 460, baseType: !39, size: 8)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !512, file: !27, line: 461, baseType: !63, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !509, file: !27, line: 468, baseType: !512, size: 128, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !509, file: !27, line: 469, baseType: !46, size: 16, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !509, file: !27, line: 470, baseType: !39, size: 8, offset: 272)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !509, file: !27, line: 471, baseType: !39, size: 8, offset: 280)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !509, file: !27, line: 472, baseType: !39, size: 8, offset: 288)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !509, file: !27, line: 473, baseType: !39, size: 8, offset: 296)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !494, file: !27, line: 486, baseType: !523, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !27, line: 448, size: 192, elements: !525)
!525 = !{!526, !549, !550, !551, !552, !553}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !524, file: !27, line: 449, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !27, line: 438, size: 64, elements: !528)
!528 = !{!529, !530, !543}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !527, file: !27, line: 439, baseType: !25, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !527, file: !27, line: 440, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !27, line: 419, size: 256, elements: !533)
!533 = !{!534, !539, !540, !541, !542}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !532, file: !27, line: 420, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !141, line: 1049, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!78, !375, !78, !117}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !532, file: !27, line: 421, baseType: !117, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !532, file: !27, line: 422, baseType: !25, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !532, file: !27, line: 423, baseType: !39, size: 8, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !532, file: !27, line: 424, baseType: !39, size: 8, offset: 200)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !527, file: !27, line: 441, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !27, line: 429, size: 128, elements: !546)
!546 = !{!547, !548}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !545, file: !27, line: 430, baseType: !25, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !545, file: !27, line: 431, baseType: !544, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !524, file: !27, line: 450, baseType: !508, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !524, file: !27, line: 451, baseType: !39, size: 8, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !524, file: !27, line: 452, baseType: !39, size: 8, offset: 136)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !524, file: !27, line: 453, baseType: !39, size: 8, offset: 144)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !524, file: !27, line: 454, baseType: !39, size: 8, offset: 152)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !494, file: !27, line: 487, baseType: !63, size: 64, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !494, file: !27, line: 488, baseType: !78, size: 32, offset: 448)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !494, file: !27, line: 489, baseType: !46, size: 16, offset: 480)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !494, file: !27, line: 490, baseType: !46, size: 16, offset: 496)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !494, file: !27, line: 491, baseType: !39, size: 8, offset: 512)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !494, file: !27, line: 492, baseType: !39, size: 8, offset: 520)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !31, file: !32, line: 379, baseType: !561, size: 384)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !32, line: 192, size: 384, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !568, !569, !570, !571}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !561, file: !32, line: 193, baseType: !30, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !561, file: !32, line: 193, baseType: !39, size: 8, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !561, file: !32, line: 193, baseType: !39, size: 8, offset: 72)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !561, file: !32, line: 193, baseType: !46, size: 16, offset: 80)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !561, file: !32, line: 193, baseType: !39, size: 8, offset: 96)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !561, file: !32, line: 193, baseType: !478, size: 128, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !561, file: !32, line: 193, baseType: !30, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !561, file: !32, line: 193, baseType: !78, size: 32, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !561, file: !32, line: 194, baseType: !78, size: 32, offset: 352)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !31, file: !32, line: 380, baseType: !573, size: 384)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !32, line: 197, size: 384, elements: !574)
!574 = !{!575, !576, !577, !578, !579, !580, !581, !582, !583, !584}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !573, file: !32, line: 198, baseType: !30, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !573, file: !32, line: 198, baseType: !39, size: 8, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !573, file: !32, line: 198, baseType: !39, size: 8, offset: 72)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !573, file: !32, line: 198, baseType: !46, size: 16, offset: 80)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !573, file: !32, line: 198, baseType: !39, size: 8, offset: 96)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !573, file: !32, line: 200, baseType: !39, size: 8, offset: 104)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !573, file: !32, line: 201, baseType: !39, size: 8, offset: 112)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !573, file: !32, line: 202, baseType: !478, size: 128, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !573, file: !32, line: 202, baseType: !30, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !573, file: !32, line: 202, baseType: !585, size: 64, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !141, line: 128, baseType: !63)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !31, file: !32, line: 381, baseType: !587, size: 320)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !32, line: 205, size: 320, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594, !595}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !587, file: !32, line: 206, baseType: !30, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !587, file: !32, line: 206, baseType: !39, size: 8, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !587, file: !32, line: 206, baseType: !39, size: 8, offset: 72)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !587, file: !32, line: 206, baseType: !46, size: 16, offset: 80)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !32, line: 206, baseType: !39, size: 8, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !587, file: !32, line: 206, baseType: !478, size: 128, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !587, file: !32, line: 206, baseType: !30, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !31, file: !32, line: 382, baseType: !597, size: 384)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !32, line: 233, size: 384, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !597, file: !32, line: 234, baseType: !30, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !597, file: !32, line: 234, baseType: !39, size: 8, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !597, file: !32, line: 234, baseType: !39, size: 8, offset: 72)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !597, file: !32, line: 234, baseType: !46, size: 16, offset: 80)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !597, file: !32, line: 234, baseType: !39, size: 8, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !597, file: !32, line: 234, baseType: !39, size: 8, offset: 104)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !597, file: !32, line: 234, baseType: !39, size: 8, offset: 112)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !597, file: !32, line: 234, baseType: !39, size: 8, offset: 120)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !597, file: !32, line: 234, baseType: !25, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !597, file: !32, line: 234, baseType: !78, size: 32, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !597, file: !32, line: 234, baseType: !78, size: 32, offset: 224)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !597, file: !32, line: 234, baseType: !78, size: 32, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !597, file: !32, line: 234, baseType: !39, size: 8, offset: 288)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !597, file: !32, line: 234, baseType: !39, size: 8, offset: 296)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !597, file: !32, line: 234, baseType: !30, size: 64, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !31, file: !32, line: 383, baseType: !615, size: 576)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !32, line: 237, size: 576, elements: !616)
!616 = !{!617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !615, file: !32, line: 238, baseType: !30, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !615, file: !32, line: 238, baseType: !39, size: 8, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !615, file: !32, line: 238, baseType: !39, size: 8, offset: 72)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !615, file: !32, line: 238, baseType: !46, size: 16, offset: 80)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !615, file: !32, line: 238, baseType: !39, size: 8, offset: 96)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !615, file: !32, line: 238, baseType: !39, size: 8, offset: 104)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !615, file: !32, line: 238, baseType: !39, size: 8, offset: 112)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !615, file: !32, line: 238, baseType: !39, size: 8, offset: 120)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !615, file: !32, line: 238, baseType: !25, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !615, file: !32, line: 238, baseType: !78, size: 32, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !615, file: !32, line: 238, baseType: !78, size: 32, offset: 224)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !615, file: !32, line: 238, baseType: !78, size: 32, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !615, file: !32, line: 238, baseType: !39, size: 8, offset: 288)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !615, file: !32, line: 238, baseType: !39, size: 8, offset: 296)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !615, file: !32, line: 238, baseType: !46, size: 16, offset: 304)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !615, file: !32, line: 239, baseType: !30, size: 64, offset: 320)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !615, file: !32, line: 240, baseType: !89, size: 64, offset: 384)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !615, file: !32, line: 241, baseType: !46, size: 16, offset: 448)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !615, file: !32, line: 242, baseType: !89, size: 64, offset: 512)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !31, file: !32, line: 384, baseType: !637, size: 384)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !32, line: 262, size: 384, elements: !638)
!638 = !{!639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !637, file: !32, line: 263, baseType: !30, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !637, file: !32, line: 263, baseType: !39, size: 8, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !637, file: !32, line: 263, baseType: !39, size: 8, offset: 72)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !637, file: !32, line: 263, baseType: !46, size: 16, offset: 80)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !637, file: !32, line: 263, baseType: !39, size: 8, offset: 96)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !637, file: !32, line: 263, baseType: !39, size: 8, offset: 104)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !637, file: !32, line: 263, baseType: !39, size: 8, offset: 112)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !637, file: !32, line: 263, baseType: !39, size: 8, offset: 120)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !637, file: !32, line: 263, baseType: !25, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !637, file: !32, line: 263, baseType: !78, size: 32, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !637, file: !32, line: 263, baseType: !78, size: 32, offset: 224)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !637, file: !32, line: 263, baseType: !78, size: 32, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !637, file: !32, line: 263, baseType: !39, size: 8, offset: 288)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !637, file: !32, line: 263, baseType: !39, size: 8, offset: 296)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !637, file: !32, line: 263, baseType: !39, size: 8, offset: 304)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !637, file: !32, line: 264, baseType: !30, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !31, file: !32, line: 385, baseType: !656, size: 448)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !32, line: 245, size: 448, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !656, file: !32, line: 246, baseType: !30, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !656, file: !32, line: 246, baseType: !39, size: 8, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !656, file: !32, line: 246, baseType: !39, size: 8, offset: 72)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !656, file: !32, line: 246, baseType: !46, size: 16, offset: 80)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !656, file: !32, line: 246, baseType: !39, size: 8, offset: 96)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !656, file: !32, line: 246, baseType: !39, size: 8, offset: 104)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !656, file: !32, line: 246, baseType: !39, size: 8, offset: 112)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !656, file: !32, line: 246, baseType: !39, size: 8, offset: 120)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !656, file: !32, line: 246, baseType: !25, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !656, file: !32, line: 246, baseType: !78, size: 32, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !656, file: !32, line: 246, baseType: !78, size: 32, offset: 224)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !656, file: !32, line: 246, baseType: !78, size: 32, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !656, file: !32, line: 246, baseType: !39, size: 8, offset: 288)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !656, file: !32, line: 246, baseType: !39, size: 8, offset: 296)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !656, file: !32, line: 246, baseType: !30, size: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !656, file: !32, line: 247, baseType: !30, size: 64, offset: 384)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !31, file: !32, line: 386, baseType: !675, size: 448)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !32, line: 250, size: 448, elements: !676)
!676 = !{!677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !675, file: !32, line: 251, baseType: !30, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !675, file: !32, line: 251, baseType: !39, size: 8, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !675, file: !32, line: 251, baseType: !39, size: 8, offset: 72)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !675, file: !32, line: 251, baseType: !46, size: 16, offset: 80)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !675, file: !32, line: 251, baseType: !39, size: 8, offset: 96)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !675, file: !32, line: 251, baseType: !39, size: 8, offset: 104)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !675, file: !32, line: 251, baseType: !39, size: 8, offset: 112)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !675, file: !32, line: 251, baseType: !39, size: 8, offset: 120)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !675, file: !32, line: 251, baseType: !25, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !675, file: !32, line: 251, baseType: !78, size: 32, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !675, file: !32, line: 251, baseType: !78, size: 32, offset: 224)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !675, file: !32, line: 251, baseType: !78, size: 32, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !675, file: !32, line: 251, baseType: !39, size: 8, offset: 288)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !675, file: !32, line: 251, baseType: !39, size: 8, offset: 296)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !675, file: !32, line: 256, baseType: !30, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !675, file: !32, line: 257, baseType: !30, size: 64, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !31, file: !32, line: 387, baseType: !694, size: 512)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !32, line: 273, size: 512, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703, !704, !705}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !694, file: !32, line: 274, baseType: !30, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !694, file: !32, line: 274, baseType: !39, size: 8, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !694, file: !32, line: 274, baseType: !39, size: 8, offset: 72)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !694, file: !32, line: 274, baseType: !46, size: 16, offset: 80)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !32, line: 274, baseType: !39, size: 8, offset: 96)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !694, file: !32, line: 274, baseType: !25, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !694, file: !32, line: 275, baseType: !78, size: 32, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !694, file: !32, line: 276, baseType: !371, size: 64, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !694, file: !32, line: 277, baseType: !117, size: 64, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !694, file: !32, line: 278, baseType: !478, size: 128, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !31, file: !32, line: 388, baseType: !707, size: 512)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !32, line: 281, size: 512, elements: !708)
!708 = !{!709, !710, !711, !712, !713, !714, !715, !716, !722, !723, !724, !730, !731}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !707, file: !32, line: 282, baseType: !30, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !707, file: !32, line: 282, baseType: !39, size: 8, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !707, file: !32, line: 282, baseType: !39, size: 8, offset: 72)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !707, file: !32, line: 282, baseType: !46, size: 16, offset: 80)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !707, file: !32, line: 282, baseType: !39, size: 8, offset: 96)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !707, file: !32, line: 282, baseType: !39, size: 8, offset: 104)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !707, file: !32, line: 283, baseType: !39, size: 8, offset: 112)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !707, file: !32, line: 284, baseType: !717, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !141, line: 1084, baseType: !718)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!140, !78, !467, !78, !721, !117, !117}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !707, file: !32, line: 285, baseType: !25, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !707, file: !32, line: 286, baseType: !117, size: 64, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !707, file: !32, line: 287, baseType: !725, size: 64, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !141, line: 1102, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!140, !375, !78, !117, !729}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !707, file: !32, line: 288, baseType: !30, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !707, file: !32, line: 289, baseType: !30, size: 64, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !31, file: !32, line: 389, baseType: !733, size: 512)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !32, line: 307, size: 512, elements: !734)
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !733, file: !32, line: 308, baseType: !30, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !733, file: !32, line: 308, baseType: !39, size: 8, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !733, file: !32, line: 308, baseType: !39, size: 8, offset: 72)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !733, file: !32, line: 308, baseType: !46, size: 16, offset: 80)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !733, file: !32, line: 308, baseType: !39, size: 8, offset: 96)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !733, file: !32, line: 308, baseType: !39, size: 8, offset: 104)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !733, file: !32, line: 309, baseType: !39, size: 8, offset: 112)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !733, file: !32, line: 310, baseType: !39, size: 8, offset: 120)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !733, file: !32, line: 311, baseType: !117, size: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !733, file: !32, line: 312, baseType: !25, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !733, file: !32, line: 313, baseType: !104, size: 64, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !733, file: !32, line: 314, baseType: !89, size: 64, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !733, file: !32, line: 315, baseType: !89, size: 64, offset: 384)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !733, file: !32, line: 316, baseType: !78, size: 32, offset: 448)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !31, file: !32, line: 390, baseType: !750, size: 448)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !32, line: 340, size: 448, elements: !751)
!751 = !{!752, !753, !754, !755, !756, !757, !758, !759, !760, !761}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !750, file: !32, line: 341, baseType: !30, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !750, file: !32, line: 341, baseType: !39, size: 8, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !750, file: !32, line: 341, baseType: !39, size: 8, offset: 72)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !750, file: !32, line: 341, baseType: !46, size: 16, offset: 80)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !750, file: !32, line: 341, baseType: !39, size: 8, offset: 96)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !750, file: !32, line: 341, baseType: !25, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !750, file: !32, line: 342, baseType: !25, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !750, file: !32, line: 343, baseType: !117, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !750, file: !32, line: 344, baseType: !89, size: 64, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !750, file: !32, line: 345, baseType: !78, size: 32, offset: 384)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !31, file: !32, line: 391, baseType: !763, size: 256)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !32, line: 350, size: 256, elements: !764)
!764 = !{!765, !766, !767, !768, !769, !770, !775}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !763, file: !32, line: 351, baseType: !30, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !763, file: !32, line: 351, baseType: !39, size: 8, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !763, file: !32, line: 351, baseType: !39, size: 8, offset: 72)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !763, file: !32, line: 351, baseType: !46, size: 16, offset: 80)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !763, file: !32, line: 351, baseType: !39, size: 8, offset: 96)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !763, file: !32, line: 351, baseType: !771, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !141, line: 1055, baseType: !772)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !375, !117}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !763, file: !32, line: 352, baseType: !117, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !31, file: !32, line: 392, baseType: !777, size: 192)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !32, line: 357, size: 192, elements: !778)
!778 = !{!779, !780, !781, !782, !783, !784}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !777, file: !32, line: 358, baseType: !30, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !777, file: !32, line: 358, baseType: !39, size: 8, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !777, file: !32, line: 358, baseType: !39, size: 8, offset: 72)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !777, file: !32, line: 358, baseType: !46, size: 16, offset: 80)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !777, file: !32, line: 358, baseType: !39, size: 8, offset: 96)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !777, file: !32, line: 358, baseType: !30, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !31, file: !32, line: 399, baseType: !26, size: 384)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !26, file: !27, line: 135, baseType: !39, size: 8, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !27, line: 136, baseType: !39, size: 8, offset: 72)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !26, file: !27, line: 137, baseType: !46, size: 16, offset: 80)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !26, file: !27, line: 138, baseType: !790, size: 32, offset: 96)
!790 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !791, line: 327, size: 32, elements: !792)
!791 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !790, file: !791, line: 328, baseType: !78, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !790, file: !791, line: 329, baseType: !236, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !26, file: !27, line: 139, baseType: !25, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !26, file: !27, line: 140, baseType: !25, size: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !26, file: !27, line: 141, baseType: !25, size: 64, offset: 256)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !26, file: !27, line: 142, baseType: !154, size: 16, offset: 320)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !141, line: 127, baseType: !63)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !801, line: 148, baseType: !7)
!801 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!802 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !806, line: 640, size: 48640, elements: !807)
!806 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!807 = !{!808, !814, !817, !818, !829, !830, !831, !832, !833, !834, !835, !836, !840, !871, !882, !987, !988, !989, !1000, !1001, !1003, !1004, !1222, !1223, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1302, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1358, !1360, !1361, !1362, !1364, !1366, !1367, !1368, !1369, !1370, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1394, !1399, !1403, !1404, !1405, !1408, !1412, !1415, !1418, !1421, !1424, !1427, !1430, !1433, !1439, !1440, !1441, !1447, !1448, !1452, !1453, !1454, !1463, !1464, !1465, !1466, !1467, !1472, !1473, !1474, !1477, !1478, !1481, !1484, !1487, !1490, !1493, !1496, !1497, !1578, !1581, !1584, !1585, !1588, !1589, !1590, !1594, !1595, !1596, !1609, !1610, !1611, !1621, !1626, !1629, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !805, file: !806, line: 646, baseType: !809, size: 128)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !810, line: 56, size: 128, elements: !811)
!810 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !809, file: !810, line: 57, baseType: !802, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !809, file: !810, line: 58, baseType: !78, size: 32, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !805, file: !806, line: 649, baseType: !815, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !816)
!816 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !805, file: !806, line: 657, baseType: !117, size: 64, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !805, file: !806, line: 658, baseType: !819, size: 32, offset: 256)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !820, line: 113, baseType: !821)
!820 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !820, line: 111, size: 32, elements: !822)
!822 = !{!823}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !821, file: !820, line: 112, baseType: !824, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !801, line: 168, baseType: !825)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !801, line: 166, size: 32, elements: !826)
!826 = !{!827}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !825, file: !801, line: 167, baseType: !828, size: 32)
!828 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !805, file: !806, line: 660, baseType: !7, size: 32, offset: 288)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !805, file: !806, line: 661, baseType: !7, size: 32, offset: 320)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !805, file: !806, line: 684, baseType: !828, size: 32, offset: 352)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !805, file: !806, line: 686, baseType: !828, size: 32, offset: 384)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !805, file: !806, line: 687, baseType: !828, size: 32, offset: 416)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !805, file: !806, line: 688, baseType: !828, size: 32, offset: 448)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !805, file: !806, line: 689, baseType: !7, size: 32, offset: 480)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !805, file: !806, line: 691, baseType: !837, size: 64, offset: 512)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !839)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !806, line: 691, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !805, file: !806, line: 692, baseType: !841, size: 832, offset: 576)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !806, line: 451, size: 832, elements: !842)
!842 = !{!843, !848, !856, !862, !863, !864, !865, !866, !867, !868}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !841, file: !806, line: 453, baseType: !844, size: 128)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !806, line: 325, size: 128, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !844, file: !806, line: 326, baseType: !802, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !844, file: !806, line: 327, baseType: !78, size: 32, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !841, file: !806, line: 454, baseType: !849, size: 192, align: 64, offset: 128)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !850, line: 24, size: 192, align: 64, elements: !851)
!850 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!851 = !{!852, !853, !855}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !849, file: !850, line: 25, baseType: !802, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !849, file: !850, line: 26, baseType: !854, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !849, file: !850, line: 27, baseType: !854, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !841, file: !806, line: 455, baseType: !857, size: 128, offset: 320)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !801, line: 178, size: 128, elements: !858)
!858 = !{!859, !861}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !857, file: !801, line: 179, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !857, file: !801, line: 179, baseType: !860, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !841, file: !806, line: 456, baseType: !7, size: 32, offset: 448)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !841, file: !806, line: 458, baseType: !63, size: 64, offset: 512)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !841, file: !806, line: 459, baseType: !63, size: 64, offset: 576)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !841, file: !806, line: 460, baseType: !63, size: 64, offset: 640)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !841, file: !806, line: 461, baseType: !63, size: 64, offset: 704)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !841, file: !806, line: 463, baseType: !63, size: 64, offset: 768)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !841, file: !806, line: 465, baseType: !869, offset: 832)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !806, line: 415, elements: !870)
!870 = !{}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !805, file: !806, line: 693, baseType: !872, size: 384, offset: 1408)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !806, line: 489, size: 384, elements: !873)
!873 = !{!874, !875, !876, !877, !878, !879, !880}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !872, file: !806, line: 490, baseType: !857, size: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !872, file: !806, line: 491, baseType: !802, size: 64, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !872, file: !806, line: 492, baseType: !802, size: 64, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !872, file: !806, line: 493, baseType: !7, size: 32, offset: 256)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !872, file: !806, line: 494, baseType: !48, size: 16, offset: 288)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !872, file: !806, line: 495, baseType: !48, size: 16, offset: 304)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !872, file: !806, line: 497, baseType: !881, size: 64, offset: 320)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !805, file: !806, line: 697, baseType: !883, size: 1792, offset: 1792)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !806, line: 507, size: 1792, elements: !884)
!884 = !{!885, !886, !887, !888, !889, !890, !891, !895, !896, !897, !898, !899, !900, !901, !984, !985}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !883, file: !806, line: 508, baseType: !849, size: 192, align: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !883, file: !806, line: 515, baseType: !63, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !883, file: !806, line: 516, baseType: !63, size: 64, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !883, file: !806, line: 517, baseType: !63, size: 64, offset: 320)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !883, file: !806, line: 518, baseType: !63, size: 64, offset: 384)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !883, file: !806, line: 519, baseType: !63, size: 64, offset: 448)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !883, file: !806, line: 526, baseType: !892, size: 64, offset: 512)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !40, line: 22, baseType: !893)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !42, line: 30, baseType: !894)
!894 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !883, file: !806, line: 527, baseType: !63, size: 64, offset: 576)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !883, file: !806, line: 528, baseType: !7, size: 32, offset: 640)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !883, file: !806, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !883, file: !806, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !883, file: !806, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !883, file: !806, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !883, file: !806, line: 563, baseType: !902, size: 512, offset: 704)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !903)
!903 = !{!904, !912, !913, !918, !980, !981, !982, !983}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !902, file: !14, line: 119, baseType: !905, size: 256)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !906, line: 9, size: 256, elements: !907)
!906 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!907 = !{!908, !909}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !905, file: !906, line: 10, baseType: !849, size: 192, align: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !905, file: !906, line: 11, baseType: !910, size: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !911, line: 29, baseType: !892)
!911 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !902, file: !14, line: 120, baseType: !910, size: 64, offset: 256)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !902, file: !14, line: 121, baseType: !914, size: 64, offset: 320)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!13, !917}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !902, file: !14, line: 122, baseType: !919, size: 64, offset: 384)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !921)
!921 = !{!922, !948, !949, !953, !963, !964, !975, !979}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !920, file: !14, line: 160, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !925)
!925 = !{!926, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !924, file: !14, line: 215, baseType: !927)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !928, line: 29, baseType: !929)
!928 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !928, line: 20, elements: !930)
!930 = !{!931}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !929, file: !928, line: 21, baseType: !932)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !933, line: 25, baseType: !934)
!933 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !933, line: 25, elements: !870)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !924, file: !14, line: 216, baseType: !7, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !924, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !924, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !924, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !924, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !924, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !924, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !924, file: !14, line: 233, baseType: !910, size: 64, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !924, file: !14, line: 234, baseType: !917, size: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !924, file: !14, line: 235, baseType: !910, size: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !924, file: !14, line: 236, baseType: !917, size: 64, offset: 320)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !924, file: !14, line: 237, baseType: !947, size: 4096, offset: 512)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !920, size: 4096, elements: !353)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !920, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !920, file: !14, line: 162, baseType: !950, size: 32, offset: 96)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !801, line: 27, baseType: !951)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !952, line: 96, baseType: !828)
!952 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!953 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !920, file: !14, line: 163, baseType: !954, size: 32, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !955, line: 276, baseType: !956)
!955 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !955, line: 276, size: 32, elements: !957)
!957 = !{!958}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !956, file: !955, line: 276, baseType: !959, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !955, line: 70, baseType: !960)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !955, line: 65, size: 32, elements: !961)
!961 = !{!962}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !960, file: !955, line: 66, baseType: !7, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !920, file: !14, line: 164, baseType: !917, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !920, file: !14, line: 165, baseType: !965, size: 128, offset: 256)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !906, line: 14, size: 128, elements: !966)
!966 = !{!967}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !965, file: !906, line: 15, baseType: !968, size: 128)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !850, line: 125, size: 128, elements: !969)
!969 = !{!970, !974}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !968, file: !850, line: 126, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !850, line: 31, size: 64, elements: !972)
!972 = !{!973}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !971, file: !850, line: 32, baseType: !854, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !968, file: !850, line: 127, baseType: !854, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !920, file: !14, line: 166, baseType: !976, size: 64, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!910}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !920, file: !14, line: 167, baseType: !910, size: 64, offset: 448)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !902, file: !14, line: 123, baseType: !39, size: 8, offset: 448)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !902, file: !14, line: 124, baseType: !39, size: 8, offset: 456)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !902, file: !14, line: 125, baseType: !39, size: 8, offset: 464)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !902, file: !14, line: 126, baseType: !39, size: 8, offset: 472)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !883, file: !806, line: 572, baseType: !902, size: 512, offset: 1216)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !883, file: !806, line: 580, baseType: !986, size: 64, offset: 1728)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !805, file: !806, line: 721, baseType: !7, size: 32, offset: 3584)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !805, file: !806, line: 722, baseType: !828, size: 32, offset: 3616)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !805, file: !806, line: 723, baseType: !990, size: 64, offset: 3648)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !992)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !993, line: 17, baseType: !994)
!993 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !993, line: 17, size: 64, elements: !995)
!995 = !{!996}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !994, file: !993, line: 17, baseType: !997, size: 64)
!997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 64, elements: !998)
!998 = !{!999}
!999 = !DISubrange(count: 1)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !805, file: !806, line: 724, baseType: !992, size: 64, offset: 3712)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !805, file: !806, line: 749, baseType: !1002, offset: 3776)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !806, line: 290, elements: !870)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !805, file: !806, line: 751, baseType: !857, size: 128, offset: 3776)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !805, file: !806, line: 757, baseType: !1005, size: 64, offset: 3904)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1007, line: 388, size: 7296, elements: !1008)
!1007 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1008 = !{!1009, !1218}
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !1007, line: 389, baseType: !1010, size: 7296)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1006, file: !1007, line: 389, size: 7296, elements: !1011)
!1011 = !{!1012, !1059, !1060, !1061, !1065, !1066, !1067, !1068, !1069, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1090, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1124, !1130, !1133, !1163, !1164, !1186, !1187, !1190, !1194, !1195, !1198, !1199, !1202, !1205, !1217}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1010, file: !1007, line: 390, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1007, line: 305, size: 1472, elements: !1015)
!1015 = !{!1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1031, !1032, !1037, !1038, !1041, !1045, !1046, !1049, !1050, !1057}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1014, file: !1007, line: 308, baseType: !802, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1014, file: !1007, line: 309, baseType: !802, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1014, file: !1007, line: 313, baseType: !1013, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1014, file: !1007, line: 313, baseType: !1013, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1014, file: !1007, line: 315, baseType: !849, size: 192, align: 64, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1014, file: !1007, line: 323, baseType: !802, size: 64, offset: 448)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1014, file: !1007, line: 327, baseType: !1005, size: 64, offset: 512)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1014, file: !1007, line: 333, baseType: !1024, size: 64, offset: 576)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1025, line: 284, baseType: !1026)
!1025 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1025, line: 284, size: 64, elements: !1027)
!1027 = !{!1028}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1026, file: !1025, line: 284, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1030, line: 19, baseType: !802)
!1030 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1014, file: !1007, line: 334, baseType: !802, size: 64, offset: 640)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1014, file: !1007, line: 343, baseType: !1033, size: 256, offset: 704)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1014, file: !1007, line: 340, size: 256, elements: !1034)
!1034 = !{!1035, !1036}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1033, file: !1007, line: 341, baseType: !849, size: 192, align: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1033, file: !1007, line: 342, baseType: !802, size: 64, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1014, file: !1007, line: 351, baseType: !857, size: 128, offset: 960)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1014, file: !1007, line: 353, baseType: !1039, size: 64, offset: 1088)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1007, line: 353, flags: DIFlagFwdDecl)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1014, file: !1007, line: 356, baseType: !1042, size: 64, offset: 1152)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1044)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1007, line: 356, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1014, file: !1007, line: 359, baseType: !802, size: 64, offset: 1216)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1014, file: !1007, line: 361, baseType: !1047, size: 64, offset: 1280)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !1025, line: 526, flags: DIFlagFwdDecl)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1014, file: !1007, line: 362, baseType: !117, size: 64, offset: 1344)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1014, file: !1007, line: 365, baseType: !1051, size: 64, offset: 1408)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1052, line: 13, baseType: !1053)
!1052 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !801, line: 175, baseType: !1054)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !801, line: 173, size: 64, elements: !1055)
!1055 = !{!1056}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1054, file: !801, line: 174, baseType: !892, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1014, file: !1007, line: 373, baseType: !1058, offset: 1472)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1007, line: 296, elements: !870)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1010, file: !1007, line: 391, baseType: !971, size: 64, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1010, file: !1007, line: 392, baseType: !63, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1010, file: !1007, line: 394, baseType: !1062, size: 64, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!802, !1047, !802, !802, !802, !802}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1010, file: !1007, line: 398, baseType: !802, size: 64, offset: 256)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1010, file: !1007, line: 399, baseType: !802, size: 64, offset: 320)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1010, file: !1007, line: 405, baseType: !802, size: 64, offset: 384)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1010, file: !1007, line: 406, baseType: !802, size: 64, offset: 448)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1010, file: !1007, line: 407, baseType: !1070, size: 64, offset: 512)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1025, line: 286, baseType: !1072)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1025, line: 286, size: 64, elements: !1073)
!1073 = !{!1074}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1072, file: !1025, line: 286, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1030, line: 18, baseType: !802)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1010, file: !1007, line: 416, baseType: !824, size: 32, offset: 576)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1010, file: !1007, line: 428, baseType: !824, size: 32, offset: 608)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1010, file: !1007, line: 437, baseType: !824, size: 32, offset: 640)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1010, file: !1007, line: 447, baseType: !824, size: 32, offset: 672)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1010, file: !1007, line: 450, baseType: !1051, size: 64, offset: 704)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1010, file: !1007, line: 452, baseType: !828, size: 32, offset: 768)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1010, file: !1007, line: 454, baseType: !1083, offset: 800)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !928, line: 83, baseType: !1084)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !928, line: 71, elements: !1085)
!1085 = !{!1086}
!1086 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !928, line: 72, baseType: !1087)
!1087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1084, file: !928, line: 72, elements: !1088)
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1087, file: !928, line: 73, baseType: !929)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1010, file: !1007, line: 457, baseType: !1091, size: 256, offset: 832)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1092, line: 35, size: 256, elements: !1093)
!1092 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1093 = !{!1094, !1095, !1096, !1097}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1091, file: !1092, line: 36, baseType: !1051, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1091, file: !1092, line: 42, baseType: !1051, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1091, file: !1092, line: 46, baseType: !927, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1091, file: !1092, line: 47, baseType: !857, size: 128, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1010, file: !1007, line: 459, baseType: !857, size: 128, offset: 1088)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1010, file: !1007, line: 466, baseType: !802, size: 64, offset: 1216)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1010, file: !1007, line: 467, baseType: !802, size: 64, offset: 1280)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1010, file: !1007, line: 469, baseType: !802, size: 64, offset: 1344)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1010, file: !1007, line: 470, baseType: !802, size: 64, offset: 1408)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1010, file: !1007, line: 471, baseType: !1053, size: 64, offset: 1472)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1010, file: !1007, line: 472, baseType: !802, size: 64, offset: 1536)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1010, file: !1007, line: 473, baseType: !802, size: 64, offset: 1600)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1010, file: !1007, line: 474, baseType: !802, size: 64, offset: 1664)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1010, file: !1007, line: 475, baseType: !802, size: 64, offset: 1728)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1010, file: !1007, line: 477, baseType: !1083, offset: 1792)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1010, file: !1007, line: 478, baseType: !802, size: 64, offset: 1792)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1010, file: !1007, line: 478, baseType: !802, size: 64, offset: 1856)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1010, file: !1007, line: 478, baseType: !802, size: 64, offset: 1920)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1010, file: !1007, line: 478, baseType: !802, size: 64, offset: 1984)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1010, file: !1007, line: 479, baseType: !802, size: 64, offset: 2048)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1010, file: !1007, line: 479, baseType: !802, size: 64, offset: 2112)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1010, file: !1007, line: 479, baseType: !802, size: 64, offset: 2176)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1010, file: !1007, line: 480, baseType: !802, size: 64, offset: 2240)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1010, file: !1007, line: 480, baseType: !802, size: 64, offset: 2304)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1010, file: !1007, line: 480, baseType: !802, size: 64, offset: 2368)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1010, file: !1007, line: 480, baseType: !802, size: 64, offset: 2432)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1010, file: !1007, line: 482, baseType: !1121, size: 2816, offset: 2496)
!1121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 2816, elements: !1122)
!1122 = !{!1123}
!1123 = !DISubrange(count: 44)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1010, file: !1007, line: 488, baseType: !1125, size: 256, offset: 5312)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1126, line: 60, size: 256, elements: !1127)
!1126 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1127 = !{!1128}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1125, file: !1126, line: 61, baseType: !1129, size: 256)
!1129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1051, size: 256, elements: !237)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1010, file: !1007, line: 490, baseType: !1131, size: 64, offset: 5568)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1007, line: 490, flags: DIFlagFwdDecl)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1010, file: !1007, line: 493, baseType: !1134, size: 896, offset: 5632)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1135, line: 53, baseType: !1136)
!1135 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1135, line: 13, size: 896, elements: !1137)
!1137 = !{!1138, !1139, !1140, !1141, !1144, !1145, !1152, !1153, !1157, !1158, !1159}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1136, file: !1135, line: 18, baseType: !63, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1136, file: !1135, line: 28, baseType: !1053, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1136, file: !1135, line: 31, baseType: !1091, size: 256, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1136, file: !1135, line: 32, baseType: !1142, size: 64, offset: 384)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1135, line: 32, flags: DIFlagFwdDecl)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1136, file: !1135, line: 37, baseType: !48, size: 16, offset: 448)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1136, file: !1135, line: 40, baseType: !1146, size: 192, offset: 512)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1147, line: 53, size: 192, elements: !1148)
!1147 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1148 = !{!1149, !1150, !1151}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1146, file: !1147, line: 54, baseType: !1051, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1146, file: !1147, line: 55, baseType: !1083, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1146, file: !1147, line: 59, baseType: !857, size: 128, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1136, file: !1135, line: 41, baseType: !117, size: 64, offset: 704)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1136, file: !1135, line: 42, baseType: !1154, size: 64, offset: 768)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1156)
!1156 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1135, line: 42, flags: DIFlagFwdDecl)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1136, file: !1135, line: 44, baseType: !824, size: 32, offset: 832)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1136, file: !1135, line: 50, baseType: !46, size: 16, offset: 864)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1136, file: !1135, line: 51, baseType: !1160, size: 16, offset: 880)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !40, line: 18, baseType: !1161)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !42, line: 23, baseType: !1162)
!1162 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1010, file: !1007, line: 495, baseType: !802, size: 64, offset: 6528)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1010, file: !1007, line: 497, baseType: !1165, size: 64, offset: 6592)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1007, line: 381, size: 384, elements: !1167)
!1167 = !{!1168, !1169, !1175}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1166, file: !1007, line: 382, baseType: !824, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1166, file: !1007, line: 383, baseType: !1170, size: 128, offset: 64)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1007, line: 376, size: 128, elements: !1171)
!1171 = !{!1172, !1173}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1170, file: !1007, line: 377, baseType: !804, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1170, file: !1007, line: 378, baseType: !1174, size: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1166, file: !1007, line: 384, baseType: !1176, size: 192, offset: 192)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1177, line: 26, size: 192, elements: !1178)
!1177 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1178 = !{!1179, !1180}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1176, file: !1177, line: 27, baseType: !7, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1176, file: !1177, line: 28, baseType: !1181, size: 128, offset: 64)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1182, line: 43, size: 128, elements: !1183)
!1182 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1183 = !{!1184, !1185}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1181, file: !1182, line: 44, baseType: !927)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1181, file: !1182, line: 45, baseType: !857, size: 128)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1010, file: !1007, line: 500, baseType: !1083, offset: 6656)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1010, file: !1007, line: 501, baseType: !1188, size: 64, offset: 6656)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1007, line: 387, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1010, file: !1007, line: 516, baseType: !1191, size: 64, offset: 6720)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1193, line: 18, flags: DIFlagFwdDecl)
!1193 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1010, file: !1007, line: 519, baseType: !1047, size: 64, offset: 6784)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1010, file: !1007, line: 521, baseType: !1196, size: 64, offset: 6848)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1007, line: 521, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1010, file: !1007, line: 545, baseType: !824, size: 32, offset: 6912)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1010, file: !1007, line: 548, baseType: !1200, size: 8, offset: 6944)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !801, line: 30, baseType: !1201)
!1201 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1010, file: !1007, line: 550, baseType: !1203, offset: 6952)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1204, line: 142, elements: !870)
!1204 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1010, file: !1007, line: 554, baseType: !1206, size: 256, offset: 6976)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1207, line: 102, size: 256, elements: !1208)
!1207 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1208 = !{!1209, !1210, !1211}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1206, file: !1207, line: 103, baseType: !1051, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1206, file: !1207, line: 104, baseType: !857, size: 128, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1206, file: !1207, line: 105, baseType: !1212, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1207, line: 21, baseType: !1213)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !1216}
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1010, file: !1007, line: 557, baseType: !78, size: 32, offset: 7232)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1006, file: !1007, line: 565, baseType: !1219, offset: 7296)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, elements: !1220)
!1220 = !{!1221}
!1221 = !DISubrange(count: -1)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !805, file: !806, line: 758, baseType: !1005, size: 64, offset: 3968)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !805, file: !806, line: 761, baseType: !1224, size: 320, offset: 4032)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1126, line: 34, size: 320, elements: !1225)
!1225 = !{!1226, !1227}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1224, file: !1126, line: 35, baseType: !63, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1224, file: !1126, line: 36, baseType: !1228, size: 256, offset: 64)
!1228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1013, size: 256, elements: !237)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !805, file: !806, line: 766, baseType: !828, size: 32, offset: 4352)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !805, file: !806, line: 767, baseType: !828, size: 32, offset: 4384)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !805, file: !806, line: 768, baseType: !828, size: 32, offset: 4416)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !805, file: !806, line: 770, baseType: !828, size: 32, offset: 4448)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !805, file: !806, line: 772, baseType: !802, size: 64, offset: 4480)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !805, file: !806, line: 775, baseType: !7, size: 32, offset: 4544)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !805, file: !806, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !805, file: !806, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !805, file: !806, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !805, file: !806, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !805, file: !806, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !805, file: !806, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !805, file: !806, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !805, file: !806, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !805, file: !806, line: 831, baseType: !802, size: 64, offset: 4672)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !805, file: !806, line: 833, baseType: !1245, size: 384, offset: 4736)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !1246)
!1246 = !{!1247, !1252}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1245, file: !19, line: 26, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!816, !1251}
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, scope: !1245, file: !19, line: 27, baseType: !1253, size: 320, offset: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1245, file: !19, line: 27, size: 320, elements: !1254)
!1254 = !{!1255, !1265, !1292}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1253, file: !19, line: 36, baseType: !1256, size: 320)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1253, file: !19, line: 29, size: 320, elements: !1257)
!1257 = !{!1258, !1260, !1261, !1262, !1263, !1264}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1256, file: !19, line: 30, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1256, file: !19, line: 31, baseType: !78, size: 32, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1256, file: !19, line: 32, baseType: !78, size: 32, offset: 96)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1256, file: !19, line: 33, baseType: !78, size: 32, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1256, file: !19, line: 34, baseType: !63, size: 64, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1256, file: !19, line: 35, baseType: !1259, size: 64, offset: 256)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1253, file: !19, line: 46, baseType: !1266, size: 192)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1253, file: !19, line: 38, size: 192, elements: !1267)
!1267 = !{!1268, !1269, !1270, !1291}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1266, file: !19, line: 39, baseType: !950, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1266, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1266, file: !19, line: 41, baseType: !1271, size: 64, offset: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1266, file: !19, line: 41, size: 64, elements: !1272)
!1272 = !{!1273, !1281}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1271, file: !19, line: 42, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1276, line: 7, size: 128, elements: !1277)
!1276 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1277 = !{!1278, !1280}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1275, file: !1276, line: 8, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !952, line: 93, baseType: !894)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1275, file: !1276, line: 9, baseType: !894, size: 64, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1271, file: !19, line: 43, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1284, line: 7, size: 64, elements: !1285)
!1284 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1285 = !{!1286, !1290}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1283, file: !1284, line: 8, baseType: !1287, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1284, line: 5, baseType: !1288)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !40, line: 20, baseType: !1289)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !42, line: 26, baseType: !828)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1283, file: !1284, line: 9, baseType: !1288, size: 32, offset: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1266, file: !19, line: 45, baseType: !63, size: 64, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1253, file: !19, line: 54, baseType: !1293, size: 256)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1253, file: !19, line: 48, size: 256, elements: !1294)
!1294 = !{!1295, !1298, !1299, !1300, !1301}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1293, file: !19, line: 49, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !19, line: 14, flags: DIFlagFwdDecl)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1293, file: !19, line: 50, baseType: !828, size: 32, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1293, file: !19, line: 51, baseType: !828, size: 32, offset: 96)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1293, file: !19, line: 52, baseType: !802, size: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1293, file: !19, line: 53, baseType: !802, size: 64, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !805, file: !806, line: 835, baseType: !1303, size: 32, offset: 5120)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !801, line: 22, baseType: !1304)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !952, line: 28, baseType: !828)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !805, file: !806, line: 836, baseType: !1303, size: 32, offset: 5152)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !805, file: !806, line: 840, baseType: !802, size: 64, offset: 5184)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !805, file: !806, line: 849, baseType: !804, size: 64, offset: 5248)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !805, file: !806, line: 852, baseType: !804, size: 64, offset: 5312)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !805, file: !806, line: 857, baseType: !857, size: 128, offset: 5376)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !805, file: !806, line: 858, baseType: !857, size: 128, offset: 5504)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !805, file: !806, line: 859, baseType: !804, size: 64, offset: 5632)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !805, file: !806, line: 867, baseType: !857, size: 128, offset: 5696)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !805, file: !806, line: 868, baseType: !857, size: 128, offset: 5824)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !805, file: !806, line: 871, baseType: !1315, size: 64, offset: 5952)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1317, line: 59, size: 768, elements: !1318)
!1317 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!1318 = !{!1319, !1320, !1321, !1322, !1333, !1334, !1341, !1350}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1316, file: !1317, line: 61, baseType: !819, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1316, file: !1317, line: 62, baseType: !7, size: 32, offset: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1316, file: !1317, line: 63, baseType: !1083, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1316, file: !1317, line: 65, baseType: !1323, size: 256, offset: 64)
!1323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1324, size: 256, elements: !237)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !801, line: 182, size: 64, elements: !1325)
!1325 = !{!1326}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1324, file: !801, line: 183, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !801, line: 186, size: 128, elements: !1329)
!1329 = !{!1330, !1331}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1328, file: !801, line: 187, baseType: !1327, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1328, file: !801, line: 187, baseType: !1332, size: 64, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1316, file: !1317, line: 66, baseType: !1324, size: 64, offset: 320)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1316, file: !1317, line: 68, baseType: !1335, size: 128, offset: 384)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1336, line: 40, baseType: !1337)
!1336 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1336, line: 36, size: 128, elements: !1338)
!1338 = !{!1339, !1340}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1337, file: !1336, line: 37, baseType: !1083)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1337, file: !1336, line: 38, baseType: !857, size: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1316, file: !1317, line: 69, baseType: !1342, size: 128, align: 64, offset: 512)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !801, line: 216, size: 128, align: 64, elements: !1343)
!1343 = !{!1344, !1346}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1342, file: !801, line: 217, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1342, file: !801, line: 218, baseType: !1347, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !1345}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1316, file: !1317, line: 70, baseType: !1351, size: 128, offset: 640)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1352, size: 128, elements: !998)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1317, line: 54, size: 128, elements: !1353)
!1353 = !{!1354, !1355}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1352, file: !1317, line: 55, baseType: !828, size: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1352, file: !1317, line: 56, baseType: !1356, size: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1317, line: 56, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !805, file: !806, line: 872, baseType: !1359, size: 512, offset: 6016)
!1359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1328, size: 512, elements: !237)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !805, file: !806, line: 873, baseType: !857, size: 128, offset: 6528)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !805, file: !806, line: 874, baseType: !857, size: 128, offset: 6656)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !805, file: !806, line: 876, baseType: !1363, size: 64, offset: 6784)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !805, file: !806, line: 879, baseType: !1365, size: 64, offset: 6848)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !805, file: !806, line: 882, baseType: !1365, size: 64, offset: 6912)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !805, file: !806, line: 884, baseType: !63, size: 64, offset: 6976)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !805, file: !806, line: 885, baseType: !63, size: 64, offset: 7040)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !805, file: !806, line: 890, baseType: !63, size: 64, offset: 7104)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !805, file: !806, line: 891, baseType: !1371, size: 128, offset: 7168)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !806, line: 242, size: 128, elements: !1372)
!1372 = !{!1373, !1374, !1375}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1371, file: !806, line: 244, baseType: !63, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1371, file: !806, line: 245, baseType: !63, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1371, file: !806, line: 246, baseType: !927, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !805, file: !806, line: 900, baseType: !802, size: 64, offset: 7296)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !805, file: !806, line: 901, baseType: !802, size: 64, offset: 7360)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !805, file: !806, line: 904, baseType: !63, size: 64, offset: 7424)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !805, file: !806, line: 907, baseType: !63, size: 64, offset: 7488)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !805, file: !806, line: 910, baseType: !802, size: 64, offset: 7552)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !805, file: !806, line: 911, baseType: !802, size: 64, offset: 7616)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !805, file: !806, line: 914, baseType: !1383, size: 640, offset: 7680)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1384, line: 123, size: 640, elements: !1385)
!1384 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1385 = !{!1386, !1392, !1393}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1383, file: !1384, line: 124, baseType: !1387, size: 576)
!1387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1388, size: 576, elements: !60)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1384, line: 108, size: 192, elements: !1389)
!1389 = !{!1390, !1391}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1388, file: !1384, line: 109, baseType: !63, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1388, file: !1384, line: 110, baseType: !965, size: 128, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1383, file: !1384, line: 125, baseType: !7, size: 32, offset: 576)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1383, file: !1384, line: 126, baseType: !7, size: 32, offset: 608)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !805, file: !806, line: 917, baseType: !1395, size: 192, offset: 8320)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1384, line: 134, size: 192, elements: !1396)
!1396 = !{!1397, !1398}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1395, file: !1384, line: 135, baseType: !1342, size: 128, align: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1395, file: !1384, line: 136, baseType: !7, size: 32, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !805, file: !806, line: 923, baseType: !1400, size: 64, offset: 8512)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1402)
!1402 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !806, line: 923, flags: DIFlagFwdDecl)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !805, file: !806, line: 926, baseType: !1400, size: 64, offset: 8576)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !805, file: !806, line: 929, baseType: !1400, size: 64, offset: 8640)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !805, file: !806, line: 933, baseType: !1406, size: 64, offset: 8704)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !806, line: 933, flags: DIFlagFwdDecl)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !805, file: !806, line: 943, baseType: !1409, size: 128, offset: 8768)
!1409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 128, elements: !1410)
!1410 = !{!1411}
!1411 = !DISubrange(count: 16)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !805, file: !806, line: 945, baseType: !1413, size: 64, offset: 8896)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !806, line: 49, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !805, file: !806, line: 956, baseType: !1416, size: 64, offset: 8960)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !806, line: 45, flags: DIFlagFwdDecl)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !805, file: !806, line: 959, baseType: !1419, size: 64, offset: 9024)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !806, line: 959, flags: DIFlagFwdDecl)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !805, file: !806, line: 962, baseType: !1422, size: 64, offset: 9088)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !806, line: 66, flags: DIFlagFwdDecl)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !805, file: !806, line: 966, baseType: !1425, size: 64, offset: 9152)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !806, line: 50, flags: DIFlagFwdDecl)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !805, file: !806, line: 969, baseType: !1428, size: 64, offset: 9216)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1384, line: 223, flags: DIFlagFwdDecl)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !805, file: !806, line: 970, baseType: !1431, size: 64, offset: 9280)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !806, line: 62, flags: DIFlagFwdDecl)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !805, file: !806, line: 971, baseType: !1434, size: 64, offset: 9344)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1435, line: 25, baseType: !1436)
!1435 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1435, line: 23, size: 64, elements: !1437)
!1437 = !{!1438}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1436, file: !1435, line: 24, baseType: !997, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !805, file: !806, line: 972, baseType: !1434, size: 64, offset: 9408)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !805, file: !806, line: 974, baseType: !1434, size: 64, offset: 9472)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !805, file: !806, line: 975, baseType: !1442, size: 192, offset: 9536)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1443, line: 30, size: 192, elements: !1444)
!1443 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1444 = !{!1445, !1446}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1442, file: !1443, line: 31, baseType: !857, size: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1442, file: !1443, line: 32, baseType: !1434, size: 64, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !805, file: !806, line: 976, baseType: !802, size: 64, offset: 9728)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !805, file: !806, line: 977, baseType: !1449, size: 64, offset: 9792)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !801, line: 55, baseType: !1450)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !952, line: 72, baseType: !1451)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !952, line: 16, baseType: !802)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !805, file: !806, line: 978, baseType: !7, size: 32, offset: 9856)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !805, file: !806, line: 980, baseType: !1345, size: 64, offset: 9920)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !805, file: !806, line: 989, baseType: !1455, size: 128, offset: 9984)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1456, line: 35, size: 128, elements: !1457)
!1456 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1457 = !{!1458, !1459, !1460}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1455, file: !1456, line: 36, baseType: !828, size: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1455, file: !1456, line: 37, baseType: !824, size: 32, offset: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1455, file: !1456, line: 38, baseType: !1461, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1456, line: 23, flags: DIFlagFwdDecl)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !805, file: !806, line: 992, baseType: !63, size: 64, offset: 10112)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !805, file: !806, line: 993, baseType: !63, size: 64, offset: 10176)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !805, file: !806, line: 996, baseType: !1083, offset: 10240)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !805, file: !806, line: 999, baseType: !927, offset: 10240)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !805, file: !806, line: 1001, baseType: !1468, size: 64, offset: 10240)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !806, line: 636, size: 64, elements: !1469)
!1469 = !{!1470}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1468, file: !806, line: 637, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !805, file: !806, line: 1005, baseType: !968, size: 128, offset: 10304)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !805, file: !806, line: 1007, baseType: !804, size: 64, offset: 10432)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !805, file: !806, line: 1009, baseType: !1475, size: 64, offset: 10496)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !806, line: 1009, flags: DIFlagFwdDecl)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !805, file: !806, line: 1043, baseType: !117, size: 64, offset: 10560)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !805, file: !806, line: 1046, baseType: !1479, size: 64, offset: 10624)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !806, line: 41, flags: DIFlagFwdDecl)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !805, file: !806, line: 1050, baseType: !1482, size: 64, offset: 10688)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !806, line: 42, flags: DIFlagFwdDecl)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !805, file: !806, line: 1054, baseType: !1485, size: 64, offset: 10752)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !806, line: 55, flags: DIFlagFwdDecl)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !805, file: !806, line: 1056, baseType: !1488, size: 64, offset: 10816)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !806, line: 40, flags: DIFlagFwdDecl)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !805, file: !806, line: 1058, baseType: !1491, size: 64, offset: 10880)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !806, line: 47, flags: DIFlagFwdDecl)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !805, file: !806, line: 1061, baseType: !1494, size: 64, offset: 10944)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !806, line: 43, flags: DIFlagFwdDecl)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !805, file: !806, line: 1064, baseType: !802, size: 64, offset: 11008)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !805, file: !806, line: 1065, baseType: !1498, size: 64, offset: 11072)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1443, line: 14, baseType: !1500)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1443, line: 12, size: 384, elements: !1501)
!1501 = !{!1502}
!1502 = !DIDerivedType(tag: DW_TAG_member, scope: !1500, file: !1443, line: 13, baseType: !1503, size: 384)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1500, file: !1443, line: 13, size: 384, elements: !1504)
!1504 = !{!1505, !1506, !1507, !1508}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1503, file: !1443, line: 13, baseType: !828, size: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1503, file: !1443, line: 13, baseType: !828, size: 32, offset: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1503, file: !1443, line: 13, baseType: !828, size: 32, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1503, file: !1443, line: 13, baseType: !1509, size: 256, offset: 128)
!1509 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1510, line: 32, size: 256, elements: !1511)
!1510 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1511 = !{!1512, !1518, !1531, !1537, !1547, !1567, !1572}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1509, file: !1510, line: 37, baseType: !1513, size: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !1510, line: 34, size: 64, elements: !1514)
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1513, file: !1510, line: 35, baseType: !1304, size: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1513, file: !1510, line: 36, baseType: !1517, size: 32, offset: 32)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !952, line: 49, baseType: !7)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1509, file: !1510, line: 45, baseType: !1519, size: 192)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !1510, line: 40, size: 192, elements: !1520)
!1520 = !{!1521, !1523, !1524, !1530}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1519, file: !1510, line: 41, baseType: !1522, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !952, line: 95, baseType: !828)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1519, file: !1510, line: 42, baseType: !828, size: 32, offset: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1519, file: !1510, line: 43, baseType: !1525, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1510, line: 11, baseType: !1526)
!1526 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1510, line: 8, size: 64, elements: !1527)
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1526, file: !1510, line: 9, baseType: !828, size: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1526, file: !1510, line: 10, baseType: !117, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1519, file: !1510, line: 44, baseType: !828, size: 32, offset: 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1509, file: !1510, line: 52, baseType: !1532, size: 128)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !1510, line: 48, size: 128, elements: !1533)
!1533 = !{!1534, !1535, !1536}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1532, file: !1510, line: 49, baseType: !1304, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1532, file: !1510, line: 50, baseType: !1517, size: 32, offset: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1532, file: !1510, line: 51, baseType: !1525, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1509, file: !1510, line: 61, baseType: !1538, size: 256)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !1510, line: 55, size: 256, elements: !1539)
!1539 = !{!1540, !1541, !1542, !1543, !1546}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1538, file: !1510, line: 56, baseType: !1304, size: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1538, file: !1510, line: 57, baseType: !1517, size: 32, offset: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1538, file: !1510, line: 58, baseType: !828, size: 32, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1538, file: !1510, line: 59, baseType: !1544, size: 64, offset: 128)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !952, line: 94, baseType: !1545)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !952, line: 15, baseType: !816)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1538, file: !1510, line: 60, baseType: !1544, size: 64, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1509, file: !1510, line: 95, baseType: !1548, size: 256)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !1510, line: 64, size: 256, elements: !1549)
!1549 = !{!1550, !1551}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1548, file: !1510, line: 65, baseType: !117, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !1510, line: 77, baseType: !1552, size: 192, offset: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1548, file: !1510, line: 77, size: 192, elements: !1553)
!1553 = !{!1554, !1555, !1562}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1552, file: !1510, line: 82, baseType: !1162, size: 16)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1552, file: !1510, line: 88, baseType: !1556, size: 192)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1552, file: !1510, line: 84, size: 192, elements: !1557)
!1557 = !{!1558, !1560, !1561}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1556, file: !1510, line: 85, baseType: !1559, size: 64)
!1559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 64, elements: !353)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1556, file: !1510, line: 86, baseType: !117, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1556, file: !1510, line: 87, baseType: !117, size: 64, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1552, file: !1510, line: 93, baseType: !1563, size: 96)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1552, file: !1510, line: 90, size: 96, elements: !1564)
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1563, file: !1510, line: 91, baseType: !1559, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1563, file: !1510, line: 92, baseType: !79, size: 32, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1509, file: !1510, line: 101, baseType: !1568, size: 128)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !1510, line: 98, size: 128, elements: !1569)
!1569 = !{!1570, !1571}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1568, file: !1510, line: 99, baseType: !816, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1568, file: !1510, line: 100, baseType: !828, size: 32, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1509, file: !1510, line: 108, baseType: !1573, size: 128)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !1510, line: 104, size: 128, elements: !1574)
!1574 = !{!1575, !1576, !1577}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1573, file: !1510, line: 105, baseType: !117, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1573, file: !1510, line: 106, baseType: !828, size: 32, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1573, file: !1510, line: 107, baseType: !7, size: 32, offset: 96)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !805, file: !806, line: 1067, baseType: !1579, offset: 11136)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1580, line: 12, elements: !870)
!1580 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !805, file: !806, line: 1099, baseType: !1582, size: 64, offset: 11136)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !806, line: 56, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !805, file: !806, line: 1103, baseType: !857, size: 128, offset: 11200)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !805, file: !806, line: 1104, baseType: !1586, size: 64, offset: 11328)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !806, line: 46, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !805, file: !806, line: 1105, baseType: !1146, size: 192, offset: 11392)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !805, file: !806, line: 1106, baseType: !7, size: 32, offset: 11584)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !805, file: !806, line: 1109, baseType: !1591, size: 128, offset: 11648)
!1591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1592, size: 128, elements: !479)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !806, line: 51, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !805, file: !806, line: 1110, baseType: !1146, size: 192, offset: 11776)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !805, file: !806, line: 1111, baseType: !857, size: 128, offset: 11968)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !805, file: !806, line: 1173, baseType: !1597, size: 64, offset: 12096)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1599, line: 62, size: 256, align: 256, elements: !1600)
!1599 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1600 = !{!1601, !1602, !1603, !1608}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1598, file: !1599, line: 75, baseType: !79, size: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1598, file: !1599, line: 90, baseType: !79, size: 32, offset: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1598, file: !1599, line: 124, baseType: !1604, size: 64, offset: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1598, file: !1599, line: 109, size: 64, elements: !1605)
!1605 = !{!1606, !1607}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1604, file: !1599, line: 110, baseType: !64, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1604, file: !1599, line: 112, baseType: !64, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1598, file: !1599, line: 144, baseType: !79, size: 32, offset: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !805, file: !806, line: 1174, baseType: !78, size: 32, offset: 12160)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !805, file: !806, line: 1179, baseType: !802, size: 64, offset: 12224)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !805, file: !806, line: 1182, baseType: !1612, size: 128, offset: 12288)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1126, line: 76, size: 128, elements: !1613)
!1613 = !{!1614, !1619, !1620}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1612, file: !1126, line: 85, baseType: !1615, size: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1616, line: 7, size: 64, elements: !1617)
!1616 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1617 = !{!1618}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1615, file: !1616, line: 12, baseType: !994, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1612, file: !1126, line: 88, baseType: !1200, size: 8, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1612, file: !1126, line: 95, baseType: !1200, size: 8, offset: 72)
!1621 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !806, line: 1184, baseType: !1622, size: 128, offset: 12416)
!1622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !806, line: 1184, size: 128, elements: !1623)
!1623 = !{!1624, !1625}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1622, file: !806, line: 1185, baseType: !819, size: 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1622, file: !806, line: 1186, baseType: !1342, size: 128, align: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !805, file: !806, line: 1190, baseType: !1627, size: 64, offset: 12544)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !806, line: 53, flags: DIFlagFwdDecl)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !805, file: !806, line: 1192, baseType: !1630, size: 128, offset: 12608)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1126, line: 64, size: 128, elements: !1631)
!1631 = !{!1632, !1725, !1726}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1630, file: !1126, line: 65, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1007, line: 68, size: 512, align: 128, elements: !1635)
!1635 = !{!1636, !1637, !1717, !1724}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1634, file: !1007, line: 69, baseType: !802, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1634, file: !1007, line: 77, baseType: !1638, size: 320, offset: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1634, file: !1007, line: 77, size: 320, elements: !1639)
!1639 = !{!1640, !1649, !1654, !1682, !1690, !1696, !1709, !1716}
!1640 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !1007, line: 78, baseType: !1641, size: 320)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1638, file: !1007, line: 78, size: 320, elements: !1642)
!1642 = !{!1643, !1644, !1647, !1648}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1641, file: !1007, line: 84, baseType: !857, size: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1641, file: !1007, line: 86, baseType: !1645, size: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !1007, line: 26, flags: DIFlagFwdDecl)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1641, file: !1007, line: 87, baseType: !802, size: 64, offset: 192)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1641, file: !1007, line: 94, baseType: !802, size: 64, offset: 256)
!1649 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !1007, line: 96, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1638, file: !1007, line: 96, size: 64, elements: !1651)
!1651 = !{!1652}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1650, file: !1007, line: 101, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !801, line: 143, baseType: !63)
!1654 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !1007, line: 103, baseType: !1655, size: 320)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1638, file: !1007, line: 103, size: 320, elements: !1656)
!1656 = !{!1657, !1667, !1670, !1671}
!1657 = !DIDerivedType(tag: DW_TAG_member, scope: !1655, file: !1007, line: 104, baseType: !1658, size: 128)
!1658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1655, file: !1007, line: 104, size: 128, elements: !1659)
!1659 = !{!1660, !1661}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1658, file: !1007, line: 105, baseType: !857, size: 128)
!1661 = !DIDerivedType(tag: DW_TAG_member, scope: !1658, file: !1007, line: 106, baseType: !1662, size: 128)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1658, file: !1007, line: 106, size: 128, elements: !1663)
!1663 = !{!1664, !1665, !1666}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1662, file: !1007, line: 107, baseType: !1633, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1662, file: !1007, line: 109, baseType: !828, size: 32, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1662, file: !1007, line: 110, baseType: !828, size: 32, offset: 96)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1655, file: !1007, line: 117, baseType: !1668, size: 64, offset: 128)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1007, line: 117, flags: DIFlagFwdDecl)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1655, file: !1007, line: 119, baseType: !117, size: 64, offset: 192)
!1671 = !DIDerivedType(tag: DW_TAG_member, scope: !1655, file: !1007, line: 120, baseType: !1672, size: 64, offset: 256)
!1672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1655, file: !1007, line: 120, size: 64, elements: !1673)
!1673 = !{!1674, !1675, !1676}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1672, file: !1007, line: 121, baseType: !117, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1672, file: !1007, line: 122, baseType: !802, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1672, file: !1007, line: 123, baseType: !1677, size: 32)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1672, file: !1007, line: 123, size: 32, elements: !1678)
!1678 = !{!1679, !1680, !1681}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1677, file: !1007, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1677, file: !1007, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1677, file: !1007, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !1007, line: 130, baseType: !1683, size: 192)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1638, file: !1007, line: 130, size: 192, elements: !1684)
!1684 = !{!1685, !1686, !1687, !1688, !1689}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1683, file: !1007, line: 131, baseType: !802, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1683, file: !1007, line: 134, baseType: !43, size: 8, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1683, file: !1007, line: 135, baseType: !43, size: 8, offset: 72)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1683, file: !1007, line: 136, baseType: !824, size: 32, offset: 96)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1683, file: !1007, line: 137, baseType: !7, size: 32, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !1007, line: 139, baseType: !1691, size: 256)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1638, file: !1007, line: 139, size: 256, elements: !1692)
!1692 = !{!1693, !1694, !1695}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1691, file: !1007, line: 140, baseType: !802, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1691, file: !1007, line: 141, baseType: !824, size: 32, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1691, file: !1007, line: 143, baseType: !857, size: 128, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !1007, line: 145, baseType: !1697, size: 256)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1638, file: !1007, line: 145, size: 256, elements: !1698)
!1698 = !{!1699, !1700, !1702, !1703, !1708}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1697, file: !1007, line: 146, baseType: !802, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1697, file: !1007, line: 147, baseType: !1701, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1025, line: 509, baseType: !1633)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1697, file: !1007, line: 148, baseType: !802, size: 64, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_member, scope: !1697, file: !1007, line: 149, baseType: !1704, size: 64, offset: 192)
!1704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1697, file: !1007, line: 149, size: 64, elements: !1705)
!1705 = !{!1706, !1707}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1704, file: !1007, line: 150, baseType: !1005, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1704, file: !1007, line: 151, baseType: !824, size: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1697, file: !1007, line: 156, baseType: !1083, offset: 256)
!1709 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !1007, line: 159, baseType: !1710, size: 128)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1638, file: !1007, line: 159, size: 128, elements: !1711)
!1711 = !{!1712, !1715}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1710, file: !1007, line: 161, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1007, line: 161, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1710, file: !1007, line: 162, baseType: !117, size: 64, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1638, file: !1007, line: 176, baseType: !1342, size: 128, align: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, scope: !1634, file: !1007, line: 179, baseType: !1718, size: 32, offset: 384)
!1718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1634, file: !1007, line: 179, size: 32, elements: !1719)
!1719 = !{!1720, !1721, !1722, !1723}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1718, file: !1007, line: 184, baseType: !824, size: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1718, file: !1007, line: 192, baseType: !7, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1718, file: !1007, line: 194, baseType: !7, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1718, file: !1007, line: 195, baseType: !828, size: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1634, file: !1007, line: 199, baseType: !824, size: 32, offset: 416)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1630, file: !1126, line: 67, baseType: !79, size: 32, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1630, file: !1126, line: 68, baseType: !79, size: 32, offset: 96)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !805, file: !806, line: 1206, baseType: !828, size: 32, offset: 12736)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !805, file: !806, line: 1207, baseType: !828, size: 32, offset: 12768)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !805, file: !806, line: 1209, baseType: !802, size: 64, offset: 12800)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !805, file: !806, line: 1219, baseType: !63, size: 64, offset: 12864)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !805, file: !806, line: 1220, baseType: !63, size: 64, offset: 12928)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !805, file: !806, line: 1317, baseType: !828, size: 32, offset: 12992)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !805, file: !806, line: 1319, baseType: !804, size: 64, offset: 13056)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !805, file: !806, line: 1322, baseType: !1735, size: 64, offset: 13120)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !806, line: 1322, flags: DIFlagFwdDecl)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !805, file: !806, line: 1326, baseType: !819, size: 32, offset: 13184)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !805, file: !806, line: 1342, baseType: !117, size: 64, offset: 13248)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !805, file: !806, line: 1343, baseType: !64, size: 64, offset: 13312)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !805, file: !806, line: 1344, baseType: !63, size: 64, offset: 13376)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !805, file: !806, line: 1345, baseType: !64, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !805, file: !806, line: 1346, baseType: !64, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !805, file: !806, line: 1347, baseType: !64, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !805, file: !806, line: 1348, baseType: !1342, size: 128, align: 64, offset: 13504)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !805, file: !806, line: 1358, baseType: !1746, size: 34816, offset: 13824)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1747, line: 485, size: 34816, elements: !1748)
!1747 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1748 = !{!1749, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1778, !1779, !1780, !1781, !1782, !1783, !1786, !1787, !1788}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1746, file: !1747, line: 487, baseType: !1750, size: 192)
!1750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1751, size: 192, elements: !60)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1752, line: 16, size: 64, elements: !1753)
!1752 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1753 = !{!1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1751, file: !1752, line: 17, baseType: !46, size: 16)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1751, file: !1752, line: 18, baseType: !46, size: 16, offset: 16)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1751, file: !1752, line: 19, baseType: !46, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1751, file: !1752, line: 19, baseType: !46, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1751, file: !1752, line: 19, baseType: !46, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1751, file: !1752, line: 19, baseType: !46, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1751, file: !1752, line: 19, baseType: !46, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1751, file: !1752, line: 20, baseType: !46, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1751, file: !1752, line: 20, baseType: !46, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1751, file: !1752, line: 20, baseType: !46, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1751, file: !1752, line: 20, baseType: !46, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1751, file: !1752, line: 20, baseType: !46, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1751, file: !1752, line: 20, baseType: !46, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1746, file: !1747, line: 491, baseType: !802, size: 64, offset: 192)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1746, file: !1747, line: 495, baseType: !48, size: 16, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1746, file: !1747, line: 496, baseType: !48, size: 16, offset: 272)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1746, file: !1747, line: 497, baseType: !48, size: 16, offset: 288)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1746, file: !1747, line: 498, baseType: !48, size: 16, offset: 304)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1746, file: !1747, line: 502, baseType: !802, size: 64, offset: 320)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1746, file: !1747, line: 503, baseType: !802, size: 64, offset: 384)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1746, file: !1747, line: 514, baseType: !1775, size: 256, offset: 448)
!1775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1776, size: 256, elements: !237)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1747, line: 483, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1746, file: !1747, line: 516, baseType: !802, size: 64, offset: 704)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1746, file: !1747, line: 518, baseType: !802, size: 64, offset: 768)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1746, file: !1747, line: 520, baseType: !802, size: 64, offset: 832)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1746, file: !1747, line: 521, baseType: !802, size: 64, offset: 896)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1746, file: !1747, line: 522, baseType: !802, size: 64, offset: 960)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1746, file: !1747, line: 528, baseType: !1784, size: 64, offset: 1024)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1747, line: 10, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1746, file: !1747, line: 535, baseType: !802, size: 64, offset: 1088)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1746, file: !1747, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1746, file: !1747, line: 540, baseType: !1789, size: 33280, offset: 1536)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1790, line: 317, size: 33280, elements: !1791)
!1790 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1791 = !{!1792, !1793, !1794}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1789, file: !1790, line: 330, baseType: !7, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1789, file: !1790, line: 337, baseType: !802, size: 64, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1789, file: !1790, line: 348, baseType: !1795, size: 32768, offset: 512)
!1795 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1790, line: 304, size: 32768, elements: !1796)
!1796 = !{!1797, !1810, !1851, !1901, !1918}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1795, file: !1790, line: 305, baseType: !1798, size: 896)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1790, line: 12, size: 896, elements: !1799)
!1799 = !{!1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1809}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1798, file: !1790, line: 13, baseType: !78, size: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1798, file: !1790, line: 14, baseType: !78, size: 32, offset: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1798, file: !1790, line: 15, baseType: !78, size: 32, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1798, file: !1790, line: 16, baseType: !78, size: 32, offset: 96)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1798, file: !1790, line: 17, baseType: !78, size: 32, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1798, file: !1790, line: 18, baseType: !78, size: 32, offset: 160)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1798, file: !1790, line: 19, baseType: !78, size: 32, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1798, file: !1790, line: 22, baseType: !1808, size: 640, offset: 224)
!1808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 640, elements: !258)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1798, file: !1790, line: 25, baseType: !78, size: 32, offset: 864)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1795, file: !1790, line: 306, baseType: !1811, size: 4096, align: 128)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1790, line: 34, size: 4096, align: 128, elements: !1812)
!1812 = !{!1813, !1814, !1815, !1816, !1817, !1832, !1833, !1834, !1838, !1842, !1846}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1811, file: !1790, line: 35, baseType: !46, size: 16)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1811, file: !1790, line: 36, baseType: !46, size: 16, offset: 16)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1811, file: !1790, line: 37, baseType: !46, size: 16, offset: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1811, file: !1790, line: 38, baseType: !46, size: 16, offset: 48)
!1817 = !DIDerivedType(tag: DW_TAG_member, scope: !1811, file: !1790, line: 39, baseType: !1818, size: 128, offset: 64)
!1818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1811, file: !1790, line: 39, size: 128, elements: !1819)
!1819 = !{!1820, !1825}
!1820 = !DIDerivedType(tag: DW_TAG_member, scope: !1818, file: !1790, line: 40, baseType: !1821, size: 128)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1818, file: !1790, line: 40, size: 128, elements: !1822)
!1822 = !{!1823, !1824}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1821, file: !1790, line: 41, baseType: !63, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1821, file: !1790, line: 42, baseType: !63, size: 64, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, scope: !1818, file: !1790, line: 44, baseType: !1826, size: 128)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1818, file: !1790, line: 44, size: 128, elements: !1827)
!1827 = !{!1828, !1829, !1830, !1831}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1826, file: !1790, line: 45, baseType: !78, size: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1826, file: !1790, line: 46, baseType: !78, size: 32, offset: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1826, file: !1790, line: 47, baseType: !78, size: 32, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1826, file: !1790, line: 48, baseType: !78, size: 32, offset: 96)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1811, file: !1790, line: 51, baseType: !78, size: 32, offset: 192)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1811, file: !1790, line: 52, baseType: !78, size: 32, offset: 224)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1811, file: !1790, line: 55, baseType: !1835, size: 1024, offset: 256)
!1835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 1024, elements: !1836)
!1836 = !{!1837}
!1837 = !DISubrange(count: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1811, file: !1790, line: 58, baseType: !1839, size: 2048, offset: 1280)
!1839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 2048, elements: !1840)
!1840 = !{!1841}
!1841 = !DISubrange(count: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1811, file: !1790, line: 60, baseType: !1843, size: 384, offset: 3328)
!1843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 384, elements: !1844)
!1844 = !{!1845}
!1845 = !DISubrange(count: 12)
!1846 = !DIDerivedType(tag: DW_TAG_member, scope: !1811, file: !1790, line: 62, baseType: !1847, size: 384, offset: 3712)
!1847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1811, file: !1790, line: 62, size: 384, elements: !1848)
!1848 = !{!1849, !1850}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1847, file: !1790, line: 63, baseType: !1843, size: 384)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1847, file: !1790, line: 64, baseType: !1843, size: 384)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1795, file: !1790, line: 307, baseType: !1852, size: 1088)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1790, line: 79, size: 1088, elements: !1853)
!1853 = !{!1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1900}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1852, file: !1790, line: 80, baseType: !78, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1852, file: !1790, line: 81, baseType: !78, size: 32, offset: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1852, file: !1790, line: 82, baseType: !78, size: 32, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1852, file: !1790, line: 83, baseType: !78, size: 32, offset: 96)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1852, file: !1790, line: 84, baseType: !78, size: 32, offset: 128)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1852, file: !1790, line: 85, baseType: !78, size: 32, offset: 160)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1852, file: !1790, line: 86, baseType: !78, size: 32, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1852, file: !1790, line: 88, baseType: !1808, size: 640, offset: 224)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1852, file: !1790, line: 89, baseType: !39, size: 8, offset: 864)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1852, file: !1790, line: 90, baseType: !39, size: 8, offset: 872)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1852, file: !1790, line: 91, baseType: !39, size: 8, offset: 880)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1852, file: !1790, line: 92, baseType: !39, size: 8, offset: 888)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1852, file: !1790, line: 93, baseType: !39, size: 8, offset: 896)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1852, file: !1790, line: 94, baseType: !39, size: 8, offset: 904)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1852, file: !1790, line: 95, baseType: !1869, size: 64, offset: 960)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1871, line: 11, size: 128, elements: !1872)
!1871 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1872 = !{!1873, !1874}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1870, file: !1871, line: 12, baseType: !816, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1870, file: !1871, line: 13, baseType: !1875, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1877, line: 56, size: 1344, elements: !1878)
!1877 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1878 = !{!1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1876, file: !1877, line: 61, baseType: !802, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1876, file: !1877, line: 62, baseType: !802, size: 64, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1876, file: !1877, line: 63, baseType: !802, size: 64, offset: 128)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1876, file: !1877, line: 64, baseType: !802, size: 64, offset: 192)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1876, file: !1877, line: 65, baseType: !802, size: 64, offset: 256)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1876, file: !1877, line: 66, baseType: !802, size: 64, offset: 320)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1876, file: !1877, line: 68, baseType: !802, size: 64, offset: 384)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1876, file: !1877, line: 69, baseType: !802, size: 64, offset: 448)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1876, file: !1877, line: 70, baseType: !802, size: 64, offset: 512)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1876, file: !1877, line: 71, baseType: !802, size: 64, offset: 576)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1876, file: !1877, line: 72, baseType: !802, size: 64, offset: 640)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1876, file: !1877, line: 73, baseType: !802, size: 64, offset: 704)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1876, file: !1877, line: 74, baseType: !802, size: 64, offset: 768)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1876, file: !1877, line: 75, baseType: !802, size: 64, offset: 832)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1876, file: !1877, line: 76, baseType: !802, size: 64, offset: 896)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1876, file: !1877, line: 81, baseType: !802, size: 64, offset: 960)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1876, file: !1877, line: 83, baseType: !802, size: 64, offset: 1024)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1876, file: !1877, line: 84, baseType: !802, size: 64, offset: 1088)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1876, file: !1877, line: 85, baseType: !802, size: 64, offset: 1152)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1876, file: !1877, line: 86, baseType: !802, size: 64, offset: 1216)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1876, file: !1877, line: 87, baseType: !802, size: 64, offset: 1280)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1852, file: !1790, line: 96, baseType: !78, size: 32, offset: 1024)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1795, file: !1790, line: 308, baseType: !1902, size: 4608, align: 512)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1790, line: 289, size: 4608, align: 512, elements: !1903)
!1903 = !{!1904, !1905, !1914}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1902, file: !1790, line: 290, baseType: !1811, size: 4096, align: 128)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1902, file: !1790, line: 291, baseType: !1906, size: 512, offset: 4096)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1790, line: 268, size: 512, elements: !1907)
!1907 = !{!1908, !1909, !1910}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1906, file: !1790, line: 269, baseType: !63, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1906, file: !1790, line: 270, baseType: !63, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1906, file: !1790, line: 271, baseType: !1911, size: 384, offset: 128)
!1911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 384, elements: !1912)
!1912 = !{!1913}
!1913 = !DISubrange(count: 6)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1902, file: !1790, line: 292, baseType: !1915, offset: 4608)
!1915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, elements: !1916)
!1916 = !{!1917}
!1917 = !DISubrange(count: 0)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1795, file: !1790, line: 309, baseType: !1919, size: 32768)
!1919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 32768, elements: !1920)
!1920 = !{!1921}
!1921 = !DISubrange(count: 4096)
!1922 = !{!0}
!1923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1924, size: 64, elements: !353)
!1924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!1925 = !{!"rsp"}
!1926 = !{i32 7, !"Dwarf Version", i32 4}
!1927 = !{i32 2, !"Debug Info Version", i32 3}
!1928 = !{i32 1, !"wchar_size", i32 2}
!1929 = !{i32 1, !"Code Model", i32 2}
!1930 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!1931 = distinct !DISubprogram(name: "acpi_install_notify_handler", scope: !3, file: !3, line: 57, type: !1932, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !870)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!140, !375, !78, !371, !117}
!1934 = !DILocalVariable(name: "device", arg: 1, scope: !1931, file: !3, line: 57, type: !375)
!1935 = !DILocation(line: 57, column: 41, scope: !1931)
!1936 = !DILocalVariable(name: "handler_type", arg: 2, scope: !1931, file: !3, line: 58, type: !78)
!1937 = !DILocation(line: 58, column: 12, scope: !1931)
!1938 = !DILocalVariable(name: "handler", arg: 3, scope: !1931, file: !3, line: 59, type: !371)
!1939 = !DILocation(line: 59, column: 28, scope: !1931)
!1940 = !DILocalVariable(name: "context", arg: 4, scope: !1931, file: !3, line: 59, type: !117)
!1941 = !DILocation(line: 59, column: 43, scope: !1931)
!1942 = !DILocalVariable(name: "node", scope: !1931, file: !3, line: 61, type: !25)
!1943 = !DILocation(line: 61, column: 30, scope: !1931)
!1944 = !DILocation(line: 62, column: 6, scope: !1931)
!1945 = !DILocalVariable(name: "obj_desc", scope: !1931, file: !3, line: 63, type: !30)
!1946 = !DILocation(line: 63, column: 29, scope: !1931)
!1947 = !DILocalVariable(name: "handler_obj", scope: !1931, file: !3, line: 64, type: !30)
!1948 = !DILocation(line: 64, column: 29, scope: !1931)
!1949 = !DILocalVariable(name: "status", scope: !1931, file: !3, line: 65, type: !140)
!1950 = !DILocation(line: 65, column: 14, scope: !1931)
!1951 = !DILocalVariable(name: "i", scope: !1931, file: !3, line: 66, type: !78)
!1952 = !DILocation(line: 66, column: 6, scope: !1931)
!1953 = !DILocation(line: 72, column: 8, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 72, column: 6)
!1955 = !DILocation(line: 72, column: 16, scope: !1954)
!1956 = !DILocation(line: 72, column: 21, scope: !1954)
!1957 = !DILocation(line: 72, column: 30, scope: !1954)
!1958 = !DILocation(line: 72, column: 35, scope: !1954)
!1959 = !DILocation(line: 72, column: 49, scope: !1954)
!1960 = !DILocation(line: 73, column: 7, scope: !1954)
!1961 = !DILocation(line: 73, column: 20, scope: !1954)
!1962 = !DILocation(line: 72, column: 6, scope: !1931)
!1963 = !DILocation(line: 74, column: 3, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1954, file: !3, line: 73, column: 53)
!1965 = !DILocation(line: 77, column: 11, scope: !1931)
!1966 = !DILocation(line: 77, column: 9, scope: !1931)
!1967 = !DILocation(line: 78, column: 6, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 78, column: 6)
!1969 = !DILocation(line: 78, column: 6, scope: !1931)
!1970 = !DILocation(line: 79, column: 3, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1968, file: !3, line: 78, column: 28)
!1972 = !DILocation(line: 89, column: 6, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 89, column: 6)
!1974 = !DILocation(line: 89, column: 13, scope: !1973)
!1975 = !DILocation(line: 89, column: 6, scope: !1931)
!1976 = !DILocation(line: 90, column: 10, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !3, line: 90, column: 3)
!1978 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 89, column: 34)
!1979 = !DILocation(line: 90, column: 8, scope: !1977)
!1980 = !DILocation(line: 90, column: 15, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 90, column: 3)
!1982 = !DILocation(line: 90, column: 17, scope: !1981)
!1983 = !DILocation(line: 90, column: 3, scope: !1977)
!1984 = !DILocation(line: 91, column: 8, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 91, column: 8)
!1986 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 90, column: 47)
!1987 = !DILocation(line: 91, column: 24, scope: !1985)
!1988 = !DILocation(line: 91, column: 26, scope: !1985)
!1989 = !DILocation(line: 91, column: 21, scope: !1985)
!1990 = !DILocation(line: 91, column: 8, scope: !1986)
!1991 = !DILocation(line: 92, column: 32, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 92, column: 9)
!1993 = distinct !DILexicalBlock(scope: !1985, file: !3, line: 91, column: 32)
!1994 = !DILocation(line: 92, column: 9, scope: !1992)
!1995 = !DILocation(line: 92, column: 35, scope: !1992)
!1996 = !DILocation(line: 92, column: 9, scope: !1993)
!1997 = !DILocation(line: 93, column: 13, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 92, column: 44)
!1999 = !DILocation(line: 94, column: 6, scope: !1998)
!2000 = !DILocation(line: 97, column: 41, scope: !1993)
!2001 = !DILocation(line: 97, column: 28, scope: !1993)
!2002 = !DILocation(line: 97, column: 5, scope: !1993)
!2003 = !DILocation(line: 97, column: 31, scope: !1993)
!2004 = !DILocation(line: 97, column: 39, scope: !1993)
!2005 = !DILocation(line: 98, column: 41, scope: !1993)
!2006 = !DILocation(line: 98, column: 28, scope: !1993)
!2007 = !DILocation(line: 98, column: 5, scope: !1993)
!2008 = !DILocation(line: 98, column: 31, scope: !1993)
!2009 = !DILocation(line: 98, column: 39, scope: !1993)
!2010 = !DILocation(line: 99, column: 4, scope: !1993)
!2011 = !DILocation(line: 100, column: 3, scope: !1986)
!2012 = !DILocation(line: 90, column: 43, scope: !1981)
!2013 = !DILocation(line: 90, column: 3, scope: !1981)
!2014 = distinct !{!2014, !1983, !2015}
!2015 = !DILocation(line: 100, column: 3, scope: !1977)
!2016 = !DILocation(line: 102, column: 3, scope: !1978)
!2017 = !DILocation(line: 114, column: 32, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 114, column: 6)
!2019 = !DILocation(line: 114, column: 7, scope: !2018)
!2020 = !DILocation(line: 114, column: 6, scope: !1931)
!2021 = !DILocation(line: 115, column: 10, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 114, column: 39)
!2023 = !DILocation(line: 116, column: 3, scope: !2022)
!2024 = !DILocation(line: 121, column: 41, scope: !1931)
!2025 = !DILocation(line: 121, column: 13, scope: !1931)
!2026 = !DILocation(line: 121, column: 11, scope: !1931)
!2027 = !DILocation(line: 122, column: 7, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 122, column: 6)
!2029 = !DILocation(line: 122, column: 6, scope: !1931)
!2030 = !DILocation(line: 126, column: 14, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2028, file: !3, line: 122, column: 17)
!2032 = !DILocation(line: 126, column: 12, scope: !2031)
!2033 = !DILocation(line: 127, column: 8, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 127, column: 7)
!2035 = !DILocation(line: 127, column: 7, scope: !2031)
!2036 = !DILocation(line: 128, column: 11, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 127, column: 18)
!2038 = !DILocation(line: 129, column: 4, scope: !2037)
!2039 = !DILocation(line: 134, column: 34, scope: !2031)
!2040 = !DILocation(line: 134, column: 42, scope: !2031)
!2041 = !DILocation(line: 134, column: 52, scope: !2031)
!2042 = !DILocation(line: 134, column: 58, scope: !2031)
!2043 = !DILocation(line: 134, column: 12, scope: !2031)
!2044 = !DILocation(line: 134, column: 10, scope: !2031)
!2045 = !DILocation(line: 135, column: 28, scope: !2031)
!2046 = !DILocation(line: 135, column: 3, scope: !2031)
!2047 = !DILocation(line: 136, column: 7, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 136, column: 7)
!2049 = !DILocation(line: 136, column: 7, scope: !2031)
!2050 = !DILocation(line: 137, column: 4, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 136, column: 29)
!2052 = !DILocation(line: 139, column: 2, scope: !2031)
!2053 = !DILocation(line: 143, column: 9, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 143, column: 2)
!2055 = !DILocation(line: 143, column: 7, scope: !2054)
!2056 = !DILocation(line: 143, column: 14, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2054, file: !3, line: 143, column: 2)
!2058 = !DILocation(line: 143, column: 16, scope: !2057)
!2059 = !DILocation(line: 143, column: 2, scope: !2054)
!2060 = !DILocation(line: 144, column: 7, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 144, column: 7)
!2062 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 143, column: 46)
!2063 = !DILocation(line: 144, column: 23, scope: !2061)
!2064 = !DILocation(line: 144, column: 25, scope: !2061)
!2065 = !DILocation(line: 144, column: 20, scope: !2061)
!2066 = !DILocation(line: 144, column: 7, scope: !2062)
!2067 = !DILocation(line: 145, column: 18, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2061, file: !3, line: 144, column: 31)
!2069 = !DILocation(line: 145, column: 28, scope: !2068)
!2070 = !DILocation(line: 145, column: 42, scope: !2068)
!2071 = !DILocation(line: 145, column: 54, scope: !2068)
!2072 = !DILocation(line: 145, column: 16, scope: !2068)
!2073 = !DILocation(line: 146, column: 4, scope: !2068)
!2074 = !DILocation(line: 146, column: 11, scope: !2068)
!2075 = !DILocation(line: 147, column: 9, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 147, column: 9)
!2077 = distinct !DILexicalBlock(scope: !2068, file: !3, line: 146, column: 24)
!2078 = !DILocation(line: 147, column: 22, scope: !2076)
!2079 = !DILocation(line: 147, column: 29, scope: !2076)
!2080 = !DILocation(line: 147, column: 40, scope: !2076)
!2081 = !DILocation(line: 147, column: 37, scope: !2076)
!2082 = !DILocation(line: 147, column: 9, scope: !2077)
!2083 = !DILocation(line: 148, column: 13, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2076, file: !3, line: 147, column: 49)
!2085 = !DILocation(line: 149, column: 6, scope: !2084)
!2086 = !DILocation(line: 152, column: 19, scope: !2077)
!2087 = !DILocation(line: 152, column: 32, scope: !2077)
!2088 = !DILocation(line: 152, column: 39, scope: !2077)
!2089 = !DILocation(line: 152, column: 44, scope: !2077)
!2090 = !DILocation(line: 152, column: 17, scope: !2077)
!2091 = distinct !{!2091, !2073, !2092}
!2092 = !DILocation(line: 153, column: 4, scope: !2068)
!2093 = !DILocation(line: 154, column: 3, scope: !2068)
!2094 = !DILocation(line: 155, column: 2, scope: !2062)
!2095 = !DILocation(line: 143, column: 42, scope: !2057)
!2096 = !DILocation(line: 143, column: 2, scope: !2057)
!2097 = distinct !{!2097, !2059, !2098}
!2098 = !DILocation(line: 155, column: 2, scope: !2054)
!2099 = !DILocation(line: 159, column: 16, scope: !1931)
!2100 = !DILocation(line: 159, column: 14, scope: !1931)
!2101 = !DILocation(line: 160, column: 7, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 160, column: 6)
!2103 = !DILocation(line: 160, column: 6, scope: !1931)
!2104 = !DILocation(line: 161, column: 10, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 160, column: 20)
!2106 = !DILocation(line: 162, column: 3, scope: !2105)
!2107 = !DILocation(line: 165, column: 29, scope: !1931)
!2108 = !DILocation(line: 165, column: 2, scope: !1931)
!2109 = !DILocation(line: 165, column: 15, scope: !1931)
!2110 = !DILocation(line: 165, column: 22, scope: !1931)
!2111 = !DILocation(line: 165, column: 27, scope: !1931)
!2112 = !DILocation(line: 166, column: 37, scope: !1931)
!2113 = !DILocation(line: 166, column: 2, scope: !1931)
!2114 = !DILocation(line: 166, column: 15, scope: !1931)
!2115 = !DILocation(line: 166, column: 22, scope: !1931)
!2116 = !DILocation(line: 166, column: 35, scope: !1931)
!2117 = !DILocation(line: 167, column: 32, scope: !1931)
!2118 = !DILocation(line: 167, column: 2, scope: !1931)
!2119 = !DILocation(line: 167, column: 15, scope: !1931)
!2120 = !DILocation(line: 167, column: 22, scope: !1931)
!2121 = !DILocation(line: 167, column: 30, scope: !1931)
!2122 = !DILocation(line: 168, column: 32, scope: !1931)
!2123 = !DILocation(line: 168, column: 2, scope: !1931)
!2124 = !DILocation(line: 168, column: 15, scope: !1931)
!2125 = !DILocation(line: 168, column: 22, scope: !1931)
!2126 = !DILocation(line: 168, column: 30, scope: !1931)
!2127 = !DILocation(line: 172, column: 9, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 172, column: 2)
!2129 = !DILocation(line: 172, column: 7, scope: !2128)
!2130 = !DILocation(line: 172, column: 14, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 172, column: 2)
!2132 = !DILocation(line: 172, column: 16, scope: !2131)
!2133 = !DILocation(line: 172, column: 2, scope: !2128)
!2134 = !DILocation(line: 173, column: 7, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !3, line: 173, column: 7)
!2136 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 172, column: 46)
!2137 = !DILocation(line: 173, column: 23, scope: !2135)
!2138 = !DILocation(line: 173, column: 25, scope: !2135)
!2139 = !DILocation(line: 173, column: 20, scope: !2135)
!2140 = !DILocation(line: 173, column: 7, scope: !2136)
!2141 = !DILocation(line: 175, column: 8, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 173, column: 31)
!2143 = !DILocation(line: 175, column: 18, scope: !2142)
!2144 = !DILocation(line: 175, column: 32, scope: !2142)
!2145 = !DILocation(line: 175, column: 44, scope: !2142)
!2146 = !DILocation(line: 174, column: 4, scope: !2142)
!2147 = !DILocation(line: 174, column: 17, scope: !2142)
!2148 = !DILocation(line: 174, column: 24, scope: !2142)
!2149 = !DILocation(line: 174, column: 29, scope: !2142)
!2150 = !DILocation(line: 174, column: 32, scope: !2142)
!2151 = !DILocation(line: 177, column: 45, scope: !2142)
!2152 = !DILocation(line: 177, column: 4, scope: !2142)
!2153 = !DILocation(line: 177, column: 14, scope: !2142)
!2154 = !DILocation(line: 177, column: 28, scope: !2142)
!2155 = !DILocation(line: 177, column: 40, scope: !2142)
!2156 = !DILocation(line: 177, column: 43, scope: !2142)
!2157 = !DILocation(line: 178, column: 3, scope: !2142)
!2158 = !DILocation(line: 179, column: 2, scope: !2136)
!2159 = !DILocation(line: 172, column: 42, scope: !2131)
!2160 = !DILocation(line: 172, column: 2, scope: !2131)
!2161 = distinct !{!2161, !2133, !2162}
!2162 = !DILocation(line: 179, column: 2, scope: !2128)
!2163 = !DILocation(line: 183, column: 6, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 183, column: 6)
!2165 = !DILocation(line: 183, column: 19, scope: !2164)
!2166 = !DILocation(line: 183, column: 6, scope: !1931)
!2167 = !DILocation(line: 184, column: 25, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 183, column: 39)
!2169 = !DILocation(line: 184, column: 3, scope: !2168)
!2170 = !DILocation(line: 185, column: 2, scope: !2168)
!2171 = !DILocation(line: 183, column: 22, scope: !2164)
!2172 = !DILabel(scope: !1931, name: "unlock_and_exit", file: !3, line: 187)
!2173 = !DILocation(line: 187, column: 1, scope: !1931)
!2174 = !DILocation(line: 188, column: 8, scope: !1931)
!2175 = !DILocation(line: 189, column: 2, scope: !1931)
!2176 = !DILocation(line: 190, column: 1, scope: !1931)
!2177 = distinct !DISubprogram(name: "acpi_remove_notify_handler", scope: !3, file: !3, line: 211, type: !2178, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !870)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!140, !375, !78, !371}
!2180 = !DILocalVariable(name: "device", arg: 1, scope: !2177, file: !3, line: 211, type: !375)
!2181 = !DILocation(line: 211, column: 40, scope: !2177)
!2182 = !DILocalVariable(name: "handler_type", arg: 2, scope: !2177, file: !3, line: 212, type: !78)
!2183 = !DILocation(line: 212, column: 11, scope: !2177)
!2184 = !DILocalVariable(name: "handler", arg: 3, scope: !2177, file: !3, line: 212, type: !371)
!2185 = !DILocation(line: 212, column: 45, scope: !2177)
!2186 = !DILocalVariable(name: "node", scope: !2177, file: !3, line: 214, type: !25)
!2187 = !DILocation(line: 214, column: 30, scope: !2177)
!2188 = !DILocation(line: 215, column: 6, scope: !2177)
!2189 = !DILocalVariable(name: "obj_desc", scope: !2177, file: !3, line: 216, type: !30)
!2190 = !DILocation(line: 216, column: 29, scope: !2177)
!2191 = !DILocalVariable(name: "handler_obj", scope: !2177, file: !3, line: 217, type: !30)
!2192 = !DILocation(line: 217, column: 29, scope: !2177)
!2193 = !DILocalVariable(name: "previous_handler_obj", scope: !2177, file: !3, line: 218, type: !30)
!2194 = !DILocation(line: 218, column: 29, scope: !2177)
!2195 = !DILocalVariable(name: "status", scope: !2177, file: !3, line: 219, type: !140)
!2196 = !DILocation(line: 219, column: 14, scope: !2177)
!2197 = !DILocalVariable(name: "i", scope: !2177, file: !3, line: 220, type: !78)
!2198 = !DILocation(line: 220, column: 6, scope: !2177)
!2199 = !DILocation(line: 226, column: 8, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 226, column: 6)
!2201 = !DILocation(line: 226, column: 16, scope: !2200)
!2202 = !DILocation(line: 226, column: 21, scope: !2200)
!2203 = !DILocation(line: 226, column: 30, scope: !2200)
!2204 = !DILocation(line: 226, column: 35, scope: !2200)
!2205 = !DILocation(line: 226, column: 49, scope: !2200)
!2206 = !DILocation(line: 227, column: 7, scope: !2200)
!2207 = !DILocation(line: 227, column: 20, scope: !2200)
!2208 = !DILocation(line: 226, column: 6, scope: !2177)
!2209 = !DILocation(line: 228, column: 3, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 227, column: 53)
!2211 = !DILocation(line: 233, column: 6, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 233, column: 6)
!2213 = !DILocation(line: 233, column: 13, scope: !2212)
!2214 = !DILocation(line: 233, column: 6, scope: !2177)
!2215 = !DILocation(line: 234, column: 10, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 234, column: 3)
!2217 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 233, column: 34)
!2218 = !DILocation(line: 234, column: 8, scope: !2216)
!2219 = !DILocation(line: 234, column: 15, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2216, file: !3, line: 234, column: 3)
!2221 = !DILocation(line: 234, column: 17, scope: !2220)
!2222 = !DILocation(line: 234, column: 3, scope: !2216)
!2223 = !DILocation(line: 235, column: 8, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 235, column: 8)
!2225 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 234, column: 47)
!2226 = !DILocation(line: 235, column: 24, scope: !2224)
!2227 = !DILocation(line: 235, column: 26, scope: !2224)
!2228 = !DILocation(line: 235, column: 21, scope: !2224)
!2229 = !DILocation(line: 235, column: 8, scope: !2225)
!2230 = !DILocation(line: 237, column: 9, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2224, file: !3, line: 235, column: 32)
!2232 = !DILocation(line: 236, column: 12, scope: !2231)
!2233 = !DILocation(line: 238, column: 9, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 238, column: 9)
!2235 = !DILocation(line: 238, column: 9, scope: !2231)
!2236 = !DILocation(line: 239, column: 6, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 238, column: 31)
!2238 = !DILocation(line: 242, column: 33, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 242, column: 9)
!2240 = !DILocation(line: 242, column: 10, scope: !2239)
!2241 = !DILocation(line: 242, column: 36, scope: !2239)
!2242 = !DILocation(line: 242, column: 44, scope: !2239)
!2243 = !DILocation(line: 243, column: 33, scope: !2239)
!2244 = !DILocation(line: 243, column: 10, scope: !2239)
!2245 = !DILocation(line: 243, column: 36, scope: !2239)
!2246 = !DILocation(line: 244, column: 10, scope: !2239)
!2247 = !DILocation(line: 243, column: 44, scope: !2239)
!2248 = !DILocation(line: 242, column: 9, scope: !2231)
!2249 = !DILocation(line: 245, column: 13, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 244, column: 20)
!2251 = !DILocation(line: 246, column: 6, scope: !2250)
!2252 = !DILocation(line: 252, column: 28, scope: !2231)
!2253 = !DILocation(line: 252, column: 5, scope: !2231)
!2254 = !DILocation(line: 252, column: 31, scope: !2231)
!2255 = !DILocation(line: 252, column: 39, scope: !2231)
!2256 = !DILocation(line: 253, column: 28, scope: !2231)
!2257 = !DILocation(line: 253, column: 5, scope: !2231)
!2258 = !DILocation(line: 253, column: 31, scope: !2231)
!2259 = !DILocation(line: 253, column: 39, scope: !2231)
!2260 = !DILocation(line: 255, column: 11, scope: !2231)
!2261 = !DILocation(line: 259, column: 5, scope: !2231)
!2262 = !DILocation(line: 260, column: 4, scope: !2231)
!2263 = !DILocation(line: 261, column: 3, scope: !2225)
!2264 = !DILocation(line: 234, column: 43, scope: !2220)
!2265 = !DILocation(line: 234, column: 3, scope: !2220)
!2266 = distinct !{!2266, !2222, !2267}
!2267 = !DILocation(line: 261, column: 3, scope: !2216)
!2268 = !DILocation(line: 263, column: 3, scope: !2217)
!2269 = !DILocation(line: 268, column: 32, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 268, column: 6)
!2271 = !DILocation(line: 268, column: 7, scope: !2270)
!2272 = !DILocation(line: 268, column: 6, scope: !2177)
!2273 = !DILocation(line: 269, column: 3, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 268, column: 39)
!2275 = !DILocation(line: 274, column: 41, scope: !2177)
!2276 = !DILocation(line: 274, column: 13, scope: !2177)
!2277 = !DILocation(line: 274, column: 11, scope: !2177)
!2278 = !DILocation(line: 275, column: 7, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 275, column: 6)
!2280 = !DILocation(line: 275, column: 6, scope: !2177)
!2281 = !DILocation(line: 276, column: 3, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 275, column: 17)
!2283 = !DILocation(line: 281, column: 9, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 281, column: 2)
!2285 = !DILocation(line: 281, column: 7, scope: !2284)
!2286 = !DILocation(line: 281, column: 14, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 281, column: 2)
!2288 = !DILocation(line: 281, column: 16, scope: !2287)
!2289 = !DILocation(line: 281, column: 2, scope: !2284)
!2290 = !DILocation(line: 282, column: 7, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 282, column: 7)
!2292 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 281, column: 46)
!2293 = !DILocation(line: 282, column: 23, scope: !2291)
!2294 = !DILocation(line: 282, column: 25, scope: !2291)
!2295 = !DILocation(line: 282, column: 20, scope: !2291)
!2296 = !DILocation(line: 282, column: 7, scope: !2292)
!2297 = !DILocation(line: 283, column: 13, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 282, column: 31)
!2299 = !DILocation(line: 283, column: 11, scope: !2298)
!2300 = !DILocation(line: 284, column: 8, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 284, column: 8)
!2302 = !DILocation(line: 284, column: 8, scope: !2298)
!2303 = !DILocation(line: 285, column: 5, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 284, column: 30)
!2305 = !DILocation(line: 288, column: 18, scope: !2298)
!2306 = !DILocation(line: 288, column: 28, scope: !2298)
!2307 = !DILocation(line: 288, column: 42, scope: !2298)
!2308 = !DILocation(line: 288, column: 54, scope: !2298)
!2309 = !DILocation(line: 288, column: 16, scope: !2298)
!2310 = !DILocation(line: 289, column: 25, scope: !2298)
!2311 = !DILocation(line: 293, column: 4, scope: !2298)
!2312 = !DILocation(line: 293, column: 11, scope: !2298)
!2313 = !DILocation(line: 293, column: 23, scope: !2298)
!2314 = !DILocation(line: 294, column: 12, scope: !2298)
!2315 = !DILocation(line: 294, column: 25, scope: !2298)
!2316 = !DILocation(line: 294, column: 32, scope: !2298)
!2317 = !DILocation(line: 294, column: 43, scope: !2298)
!2318 = !DILocation(line: 294, column: 40, scope: !2298)
!2319 = !DILocation(line: 0, scope: !2298)
!2320 = !DILocation(line: 295, column: 28, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 294, column: 53)
!2322 = !DILocation(line: 295, column: 26, scope: !2321)
!2323 = !DILocation(line: 296, column: 19, scope: !2321)
!2324 = !DILocation(line: 296, column: 32, scope: !2321)
!2325 = !DILocation(line: 296, column: 39, scope: !2321)
!2326 = !DILocation(line: 296, column: 44, scope: !2321)
!2327 = !DILocation(line: 296, column: 17, scope: !2321)
!2328 = distinct !{!2328, !2311, !2329}
!2329 = !DILocation(line: 297, column: 4, scope: !2298)
!2330 = !DILocation(line: 299, column: 9, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 299, column: 8)
!2332 = !DILocation(line: 299, column: 8, scope: !2298)
!2333 = !DILocation(line: 300, column: 12, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2331, file: !3, line: 299, column: 22)
!2335 = !DILocation(line: 301, column: 5, scope: !2334)
!2336 = !DILocation(line: 306, column: 8, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 306, column: 8)
!2338 = !DILocation(line: 306, column: 8, scope: !2298)
!2339 = !DILocation(line: 308, column: 9, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2337, file: !3, line: 306, column: 30)
!2341 = !DILocation(line: 308, column: 22, scope: !2340)
!2342 = !DILocation(line: 308, column: 29, scope: !2340)
!2343 = !DILocation(line: 308, column: 34, scope: !2340)
!2344 = !DILocation(line: 307, column: 5, scope: !2340)
!2345 = !DILocation(line: 307, column: 27, scope: !2340)
!2346 = !DILocation(line: 307, column: 34, scope: !2340)
!2347 = !DILocation(line: 307, column: 39, scope: !2340)
!2348 = !DILocation(line: 307, column: 42, scope: !2340)
!2349 = !DILocation(line: 309, column: 4, scope: !2340)
!2350 = !DILocation(line: 312, column: 9, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2337, file: !3, line: 309, column: 11)
!2352 = !DILocation(line: 312, column: 22, scope: !2351)
!2353 = !DILocation(line: 312, column: 29, scope: !2351)
!2354 = !DILocation(line: 312, column: 34, scope: !2351)
!2355 = !DILocation(line: 311, column: 5, scope: !2351)
!2356 = !DILocation(line: 311, column: 15, scope: !2351)
!2357 = !DILocation(line: 311, column: 29, scope: !2351)
!2358 = !DILocation(line: 311, column: 41, scope: !2351)
!2359 = !DILocation(line: 311, column: 44, scope: !2351)
!2360 = !DILocation(line: 315, column: 10, scope: !2298)
!2361 = !DILocation(line: 319, column: 4, scope: !2298)
!2362 = !DILocation(line: 320, column: 29, scope: !2298)
!2363 = !DILocation(line: 320, column: 4, scope: !2298)
!2364 = !DILocation(line: 321, column: 3, scope: !2298)
!2365 = !DILocation(line: 322, column: 2, scope: !2292)
!2366 = !DILocation(line: 281, column: 42, scope: !2287)
!2367 = !DILocation(line: 281, column: 2, scope: !2287)
!2368 = distinct !{!2368, !2289, !2369}
!2369 = !DILocation(line: 322, column: 2, scope: !2284)
!2370 = !DILocation(line: 324, column: 2, scope: !2177)
!2371 = !DILabel(scope: !2177, name: "unlock_and_exit", file: !3, line: 326)
!2372 = !DILocation(line: 326, column: 1, scope: !2177)
!2373 = !DILocation(line: 327, column: 8, scope: !2177)
!2374 = !DILocation(line: 328, column: 2, scope: !2177)
!2375 = !DILocation(line: 329, column: 1, scope: !2177)
!2376 = distinct !DISubprogram(name: "acpi_install_sci_handler", scope: !3, file: !3, line: 389, type: !2377, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !870)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!140, !2379, !117}
!2379 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_sci_handler", file: !141, line: 1035, baseType: !2380)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!78, !117}
!2383 = !DILocalVariable(name: "address", arg: 1, scope: !2376, file: !3, line: 389, type: !2379)
!2384 = !DILocation(line: 389, column: 55, scope: !2376)
!2385 = !DILocalVariable(name: "context", arg: 2, scope: !2376, file: !3, line: 389, type: !117)
!2386 = !DILocation(line: 389, column: 70, scope: !2376)
!2387 = !DILocalVariable(name: "new_sci_handler", scope: !2376, file: !3, line: 391, type: !2388)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_sci_handler_info", file: !27, line: 411, size: 192, elements: !2390)
!2390 = !{!2391, !2392, !2393}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2389, file: !27, line: 412, baseType: !2388, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2389, file: !27, line: 413, baseType: !2379, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2389, file: !27, line: 414, baseType: !117, size: 64, offset: 128)
!2394 = !DILocation(line: 391, column: 32, scope: !2376)
!2395 = !DILocalVariable(name: "sci_handler", scope: !2376, file: !3, line: 392, type: !2388)
!2396 = !DILocation(line: 392, column: 32, scope: !2376)
!2397 = !DILocalVariable(name: "flags", scope: !2376, file: !3, line: 393, type: !802)
!2398 = !DILocation(line: 393, column: 17, scope: !2376)
!2399 = !DILocalVariable(name: "status", scope: !2376, file: !3, line: 394, type: !140)
!2400 = !DILocation(line: 394, column: 14, scope: !2376)
!2401 = !DILocation(line: 398, column: 7, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 398, column: 6)
!2403 = !DILocation(line: 398, column: 6, scope: !2376)
!2404 = !DILocation(line: 399, column: 3, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 398, column: 16)
!2406 = !DILocation(line: 404, column: 20, scope: !2376)
!2407 = !DILocation(line: 404, column: 18, scope: !2376)
!2408 = !DILocation(line: 405, column: 7, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 405, column: 6)
!2410 = !DILocation(line: 405, column: 6, scope: !2376)
!2411 = !DILocation(line: 406, column: 3, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2409, file: !3, line: 405, column: 24)
!2413 = !DILocation(line: 409, column: 29, scope: !2376)
!2414 = !DILocation(line: 409, column: 2, scope: !2376)
!2415 = !DILocation(line: 409, column: 19, scope: !2376)
!2416 = !DILocation(line: 409, column: 27, scope: !2376)
!2417 = !DILocation(line: 410, column: 29, scope: !2376)
!2418 = !DILocation(line: 410, column: 2, scope: !2376)
!2419 = !DILocation(line: 410, column: 19, scope: !2376)
!2420 = !DILocation(line: 410, column: 27, scope: !2376)
!2421 = !DILocation(line: 412, column: 11, scope: !2376)
!2422 = !DILocation(line: 412, column: 9, scope: !2376)
!2423 = !DILocation(line: 413, column: 6, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 413, column: 6)
!2425 = !DILocation(line: 413, column: 6, scope: !2376)
!2426 = !DILocation(line: 414, column: 3, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 413, column: 28)
!2428 = !DILocation(line: 419, column: 31, scope: !2376)
!2429 = !DILocation(line: 419, column: 10, scope: !2376)
!2430 = !DILocation(line: 419, column: 8, scope: !2376)
!2431 = !DILocation(line: 420, column: 16, scope: !2376)
!2432 = !DILocation(line: 420, column: 14, scope: !2376)
!2433 = !DILocation(line: 424, column: 2, scope: !2376)
!2434 = !DILocation(line: 424, column: 9, scope: !2376)
!2435 = !DILocation(line: 425, column: 7, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 425, column: 7)
!2437 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 424, column: 22)
!2438 = !DILocation(line: 425, column: 18, scope: !2436)
!2439 = !DILocation(line: 425, column: 31, scope: !2436)
!2440 = !DILocation(line: 425, column: 15, scope: !2436)
!2441 = !DILocation(line: 425, column: 7, scope: !2437)
!2442 = !DILocation(line: 426, column: 11, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 425, column: 40)
!2444 = !DILocation(line: 427, column: 4, scope: !2443)
!2445 = !DILocation(line: 430, column: 17, scope: !2437)
!2446 = !DILocation(line: 430, column: 30, scope: !2437)
!2447 = !DILocation(line: 430, column: 15, scope: !2437)
!2448 = distinct !{!2448, !2433, !2449}
!2449 = !DILocation(line: 431, column: 2, scope: !2376)
!2450 = !DILocation(line: 435, column: 26, scope: !2376)
!2451 = !DILocation(line: 435, column: 2, scope: !2376)
!2452 = !DILocation(line: 435, column: 19, scope: !2376)
!2453 = !DILocation(line: 435, column: 24, scope: !2376)
!2454 = !DILocation(line: 436, column: 30, scope: !2376)
!2455 = !DILocation(line: 436, column: 28, scope: !2376)
!2456 = !DILocation(line: 436, column: 2, scope: !2376)
!2457 = !DILabel(scope: !2376, name: "unlock_and_exit", file: !3, line: 438)
!2458 = !DILocation(line: 438, column: 1, scope: !2376)
!2459 = !DILocation(line: 440, column: 23, scope: !2376)
!2460 = !DILocation(line: 440, column: 42, scope: !2376)
!2461 = !DILocation(line: 440, column: 2, scope: !2376)
!2462 = !DILocation(line: 441, column: 8, scope: !2376)
!2463 = !DILocation(line: 441, column: 2, scope: !2376)
!2464 = !DILabel(scope: !2376, name: "exit", file: !3, line: 443)
!2465 = !DILocation(line: 443, column: 1, scope: !2376)
!2466 = !DILocation(line: 444, column: 6, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 444, column: 6)
!2468 = !DILocation(line: 444, column: 6, scope: !2376)
!2469 = !DILocation(line: 445, column: 3, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 444, column: 28)
!2471 = !DILocation(line: 446, column: 2, scope: !2470)
!2472 = !DILocation(line: 447, column: 2, scope: !2376)
!2473 = !DILocation(line: 448, column: 1, scope: !2376)
!2474 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !2475, file: !2475, line: 50, type: !2476, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !870)
!2475 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!117, !799}
!2478 = !DILocalVariable(name: "s", arg: 1, scope: !2479, file: !6, line: 445, type: !1668)
!2479 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !2480, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !870)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!117, !1668, !800, !1449}
!2482 = !DILocation(line: 445, column: 72, scope: !2479, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 552, column: 10, scope: !2484, inlinedAt: !2489)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !6, line: 540, column: 34)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !6, line: 540, column: 6)
!2486 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !2487, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !870)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!117, !1449, !800}
!2489 = distinct !DILocation(line: 52, column: 9, scope: !2474)
!2490 = !DILocalVariable(name: "flags", arg: 2, scope: !2479, file: !6, line: 446, type: !800)
!2491 = !DILocation(line: 446, column: 9, scope: !2479, inlinedAt: !2483)
!2492 = !DILocalVariable(name: "size", arg: 3, scope: !2479, file: !6, line: 446, type: !1449)
!2493 = !DILocation(line: 446, column: 23, scope: !2479, inlinedAt: !2483)
!2494 = !DILocalVariable(name: "ret", scope: !2479, file: !6, line: 448, type: !117)
!2495 = !DILocation(line: 448, column: 8, scope: !2479, inlinedAt: !2483)
!2496 = !DILocalVariable(name: "flags", arg: 1, scope: !2497, file: !6, line: 318, type: !800)
!2497 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !2498, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !870)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!5, !800}
!2500 = !DILocation(line: 318, column: 67, scope: !2497, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 553, column: 20, scope: !2484, inlinedAt: !2489)
!2502 = !DILocalVariable(name: "size", arg: 1, scope: !2503, file: !6, line: 346, type: !1449)
!2503 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !2504, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !870)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!7, !1449}
!2506 = !DILocation(line: 346, column: 58, scope: !2503, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 547, column: 11, scope: !2484, inlinedAt: !2489)
!2508 = !DILocalVariable(name: "size", arg: 1, scope: !2509, file: !6, line: 472, type: !1449)
!2509 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !2510, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !870)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!117, !1449, !800, !7}
!2512 = !DILocation(line: 472, column: 28, scope: !2509, inlinedAt: !2513)
!2513 = distinct !DILocation(line: 481, column: 9, scope: !2514, inlinedAt: !2515)
!2514 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !2487, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !870)
!2515 = distinct !DILocation(line: 545, column: 11, scope: !2516, inlinedAt: !2489)
!2516 = distinct !DILexicalBlock(scope: !2484, file: !6, line: 544, column: 7)
!2517 = !DILocalVariable(name: "flags", arg: 2, scope: !2509, file: !6, line: 472, type: !800)
!2518 = !DILocation(line: 472, column: 40, scope: !2509, inlinedAt: !2513)
!2519 = !DILocalVariable(name: "order", arg: 3, scope: !2509, file: !6, line: 472, type: !7)
!2520 = !DILocation(line: 472, column: 60, scope: !2509, inlinedAt: !2513)
!2521 = !DILocalVariable(name: "size", arg: 1, scope: !2514, file: !6, line: 478, type: !1449)
!2522 = !DILocation(line: 478, column: 51, scope: !2514, inlinedAt: !2515)
!2523 = !DILocalVariable(name: "flags", arg: 2, scope: !2514, file: !6, line: 478, type: !800)
!2524 = !DILocation(line: 478, column: 63, scope: !2514, inlinedAt: !2515)
!2525 = !DILocalVariable(name: "order", scope: !2514, file: !6, line: 480, type: !7)
!2526 = !DILocation(line: 480, column: 15, scope: !2514, inlinedAt: !2515)
!2527 = !DILocalVariable(name: "size", arg: 1, scope: !2486, file: !6, line: 538, type: !1449)
!2528 = !DILocation(line: 538, column: 45, scope: !2486, inlinedAt: !2489)
!2529 = !DILocalVariable(name: "flags", arg: 2, scope: !2486, file: !6, line: 538, type: !800)
!2530 = !DILocation(line: 538, column: 57, scope: !2486, inlinedAt: !2489)
!2531 = !DILocalVariable(name: "index", scope: !2484, file: !6, line: 542, type: !7)
!2532 = !DILocation(line: 542, column: 16, scope: !2484, inlinedAt: !2489)
!2533 = !DILocalVariable(name: "flags", arg: 1, scope: !2534, file: !2535, line: 162, type: !802)
!2534 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !2535, file: !2535, line: 162, type: !2536, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !870)
!2535 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!828, !802}
!2538 = !DILocation(line: 162, column: 67, scope: !2534, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 52, column: 23, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !2475, line: 52, column: 23)
!2541 = distinct !DILexicalBlock(scope: !2474, file: !2475, line: 52, column: 23)
!2542 = !DILocalVariable(name: "size", arg: 1, scope: !2474, file: !2475, line: 50, type: !799)
!2543 = !DILocation(line: 50, column: 48, scope: !2474)
!2544 = !DILocation(line: 52, column: 17, scope: !2474)
!2545 = !DILocalVariable(name: "_flags", scope: !2541, file: !2475, line: 52, type: !802)
!2546 = !DILocation(line: 52, column: 23, scope: !2541)
!2547 = !DILocalVariable(name: "__dummy", scope: !2548, file: !2475, line: 52, type: !802)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !2475, line: 52, column: 23)
!2549 = distinct !DILexicalBlock(scope: !2541, file: !2475, line: 52, column: 23)
!2550 = !DILocation(line: 52, column: 23, scope: !2548)
!2551 = !DILocalVariable(name: "__dummy2", scope: !2548, file: !2475, line: 52, type: !802)
!2552 = !DILocation(line: 52, column: 23, scope: !2549)
!2553 = !DILocalVariable(name: "__dummy", scope: !2554, file: !2475, line: 52, type: !802)
!2554 = distinct !DILexicalBlock(scope: !2540, file: !2475, line: 52, column: 23)
!2555 = !DILocation(line: 52, column: 23, scope: !2554)
!2556 = !DILocalVariable(name: "__dummy2", scope: !2554, file: !2475, line: 52, type: !802)
!2557 = !DILocation(line: 52, column: 23, scope: !2540)
!2558 = !DILocation(line: 164, column: 11, scope: !2534, inlinedAt: !2539)
!2559 = !DILocation(line: 164, column: 17, scope: !2534, inlinedAt: !2539)
!2560 = !DILocation(line: 164, column: 9, scope: !2534, inlinedAt: !2539)
!2561 = !DILocation(line: 52, column: 23, scope: !2474)
!2562 = !DILocation(line: 540, column: 27, scope: !2485, inlinedAt: !2489)
!2563 = !DILocation(line: 540, column: 6, scope: !2485, inlinedAt: !2489)
!2564 = !DILocation(line: 540, column: 6, scope: !2486, inlinedAt: !2489)
!2565 = !DILocation(line: 544, column: 7, scope: !2516, inlinedAt: !2489)
!2566 = !DILocation(line: 544, column: 12, scope: !2516, inlinedAt: !2489)
!2567 = !DILocation(line: 544, column: 7, scope: !2484, inlinedAt: !2489)
!2568 = !DILocation(line: 545, column: 25, scope: !2516, inlinedAt: !2489)
!2569 = !DILocation(line: 545, column: 31, scope: !2516, inlinedAt: !2489)
!2570 = !DILocation(line: 480, column: 33, scope: !2514, inlinedAt: !2515)
!2571 = !DILocation(line: 480, column: 23, scope: !2514, inlinedAt: !2515)
!2572 = !DILocation(line: 481, column: 29, scope: !2514, inlinedAt: !2515)
!2573 = !DILocation(line: 481, column: 35, scope: !2514, inlinedAt: !2515)
!2574 = !DILocation(line: 481, column: 42, scope: !2514, inlinedAt: !2515)
!2575 = !DILocation(line: 474, column: 23, scope: !2509, inlinedAt: !2513)
!2576 = !DILocation(line: 474, column: 29, scope: !2509, inlinedAt: !2513)
!2577 = !DILocation(line: 474, column: 36, scope: !2509, inlinedAt: !2513)
!2578 = !DILocation(line: 474, column: 9, scope: !2509, inlinedAt: !2513)
!2579 = !DILocation(line: 545, column: 4, scope: !2516, inlinedAt: !2489)
!2580 = !DILocation(line: 547, column: 25, scope: !2484, inlinedAt: !2489)
!2581 = !DILocation(line: 348, column: 7, scope: !2582, inlinedAt: !2507)
!2582 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 348, column: 6)
!2583 = !DILocation(line: 348, column: 6, scope: !2503, inlinedAt: !2507)
!2584 = !DILocation(line: 349, column: 3, scope: !2582, inlinedAt: !2507)
!2585 = !DILocation(line: 351, column: 6, scope: !2586, inlinedAt: !2507)
!2586 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 351, column: 6)
!2587 = !DILocation(line: 351, column: 11, scope: !2586, inlinedAt: !2507)
!2588 = !DILocation(line: 351, column: 6, scope: !2503, inlinedAt: !2507)
!2589 = !DILocation(line: 352, column: 3, scope: !2586, inlinedAt: !2507)
!2590 = !DILocation(line: 354, column: 32, scope: !2591, inlinedAt: !2507)
!2591 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 354, column: 6)
!2592 = !DILocation(line: 354, column: 37, scope: !2591, inlinedAt: !2507)
!2593 = !DILocation(line: 354, column: 42, scope: !2591, inlinedAt: !2507)
!2594 = !DILocation(line: 354, column: 45, scope: !2591, inlinedAt: !2507)
!2595 = !DILocation(line: 354, column: 50, scope: !2591, inlinedAt: !2507)
!2596 = !DILocation(line: 354, column: 6, scope: !2503, inlinedAt: !2507)
!2597 = !DILocation(line: 355, column: 3, scope: !2591, inlinedAt: !2507)
!2598 = !DILocation(line: 356, column: 32, scope: !2599, inlinedAt: !2507)
!2599 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 356, column: 6)
!2600 = !DILocation(line: 356, column: 37, scope: !2599, inlinedAt: !2507)
!2601 = !DILocation(line: 356, column: 43, scope: !2599, inlinedAt: !2507)
!2602 = !DILocation(line: 356, column: 46, scope: !2599, inlinedAt: !2507)
!2603 = !DILocation(line: 356, column: 51, scope: !2599, inlinedAt: !2507)
!2604 = !DILocation(line: 356, column: 6, scope: !2503, inlinedAt: !2507)
!2605 = !DILocation(line: 357, column: 3, scope: !2599, inlinedAt: !2507)
!2606 = !DILocation(line: 358, column: 6, scope: !2607, inlinedAt: !2507)
!2607 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 358, column: 6)
!2608 = !DILocation(line: 358, column: 11, scope: !2607, inlinedAt: !2507)
!2609 = !DILocation(line: 358, column: 6, scope: !2503, inlinedAt: !2507)
!2610 = !DILocation(line: 358, column: 26, scope: !2607, inlinedAt: !2507)
!2611 = !DILocation(line: 359, column: 6, scope: !2612, inlinedAt: !2507)
!2612 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 359, column: 6)
!2613 = !DILocation(line: 359, column: 11, scope: !2612, inlinedAt: !2507)
!2614 = !DILocation(line: 359, column: 6, scope: !2503, inlinedAt: !2507)
!2615 = !DILocation(line: 359, column: 26, scope: !2612, inlinedAt: !2507)
!2616 = !DILocation(line: 360, column: 6, scope: !2617, inlinedAt: !2507)
!2617 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 360, column: 6)
!2618 = !DILocation(line: 360, column: 11, scope: !2617, inlinedAt: !2507)
!2619 = !DILocation(line: 360, column: 6, scope: !2503, inlinedAt: !2507)
!2620 = !DILocation(line: 360, column: 26, scope: !2617, inlinedAt: !2507)
!2621 = !DILocation(line: 361, column: 6, scope: !2622, inlinedAt: !2507)
!2622 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 361, column: 6)
!2623 = !DILocation(line: 361, column: 11, scope: !2622, inlinedAt: !2507)
!2624 = !DILocation(line: 361, column: 6, scope: !2503, inlinedAt: !2507)
!2625 = !DILocation(line: 361, column: 26, scope: !2622, inlinedAt: !2507)
!2626 = !DILocation(line: 362, column: 6, scope: !2627, inlinedAt: !2507)
!2627 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 362, column: 6)
!2628 = !DILocation(line: 362, column: 11, scope: !2627, inlinedAt: !2507)
!2629 = !DILocation(line: 362, column: 6, scope: !2503, inlinedAt: !2507)
!2630 = !DILocation(line: 362, column: 26, scope: !2627, inlinedAt: !2507)
!2631 = !DILocation(line: 363, column: 6, scope: !2632, inlinedAt: !2507)
!2632 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 363, column: 6)
!2633 = !DILocation(line: 363, column: 11, scope: !2632, inlinedAt: !2507)
!2634 = !DILocation(line: 363, column: 6, scope: !2503, inlinedAt: !2507)
!2635 = !DILocation(line: 363, column: 26, scope: !2632, inlinedAt: !2507)
!2636 = !DILocation(line: 364, column: 6, scope: !2637, inlinedAt: !2507)
!2637 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 364, column: 6)
!2638 = !DILocation(line: 364, column: 11, scope: !2637, inlinedAt: !2507)
!2639 = !DILocation(line: 364, column: 6, scope: !2503, inlinedAt: !2507)
!2640 = !DILocation(line: 364, column: 26, scope: !2637, inlinedAt: !2507)
!2641 = !DILocation(line: 365, column: 6, scope: !2642, inlinedAt: !2507)
!2642 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 365, column: 6)
!2643 = !DILocation(line: 365, column: 11, scope: !2642, inlinedAt: !2507)
!2644 = !DILocation(line: 365, column: 6, scope: !2503, inlinedAt: !2507)
!2645 = !DILocation(line: 365, column: 26, scope: !2642, inlinedAt: !2507)
!2646 = !DILocation(line: 366, column: 6, scope: !2647, inlinedAt: !2507)
!2647 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 366, column: 6)
!2648 = !DILocation(line: 366, column: 11, scope: !2647, inlinedAt: !2507)
!2649 = !DILocation(line: 366, column: 6, scope: !2503, inlinedAt: !2507)
!2650 = !DILocation(line: 366, column: 26, scope: !2647, inlinedAt: !2507)
!2651 = !DILocation(line: 367, column: 6, scope: !2652, inlinedAt: !2507)
!2652 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 367, column: 6)
!2653 = !DILocation(line: 367, column: 11, scope: !2652, inlinedAt: !2507)
!2654 = !DILocation(line: 367, column: 6, scope: !2503, inlinedAt: !2507)
!2655 = !DILocation(line: 367, column: 26, scope: !2652, inlinedAt: !2507)
!2656 = !DILocation(line: 368, column: 6, scope: !2657, inlinedAt: !2507)
!2657 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 368, column: 6)
!2658 = !DILocation(line: 368, column: 11, scope: !2657, inlinedAt: !2507)
!2659 = !DILocation(line: 368, column: 6, scope: !2503, inlinedAt: !2507)
!2660 = !DILocation(line: 368, column: 26, scope: !2657, inlinedAt: !2507)
!2661 = !DILocation(line: 369, column: 6, scope: !2662, inlinedAt: !2507)
!2662 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 369, column: 6)
!2663 = !DILocation(line: 369, column: 11, scope: !2662, inlinedAt: !2507)
!2664 = !DILocation(line: 369, column: 6, scope: !2503, inlinedAt: !2507)
!2665 = !DILocation(line: 369, column: 26, scope: !2662, inlinedAt: !2507)
!2666 = !DILocation(line: 370, column: 6, scope: !2667, inlinedAt: !2507)
!2667 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 370, column: 6)
!2668 = !DILocation(line: 370, column: 11, scope: !2667, inlinedAt: !2507)
!2669 = !DILocation(line: 370, column: 6, scope: !2503, inlinedAt: !2507)
!2670 = !DILocation(line: 370, column: 26, scope: !2667, inlinedAt: !2507)
!2671 = !DILocation(line: 371, column: 6, scope: !2672, inlinedAt: !2507)
!2672 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 371, column: 6)
!2673 = !DILocation(line: 371, column: 11, scope: !2672, inlinedAt: !2507)
!2674 = !DILocation(line: 371, column: 6, scope: !2503, inlinedAt: !2507)
!2675 = !DILocation(line: 371, column: 26, scope: !2672, inlinedAt: !2507)
!2676 = !DILocation(line: 372, column: 6, scope: !2677, inlinedAt: !2507)
!2677 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 372, column: 6)
!2678 = !DILocation(line: 372, column: 11, scope: !2677, inlinedAt: !2507)
!2679 = !DILocation(line: 372, column: 6, scope: !2503, inlinedAt: !2507)
!2680 = !DILocation(line: 372, column: 26, scope: !2677, inlinedAt: !2507)
!2681 = !DILocation(line: 373, column: 6, scope: !2682, inlinedAt: !2507)
!2682 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 373, column: 6)
!2683 = !DILocation(line: 373, column: 11, scope: !2682, inlinedAt: !2507)
!2684 = !DILocation(line: 373, column: 6, scope: !2503, inlinedAt: !2507)
!2685 = !DILocation(line: 373, column: 26, scope: !2682, inlinedAt: !2507)
!2686 = !DILocation(line: 374, column: 6, scope: !2687, inlinedAt: !2507)
!2687 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 374, column: 6)
!2688 = !DILocation(line: 374, column: 11, scope: !2687, inlinedAt: !2507)
!2689 = !DILocation(line: 374, column: 6, scope: !2503, inlinedAt: !2507)
!2690 = !DILocation(line: 374, column: 26, scope: !2687, inlinedAt: !2507)
!2691 = !DILocation(line: 375, column: 6, scope: !2692, inlinedAt: !2507)
!2692 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 375, column: 6)
!2693 = !DILocation(line: 375, column: 11, scope: !2692, inlinedAt: !2507)
!2694 = !DILocation(line: 375, column: 6, scope: !2503, inlinedAt: !2507)
!2695 = !DILocation(line: 375, column: 27, scope: !2692, inlinedAt: !2507)
!2696 = !DILocation(line: 376, column: 6, scope: !2697, inlinedAt: !2507)
!2697 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 376, column: 6)
!2698 = !DILocation(line: 376, column: 11, scope: !2697, inlinedAt: !2507)
!2699 = !DILocation(line: 376, column: 6, scope: !2503, inlinedAt: !2507)
!2700 = !DILocation(line: 376, column: 32, scope: !2697, inlinedAt: !2507)
!2701 = !DILocation(line: 377, column: 6, scope: !2702, inlinedAt: !2507)
!2702 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 377, column: 6)
!2703 = !DILocation(line: 377, column: 11, scope: !2702, inlinedAt: !2507)
!2704 = !DILocation(line: 377, column: 6, scope: !2503, inlinedAt: !2507)
!2705 = !DILocation(line: 377, column: 32, scope: !2702, inlinedAt: !2507)
!2706 = !DILocation(line: 378, column: 6, scope: !2707, inlinedAt: !2507)
!2707 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 378, column: 6)
!2708 = !DILocation(line: 378, column: 11, scope: !2707, inlinedAt: !2507)
!2709 = !DILocation(line: 378, column: 6, scope: !2503, inlinedAt: !2507)
!2710 = !DILocation(line: 378, column: 32, scope: !2707, inlinedAt: !2507)
!2711 = !DILocation(line: 379, column: 6, scope: !2712, inlinedAt: !2507)
!2712 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 379, column: 6)
!2713 = !DILocation(line: 379, column: 11, scope: !2712, inlinedAt: !2507)
!2714 = !DILocation(line: 379, column: 6, scope: !2503, inlinedAt: !2507)
!2715 = !DILocation(line: 379, column: 33, scope: !2712, inlinedAt: !2507)
!2716 = !DILocation(line: 380, column: 6, scope: !2717, inlinedAt: !2507)
!2717 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 380, column: 6)
!2718 = !DILocation(line: 380, column: 11, scope: !2717, inlinedAt: !2507)
!2719 = !DILocation(line: 380, column: 6, scope: !2503, inlinedAt: !2507)
!2720 = !DILocation(line: 380, column: 33, scope: !2717, inlinedAt: !2507)
!2721 = !DILocation(line: 381, column: 6, scope: !2722, inlinedAt: !2507)
!2722 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 381, column: 6)
!2723 = !DILocation(line: 381, column: 11, scope: !2722, inlinedAt: !2507)
!2724 = !DILocation(line: 381, column: 6, scope: !2503, inlinedAt: !2507)
!2725 = !DILocation(line: 381, column: 33, scope: !2722, inlinedAt: !2507)
!2726 = !DILocation(line: 382, column: 2, scope: !2727, inlinedAt: !2507)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !6, line: 382, column: 2)
!2728 = distinct !DILexicalBlock(scope: !2503, file: !6, line: 382, column: 2)
!2729 = !{i32 -2144089471, i32 -2144089442, i32 -2144089396, i32 -2144089338, i32 -2144089284, i32 -2144089230, i32 -2144089175, i32 -2144089144}
!2730 = !DILocation(line: 382, column: 2, scope: !2731, inlinedAt: !2507)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !6, line: 382, column: 2)
!2732 = distinct !DILexicalBlock(scope: !2728, file: !6, line: 382, column: 2)
!2733 = !{i32 -2144088701, i32 -2144088694, i32 -2144088640, i32 -2144088609, i32 -2144088579}
!2734 = !DILocation(line: 382, column: 2, scope: !2732, inlinedAt: !2507)
!2735 = !DILocation(line: 386, column: 1, scope: !2503, inlinedAt: !2507)
!2736 = !DILocation(line: 547, column: 9, scope: !2484, inlinedAt: !2489)
!2737 = !DILocation(line: 549, column: 8, scope: !2738, inlinedAt: !2489)
!2738 = distinct !DILexicalBlock(scope: !2484, file: !6, line: 549, column: 7)
!2739 = !DILocation(line: 549, column: 7, scope: !2484, inlinedAt: !2489)
!2740 = !DILocation(line: 550, column: 4, scope: !2738, inlinedAt: !2489)
!2741 = !DILocation(line: 553, column: 33, scope: !2484, inlinedAt: !2489)
!2742 = !DILocation(line: 325, column: 6, scope: !2743, inlinedAt: !2501)
!2743 = distinct !DILexicalBlock(scope: !2497, file: !6, line: 325, column: 6)
!2744 = !DILocation(line: 325, column: 6, scope: !2497, inlinedAt: !2501)
!2745 = !DILocation(line: 326, column: 3, scope: !2743, inlinedAt: !2501)
!2746 = !DILocation(line: 332, column: 9, scope: !2497, inlinedAt: !2501)
!2747 = !DILocation(line: 332, column: 15, scope: !2497, inlinedAt: !2501)
!2748 = !DILocation(line: 332, column: 2, scope: !2497, inlinedAt: !2501)
!2749 = !DILocation(line: 336, column: 1, scope: !2497, inlinedAt: !2501)
!2750 = !DILocation(line: 553, column: 5, scope: !2484, inlinedAt: !2489)
!2751 = !DILocation(line: 553, column: 41, scope: !2484, inlinedAt: !2489)
!2752 = !DILocation(line: 554, column: 5, scope: !2484, inlinedAt: !2489)
!2753 = !DILocation(line: 554, column: 12, scope: !2484, inlinedAt: !2489)
!2754 = !DILocation(line: 448, column: 31, scope: !2479, inlinedAt: !2483)
!2755 = !DILocation(line: 448, column: 34, scope: !2479, inlinedAt: !2483)
!2756 = !DILocation(line: 448, column: 14, scope: !2479, inlinedAt: !2483)
!2757 = !DILocation(line: 450, column: 22, scope: !2479, inlinedAt: !2483)
!2758 = !DILocation(line: 450, column: 25, scope: !2479, inlinedAt: !2483)
!2759 = !DILocation(line: 450, column: 30, scope: !2479, inlinedAt: !2483)
!2760 = !DILocation(line: 450, column: 36, scope: !2479, inlinedAt: !2483)
!2761 = !DILocation(line: 450, column: 8, scope: !2479, inlinedAt: !2483)
!2762 = !DILocation(line: 450, column: 6, scope: !2479, inlinedAt: !2483)
!2763 = !DILocation(line: 451, column: 9, scope: !2479, inlinedAt: !2483)
!2764 = !DILocation(line: 552, column: 3, scope: !2484, inlinedAt: !2489)
!2765 = !DILocation(line: 557, column: 19, scope: !2486, inlinedAt: !2489)
!2766 = !DILocation(line: 557, column: 25, scope: !2486, inlinedAt: !2489)
!2767 = !DILocation(line: 557, column: 9, scope: !2486, inlinedAt: !2489)
!2768 = !DILocation(line: 557, column: 2, scope: !2486, inlinedAt: !2489)
!2769 = !DILocation(line: 558, column: 1, scope: !2486, inlinedAt: !2489)
!2770 = !DILocation(line: 52, column: 2, scope: !2474)
!2771 = distinct !DISubprogram(name: "acpi_os_free", scope: !2475, file: !2475, line: 60, type: !2772, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !870)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{null, !117}
!2774 = !DILocalVariable(name: "memory", arg: 1, scope: !2771, file: !2475, line: 60, type: !117)
!2775 = !DILocation(line: 60, column: 39, scope: !2771)
!2776 = !DILocation(line: 62, column: 8, scope: !2771)
!2777 = !DILocation(line: 62, column: 2, scope: !2771)
!2778 = !DILocation(line: 63, column: 1, scope: !2771)
!2779 = distinct !DISubprogram(name: "acpi_remove_sci_handler", scope: !3, file: !3, line: 463, type: !2780, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !870)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!140, !2379}
!2782 = !DILocalVariable(name: "address", arg: 1, scope: !2779, file: !3, line: 463, type: !2379)
!2783 = !DILocation(line: 463, column: 54, scope: !2779)
!2784 = !DILocalVariable(name: "prev_sci_handler", scope: !2779, file: !3, line: 465, type: !2388)
!2785 = !DILocation(line: 465, column: 32, scope: !2779)
!2786 = !DILocalVariable(name: "next_sci_handler", scope: !2779, file: !3, line: 466, type: !2388)
!2787 = !DILocation(line: 466, column: 32, scope: !2779)
!2788 = !DILocalVariable(name: "flags", scope: !2779, file: !3, line: 467, type: !802)
!2789 = !DILocation(line: 467, column: 17, scope: !2779)
!2790 = !DILocalVariable(name: "status", scope: !2779, file: !3, line: 468, type: !140)
!2791 = !DILocation(line: 468, column: 14, scope: !2779)
!2792 = !DILocation(line: 472, column: 7, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 472, column: 6)
!2794 = !DILocation(line: 472, column: 6, scope: !2779)
!2795 = !DILocation(line: 473, column: 3, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 472, column: 16)
!2797 = !DILocation(line: 476, column: 11, scope: !2779)
!2798 = !DILocation(line: 476, column: 9, scope: !2779)
!2799 = !DILocation(line: 477, column: 6, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 477, column: 6)
!2801 = !DILocation(line: 477, column: 6, scope: !2779)
!2802 = !DILocation(line: 478, column: 3, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 477, column: 28)
!2804 = !DILocation(line: 483, column: 31, scope: !2779)
!2805 = !DILocation(line: 483, column: 10, scope: !2779)
!2806 = !DILocation(line: 483, column: 8, scope: !2779)
!2807 = !DILocation(line: 485, column: 19, scope: !2779)
!2808 = !DILocation(line: 486, column: 21, scope: !2779)
!2809 = !DILocation(line: 486, column: 19, scope: !2779)
!2810 = !DILocation(line: 487, column: 2, scope: !2779)
!2811 = !DILocation(line: 487, column: 9, scope: !2779)
!2812 = !DILocation(line: 488, column: 7, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !3, line: 488, column: 7)
!2814 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 487, column: 27)
!2815 = !DILocation(line: 488, column: 25, scope: !2813)
!2816 = !DILocation(line: 488, column: 36, scope: !2813)
!2817 = !DILocation(line: 488, column: 33, scope: !2813)
!2818 = !DILocation(line: 488, column: 7, scope: !2814)
!2819 = !DILocation(line: 492, column: 8, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 492, column: 8)
!2821 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 488, column: 45)
!2822 = !DILocation(line: 492, column: 8, scope: !2821)
!2823 = !DILocation(line: 493, column: 30, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 492, column: 26)
!2825 = !DILocation(line: 493, column: 48, scope: !2824)
!2826 = !DILocation(line: 493, column: 5, scope: !2824)
!2827 = !DILocation(line: 493, column: 23, scope: !2824)
!2828 = !DILocation(line: 493, column: 28, scope: !2824)
!2829 = !DILocation(line: 494, column: 4, scope: !2824)
!2830 = !DILocation(line: 496, column: 9, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 494, column: 11)
!2832 = !DILocation(line: 496, column: 27, scope: !2831)
!2833 = !DILocation(line: 495, column: 31, scope: !2831)
!2834 = !DILocation(line: 499, column: 25, scope: !2821)
!2835 = !DILocation(line: 499, column: 44, scope: !2821)
!2836 = !DILocation(line: 499, column: 4, scope: !2821)
!2837 = !DILocation(line: 500, column: 4, scope: !2821)
!2838 = !DILocation(line: 501, column: 4, scope: !2821)
!2839 = !DILocation(line: 504, column: 22, scope: !2814)
!2840 = !DILocation(line: 504, column: 20, scope: !2814)
!2841 = !DILocation(line: 505, column: 22, scope: !2814)
!2842 = !DILocation(line: 505, column: 40, scope: !2814)
!2843 = !DILocation(line: 505, column: 20, scope: !2814)
!2844 = distinct !{!2844, !2810, !2845}
!2845 = !DILocation(line: 506, column: 2, scope: !2779)
!2846 = !DILocation(line: 508, column: 23, scope: !2779)
!2847 = !DILocation(line: 508, column: 42, scope: !2779)
!2848 = !DILocation(line: 508, column: 2, scope: !2779)
!2849 = !DILocation(line: 509, column: 9, scope: !2779)
!2850 = !DILocation(line: 509, column: 2, scope: !2779)
!2851 = !DILabel(scope: !2779, name: "unlock_and_exit", file: !3, line: 511)
!2852 = !DILocation(line: 511, column: 1, scope: !2779)
!2853 = !DILocation(line: 512, column: 8, scope: !2779)
!2854 = !DILocation(line: 513, column: 2, scope: !2779)
!2855 = !DILocation(line: 514, column: 1, scope: !2779)
!2856 = distinct !DISubprogram(name: "acpi_install_global_event_handler", scope: !3, file: !3, line: 534, type: !2857, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !870)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!140, !2859, !117}
!2859 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gbl_event_handler", file: !141, line: 1038, baseType: !2860)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{null, !78, !375, !78, !117}
!2863 = !DILocalVariable(name: "handler", arg: 1, scope: !2856, file: !3, line: 534, type: !2859)
!2864 = !DILocation(line: 534, column: 58, scope: !2856)
!2865 = !DILocalVariable(name: "context", arg: 2, scope: !2856, file: !3, line: 534, type: !117)
!2866 = !DILocation(line: 534, column: 73, scope: !2856)
!2867 = !DILocalVariable(name: "status", scope: !2856, file: !3, line: 536, type: !140)
!2868 = !DILocation(line: 536, column: 14, scope: !2856)
!2869 = !DILocation(line: 542, column: 7, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 542, column: 6)
!2871 = !DILocation(line: 542, column: 6, scope: !2856)
!2872 = !DILocation(line: 543, column: 3, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2870, file: !3, line: 542, column: 16)
!2874 = !DILocation(line: 546, column: 11, scope: !2856)
!2875 = !DILocation(line: 546, column: 9, scope: !2856)
!2876 = !DILocation(line: 547, column: 6, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 547, column: 6)
!2878 = !DILocation(line: 547, column: 6, scope: !2856)
!2879 = !DILocation(line: 548, column: 3, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2877, file: !3, line: 547, column: 28)
!2881 = !DILocation(line: 553, column: 6, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 553, column: 6)
!2883 = !DILocation(line: 553, column: 6, scope: !2856)
!2884 = !DILocation(line: 554, column: 10, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 553, column: 37)
!2886 = !DILocation(line: 555, column: 3, scope: !2885)
!2887 = !DILocation(line: 558, column: 34, scope: !2856)
!2888 = !DILocation(line: 558, column: 32, scope: !2856)
!2889 = !DILocation(line: 559, column: 42, scope: !2856)
!2890 = !DILocation(line: 559, column: 40, scope: !2856)
!2891 = !DILocation(line: 559, column: 2, scope: !2856)
!2892 = !DILabel(scope: !2856, name: "cleanup", file: !3, line: 561)
!2893 = !DILocation(line: 561, column: 1, scope: !2856)
!2894 = !DILocation(line: 562, column: 8, scope: !2856)
!2895 = !DILocation(line: 563, column: 2, scope: !2856)
!2896 = !DILocation(line: 564, column: 1, scope: !2856)
!2897 = distinct !DISubprogram(name: "acpi_install_fixed_event_handler", scope: !3, file: !3, line: 584, type: !2898, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !870)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!140, !78, !2900, !117}
!2900 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_event_handler", file: !141, line: 1046, baseType: !2380)
!2901 = !DILocalVariable(name: "event", arg: 1, scope: !2897, file: !3, line: 584, type: !78)
!2902 = !DILocation(line: 584, column: 38, scope: !2897)
!2903 = !DILocalVariable(name: "handler", arg: 2, scope: !2897, file: !3, line: 585, type: !2900)
!2904 = !DILocation(line: 585, column: 25, scope: !2897)
!2905 = !DILocalVariable(name: "context", arg: 3, scope: !2897, file: !3, line: 585, type: !117)
!2906 = !DILocation(line: 585, column: 40, scope: !2897)
!2907 = !DILocalVariable(name: "status", scope: !2897, file: !3, line: 587, type: !140)
!2908 = !DILocation(line: 587, column: 14, scope: !2897)
!2909 = !DILocation(line: 593, column: 6, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 593, column: 6)
!2911 = !DILocation(line: 593, column: 12, scope: !2910)
!2912 = !DILocation(line: 593, column: 6, scope: !2897)
!2913 = !DILocation(line: 594, column: 3, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2910, file: !3, line: 593, column: 30)
!2915 = !DILocation(line: 597, column: 11, scope: !2897)
!2916 = !DILocation(line: 597, column: 9, scope: !2897)
!2917 = !DILocation(line: 598, column: 6, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 598, column: 6)
!2919 = !DILocation(line: 598, column: 6, scope: !2897)
!2920 = !DILocation(line: 599, column: 3, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 598, column: 28)
!2922 = !DILocation(line: 604, column: 36, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 604, column: 6)
!2924 = !DILocation(line: 604, column: 6, scope: !2923)
!2925 = !DILocation(line: 604, column: 43, scope: !2923)
!2926 = !DILocation(line: 604, column: 6, scope: !2897)
!2927 = !DILocation(line: 605, column: 10, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 604, column: 52)
!2929 = !DILocation(line: 606, column: 3, scope: !2928)
!2930 = !DILocation(line: 611, column: 49, scope: !2897)
!2931 = !DILocation(line: 611, column: 32, scope: !2897)
!2932 = !DILocation(line: 611, column: 2, scope: !2897)
!2933 = !DILocation(line: 611, column: 39, scope: !2897)
!2934 = !DILocation(line: 611, column: 47, scope: !2897)
!2935 = !DILocation(line: 612, column: 49, scope: !2897)
!2936 = !DILocation(line: 612, column: 32, scope: !2897)
!2937 = !DILocation(line: 612, column: 2, scope: !2897)
!2938 = !DILocation(line: 612, column: 39, scope: !2897)
!2939 = !DILocation(line: 612, column: 47, scope: !2897)
!2940 = !DILocation(line: 614, column: 28, scope: !2897)
!2941 = !DILocation(line: 614, column: 11, scope: !2897)
!2942 = !DILocation(line: 614, column: 9, scope: !2897)
!2943 = !DILocation(line: 615, column: 6, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 615, column: 6)
!2945 = !DILocation(line: 615, column: 6, scope: !2897)
!2946 = !DILocation(line: 616, column: 30, scope: !2944)
!2947 = !DILocation(line: 616, column: 12, scope: !2944)
!2948 = !DILocation(line: 616, column: 10, scope: !2944)
!2949 = !DILocation(line: 616, column: 3, scope: !2944)
!2950 = !DILocation(line: 617, column: 6, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 617, column: 6)
!2952 = !DILocation(line: 617, column: 6, scope: !2897)
!2953 = !DILocation(line: 618, column: 3, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 617, column: 28)
!2955 = !DILocation(line: 624, column: 33, scope: !2954)
!2956 = !DILocation(line: 624, column: 3, scope: !2954)
!2957 = !DILocation(line: 624, column: 40, scope: !2954)
!2958 = !DILocation(line: 624, column: 48, scope: !2954)
!2959 = !DILocation(line: 625, column: 33, scope: !2954)
!2960 = !DILocation(line: 625, column: 3, scope: !2954)
!2961 = !DILocation(line: 625, column: 40, scope: !2954)
!2962 = !DILocation(line: 625, column: 48, scope: !2954)
!2963 = !DILocation(line: 626, column: 2, scope: !2954)
!2964 = !DILabel(scope: !2897, name: "cleanup", file: !3, line: 633)
!2965 = !DILocation(line: 633, column: 1, scope: !2897)
!2966 = !DILocation(line: 634, column: 8, scope: !2897)
!2967 = !DILocation(line: 635, column: 2, scope: !2897)
!2968 = !DILocation(line: 636, column: 1, scope: !2897)
!2969 = distinct !DISubprogram(name: "acpi_remove_fixed_event_handler", scope: !3, file: !3, line: 653, type: !2970, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !870)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!140, !78, !2900}
!2972 = !DILocalVariable(name: "event", arg: 1, scope: !2969, file: !3, line: 653, type: !78)
!2973 = !DILocation(line: 653, column: 37, scope: !2969)
!2974 = !DILocalVariable(name: "handler", arg: 2, scope: !2969, file: !3, line: 653, type: !2900)
!2975 = !DILocation(line: 653, column: 63, scope: !2969)
!2976 = !DILocalVariable(name: "status", scope: !2969, file: !3, line: 655, type: !140)
!2977 = !DILocation(line: 655, column: 14, scope: !2969)
!2978 = !DILocation(line: 661, column: 6, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 661, column: 6)
!2980 = !DILocation(line: 661, column: 12, scope: !2979)
!2981 = !DILocation(line: 661, column: 6, scope: !2969)
!2982 = !DILocation(line: 662, column: 3, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 661, column: 30)
!2984 = !DILocation(line: 665, column: 11, scope: !2969)
!2985 = !DILocation(line: 665, column: 9, scope: !2969)
!2986 = !DILocation(line: 666, column: 6, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 666, column: 6)
!2988 = !DILocation(line: 666, column: 6, scope: !2969)
!2989 = !DILocation(line: 667, column: 3, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 666, column: 28)
!2991 = !DILocation(line: 672, column: 30, scope: !2969)
!2992 = !DILocation(line: 672, column: 11, scope: !2969)
!2993 = !DILocation(line: 672, column: 9, scope: !2969)
!2994 = !DILocation(line: 676, column: 32, scope: !2969)
!2995 = !DILocation(line: 676, column: 2, scope: !2969)
!2996 = !DILocation(line: 676, column: 39, scope: !2969)
!2997 = !DILocation(line: 676, column: 47, scope: !2969)
!2998 = !DILocation(line: 677, column: 32, scope: !2969)
!2999 = !DILocation(line: 677, column: 2, scope: !2969)
!3000 = !DILocation(line: 677, column: 39, scope: !2969)
!3001 = !DILocation(line: 677, column: 47, scope: !2969)
!3002 = !DILocation(line: 679, column: 6, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 679, column: 6)
!3004 = !DILocation(line: 679, column: 6, scope: !2969)
!3005 = !DILocation(line: 680, column: 3, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 679, column: 28)
!3007 = !DILocation(line: 683, column: 2, scope: !3006)
!3008 = !DILocation(line: 689, column: 8, scope: !2969)
!3009 = !DILocation(line: 690, column: 2, scope: !2969)
!3010 = !DILocation(line: 691, column: 1, scope: !2969)
!3011 = distinct !DISubprogram(name: "acpi_install_gpe_handler", scope: !3, file: !3, line: 840, type: !3012, scopeLine: 843, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !870)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!140, !375, !78, !78, !535, !117}
!3014 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !3011, file: !3, line: 840, type: !375)
!3015 = !DILocation(line: 840, column: 38, scope: !3011)
!3016 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !3011, file: !3, line: 841, type: !78)
!3017 = !DILocation(line: 841, column: 9, scope: !3011)
!3018 = !DILocalVariable(name: "type", arg: 3, scope: !3011, file: !3, line: 842, type: !78)
!3019 = !DILocation(line: 842, column: 9, scope: !3011)
!3020 = !DILocalVariable(name: "address", arg: 4, scope: !3011, file: !3, line: 842, type: !535)
!3021 = !DILocation(line: 842, column: 32, scope: !3011)
!3022 = !DILocalVariable(name: "context", arg: 5, scope: !3011, file: !3, line: 842, type: !117)
!3023 = !DILocation(line: 842, column: 47, scope: !3011)
!3024 = !DILocalVariable(name: "status", scope: !3011, file: !3, line: 844, type: !140)
!3025 = !DILocation(line: 844, column: 14, scope: !3011)
!3026 = !DILocation(line: 848, column: 39, scope: !3011)
!3027 = !DILocation(line: 848, column: 51, scope: !3011)
!3028 = !DILocation(line: 848, column: 63, scope: !3011)
!3029 = !DILocation(line: 849, column: 18, scope: !3011)
!3030 = !DILocation(line: 849, column: 27, scope: !3011)
!3031 = !DILocation(line: 848, column: 11, scope: !3011)
!3032 = !DILocation(line: 848, column: 9, scope: !3011)
!3033 = !DILocation(line: 851, column: 2, scope: !3011)
!3034 = distinct !DISubprogram(name: "acpi_ev_install_gpe_handler", scope: !3, file: !3, line: 716, type: !3035, scopeLine: 721, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !870)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!140, !375, !78, !78, !39, !535, !117}
!3037 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !3034, file: !3, line: 716, type: !375)
!3038 = !DILocation(line: 716, column: 41, scope: !3034)
!3039 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !3034, file: !3, line: 717, type: !78)
!3040 = !DILocation(line: 717, column: 12, scope: !3034)
!3041 = !DILocalVariable(name: "type", arg: 3, scope: !3034, file: !3, line: 718, type: !78)
!3042 = !DILocation(line: 718, column: 12, scope: !3034)
!3043 = !DILocalVariable(name: "is_raw_handler", arg: 4, scope: !3034, file: !3, line: 719, type: !39)
!3044 = !DILocation(line: 719, column: 11, scope: !3034)
!3045 = !DILocalVariable(name: "address", arg: 5, scope: !3034, file: !3, line: 720, type: !535)
!3046 = !DILocation(line: 720, column: 25, scope: !3034)
!3047 = !DILocalVariable(name: "context", arg: 6, scope: !3034, file: !3, line: 720, type: !117)
!3048 = !DILocation(line: 720, column: 40, scope: !3034)
!3049 = !DILocalVariable(name: "gpe_event_info", scope: !3034, file: !3, line: 722, type: !523)
!3050 = !DILocation(line: 722, column: 30, scope: !3034)
!3051 = !DILocalVariable(name: "handler", scope: !3034, file: !3, line: 723, type: !531)
!3052 = !DILocation(line: 723, column: 32, scope: !3034)
!3053 = !DILocalVariable(name: "status", scope: !3034, file: !3, line: 724, type: !140)
!3054 = !DILocation(line: 724, column: 14, scope: !3034)
!3055 = !DILocalVariable(name: "flags", scope: !3034, file: !3, line: 725, type: !802)
!3056 = !DILocation(line: 725, column: 17, scope: !3034)
!3057 = !DILocation(line: 731, column: 8, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 731, column: 6)
!3059 = !DILocation(line: 731, column: 17, scope: !3058)
!3060 = !DILocation(line: 731, column: 21, scope: !3058)
!3061 = !DILocation(line: 731, column: 26, scope: !3058)
!3062 = !DILocation(line: 731, column: 6, scope: !3034)
!3063 = !DILocation(line: 732, column: 3, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 731, column: 56)
!3065 = !DILocation(line: 735, column: 11, scope: !3034)
!3066 = !DILocation(line: 735, column: 9, scope: !3034)
!3067 = !DILocation(line: 736, column: 6, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 736, column: 6)
!3069 = !DILocation(line: 736, column: 6, scope: !3034)
!3070 = !DILocation(line: 737, column: 3, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3068, file: !3, line: 736, column: 28)
!3072 = !DILocation(line: 742, column: 12, scope: !3034)
!3073 = !DILocation(line: 742, column: 10, scope: !3034)
!3074 = !DILocation(line: 743, column: 7, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 743, column: 6)
!3076 = !DILocation(line: 743, column: 6, scope: !3034)
!3077 = !DILocation(line: 744, column: 10, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 743, column: 16)
!3079 = !DILocation(line: 745, column: 3, scope: !3078)
!3080 = !DILocation(line: 748, column: 31, scope: !3034)
!3081 = !DILocation(line: 748, column: 10, scope: !3034)
!3082 = !DILocation(line: 748, column: 8, scope: !3034)
!3083 = !DILocation(line: 752, column: 46, scope: !3034)
!3084 = !DILocation(line: 752, column: 58, scope: !3034)
!3085 = !DILocation(line: 752, column: 19, scope: !3034)
!3086 = !DILocation(line: 752, column: 17, scope: !3034)
!3087 = !DILocation(line: 753, column: 7, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 753, column: 6)
!3089 = !DILocation(line: 753, column: 6, scope: !3034)
!3090 = !DILocation(line: 754, column: 10, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 753, column: 23)
!3092 = !DILocation(line: 755, column: 3, scope: !3091)
!3093 = !DILocation(line: 760, column: 7, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 760, column: 6)
!3095 = !DILocation(line: 760, column: 53, scope: !3094)
!3096 = !DILocation(line: 761, column: 34, scope: !3094)
!3097 = !DILocation(line: 762, column: 7, scope: !3094)
!3098 = !DILocation(line: 762, column: 53, scope: !3094)
!3099 = !DILocation(line: 760, column: 6, scope: !3034)
!3100 = !DILocation(line: 764, column: 10, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 763, column: 39)
!3102 = !DILocation(line: 765, column: 3, scope: !3101)
!3103 = !DILocation(line: 768, column: 21, scope: !3034)
!3104 = !DILocation(line: 768, column: 2, scope: !3034)
!3105 = !DILocation(line: 768, column: 11, scope: !3034)
!3106 = !DILocation(line: 768, column: 19, scope: !3034)
!3107 = !DILocation(line: 769, column: 21, scope: !3034)
!3108 = !DILocation(line: 769, column: 2, scope: !3034)
!3109 = !DILocation(line: 769, column: 11, scope: !3034)
!3110 = !DILocation(line: 769, column: 19, scope: !3034)
!3111 = !DILocation(line: 770, column: 25, scope: !3034)
!3112 = !DILocation(line: 770, column: 41, scope: !3034)
!3113 = !DILocation(line: 770, column: 50, scope: !3034)
!3114 = !DILocation(line: 770, column: 2, scope: !3034)
!3115 = !DILocation(line: 770, column: 11, scope: !3034)
!3116 = !DILocation(line: 770, column: 23, scope: !3034)
!3117 = !DILocation(line: 771, column: 33, scope: !3034)
!3118 = !DILocation(line: 771, column: 49, scope: !3034)
!3119 = !DILocation(line: 771, column: 55, scope: !3034)
!3120 = !DILocation(line: 771, column: 28, scope: !3034)
!3121 = !DILocation(line: 771, column: 2, scope: !3034)
!3122 = !DILocation(line: 771, column: 11, scope: !3034)
!3123 = !DILocation(line: 771, column: 26, scope: !3034)
!3124 = !DILocation(line: 780, column: 8, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 780, column: 6)
!3126 = !DILocation(line: 780, column: 56, scope: !3125)
!3127 = !DILocation(line: 781, column: 34, scope: !3125)
!3128 = !DILocation(line: 782, column: 8, scope: !3125)
!3129 = !DILocation(line: 782, column: 56, scope: !3125)
!3130 = !DILocation(line: 783, column: 35, scope: !3125)
!3131 = !DILocation(line: 783, column: 38, scope: !3125)
!3132 = !DILocation(line: 783, column: 54, scope: !3125)
!3133 = !DILocation(line: 780, column: 6, scope: !3034)
!3134 = !DILocation(line: 784, column: 3, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3125, file: !3, line: 783, column: 69)
!3136 = !DILocation(line: 784, column: 12, scope: !3135)
!3137 = !DILocation(line: 784, column: 31, scope: !3135)
!3138 = !DILocation(line: 785, column: 38, scope: !3135)
!3139 = !DILocation(line: 785, column: 9, scope: !3135)
!3140 = !DILocation(line: 789, column: 7, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 789, column: 7)
!3142 = !DILocation(line: 790, column: 13, scope: !3141)
!3143 = !DILocation(line: 790, column: 29, scope: !3141)
!3144 = !DILocation(line: 790, column: 35, scope: !3141)
!3145 = !DILocation(line: 789, column: 12, scope: !3141)
!3146 = !DILocation(line: 789, column: 7, scope: !3135)
!3147 = !DILocation(line: 791, column: 4, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3141, file: !3, line: 790, column: 64)
!3149 = !DILocation(line: 793, column: 3, scope: !3148)
!3150 = !DILocation(line: 794, column: 2, scope: !3135)
!3151 = !DILocation(line: 798, column: 37, scope: !3034)
!3152 = !DILocation(line: 798, column: 2, scope: !3034)
!3153 = !DILocation(line: 798, column: 18, scope: !3034)
!3154 = !DILocation(line: 798, column: 27, scope: !3034)
!3155 = !DILocation(line: 798, column: 35, scope: !3034)
!3156 = !DILocation(line: 802, column: 2, scope: !3034)
!3157 = !DILocation(line: 802, column: 18, scope: !3034)
!3158 = !DILocation(line: 802, column: 24, scope: !3034)
!3159 = !DILocation(line: 805, column: 11, scope: !3034)
!3160 = !DILocation(line: 806, column: 5, scope: !3034)
!3161 = !DILocation(line: 805, column: 16, scope: !3034)
!3162 = !DILocation(line: 805, column: 6, scope: !3034)
!3163 = !DILocation(line: 804, column: 2, scope: !3034)
!3164 = !DILocation(line: 804, column: 18, scope: !3034)
!3165 = !DILocation(line: 804, column: 24, scope: !3034)
!3166 = !DILocation(line: 809, column: 23, scope: !3034)
!3167 = !DILocation(line: 809, column: 42, scope: !3034)
!3168 = !DILocation(line: 809, column: 2, scope: !3034)
!3169 = !DILabel(scope: !3034, name: "unlock_and_exit", file: !3, line: 811)
!3170 = !DILocation(line: 811, column: 1, scope: !3034)
!3171 = !DILocation(line: 812, column: 8, scope: !3034)
!3172 = !DILocation(line: 813, column: 2, scope: !3034)
!3173 = !DILabel(scope: !3034, name: "free_and_exit", file: !3, line: 815)
!3174 = !DILocation(line: 815, column: 1, scope: !3034)
!3175 = !DILocation(line: 816, column: 23, scope: !3034)
!3176 = !DILocation(line: 816, column: 42, scope: !3034)
!3177 = !DILocation(line: 816, column: 2, scope: !3034)
!3178 = !DILocation(line: 817, column: 2, scope: !3034)
!3179 = !DILocation(line: 818, column: 2, scope: !3034)
!3180 = !DILocation(line: 819, column: 1, scope: !3034)
!3181 = distinct !DISubprogram(name: "acpi_install_gpe_raw_handler", scope: !3, file: !3, line: 874, type: !3012, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !870)
!3182 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !3181, file: !3, line: 874, type: !375)
!3183 = !DILocation(line: 874, column: 42, scope: !3181)
!3184 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !3181, file: !3, line: 875, type: !78)
!3185 = !DILocation(line: 875, column: 13, scope: !3181)
!3186 = !DILocalVariable(name: "type", arg: 3, scope: !3181, file: !3, line: 876, type: !78)
!3187 = !DILocation(line: 876, column: 13, scope: !3181)
!3188 = !DILocalVariable(name: "address", arg: 4, scope: !3181, file: !3, line: 876, type: !535)
!3189 = !DILocation(line: 876, column: 36, scope: !3181)
!3190 = !DILocalVariable(name: "context", arg: 5, scope: !3181, file: !3, line: 876, type: !117)
!3191 = !DILocation(line: 876, column: 51, scope: !3181)
!3192 = !DILocalVariable(name: "status", scope: !3181, file: !3, line: 878, type: !140)
!3193 = !DILocation(line: 878, column: 14, scope: !3181)
!3194 = !DILocation(line: 882, column: 39, scope: !3181)
!3195 = !DILocation(line: 882, column: 51, scope: !3181)
!3196 = !DILocation(line: 882, column: 63, scope: !3181)
!3197 = !DILocation(line: 883, column: 17, scope: !3181)
!3198 = !DILocation(line: 883, column: 26, scope: !3181)
!3199 = !DILocation(line: 882, column: 11, scope: !3181)
!3200 = !DILocation(line: 882, column: 9, scope: !3181)
!3201 = !DILocation(line: 885, column: 2, scope: !3181)
!3202 = distinct !DISubprogram(name: "acpi_remove_gpe_handler", scope: !3, file: !3, line: 905, type: !3203, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !870)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!140, !375, !78, !535}
!3205 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !3202, file: !3, line: 905, type: !375)
!3206 = !DILocation(line: 905, column: 37, scope: !3202)
!3207 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !3202, file: !3, line: 906, type: !78)
!3208 = !DILocation(line: 906, column: 8, scope: !3202)
!3209 = !DILocalVariable(name: "address", arg: 3, scope: !3202, file: !3, line: 906, type: !535)
!3210 = !DILocation(line: 906, column: 37, scope: !3202)
!3211 = !DILocalVariable(name: "gpe_event_info", scope: !3202, file: !3, line: 908, type: !523)
!3212 = !DILocation(line: 908, column: 30, scope: !3202)
!3213 = !DILocalVariable(name: "handler", scope: !3202, file: !3, line: 909, type: !531)
!3214 = !DILocation(line: 909, column: 32, scope: !3202)
!3215 = !DILocalVariable(name: "status", scope: !3202, file: !3, line: 910, type: !140)
!3216 = !DILocation(line: 910, column: 14, scope: !3202)
!3217 = !DILocalVariable(name: "flags", scope: !3202, file: !3, line: 911, type: !802)
!3218 = !DILocation(line: 911, column: 17, scope: !3202)
!3219 = !DILocation(line: 917, column: 7, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 917, column: 6)
!3221 = !DILocation(line: 917, column: 6, scope: !3202)
!3222 = !DILocation(line: 918, column: 3, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3220, file: !3, line: 917, column: 16)
!3224 = !DILocation(line: 921, column: 11, scope: !3202)
!3225 = !DILocation(line: 921, column: 9, scope: !3202)
!3226 = !DILocation(line: 922, column: 6, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 922, column: 6)
!3228 = !DILocation(line: 922, column: 6, scope: !3202)
!3229 = !DILocation(line: 923, column: 3, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 922, column: 28)
!3231 = !DILocation(line: 926, column: 31, scope: !3202)
!3232 = !DILocation(line: 926, column: 10, scope: !3202)
!3233 = !DILocation(line: 926, column: 8, scope: !3202)
!3234 = !DILocation(line: 930, column: 46, scope: !3202)
!3235 = !DILocation(line: 930, column: 58, scope: !3202)
!3236 = !DILocation(line: 930, column: 19, scope: !3202)
!3237 = !DILocation(line: 930, column: 17, scope: !3202)
!3238 = !DILocation(line: 931, column: 7, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 931, column: 6)
!3240 = !DILocation(line: 931, column: 6, scope: !3202)
!3241 = !DILocation(line: 932, column: 10, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3239, file: !3, line: 931, column: 23)
!3243 = !DILocation(line: 933, column: 3, scope: !3242)
!3244 = !DILocation(line: 938, column: 7, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 938, column: 6)
!3246 = !DILocation(line: 938, column: 53, scope: !3245)
!3247 = !DILocation(line: 939, column: 34, scope: !3245)
!3248 = !DILocation(line: 940, column: 7, scope: !3245)
!3249 = !DILocation(line: 940, column: 53, scope: !3245)
!3250 = !DILocation(line: 938, column: 6, scope: !3202)
!3251 = !DILocation(line: 942, column: 10, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 941, column: 39)
!3253 = !DILocation(line: 943, column: 3, scope: !3252)
!3254 = !DILocation(line: 948, column: 6, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 948, column: 6)
!3256 = !DILocation(line: 948, column: 22, scope: !3255)
!3257 = !DILocation(line: 948, column: 31, scope: !3255)
!3258 = !DILocation(line: 948, column: 40, scope: !3255)
!3259 = !DILocation(line: 948, column: 51, scope: !3255)
!3260 = !DILocation(line: 948, column: 48, scope: !3255)
!3261 = !DILocation(line: 948, column: 6, scope: !3202)
!3262 = !DILocation(line: 949, column: 10, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 948, column: 60)
!3264 = !DILocation(line: 950, column: 3, scope: !3263)
!3265 = !DILocation(line: 955, column: 12, scope: !3202)
!3266 = !DILocation(line: 955, column: 28, scope: !3202)
!3267 = !DILocation(line: 955, column: 37, scope: !3202)
!3268 = !DILocation(line: 955, column: 10, scope: !3202)
!3269 = !DILocation(line: 956, column: 2, scope: !3202)
!3270 = !DILocation(line: 956, column: 18, scope: !3202)
!3271 = !DILocation(line: 956, column: 27, scope: !3202)
!3272 = !DILocation(line: 956, column: 35, scope: !3202)
!3273 = !DILocation(line: 960, column: 41, scope: !3202)
!3274 = !DILocation(line: 960, column: 50, scope: !3202)
!3275 = !DILocation(line: 960, column: 2, scope: !3202)
!3276 = !DILocation(line: 960, column: 18, scope: !3202)
!3277 = !DILocation(line: 960, column: 27, scope: !3202)
!3278 = !DILocation(line: 960, column: 39, scope: !3202)
!3279 = !DILocation(line: 961, column: 2, scope: !3202)
!3280 = !DILocation(line: 961, column: 18, scope: !3202)
!3281 = !DILocation(line: 961, column: 24, scope: !3202)
!3282 = !DILocation(line: 963, column: 27, scope: !3202)
!3283 = !DILocation(line: 963, column: 36, scope: !3202)
!3284 = !DILocation(line: 963, column: 2, scope: !3202)
!3285 = !DILocation(line: 963, column: 18, scope: !3202)
!3286 = !DILocation(line: 963, column: 24, scope: !3202)
!3287 = !DILocation(line: 970, column: 8, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 970, column: 6)
!3289 = !DILocation(line: 970, column: 56, scope: !3288)
!3290 = !DILocation(line: 971, column: 34, scope: !3288)
!3291 = !DILocation(line: 972, column: 8, scope: !3288)
!3292 = !DILocation(line: 972, column: 56, scope: !3288)
!3293 = !DILocation(line: 973, column: 35, scope: !3288)
!3294 = !DILocation(line: 973, column: 38, scope: !3288)
!3295 = !DILocation(line: 973, column: 47, scope: !3288)
!3296 = !DILocation(line: 970, column: 6, scope: !3202)
!3297 = !DILocation(line: 974, column: 35, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3288, file: !3, line: 973, column: 67)
!3299 = !DILocation(line: 974, column: 9, scope: !3298)
!3300 = !DILocation(line: 975, column: 7, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 975, column: 7)
!3302 = !DILocation(line: 975, column: 7, scope: !3298)
!3303 = !DILocation(line: 979, column: 25, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 975, column: 51)
!3305 = !DILocation(line: 979, column: 44, scope: !3304)
!3306 = !DILocation(line: 979, column: 4, scope: !3304)
!3307 = !DILocation(line: 980, column: 29, scope: !3304)
!3308 = !DILocation(line: 980, column: 41, scope: !3304)
!3309 = !DILocation(line: 981, column: 8, scope: !3304)
!3310 = !DILocation(line: 980, column: 10, scope: !3304)
!3311 = !DILocation(line: 982, column: 33, scope: !3304)
!3312 = !DILocation(line: 982, column: 12, scope: !3304)
!3313 = !DILocation(line: 982, column: 10, scope: !3304)
!3314 = !DILocation(line: 983, column: 3, scope: !3304)
!3315 = !DILocation(line: 984, column: 2, scope: !3298)
!3316 = !DILocation(line: 986, column: 23, scope: !3202)
!3317 = !DILocation(line: 986, column: 42, scope: !3202)
!3318 = !DILocation(line: 986, column: 2, scope: !3202)
!3319 = !DILocation(line: 987, column: 8, scope: !3202)
!3320 = !DILocation(line: 991, column: 2, scope: !3202)
!3321 = !DILocation(line: 995, column: 2, scope: !3202)
!3322 = !DILocation(line: 996, column: 2, scope: !3202)
!3323 = !DILabel(scope: !3202, name: "unlock_and_exit", file: !3, line: 998)
!3324 = !DILocation(line: 998, column: 1, scope: !3202)
!3325 = !DILocation(line: 999, column: 23, scope: !3202)
!3326 = !DILocation(line: 999, column: 42, scope: !3202)
!3327 = !DILocation(line: 999, column: 2, scope: !3202)
!3328 = !DILocation(line: 1001, column: 8, scope: !3202)
!3329 = !DILocation(line: 1002, column: 2, scope: !3202)
!3330 = !DILocation(line: 1003, column: 1, scope: !3202)
!3331 = distinct !DISubprogram(name: "acpi_acquire_global_lock", scope: !3, file: !3, line: 1026, type: !3332, scopeLine: 1027, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !870)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!140, !46, !1259}
!3334 = !DILocalVariable(name: "timeout", arg: 1, scope: !3331, file: !3, line: 1026, type: !46)
!3335 = !DILocation(line: 1026, column: 42, scope: !3331)
!3336 = !DILocalVariable(name: "handle", arg: 2, scope: !3331, file: !3, line: 1026, type: !1259)
!3337 = !DILocation(line: 1026, column: 56, scope: !3331)
!3338 = !DILocalVariable(name: "status", scope: !3331, file: !3, line: 1028, type: !140)
!3339 = !DILocation(line: 1028, column: 14, scope: !3331)
!3340 = !DILocation(line: 1030, column: 7, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3331, file: !3, line: 1030, column: 6)
!3342 = !DILocation(line: 1030, column: 6, scope: !3331)
!3343 = !DILocation(line: 1031, column: 3, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 1030, column: 15)
!3345 = !DILocation(line: 1036, column: 2, scope: !3331)
!3346 = !DILocation(line: 1038, column: 40, scope: !3331)
!3347 = !DILocation(line: 1039, column: 12, scope: !3331)
!3348 = !DILocation(line: 1040, column: 12, scope: !3331)
!3349 = !DILocation(line: 1038, column: 11, scope: !3331)
!3350 = !DILocation(line: 1038, column: 9, scope: !3331)
!3351 = !DILocation(line: 1042, column: 6, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3331, file: !3, line: 1042, column: 6)
!3353 = !DILocation(line: 1042, column: 6, scope: !3331)
!3354 = !DILocation(line: 1046, column: 13, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 1042, column: 28)
!3356 = !DILocation(line: 1046, column: 4, scope: !3355)
!3357 = !DILocation(line: 1046, column: 11, scope: !3355)
!3358 = !DILocation(line: 1047, column: 2, scope: !3355)
!3359 = !DILocation(line: 1049, column: 2, scope: !3331)
!3360 = !DILocation(line: 1050, column: 10, scope: !3331)
!3361 = !DILocation(line: 1050, column: 2, scope: !3331)
!3362 = !DILocation(line: 1051, column: 1, scope: !3331)
!3363 = distinct !DISubprogram(name: "acpi_os_get_thread_id", scope: !2475, file: !2475, line: 71, type: !3364, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !870)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!63}
!3366 = !DILocalVariable(name: "pscr_ret__", scope: !3367, file: !3368, line: 15, type: !804)
!3367 = distinct !DILexicalBlock(scope: !3369, file: !3368, line: 15, column: 9)
!3368 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!3369 = distinct !DISubprogram(name: "get_current", scope: !3368, file: !3368, line: 13, type: !3370, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !870)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!804}
!3372 = !DILocation(line: 15, column: 9, scope: !3367, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 73, column: 41, scope: !3363)
!3374 = !DILocalVariable(name: "__vpp_verify", scope: !3375, file: !3368, line: 15, type: !3376)
!3375 = distinct !DILexicalBlock(scope: !3367, file: !3368, line: 15, column: 9)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3378 = !DILocation(line: 15, column: 9, scope: !3375, inlinedAt: !3373)
!3379 = !DILocalVariable(name: "pfo_val__", scope: !3380, file: !3368, line: 15, type: !63)
!3380 = distinct !DILexicalBlock(scope: !3367, file: !3368, line: 15, column: 9)
!3381 = !DILocation(line: 15, column: 9, scope: !3380, inlinedAt: !3373)
!3382 = !{i32 -2146476252}
!3383 = !DILocation(line: 73, column: 26, scope: !3363)
!3384 = !DILocation(line: 73, column: 2, scope: !3363)
!3385 = distinct !DISubprogram(name: "acpi_release_global_lock", scope: !3, file: !3, line: 1066, type: !3386, scopeLine: 1067, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !870)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!140, !78}
!3388 = !DILocalVariable(name: "handle", arg: 1, scope: !3385, file: !3, line: 1066, type: !78)
!3389 = !DILocation(line: 1066, column: 42, scope: !3385)
!3390 = !DILocalVariable(name: "status", scope: !3385, file: !3, line: 1068, type: !140)
!3391 = !DILocation(line: 1068, column: 14, scope: !3385)
!3392 = !DILocation(line: 1070, column: 7, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 1070, column: 6)
!3394 = !DILocation(line: 1070, column: 14, scope: !3393)
!3395 = !DILocation(line: 1070, column: 18, scope: !3393)
!3396 = !DILocation(line: 1070, column: 28, scope: !3393)
!3397 = !DILocation(line: 1070, column: 25, scope: !3393)
!3398 = !DILocation(line: 1070, column: 6, scope: !3385)
!3399 = !DILocation(line: 1071, column: 3, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3393, file: !3, line: 1070, column: 58)
!3401 = !DILocation(line: 1074, column: 40, scope: !3385)
!3402 = !DILocation(line: 1074, column: 11, scope: !3385)
!3403 = !DILocation(line: 1074, column: 9, scope: !3385)
!3404 = !DILocation(line: 1075, column: 10, scope: !3385)
!3405 = !DILocation(line: 1075, column: 2, scope: !3385)
!3406 = !DILocation(line: 1076, column: 1, scope: !3385)
!3407 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !3408, file: !3408, line: 646, type: !3409, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !870)
!3408 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!802}
!3411 = !DILocalVariable(name: "__ret", scope: !3412, file: !3408, line: 648, type: !802)
!3412 = distinct !DILexicalBlock(scope: !3407, file: !3408, line: 648, column: 9)
!3413 = !DILocation(line: 648, column: 9, scope: !3412)
!3414 = !DILocalVariable(name: "__edi", scope: !3412, file: !3408, line: 648, type: !802)
!3415 = !DILocalVariable(name: "__esi", scope: !3412, file: !3408, line: 648, type: !802)
!3416 = !DILocalVariable(name: "__edx", scope: !3412, file: !3408, line: 648, type: !802)
!3417 = !DILocalVariable(name: "__ecx", scope: !3412, file: !3408, line: 648, type: !802)
!3418 = !DILocalVariable(name: "__eax", scope: !3412, file: !3408, line: 648, type: !802)
!3419 = !DILocation(line: 648, column: 9, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !3408, line: 648, column: 9)
!3421 = distinct !DILexicalBlock(scope: !3412, file: !3408, line: 648, column: 9)
!3422 = !{i32 -2145763077, i32 -2145760762, i32 -2145760528, i32 -2145760477, i32 -2145760449, i32 -2145760424, i32 -2145760740, i32 -2145760727, i32 -2145760289, i32 -2145760170, i32 -2145760635, i32 -2145760608, i32 -2145760580, i32 -2145760550}
!3423 = !DILocalVariable(name: "__mask", scope: !3424, file: !3408, line: 648, type: !802)
!3424 = distinct !DILexicalBlock(scope: !3420, file: !3408, line: 648, column: 9)
!3425 = !DILocation(line: 648, column: 9, scope: !3424)
!3426 = !DILocation(line: 648, column: 9, scope: !3421)
!3427 = !DILocation(line: 648, column: 2, scope: !3407)
!3428 = distinct !DISubprogram(name: "get_order", scope: !3429, file: !3429, line: 29, type: !2536, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !870)
!3429 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3430 = !DILocalVariable(name: "x", arg: 1, scope: !3431, file: !3432, line: 366, type: !64)
!3431 = distinct !DISubprogram(name: "fls64", scope: !3432, file: !3432, line: 366, type: !3433, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !870)
!3432 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!828, !64}
!3435 = !DILocation(line: 366, column: 40, scope: !3431, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 46, column: 9, scope: !3428)
!3437 = !DILocalVariable(name: "bitpos", scope: !3431, file: !3432, line: 368, type: !828)
!3438 = !DILocation(line: 368, column: 6, scope: !3431, inlinedAt: !3436)
!3439 = !DILocalVariable(name: "size", arg: 1, scope: !3428, file: !3429, line: 29, type: !802)
!3440 = !DILocation(line: 29, column: 63, scope: !3428)
!3441 = !DILocation(line: 31, column: 27, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3428, file: !3429, line: 31, column: 6)
!3443 = !DILocation(line: 31, column: 6, scope: !3442)
!3444 = !DILocation(line: 31, column: 6, scope: !3428)
!3445 = !DILocation(line: 32, column: 8, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !3429, line: 32, column: 7)
!3447 = distinct !DILexicalBlock(scope: !3442, file: !3429, line: 31, column: 34)
!3448 = !DILocation(line: 32, column: 7, scope: !3447)
!3449 = !DILocation(line: 33, column: 4, scope: !3446)
!3450 = !DILocation(line: 35, column: 7, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3447, file: !3429, line: 35, column: 7)
!3452 = !DILocation(line: 35, column: 12, scope: !3451)
!3453 = !DILocation(line: 35, column: 7, scope: !3447)
!3454 = !DILocation(line: 36, column: 4, scope: !3451)
!3455 = !DILocation(line: 38, column: 10, scope: !3447)
!3456 = !DILocation(line: 38, column: 28, scope: !3447)
!3457 = !DILocation(line: 38, column: 41, scope: !3447)
!3458 = !DILocation(line: 38, column: 3, scope: !3447)
!3459 = !DILocation(line: 41, column: 6, scope: !3428)
!3460 = !DILocation(line: 42, column: 7, scope: !3428)
!3461 = !DILocation(line: 46, column: 15, scope: !3428)
!3462 = !DILocation(line: 374, column: 2, scope: !3431, inlinedAt: !3436)
!3463 = !DILocation(line: 376, column: 14, scope: !3431, inlinedAt: !3436)
!3464 = !{i32 681731}
!3465 = !DILocation(line: 377, column: 9, scope: !3431, inlinedAt: !3436)
!3466 = !DILocation(line: 377, column: 16, scope: !3431, inlinedAt: !3436)
!3467 = !DILocation(line: 46, column: 2, scope: !3428)
!3468 = !DILocation(line: 48, column: 1, scope: !3428)
!3469 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3470, file: !3470, line: 30, type: !3471, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !870)
!3470 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!828, !63}
!3473 = !DILocation(line: 366, column: 40, scope: !3431, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 32, column: 9, scope: !3469)
!3475 = !DILocation(line: 368, column: 6, scope: !3431, inlinedAt: !3474)
!3476 = !DILocalVariable(name: "n", arg: 1, scope: !3469, file: !3470, line: 30, type: !63)
!3477 = !DILocation(line: 30, column: 21, scope: !3469)
!3478 = !DILocation(line: 32, column: 15, scope: !3469)
!3479 = !DILocation(line: 374, column: 2, scope: !3431, inlinedAt: !3474)
!3480 = !DILocation(line: 376, column: 14, scope: !3431, inlinedAt: !3474)
!3481 = !DILocation(line: 377, column: 9, scope: !3431, inlinedAt: !3474)
!3482 = !DILocation(line: 377, column: 16, scope: !3431, inlinedAt: !3474)
!3483 = !DILocation(line: 32, column: 18, scope: !3469)
!3484 = !DILocation(line: 32, column: 2, scope: !3469)
!3485 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3486, file: !3486, line: 137, type: !3487, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !870)
!3486 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!117, !1668, !3376, !1449, !800}
!3489 = !DILocalVariable(name: "s", arg: 1, scope: !3485, file: !3486, line: 137, type: !1668)
!3490 = !DILocation(line: 137, column: 54, scope: !3485)
!3491 = !DILocalVariable(name: "object", arg: 2, scope: !3485, file: !3486, line: 137, type: !3376)
!3492 = !DILocation(line: 137, column: 69, scope: !3485)
!3493 = !DILocalVariable(name: "size", arg: 3, scope: !3485, file: !3486, line: 138, type: !1449)
!3494 = !DILocation(line: 138, column: 12, scope: !3485)
!3495 = !DILocalVariable(name: "flags", arg: 4, scope: !3485, file: !3486, line: 138, type: !800)
!3496 = !DILocation(line: 138, column: 24, scope: !3485)
!3497 = !DILocation(line: 140, column: 17, scope: !3485)
!3498 = !DILocation(line: 140, column: 2, scope: !3485)
!3499 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !2475, file: !2475, line: 55, type: !2476, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !870)
!3500 = !DILocation(line: 162, column: 67, scope: !2534, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 57, column: 23, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3503, file: !2475, line: 57, column: 23)
!3503 = distinct !DILexicalBlock(scope: !3499, file: !2475, line: 57, column: 23)
!3504 = !DILocalVariable(name: "size", arg: 1, scope: !3499, file: !2475, line: 55, type: !799)
!3505 = !DILocation(line: 55, column: 55, scope: !3499)
!3506 = !DILocation(line: 57, column: 17, scope: !3499)
!3507 = !DILocalVariable(name: "_flags", scope: !3503, file: !2475, line: 57, type: !802)
!3508 = !DILocation(line: 57, column: 23, scope: !3503)
!3509 = !DILocalVariable(name: "__dummy", scope: !3510, file: !2475, line: 57, type: !802)
!3510 = distinct !DILexicalBlock(scope: !3511, file: !2475, line: 57, column: 23)
!3511 = distinct !DILexicalBlock(scope: !3503, file: !2475, line: 57, column: 23)
!3512 = !DILocation(line: 57, column: 23, scope: !3510)
!3513 = !DILocalVariable(name: "__dummy2", scope: !3510, file: !2475, line: 57, type: !802)
!3514 = !DILocation(line: 57, column: 23, scope: !3511)
!3515 = !DILocalVariable(name: "__dummy", scope: !3516, file: !2475, line: 57, type: !802)
!3516 = distinct !DILexicalBlock(scope: !3502, file: !2475, line: 57, column: 23)
!3517 = !DILocation(line: 57, column: 23, scope: !3516)
!3518 = !DILocalVariable(name: "__dummy2", scope: !3516, file: !2475, line: 57, type: !802)
!3519 = !DILocation(line: 57, column: 23, scope: !3502)
!3520 = !DILocation(line: 164, column: 11, scope: !2534, inlinedAt: !3501)
!3521 = !DILocation(line: 164, column: 17, scope: !2534, inlinedAt: !3501)
!3522 = !DILocation(line: 164, column: 9, scope: !2534, inlinedAt: !3501)
!3523 = !DILocation(line: 57, column: 23, scope: !3499)
!3524 = !DILocation(line: 57, column: 9, scope: !3499)
!3525 = !DILocation(line: 57, column: 2, scope: !3499)
!3526 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !2487, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !870)
!3527 = !DILocation(line: 445, column: 72, scope: !2479, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 552, column: 10, scope: !2484, inlinedAt: !3529)
!3529 = distinct !DILocation(line: 664, column: 9, scope: !3526)
!3530 = !DILocation(line: 446, column: 9, scope: !2479, inlinedAt: !3528)
!3531 = !DILocation(line: 446, column: 23, scope: !2479, inlinedAt: !3528)
!3532 = !DILocation(line: 448, column: 8, scope: !2479, inlinedAt: !3528)
!3533 = !DILocation(line: 318, column: 67, scope: !2497, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 553, column: 20, scope: !2484, inlinedAt: !3529)
!3535 = !DILocation(line: 346, column: 58, scope: !2503, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 547, column: 11, scope: !2484, inlinedAt: !3529)
!3537 = !DILocation(line: 472, column: 28, scope: !2509, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 481, column: 9, scope: !2514, inlinedAt: !3539)
!3539 = distinct !DILocation(line: 545, column: 11, scope: !2516, inlinedAt: !3529)
!3540 = !DILocation(line: 472, column: 40, scope: !2509, inlinedAt: !3538)
!3541 = !DILocation(line: 472, column: 60, scope: !2509, inlinedAt: !3538)
!3542 = !DILocation(line: 478, column: 51, scope: !2514, inlinedAt: !3539)
!3543 = !DILocation(line: 478, column: 63, scope: !2514, inlinedAt: !3539)
!3544 = !DILocation(line: 480, column: 15, scope: !2514, inlinedAt: !3539)
!3545 = !DILocation(line: 538, column: 45, scope: !2486, inlinedAt: !3529)
!3546 = !DILocation(line: 538, column: 57, scope: !2486, inlinedAt: !3529)
!3547 = !DILocation(line: 542, column: 16, scope: !2484, inlinedAt: !3529)
!3548 = !DILocalVariable(name: "size", arg: 1, scope: !3526, file: !6, line: 662, type: !1449)
!3549 = !DILocation(line: 662, column: 36, scope: !3526)
!3550 = !DILocalVariable(name: "flags", arg: 2, scope: !3526, file: !6, line: 662, type: !800)
!3551 = !DILocation(line: 662, column: 48, scope: !3526)
!3552 = !DILocation(line: 664, column: 17, scope: !3526)
!3553 = !DILocation(line: 664, column: 23, scope: !3526)
!3554 = !DILocation(line: 664, column: 29, scope: !3526)
!3555 = !DILocation(line: 540, column: 27, scope: !2485, inlinedAt: !3529)
!3556 = !DILocation(line: 540, column: 6, scope: !2485, inlinedAt: !3529)
!3557 = !DILocation(line: 540, column: 6, scope: !2486, inlinedAt: !3529)
!3558 = !DILocation(line: 544, column: 7, scope: !2516, inlinedAt: !3529)
!3559 = !DILocation(line: 544, column: 12, scope: !2516, inlinedAt: !3529)
!3560 = !DILocation(line: 544, column: 7, scope: !2484, inlinedAt: !3529)
!3561 = !DILocation(line: 545, column: 25, scope: !2516, inlinedAt: !3529)
!3562 = !DILocation(line: 545, column: 31, scope: !2516, inlinedAt: !3529)
!3563 = !DILocation(line: 480, column: 33, scope: !2514, inlinedAt: !3539)
!3564 = !DILocation(line: 480, column: 23, scope: !2514, inlinedAt: !3539)
!3565 = !DILocation(line: 481, column: 29, scope: !2514, inlinedAt: !3539)
!3566 = !DILocation(line: 481, column: 35, scope: !2514, inlinedAt: !3539)
!3567 = !DILocation(line: 481, column: 42, scope: !2514, inlinedAt: !3539)
!3568 = !DILocation(line: 474, column: 23, scope: !2509, inlinedAt: !3538)
!3569 = !DILocation(line: 474, column: 29, scope: !2509, inlinedAt: !3538)
!3570 = !DILocation(line: 474, column: 36, scope: !2509, inlinedAt: !3538)
!3571 = !DILocation(line: 474, column: 9, scope: !2509, inlinedAt: !3538)
!3572 = !DILocation(line: 545, column: 4, scope: !2516, inlinedAt: !3529)
!3573 = !DILocation(line: 547, column: 25, scope: !2484, inlinedAt: !3529)
!3574 = !DILocation(line: 348, column: 7, scope: !2582, inlinedAt: !3536)
!3575 = !DILocation(line: 348, column: 6, scope: !2503, inlinedAt: !3536)
!3576 = !DILocation(line: 349, column: 3, scope: !2582, inlinedAt: !3536)
!3577 = !DILocation(line: 351, column: 6, scope: !2586, inlinedAt: !3536)
!3578 = !DILocation(line: 351, column: 11, scope: !2586, inlinedAt: !3536)
!3579 = !DILocation(line: 351, column: 6, scope: !2503, inlinedAt: !3536)
!3580 = !DILocation(line: 352, column: 3, scope: !2586, inlinedAt: !3536)
!3581 = !DILocation(line: 354, column: 32, scope: !2591, inlinedAt: !3536)
!3582 = !DILocation(line: 354, column: 37, scope: !2591, inlinedAt: !3536)
!3583 = !DILocation(line: 354, column: 42, scope: !2591, inlinedAt: !3536)
!3584 = !DILocation(line: 354, column: 45, scope: !2591, inlinedAt: !3536)
!3585 = !DILocation(line: 354, column: 50, scope: !2591, inlinedAt: !3536)
!3586 = !DILocation(line: 354, column: 6, scope: !2503, inlinedAt: !3536)
!3587 = !DILocation(line: 355, column: 3, scope: !2591, inlinedAt: !3536)
!3588 = !DILocation(line: 356, column: 32, scope: !2599, inlinedAt: !3536)
!3589 = !DILocation(line: 356, column: 37, scope: !2599, inlinedAt: !3536)
!3590 = !DILocation(line: 356, column: 43, scope: !2599, inlinedAt: !3536)
!3591 = !DILocation(line: 356, column: 46, scope: !2599, inlinedAt: !3536)
!3592 = !DILocation(line: 356, column: 51, scope: !2599, inlinedAt: !3536)
!3593 = !DILocation(line: 356, column: 6, scope: !2503, inlinedAt: !3536)
!3594 = !DILocation(line: 357, column: 3, scope: !2599, inlinedAt: !3536)
!3595 = !DILocation(line: 358, column: 6, scope: !2607, inlinedAt: !3536)
!3596 = !DILocation(line: 358, column: 11, scope: !2607, inlinedAt: !3536)
!3597 = !DILocation(line: 358, column: 6, scope: !2503, inlinedAt: !3536)
!3598 = !DILocation(line: 358, column: 26, scope: !2607, inlinedAt: !3536)
!3599 = !DILocation(line: 359, column: 6, scope: !2612, inlinedAt: !3536)
!3600 = !DILocation(line: 359, column: 11, scope: !2612, inlinedAt: !3536)
!3601 = !DILocation(line: 359, column: 6, scope: !2503, inlinedAt: !3536)
!3602 = !DILocation(line: 359, column: 26, scope: !2612, inlinedAt: !3536)
!3603 = !DILocation(line: 360, column: 6, scope: !2617, inlinedAt: !3536)
!3604 = !DILocation(line: 360, column: 11, scope: !2617, inlinedAt: !3536)
!3605 = !DILocation(line: 360, column: 6, scope: !2503, inlinedAt: !3536)
!3606 = !DILocation(line: 360, column: 26, scope: !2617, inlinedAt: !3536)
!3607 = !DILocation(line: 361, column: 6, scope: !2622, inlinedAt: !3536)
!3608 = !DILocation(line: 361, column: 11, scope: !2622, inlinedAt: !3536)
!3609 = !DILocation(line: 361, column: 6, scope: !2503, inlinedAt: !3536)
!3610 = !DILocation(line: 361, column: 26, scope: !2622, inlinedAt: !3536)
!3611 = !DILocation(line: 362, column: 6, scope: !2627, inlinedAt: !3536)
!3612 = !DILocation(line: 362, column: 11, scope: !2627, inlinedAt: !3536)
!3613 = !DILocation(line: 362, column: 6, scope: !2503, inlinedAt: !3536)
!3614 = !DILocation(line: 362, column: 26, scope: !2627, inlinedAt: !3536)
!3615 = !DILocation(line: 363, column: 6, scope: !2632, inlinedAt: !3536)
!3616 = !DILocation(line: 363, column: 11, scope: !2632, inlinedAt: !3536)
!3617 = !DILocation(line: 363, column: 6, scope: !2503, inlinedAt: !3536)
!3618 = !DILocation(line: 363, column: 26, scope: !2632, inlinedAt: !3536)
!3619 = !DILocation(line: 364, column: 6, scope: !2637, inlinedAt: !3536)
!3620 = !DILocation(line: 364, column: 11, scope: !2637, inlinedAt: !3536)
!3621 = !DILocation(line: 364, column: 6, scope: !2503, inlinedAt: !3536)
!3622 = !DILocation(line: 364, column: 26, scope: !2637, inlinedAt: !3536)
!3623 = !DILocation(line: 365, column: 6, scope: !2642, inlinedAt: !3536)
!3624 = !DILocation(line: 365, column: 11, scope: !2642, inlinedAt: !3536)
!3625 = !DILocation(line: 365, column: 6, scope: !2503, inlinedAt: !3536)
!3626 = !DILocation(line: 365, column: 26, scope: !2642, inlinedAt: !3536)
!3627 = !DILocation(line: 366, column: 6, scope: !2647, inlinedAt: !3536)
!3628 = !DILocation(line: 366, column: 11, scope: !2647, inlinedAt: !3536)
!3629 = !DILocation(line: 366, column: 6, scope: !2503, inlinedAt: !3536)
!3630 = !DILocation(line: 366, column: 26, scope: !2647, inlinedAt: !3536)
!3631 = !DILocation(line: 367, column: 6, scope: !2652, inlinedAt: !3536)
!3632 = !DILocation(line: 367, column: 11, scope: !2652, inlinedAt: !3536)
!3633 = !DILocation(line: 367, column: 6, scope: !2503, inlinedAt: !3536)
!3634 = !DILocation(line: 367, column: 26, scope: !2652, inlinedAt: !3536)
!3635 = !DILocation(line: 368, column: 6, scope: !2657, inlinedAt: !3536)
!3636 = !DILocation(line: 368, column: 11, scope: !2657, inlinedAt: !3536)
!3637 = !DILocation(line: 368, column: 6, scope: !2503, inlinedAt: !3536)
!3638 = !DILocation(line: 368, column: 26, scope: !2657, inlinedAt: !3536)
!3639 = !DILocation(line: 369, column: 6, scope: !2662, inlinedAt: !3536)
!3640 = !DILocation(line: 369, column: 11, scope: !2662, inlinedAt: !3536)
!3641 = !DILocation(line: 369, column: 6, scope: !2503, inlinedAt: !3536)
!3642 = !DILocation(line: 369, column: 26, scope: !2662, inlinedAt: !3536)
!3643 = !DILocation(line: 370, column: 6, scope: !2667, inlinedAt: !3536)
!3644 = !DILocation(line: 370, column: 11, scope: !2667, inlinedAt: !3536)
!3645 = !DILocation(line: 370, column: 6, scope: !2503, inlinedAt: !3536)
!3646 = !DILocation(line: 370, column: 26, scope: !2667, inlinedAt: !3536)
!3647 = !DILocation(line: 371, column: 6, scope: !2672, inlinedAt: !3536)
!3648 = !DILocation(line: 371, column: 11, scope: !2672, inlinedAt: !3536)
!3649 = !DILocation(line: 371, column: 6, scope: !2503, inlinedAt: !3536)
!3650 = !DILocation(line: 371, column: 26, scope: !2672, inlinedAt: !3536)
!3651 = !DILocation(line: 372, column: 6, scope: !2677, inlinedAt: !3536)
!3652 = !DILocation(line: 372, column: 11, scope: !2677, inlinedAt: !3536)
!3653 = !DILocation(line: 372, column: 6, scope: !2503, inlinedAt: !3536)
!3654 = !DILocation(line: 372, column: 26, scope: !2677, inlinedAt: !3536)
!3655 = !DILocation(line: 373, column: 6, scope: !2682, inlinedAt: !3536)
!3656 = !DILocation(line: 373, column: 11, scope: !2682, inlinedAt: !3536)
!3657 = !DILocation(line: 373, column: 6, scope: !2503, inlinedAt: !3536)
!3658 = !DILocation(line: 373, column: 26, scope: !2682, inlinedAt: !3536)
!3659 = !DILocation(line: 374, column: 6, scope: !2687, inlinedAt: !3536)
!3660 = !DILocation(line: 374, column: 11, scope: !2687, inlinedAt: !3536)
!3661 = !DILocation(line: 374, column: 6, scope: !2503, inlinedAt: !3536)
!3662 = !DILocation(line: 374, column: 26, scope: !2687, inlinedAt: !3536)
!3663 = !DILocation(line: 375, column: 6, scope: !2692, inlinedAt: !3536)
!3664 = !DILocation(line: 375, column: 11, scope: !2692, inlinedAt: !3536)
!3665 = !DILocation(line: 375, column: 6, scope: !2503, inlinedAt: !3536)
!3666 = !DILocation(line: 375, column: 27, scope: !2692, inlinedAt: !3536)
!3667 = !DILocation(line: 376, column: 6, scope: !2697, inlinedAt: !3536)
!3668 = !DILocation(line: 376, column: 11, scope: !2697, inlinedAt: !3536)
!3669 = !DILocation(line: 376, column: 6, scope: !2503, inlinedAt: !3536)
!3670 = !DILocation(line: 376, column: 32, scope: !2697, inlinedAt: !3536)
!3671 = !DILocation(line: 377, column: 6, scope: !2702, inlinedAt: !3536)
!3672 = !DILocation(line: 377, column: 11, scope: !2702, inlinedAt: !3536)
!3673 = !DILocation(line: 377, column: 6, scope: !2503, inlinedAt: !3536)
!3674 = !DILocation(line: 377, column: 32, scope: !2702, inlinedAt: !3536)
!3675 = !DILocation(line: 378, column: 6, scope: !2707, inlinedAt: !3536)
!3676 = !DILocation(line: 378, column: 11, scope: !2707, inlinedAt: !3536)
!3677 = !DILocation(line: 378, column: 6, scope: !2503, inlinedAt: !3536)
!3678 = !DILocation(line: 378, column: 32, scope: !2707, inlinedAt: !3536)
!3679 = !DILocation(line: 379, column: 6, scope: !2712, inlinedAt: !3536)
!3680 = !DILocation(line: 379, column: 11, scope: !2712, inlinedAt: !3536)
!3681 = !DILocation(line: 379, column: 6, scope: !2503, inlinedAt: !3536)
!3682 = !DILocation(line: 379, column: 33, scope: !2712, inlinedAt: !3536)
!3683 = !DILocation(line: 380, column: 6, scope: !2717, inlinedAt: !3536)
!3684 = !DILocation(line: 380, column: 11, scope: !2717, inlinedAt: !3536)
!3685 = !DILocation(line: 380, column: 6, scope: !2503, inlinedAt: !3536)
!3686 = !DILocation(line: 380, column: 33, scope: !2717, inlinedAt: !3536)
!3687 = !DILocation(line: 381, column: 6, scope: !2722, inlinedAt: !3536)
!3688 = !DILocation(line: 381, column: 11, scope: !2722, inlinedAt: !3536)
!3689 = !DILocation(line: 381, column: 6, scope: !2503, inlinedAt: !3536)
!3690 = !DILocation(line: 381, column: 33, scope: !2722, inlinedAt: !3536)
!3691 = !DILocation(line: 382, column: 2, scope: !2727, inlinedAt: !3536)
!3692 = !DILocation(line: 382, column: 2, scope: !2731, inlinedAt: !3536)
!3693 = !DILocation(line: 382, column: 2, scope: !2732, inlinedAt: !3536)
!3694 = !DILocation(line: 386, column: 1, scope: !2503, inlinedAt: !3536)
!3695 = !DILocation(line: 547, column: 9, scope: !2484, inlinedAt: !3529)
!3696 = !DILocation(line: 549, column: 8, scope: !2738, inlinedAt: !3529)
!3697 = !DILocation(line: 549, column: 7, scope: !2484, inlinedAt: !3529)
!3698 = !DILocation(line: 550, column: 4, scope: !2738, inlinedAt: !3529)
!3699 = !DILocation(line: 553, column: 33, scope: !2484, inlinedAt: !3529)
!3700 = !DILocation(line: 325, column: 6, scope: !2743, inlinedAt: !3534)
!3701 = !DILocation(line: 325, column: 6, scope: !2497, inlinedAt: !3534)
!3702 = !DILocation(line: 326, column: 3, scope: !2743, inlinedAt: !3534)
!3703 = !DILocation(line: 332, column: 9, scope: !2497, inlinedAt: !3534)
!3704 = !DILocation(line: 332, column: 15, scope: !2497, inlinedAt: !3534)
!3705 = !DILocation(line: 332, column: 2, scope: !2497, inlinedAt: !3534)
!3706 = !DILocation(line: 336, column: 1, scope: !2497, inlinedAt: !3534)
!3707 = !DILocation(line: 553, column: 5, scope: !2484, inlinedAt: !3529)
!3708 = !DILocation(line: 553, column: 41, scope: !2484, inlinedAt: !3529)
!3709 = !DILocation(line: 554, column: 5, scope: !2484, inlinedAt: !3529)
!3710 = !DILocation(line: 554, column: 12, scope: !2484, inlinedAt: !3529)
!3711 = !DILocation(line: 448, column: 31, scope: !2479, inlinedAt: !3528)
!3712 = !DILocation(line: 448, column: 34, scope: !2479, inlinedAt: !3528)
!3713 = !DILocation(line: 448, column: 14, scope: !2479, inlinedAt: !3528)
!3714 = !DILocation(line: 450, column: 22, scope: !2479, inlinedAt: !3528)
!3715 = !DILocation(line: 450, column: 25, scope: !2479, inlinedAt: !3528)
!3716 = !DILocation(line: 450, column: 30, scope: !2479, inlinedAt: !3528)
!3717 = !DILocation(line: 450, column: 36, scope: !2479, inlinedAt: !3528)
!3718 = !DILocation(line: 450, column: 8, scope: !2479, inlinedAt: !3528)
!3719 = !DILocation(line: 450, column: 6, scope: !2479, inlinedAt: !3528)
!3720 = !DILocation(line: 451, column: 9, scope: !2479, inlinedAt: !3528)
!3721 = !DILocation(line: 552, column: 3, scope: !2484, inlinedAt: !3529)
!3722 = !DILocation(line: 557, column: 19, scope: !2486, inlinedAt: !3529)
!3723 = !DILocation(line: 557, column: 25, scope: !2486, inlinedAt: !3529)
!3724 = !DILocation(line: 557, column: 9, scope: !2486, inlinedAt: !3529)
!3725 = !DILocation(line: 557, column: 2, scope: !2486, inlinedAt: !3529)
!3726 = !DILocation(line: 558, column: 1, scope: !2486, inlinedAt: !3529)
!3727 = !DILocation(line: 664, column: 2, scope: !3526)
