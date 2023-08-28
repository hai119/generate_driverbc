; ModuleID = '../bcout/drivers/acpi/acpica/nsxfname.llvm.bc'
source_filename = "drivers/acpi/acpica/nsxfname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%struct.acpi_buffer = type { i64, i8* }
%struct.acpi_device_info = type { i32, i32, i32, i8, i16, i8, [4 x i8], [5 x i8], i64, %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id_list }
%struct.acpi_pnp_device_id = type { i32, i8* }
%struct.acpi_pnp_device_id_list = type { i32, i32, [0 x %struct.acpi_pnp_device_id] }
%struct.acpi_object_method = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %union.acpi_operand_object*, %union.acpi_operand_object*, i8*, %union.anon, i32, i16, i8 }
%union.anon = type { i32 (%struct.acpi_walk_state*)* }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }

@.str = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@acpi_gbl_root_node = external dso_local global %struct.acpi_namespace_node*, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"_ADR\00", align 1
@acpi_gbl_lowest_dstate_names = external dso_local global [5 x i8*], align 16
@acpi_gbl_highest_dstate_names = external dso_local global [4 x i8*], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"DSDT\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"SSDT\00", align 1
@_acpi_module_name = internal constant [9 x i8] c"nsxfname\00", align 1, !dbg !0
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_handle(i8* %parent, i8* %pathname, i8** %ret_handle) #0 !dbg !79 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca i8*, align 8
  %pathname.addr = alloca i8*, align 8
  %ret_handle.addr = alloca i8**, align 8
  %status = alloca i32, align 4
  %node = alloca %struct.acpi_namespace_node*, align 8
  %prefix_node = alloca %struct.acpi_namespace_node*, align 8
  store i8* %parent, i8** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %parent.addr, metadata !84, metadata !DIExpression()), !dbg !85
  store i8* %pathname, i8** %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pathname.addr, metadata !86, metadata !DIExpression()), !dbg !87
  store i8** %ret_handle, i8*** %ret_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %ret_handle.addr, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata i32* %status, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !92, metadata !DIExpression()), !dbg !838
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %node, align 8, !dbg !838
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %prefix_node, metadata !839, metadata !DIExpression()), !dbg !840
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %prefix_node, align 8, !dbg !840
  %0 = load i8**, i8*** %ret_handle.addr, align 8, !dbg !841
  %tobool = icmp ne i8** %0, null, !dbg !841
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !843

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %pathname.addr, align 8, !dbg !844
  %tobool1 = icmp ne i8* %1, null, !dbg !844
  br i1 %tobool1, label %if.end, label %if.then, !dbg !845

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !846
  br label %return, !dbg !846

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8*, i8** %parent.addr, align 8, !dbg !848
  %tobool2 = icmp ne i8* %2, null, !dbg !848
  br i1 %tobool2, label %if.then3, label %if.end7, !dbg !850

if.then3:                                         ; preds = %if.end
  %3 = load i8*, i8** %parent.addr, align 8, !dbg !851
  %call = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8* %3) #9, !dbg !853
  store %struct.acpi_namespace_node* %call, %struct.acpi_namespace_node** %prefix_node, align 8, !dbg !854
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prefix_node, align 8, !dbg !855
  %tobool4 = icmp ne %struct.acpi_namespace_node* %4, null, !dbg !855
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !857

if.then5:                                         ; preds = %if.then3
  store i32 4097, i32* %retval, align 4, !dbg !858
  br label %return, !dbg !858

if.end6:                                          ; preds = %if.then3
  br label %if.end7, !dbg !860

if.end7:                                          ; preds = %if.end6, %if.end
  %5 = load i8*, i8** %pathname.addr, align 8, !dbg !861
  %arrayidx = getelementptr i8, i8* %5, i64 0, !dbg !861
  %6 = load i8, i8* %arrayidx, align 1, !dbg !861
  %conv = sext i8 %6 to i32, !dbg !861
  %cmp = icmp eq i32 %conv, 92, !dbg !861
  br i1 %cmp, label %if.then9, label %if.else, !dbg !863

if.then9:                                         ; preds = %if.end7
  %7 = load i8*, i8** %pathname.addr, align 8, !dbg !864
  %call10 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #9, !dbg !867
  %tobool11 = icmp ne i32 %call10, 0, !dbg !867
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !868

if.then12:                                        ; preds = %if.then9
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !869
  %9 = bitcast %struct.acpi_namespace_node* %8 to i8*, !dbg !869
  %10 = bitcast i8* %9 to i8**, !dbg !869
  %11 = bitcast i8** %10 to i8*, !dbg !869
  %12 = load i8**, i8*** %ret_handle.addr, align 8, !dbg !871
  store i8* %11, i8** %12, align 8, !dbg !872
  store i32 0, i32* %retval, align 4, !dbg !873
  br label %return, !dbg !873

if.end13:                                         ; preds = %if.then9
  br label %if.end17, !dbg !874

if.else:                                          ; preds = %if.end7
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prefix_node, align 8, !dbg !875
  %tobool14 = icmp ne %struct.acpi_namespace_node* %13, null, !dbg !875
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !877

if.then15:                                        ; preds = %if.else
  store i32 4097, i32* %retval, align 4, !dbg !878
  br label %return, !dbg !878

if.end16:                                         ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end13
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %prefix_node, align 8, !dbg !880
  %15 = load i8*, i8** %pathname.addr, align 8, !dbg !881
  %call18 = call i32 @acpi_ns_get_node(%struct.acpi_namespace_node* %14, i8* %15, i32 0, %struct.acpi_namespace_node** %node) #9, !dbg !882
  store i32 %call18, i32* %status, align 4, !dbg !883
  %16 = load i32, i32* %status, align 4, !dbg !884
  %tobool19 = icmp ne i32 %16, 0, !dbg !884
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !886

if.then20:                                        ; preds = %if.end17
  %17 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !887
  %18 = bitcast %struct.acpi_namespace_node* %17 to i8*, !dbg !887
  %19 = bitcast i8* %18 to i8**, !dbg !887
  %20 = bitcast i8** %19 to i8*, !dbg !887
  %21 = load i8**, i8*** %ret_handle.addr, align 8, !dbg !889
  store i8* %20, i8** %21, align 8, !dbg !890
  br label %if.end21, !dbg !891

if.end21:                                         ; preds = %if.then20, %if.end17
  %22 = load i32, i32* %status, align 4, !dbg !892
  store i32 %22, i32* %retval, align 4, !dbg !893
  br label %return, !dbg !893

return:                                           ; preds = %if.end21, %if.then15, %if.then12, %if.then5, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !894
  ret i32 %23, !dbg !894
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_get_node(%struct.acpi_namespace_node*, i8*, i32, %struct.acpi_namespace_node**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_name(i8* %handle, i32 %name_type, %struct.acpi_buffer* %buffer) #0 !dbg !895 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %name_type.addr = alloca i32, align 4
  %buffer.addr = alloca %struct.acpi_buffer*, align 8
  %status = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !903, metadata !DIExpression()), !dbg !904
  store i32 %name_type, i32* %name_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %name_type.addr, metadata !905, metadata !DIExpression()), !dbg !906
  store %struct.acpi_buffer* %buffer, %struct.acpi_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer** %buffer.addr, metadata !907, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.declare(metadata i32* %status, metadata !909, metadata !DIExpression()), !dbg !910
  %0 = load i32, i32* %name_type.addr, align 4, !dbg !911
  %cmp = icmp ugt i32 %0, 2, !dbg !913
  br i1 %cmp, label %if.then, label %if.end, !dbg !914

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !915
  br label %return, !dbg !915

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !917
  %call = call i32 @acpi_ut_validate_buffer(%struct.acpi_buffer* %1) #9, !dbg !918
  store i32 %call, i32* %status, align 4, !dbg !919
  %2 = load i32, i32* %status, align 4, !dbg !920
  %tobool = icmp ne i32 %2, 0, !dbg !920
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !922

if.then1:                                         ; preds = %if.end
  %3 = load i32, i32* %status, align 4, !dbg !923
  store i32 %3, i32* %retval, align 4, !dbg !925
  br label %return, !dbg !925

if.end2:                                          ; preds = %if.end
  %call3 = call i32 @acpi_ut_acquire_mutex(i32 1) #9, !dbg !926
  store i32 %call3, i32* %status, align 4, !dbg !927
  %4 = load i32, i32* %status, align 4, !dbg !928
  %tobool4 = icmp ne i32 %4, 0, !dbg !928
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !930

if.then5:                                         ; preds = %if.end2
  %5 = load i32, i32* %status, align 4, !dbg !931
  store i32 %5, i32* %retval, align 4, !dbg !933
  br label %return, !dbg !933

if.end6:                                          ; preds = %if.end2
  %6 = load i32, i32* %name_type.addr, align 4, !dbg !934
  %cmp7 = icmp eq i32 %6, 0, !dbg !936
  br i1 %cmp7, label %if.then9, label %lor.lhs.false, !dbg !937

lor.lhs.false:                                    ; preds = %if.end6
  %7 = load i32, i32* %name_type.addr, align 4, !dbg !938
  %cmp8 = icmp eq i32 %7, 2, !dbg !939
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !940

if.then9:                                         ; preds = %lor.lhs.false, %if.end6
  %8 = load i8*, i8** %handle.addr, align 8, !dbg !941
  %9 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !943
  %10 = load i32, i32* %name_type.addr, align 4, !dbg !944
  %cmp10 = icmp eq i32 %10, 0, !dbg !945
  %11 = zext i1 %cmp10 to i64, !dbg !944
  %cond = select i1 %cmp10, i32 0, i32 1, !dbg !944
  %conv = trunc i32 %cond to i8, !dbg !944
  %call11 = call i32 @acpi_ns_handle_to_pathname(i8* %8, %struct.acpi_buffer* %9, i8 zeroext %conv) #9, !dbg !946
  store i32 %call11, i32* %status, align 4, !dbg !947
  br label %if.end13, !dbg !948

if.else:                                          ; preds = %lor.lhs.false
  %12 = load i8*, i8** %handle.addr, align 8, !dbg !949
  %13 = load %struct.acpi_buffer*, %struct.acpi_buffer** %buffer.addr, align 8, !dbg !951
  %call12 = call i32 @acpi_ns_handle_to_name(i8* %12, %struct.acpi_buffer* %13) #9, !dbg !952
  store i32 %call12, i32* %status, align 4, !dbg !953
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9
  %call14 = call i32 @acpi_ut_release_mutex(i32 1) #9, !dbg !954
  %14 = load i32, i32* %status, align 4, !dbg !955
  store i32 %14, i32* %retval, align 4, !dbg !956
  br label %return, !dbg !956

return:                                           ; preds = %if.end13, %if.then5, %if.then1, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !957
  ret i32 %15, !dbg !957
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_validate_buffer(%struct.acpi_buffer*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_handle_to_pathname(i8*, %struct.acpi_buffer*, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_handle_to_name(i8*, %struct.acpi_buffer*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_release_mutex(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_object_info(i8* %handle, %struct.acpi_device_info** %return_buffer) #0 !dbg !958 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %return_buffer.addr = alloca %struct.acpi_device_info**, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %info = alloca %struct.acpi_device_info*, align 8
  %cid_list = alloca %struct.acpi_pnp_device_id_list*, align 8
  %hid = alloca %struct.acpi_pnp_device_id*, align 8
  %uid = alloca %struct.acpi_pnp_device_id*, align 8
  %cls = alloca %struct.acpi_pnp_device_id*, align 8
  %next_id_string = alloca i8*, align 8
  %type = alloca i32, align 4
  %name = alloca i32, align 4
  %param_count = alloca i8, align 1
  %valid = alloca i16, align 2
  %info_size = alloca i32, align 4
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !995, metadata !DIExpression()), !dbg !996
  store %struct.acpi_device_info** %return_buffer, %struct.acpi_device_info*** %return_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device_info*** %return_buffer.addr, metadata !997, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !999, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.declare(metadata %struct.acpi_device_info** %info, metadata !1001, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.declare(metadata %struct.acpi_pnp_device_id_list** %cid_list, metadata !1003, metadata !DIExpression()), !dbg !1005
  store %struct.acpi_pnp_device_id_list* null, %struct.acpi_pnp_device_id_list** %cid_list, align 8, !dbg !1005
  call void @llvm.dbg.declare(metadata %struct.acpi_pnp_device_id** %hid, metadata !1006, metadata !DIExpression()), !dbg !1008
  store %struct.acpi_pnp_device_id* null, %struct.acpi_pnp_device_id** %hid, align 8, !dbg !1008
  call void @llvm.dbg.declare(metadata %struct.acpi_pnp_device_id** %uid, metadata !1009, metadata !DIExpression()), !dbg !1010
  store %struct.acpi_pnp_device_id* null, %struct.acpi_pnp_device_id** %uid, align 8, !dbg !1010
  call void @llvm.dbg.declare(metadata %struct.acpi_pnp_device_id** %cls, metadata !1011, metadata !DIExpression()), !dbg !1012
  store %struct.acpi_pnp_device_id* null, %struct.acpi_pnp_device_id** %cls, align 8, !dbg !1012
  call void @llvm.dbg.declare(metadata i8** %next_id_string, metadata !1013, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.declare(metadata i32* %type, metadata !1015, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.declare(metadata i32* %name, metadata !1017, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.declare(metadata i8* %param_count, metadata !1020, metadata !DIExpression()), !dbg !1021
  store i8 0, i8* %param_count, align 1, !dbg !1021
  call void @llvm.dbg.declare(metadata i16* %valid, metadata !1022, metadata !DIExpression()), !dbg !1023
  store i16 0, i16* %valid, align 2, !dbg !1023
  call void @llvm.dbg.declare(metadata i32* %info_size, metadata !1024, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1026, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1028, metadata !DIExpression()), !dbg !1029
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !1030
  %tobool = icmp ne i8* %0, null, !dbg !1030
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1032

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.acpi_device_info**, %struct.acpi_device_info*** %return_buffer.addr, align 8, !dbg !1033
  %tobool1 = icmp ne %struct.acpi_device_info** %1, null, !dbg !1033
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1034

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, i32* %retval, align 4, !dbg !1035
  br label %return, !dbg !1035

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #9, !dbg !1037
  store i32 %call, i32* %status, align 4, !dbg !1038
  %2 = load i32, i32* %status, align 4, !dbg !1039
  %tobool2 = icmp ne i32 %2, 0, !dbg !1039
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1041

if.then3:                                         ; preds = %if.end
  %3 = load i32, i32* %status, align 4, !dbg !1042
  store i32 %3, i32* %retval, align 4, !dbg !1044
  br label %return, !dbg !1044

if.end4:                                          ; preds = %if.end
  %4 = load i8*, i8** %handle.addr, align 8, !dbg !1045
  %call5 = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8* %4) #9, !dbg !1046
  store %struct.acpi_namespace_node* %call5, %struct.acpi_namespace_node** %node, align 8, !dbg !1047
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1048
  %tobool6 = icmp ne %struct.acpi_namespace_node* %5, null, !dbg !1048
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !1050

if.then7:                                         ; preds = %if.end4
  %call8 = call i32 @acpi_ut_release_mutex(i32 1) #9, !dbg !1051
  store i32 4097, i32* %retval, align 4, !dbg !1053
  br label %return, !dbg !1053

if.end9:                                          ; preds = %if.end4
  store i32 96, i32* %info_size, align 4, !dbg !1054
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1055
  %type10 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %6, i32 0, i32 2, !dbg !1056
  %7 = load i8, i8* %type10, align 1, !dbg !1056
  %conv = zext i8 %7 to i32, !dbg !1055
  store i32 %conv, i32* %type, align 4, !dbg !1057
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1058
  %name11 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %8, i32 0, i32 4, !dbg !1059
  %integer = bitcast %union.acpi_name_union* %name11 to i32*, !dbg !1060
  %9 = load i32, i32* %integer, align 4, !dbg !1060
  store i32 %9, i32* %name, align 4, !dbg !1061
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1062
  %type12 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %10, i32 0, i32 2, !dbg !1064
  %11 = load i8, i8* %type12, align 1, !dbg !1064
  %conv13 = zext i8 %11 to i32, !dbg !1062
  %cmp = icmp eq i32 %conv13, 8, !dbg !1065
  br i1 %cmp, label %if.then15, label %if.end17, !dbg !1066

if.then15:                                        ; preds = %if.end9
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1067
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %12, i32 0, i32 0, !dbg !1069
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1069
  %method = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_method*, !dbg !1070
  %param_count16 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method, i32 0, i32 6, !dbg !1071
  %14 = load i8, i8* %param_count16, align 2, !dbg !1071
  store i8 %14, i8* %param_count, align 1, !dbg !1072
  br label %if.end17, !dbg !1073

if.end17:                                         ; preds = %if.then15, %if.end9
  %call18 = call i32 @acpi_ut_release_mutex(i32 1) #9, !dbg !1074
  store i32 %call18, i32* %status, align 4, !dbg !1075
  %15 = load i32, i32* %status, align 4, !dbg !1076
  %tobool19 = icmp ne i32 %15, 0, !dbg !1076
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1078

if.then20:                                        ; preds = %if.end17
  %16 = load i32, i32* %status, align 4, !dbg !1079
  store i32 %16, i32* %retval, align 4, !dbg !1081
  br label %return, !dbg !1081

if.end21:                                         ; preds = %if.end17
  %17 = load i32, i32* %type, align 4, !dbg !1082
  %cmp22 = icmp eq i32 %17, 6, !dbg !1084
  br i1 %cmp22, label %if.then27, label %lor.lhs.false24, !dbg !1085

lor.lhs.false24:                                  ; preds = %if.end21
  %18 = load i32, i32* %type, align 4, !dbg !1086
  %cmp25 = icmp eq i32 %18, 12, !dbg !1087
  br i1 %cmp25, label %if.then27, label %if.end63, !dbg !1088

if.then27:                                        ; preds = %lor.lhs.false24, %if.end21
  %19 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1089
  %call28 = call i32 @acpi_ut_execute_HID(%struct.acpi_namespace_node* %19, %struct.acpi_pnp_device_id** %hid) #9, !dbg !1091
  store i32 %call28, i32* %status, align 4, !dbg !1092
  %20 = load i32, i32* %status, align 4, !dbg !1093
  %tobool29 = icmp ne i32 %20, 0, !dbg !1093
  br i1 %tobool29, label %if.end33, label %if.then30, !dbg !1095

if.then30:                                        ; preds = %if.then27
  %21 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %hid, align 8, !dbg !1096
  %length = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %21, i32 0, i32 0, !dbg !1098
  %22 = load i32, i32* %length, align 8, !dbg !1098
  %23 = load i32, i32* %info_size, align 4, !dbg !1099
  %add = add i32 %23, %22, !dbg !1099
  store i32 %add, i32* %info_size, align 4, !dbg !1099
  %24 = load i16, i16* %valid, align 2, !dbg !1100
  %conv31 = zext i16 %24 to i32, !dbg !1100
  %or = or i32 %conv31, 4, !dbg !1100
  %conv32 = trunc i32 %or to i16, !dbg !1100
  store i16 %conv32, i16* %valid, align 2, !dbg !1100
  br label %if.end33, !dbg !1101

if.end33:                                         ; preds = %if.then30, %if.then27
  %25 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1102
  %call34 = call i32 @acpi_ut_execute_UID(%struct.acpi_namespace_node* %25, %struct.acpi_pnp_device_id** %uid) #9, !dbg !1103
  store i32 %call34, i32* %status, align 4, !dbg !1104
  %26 = load i32, i32* %status, align 4, !dbg !1105
  %tobool35 = icmp ne i32 %26, 0, !dbg !1105
  br i1 %tobool35, label %if.end42, label %if.then36, !dbg !1107

if.then36:                                        ; preds = %if.end33
  %27 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %uid, align 8, !dbg !1108
  %length37 = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %27, i32 0, i32 0, !dbg !1110
  %28 = load i32, i32* %length37, align 8, !dbg !1110
  %29 = load i32, i32* %info_size, align 4, !dbg !1111
  %add38 = add i32 %29, %28, !dbg !1111
  store i32 %add38, i32* %info_size, align 4, !dbg !1111
  %30 = load i16, i16* %valid, align 2, !dbg !1112
  %conv39 = zext i16 %30 to i32, !dbg !1112
  %or40 = or i32 %conv39, 8, !dbg !1112
  %conv41 = trunc i32 %or40 to i16, !dbg !1112
  store i16 %conv41, i16* %valid, align 2, !dbg !1112
  br label %if.end42, !dbg !1113

if.end42:                                         ; preds = %if.then36, %if.end33
  %31 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1114
  %call43 = call i32 @acpi_ut_execute_CID(%struct.acpi_namespace_node* %31, %struct.acpi_pnp_device_id_list** %cid_list) #9, !dbg !1115
  store i32 %call43, i32* %status, align 4, !dbg !1116
  %32 = load i32, i32* %status, align 4, !dbg !1117
  %tobool44 = icmp ne i32 %32, 0, !dbg !1117
  br i1 %tobool44, label %if.end53, label %if.then45, !dbg !1119

if.then45:                                        ; preds = %if.end42
  %33 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid_list, align 8, !dbg !1120
  %list_size = getelementptr inbounds %struct.acpi_pnp_device_id_list, %struct.acpi_pnp_device_id_list* %33, i32 0, i32 1, !dbg !1122
  %34 = load i32, i32* %list_size, align 4, !dbg !1122
  %conv46 = zext i32 %34 to i64, !dbg !1120
  %sub = sub i64 %conv46, 8, !dbg !1123
  %35 = load i32, i32* %info_size, align 4, !dbg !1124
  %conv47 = zext i32 %35 to i64, !dbg !1124
  %add48 = add i64 %conv47, %sub, !dbg !1124
  %conv49 = trunc i64 %add48 to i32, !dbg !1124
  store i32 %conv49, i32* %info_size, align 4, !dbg !1124
  %36 = load i16, i16* %valid, align 2, !dbg !1125
  %conv50 = zext i16 %36 to i32, !dbg !1125
  %or51 = or i32 %conv50, 32, !dbg !1125
  %conv52 = trunc i32 %or51 to i16, !dbg !1125
  store i16 %conv52, i16* %valid, align 2, !dbg !1125
  br label %if.end53, !dbg !1126

if.end53:                                         ; preds = %if.then45, %if.end42
  %37 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1127
  %call54 = call i32 @acpi_ut_execute_CLS(%struct.acpi_namespace_node* %37, %struct.acpi_pnp_device_id** %cls) #9, !dbg !1128
  store i32 %call54, i32* %status, align 4, !dbg !1129
  %38 = load i32, i32* %status, align 4, !dbg !1130
  %tobool55 = icmp ne i32 %38, 0, !dbg !1130
  br i1 %tobool55, label %if.end62, label %if.then56, !dbg !1132

if.then56:                                        ; preds = %if.end53
  %39 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %cls, align 8, !dbg !1133
  %length57 = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %39, i32 0, i32 0, !dbg !1135
  %40 = load i32, i32* %length57, align 8, !dbg !1135
  %41 = load i32, i32* %info_size, align 4, !dbg !1136
  %add58 = add i32 %41, %40, !dbg !1136
  store i32 %add58, i32* %info_size, align 4, !dbg !1136
  %42 = load i16, i16* %valid, align 2, !dbg !1137
  %conv59 = zext i16 %42 to i32, !dbg !1137
  %or60 = or i32 %conv59, 64, !dbg !1137
  %conv61 = trunc i32 %or60 to i16, !dbg !1137
  store i16 %conv61, i16* %valid, align 2, !dbg !1137
  br label %if.end62, !dbg !1138

if.end62:                                         ; preds = %if.then56, %if.end53
  br label %if.end63, !dbg !1139

if.end63:                                         ; preds = %if.end62, %lor.lhs.false24
  %43 = load i32, i32* %info_size, align 4, !dbg !1140
  %conv64 = zext i32 %43 to i64, !dbg !1140
  %call65 = call i8* @acpi_os_allocate_zeroed(i64 %conv64) #9, !dbg !1140
  %44 = bitcast i8* %call65 to %struct.acpi_device_info*, !dbg !1140
  store %struct.acpi_device_info* %44, %struct.acpi_device_info** %info, align 8, !dbg !1141
  %45 = load %struct.acpi_device_info*, %struct.acpi_device_info** %info, align 8, !dbg !1142
  %tobool66 = icmp ne %struct.acpi_device_info* %45, null, !dbg !1142
  br i1 %tobool66, label %if.end68, label %if.then67, !dbg !1144

if.then67:                                        ; preds = %if.end63
  store i32 4, i32* %status, align 4, !dbg !1145
  br label %cleanup, !dbg !1147

if.end68:                                         ; preds = %if.end63
  %46 = load i32, i32* %type, align 4, !dbg !1148
  %cmp69 = icmp eq i32 %46, 6, !dbg !1150
  br i1 %cmp69, label %if.then74, label %lor.lhs.false71, !dbg !1151

lor.lhs.false71:                                  ; preds = %if.end68
  %47 = load i32, i32* %type, align 4, !dbg !1152
  %cmp72 = icmp eq i32 %47, 12, !dbg !1153
  br i1 %cmp72, label %if.then74, label %if.end97, !dbg !1154

if.then74:                                        ; preds = %lor.lhs.false71, %if.end68
  %48 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1155
  %49 = load %struct.acpi_device_info*, %struct.acpi_device_info** %info, align 8, !dbg !1157
  %address = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %49, i32 0, i32 8, !dbg !1158
  %call75 = call i32 @acpi_ut_evaluate_numeric_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.acpi_namespace_node* %48, i64* %address) #9, !dbg !1159
  store i32 %call75, i32* %status, align 4, !dbg !1160
  %50 = load i32, i32* %status, align 4, !dbg !1161
  %tobool76 = icmp ne i32 %50, 0, !dbg !1161
  br i1 %tobool76, label %if.end81, label %if.then77, !dbg !1163

if.then77:                                        ; preds = %if.then74
  %51 = load i16, i16* %valid, align 2, !dbg !1164
  %conv78 = zext i16 %51 to i32, !dbg !1164
  %or79 = or i32 %conv78, 2, !dbg !1164
  %conv80 = trunc i32 %or79 to i16, !dbg !1164
  store i16 %conv80, i16* %valid, align 2, !dbg !1164
  br label %if.end81, !dbg !1166

if.end81:                                         ; preds = %if.then77, %if.then74
  %52 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1167
  %53 = load %struct.acpi_device_info*, %struct.acpi_device_info** %info, align 8, !dbg !1168
  %lowest_dstates = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %53, i32 0, i32 7, !dbg !1169
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %lowest_dstates, i64 0, i64 0, !dbg !1168
  %call82 = call i32 @acpi_ut_execute_power_methods(%struct.acpi_namespace_node* %52, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @acpi_gbl_lowest_dstate_names, i64 0, i64 0), i8 zeroext 5, i8* %arraydecay) #9, !dbg !1170
  store i32 %call82, i32* %status, align 4, !dbg !1171
  %54 = load i32, i32* %status, align 4, !dbg !1172
  %tobool83 = icmp ne i32 %54, 0, !dbg !1172
  br i1 %tobool83, label %if.end88, label %if.then84, !dbg !1174

if.then84:                                        ; preds = %if.end81
  %55 = load i16, i16* %valid, align 2, !dbg !1175
  %conv85 = zext i16 %55 to i32, !dbg !1175
  %or86 = or i32 %conv85, 512, !dbg !1175
  %conv87 = trunc i32 %or86 to i16, !dbg !1175
  store i16 %conv87, i16* %valid, align 2, !dbg !1175
  br label %if.end88, !dbg !1177

if.end88:                                         ; preds = %if.then84, %if.end81
  %56 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1178
  %57 = load %struct.acpi_device_info*, %struct.acpi_device_info** %info, align 8, !dbg !1179
  %highest_dstates = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %57, i32 0, i32 6, !dbg !1180
  %arraydecay89 = getelementptr inbounds [4 x i8], [4 x i8]* %highest_dstates, i64 0, i64 0, !dbg !1179
  %call90 = call i32 @acpi_ut_execute_power_methods(%struct.acpi_namespace_node* %56, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @acpi_gbl_highest_dstate_names, i64 0, i64 0), i8 zeroext 4, i8* %arraydecay89) #9, !dbg !1181
  store i32 %call90, i32* %status, align 4, !dbg !1182
  %58 = load i32, i32* %status, align 4, !dbg !1183
  %tobool91 = icmp ne i32 %58, 0, !dbg !1183
  br i1 %tobool91, label %if.end96, label %if.then92, !dbg !1185

if.then92:                                        ; preds = %if.end88
  %59 = load i16, i16* %valid, align 2, !dbg !1186
  %conv93 = zext i16 %59 to i32, !dbg !1186
  %or94 = or i32 %conv93, 256, !dbg !1186
  %conv95 = trunc i32 %or94 to i16, !dbg !1186
  store i16 %conv95, i16* %valid, align 2, !dbg !1186
  br label %if.end96, !dbg !1188

if.end96:                                         ; preds = %if.then92, %if.end88
  br label %if.end97, !dbg !1189

if.end97:                                         ; preds = %if.end96, %lor.lhs.false71
  %60 = load %struct.acpi_device_info*, %struct.acpi_device_info** %info, align 8, !dbg !1190
  %compatible_id_list = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %60, i32 0, i32 12, !dbg !1190
  %ids = getelementptr inbounds %struct.acpi_pnp_device_id_list, %struct.acpi_pnp_device_id_list* %compatible_id_list, i32 0, i32 2, !dbg !1190
  %arraydecay98 = getelementptr inbounds [0 x %struct.acpi_pnp_device_id], [0 x %struct.acpi_pnp_device_id]* %ids, i64 0, i64 0, !dbg !1190
  %61 = bitcast %struct.acpi_pnp_device_id* %arraydecay98 to i8*, !dbg !1190
  store i8* %61, i8** %next_id_string, align 8, !dbg !1191
  %62 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid_list, align 8, !dbg !1192
  %tobool99 = icmp ne %struct.acpi_pnp_device_id_list* %62, null, !dbg !1192
  br i1 %tobool99, label %if.then100, label %if.end102, !dbg !1194

if.then100:                                       ; preds = %if.end97
  %63 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid_list, align 8, !dbg !1195
  %count = getelementptr inbounds %struct.acpi_pnp_device_id_list, %struct.acpi_pnp_device_id_list* %63, i32 0, i32 0, !dbg !1197
  %64 = load i32, i32* %count, align 8, !dbg !1197
  %conv101 = zext i32 %64 to i64, !dbg !1198
  %mul = mul i64 %conv101, 16, !dbg !1199
  %65 = load i8*, i8** %next_id_string, align 8, !dbg !1200
  %add.ptr = getelementptr i8, i8* %65, i64 %mul, !dbg !1200
  store i8* %add.ptr, i8** %next_id_string, align 8, !dbg !1200
  br label %if.end102, !dbg !1201

if.end102:                                        ; preds = %if.then100, %if.end97
  %66 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %hid, align 8, !dbg !1202
  %tobool103 = icmp ne %struct.acpi_pnp_device_id* %66, null, !dbg !1202
  br i1 %tobool103, label %if.then104, label %if.end113, !dbg !1204

if.then104:                                       ; preds = %if.end102
  %67 = load %struct.acpi_device_info*, %struct.acpi_device_info** %info, align 8, !dbg !1205
  %hardware_id = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %67, i32 0, i32 9, !dbg !1207
  %68 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %hid, align 8, !dbg !1208
  %69 = load i8*, i8** %next_id_string, align 8, !dbg !1209
  %call105 = call i8* @acpi_ns_copy_device_id(%struct.acpi_pnp_device_id* %hardware_id, %struct.acpi_pnp_device_id* %68, i8* %69) #9, !dbg !1210
  store i8* %call105, i8** %next_id_string, align 8, !dbg !1211
  %70 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %hid, align 8, !dbg !1212
  %string = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %70, i32 0, i32 1, !dbg !1214
  %71 = load i8*, i8** %string, align 8, !dbg !1214
  %call106 = call zeroext i8 @acpi_ut_is_pci_root_bridge(i8* %71) #9, !dbg !1215
  %tobool107 = icmp ne i8 %call106, 0, !dbg !1215
  br i1 %tobool107, label %if.then108, label %if.end112, !dbg !1216

if.then108:                                       ; preds = %if.then104
  %72 = load %struct.acpi_device_info*, %struct.acpi_device_info** %info, align 8, !dbg !1217
  %flags = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %72, i32 0, i32 5, !dbg !1219
  %73 = load i8, i8* %flags, align 8, !dbg !1220
  %conv109 = zext i8 %73 to i32, !dbg !1220
  %or110 = or i32 %conv109, 1, !dbg !1220
  %conv111 = trunc i32 %or110 to i8, !dbg !1220
  store i8 %conv111, i8* %flags, align 8, !dbg !1220
  br label %if.end112, !dbg !1221

if.end112:                                        ; preds = %if.then108, %if.then104
  br label %if.end113, !dbg !1222

if.end113:                                        ; preds = %if.end112, %if.end102
  %74 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %uid, align 8, !dbg !1223
  %tobool114 = icmp ne %struct.acpi_pnp_device_id* %74, null, !dbg !1223
  br i1 %tobool114, label %if.then115, label %if.end117, !dbg !1225

if.then115:                                       ; preds = %if.end113
  %75 = load %struct.acpi_device_info*, %struct.acpi_device_info** %info, align 8, !dbg !1226
  %unique_id = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %75, i32 0, i32 10, !dbg !1228
  %76 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %uid, align 8, !dbg !1229
  %77 = load i8*, i8** %next_id_string, align 8, !dbg !1230
  %call116 = call i8* @acpi_ns_copy_device_id(%struct.acpi_pnp_device_id* %unique_id, %struct.acpi_pnp_device_id* %76, i8* %77) #9, !dbg !1231
  store i8* %call116, i8** %next_id_string, align 8, !dbg !1232
  br label %if.end117, !dbg !1233

if.end117:                                        ; preds = %if.then115, %if.end113
  %78 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid_list, align 8, !dbg !1234
  %tobool118 = icmp ne %struct.acpi_pnp_device_id_list* %78, null, !dbg !1234
  br i1 %tobool118, label %if.then119, label %if.end147, !dbg !1236

if.then119:                                       ; preds = %if.end117
  %79 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid_list, align 8, !dbg !1237
  %count120 = getelementptr inbounds %struct.acpi_pnp_device_id_list, %struct.acpi_pnp_device_id_list* %79, i32 0, i32 0, !dbg !1239
  %80 = load i32, i32* %count120, align 8, !dbg !1239
  %81 = load %struct.acpi_device_info*, %struct.acpi_device_info** %info, align 8, !dbg !1240
  %compatible_id_list121 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %81, i32 0, i32 12, !dbg !1241
  %count122 = getelementptr inbounds %struct.acpi_pnp_device_id_list, %struct.acpi_pnp_device_id_list* %compatible_id_list121, i32 0, i32 0, !dbg !1242
  store i32 %80, i32* %count122, align 8, !dbg !1243
  %82 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid_list, align 8, !dbg !1244
  %list_size123 = getelementptr inbounds %struct.acpi_pnp_device_id_list, %struct.acpi_pnp_device_id_list* %82, i32 0, i32 1, !dbg !1245
  %83 = load i32, i32* %list_size123, align 4, !dbg !1245
  %84 = load %struct.acpi_device_info*, %struct.acpi_device_info** %info, align 8, !dbg !1246
  %compatible_id_list124 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %84, i32 0, i32 12, !dbg !1247
  %list_size125 = getelementptr inbounds %struct.acpi_pnp_device_id_list, %struct.acpi_pnp_device_id_list* %compatible_id_list124, i32 0, i32 1, !dbg !1248
  store i32 %83, i32* %list_size125, align 4, !dbg !1249
  store i32 0, i32* %i, align 4, !dbg !1250
  br label %for.cond, !dbg !1252

for.cond:                                         ; preds = %for.inc, %if.then119
  %85 = load i32, i32* %i, align 4, !dbg !1253
  %86 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid_list, align 8, !dbg !1255
  %count126 = getelementptr inbounds %struct.acpi_pnp_device_id_list, %struct.acpi_pnp_device_id_list* %86, i32 0, i32 0, !dbg !1256
  %87 = load i32, i32* %count126, align 8, !dbg !1256
  %cmp127 = icmp ult i32 %85, %87, !dbg !1257
  br i1 %cmp127, label %for.body, label %for.end, !dbg !1258

for.body:                                         ; preds = %for.cond
  %88 = load %struct.acpi_device_info*, %struct.acpi_device_info** %info, align 8, !dbg !1259
  %compatible_id_list129 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %88, i32 0, i32 12, !dbg !1261
  %ids130 = getelementptr inbounds %struct.acpi_pnp_device_id_list, %struct.acpi_pnp_device_id_list* %compatible_id_list129, i32 0, i32 2, !dbg !1262
  %89 = load i32, i32* %i, align 4, !dbg !1263
  %idxprom = zext i32 %89 to i64, !dbg !1259
  %arrayidx = getelementptr [0 x %struct.acpi_pnp_device_id], [0 x %struct.acpi_pnp_device_id]* %ids130, i64 0, i64 %idxprom, !dbg !1259
  %90 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid_list, align 8, !dbg !1264
  %ids131 = getelementptr inbounds %struct.acpi_pnp_device_id_list, %struct.acpi_pnp_device_id_list* %90, i32 0, i32 2, !dbg !1265
  %91 = load i32, i32* %i, align 4, !dbg !1266
  %idxprom132 = zext i32 %91 to i64, !dbg !1264
  %arrayidx133 = getelementptr [0 x %struct.acpi_pnp_device_id], [0 x %struct.acpi_pnp_device_id]* %ids131, i64 0, i64 %idxprom132, !dbg !1264
  %92 = load i8*, i8** %next_id_string, align 8, !dbg !1267
  %call134 = call i8* @acpi_ns_copy_device_id(%struct.acpi_pnp_device_id* %arrayidx, %struct.acpi_pnp_device_id* %arrayidx133, i8* %92) #9, !dbg !1268
  store i8* %call134, i8** %next_id_string, align 8, !dbg !1269
  %93 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid_list, align 8, !dbg !1270
  %ids135 = getelementptr inbounds %struct.acpi_pnp_device_id_list, %struct.acpi_pnp_device_id_list* %93, i32 0, i32 2, !dbg !1272
  %94 = load i32, i32* %i, align 4, !dbg !1273
  %idxprom136 = zext i32 %94 to i64, !dbg !1270
  %arrayidx137 = getelementptr [0 x %struct.acpi_pnp_device_id], [0 x %struct.acpi_pnp_device_id]* %ids135, i64 0, i64 %idxprom136, !dbg !1270
  %string138 = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %arrayidx137, i32 0, i32 1, !dbg !1274
  %95 = load i8*, i8** %string138, align 8, !dbg !1274
  %call139 = call zeroext i8 @acpi_ut_is_pci_root_bridge(i8* %95) #9, !dbg !1275
  %tobool140 = icmp ne i8 %call139, 0, !dbg !1275
  br i1 %tobool140, label %if.then141, label %if.end146, !dbg !1276

if.then141:                                       ; preds = %for.body
  %96 = load %struct.acpi_device_info*, %struct.acpi_device_info** %info, align 8, !dbg !1277
  %flags142 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %96, i32 0, i32 5, !dbg !1279
  %97 = load i8, i8* %flags142, align 8, !dbg !1280
  %conv143 = zext i8 %97 to i32, !dbg !1280
  %or144 = or i32 %conv143, 1, !dbg !1280
  %conv145 = trunc i32 %or144 to i8, !dbg !1280
  store i8 %conv145, i8* %flags142, align 8, !dbg !1280
  br label %if.end146, !dbg !1281

if.end146:                                        ; preds = %if.then141, %for.body
  br label %for.inc, !dbg !1282

for.inc:                                          ; preds = %if.end146
  %98 = load i32, i32* %i, align 4, !dbg !1283
  %inc = add i32 %98, 1, !dbg !1283
  store i32 %inc, i32* %i, align 4, !dbg !1283
  br label %for.cond, !dbg !1284, !llvm.loop !1285

for.end:                                          ; preds = %for.cond
  br label %if.end147, !dbg !1287

if.end147:                                        ; preds = %for.end, %if.end117
  %99 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %cls, align 8, !dbg !1288
  %tobool148 = icmp ne %struct.acpi_pnp_device_id* %99, null, !dbg !1288
  br i1 %tobool148, label %if.then149, label %if.end151, !dbg !1290

if.then149:                                       ; preds = %if.end147
  %100 = load %struct.acpi_device_info*, %struct.acpi_device_info** %info, align 8, !dbg !1291
  %class_code = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %100, i32 0, i32 11, !dbg !1293
  %101 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %cls, align 8, !dbg !1294
  %102 = load i8*, i8** %next_id_string, align 8, !dbg !1295
  %call150 = call i8* @acpi_ns_copy_device_id(%struct.acpi_pnp_device_id* %class_code, %struct.acpi_pnp_device_id* %101, i8* %102) #9, !dbg !1296
  br label %if.end151, !dbg !1297

if.end151:                                        ; preds = %if.then149, %if.end147
  %103 = load i32, i32* %info_size, align 4, !dbg !1298
  %104 = load %struct.acpi_device_info*, %struct.acpi_device_info** %info, align 8, !dbg !1299
  %info_size152 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %104, i32 0, i32 0, !dbg !1300
  store i32 %103, i32* %info_size152, align 8, !dbg !1301
  %105 = load i32, i32* %type, align 4, !dbg !1302
  %106 = load %struct.acpi_device_info*, %struct.acpi_device_info** %info, align 8, !dbg !1303
  %type153 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %106, i32 0, i32 2, !dbg !1304
  store i32 %105, i32* %type153, align 8, !dbg !1305
  %107 = load i32, i32* %name, align 4, !dbg !1306
  %108 = load %struct.acpi_device_info*, %struct.acpi_device_info** %info, align 8, !dbg !1307
  %name154 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %108, i32 0, i32 1, !dbg !1308
  store i32 %107, i32* %name154, align 4, !dbg !1309
  %109 = load i8, i8* %param_count, align 1, !dbg !1310
  %110 = load %struct.acpi_device_info*, %struct.acpi_device_info** %info, align 8, !dbg !1311
  %param_count155 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %110, i32 0, i32 3, !dbg !1312
  store i8 %109, i8* %param_count155, align 4, !dbg !1313
  %111 = load i16, i16* %valid, align 2, !dbg !1314
  %112 = load %struct.acpi_device_info*, %struct.acpi_device_info** %info, align 8, !dbg !1315
  %valid156 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %112, i32 0, i32 4, !dbg !1316
  store i16 %111, i16* %valid156, align 2, !dbg !1317
  %113 = load %struct.acpi_device_info*, %struct.acpi_device_info** %info, align 8, !dbg !1318
  %114 = load %struct.acpi_device_info**, %struct.acpi_device_info*** %return_buffer.addr, align 8, !dbg !1319
  store %struct.acpi_device_info* %113, %struct.acpi_device_info** %114, align 8, !dbg !1320
  store i32 0, i32* %status, align 4, !dbg !1321
  br label %cleanup, !dbg !1322

cleanup:                                          ; preds = %if.end151, %if.then67
  call void @llvm.dbg.label(metadata !1323), !dbg !1324
  %115 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %hid, align 8, !dbg !1325
  %tobool157 = icmp ne %struct.acpi_pnp_device_id* %115, null, !dbg !1325
  br i1 %tobool157, label %if.then158, label %if.end159, !dbg !1327

if.then158:                                       ; preds = %cleanup
  %116 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %hid, align 8, !dbg !1328
  %117 = bitcast %struct.acpi_pnp_device_id* %116 to i8*, !dbg !1328
  call void @acpi_os_free(i8* %117) #9, !dbg !1328
  br label %if.end159, !dbg !1330

if.end159:                                        ; preds = %if.then158, %cleanup
  %118 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %uid, align 8, !dbg !1331
  %tobool160 = icmp ne %struct.acpi_pnp_device_id* %118, null, !dbg !1331
  br i1 %tobool160, label %if.then161, label %if.end162, !dbg !1333

if.then161:                                       ; preds = %if.end159
  %119 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %uid, align 8, !dbg !1334
  %120 = bitcast %struct.acpi_pnp_device_id* %119 to i8*, !dbg !1334
  call void @acpi_os_free(i8* %120) #9, !dbg !1334
  br label %if.end162, !dbg !1336

if.end162:                                        ; preds = %if.then161, %if.end159
  %121 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid_list, align 8, !dbg !1337
  %tobool163 = icmp ne %struct.acpi_pnp_device_id_list* %121, null, !dbg !1337
  br i1 %tobool163, label %if.then164, label %if.end165, !dbg !1339

if.then164:                                       ; preds = %if.end162
  %122 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %cid_list, align 8, !dbg !1340
  %123 = bitcast %struct.acpi_pnp_device_id_list* %122 to i8*, !dbg !1340
  call void @acpi_os_free(i8* %123) #9, !dbg !1340
  br label %if.end165, !dbg !1342

if.end165:                                        ; preds = %if.then164, %if.end162
  %124 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %cls, align 8, !dbg !1343
  %tobool166 = icmp ne %struct.acpi_pnp_device_id* %124, null, !dbg !1343
  br i1 %tobool166, label %if.then167, label %if.end168, !dbg !1345

if.then167:                                       ; preds = %if.end165
  %125 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %cls, align 8, !dbg !1346
  %126 = bitcast %struct.acpi_pnp_device_id* %125 to i8*, !dbg !1346
  call void @acpi_os_free(i8* %126) #9, !dbg !1346
  br label %if.end168, !dbg !1348

if.end168:                                        ; preds = %if.then167, %if.end165
  %127 = load i32, i32* %status, align 4, !dbg !1349
  store i32 %127, i32* %retval, align 4, !dbg !1350
  br label %return, !dbg !1350

return:                                           ; preds = %if.end168, %if.then20, %if.then7, %if.then3, %if.then
  %128 = load i32, i32* %retval, align 4, !dbg !1351
  ret i32 %128, !dbg !1351
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_execute_HID(%struct.acpi_namespace_node*, %struct.acpi_pnp_device_id**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_execute_UID(%struct.acpi_namespace_node*, %struct.acpi_pnp_device_id**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_execute_CID(%struct.acpi_namespace_node*, %struct.acpi_pnp_device_id_list**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_execute_CLS(%struct.acpi_namespace_node*, %struct.acpi_pnp_device_id**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate_zeroed(i64 %size) #0 !dbg !1352 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1356, metadata !DIExpression()), !dbg !1362
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1366, metadata !DIExpression()), !dbg !1367
  %0 = load i64, i64* %size.addr, align 8, !dbg !1368
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1369, metadata !DIExpression()), !dbg !1370
  br label %do.body, !dbg !1370

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1371, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1375, metadata !DIExpression()), !dbg !1374
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1374
  %conv = zext i1 %cmp to i32, !dbg !1374
  store i32 1, i32* %tmp, align 4, !dbg !1374
  %1 = load i32, i32* %tmp, align 4, !dbg !1374
  %call = call i64 @arch_local_save_flags() #9, !dbg !1376
  store i64 %call, i64* %_flags, align 8, !dbg !1376
  br label %do.end, !dbg !1376

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1377, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1380, metadata !DIExpression()), !dbg !1379
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1379
  %conv6 = zext i1 %cmp5 to i32, !dbg !1379
  store i32 1, i32* %tmp7, align 4, !dbg !1379
  %2 = load i32, i32* %tmp7, align 4, !dbg !1379
  %3 = load i64, i64* %_flags, align 8, !dbg !1381
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1382
  %and.i = and i64 %4, 512, !dbg !1383
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1384
  %lnot.i = xor i1 %tobool.i, true, !dbg !1384
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1384
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1381
  %5 = load i32, i32* %tmp8, align 4, !dbg !1381
  store i32 %5, i32* %tmp1, align 4, !dbg !1376
  %6 = load i32, i32* %tmp1, align 4, !dbg !1370
  %tobool = icmp ne i32 %6, 0, !dbg !1385
  %7 = zext i1 %tobool to i64, !dbg !1385
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1385
  %call10 = call i8* @kzalloc(i64 %0, i32 %cond) #9, !dbg !1386
  ret i8* %call10, !dbg !1387
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_evaluate_numeric_object(i8*, %struct.acpi_namespace_node*, i64*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_execute_power_methods(%struct.acpi_namespace_node*, i8**, i8 zeroext, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_ns_copy_device_id(%struct.acpi_pnp_device_id* %dest, %struct.acpi_pnp_device_id* %source, i8* %string_area) #0 !dbg !1388 {
entry:
  %dest.addr = alloca %struct.acpi_pnp_device_id*, align 8
  %source.addr = alloca %struct.acpi_pnp_device_id*, align 8
  %string_area.addr = alloca i8*, align 8
  store %struct.acpi_pnp_device_id* %dest, %struct.acpi_pnp_device_id** %dest.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pnp_device_id** %dest.addr, metadata !1391, metadata !DIExpression()), !dbg !1392
  store %struct.acpi_pnp_device_id* %source, %struct.acpi_pnp_device_id** %source.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pnp_device_id** %source.addr, metadata !1393, metadata !DIExpression()), !dbg !1394
  store i8* %string_area, i8** %string_area.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %string_area.addr, metadata !1395, metadata !DIExpression()), !dbg !1396
  %0 = load i8*, i8** %string_area.addr, align 8, !dbg !1397
  %1 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %dest.addr, align 8, !dbg !1398
  %string = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %1, i32 0, i32 1, !dbg !1399
  store i8* %0, i8** %string, align 8, !dbg !1400
  %2 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %source.addr, align 8, !dbg !1401
  %length = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %2, i32 0, i32 0, !dbg !1402
  %3 = load i32, i32* %length, align 8, !dbg !1402
  %4 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %dest.addr, align 8, !dbg !1403
  %length1 = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %4, i32 0, i32 0, !dbg !1404
  store i32 %3, i32* %length1, align 8, !dbg !1405
  %5 = load i8*, i8** %string_area.addr, align 8, !dbg !1406
  %6 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %source.addr, align 8, !dbg !1407
  %string2 = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %6, i32 0, i32 1, !dbg !1408
  %7 = load i8*, i8** %string2, align 8, !dbg !1408
  %8 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %source.addr, align 8, !dbg !1409
  %length3 = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %8, i32 0, i32 0, !dbg !1410
  %9 = load i32, i32* %length3, align 8, !dbg !1410
  %conv = zext i32 %9 to i64, !dbg !1409
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %7, i64 %conv, i1 false), !dbg !1411
  %10 = load i8*, i8** %string_area.addr, align 8, !dbg !1412
  %11 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %source.addr, align 8, !dbg !1413
  %length4 = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %11, i32 0, i32 0, !dbg !1414
  %12 = load i32, i32* %length4, align 8, !dbg !1414
  %idx.ext = zext i32 %12 to i64, !dbg !1415
  %add.ptr = getelementptr i8, i8* %10, i64 %idx.ext, !dbg !1415
  ret i8* %add.ptr, !dbg !1416
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ut_is_pci_root_bridge(i8*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1417 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1420, metadata !DIExpression()), !dbg !1421
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1422
  call void @kfree(i8* %0) #9, !dbg !1423
  ret void, !dbg !1424
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_install_method(i8* %buffer) #0 !dbg !1425 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %table = alloca %struct.acpi_table_header*, align 8
  %aml_buffer = alloca i8*, align 8
  %aml_start = alloca i8*, align 8
  %path = alloca i8*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %method_obj = alloca %union.acpi_operand_object*, align 8
  %parser_state = alloca %struct.acpi_parse_state, align 8
  %aml_length = alloca i32, align 4
  %opcode = alloca i16, align 2
  %method_flags = alloca i8, align 1
  %status = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !1428, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table, metadata !1430, metadata !DIExpression()), !dbg !1431
  %0 = load i8*, i8** %buffer.addr, align 8, !dbg !1432
  %1 = bitcast i8* %0 to %struct.acpi_table_header*, !dbg !1432
  store %struct.acpi_table_header* %1, %struct.acpi_table_header** %table, align 8, !dbg !1431
  call void @llvm.dbg.declare(metadata i8** %aml_buffer, metadata !1433, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.declare(metadata i8** %aml_start, metadata !1435, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.declare(metadata i8** %path, metadata !1437, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1439, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %method_obj, metadata !1441, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.declare(metadata %struct.acpi_parse_state* %parser_state, metadata !1443, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.declare(metadata i32* %aml_length, metadata !1445, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.declare(metadata i16* %opcode, metadata !1447, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.declare(metadata i8* %method_flags, metadata !1449, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1451, metadata !DIExpression()), !dbg !1452
  %2 = load i8*, i8** %buffer.addr, align 8, !dbg !1453
  %tobool = icmp ne i8* %2, null, !dbg !1453
  br i1 %tobool, label %if.end, label %if.then, !dbg !1455

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !1456
  br label %return, !dbg !1456

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !1458
  %signature = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %3, i32 0, i32 0, !dbg !1458
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %signature, i64 0, i64 0, !dbg !1458
  %4 = bitcast i8* %arraydecay to i32*, !dbg !1458
  %5 = load i32, i32* %4, align 4, !dbg !1458
  %6 = load i32, i32* bitcast ([5 x i8]* @.str.2 to i32*), align 4, !dbg !1458
  %cmp = icmp eq i32 %5, %6, !dbg !1458
  br i1 %cmp, label %if.end5, label %land.lhs.true, !dbg !1460

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !1461
  %signature1 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %7, i32 0, i32 0, !dbg !1461
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %signature1, i64 0, i64 0, !dbg !1461
  %8 = bitcast i8* %arraydecay2 to i32*, !dbg !1461
  %9 = load i32, i32* %8, align 4, !dbg !1461
  %10 = load i32, i32* bitcast ([5 x i8]* @.str.3 to i32*), align 4, !dbg !1461
  %cmp3 = icmp eq i32 %9, %10, !dbg !1461
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !1462

if.then4:                                         ; preds = %land.lhs.true
  store i32 8194, i32* %retval, align 4, !dbg !1463
  br label %return, !dbg !1463

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i8*, i8** %buffer.addr, align 8, !dbg !1465
  %add.ptr = getelementptr i8, i8* %11, i64 36, !dbg !1466
  %aml = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state, i32 0, i32 1, !dbg !1467
  store i8* %add.ptr, i8** %aml, align 8, !dbg !1468
  %call = call zeroext i16 @acpi_ps_peek_opcode(%struct.acpi_parse_state* %parser_state) #9, !dbg !1469
  store i16 %call, i16* %opcode, align 2, !dbg !1470
  %12 = load i16, i16* %opcode, align 2, !dbg !1471
  %conv = zext i16 %12 to i32, !dbg !1471
  %cmp6 = icmp ne i32 %conv, 20, !dbg !1473
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !1474

if.then8:                                         ; preds = %if.end5
  store i32 4097, i32* %retval, align 4, !dbg !1475
  br label %return, !dbg !1475

if.end9:                                          ; preds = %if.end5
  %13 = load i16, i16* %opcode, align 2, !dbg !1477
  %conv10 = zext i16 %13 to i32, !dbg !1477
  %call11 = call i32 @acpi_ps_get_opcode_size(i32 %conv10) #9, !dbg !1478
  %aml12 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state, i32 0, i32 1, !dbg !1479
  %14 = load i8*, i8** %aml12, align 8, !dbg !1480
  %idx.ext = zext i32 %call11 to i64, !dbg !1480
  %add.ptr13 = getelementptr i8, i8* %14, i64 %idx.ext, !dbg !1480
  store i8* %add.ptr13, i8** %aml12, align 8, !dbg !1480
  %call14 = call i8* @acpi_ps_get_next_package_end(%struct.acpi_parse_state* %parser_state) #9, !dbg !1481
  %pkg_end = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state, i32 0, i32 4, !dbg !1482
  store i8* %call14, i8** %pkg_end, align 8, !dbg !1483
  %call15 = call i8* @acpi_ps_get_next_namestring(%struct.acpi_parse_state* %parser_state) #9, !dbg !1484
  store i8* %call15, i8** %path, align 8, !dbg !1485
  %aml16 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state, i32 0, i32 1, !dbg !1486
  %15 = load i8*, i8** %aml16, align 8, !dbg !1487
  %incdec.ptr = getelementptr i8, i8* %15, i32 1, !dbg !1487
  store i8* %incdec.ptr, i8** %aml16, align 8, !dbg !1487
  %16 = load i8, i8* %15, align 1, !dbg !1488
  store i8 %16, i8* %method_flags, align 1, !dbg !1489
  %aml17 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state, i32 0, i32 1, !dbg !1490
  %17 = load i8*, i8** %aml17, align 8, !dbg !1490
  store i8* %17, i8** %aml_start, align 8, !dbg !1491
  %pkg_end18 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state, i32 0, i32 4, !dbg !1492
  %18 = load i8*, i8** %pkg_end18, align 8, !dbg !1492
  %19 = load i8*, i8** %aml_start, align 8, !dbg !1492
  %sub.ptr.lhs.cast = ptrtoint i8* %18 to i64, !dbg !1492
  %sub.ptr.rhs.cast = ptrtoint i8* %19 to i64, !dbg !1492
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1492
  %conv19 = trunc i64 %sub.ptr.sub to i32, !dbg !1493
  store i32 %conv19, i32* %aml_length, align 4, !dbg !1494
  %20 = load i32, i32* %aml_length, align 4, !dbg !1495
  %conv20 = zext i32 %20 to i64, !dbg !1495
  %call21 = call i8* @acpi_os_allocate(i64 %conv20) #9, !dbg !1495
  store i8* %call21, i8** %aml_buffer, align 8, !dbg !1496
  %21 = load i8*, i8** %aml_buffer, align 8, !dbg !1497
  %tobool22 = icmp ne i8* %21, null, !dbg !1497
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !1499

if.then23:                                        ; preds = %if.end9
  store i32 4, i32* %retval, align 4, !dbg !1500
  br label %return, !dbg !1500

if.end24:                                         ; preds = %if.end9
  %call25 = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 530, i32 16, i32 8) #9, !dbg !1502
  store %union.acpi_operand_object* %call25, %union.acpi_operand_object** %method_obj, align 8, !dbg !1503
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_obj, align 8, !dbg !1504
  %tobool26 = icmp ne %union.acpi_operand_object* %22, null, !dbg !1504
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !1506

if.then27:                                        ; preds = %if.end24
  %23 = load i8*, i8** %aml_buffer, align 8, !dbg !1507
  call void @acpi_os_free(i8* %23) #9, !dbg !1507
  store i32 4, i32* %retval, align 4, !dbg !1509
  br label %return, !dbg !1509

if.end28:                                         ; preds = %if.end24
  %call29 = call i32 @acpi_ut_acquire_mutex(i32 1) #9, !dbg !1510
  store i32 %call29, i32* %status, align 4, !dbg !1511
  %24 = load i32, i32* %status, align 4, !dbg !1512
  %tobool30 = icmp ne i32 %24, 0, !dbg !1512
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !1514

if.then31:                                        ; preds = %if.end28
  br label %error_exit, !dbg !1515

if.end32:                                         ; preds = %if.end28
  %25 = load i8*, i8** %path, align 8, !dbg !1517
  %call33 = call i32 @acpi_ns_lookup(%union.acpi_generic_state* null, i8* %25, i32 8, i32 1, i32 10, %struct.acpi_walk_state* null, %struct.acpi_namespace_node** %node) #9, !dbg !1518
  store i32 %call33, i32* %status, align 4, !dbg !1519
  %call34 = call i32 @acpi_ut_release_mutex(i32 1) #9, !dbg !1520
  %26 = load i32, i32* %status, align 4, !dbg !1521
  %tobool35 = icmp ne i32 %26, 0, !dbg !1521
  br i1 %tobool35, label %if.then36, label %if.end46, !dbg !1523

if.then36:                                        ; preds = %if.end32
  %27 = load i32, i32* %status, align 4, !dbg !1524
  %cmp37 = icmp ne i32 %27, 7, !dbg !1527
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !1528

if.then39:                                        ; preds = %if.then36
  br label %error_exit, !dbg !1529

if.end40:                                         ; preds = %if.then36
  %28 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1531
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %28, i32 0, i32 2, !dbg !1533
  %29 = load i8, i8* %type, align 1, !dbg !1533
  %conv41 = zext i8 %29 to i32, !dbg !1531
  %cmp42 = icmp ne i32 %conv41, 8, !dbg !1534
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !1535

if.then44:                                        ; preds = %if.end40
  store i32 8, i32* %status, align 4, !dbg !1536
  br label %error_exit, !dbg !1538

if.end45:                                         ; preds = %if.end40
  br label %if.end46, !dbg !1539

if.end46:                                         ; preds = %if.end45, %if.end32
  %30 = load i8*, i8** %aml_buffer, align 8, !dbg !1540
  %31 = load i8*, i8** %aml_start, align 8, !dbg !1541
  %32 = load i32, i32* %aml_length, align 4, !dbg !1542
  %conv47 = zext i32 %32 to i64, !dbg !1542
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %30, i8* align 1 %31, i64 %conv47, i1 false), !dbg !1543
  %33 = load i8*, i8** %aml_buffer, align 8, !dbg !1544
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_obj, align 8, !dbg !1545
  %method = bitcast %union.acpi_operand_object* %34 to %struct.acpi_object_method*, !dbg !1546
  %aml_start48 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method, i32 0, i32 10, !dbg !1547
  store i8* %33, i8** %aml_start48, align 8, !dbg !1548
  %35 = load i32, i32* %aml_length, align 4, !dbg !1549
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_obj, align 8, !dbg !1550
  %method49 = bitcast %union.acpi_operand_object* %36 to %struct.acpi_object_method*, !dbg !1551
  %aml_length50 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method49, i32 0, i32 12, !dbg !1552
  store i32 %35, i32* %aml_length50, align 8, !dbg !1553
  %37 = load i8, i8* %method_flags, align 1, !dbg !1554
  %conv51 = zext i8 %37 to i32, !dbg !1554
  %and = and i32 %conv51, 7, !dbg !1555
  %conv52 = trunc i32 %and to i8, !dbg !1556
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_obj, align 8, !dbg !1557
  %method53 = bitcast %union.acpi_operand_object* %38 to %struct.acpi_object_method*, !dbg !1558
  %param_count = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method53, i32 0, i32 6, !dbg !1559
  store i8 %conv52, i8* %param_count, align 2, !dbg !1560
  %39 = load i8, i8* %method_flags, align 1, !dbg !1561
  %conv54 = zext i8 %39 to i32, !dbg !1561
  %and55 = and i32 %conv54, 8, !dbg !1563
  %tobool56 = icmp ne i32 %and55, 0, !dbg !1563
  br i1 %tobool56, label %if.then57, label %if.end63, !dbg !1564

if.then57:                                        ; preds = %if.end46
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_obj, align 8, !dbg !1565
  %method58 = bitcast %union.acpi_operand_object* %40 to %struct.acpi_object_method*, !dbg !1567
  %info_flags = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method58, i32 0, i32 5, !dbg !1568
  store i8 4, i8* %info_flags, align 1, !dbg !1569
  %41 = load i8, i8* %method_flags, align 1, !dbg !1570
  %conv59 = zext i8 %41 to i32, !dbg !1570
  %and60 = and i32 %conv59, 240, !dbg !1571
  %shr = ashr i32 %and60, 4, !dbg !1572
  %conv61 = trunc i32 %shr to i8, !dbg !1573
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_obj, align 8, !dbg !1574
  %method62 = bitcast %union.acpi_operand_object* %42 to %struct.acpi_object_method*, !dbg !1575
  %sync_level = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method62, i32 0, i32 7, !dbg !1576
  store i8 %conv61, i8* %sync_level, align 1, !dbg !1577
  br label %if.end63, !dbg !1578

if.end63:                                         ; preds = %if.then57, %if.end46
  %43 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1579
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_obj, align 8, !dbg !1580
  %call64 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %43, %union.acpi_operand_object* %44, i32 8) #9, !dbg !1581
  store i32 %call64, i32* %status, align 4, !dbg !1582
  %45 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1583
  %flags = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %45, i32 0, i32 3, !dbg !1584
  %46 = load i16, i16* %flags, align 2, !dbg !1585
  %conv65 = zext i16 %46 to i32, !dbg !1585
  %or = or i32 %conv65, 64, !dbg !1585
  %conv66 = trunc i32 %or to i16, !dbg !1585
  store i16 %conv66, i16* %flags, align 2, !dbg !1585
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_obj, align 8, !dbg !1586
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %47) #9, !dbg !1587
  %48 = load i32, i32* %status, align 4, !dbg !1588
  store i32 %48, i32* %retval, align 4, !dbg !1589
  br label %return, !dbg !1589

error_exit:                                       ; preds = %if.then44, %if.then39, %if.then31
  call void @llvm.dbg.label(metadata !1590), !dbg !1591
  %49 = load i8*, i8** %aml_buffer, align 8, !dbg !1592
  call void @acpi_os_free(i8* %49) #9, !dbg !1592
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_obj, align 8, !dbg !1593
  %51 = bitcast %union.acpi_operand_object* %50 to i8*, !dbg !1593
  call void @acpi_os_free(i8* %51) #9, !dbg !1593
  %52 = load i32, i32* %status, align 4, !dbg !1594
  store i32 %52, i32* %retval, align 4, !dbg !1595
  br label %return, !dbg !1595

return:                                           ; preds = %error_exit, %if.end63, %if.then27, %if.then23, %if.then8, %if.then4, %if.then
  %53 = load i32, i32* %retval, align 4, !dbg !1596
  ret i32 %53, !dbg !1596
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @acpi_ps_peek_opcode(%struct.acpi_parse_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ps_get_opcode_size(i32) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ps_get_next_package_end(%struct.acpi_parse_state*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ps_get_next_namestring(%struct.acpi_parse_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate(i64 %size) #0 !dbg !1597 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1598, metadata !DIExpression()), !dbg !1609
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1617, metadata !DIExpression()), !dbg !1618
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1619, metadata !DIExpression()), !dbg !1620
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1621, metadata !DIExpression()), !dbg !1622
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1623, metadata !DIExpression()), !dbg !1627
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1629, metadata !DIExpression()), !dbg !1633
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1635, metadata !DIExpression()), !dbg !1639
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1644, metadata !DIExpression()), !dbg !1645
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1646, metadata !DIExpression()), !dbg !1647
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1648, metadata !DIExpression()), !dbg !1649
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1650, metadata !DIExpression()), !dbg !1651
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1652, metadata !DIExpression()), !dbg !1653
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1654, metadata !DIExpression()), !dbg !1655
  %flags.addr.i11 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i11, metadata !1656, metadata !DIExpression()), !dbg !1657
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1658, metadata !DIExpression()), !dbg !1659
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !1356, metadata !DIExpression()), !dbg !1660
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1664, metadata !DIExpression()), !dbg !1665
  %0 = load i64, i64* %size.addr, align 8, !dbg !1666
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !1667, metadata !DIExpression()), !dbg !1668
  br label %do.body, !dbg !1668

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !1669, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !1673, metadata !DIExpression()), !dbg !1672
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !1672
  %conv = zext i1 %cmp to i32, !dbg !1672
  store i32 1, i32* %tmp, align 4, !dbg !1672
  %1 = load i32, i32* %tmp, align 4, !dbg !1672
  %call = call i64 @arch_local_save_flags() #9, !dbg !1674
  store i64 %call, i64* %_flags, align 8, !dbg !1674
  br label %do.end, !dbg !1674

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !1675, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !1678, metadata !DIExpression()), !dbg !1677
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !1677
  %conv6 = zext i1 %cmp5 to i32, !dbg !1677
  store i32 1, i32* %tmp7, align 4, !dbg !1677
  %2 = load i32, i32* %tmp7, align 4, !dbg !1677
  %3 = load i64, i64* %_flags, align 8, !dbg !1679
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !1680
  %and.i = and i64 %4, 512, !dbg !1681
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !1682
  %lnot.i = xor i1 %tobool.i, true, !dbg !1682
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !1682
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !1679
  %5 = load i32, i32* %tmp8, align 4, !dbg !1679
  store i32 %5, i32* %tmp1, align 4, !dbg !1674
  %6 = load i32, i32* %tmp1, align 4, !dbg !1668
  %tobool = icmp ne i32 %6, 0, !dbg !1683
  %7 = zext i1 %tobool to i64, !dbg !1683
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !1683
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %cond, i32* %flags.addr.i11, align 4
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !1684
  %9 = call i1 @llvm.is.constant.i64(i64 %8) #8, !dbg !1685
  br i1 %9, label %if.then.i, label %if.end9.i, !dbg !1686

if.then.i:                                        ; preds = %do.end
  %10 = load i64, i64* %size.addr.i, align 8, !dbg !1687
  %cmp.i = icmp ugt i64 %10, 8192, !dbg !1688
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1689

if.then1.i:                                       ; preds = %if.then.i
  %11 = load i64, i64* %size.addr.i, align 8, !dbg !1690
  %12 = load i32, i32* %flags.addr.i11, align 4, !dbg !1691
  store i64 %11, i64* %size.addr.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i, align 4
  %13 = load i64, i64* %size.addr.i.i, align 8, !dbg !1692
  %call.i.i = call i32 @get_order(i64 %13) #10, !dbg !1693
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1653
  %14 = load i64, i64* %size.addr.i.i, align 8, !dbg !1694
  %15 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1695
  %16 = load i32, i32* %order.i.i, align 4, !dbg !1696
  store i64 %14, i64* %size.addr.i.i.i, align 8
  store i32 %15, i32* %flags.addr.i.i.i, align 4
  store i32 %16, i32* %order.addr.i.i.i, align 4
  %17 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1697
  %18 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1698
  %19 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1699
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %17, i32 %18, i32 %19) #11, !dbg !1700
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1700
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1700
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1700
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !1700
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1701
  br label %kmalloc.exit, !dbg !1701

if.end.i:                                         ; preds = %if.then.i
  %20 = load i64, i64* %size.addr.i, align 8, !dbg !1702
  store i64 %20, i64* %size.addr.i11.i, align 8
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1703
  %tobool.i.i = icmp ne i64 %21, 0, !dbg !1703
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1705

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1706
  br label %kmalloc_index.exit.i, !dbg !1706

if.end.i.i:                                       ; preds = %if.end.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1707
  %cmp.i.i = icmp ule i64 %22, 8, !dbg !1709
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1710

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1711
  br label %kmalloc_index.exit.i, !dbg !1711

if.end2.i.i:                                      ; preds = %if.end.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1712
  %cmp3.i.i = icmp ugt i64 %23, 64, !dbg !1714
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1715

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1716
  %cmp4.i.i = icmp ule i64 %24, 96, !dbg !1717
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1718

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1719
  br label %kmalloc_index.exit.i, !dbg !1719

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1720
  %cmp7.i.i = icmp ugt i64 %25, 128, !dbg !1722
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1723

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1724
  %cmp9.i.i = icmp ule i64 %26, 192, !dbg !1725
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1726

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1727
  br label %kmalloc_index.exit.i, !dbg !1727

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1728
  %cmp12.i.i = icmp ule i64 %27, 8, !dbg !1730
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1731

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1732
  br label %kmalloc_index.exit.i, !dbg !1732

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1733
  %cmp15.i.i = icmp ule i64 %28, 16, !dbg !1735
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1736

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1737
  br label %kmalloc_index.exit.i, !dbg !1737

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1738
  %cmp18.i.i = icmp ule i64 %29, 32, !dbg !1740
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1741

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1742
  br label %kmalloc_index.exit.i, !dbg !1742

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1743
  %cmp21.i.i = icmp ule i64 %30, 64, !dbg !1745
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1746

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1747
  br label %kmalloc_index.exit.i, !dbg !1747

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1748
  %cmp24.i.i = icmp ule i64 %31, 128, !dbg !1750
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1751

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1752
  br label %kmalloc_index.exit.i, !dbg !1752

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1753
  %cmp27.i.i = icmp ule i64 %32, 256, !dbg !1755
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1756

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1757
  br label %kmalloc_index.exit.i, !dbg !1757

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1758
  %cmp30.i.i = icmp ule i64 %33, 512, !dbg !1760
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1761

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1762
  br label %kmalloc_index.exit.i, !dbg !1762

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1763
  %cmp33.i.i = icmp ule i64 %34, 1024, !dbg !1765
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1766

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1767
  br label %kmalloc_index.exit.i, !dbg !1767

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1768
  %cmp36.i.i = icmp ule i64 %35, 2048, !dbg !1770
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1771

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1772
  br label %kmalloc_index.exit.i, !dbg !1772

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1773
  %cmp39.i.i = icmp ule i64 %36, 4096, !dbg !1775
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1776

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1777
  br label %kmalloc_index.exit.i, !dbg !1777

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1778
  %cmp42.i.i = icmp ule i64 %37, 8192, !dbg !1780
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1781

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1782
  br label %kmalloc_index.exit.i, !dbg !1782

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1783
  %cmp45.i.i = icmp ule i64 %38, 16384, !dbg !1785
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1786

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1787
  br label %kmalloc_index.exit.i, !dbg !1787

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1788
  %cmp48.i.i = icmp ule i64 %39, 32768, !dbg !1790
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1791

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1792
  br label %kmalloc_index.exit.i, !dbg !1792

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1793
  %cmp51.i.i = icmp ule i64 %40, 65536, !dbg !1795
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1796

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1797
  br label %kmalloc_index.exit.i, !dbg !1797

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1798
  %cmp54.i.i = icmp ule i64 %41, 131072, !dbg !1800
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1801

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1802
  br label %kmalloc_index.exit.i, !dbg !1802

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1803
  %cmp57.i.i = icmp ule i64 %42, 262144, !dbg !1805
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1806

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1807
  br label %kmalloc_index.exit.i, !dbg !1807

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1808
  %cmp60.i.i = icmp ule i64 %43, 524288, !dbg !1810
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1811

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1812
  br label %kmalloc_index.exit.i, !dbg !1812

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1813
  %cmp63.i.i = icmp ule i64 %44, 1048576, !dbg !1815
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1816

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1817
  br label %kmalloc_index.exit.i, !dbg !1817

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1818
  %cmp66.i.i = icmp ule i64 %45, 2097152, !dbg !1820
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1821

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1822
  br label %kmalloc_index.exit.i, !dbg !1822

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1823
  %cmp69.i.i = icmp ule i64 %46, 4194304, !dbg !1825
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1826

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1827
  br label %kmalloc_index.exit.i, !dbg !1827

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1828
  %cmp72.i.i = icmp ule i64 %47, 8388608, !dbg !1830
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1831

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1832
  br label %kmalloc_index.exit.i, !dbg !1832

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1833
  %cmp75.i.i = icmp ule i64 %48, 16777216, !dbg !1835
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1836

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1837
  br label %kmalloc_index.exit.i, !dbg !1837

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1838
  %cmp78.i.i = icmp ule i64 %49, 33554432, !dbg !1840
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1841

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1842
  br label %kmalloc_index.exit.i, !dbg !1842

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1843
  %cmp81.i.i = icmp ule i64 %50, 67108864, !dbg !1845
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1846

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1847
  br label %kmalloc_index.exit.i, !dbg !1847

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !1848, !srcloc !1851
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #8, !dbg !1852, !srcloc !1855
  unreachable, !dbg !1856

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %51 = load i32, i32* %retval.i.i, align 4, !dbg !1857
  store i32 %51, i32* %index.i, align 4, !dbg !1858
  %52 = load i32, i32* %index.i, align 4, !dbg !1859
  %tobool.i12 = icmp ne i32 %52, 0, !dbg !1859
  br i1 %tobool.i12, label %if.end4.i, label %if.then3.i, !dbg !1861

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1862
  br label %kmalloc.exit, !dbg !1862

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %53 = load i32, i32* %flags.addr.i11, align 4, !dbg !1863
  store i32 %53, i32* %flags.addr.i13.i, align 4
  %54 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1864
  %and.i.i = and i32 %54, 17, !dbg !1864
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1864
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1864
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1864
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1864
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1866

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1867
  br label %kmalloc_type.exit.i, !dbg !1867

if.end.i16.i:                                     ; preds = %if.end4.i
  %55 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1868
  %and2.i.i = and i32 %55, 1, !dbg !1869
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1868
  %56 = zext i1 %tobool3.i.i to i64, !dbg !1868
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1868
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1870
  br label %kmalloc_type.exit.i, !dbg !1870

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %57 = load i32, i32* %retval.i12.i, align 4, !dbg !1871
  %idxprom.i = zext i32 %57 to i64, !dbg !1872
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1872
  %58 = load i32, i32* %index.i, align 4, !dbg !1873
  %idxprom6.i = zext i32 %58 to i64, !dbg !1872
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1872
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1872
  %60 = load i32, i32* %flags.addr.i11, align 4, !dbg !1874
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !1875
  store %struct.kmem_cache* %59, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %60, i32* %flags.addr.i17.i, align 4
  store i64 %61, i64* %size.addr.i18.i, align 8
  %62 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1876
  %63 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1877
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %62, i32 %63) #11, !dbg !1878
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1878
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1878
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1878
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !1878
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1622
  %64 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1879
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !1880
  %66 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1881
  %67 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1882
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %64, i8* %65, i64 %66, i32 %67) #11, !dbg !1883
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1884
  %68 = load i8*, i8** %ret.i.i, align 8, !dbg !1885
  store i8* %68, i8** %retval.i, align 8, !dbg !1886
  br label %kmalloc.exit, !dbg !1886

if.end9.i:                                        ; preds = %do.end
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !1887
  %70 = load i32, i32* %flags.addr.i11, align 4, !dbg !1888
  %call10.i = call noalias i8* @__kmalloc(i64 %69, i32 %70) #11, !dbg !1889
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1889
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1889
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1889
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !1889
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1890
  br label %kmalloc.exit, !dbg !1890

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %71 = load i8*, i8** %retval.i, align 8, !dbg !1891
  ret i8* %71, !dbg !1892
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_lookup(%union.acpi_generic_state*, i8*, i32, i32, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !1893 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !1598, metadata !DIExpression()), !dbg !1894
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !1617, metadata !DIExpression()), !dbg !1897
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !1619, metadata !DIExpression()), !dbg !1898
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !1621, metadata !DIExpression()), !dbg !1899
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !1623, metadata !DIExpression()), !dbg !1900
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !1629, metadata !DIExpression()), !dbg !1902
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !1635, metadata !DIExpression()), !dbg !1904
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !1644, metadata !DIExpression()), !dbg !1907
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !1646, metadata !DIExpression()), !dbg !1908
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !1648, metadata !DIExpression()), !dbg !1909
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !1650, metadata !DIExpression()), !dbg !1910
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !1652, metadata !DIExpression()), !dbg !1911
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1654, metadata !DIExpression()), !dbg !1912
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !1656, metadata !DIExpression()), !dbg !1913
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !1658, metadata !DIExpression()), !dbg !1914
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1915, metadata !DIExpression()), !dbg !1916
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1917, metadata !DIExpression()), !dbg !1918
  %0 = load i64, i64* %size.addr, align 8, !dbg !1919
  %1 = load i32, i32* %flags.addr, align 4, !dbg !1920
  %or = or i32 %1, 256, !dbg !1921
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !1922
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !1923
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !1924

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1925
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !1926
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !1927

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !1928
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !1929
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !1930
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !1931
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !1911
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !1932
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !1933
  %10 = load i32, i32* %order.i.i, align 4, !dbg !1934
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !1935
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !1936
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !1937
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !1938
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !1938
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !1938
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !1938
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !1938
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !1939
  br label %kmalloc.exit, !dbg !1939

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !1940
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1941
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !1941
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1942

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !1943
  br label %kmalloc_index.exit.i, !dbg !1943

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1944
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !1945
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !1946

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1947
  br label %kmalloc_index.exit.i, !dbg !1947

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1948
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !1949
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !1950

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1951
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !1952
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !1953

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !1954
  br label %kmalloc_index.exit.i, !dbg !1954

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1955
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !1956
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1957

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1958
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !1959
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1960

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1961
  br label %kmalloc_index.exit.i, !dbg !1961

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1962
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !1963
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1964

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1965
  br label %kmalloc_index.exit.i, !dbg !1965

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1966
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !1967
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1968

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1969
  br label %kmalloc_index.exit.i, !dbg !1969

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1970
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !1971
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1972

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1973
  br label %kmalloc_index.exit.i, !dbg !1973

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1974
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !1975
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1976

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1977
  br label %kmalloc_index.exit.i, !dbg !1977

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1978
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !1979
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1980

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1981
  br label %kmalloc_index.exit.i, !dbg !1981

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1982
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !1983
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1984

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1985
  br label %kmalloc_index.exit.i, !dbg !1985

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1986
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1987
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1988

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1989
  br label %kmalloc_index.exit.i, !dbg !1989

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1990
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1991
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1992

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1993
  br label %kmalloc_index.exit.i, !dbg !1993

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1994
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1995
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1996

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1997
  br label %kmalloc_index.exit.i, !dbg !1997

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1998
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1999
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2000

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2001
  br label %kmalloc_index.exit.i, !dbg !2001

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2002
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2003
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2004

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2005
  br label %kmalloc_index.exit.i, !dbg !2005

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2006
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2007
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2008

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2009
  br label %kmalloc_index.exit.i, !dbg !2009

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2010
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2011
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2012

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2013
  br label %kmalloc_index.exit.i, !dbg !2013

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2014
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2015
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2016

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2017
  br label %kmalloc_index.exit.i, !dbg !2017

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2018
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2019
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2020

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2021
  br label %kmalloc_index.exit.i, !dbg !2021

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2022
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2023
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2024

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2025
  br label %kmalloc_index.exit.i, !dbg !2025

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2026
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2027
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2028

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2029
  br label %kmalloc_index.exit.i, !dbg !2029

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2030
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2031
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2032

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2033
  br label %kmalloc_index.exit.i, !dbg !2033

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2034
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2035
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2036

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2037
  br label %kmalloc_index.exit.i, !dbg !2037

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2038
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2039
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2040

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2041
  br label %kmalloc_index.exit.i, !dbg !2041

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2042
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2043
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2044

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2045
  br label %kmalloc_index.exit.i, !dbg !2045

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2046
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2047
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2048

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2049
  br label %kmalloc_index.exit.i, !dbg !2049

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2050
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2051
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2052

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2053
  br label %kmalloc_index.exit.i, !dbg !2053

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2054
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2055
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2056

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2057
  br label %kmalloc_index.exit.i, !dbg !2057

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !2058, !srcloc !1851
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #8, !dbg !2059, !srcloc !1855
  unreachable, !dbg !2060

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2061
  store i32 %45, i32* %index.i, align 4, !dbg !2062
  %46 = load i32, i32* %index.i, align 4, !dbg !2063
  %tobool.i = icmp ne i32 %46, 0, !dbg !2063
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2064

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2065
  br label %kmalloc.exit, !dbg !2065

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2066
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2067
  %and.i.i = and i32 %48, 17, !dbg !2067
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2067
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2067
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2067
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2067
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2068

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2069
  br label %kmalloc_type.exit.i, !dbg !2069

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2070
  %and2.i.i = and i32 %49, 1, !dbg !2071
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2070
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2070
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2070
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2072
  br label %kmalloc_type.exit.i, !dbg !2072

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2073
  %idxprom.i = zext i32 %51 to i64, !dbg !2074
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2074
  %52 = load i32, i32* %index.i, align 4, !dbg !2075
  %idxprom6.i = zext i32 %52 to i64, !dbg !2074
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2074
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2074
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2076
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2077
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2078
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2079
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !2080
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2080
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2080
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2080
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !2080
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !1899
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2081
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2082
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2083
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2084
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !2085
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2086
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2087
  store i8* %62, i8** %retval.i, align 8, !dbg !2088
  br label %kmalloc.exit, !dbg !2088

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2089
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2090
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !2091
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2091
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2091
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2091
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !2091
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2092
  br label %kmalloc.exit, !dbg !2092

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2093
  ret i8* %65, !dbg !2094
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !2095 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !2099, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2102, metadata !DIExpression()), !dbg !2101
  %0 = load i64, i64* %__edi, align 8, !dbg !2101
  store i64 %0, i64* %__edi, align 8, !dbg !2101
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2103, metadata !DIExpression()), !dbg !2101
  %1 = load i64, i64* %__esi, align 8, !dbg !2101
  store i64 %1, i64* %__esi, align 8, !dbg !2101
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2104, metadata !DIExpression()), !dbg !2101
  %2 = load i64, i64* %__edx, align 8, !dbg !2101
  store i64 %2, i64* %__edx, align 8, !dbg !2101
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2105, metadata !DIExpression()), !dbg !2101
  %3 = load i64, i64* %__ecx, align 8, !dbg !2101
  store i64 %3, i64* %__ecx, align 8, !dbg !2101
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2106, metadata !DIExpression()), !dbg !2101
  %4 = load i64, i64* %__eax, align 8, !dbg !2101
  store i64 %4, i64* %__eax, align 8, !dbg !2101
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !2101
  %6 = call i64 @llvm.read_register.i64(metadata !73), !dbg !2107
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !2107, !srcloc !2110
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !2107
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !2107
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2107
  call void @llvm.write_register.i64(metadata !73, i64 %asmresult1), !dbg !2107
  %8 = load i64, i64* %__eax, align 8, !dbg !2107
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !2111, metadata !DIExpression()), !dbg !2113
  store i64 -1, i64* %__mask, align 8, !dbg !2113
  %9 = load i64, i64* %__mask, align 8, !dbg !2113
  store i64 %9, i64* %tmp, align 8, !dbg !2113
  %10 = load i64, i64* %tmp, align 8, !dbg !2113
  %and = and i64 %8, %10, !dbg !2107
  store i64 %and, i64* %__ret, align 8, !dbg !2107
  %11 = load i64, i64* %__ret, align 8, !dbg !2101
  store i64 %11, i64* %tmp2, align 8, !dbg !2114
  %12 = load i64, i64* %tmp2, align 8, !dbg !2101
  ret i64 %12, !dbg !2115
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !2116 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2118, metadata !DIExpression()), !dbg !2123
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2125, metadata !DIExpression()), !dbg !2126
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2127, metadata !DIExpression()), !dbg !2128
  %0 = load i64, i64* %size.addr, align 8, !dbg !2129
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2131
  br i1 %1, label %if.then, label %if.end447, !dbg !2132

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2133
  %tobool = icmp ne i64 %2, 0, !dbg !2133
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2136

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !2137
  br label %return, !dbg !2137

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !2138
  %cmp = icmp ult i64 %3, 4096, !dbg !2140
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2141

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2142
  br label %return, !dbg !2142

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub = sub i64 %4, 1, !dbg !2143
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2143
  br i1 %5, label %cond.true, label %cond.false442, !dbg !2143

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub4 = sub i64 %6, 1, !dbg !2143
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !2143
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !2143

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub6 = sub i64 %8, 1, !dbg !2143
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !2143
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !2143

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !2143

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub9 = sub i64 %9, 1, !dbg !2143
  %and = and i64 %sub9, -9223372036854775808, !dbg !2143
  %tobool10 = icmp ne i64 %and, 0, !dbg !2143
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !2143

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !2143

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub13 = sub i64 %10, 1, !dbg !2143
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !2143
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2143
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2143

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !2143

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub18 = sub i64 %11, 1, !dbg !2143
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !2143
  %tobool20 = icmp ne i64 %and19, 0, !dbg !2143
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2143

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !2143

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub23 = sub i64 %12, 1, !dbg !2143
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !2143
  %tobool25 = icmp ne i64 %and24, 0, !dbg !2143
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !2143

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !2143

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub28 = sub i64 %13, 1, !dbg !2143
  %and29 = and i64 %sub28, 576460752303423488, !dbg !2143
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2143
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !2143

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !2143

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub33 = sub i64 %14, 1, !dbg !2143
  %and34 = and i64 %sub33, 288230376151711744, !dbg !2143
  %tobool35 = icmp ne i64 %and34, 0, !dbg !2143
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !2143

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !2143

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub38 = sub i64 %15, 1, !dbg !2143
  %and39 = and i64 %sub38, 144115188075855872, !dbg !2143
  %tobool40 = icmp ne i64 %and39, 0, !dbg !2143
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2143

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !2143

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub43 = sub i64 %16, 1, !dbg !2143
  %and44 = and i64 %sub43, 72057594037927936, !dbg !2143
  %tobool45 = icmp ne i64 %and44, 0, !dbg !2143
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !2143

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !2143

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub48 = sub i64 %17, 1, !dbg !2143
  %and49 = and i64 %sub48, 36028797018963968, !dbg !2143
  %tobool50 = icmp ne i64 %and49, 0, !dbg !2143
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !2143

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !2143

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub53 = sub i64 %18, 1, !dbg !2143
  %and54 = and i64 %sub53, 18014398509481984, !dbg !2143
  %tobool55 = icmp ne i64 %and54, 0, !dbg !2143
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !2143

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !2143

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub58 = sub i64 %19, 1, !dbg !2143
  %and59 = and i64 %sub58, 9007199254740992, !dbg !2143
  %tobool60 = icmp ne i64 %and59, 0, !dbg !2143
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2143

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !2143

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub63 = sub i64 %20, 1, !dbg !2143
  %and64 = and i64 %sub63, 4503599627370496, !dbg !2143
  %tobool65 = icmp ne i64 %and64, 0, !dbg !2143
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !2143

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !2143

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub68 = sub i64 %21, 1, !dbg !2143
  %and69 = and i64 %sub68, 2251799813685248, !dbg !2143
  %tobool70 = icmp ne i64 %and69, 0, !dbg !2143
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !2143

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !2143

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub73 = sub i64 %22, 1, !dbg !2143
  %and74 = and i64 %sub73, 1125899906842624, !dbg !2143
  %tobool75 = icmp ne i64 %and74, 0, !dbg !2143
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !2143

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !2143

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub78 = sub i64 %23, 1, !dbg !2143
  %and79 = and i64 %sub78, 562949953421312, !dbg !2143
  %tobool80 = icmp ne i64 %and79, 0, !dbg !2143
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !2143

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !2143

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub83 = sub i64 %24, 1, !dbg !2143
  %and84 = and i64 %sub83, 281474976710656, !dbg !2143
  %tobool85 = icmp ne i64 %and84, 0, !dbg !2143
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !2143

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !2143

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub88 = sub i64 %25, 1, !dbg !2143
  %and89 = and i64 %sub88, 140737488355328, !dbg !2143
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2143
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !2143

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !2143

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub93 = sub i64 %26, 1, !dbg !2143
  %and94 = and i64 %sub93, 70368744177664, !dbg !2143
  %tobool95 = icmp ne i64 %and94, 0, !dbg !2143
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !2143

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !2143

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub98 = sub i64 %27, 1, !dbg !2143
  %and99 = and i64 %sub98, 35184372088832, !dbg !2143
  %tobool100 = icmp ne i64 %and99, 0, !dbg !2143
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !2143

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !2143

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub103 = sub i64 %28, 1, !dbg !2143
  %and104 = and i64 %sub103, 17592186044416, !dbg !2143
  %tobool105 = icmp ne i64 %and104, 0, !dbg !2143
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !2143

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !2143

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub108 = sub i64 %29, 1, !dbg !2143
  %and109 = and i64 %sub108, 8796093022208, !dbg !2143
  %tobool110 = icmp ne i64 %and109, 0, !dbg !2143
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !2143

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !2143

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub113 = sub i64 %30, 1, !dbg !2143
  %and114 = and i64 %sub113, 4398046511104, !dbg !2143
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2143
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !2143

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !2143

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub118 = sub i64 %31, 1, !dbg !2143
  %and119 = and i64 %sub118, 2199023255552, !dbg !2143
  %tobool120 = icmp ne i64 %and119, 0, !dbg !2143
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !2143

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !2143

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub123 = sub i64 %32, 1, !dbg !2143
  %and124 = and i64 %sub123, 1099511627776, !dbg !2143
  %tobool125 = icmp ne i64 %and124, 0, !dbg !2143
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !2143

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !2143

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub128 = sub i64 %33, 1, !dbg !2143
  %and129 = and i64 %sub128, 549755813888, !dbg !2143
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2143
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !2143

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !2143

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub133 = sub i64 %34, 1, !dbg !2143
  %and134 = and i64 %sub133, 274877906944, !dbg !2143
  %tobool135 = icmp ne i64 %and134, 0, !dbg !2143
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !2143

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !2143

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub138 = sub i64 %35, 1, !dbg !2143
  %and139 = and i64 %sub138, 137438953472, !dbg !2143
  %tobool140 = icmp ne i64 %and139, 0, !dbg !2143
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !2143

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !2143

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub143 = sub i64 %36, 1, !dbg !2143
  %and144 = and i64 %sub143, 68719476736, !dbg !2143
  %tobool145 = icmp ne i64 %and144, 0, !dbg !2143
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !2143

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !2143

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub148 = sub i64 %37, 1, !dbg !2143
  %and149 = and i64 %sub148, 34359738368, !dbg !2143
  %tobool150 = icmp ne i64 %and149, 0, !dbg !2143
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !2143

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !2143

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub153 = sub i64 %38, 1, !dbg !2143
  %and154 = and i64 %sub153, 17179869184, !dbg !2143
  %tobool155 = icmp ne i64 %and154, 0, !dbg !2143
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !2143

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !2143

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub158 = sub i64 %39, 1, !dbg !2143
  %and159 = and i64 %sub158, 8589934592, !dbg !2143
  %tobool160 = icmp ne i64 %and159, 0, !dbg !2143
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !2143

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !2143

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub163 = sub i64 %40, 1, !dbg !2143
  %and164 = and i64 %sub163, 4294967296, !dbg !2143
  %tobool165 = icmp ne i64 %and164, 0, !dbg !2143
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !2143

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !2143

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub168 = sub i64 %41, 1, !dbg !2143
  %and169 = and i64 %sub168, 2147483648, !dbg !2143
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2143
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !2143

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !2143

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub173 = sub i64 %42, 1, !dbg !2143
  %and174 = and i64 %sub173, 1073741824, !dbg !2143
  %tobool175 = icmp ne i64 %and174, 0, !dbg !2143
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !2143

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !2143

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub178 = sub i64 %43, 1, !dbg !2143
  %and179 = and i64 %sub178, 536870912, !dbg !2143
  %tobool180 = icmp ne i64 %and179, 0, !dbg !2143
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !2143

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !2143

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub183 = sub i64 %44, 1, !dbg !2143
  %and184 = and i64 %sub183, 268435456, !dbg !2143
  %tobool185 = icmp ne i64 %and184, 0, !dbg !2143
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !2143

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !2143

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub188 = sub i64 %45, 1, !dbg !2143
  %and189 = and i64 %sub188, 134217728, !dbg !2143
  %tobool190 = icmp ne i64 %and189, 0, !dbg !2143
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !2143

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !2143

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub193 = sub i64 %46, 1, !dbg !2143
  %and194 = and i64 %sub193, 67108864, !dbg !2143
  %tobool195 = icmp ne i64 %and194, 0, !dbg !2143
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !2143

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !2143

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub198 = sub i64 %47, 1, !dbg !2143
  %and199 = and i64 %sub198, 33554432, !dbg !2143
  %tobool200 = icmp ne i64 %and199, 0, !dbg !2143
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !2143

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !2143

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub203 = sub i64 %48, 1, !dbg !2143
  %and204 = and i64 %sub203, 16777216, !dbg !2143
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2143
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !2143

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !2143

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub208 = sub i64 %49, 1, !dbg !2143
  %and209 = and i64 %sub208, 8388608, !dbg !2143
  %tobool210 = icmp ne i64 %and209, 0, !dbg !2143
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !2143

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !2143

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub213 = sub i64 %50, 1, !dbg !2143
  %and214 = and i64 %sub213, 4194304, !dbg !2143
  %tobool215 = icmp ne i64 %and214, 0, !dbg !2143
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !2143

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !2143

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub218 = sub i64 %51, 1, !dbg !2143
  %and219 = and i64 %sub218, 2097152, !dbg !2143
  %tobool220 = icmp ne i64 %and219, 0, !dbg !2143
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !2143

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !2143

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub223 = sub i64 %52, 1, !dbg !2143
  %and224 = and i64 %sub223, 1048576, !dbg !2143
  %tobool225 = icmp ne i64 %and224, 0, !dbg !2143
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !2143

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !2143

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub228 = sub i64 %53, 1, !dbg !2143
  %and229 = and i64 %sub228, 524288, !dbg !2143
  %tobool230 = icmp ne i64 %and229, 0, !dbg !2143
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !2143

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !2143

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub233 = sub i64 %54, 1, !dbg !2143
  %and234 = and i64 %sub233, 262144, !dbg !2143
  %tobool235 = icmp ne i64 %and234, 0, !dbg !2143
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !2143

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !2143

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub238 = sub i64 %55, 1, !dbg !2143
  %and239 = and i64 %sub238, 131072, !dbg !2143
  %tobool240 = icmp ne i64 %and239, 0, !dbg !2143
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !2143

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !2143

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub243 = sub i64 %56, 1, !dbg !2143
  %and244 = and i64 %sub243, 65536, !dbg !2143
  %tobool245 = icmp ne i64 %and244, 0, !dbg !2143
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !2143

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !2143

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub248 = sub i64 %57, 1, !dbg !2143
  %and249 = and i64 %sub248, 32768, !dbg !2143
  %tobool250 = icmp ne i64 %and249, 0, !dbg !2143
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !2143

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !2143

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub253 = sub i64 %58, 1, !dbg !2143
  %and254 = and i64 %sub253, 16384, !dbg !2143
  %tobool255 = icmp ne i64 %and254, 0, !dbg !2143
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !2143

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !2143

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub258 = sub i64 %59, 1, !dbg !2143
  %and259 = and i64 %sub258, 8192, !dbg !2143
  %tobool260 = icmp ne i64 %and259, 0, !dbg !2143
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !2143

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !2143

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub263 = sub i64 %60, 1, !dbg !2143
  %and264 = and i64 %sub263, 4096, !dbg !2143
  %tobool265 = icmp ne i64 %and264, 0, !dbg !2143
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !2143

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !2143

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub268 = sub i64 %61, 1, !dbg !2143
  %and269 = and i64 %sub268, 2048, !dbg !2143
  %tobool270 = icmp ne i64 %and269, 0, !dbg !2143
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !2143

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !2143

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub273 = sub i64 %62, 1, !dbg !2143
  %and274 = and i64 %sub273, 1024, !dbg !2143
  %tobool275 = icmp ne i64 %and274, 0, !dbg !2143
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !2143

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !2143

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub278 = sub i64 %63, 1, !dbg !2143
  %and279 = and i64 %sub278, 512, !dbg !2143
  %tobool280 = icmp ne i64 %and279, 0, !dbg !2143
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !2143

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !2143

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub283 = sub i64 %64, 1, !dbg !2143
  %and284 = and i64 %sub283, 256, !dbg !2143
  %tobool285 = icmp ne i64 %and284, 0, !dbg !2143
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !2143

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !2143

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub288 = sub i64 %65, 1, !dbg !2143
  %and289 = and i64 %sub288, 128, !dbg !2143
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2143
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !2143

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !2143

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub293 = sub i64 %66, 1, !dbg !2143
  %and294 = and i64 %sub293, 64, !dbg !2143
  %tobool295 = icmp ne i64 %and294, 0, !dbg !2143
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !2143

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !2143

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub298 = sub i64 %67, 1, !dbg !2143
  %and299 = and i64 %sub298, 32, !dbg !2143
  %tobool300 = icmp ne i64 %and299, 0, !dbg !2143
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !2143

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !2143

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub303 = sub i64 %68, 1, !dbg !2143
  %and304 = and i64 %sub303, 16, !dbg !2143
  %tobool305 = icmp ne i64 %and304, 0, !dbg !2143
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !2143

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !2143

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub308 = sub i64 %69, 1, !dbg !2143
  %and309 = and i64 %sub308, 8, !dbg !2143
  %tobool310 = icmp ne i64 %and309, 0, !dbg !2143
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !2143

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !2143

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub313 = sub i64 %70, 1, !dbg !2143
  %and314 = and i64 %sub313, 4, !dbg !2143
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2143
  %71 = zext i1 %tobool315 to i64, !dbg !2143
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !2143
  br label %cond.end, !dbg !2143

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !2143
  br label %cond.end317, !dbg !2143

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !2143
  br label %cond.end319, !dbg !2143

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !2143
  br label %cond.end321, !dbg !2143

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !2143
  br label %cond.end323, !dbg !2143

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !2143
  br label %cond.end325, !dbg !2143

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !2143
  br label %cond.end327, !dbg !2143

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !2143
  br label %cond.end329, !dbg !2143

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !2143
  br label %cond.end331, !dbg !2143

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !2143
  br label %cond.end333, !dbg !2143

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !2143
  br label %cond.end335, !dbg !2143

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !2143
  br label %cond.end337, !dbg !2143

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !2143
  br label %cond.end339, !dbg !2143

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !2143
  br label %cond.end341, !dbg !2143

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !2143
  br label %cond.end343, !dbg !2143

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !2143
  br label %cond.end345, !dbg !2143

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !2143
  br label %cond.end347, !dbg !2143

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !2143
  br label %cond.end349, !dbg !2143

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !2143
  br label %cond.end351, !dbg !2143

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !2143
  br label %cond.end353, !dbg !2143

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !2143
  br label %cond.end355, !dbg !2143

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !2143
  br label %cond.end357, !dbg !2143

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !2143
  br label %cond.end359, !dbg !2143

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !2143
  br label %cond.end361, !dbg !2143

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !2143
  br label %cond.end363, !dbg !2143

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !2143
  br label %cond.end365, !dbg !2143

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !2143
  br label %cond.end367, !dbg !2143

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !2143
  br label %cond.end369, !dbg !2143

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !2143
  br label %cond.end371, !dbg !2143

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !2143
  br label %cond.end373, !dbg !2143

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !2143
  br label %cond.end375, !dbg !2143

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !2143
  br label %cond.end377, !dbg !2143

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !2143
  br label %cond.end379, !dbg !2143

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !2143
  br label %cond.end381, !dbg !2143

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !2143
  br label %cond.end383, !dbg !2143

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !2143
  br label %cond.end385, !dbg !2143

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !2143
  br label %cond.end387, !dbg !2143

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !2143
  br label %cond.end389, !dbg !2143

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !2143
  br label %cond.end391, !dbg !2143

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !2143
  br label %cond.end393, !dbg !2143

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !2143
  br label %cond.end395, !dbg !2143

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !2143
  br label %cond.end397, !dbg !2143

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !2143
  br label %cond.end399, !dbg !2143

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !2143
  br label %cond.end401, !dbg !2143

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !2143
  br label %cond.end403, !dbg !2143

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !2143
  br label %cond.end405, !dbg !2143

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !2143
  br label %cond.end407, !dbg !2143

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !2143
  br label %cond.end409, !dbg !2143

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !2143
  br label %cond.end411, !dbg !2143

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !2143
  br label %cond.end413, !dbg !2143

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !2143
  br label %cond.end415, !dbg !2143

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !2143
  br label %cond.end417, !dbg !2143

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !2143
  br label %cond.end419, !dbg !2143

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !2143
  br label %cond.end421, !dbg !2143

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !2143
  br label %cond.end423, !dbg !2143

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !2143
  br label %cond.end425, !dbg !2143

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !2143
  br label %cond.end427, !dbg !2143

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !2143
  br label %cond.end429, !dbg !2143

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !2143
  br label %cond.end431, !dbg !2143

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !2143
  br label %cond.end433, !dbg !2143

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !2143
  br label %cond.end435, !dbg !2143

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !2143
  br label %cond.end437, !dbg !2143

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !2143
  br label %cond.end440, !dbg !2143

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !2143

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !2143
  br label %cond.end444, !dbg !2143

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !2143
  %sub443 = sub i64 %72, 1, !dbg !2143
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !2143
  br label %cond.end444, !dbg !2143

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !2143
  %sub446 = sub i32 %cond445, 12, !dbg !2144
  %add = add i32 %sub446, 1, !dbg !2145
  store i32 %add, i32* %retval, align 4, !dbg !2146
  br label %return, !dbg !2146

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !2147
  %dec = add i64 %73, -1, !dbg !2147
  store i64 %dec, i64* %size.addr, align 8, !dbg !2147
  %74 = load i64, i64* %size.addr, align 8, !dbg !2148
  %shr = lshr i64 %74, 12, !dbg !2148
  store i64 %shr, i64* %size.addr, align 8, !dbg !2148
  %75 = load i64, i64* %size.addr, align 8, !dbg !2149
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2126
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2150
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2151
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !2150, !srcloc !2152
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2150
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2153
  %add.i = add i32 %79, 1, !dbg !2154
  store i32 %add.i, i32* %retval, align 4, !dbg !2155
  br label %return, !dbg !2155

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2156
  ret i32 %80, !dbg !2156
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !2157 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2118, metadata !DIExpression()), !dbg !2161
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2125, metadata !DIExpression()), !dbg !2163
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2164, metadata !DIExpression()), !dbg !2165
  %0 = load i64, i64* %n.addr, align 8, !dbg !2166
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2163
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2167
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2168
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !2167, !srcloc !2152
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2167
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2169
  %add.i = add i32 %4, 1, !dbg !2170
  %sub = sub i32 %add.i, 1, !dbg !2171
  ret i32 %sub, !dbg !2172
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !2173 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2179, metadata !DIExpression()), !dbg !2180
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2181, metadata !DIExpression()), !dbg !2182
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2183, metadata !DIExpression()), !dbg !2184
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2185, metadata !DIExpression()), !dbg !2186
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2187
  ret i8* %0, !dbg !2188
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

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
!llvm.named.register.rsp = !{!73}
!llvm.module.flags = !{!74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 20, type: !69, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !68, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsxfname.c", directory: "/home/lizy2001/genbc/linux")
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
!19 = !{!20, !26, !29, !31, !32, !36, !38, !60, !61, !22, !64, !65, !67}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !21, line: 421, baseType: !22)
!21 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !23, line: 21, baseType: !24)
!23 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !25, line: 27, baseType: !7)
!25 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !23, line: 17, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !25, line: 21, baseType: !28)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !21, line: 424, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !21, line: 127, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !23, line: 23, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !25, line: 31, baseType: !35)
!35 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !40, line: 68, size: 288, elements: !41)
!40 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!41 = !{!42, !46, !47, !48, !49, !53, !57, !58, !59}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !39, file: !40, line: 69, baseType: !43, size: 32)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 32, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 4)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !39, file: !40, line: 70, baseType: !22, size: 32, offset: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !39, file: !40, line: 71, baseType: !26, size: 8, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !39, file: !40, line: 72, baseType: !26, size: 8, offset: 72)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !39, file: !40, line: 73, baseType: !50, size: 48, offset: 80)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 48, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 6)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !39, file: !40, line: 74, baseType: !54, size: 64, offset: 128)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 64, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 8)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !39, file: !40, line: 75, baseType: !22, size: 32, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !39, file: !40, line: 76, baseType: !43, size: 32, offset: 224)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !39, file: !40, line: 77, baseType: !22, size: 32, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !23, line: 19, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !25, line: 24, baseType: !63)
!63 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !66, line: 148, baseType: !7)
!66 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!67 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!68 = !{!0}
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 72, elements: !71)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!71 = !{!72}
!72 = !DISubrange(count: 9)
!73 = !{!"rsp"}
!74 = !{i32 7, !"Dwarf Version", i32 4}
!75 = !{i32 2, !"Debug Info Version", i32 3}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"Code Model", i32 2}
!78 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!79 = distinct !DISubprogram(name: "acpi_get_handle", scope: !3, file: !3, line: 46, type: !80, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !83)
!80 = !DISubroutineType(types: !81)
!81 = !{!20, !30, !82, !29}
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !21, line: 423, baseType: !36)
!83 = !{}
!84 = !DILocalVariable(name: "parent", arg: 1, scope: !79, file: !3, line: 46, type: !30)
!85 = !DILocation(line: 46, column: 29, scope: !79)
!86 = !DILocalVariable(name: "pathname", arg: 2, scope: !79, file: !3, line: 47, type: !82)
!87 = !DILocation(line: 47, column: 15, scope: !79)
!88 = !DILocalVariable(name: "ret_handle", arg: 3, scope: !79, file: !3, line: 47, type: !29)
!89 = !DILocation(line: 47, column: 38, scope: !79)
!90 = !DILocalVariable(name: "status", scope: !79, file: !3, line: 49, type: !20)
!91 = !DILocation(line: 49, column: 14, scope: !79)
!92 = !DILocalVariable(name: "node", scope: !79, file: !3, line: 50, type: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !95)
!95 = !{!96, !826, !827, !828, !829, !834, !835, !836, !837}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !94, file: !6, line: 134, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !99, line: 367, size: 576, elements: !100)
!99 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !109, !122, !132, !145, !159, !168, !477, !494, !509, !522, !600, !612, !626, !636, !654, !676, !695, !714, !733, !746, !772, !789, !802, !816, !825}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !98, file: !99, line: 368, baseType: !102, size: 128)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !99, line: 73, size: 128, elements: !103)
!103 = !{!104, !105, !106, !107, !108}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !102, file: !99, line: 74, baseType: !97, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !102, file: !99, line: 74, baseType: !26, size: 8, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !99, line: 74, baseType: !26, size: 8, offset: 72)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !102, file: !99, line: 74, baseType: !61, size: 16, offset: 80)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !99, line: 74, baseType: !26, size: 8, offset: 96)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !98, file: !99, line: 369, baseType: !110, size: 192)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !99, line: 76, size: 192, elements: !111)
!111 = !{!112, !113, !114, !115, !116, !117, !121}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !110, file: !99, line: 77, baseType: !97, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !110, file: !99, line: 77, baseType: !26, size: 8, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !110, file: !99, line: 77, baseType: !26, size: 8, offset: 72)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !110, file: !99, line: 77, baseType: !61, size: 16, offset: 80)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !110, file: !99, line: 77, baseType: !26, size: 8, offset: 96)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !110, file: !99, line: 77, baseType: !118, size: 24, offset: 104)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 24, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 3)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !110, file: !99, line: 78, baseType: !33, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !98, file: !99, line: 370, baseType: !123, size: 256)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !99, line: 93, size: 256, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !131}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !123, file: !99, line: 94, baseType: !97, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !123, file: !99, line: 94, baseType: !26, size: 8, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !99, line: 94, baseType: !26, size: 8, offset: 72)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !123, file: !99, line: 94, baseType: !61, size: 16, offset: 80)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !99, line: 94, baseType: !26, size: 8, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !123, file: !99, line: 94, baseType: !36, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !123, file: !99, line: 94, baseType: !22, size: 32, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !98, file: !99, line: 371, baseType: !133, size: 384)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !99, line: 97, size: 384, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !133, file: !99, line: 98, baseType: !97, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !133, file: !99, line: 98, baseType: !26, size: 8, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !133, file: !99, line: 98, baseType: !26, size: 8, offset: 72)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !133, file: !99, line: 98, baseType: !61, size: 16, offset: 80)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !99, line: 98, baseType: !26, size: 8, offset: 96)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !133, file: !99, line: 98, baseType: !64, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !133, file: !99, line: 98, baseType: !22, size: 32, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !133, file: !99, line: 99, baseType: !22, size: 32, offset: 224)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !133, file: !99, line: 100, baseType: !64, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !133, file: !99, line: 101, baseType: !93, size: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !98, file: !99, line: 372, baseType: !146, size: 384)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !99, line: 104, size: 384, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !156, !157, !158}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !146, file: !99, line: 105, baseType: !97, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !146, file: !99, line: 105, baseType: !26, size: 8, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !146, file: !99, line: 105, baseType: !26, size: 8, offset: 72)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !146, file: !99, line: 105, baseType: !61, size: 16, offset: 80)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !99, line: 105, baseType: !26, size: 8, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !146, file: !99, line: 105, baseType: !93, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !146, file: !99, line: 106, baseType: !155, size: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !146, file: !99, line: 107, baseType: !64, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !146, file: !99, line: 108, baseType: !22, size: 32, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !146, file: !99, line: 109, baseType: !22, size: 32, offset: 352)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !98, file: !99, line: 373, baseType: !160, size: 192)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !99, line: 118, size: 192, elements: !161)
!161 = !{!162, !163, !164, !165, !166, !167}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !160, file: !99, line: 119, baseType: !97, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !160, file: !99, line: 119, baseType: !26, size: 8, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !160, file: !99, line: 119, baseType: !26, size: 8, offset: 72)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !160, file: !99, line: 119, baseType: !61, size: 16, offset: 80)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !160, file: !99, line: 119, baseType: !26, size: 8, offset: 96)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !160, file: !99, line: 119, baseType: !31, size: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !98, file: !99, line: 374, baseType: !169, size: 448)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !99, line: 143, size: 448, elements: !170)
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !474, !475, !476}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !169, file: !99, line: 144, baseType: !97, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !169, file: !99, line: 144, baseType: !26, size: 8, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !169, file: !99, line: 144, baseType: !26, size: 8, offset: 72)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !169, file: !99, line: 144, baseType: !61, size: 16, offset: 80)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !169, file: !99, line: 144, baseType: !26, size: 8, offset: 96)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !169, file: !99, line: 144, baseType: !26, size: 8, offset: 104)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !169, file: !99, line: 145, baseType: !26, size: 8, offset: 112)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !169, file: !99, line: 146, baseType: !26, size: 8, offset: 120)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !169, file: !99, line: 147, baseType: !97, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !169, file: !99, line: 148, baseType: !97, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !169, file: !99, line: 149, baseType: !64, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !169, file: !99, line: 153, baseType: !183, size: 64, offset: 320)
!183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !169, file: !99, line: 150, size: 64, elements: !184)
!184 = !{!185, !473}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !183, file: !99, line: 151, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!20, !190}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !192, line: 37, size: 9024, elements: !193)
!192 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !421, !422, !423, !424, !425, !429, !431, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !456, !457, !458, !459, !460, !461, !462, !463, !465, !471}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !191, file: !192, line: 38, baseType: !190, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !191, file: !192, line: 39, baseType: !26, size: 8, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !191, file: !192, line: 40, baseType: !26, size: 8, offset: 72)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !191, file: !192, line: 41, baseType: !61, size: 16, offset: 80)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !191, file: !192, line: 42, baseType: !26, size: 8, offset: 96)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !191, file: !192, line: 43, baseType: !26, size: 8, offset: 104)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !191, file: !192, line: 44, baseType: !26, size: 8, offset: 112)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !191, file: !192, line: 45, baseType: !202, size: 16, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !21, line: 445, baseType: !61)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !191, file: !192, line: 46, baseType: !26, size: 8, offset: 144)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !191, file: !192, line: 47, baseType: !26, size: 8, offset: 152)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !191, file: !192, line: 48, baseType: !26, size: 8, offset: 160)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !191, file: !192, line: 49, baseType: !26, size: 8, offset: 168)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !191, file: !192, line: 50, baseType: !26, size: 8, offset: 176)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !191, file: !192, line: 51, baseType: !26, size: 8, offset: 184)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !191, file: !192, line: 52, baseType: !26, size: 8, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !191, file: !192, line: 53, baseType: !26, size: 8, offset: 200)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !191, file: !192, line: 54, baseType: !64, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !191, file: !192, line: 55, baseType: !22, size: 32, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !191, file: !192, line: 56, baseType: !22, size: 32, offset: 352)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !191, file: !192, line: 57, baseType: !22, size: 32, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !191, file: !192, line: 58, baseType: !22, size: 32, offset: 416)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !191, file: !192, line: 60, baseType: !217, size: 640, offset: 448)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 893, size: 640, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !305, !306, !419, !420}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !217, file: !6, line: 894, baseType: !64, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !217, file: !6, line: 895, baseType: !64, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !217, file: !6, line: 896, baseType: !64, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !217, file: !6, line: 897, baseType: !64, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !217, file: !6, line: 898, baseType: !64, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !217, file: !6, line: 899, baseType: !225, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 875, size: 1600, elements: !227)
!227 = !{!228, !248, !264}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !226, file: !6, line: 876, baseType: !229, size: 448)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 828, size: 448, elements: !230)
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !247}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !229, file: !6, line: 829, baseType: !225, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !229, file: !6, line: 829, baseType: !26, size: 8, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !229, file: !6, line: 829, baseType: !26, size: 8, offset: 72)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !229, file: !6, line: 829, baseType: !61, size: 16, offset: 80)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !229, file: !6, line: 829, baseType: !64, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !229, file: !6, line: 829, baseType: !225, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !229, file: !6, line: 829, baseType: !93, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !229, file: !6, line: 829, baseType: !239, size: 64, offset: 320)
!239 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 716, size: 64, elements: !240)
!240 = !{!241, !242, !243, !244, !245, !246}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !239, file: !6, line: 717, baseType: !33, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !239, file: !6, line: 718, baseType: !22, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !239, file: !6, line: 719, baseType: !36, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !239, file: !6, line: 720, baseType: !64, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !239, file: !6, line: 721, baseType: !36, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !239, file: !6, line: 722, baseType: !225, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !229, file: !6, line: 829, baseType: !26, size: 8, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !226, file: !6, line: 877, baseType: !249, size: 640)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 835, size: 640, elements: !250)
!250 = !{!251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !249, file: !6, line: 836, baseType: !225, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !249, file: !6, line: 836, baseType: !26, size: 8, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !249, file: !6, line: 836, baseType: !26, size: 8, offset: 72)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !249, file: !6, line: 836, baseType: !61, size: 16, offset: 80)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !249, file: !6, line: 836, baseType: !64, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !249, file: !6, line: 836, baseType: !225, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !249, file: !6, line: 836, baseType: !93, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !249, file: !6, line: 836, baseType: !239, size: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !249, file: !6, line: 836, baseType: !26, size: 8, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !249, file: !6, line: 836, baseType: !36, size: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !249, file: !6, line: 837, baseType: !64, size: 64, offset: 512)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !249, file: !6, line: 838, baseType: !22, size: 32, offset: 576)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !249, file: !6, line: 839, baseType: !22, size: 32, offset: 608)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !226, file: !6, line: 878, baseType: !265, size: 1600)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 846, size: 1600, elements: !266)
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !265, file: !6, line: 847, baseType: !225, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !265, file: !6, line: 847, baseType: !26, size: 8, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !265, file: !6, line: 847, baseType: !26, size: 8, offset: 72)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !265, file: !6, line: 847, baseType: !61, size: 16, offset: 80)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !265, file: !6, line: 847, baseType: !64, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !6, line: 847, baseType: !225, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !265, file: !6, line: 847, baseType: !93, size: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !265, file: !6, line: 847, baseType: !239, size: 64, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !265, file: !6, line: 847, baseType: !26, size: 8, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !265, file: !6, line: 847, baseType: !225, size: 64, offset: 448)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !265, file: !6, line: 848, baseType: !225, size: 64, offset: 512)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !265, file: !6, line: 849, baseType: !36, size: 64, offset: 576)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !265, file: !6, line: 850, baseType: !26, size: 8, offset: 640)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !265, file: !6, line: 851, baseType: !36, size: 64, offset: 704)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !265, file: !6, line: 852, baseType: !36, size: 64, offset: 768)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !265, file: !6, line: 853, baseType: !36, size: 64, offset: 832)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !265, file: !6, line: 854, baseType: !43, size: 32, offset: 896)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !265, file: !6, line: 855, baseType: !22, size: 32, offset: 928)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !265, file: !6, line: 856, baseType: !22, size: 32, offset: 960)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !265, file: !6, line: 857, baseType: !22, size: 32, offset: 992)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !265, file: !6, line: 858, baseType: !22, size: 32, offset: 1024)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !265, file: !6, line: 859, baseType: !22, size: 32, offset: 1056)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !265, file: !6, line: 860, baseType: !22, size: 32, offset: 1088)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !265, file: !6, line: 861, baseType: !22, size: 32, offset: 1120)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !265, file: !6, line: 862, baseType: !22, size: 32, offset: 1152)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !265, file: !6, line: 863, baseType: !22, size: 32, offset: 1184)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !265, file: !6, line: 864, baseType: !22, size: 32, offset: 1216)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !265, file: !6, line: 865, baseType: !22, size: 32, offset: 1248)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !265, file: !6, line: 866, baseType: !22, size: 32, offset: 1280)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !265, file: !6, line: 867, baseType: !22, size: 32, offset: 1312)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !265, file: !6, line: 868, baseType: !61, size: 16, offset: 1344)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !265, file: !6, line: 869, baseType: !26, size: 8, offset: 1360)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !265, file: !6, line: 870, baseType: !26, size: 8, offset: 1368)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !265, file: !6, line: 871, baseType: !26, size: 8, offset: 1376)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !265, file: !6, line: 872, baseType: !302, size: 160, offset: 1384)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 160, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 20)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !217, file: !6, line: 900, baseType: !93, size: 64, offset: 384)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !217, file: !6, line: 901, baseType: !307, size: 64, offset: 448)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 663, size: 640, elements: !309)
!309 = !{!310, !318, !331, !340, !349, !362, !376, !388, !398}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !308, file: !6, line: 664, baseType: !311, size: 128)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 567, size: 128, elements: !312)
!312 = !{!313, !314, !315, !316, !317}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !311, file: !6, line: 568, baseType: !31, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !311, file: !6, line: 568, baseType: !26, size: 8, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !6, line: 568, baseType: !26, size: 8, offset: 72)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !311, file: !6, line: 568, baseType: !61, size: 16, offset: 80)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !311, file: !6, line: 568, baseType: !61, size: 16, offset: 96)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !308, file: !6, line: 665, baseType: !319, size: 384)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 593, size: 384, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !6, line: 594, baseType: !31, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !319, file: !6, line: 594, baseType: !26, size: 8, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !6, line: 594, baseType: !26, size: 8, offset: 72)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !319, file: !6, line: 594, baseType: !61, size: 16, offset: 80)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !319, file: !6, line: 594, baseType: !61, size: 16, offset: 96)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !319, file: !6, line: 594, baseType: !61, size: 16, offset: 112)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !319, file: !6, line: 595, baseType: !225, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !319, file: !6, line: 596, baseType: !64, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !319, file: !6, line: 597, baseType: !64, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !319, file: !6, line: 598, baseType: !33, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !308, file: !6, line: 666, baseType: !332, size: 192)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 573, size: 192, elements: !333)
!333 = !{!334, !335, !336, !337, !338, !339}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !6, line: 574, baseType: !31, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !332, file: !6, line: 574, baseType: !26, size: 8, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !6, line: 574, baseType: !26, size: 8, offset: 72)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !332, file: !6, line: 574, baseType: !61, size: 16, offset: 80)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !332, file: !6, line: 574, baseType: !61, size: 16, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !332, file: !6, line: 574, baseType: !97, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !308, file: !6, line: 667, baseType: !341, size: 192)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 604, size: 192, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !341, file: !6, line: 605, baseType: !31, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !341, file: !6, line: 605, baseType: !26, size: 8, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !341, file: !6, line: 605, baseType: !26, size: 8, offset: 72)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !341, file: !6, line: 605, baseType: !61, size: 16, offset: 80)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !341, file: !6, line: 605, baseType: !61, size: 16, offset: 96)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !341, file: !6, line: 605, baseType: !93, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !308, file: !6, line: 668, baseType: !350, size: 448)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 608, size: 448, elements: !351)
!351 = !{!352, !353, !354, !355, !356, !357, !358, !359, !360, !361}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !350, file: !6, line: 609, baseType: !31, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !350, file: !6, line: 609, baseType: !26, size: 8, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !350, file: !6, line: 609, baseType: !26, size: 8, offset: 72)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !350, file: !6, line: 609, baseType: !61, size: 16, offset: 80)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !350, file: !6, line: 609, baseType: !61, size: 16, offset: 96)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !350, file: !6, line: 609, baseType: !22, size: 32, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !350, file: !6, line: 610, baseType: !225, size: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !350, file: !6, line: 611, baseType: !64, size: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !350, file: !6, line: 612, baseType: !64, size: 64, offset: 320)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !350, file: !6, line: 613, baseType: !22, size: 32, offset: 384)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !308, file: !6, line: 669, baseType: !363, size: 512)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 580, size: 512, elements: !364)
!364 = !{!365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !363, file: !6, line: 581, baseType: !31, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !363, file: !6, line: 581, baseType: !26, size: 8, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !363, file: !6, line: 581, baseType: !26, size: 8, offset: 72)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !363, file: !6, line: 581, baseType: !61, size: 16, offset: 80)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !363, file: !6, line: 581, baseType: !61, size: 16, offset: 96)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !363, file: !6, line: 581, baseType: !22, size: 32, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !363, file: !6, line: 582, baseType: !97, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !363, file: !6, line: 583, baseType: !97, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !363, file: !6, line: 584, baseType: !190, size: 64, offset: 320)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !363, file: !6, line: 585, baseType: !31, size: 64, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !363, file: !6, line: 586, baseType: !22, size: 32, offset: 448)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !308, file: !6, line: 670, baseType: !377, size: 320)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 620, size: 320, elements: !378)
!378 = !{!379, !380, !381, !382, !383, !384, !385, !386, !387}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !6, line: 621, baseType: !31, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !377, file: !6, line: 621, baseType: !26, size: 8, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !377, file: !6, line: 621, baseType: !26, size: 8, offset: 72)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !377, file: !6, line: 621, baseType: !61, size: 16, offset: 80)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !377, file: !6, line: 621, baseType: !61, size: 16, offset: 96)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !377, file: !6, line: 621, baseType: !26, size: 8, offset: 112)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !377, file: !6, line: 622, baseType: !190, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !377, file: !6, line: 623, baseType: !97, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !377, file: !6, line: 624, baseType: !33, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !308, file: !6, line: 671, baseType: !389, size: 640)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 631, size: 640, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !389, file: !6, line: 632, baseType: !31, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !389, file: !6, line: 632, baseType: !26, size: 8, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !389, file: !6, line: 632, baseType: !26, size: 8, offset: 72)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !389, file: !6, line: 632, baseType: !61, size: 16, offset: 80)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !389, file: !6, line: 632, baseType: !61, size: 16, offset: 96)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !389, file: !6, line: 633, baseType: !397, size: 512, offset: 128)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 512, elements: !55)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !308, file: !6, line: 672, baseType: !399, size: 320)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 654, size: 320, elements: !400)
!400 = !{!401, !402, !403, !404, !405, !406, !407, !408, !409}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !399, file: !6, line: 655, baseType: !31, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !399, file: !6, line: 655, baseType: !26, size: 8, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !399, file: !6, line: 655, baseType: !26, size: 8, offset: 72)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !399, file: !6, line: 655, baseType: !61, size: 16, offset: 80)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !399, file: !6, line: 655, baseType: !61, size: 16, offset: 96)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !399, file: !6, line: 655, baseType: !26, size: 8, offset: 112)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !399, file: !6, line: 656, baseType: !93, size: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !399, file: !6, line: 657, baseType: !97, size: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !399, file: !6, line: 658, baseType: !410, size: 64, offset: 256)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 645, size: 128, elements: !412)
!412 = !{!413, !418}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !411, file: !6, line: 646, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !21, line: 1052, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !30, !22, !31}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !411, file: !6, line: 647, baseType: !31, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !217, file: !6, line: 902, baseType: !225, size: 64, offset: 512)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !217, file: !6, line: 903, baseType: !22, size: 32, offset: 576)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !191, file: !192, line: 61, baseType: !22, size: 32, offset: 1088)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !191, file: !192, line: 62, baseType: !22, size: 32, offset: 1120)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !191, file: !192, line: 63, baseType: !61, size: 16, offset: 1152)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !191, file: !192, line: 64, baseType: !26, size: 8, offset: 1168)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !191, file: !192, line: 66, baseType: !426, size: 2688, offset: 1216)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 2688, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 7)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !191, file: !192, line: 67, baseType: !430, size: 3072, offset: 3904)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 3072, elements: !55)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !191, file: !192, line: 68, baseType: !432, size: 576, offset: 6976)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 576, elements: !71)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !191, file: !192, line: 69, baseType: !155, size: 64, offset: 7552)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !191, file: !192, line: 71, baseType: !64, size: 64, offset: 7616)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !191, file: !192, line: 72, baseType: !155, size: 64, offset: 7680)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !191, file: !192, line: 73, baseType: !307, size: 64, offset: 7744)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !191, file: !192, line: 74, baseType: !93, size: 64, offset: 7808)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !191, file: !192, line: 75, baseType: !97, size: 64, offset: 7872)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !191, file: !192, line: 76, baseType: !93, size: 64, offset: 7936)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !191, file: !192, line: 77, baseType: !225, size: 64, offset: 8000)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !191, file: !192, line: 78, baseType: !97, size: 64, offset: 8064)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !191, file: !192, line: 79, baseType: !93, size: 64, offset: 8128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !191, file: !192, line: 80, baseType: !36, size: 64, offset: 8192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !191, file: !192, line: 81, baseType: !225, size: 64, offset: 8256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !191, file: !192, line: 82, baseType: !446, size: 64, offset: 8320)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 702, size: 128, elements: !449)
!449 = !{!450, !451, !452, !453, !454, !455}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !448, file: !6, line: 706, baseType: !22, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !448, file: !6, line: 707, baseType: !22, size: 32, offset: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !448, file: !6, line: 708, baseType: !61, size: 16, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !448, file: !6, line: 709, baseType: !26, size: 8, offset: 80)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !448, file: !6, line: 710, baseType: !26, size: 8, offset: 88)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !448, file: !6, line: 711, baseType: !26, size: 8, offset: 96)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !191, file: !192, line: 83, baseType: !225, size: 64, offset: 8384)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !191, file: !192, line: 84, baseType: !97, size: 64, offset: 8448)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !191, file: !192, line: 85, baseType: !307, size: 64, offset: 8512)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !191, file: !192, line: 86, baseType: !97, size: 64, offset: 8576)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !191, file: !192, line: 87, baseType: !307, size: 64, offset: 8640)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !191, file: !192, line: 88, baseType: !225, size: 64, offset: 8704)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !191, file: !192, line: 89, baseType: !225, size: 64, offset: 8768)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !191, file: !192, line: 90, baseType: !464, size: 64, offset: 8832)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !191, file: !192, line: 91, baseType: !466, size: 64, offset: 8896)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 637, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!20, !190, !470}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !191, file: !192, line: 92, baseType: !472, size: 64, offset: 8960)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 641, baseType: !187)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !183, file: !99, line: 152, baseType: !97, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !169, file: !99, line: 155, baseType: !22, size: 32, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !169, file: !99, line: 156, baseType: !202, size: 16, offset: 416)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !169, file: !99, line: 157, baseType: !26, size: 8, offset: 432)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !98, file: !99, line: 375, baseType: !478, size: 576)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !99, line: 122, size: 576, elements: !479)
!479 = !{!480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !478, file: !99, line: 123, baseType: !97, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !478, file: !99, line: 123, baseType: !26, size: 8, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !478, file: !99, line: 123, baseType: !26, size: 8, offset: 72)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !478, file: !99, line: 123, baseType: !61, size: 16, offset: 80)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !478, file: !99, line: 123, baseType: !26, size: 8, offset: 96)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !478, file: !99, line: 123, baseType: !26, size: 8, offset: 104)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !478, file: !99, line: 124, baseType: !61, size: 16, offset: 112)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !478, file: !99, line: 125, baseType: !31, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !478, file: !99, line: 126, baseType: !33, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !478, file: !99, line: 127, baseType: !464, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !478, file: !99, line: 128, baseType: !97, size: 64, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !478, file: !99, line: 129, baseType: !97, size: 64, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !478, file: !99, line: 130, baseType: !93, size: 64, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !478, file: !99, line: 131, baseType: !26, size: 8, offset: 512)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !98, file: !99, line: 376, baseType: !495, size: 448)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !99, line: 134, size: 448, elements: !496)
!496 = !{!497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !508}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !495, file: !99, line: 135, baseType: !97, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !495, file: !99, line: 135, baseType: !26, size: 8, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !495, file: !99, line: 135, baseType: !26, size: 8, offset: 72)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !495, file: !99, line: 135, baseType: !61, size: 16, offset: 80)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !495, file: !99, line: 135, baseType: !26, size: 8, offset: 96)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !495, file: !99, line: 135, baseType: !26, size: 8, offset: 104)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !495, file: !99, line: 136, baseType: !93, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !495, file: !99, line: 137, baseType: !97, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !495, file: !99, line: 138, baseType: !97, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !495, file: !99, line: 139, baseType: !507, size: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !21, line: 129, baseType: !33)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !495, file: !99, line: 140, baseType: !22, size: 32, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !98, file: !99, line: 377, baseType: !510, size: 320)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !99, line: 184, size: 320, elements: !511)
!511 = !{!512, !513, !514, !515, !516, !517, !521}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !510, file: !99, line: 185, baseType: !97, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !510, file: !99, line: 185, baseType: !26, size: 8, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !510, file: !99, line: 185, baseType: !26, size: 8, offset: 72)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !510, file: !99, line: 185, baseType: !61, size: 16, offset: 80)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !510, file: !99, line: 185, baseType: !26, size: 8, offset: 96)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !510, file: !99, line: 185, baseType: !518, size: 128, offset: 128)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 128, elements: !519)
!519 = !{!520}
!520 = !DISubrange(count: 2)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !510, file: !99, line: 185, baseType: !97, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !98, file: !99, line: 378, baseType: !523, size: 384)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !99, line: 187, size: 384, elements: !524)
!524 = !{!525, !526, !527, !528, !529, !530, !531, !532}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !523, file: !99, line: 188, baseType: !97, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !523, file: !99, line: 188, baseType: !26, size: 8, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !523, file: !99, line: 188, baseType: !26, size: 8, offset: 72)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !523, file: !99, line: 188, baseType: !61, size: 16, offset: 80)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !523, file: !99, line: 188, baseType: !26, size: 8, offset: 96)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !523, file: !99, line: 189, baseType: !518, size: 128, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !523, file: !99, line: 189, baseType: !97, size: 64, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !523, file: !99, line: 189, baseType: !533, size: 64, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !535)
!535 = !{!536, !537, !538, !539, !547, !562, !594, !595, !596, !597, !598, !599}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !534, file: !6, line: 481, baseType: !93, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !534, file: !6, line: 482, baseType: !533, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !534, file: !6, line: 483, baseType: !533, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !534, file: !6, line: 484, baseType: !540, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !542)
!542 = !{!543, !544, !545, !546}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !541, file: !6, line: 498, baseType: !540, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !541, file: !6, line: 499, baseType: !540, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !541, file: !6, line: 500, baseType: !533, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !541, file: !6, line: 501, baseType: !22, size: 32, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !534, file: !6, line: 485, baseType: !548, size: 64, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !550)
!550 = !{!551, !556, !557, !558, !559, !560, !561}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !549, file: !6, line: 467, baseType: !552, size: 128)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !553)
!553 = !{!554, !555}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !552, file: !6, line: 460, baseType: !26, size: 8)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !552, file: !6, line: 461, baseType: !33, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !549, file: !6, line: 468, baseType: !552, size: 128, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !549, file: !6, line: 469, baseType: !61, size: 16, offset: 256)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !549, file: !6, line: 470, baseType: !26, size: 8, offset: 272)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !549, file: !6, line: 471, baseType: !26, size: 8, offset: 280)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !549, file: !6, line: 472, baseType: !26, size: 8, offset: 288)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !549, file: !6, line: 473, baseType: !26, size: 8, offset: 296)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !534, file: !6, line: 486, baseType: !563, size: 64, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !565)
!565 = !{!566, !589, !590, !591, !592, !593}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !564, file: !6, line: 449, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !568)
!568 = !{!569, !570, !583}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !567, file: !6, line: 439, baseType: !93, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !567, file: !6, line: 440, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !573)
!573 = !{!574, !579, !580, !581, !582}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !572, file: !6, line: 420, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !21, line: 1049, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!22, !30, !22, !31}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !572, file: !6, line: 421, baseType: !31, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !572, file: !6, line: 422, baseType: !93, size: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !572, file: !6, line: 423, baseType: !26, size: 8, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !572, file: !6, line: 424, baseType: !26, size: 8, offset: 200)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !567, file: !6, line: 441, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !586)
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !585, file: !6, line: 430, baseType: !93, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !585, file: !6, line: 431, baseType: !584, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !564, file: !6, line: 450, baseType: !548, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !564, file: !6, line: 451, baseType: !26, size: 8, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !564, file: !6, line: 452, baseType: !26, size: 8, offset: 136)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !564, file: !6, line: 453, baseType: !26, size: 8, offset: 144)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !564, file: !6, line: 454, baseType: !26, size: 8, offset: 152)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !534, file: !6, line: 487, baseType: !33, size: 64, offset: 384)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !534, file: !6, line: 488, baseType: !22, size: 32, offset: 448)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !534, file: !6, line: 489, baseType: !61, size: 16, offset: 480)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !534, file: !6, line: 490, baseType: !61, size: 16, offset: 496)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !534, file: !6, line: 491, baseType: !26, size: 8, offset: 512)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !534, file: !6, line: 492, baseType: !26, size: 8, offset: 520)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !98, file: !99, line: 379, baseType: !601, size: 384)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !99, line: 192, size: 384, elements: !602)
!602 = !{!603, !604, !605, !606, !607, !608, !609, !610, !611}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !601, file: !99, line: 193, baseType: !97, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !601, file: !99, line: 193, baseType: !26, size: 8, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !601, file: !99, line: 193, baseType: !26, size: 8, offset: 72)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !601, file: !99, line: 193, baseType: !61, size: 16, offset: 80)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !601, file: !99, line: 193, baseType: !26, size: 8, offset: 96)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !601, file: !99, line: 193, baseType: !518, size: 128, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !601, file: !99, line: 193, baseType: !97, size: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !601, file: !99, line: 193, baseType: !22, size: 32, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !601, file: !99, line: 194, baseType: !22, size: 32, offset: 352)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !98, file: !99, line: 380, baseType: !613, size: 384)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !99, line: 197, size: 384, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !620, !621, !622, !623, !624}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !613, file: !99, line: 198, baseType: !97, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !613, file: !99, line: 198, baseType: !26, size: 8, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !613, file: !99, line: 198, baseType: !26, size: 8, offset: 72)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !613, file: !99, line: 198, baseType: !61, size: 16, offset: 80)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !613, file: !99, line: 198, baseType: !26, size: 8, offset: 96)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !613, file: !99, line: 200, baseType: !26, size: 8, offset: 104)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !613, file: !99, line: 201, baseType: !26, size: 8, offset: 112)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !613, file: !99, line: 202, baseType: !518, size: 128, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !613, file: !99, line: 202, baseType: !97, size: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !613, file: !99, line: 202, baseType: !625, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !21, line: 128, baseType: !33)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !98, file: !99, line: 381, baseType: !627, size: 320)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !99, line: 205, size: 320, elements: !628)
!628 = !{!629, !630, !631, !632, !633, !634, !635}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !627, file: !99, line: 206, baseType: !97, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !627, file: !99, line: 206, baseType: !26, size: 8, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !627, file: !99, line: 206, baseType: !26, size: 8, offset: 72)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !627, file: !99, line: 206, baseType: !61, size: 16, offset: 80)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !627, file: !99, line: 206, baseType: !26, size: 8, offset: 96)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !627, file: !99, line: 206, baseType: !518, size: 128, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !627, file: !99, line: 206, baseType: !97, size: 64, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !98, file: !99, line: 382, baseType: !637, size: 384)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !99, line: 233, size: 384, elements: !638)
!638 = !{!639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !637, file: !99, line: 234, baseType: !97, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !637, file: !99, line: 234, baseType: !26, size: 8, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !637, file: !99, line: 234, baseType: !26, size: 8, offset: 72)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !637, file: !99, line: 234, baseType: !61, size: 16, offset: 80)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !637, file: !99, line: 234, baseType: !26, size: 8, offset: 96)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !637, file: !99, line: 234, baseType: !26, size: 8, offset: 104)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !637, file: !99, line: 234, baseType: !26, size: 8, offset: 112)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !637, file: !99, line: 234, baseType: !26, size: 8, offset: 120)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !637, file: !99, line: 234, baseType: !93, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !637, file: !99, line: 234, baseType: !22, size: 32, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !637, file: !99, line: 234, baseType: !22, size: 32, offset: 224)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !637, file: !99, line: 234, baseType: !22, size: 32, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !637, file: !99, line: 234, baseType: !26, size: 8, offset: 288)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !637, file: !99, line: 234, baseType: !26, size: 8, offset: 296)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !637, file: !99, line: 234, baseType: !97, size: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !98, file: !99, line: 383, baseType: !655, size: 576)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !99, line: 237, size: 576, elements: !656)
!656 = !{!657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !655, file: !99, line: 238, baseType: !97, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !655, file: !99, line: 238, baseType: !26, size: 8, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !655, file: !99, line: 238, baseType: !26, size: 8, offset: 72)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !655, file: !99, line: 238, baseType: !61, size: 16, offset: 80)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !655, file: !99, line: 238, baseType: !26, size: 8, offset: 96)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !655, file: !99, line: 238, baseType: !26, size: 8, offset: 104)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !655, file: !99, line: 238, baseType: !26, size: 8, offset: 112)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !655, file: !99, line: 238, baseType: !26, size: 8, offset: 120)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !655, file: !99, line: 238, baseType: !93, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !655, file: !99, line: 238, baseType: !22, size: 32, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !655, file: !99, line: 238, baseType: !22, size: 32, offset: 224)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !655, file: !99, line: 238, baseType: !22, size: 32, offset: 256)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !655, file: !99, line: 238, baseType: !26, size: 8, offset: 288)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !655, file: !99, line: 238, baseType: !26, size: 8, offset: 296)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !655, file: !99, line: 238, baseType: !61, size: 16, offset: 304)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !655, file: !99, line: 239, baseType: !97, size: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !655, file: !99, line: 240, baseType: !64, size: 64, offset: 384)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !655, file: !99, line: 241, baseType: !61, size: 16, offset: 448)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !655, file: !99, line: 242, baseType: !64, size: 64, offset: 512)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !98, file: !99, line: 384, baseType: !677, size: 384)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !99, line: 262, size: 384, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !677, file: !99, line: 263, baseType: !97, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !677, file: !99, line: 263, baseType: !26, size: 8, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !677, file: !99, line: 263, baseType: !26, size: 8, offset: 72)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !677, file: !99, line: 263, baseType: !61, size: 16, offset: 80)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !99, line: 263, baseType: !26, size: 8, offset: 96)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !677, file: !99, line: 263, baseType: !26, size: 8, offset: 104)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !677, file: !99, line: 263, baseType: !26, size: 8, offset: 112)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !677, file: !99, line: 263, baseType: !26, size: 8, offset: 120)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !677, file: !99, line: 263, baseType: !93, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !677, file: !99, line: 263, baseType: !22, size: 32, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !677, file: !99, line: 263, baseType: !22, size: 32, offset: 224)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !677, file: !99, line: 263, baseType: !22, size: 32, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !677, file: !99, line: 263, baseType: !26, size: 8, offset: 288)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !677, file: !99, line: 263, baseType: !26, size: 8, offset: 296)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !677, file: !99, line: 263, baseType: !26, size: 8, offset: 304)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !677, file: !99, line: 264, baseType: !97, size: 64, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !98, file: !99, line: 385, baseType: !696, size: 448)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !99, line: 245, size: 448, elements: !697)
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !696, file: !99, line: 246, baseType: !97, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !696, file: !99, line: 246, baseType: !26, size: 8, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !696, file: !99, line: 246, baseType: !26, size: 8, offset: 72)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !696, file: !99, line: 246, baseType: !61, size: 16, offset: 80)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !99, line: 246, baseType: !26, size: 8, offset: 96)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !696, file: !99, line: 246, baseType: !26, size: 8, offset: 104)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !696, file: !99, line: 246, baseType: !26, size: 8, offset: 112)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !696, file: !99, line: 246, baseType: !26, size: 8, offset: 120)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !696, file: !99, line: 246, baseType: !93, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !696, file: !99, line: 246, baseType: !22, size: 32, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !696, file: !99, line: 246, baseType: !22, size: 32, offset: 224)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !696, file: !99, line: 246, baseType: !22, size: 32, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !696, file: !99, line: 246, baseType: !26, size: 8, offset: 288)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !696, file: !99, line: 246, baseType: !26, size: 8, offset: 296)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !696, file: !99, line: 246, baseType: !97, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !696, file: !99, line: 247, baseType: !97, size: 64, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !98, file: !99, line: 386, baseType: !715, size: 448)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !99, line: 250, size: 448, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !715, file: !99, line: 251, baseType: !97, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !715, file: !99, line: 251, baseType: !26, size: 8, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !715, file: !99, line: 251, baseType: !26, size: 8, offset: 72)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !715, file: !99, line: 251, baseType: !61, size: 16, offset: 80)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !99, line: 251, baseType: !26, size: 8, offset: 96)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !715, file: !99, line: 251, baseType: !26, size: 8, offset: 104)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !715, file: !99, line: 251, baseType: !26, size: 8, offset: 112)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !715, file: !99, line: 251, baseType: !26, size: 8, offset: 120)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !715, file: !99, line: 251, baseType: !93, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !715, file: !99, line: 251, baseType: !22, size: 32, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !715, file: !99, line: 251, baseType: !22, size: 32, offset: 224)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !715, file: !99, line: 251, baseType: !22, size: 32, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !715, file: !99, line: 251, baseType: !26, size: 8, offset: 288)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !715, file: !99, line: 251, baseType: !26, size: 8, offset: 296)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !715, file: !99, line: 256, baseType: !97, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !715, file: !99, line: 257, baseType: !97, size: 64, offset: 384)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !98, file: !99, line: 387, baseType: !734, size: 512)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !99, line: 273, size: 512, elements: !735)
!735 = !{!736, !737, !738, !739, !740, !741, !742, !743, !744, !745}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !734, file: !99, line: 274, baseType: !97, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !734, file: !99, line: 274, baseType: !26, size: 8, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !734, file: !99, line: 274, baseType: !26, size: 8, offset: 72)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !734, file: !99, line: 274, baseType: !61, size: 16, offset: 80)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !734, file: !99, line: 274, baseType: !26, size: 8, offset: 96)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !734, file: !99, line: 274, baseType: !93, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !734, file: !99, line: 275, baseType: !22, size: 32, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !734, file: !99, line: 276, baseType: !414, size: 64, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !734, file: !99, line: 277, baseType: !31, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !734, file: !99, line: 278, baseType: !518, size: 128, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !98, file: !99, line: 388, baseType: !747, size: 512)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !99, line: 281, size: 512, elements: !748)
!748 = !{!749, !750, !751, !752, !753, !754, !755, !756, !762, !763, !764, !770, !771}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !747, file: !99, line: 282, baseType: !97, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !747, file: !99, line: 282, baseType: !26, size: 8, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !747, file: !99, line: 282, baseType: !26, size: 8, offset: 72)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !747, file: !99, line: 282, baseType: !61, size: 16, offset: 80)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !99, line: 282, baseType: !26, size: 8, offset: 96)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !747, file: !99, line: 282, baseType: !26, size: 8, offset: 104)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !747, file: !99, line: 283, baseType: !26, size: 8, offset: 112)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !747, file: !99, line: 284, baseType: !757, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !21, line: 1084, baseType: !758)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!20, !22, !507, !22, !761, !31, !31}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !747, file: !99, line: 285, baseType: !93, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !747, file: !99, line: 286, baseType: !31, size: 64, offset: 256)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !747, file: !99, line: 287, baseType: !765, size: 64, offset: 320)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !21, line: 1102, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!20, !30, !22, !31, !769}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !747, file: !99, line: 288, baseType: !97, size: 64, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !747, file: !99, line: 289, baseType: !97, size: 64, offset: 448)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !98, file: !99, line: 389, baseType: !773, size: 512)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !99, line: 307, size: 512, elements: !774)
!774 = !{!775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !773, file: !99, line: 308, baseType: !97, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !773, file: !99, line: 308, baseType: !26, size: 8, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !773, file: !99, line: 308, baseType: !26, size: 8, offset: 72)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !773, file: !99, line: 308, baseType: !61, size: 16, offset: 80)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !773, file: !99, line: 308, baseType: !26, size: 8, offset: 96)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !773, file: !99, line: 308, baseType: !26, size: 8, offset: 104)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !773, file: !99, line: 309, baseType: !26, size: 8, offset: 112)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !773, file: !99, line: 310, baseType: !26, size: 8, offset: 120)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !773, file: !99, line: 311, baseType: !31, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !773, file: !99, line: 312, baseType: !93, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !773, file: !99, line: 313, baseType: !155, size: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !773, file: !99, line: 314, baseType: !64, size: 64, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !773, file: !99, line: 315, baseType: !64, size: 64, offset: 384)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !773, file: !99, line: 316, baseType: !22, size: 32, offset: 448)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !98, file: !99, line: 390, baseType: !790, size: 448)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !99, line: 340, size: 448, elements: !791)
!791 = !{!792, !793, !794, !795, !796, !797, !798, !799, !800, !801}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !790, file: !99, line: 341, baseType: !97, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !790, file: !99, line: 341, baseType: !26, size: 8, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !790, file: !99, line: 341, baseType: !26, size: 8, offset: 72)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !790, file: !99, line: 341, baseType: !61, size: 16, offset: 80)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !790, file: !99, line: 341, baseType: !26, size: 8, offset: 96)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !790, file: !99, line: 341, baseType: !93, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !790, file: !99, line: 342, baseType: !93, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !790, file: !99, line: 343, baseType: !31, size: 64, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !790, file: !99, line: 344, baseType: !64, size: 64, offset: 320)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !790, file: !99, line: 345, baseType: !22, size: 32, offset: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !98, file: !99, line: 391, baseType: !803, size: 256)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !99, line: 350, size: 256, elements: !804)
!804 = !{!805, !806, !807, !808, !809, !810, !815}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !803, file: !99, line: 351, baseType: !97, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !803, file: !99, line: 351, baseType: !26, size: 8, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !803, file: !99, line: 351, baseType: !26, size: 8, offset: 72)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !803, file: !99, line: 351, baseType: !61, size: 16, offset: 80)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !803, file: !99, line: 351, baseType: !26, size: 8, offset: 96)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !803, file: !99, line: 351, baseType: !811, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !21, line: 1055, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{null, !30, !31}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !803, file: !99, line: 352, baseType: !31, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !98, file: !99, line: 392, baseType: !817, size: 192)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !99, line: 357, size: 192, elements: !818)
!818 = !{!819, !820, !821, !822, !823, !824}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !817, file: !99, line: 358, baseType: !97, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !817, file: !99, line: 358, baseType: !26, size: 8, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !817, file: !99, line: 358, baseType: !26, size: 8, offset: 72)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !817, file: !99, line: 358, baseType: !61, size: 16, offset: 80)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !817, file: !99, line: 358, baseType: !26, size: 8, offset: 96)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !817, file: !99, line: 358, baseType: !97, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !98, file: !99, line: 399, baseType: !94, size: 384)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !94, file: !6, line: 135, baseType: !26, size: 8, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !6, line: 136, baseType: !26, size: 8, offset: 72)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !6, line: 137, baseType: !61, size: 16, offset: 80)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !94, file: !6, line: 138, baseType: !830, size: 32, offset: 96)
!830 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !40, line: 327, size: 32, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !830, file: !40, line: 328, baseType: !22, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !830, file: !40, line: 329, baseType: !43, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !94, file: !6, line: 139, baseType: !93, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !94, file: !6, line: 140, baseType: !93, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !94, file: !6, line: 141, baseType: !93, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !94, file: !6, line: 142, baseType: !202, size: 16, offset: 320)
!838 = !DILocation(line: 50, column: 30, scope: !79)
!839 = !DILocalVariable(name: "prefix_node", scope: !79, file: !3, line: 51, type: !93)
!840 = !DILocation(line: 51, column: 30, scope: !79)
!841 = !DILocation(line: 57, column: 7, scope: !842)
!842 = distinct !DILexicalBlock(scope: !79, file: !3, line: 57, column: 6)
!843 = !DILocation(line: 57, column: 18, scope: !842)
!844 = !DILocation(line: 57, column: 22, scope: !842)
!845 = !DILocation(line: 57, column: 6, scope: !79)
!846 = !DILocation(line: 58, column: 3, scope: !847)
!847 = distinct !DILexicalBlock(scope: !842, file: !3, line: 57, column: 32)
!848 = !DILocation(line: 63, column: 6, scope: !849)
!849 = distinct !DILexicalBlock(scope: !79, file: !3, line: 63, column: 6)
!850 = !DILocation(line: 63, column: 6, scope: !79)
!851 = !DILocation(line: 64, column: 41, scope: !852)
!852 = distinct !DILexicalBlock(scope: !849, file: !3, line: 63, column: 14)
!853 = !DILocation(line: 64, column: 17, scope: !852)
!854 = !DILocation(line: 64, column: 15, scope: !852)
!855 = !DILocation(line: 65, column: 8, scope: !856)
!856 = distinct !DILexicalBlock(scope: !852, file: !3, line: 65, column: 7)
!857 = !DILocation(line: 65, column: 7, scope: !852)
!858 = !DILocation(line: 66, column: 4, scope: !859)
!859 = distinct !DILexicalBlock(scope: !856, file: !3, line: 65, column: 21)
!860 = !DILocation(line: 68, column: 2, scope: !852)
!861 = !DILocation(line: 77, column: 6, scope: !862)
!862 = distinct !DILexicalBlock(scope: !79, file: !3, line: 77, column: 6)
!863 = !DILocation(line: 77, column: 6, scope: !79)
!864 = !DILocation(line: 83, column: 15, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !3, line: 83, column: 7)
!866 = distinct !DILexicalBlock(scope: !862, file: !3, line: 77, column: 40)
!867 = !DILocation(line: 83, column: 8, scope: !865)
!868 = !DILocation(line: 83, column: 7, scope: !866)
!869 = !DILocation(line: 85, column: 8, scope: !870)
!870 = distinct !DILexicalBlock(scope: !865, file: !3, line: 83, column: 45)
!871 = !DILocation(line: 84, column: 5, scope: !870)
!872 = !DILocation(line: 84, column: 16, scope: !870)
!873 = !DILocation(line: 86, column: 4, scope: !870)
!874 = !DILocation(line: 88, column: 2, scope: !866)
!875 = !DILocation(line: 88, column: 14, scope: !876)
!876 = distinct !DILexicalBlock(scope: !862, file: !3, line: 88, column: 13)
!877 = !DILocation(line: 88, column: 13, scope: !862)
!878 = !DILocation(line: 92, column: 3, scope: !879)
!879 = distinct !DILexicalBlock(scope: !876, file: !3, line: 88, column: 27)
!880 = !DILocation(line: 98, column: 23, scope: !79)
!881 = !DILocation(line: 98, column: 36, scope: !79)
!882 = !DILocation(line: 98, column: 6, scope: !79)
!883 = !DILocation(line: 97, column: 9, scope: !79)
!884 = !DILocation(line: 99, column: 6, scope: !885)
!885 = distinct !DILexicalBlock(scope: !79, file: !3, line: 99, column: 6)
!886 = !DILocation(line: 99, column: 6, scope: !79)
!887 = !DILocation(line: 100, column: 17, scope: !888)
!888 = distinct !DILexicalBlock(scope: !885, file: !3, line: 99, column: 28)
!889 = !DILocation(line: 100, column: 4, scope: !888)
!890 = !DILocation(line: 100, column: 15, scope: !888)
!891 = !DILocation(line: 101, column: 2, scope: !888)
!892 = !DILocation(line: 103, column: 10, scope: !79)
!893 = !DILocation(line: 103, column: 2, scope: !79)
!894 = !DILocation(line: 104, column: 1, scope: !79)
!895 = distinct !DISubprogram(name: "acpi_get_name", scope: !3, file: !3, line: 124, type: !896, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !83)
!896 = !DISubroutineType(types: !897)
!897 = !{!20, !30, !22, !898}
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !21, line: 969, size: 128, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !899, file: !21, line: 970, baseType: !32, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !899, file: !21, line: 971, baseType: !31, size: 64, offset: 64)
!903 = !DILocalVariable(name: "handle", arg: 1, scope: !895, file: !3, line: 124, type: !30)
!904 = !DILocation(line: 124, column: 27, scope: !895)
!905 = !DILocalVariable(name: "name_type", arg: 2, scope: !895, file: !3, line: 124, type: !22)
!906 = !DILocation(line: 124, column: 39, scope: !895)
!907 = !DILocalVariable(name: "buffer", arg: 3, scope: !895, file: !3, line: 124, type: !898)
!908 = !DILocation(line: 124, column: 70, scope: !895)
!909 = !DILocalVariable(name: "status", scope: !895, file: !3, line: 126, type: !20)
!910 = !DILocation(line: 126, column: 14, scope: !895)
!911 = !DILocation(line: 130, column: 6, scope: !912)
!912 = distinct !DILexicalBlock(scope: !895, file: !3, line: 130, column: 6)
!913 = !DILocation(line: 130, column: 16, scope: !912)
!914 = !DILocation(line: 130, column: 6, scope: !895)
!915 = !DILocation(line: 131, column: 3, scope: !916)
!916 = distinct !DILexicalBlock(scope: !912, file: !3, line: 130, column: 38)
!917 = !DILocation(line: 134, column: 35, scope: !895)
!918 = !DILocation(line: 134, column: 11, scope: !895)
!919 = !DILocation(line: 134, column: 9, scope: !895)
!920 = !DILocation(line: 135, column: 6, scope: !921)
!921 = distinct !DILexicalBlock(scope: !895, file: !3, line: 135, column: 6)
!922 = !DILocation(line: 135, column: 6, scope: !895)
!923 = !DILocation(line: 136, column: 11, scope: !924)
!924 = distinct !DILexicalBlock(scope: !921, file: !3, line: 135, column: 28)
!925 = !DILocation(line: 136, column: 3, scope: !924)
!926 = !DILocation(line: 143, column: 11, scope: !895)
!927 = !DILocation(line: 143, column: 9, scope: !895)
!928 = !DILocation(line: 144, column: 6, scope: !929)
!929 = distinct !DILexicalBlock(scope: !895, file: !3, line: 144, column: 6)
!930 = !DILocation(line: 144, column: 6, scope: !895)
!931 = !DILocation(line: 145, column: 11, scope: !932)
!932 = distinct !DILexicalBlock(scope: !929, file: !3, line: 144, column: 28)
!933 = !DILocation(line: 145, column: 3, scope: !932)
!934 = !DILocation(line: 148, column: 6, scope: !935)
!935 = distinct !DILexicalBlock(scope: !895, file: !3, line: 148, column: 6)
!936 = !DILocation(line: 148, column: 16, scope: !935)
!937 = !DILocation(line: 148, column: 38, scope: !935)
!938 = !DILocation(line: 149, column: 6, scope: !935)
!939 = !DILocation(line: 149, column: 16, scope: !935)
!940 = !DILocation(line: 148, column: 6, scope: !895)
!941 = !DILocation(line: 153, column: 39, scope: !942)
!942 = distinct !DILexicalBlock(scope: !935, file: !3, line: 149, column: 51)
!943 = !DILocation(line: 153, column: 47, scope: !942)
!944 = !DILocation(line: 154, column: 11, scope: !942)
!945 = !DILocation(line: 154, column: 21, scope: !942)
!946 = !DILocation(line: 153, column: 12, scope: !942)
!947 = !DILocation(line: 153, column: 10, scope: !942)
!948 = !DILocation(line: 157, column: 2, scope: !942)
!949 = !DILocation(line: 160, column: 35, scope: !950)
!950 = distinct !DILexicalBlock(scope: !935, file: !3, line: 157, column: 9)
!951 = !DILocation(line: 160, column: 43, scope: !950)
!952 = !DILocation(line: 160, column: 12, scope: !950)
!953 = !DILocation(line: 160, column: 10, scope: !950)
!954 = !DILocation(line: 163, column: 8, scope: !895)
!955 = !DILocation(line: 164, column: 10, scope: !895)
!956 = !DILocation(line: 164, column: 2, scope: !895)
!957 = !DILocation(line: 165, column: 1, scope: !895)
!958 = distinct !DISubprogram(name: "acpi_get_object_info", scope: !3, file: !3, line: 226, type: !959, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !83)
!959 = !DISubroutineType(types: !960)
!960 = !{!20, !30, !961}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_info", file: !21, line: 1156, size: 768, elements: !964)
!964 = !{!965, !966, !967, !969, !970, !971, !972, !974, !978, !979, !984, !985, !986}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "info_size", scope: !963, file: !21, line: 1157, baseType: !22, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !963, file: !21, line: 1158, baseType: !22, size: 32, offset: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !963, file: !21, line: 1159, baseType: !968, size: 32, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !21, line: 635, baseType: !22)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !963, file: !21, line: 1160, baseType: !26, size: 8, offset: 96)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !963, file: !21, line: 1161, baseType: !61, size: 16, offset: 112)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !963, file: !21, line: 1162, baseType: !26, size: 8, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "highest_dstates", scope: !963, file: !21, line: 1163, baseType: !973, size: 32, offset: 136)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !44)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_dstates", scope: !963, file: !21, line: 1164, baseType: !975, size: 40, offset: 168)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 40, elements: !976)
!976 = !{!977}
!977 = !DISubrange(count: 5)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !963, file: !21, line: 1165, baseType: !33, size: 64, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !963, file: !21, line: 1166, baseType: !980, size: 128, offset: 320)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_device_id", file: !21, line: 1141, size: 128, elements: !981)
!981 = !{!982, !983}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !980, file: !21, line: 1142, baseType: !22, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !980, file: !21, line: 1143, baseType: !36, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !963, file: !21, line: 1167, baseType: !980, size: 128, offset: 448)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "class_code", scope: !963, file: !21, line: 1168, baseType: !980, size: 128, offset: 576)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "compatible_id_list", scope: !963, file: !21, line: 1169, baseType: !987, size: 64, offset: 704)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_device_id_list", file: !21, line: 1146, size: 64, elements: !988)
!988 = !{!989, !990, !991}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !987, file: !21, line: 1147, baseType: !22, size: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "list_size", scope: !987, file: !21, line: 1148, baseType: !22, size: 32, offset: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !987, file: !21, line: 1149, baseType: !992, offset: 64)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !980, elements: !993)
!993 = !{!994}
!994 = !DISubrange(count: -1)
!995 = !DILocalVariable(name: "handle", arg: 1, scope: !958, file: !3, line: 226, type: !30)
!996 = !DILocation(line: 226, column: 34, scope: !958)
!997 = !DILocalVariable(name: "return_buffer", arg: 2, scope: !958, file: !3, line: 227, type: !961)
!998 = !DILocation(line: 227, column: 34, scope: !958)
!999 = !DILocalVariable(name: "node", scope: !958, file: !3, line: 229, type: !93)
!1000 = !DILocation(line: 229, column: 30, scope: !958)
!1001 = !DILocalVariable(name: "info", scope: !958, file: !3, line: 230, type: !962)
!1002 = !DILocation(line: 230, column: 27, scope: !958)
!1003 = !DILocalVariable(name: "cid_list", scope: !958, file: !3, line: 231, type: !1004)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!1005 = !DILocation(line: 231, column: 34, scope: !958)
!1006 = !DILocalVariable(name: "hid", scope: !958, file: !3, line: 232, type: !1007)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!1008 = !DILocation(line: 232, column: 29, scope: !958)
!1009 = !DILocalVariable(name: "uid", scope: !958, file: !3, line: 233, type: !1007)
!1010 = !DILocation(line: 233, column: 29, scope: !958)
!1011 = !DILocalVariable(name: "cls", scope: !958, file: !3, line: 234, type: !1007)
!1012 = !DILocation(line: 234, column: 29, scope: !958)
!1013 = !DILocalVariable(name: "next_id_string", scope: !958, file: !3, line: 235, type: !36)
!1014 = !DILocation(line: 235, column: 8, scope: !958)
!1015 = !DILocalVariable(name: "type", scope: !958, file: !3, line: 236, type: !968)
!1016 = !DILocation(line: 236, column: 19, scope: !958)
!1017 = !DILocalVariable(name: "name", scope: !958, file: !3, line: 237, type: !1018)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_name", file: !21, line: 422, baseType: !22)
!1019 = !DILocation(line: 237, column: 12, scope: !958)
!1020 = !DILocalVariable(name: "param_count", scope: !958, file: !3, line: 238, type: !26)
!1021 = !DILocation(line: 238, column: 5, scope: !958)
!1022 = !DILocalVariable(name: "valid", scope: !958, file: !3, line: 239, type: !61)
!1023 = !DILocation(line: 239, column: 6, scope: !958)
!1024 = !DILocalVariable(name: "info_size", scope: !958, file: !3, line: 240, type: !22)
!1025 = !DILocation(line: 240, column: 6, scope: !958)
!1026 = !DILocalVariable(name: "i", scope: !958, file: !3, line: 241, type: !22)
!1027 = !DILocation(line: 241, column: 6, scope: !958)
!1028 = !DILocalVariable(name: "status", scope: !958, file: !3, line: 242, type: !20)
!1029 = !DILocation(line: 242, column: 14, scope: !958)
!1030 = !DILocation(line: 246, column: 7, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !958, file: !3, line: 246, column: 6)
!1032 = !DILocation(line: 246, column: 14, scope: !1031)
!1033 = !DILocation(line: 246, column: 18, scope: !1031)
!1034 = !DILocation(line: 246, column: 6, scope: !958)
!1035 = !DILocation(line: 247, column: 3, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 246, column: 33)
!1037 = !DILocation(line: 250, column: 11, scope: !958)
!1038 = !DILocation(line: 250, column: 9, scope: !958)
!1039 = !DILocation(line: 251, column: 6, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !958, file: !3, line: 251, column: 6)
!1041 = !DILocation(line: 251, column: 6, scope: !958)
!1042 = !DILocation(line: 252, column: 11, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 251, column: 28)
!1044 = !DILocation(line: 252, column: 3, scope: !1043)
!1045 = !DILocation(line: 255, column: 33, scope: !958)
!1046 = !DILocation(line: 255, column: 9, scope: !958)
!1047 = !DILocation(line: 255, column: 7, scope: !958)
!1048 = !DILocation(line: 256, column: 7, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !958, file: !3, line: 256, column: 6)
!1050 = !DILocation(line: 256, column: 6, scope: !958)
!1051 = !DILocation(line: 257, column: 9, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 256, column: 13)
!1053 = !DILocation(line: 258, column: 3, scope: !1052)
!1054 = !DILocation(line: 263, column: 12, scope: !958)
!1055 = !DILocation(line: 264, column: 9, scope: !958)
!1056 = !DILocation(line: 264, column: 15, scope: !958)
!1057 = !DILocation(line: 264, column: 7, scope: !958)
!1058 = !DILocation(line: 265, column: 9, scope: !958)
!1059 = !DILocation(line: 265, column: 15, scope: !958)
!1060 = !DILocation(line: 265, column: 20, scope: !958)
!1061 = !DILocation(line: 265, column: 7, scope: !958)
!1062 = !DILocation(line: 267, column: 6, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !958, file: !3, line: 267, column: 6)
!1064 = !DILocation(line: 267, column: 12, scope: !1063)
!1065 = !DILocation(line: 267, column: 17, scope: !1063)
!1066 = !DILocation(line: 267, column: 6, scope: !958)
!1067 = !DILocation(line: 268, column: 17, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 267, column: 38)
!1069 = !DILocation(line: 268, column: 23, scope: !1068)
!1070 = !DILocation(line: 268, column: 31, scope: !1068)
!1071 = !DILocation(line: 268, column: 38, scope: !1068)
!1072 = !DILocation(line: 268, column: 15, scope: !1068)
!1073 = !DILocation(line: 269, column: 2, scope: !1068)
!1074 = !DILocation(line: 271, column: 11, scope: !958)
!1075 = !DILocation(line: 271, column: 9, scope: !958)
!1076 = !DILocation(line: 272, column: 6, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !958, file: !3, line: 272, column: 6)
!1078 = !DILocation(line: 272, column: 6, scope: !958)
!1079 = !DILocation(line: 273, column: 11, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 272, column: 28)
!1081 = !DILocation(line: 273, column: 3, scope: !1080)
!1082 = !DILocation(line: 276, column: 7, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !958, file: !3, line: 276, column: 6)
!1084 = !DILocation(line: 276, column: 12, scope: !1083)
!1085 = !DILocation(line: 276, column: 33, scope: !1083)
!1086 = !DILocation(line: 276, column: 37, scope: !1083)
!1087 = !DILocation(line: 276, column: 42, scope: !1083)
!1088 = !DILocation(line: 276, column: 6, scope: !958)
!1089 = !DILocation(line: 288, column: 32, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 276, column: 67)
!1091 = !DILocation(line: 288, column: 12, scope: !1090)
!1092 = !DILocation(line: 288, column: 10, scope: !1090)
!1093 = !DILocation(line: 289, column: 7, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 289, column: 7)
!1095 = !DILocation(line: 289, column: 7, scope: !1090)
!1096 = !DILocation(line: 290, column: 17, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 289, column: 29)
!1098 = !DILocation(line: 290, column: 22, scope: !1097)
!1099 = !DILocation(line: 290, column: 14, scope: !1097)
!1100 = !DILocation(line: 291, column: 10, scope: !1097)
!1101 = !DILocation(line: 292, column: 3, scope: !1097)
!1102 = !DILocation(line: 296, column: 32, scope: !1090)
!1103 = !DILocation(line: 296, column: 12, scope: !1090)
!1104 = !DILocation(line: 296, column: 10, scope: !1090)
!1105 = !DILocation(line: 297, column: 7, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 297, column: 7)
!1107 = !DILocation(line: 297, column: 7, scope: !1090)
!1108 = !DILocation(line: 298, column: 17, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 297, column: 29)
!1110 = !DILocation(line: 298, column: 22, scope: !1109)
!1111 = !DILocation(line: 298, column: 14, scope: !1109)
!1112 = !DILocation(line: 299, column: 10, scope: !1109)
!1113 = !DILocation(line: 300, column: 3, scope: !1109)
!1114 = !DILocation(line: 304, column: 32, scope: !1090)
!1115 = !DILocation(line: 304, column: 12, scope: !1090)
!1116 = !DILocation(line: 304, column: 10, scope: !1090)
!1117 = !DILocation(line: 305, column: 7, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 305, column: 7)
!1119 = !DILocation(line: 305, column: 7, scope: !1090)
!1120 = !DILocation(line: 310, column: 9, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 305, column: 29)
!1122 = !DILocation(line: 310, column: 19, scope: !1121)
!1123 = !DILocation(line: 310, column: 29, scope: !1121)
!1124 = !DILocation(line: 309, column: 14, scope: !1121)
!1125 = !DILocation(line: 312, column: 10, scope: !1121)
!1126 = !DILocation(line: 313, column: 3, scope: !1121)
!1127 = !DILocation(line: 317, column: 32, scope: !1090)
!1128 = !DILocation(line: 317, column: 12, scope: !1090)
!1129 = !DILocation(line: 317, column: 10, scope: !1090)
!1130 = !DILocation(line: 318, column: 7, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 318, column: 7)
!1132 = !DILocation(line: 318, column: 7, scope: !1090)
!1133 = !DILocation(line: 319, column: 17, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 318, column: 29)
!1135 = !DILocation(line: 319, column: 22, scope: !1134)
!1136 = !DILocation(line: 319, column: 14, scope: !1134)
!1137 = !DILocation(line: 320, column: 10, scope: !1134)
!1138 = !DILocation(line: 321, column: 3, scope: !1134)
!1139 = !DILocation(line: 322, column: 2, scope: !1090)
!1140 = !DILocation(line: 328, column: 9, scope: !958)
!1141 = !DILocation(line: 328, column: 7, scope: !958)
!1142 = !DILocation(line: 329, column: 7, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !958, file: !3, line: 329, column: 6)
!1144 = !DILocation(line: 329, column: 6, scope: !958)
!1145 = !DILocation(line: 330, column: 10, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 329, column: 13)
!1147 = !DILocation(line: 331, column: 3, scope: !1146)
!1148 = !DILocation(line: 336, column: 7, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !958, file: !3, line: 336, column: 6)
!1150 = !DILocation(line: 336, column: 12, scope: !1149)
!1151 = !DILocation(line: 336, column: 33, scope: !1149)
!1152 = !DILocation(line: 336, column: 37, scope: !1149)
!1153 = !DILocation(line: 336, column: 42, scope: !1149)
!1154 = !DILocation(line: 336, column: 6, scope: !958)
!1155 = !DILocation(line: 348, column: 62, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 336, column: 67)
!1157 = !DILocation(line: 349, column: 10, scope: !1156)
!1158 = !DILocation(line: 349, column: 16, scope: !1156)
!1159 = !DILocation(line: 348, column: 12, scope: !1156)
!1160 = !DILocation(line: 348, column: 10, scope: !1156)
!1161 = !DILocation(line: 350, column: 7, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 350, column: 7)
!1163 = !DILocation(line: 350, column: 7, scope: !1156)
!1164 = !DILocation(line: 351, column: 10, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 350, column: 29)
!1166 = !DILocation(line: 352, column: 3, scope: !1165)
!1167 = !DILocation(line: 356, column: 42, scope: !1156)
!1168 = !DILocation(line: 359, column: 14, scope: !1156)
!1169 = !DILocation(line: 359, column: 20, scope: !1156)
!1170 = !DILocation(line: 356, column: 12, scope: !1156)
!1171 = !DILocation(line: 356, column: 10, scope: !1156)
!1172 = !DILocation(line: 360, column: 7, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 360, column: 7)
!1174 = !DILocation(line: 360, column: 7, scope: !1156)
!1175 = !DILocation(line: 361, column: 10, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 360, column: 29)
!1177 = !DILocation(line: 362, column: 3, scope: !1176)
!1178 = !DILocation(line: 366, column: 42, scope: !1156)
!1179 = !DILocation(line: 369, column: 14, scope: !1156)
!1180 = !DILocation(line: 369, column: 20, scope: !1156)
!1181 = !DILocation(line: 366, column: 12, scope: !1156)
!1182 = !DILocation(line: 366, column: 10, scope: !1156)
!1183 = !DILocation(line: 370, column: 7, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 370, column: 7)
!1185 = !DILocation(line: 370, column: 7, scope: !1156)
!1186 = !DILocation(line: 371, column: 10, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 370, column: 29)
!1188 = !DILocation(line: 372, column: 3, scope: !1187)
!1189 = !DILocation(line: 373, column: 2, scope: !1156)
!1190 = !DILocation(line: 379, column: 19, scope: !958)
!1191 = !DILocation(line: 379, column: 17, scope: !958)
!1192 = !DILocation(line: 380, column: 6, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !958, file: !3, line: 380, column: 6)
!1194 = !DILocation(line: 380, column: 6, scope: !958)
!1195 = !DILocation(line: 385, column: 19, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 380, column: 16)
!1197 = !DILocation(line: 385, column: 29, scope: !1196)
!1198 = !DILocation(line: 385, column: 8, scope: !1196)
!1199 = !DILocation(line: 385, column: 35, scope: !1196)
!1200 = !DILocation(line: 384, column: 18, scope: !1196)
!1201 = !DILocation(line: 387, column: 2, scope: !1196)
!1202 = !DILocation(line: 395, column: 6, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !958, file: !3, line: 395, column: 6)
!1204 = !DILocation(line: 395, column: 6, scope: !958)
!1205 = !DILocation(line: 396, column: 44, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 395, column: 11)
!1207 = !DILocation(line: 396, column: 50, scope: !1206)
!1208 = !DILocation(line: 397, column: 8, scope: !1206)
!1209 = !DILocation(line: 397, column: 13, scope: !1206)
!1210 = !DILocation(line: 396, column: 20, scope: !1206)
!1211 = !DILocation(line: 396, column: 18, scope: !1206)
!1212 = !DILocation(line: 399, column: 34, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 399, column: 7)
!1214 = !DILocation(line: 399, column: 39, scope: !1213)
!1215 = !DILocation(line: 399, column: 7, scope: !1213)
!1216 = !DILocation(line: 399, column: 7, scope: !1206)
!1217 = !DILocation(line: 400, column: 4, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 399, column: 48)
!1219 = !DILocation(line: 400, column: 10, scope: !1218)
!1220 = !DILocation(line: 400, column: 16, scope: !1218)
!1221 = !DILocation(line: 401, column: 3, scope: !1218)
!1222 = !DILocation(line: 402, column: 2, scope: !1206)
!1223 = !DILocation(line: 404, column: 6, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !958, file: !3, line: 404, column: 6)
!1225 = !DILocation(line: 404, column: 6, scope: !958)
!1226 = !DILocation(line: 405, column: 44, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 404, column: 11)
!1228 = !DILocation(line: 405, column: 50, scope: !1227)
!1229 = !DILocation(line: 406, column: 8, scope: !1227)
!1230 = !DILocation(line: 406, column: 13, scope: !1227)
!1231 = !DILocation(line: 405, column: 20, scope: !1227)
!1232 = !DILocation(line: 405, column: 18, scope: !1227)
!1233 = !DILocation(line: 407, column: 2, scope: !1227)
!1234 = !DILocation(line: 409, column: 6, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !958, file: !3, line: 409, column: 6)
!1236 = !DILocation(line: 409, column: 6, scope: !958)
!1237 = !DILocation(line: 410, column: 36, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 409, column: 16)
!1239 = !DILocation(line: 410, column: 46, scope: !1238)
!1240 = !DILocation(line: 410, column: 3, scope: !1238)
!1241 = !DILocation(line: 410, column: 9, scope: !1238)
!1242 = !DILocation(line: 410, column: 28, scope: !1238)
!1243 = !DILocation(line: 410, column: 34, scope: !1238)
!1244 = !DILocation(line: 411, column: 40, scope: !1238)
!1245 = !DILocation(line: 411, column: 50, scope: !1238)
!1246 = !DILocation(line: 411, column: 3, scope: !1238)
!1247 = !DILocation(line: 411, column: 9, scope: !1238)
!1248 = !DILocation(line: 411, column: 28, scope: !1238)
!1249 = !DILocation(line: 411, column: 38, scope: !1238)
!1250 = !DILocation(line: 415, column: 10, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 415, column: 3)
!1252 = !DILocation(line: 415, column: 8, scope: !1251)
!1253 = !DILocation(line: 415, column: 15, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 415, column: 3)
!1255 = !DILocation(line: 415, column: 19, scope: !1254)
!1256 = !DILocation(line: 415, column: 29, scope: !1254)
!1257 = !DILocation(line: 415, column: 17, scope: !1254)
!1258 = !DILocation(line: 415, column: 3, scope: !1251)
!1259 = !DILocation(line: 417, column: 32, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 415, column: 41)
!1261 = !DILocation(line: 417, column: 38, scope: !1260)
!1262 = !DILocation(line: 418, column: 10, scope: !1260)
!1263 = !DILocation(line: 418, column: 14, scope: !1260)
!1264 = !DILocation(line: 418, column: 19, scope: !1260)
!1265 = !DILocation(line: 418, column: 29, scope: !1260)
!1266 = !DILocation(line: 418, column: 33, scope: !1260)
!1267 = !DILocation(line: 419, column: 10, scope: !1260)
!1268 = !DILocation(line: 417, column: 8, scope: !1260)
!1269 = !DILocation(line: 416, column: 19, scope: !1260)
!1270 = !DILocation(line: 421, column: 35, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 421, column: 8)
!1272 = !DILocation(line: 421, column: 45, scope: !1271)
!1273 = !DILocation(line: 421, column: 49, scope: !1271)
!1274 = !DILocation(line: 421, column: 52, scope: !1271)
!1275 = !DILocation(line: 421, column: 8, scope: !1271)
!1276 = !DILocation(line: 421, column: 8, scope: !1260)
!1277 = !DILocation(line: 422, column: 5, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 421, column: 61)
!1279 = !DILocation(line: 422, column: 11, scope: !1278)
!1280 = !DILocation(line: 422, column: 17, scope: !1278)
!1281 = !DILocation(line: 423, column: 4, scope: !1278)
!1282 = !DILocation(line: 424, column: 3, scope: !1260)
!1283 = !DILocation(line: 415, column: 37, scope: !1254)
!1284 = !DILocation(line: 415, column: 3, scope: !1254)
!1285 = distinct !{!1285, !1258, !1286}
!1286 = !DILocation(line: 424, column: 3, scope: !1251)
!1287 = !DILocation(line: 425, column: 2, scope: !1238)
!1288 = !DILocation(line: 427, column: 6, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !958, file: !3, line: 427, column: 6)
!1290 = !DILocation(line: 427, column: 6, scope: !958)
!1291 = !DILocation(line: 428, column: 33, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 427, column: 11)
!1293 = !DILocation(line: 428, column: 39, scope: !1292)
!1294 = !DILocation(line: 429, column: 11, scope: !1292)
!1295 = !DILocation(line: 429, column: 16, scope: !1292)
!1296 = !DILocation(line: 428, column: 9, scope: !1292)
!1297 = !DILocation(line: 430, column: 2, scope: !1292)
!1298 = !DILocation(line: 434, column: 20, scope: !958)
!1299 = !DILocation(line: 434, column: 2, scope: !958)
!1300 = !DILocation(line: 434, column: 8, scope: !958)
!1301 = !DILocation(line: 434, column: 18, scope: !958)
!1302 = !DILocation(line: 435, column: 15, scope: !958)
!1303 = !DILocation(line: 435, column: 2, scope: !958)
!1304 = !DILocation(line: 435, column: 8, scope: !958)
!1305 = !DILocation(line: 435, column: 13, scope: !958)
!1306 = !DILocation(line: 436, column: 15, scope: !958)
!1307 = !DILocation(line: 436, column: 2, scope: !958)
!1308 = !DILocation(line: 436, column: 8, scope: !958)
!1309 = !DILocation(line: 436, column: 13, scope: !958)
!1310 = !DILocation(line: 437, column: 22, scope: !958)
!1311 = !DILocation(line: 437, column: 2, scope: !958)
!1312 = !DILocation(line: 437, column: 8, scope: !958)
!1313 = !DILocation(line: 437, column: 20, scope: !958)
!1314 = !DILocation(line: 438, column: 16, scope: !958)
!1315 = !DILocation(line: 438, column: 2, scope: !958)
!1316 = !DILocation(line: 438, column: 8, scope: !958)
!1317 = !DILocation(line: 438, column: 14, scope: !958)
!1318 = !DILocation(line: 440, column: 19, scope: !958)
!1319 = !DILocation(line: 440, column: 3, scope: !958)
!1320 = !DILocation(line: 440, column: 17, scope: !958)
!1321 = !DILocation(line: 441, column: 9, scope: !958)
!1322 = !DILocation(line: 441, column: 2, scope: !958)
!1323 = !DILabel(scope: !958, name: "cleanup", file: !3, line: 443)
!1324 = !DILocation(line: 443, column: 1, scope: !958)
!1325 = !DILocation(line: 444, column: 6, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !958, file: !3, line: 444, column: 6)
!1327 = !DILocation(line: 444, column: 6, scope: !958)
!1328 = !DILocation(line: 445, column: 3, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 444, column: 11)
!1330 = !DILocation(line: 446, column: 2, scope: !1329)
!1331 = !DILocation(line: 447, column: 6, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !958, file: !3, line: 447, column: 6)
!1333 = !DILocation(line: 447, column: 6, scope: !958)
!1334 = !DILocation(line: 448, column: 3, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 447, column: 11)
!1336 = !DILocation(line: 449, column: 2, scope: !1335)
!1337 = !DILocation(line: 450, column: 6, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !958, file: !3, line: 450, column: 6)
!1339 = !DILocation(line: 450, column: 6, scope: !958)
!1340 = !DILocation(line: 451, column: 3, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 450, column: 16)
!1342 = !DILocation(line: 452, column: 2, scope: !1341)
!1343 = !DILocation(line: 453, column: 6, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !958, file: !3, line: 453, column: 6)
!1345 = !DILocation(line: 453, column: 6, scope: !958)
!1346 = !DILocation(line: 454, column: 3, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 453, column: 11)
!1348 = !DILocation(line: 455, column: 2, scope: !1347)
!1349 = !DILocation(line: 456, column: 10, scope: !958)
!1350 = !DILocation(line: 456, column: 2, scope: !958)
!1351 = !DILocation(line: 457, column: 1, scope: !958)
!1352 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1353, file: !1353, line: 55, type: !1354, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !83)
!1353 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!31, !32}
!1356 = !DILocalVariable(name: "flags", arg: 1, scope: !1357, file: !1358, line: 162, type: !67)
!1357 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1358, file: !1358, line: 162, type: !1359, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !83)
!1358 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!1361, !67}
!1361 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1362 = !DILocation(line: 162, column: 67, scope: !1357, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 57, column: 23, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !1353, line: 57, column: 23)
!1365 = distinct !DILexicalBlock(scope: !1352, file: !1353, line: 57, column: 23)
!1366 = !DILocalVariable(name: "size", arg: 1, scope: !1352, file: !1353, line: 55, type: !32)
!1367 = !DILocation(line: 55, column: 55, scope: !1352)
!1368 = !DILocation(line: 57, column: 17, scope: !1352)
!1369 = !DILocalVariable(name: "_flags", scope: !1365, file: !1353, line: 57, type: !67)
!1370 = !DILocation(line: 57, column: 23, scope: !1365)
!1371 = !DILocalVariable(name: "__dummy", scope: !1372, file: !1353, line: 57, type: !67)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !1353, line: 57, column: 23)
!1373 = distinct !DILexicalBlock(scope: !1365, file: !1353, line: 57, column: 23)
!1374 = !DILocation(line: 57, column: 23, scope: !1372)
!1375 = !DILocalVariable(name: "__dummy2", scope: !1372, file: !1353, line: 57, type: !67)
!1376 = !DILocation(line: 57, column: 23, scope: !1373)
!1377 = !DILocalVariable(name: "__dummy", scope: !1378, file: !1353, line: 57, type: !67)
!1378 = distinct !DILexicalBlock(scope: !1364, file: !1353, line: 57, column: 23)
!1379 = !DILocation(line: 57, column: 23, scope: !1378)
!1380 = !DILocalVariable(name: "__dummy2", scope: !1378, file: !1353, line: 57, type: !67)
!1381 = !DILocation(line: 57, column: 23, scope: !1364)
!1382 = !DILocation(line: 164, column: 11, scope: !1357, inlinedAt: !1363)
!1383 = !DILocation(line: 164, column: 17, scope: !1357, inlinedAt: !1363)
!1384 = !DILocation(line: 164, column: 9, scope: !1357, inlinedAt: !1363)
!1385 = !DILocation(line: 57, column: 23, scope: !1352)
!1386 = !DILocation(line: 57, column: 9, scope: !1352)
!1387 = !DILocation(line: 57, column: 2, scope: !1352)
!1388 = distinct !DISubprogram(name: "acpi_ns_copy_device_id", scope: !3, file: !3, line: 182, type: !1389, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !83)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!36, !1007, !1007, !36}
!1391 = !DILocalVariable(name: "dest", arg: 1, scope: !1388, file: !3, line: 182, type: !1007)
!1392 = !DILocation(line: 182, column: 64, scope: !1388)
!1393 = !DILocalVariable(name: "source", arg: 2, scope: !1388, file: !3, line: 183, type: !1007)
!1394 = !DILocation(line: 183, column: 36, scope: !1388)
!1395 = !DILocalVariable(name: "string_area", arg: 3, scope: !1388, file: !3, line: 184, type: !36)
!1396 = !DILocation(line: 184, column: 15, scope: !1388)
!1397 = !DILocation(line: 188, column: 17, scope: !1388)
!1398 = !DILocation(line: 188, column: 2, scope: !1388)
!1399 = !DILocation(line: 188, column: 8, scope: !1388)
!1400 = !DILocation(line: 188, column: 15, scope: !1388)
!1401 = !DILocation(line: 189, column: 17, scope: !1388)
!1402 = !DILocation(line: 189, column: 25, scope: !1388)
!1403 = !DILocation(line: 189, column: 2, scope: !1388)
!1404 = !DILocation(line: 189, column: 8, scope: !1388)
!1405 = !DILocation(line: 189, column: 15, scope: !1388)
!1406 = !DILocation(line: 193, column: 9, scope: !1388)
!1407 = !DILocation(line: 193, column: 22, scope: !1388)
!1408 = !DILocation(line: 193, column: 30, scope: !1388)
!1409 = !DILocation(line: 193, column: 38, scope: !1388)
!1410 = !DILocation(line: 193, column: 46, scope: !1388)
!1411 = !DILocation(line: 193, column: 2, scope: !1388)
!1412 = !DILocation(line: 194, column: 10, scope: !1388)
!1413 = !DILocation(line: 194, column: 24, scope: !1388)
!1414 = !DILocation(line: 194, column: 32, scope: !1388)
!1415 = !DILocation(line: 194, column: 22, scope: !1388)
!1416 = !DILocation(line: 194, column: 2, scope: !1388)
!1417 = distinct !DISubprogram(name: "acpi_os_free", scope: !1353, file: !1353, line: 60, type: !1418, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !83)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !31}
!1420 = !DILocalVariable(name: "memory", arg: 1, scope: !1417, file: !1353, line: 60, type: !31)
!1421 = !DILocation(line: 60, column: 39, scope: !1417)
!1422 = !DILocation(line: 62, column: 8, scope: !1417)
!1423 = !DILocation(line: 62, column: 2, scope: !1417)
!1424 = !DILocation(line: 63, column: 1, scope: !1417)
!1425 = distinct !DISubprogram(name: "acpi_install_method", scope: !3, file: !3, line: 475, type: !1426, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !83)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!20, !64}
!1428 = !DILocalVariable(name: "buffer", arg: 1, scope: !1425, file: !3, line: 475, type: !64)
!1429 = !DILocation(line: 475, column: 37, scope: !1425)
!1430 = !DILocalVariable(name: "table", scope: !1425, file: !3, line: 477, type: !38)
!1431 = !DILocation(line: 477, column: 28, scope: !1425)
!1432 = !DILocation(line: 478, column: 6, scope: !1425)
!1433 = !DILocalVariable(name: "aml_buffer", scope: !1425, file: !3, line: 479, type: !64)
!1434 = !DILocation(line: 479, column: 6, scope: !1425)
!1435 = !DILocalVariable(name: "aml_start", scope: !1425, file: !3, line: 480, type: !64)
!1436 = !DILocation(line: 480, column: 6, scope: !1425)
!1437 = !DILocalVariable(name: "path", scope: !1425, file: !3, line: 481, type: !36)
!1438 = !DILocation(line: 481, column: 8, scope: !1425)
!1439 = !DILocalVariable(name: "node", scope: !1425, file: !3, line: 482, type: !93)
!1440 = !DILocation(line: 482, column: 30, scope: !1425)
!1441 = !DILocalVariable(name: "method_obj", scope: !1425, file: !3, line: 483, type: !97)
!1442 = !DILocation(line: 483, column: 29, scope: !1425)
!1443 = !DILocalVariable(name: "parser_state", scope: !1425, file: !3, line: 484, type: !217)
!1444 = !DILocation(line: 484, column: 26, scope: !1425)
!1445 = !DILocalVariable(name: "aml_length", scope: !1425, file: !3, line: 485, type: !22)
!1446 = !DILocation(line: 485, column: 6, scope: !1425)
!1447 = !DILocalVariable(name: "opcode", scope: !1425, file: !3, line: 486, type: !61)
!1448 = !DILocation(line: 486, column: 6, scope: !1425)
!1449 = !DILocalVariable(name: "method_flags", scope: !1425, file: !3, line: 487, type: !26)
!1450 = !DILocation(line: 487, column: 5, scope: !1425)
!1451 = !DILocalVariable(name: "status", scope: !1425, file: !3, line: 488, type: !20)
!1452 = !DILocation(line: 488, column: 14, scope: !1425)
!1453 = !DILocation(line: 492, column: 7, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 492, column: 6)
!1455 = !DILocation(line: 492, column: 6, scope: !1425)
!1456 = !DILocation(line: 493, column: 3, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 492, column: 15)
!1458 = !DILocation(line: 498, column: 7, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 498, column: 6)
!1460 = !DILocation(line: 498, column: 61, scope: !1459)
!1461 = !DILocation(line: 499, column: 7, scope: !1459)
!1462 = !DILocation(line: 498, column: 6, scope: !1425)
!1463 = !DILocation(line: 500, column: 3, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 499, column: 62)
!1465 = !DILocation(line: 505, column: 21, scope: !1425)
!1466 = !DILocation(line: 505, column: 28, scope: !1425)
!1467 = !DILocation(line: 505, column: 15, scope: !1425)
!1468 = !DILocation(line: 505, column: 19, scope: !1425)
!1469 = !DILocation(line: 506, column: 11, scope: !1425)
!1470 = !DILocation(line: 506, column: 9, scope: !1425)
!1471 = !DILocation(line: 507, column: 6, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 507, column: 6)
!1473 = !DILocation(line: 507, column: 13, scope: !1472)
!1474 = !DILocation(line: 507, column: 6, scope: !1425)
!1475 = !DILocation(line: 508, column: 3, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 507, column: 31)
!1477 = !DILocation(line: 513, column: 46, scope: !1425)
!1478 = !DILocation(line: 513, column: 22, scope: !1425)
!1479 = !DILocation(line: 513, column: 15, scope: !1425)
!1480 = !DILocation(line: 513, column: 19, scope: !1425)
!1481 = !DILocation(line: 514, column: 25, scope: !1425)
!1482 = !DILocation(line: 514, column: 15, scope: !1425)
!1483 = !DILocation(line: 514, column: 23, scope: !1425)
!1484 = !DILocation(line: 515, column: 9, scope: !1425)
!1485 = !DILocation(line: 515, column: 7, scope: !1425)
!1486 = !DILocation(line: 517, column: 31, scope: !1425)
!1487 = !DILocation(line: 517, column: 34, scope: !1425)
!1488 = !DILocation(line: 517, column: 17, scope: !1425)
!1489 = !DILocation(line: 517, column: 15, scope: !1425)
!1490 = !DILocation(line: 518, column: 27, scope: !1425)
!1491 = !DILocation(line: 518, column: 12, scope: !1425)
!1492 = !DILocation(line: 519, column: 20, scope: !1425)
!1493 = !DILocation(line: 519, column: 15, scope: !1425)
!1494 = !DILocation(line: 519, column: 13, scope: !1425)
!1495 = !DILocation(line: 525, column: 15, scope: !1425)
!1496 = !DILocation(line: 525, column: 13, scope: !1425)
!1497 = !DILocation(line: 526, column: 7, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 526, column: 6)
!1499 = !DILocation(line: 526, column: 6, scope: !1425)
!1500 = !DILocation(line: 527, column: 3, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 526, column: 19)
!1502 = !DILocation(line: 530, column: 15, scope: !1425)
!1503 = !DILocation(line: 530, column: 13, scope: !1425)
!1504 = !DILocation(line: 531, column: 7, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 531, column: 6)
!1506 = !DILocation(line: 531, column: 6, scope: !1425)
!1507 = !DILocation(line: 532, column: 3, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 531, column: 19)
!1509 = !DILocation(line: 533, column: 3, scope: !1508)
!1510 = !DILocation(line: 538, column: 11, scope: !1425)
!1511 = !DILocation(line: 538, column: 9, scope: !1425)
!1512 = !DILocation(line: 539, column: 6, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 539, column: 6)
!1514 = !DILocation(line: 539, column: 6, scope: !1425)
!1515 = !DILocation(line: 540, column: 3, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 539, column: 28)
!1517 = !DILocation(line: 546, column: 27, scope: !1425)
!1518 = !DILocation(line: 546, column: 6, scope: !1425)
!1519 = !DILocation(line: 545, column: 9, scope: !1425)
!1520 = !DILocation(line: 550, column: 8, scope: !1425)
!1521 = !DILocation(line: 552, column: 6, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 552, column: 6)
!1523 = !DILocation(line: 552, column: 6, scope: !1425)
!1524 = !DILocation(line: 553, column: 7, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 553, column: 7)
!1526 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 552, column: 28)
!1527 = !DILocation(line: 553, column: 14, scope: !1525)
!1528 = !DILocation(line: 553, column: 7, scope: !1526)
!1529 = !DILocation(line: 554, column: 4, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 553, column: 36)
!1531 = !DILocation(line: 559, column: 7, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 559, column: 7)
!1533 = !DILocation(line: 559, column: 13, scope: !1532)
!1534 = !DILocation(line: 559, column: 18, scope: !1532)
!1535 = !DILocation(line: 559, column: 7, scope: !1526)
!1536 = !DILocation(line: 560, column: 11, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 559, column: 39)
!1538 = !DILocation(line: 561, column: 4, scope: !1537)
!1539 = !DILocation(line: 563, column: 2, scope: !1526)
!1540 = !DILocation(line: 567, column: 9, scope: !1425)
!1541 = !DILocation(line: 567, column: 21, scope: !1425)
!1542 = !DILocation(line: 567, column: 32, scope: !1425)
!1543 = !DILocation(line: 567, column: 2, scope: !1425)
!1544 = !DILocation(line: 571, column: 33, scope: !1425)
!1545 = !DILocation(line: 571, column: 2, scope: !1425)
!1546 = !DILocation(line: 571, column: 14, scope: !1425)
!1547 = !DILocation(line: 571, column: 21, scope: !1425)
!1548 = !DILocation(line: 571, column: 31, scope: !1425)
!1549 = !DILocation(line: 572, column: 34, scope: !1425)
!1550 = !DILocation(line: 572, column: 2, scope: !1425)
!1551 = !DILocation(line: 572, column: 14, scope: !1425)
!1552 = !DILocation(line: 572, column: 21, scope: !1425)
!1553 = !DILocation(line: 572, column: 32, scope: !1425)
!1554 = !DILocation(line: 575, column: 7, scope: !1425)
!1555 = !DILocation(line: 575, column: 20, scope: !1425)
!1556 = !DILocation(line: 574, column: 35, scope: !1425)
!1557 = !DILocation(line: 574, column: 2, scope: !1425)
!1558 = !DILocation(line: 574, column: 14, scope: !1425)
!1559 = !DILocation(line: 574, column: 21, scope: !1425)
!1560 = !DILocation(line: 574, column: 33, scope: !1425)
!1561 = !DILocation(line: 577, column: 6, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 577, column: 6)
!1563 = !DILocation(line: 577, column: 19, scope: !1562)
!1564 = !DILocation(line: 577, column: 6, scope: !1425)
!1565 = !DILocation(line: 578, column: 3, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 577, column: 44)
!1567 = !DILocation(line: 578, column: 15, scope: !1566)
!1568 = !DILocation(line: 578, column: 22, scope: !1566)
!1569 = !DILocation(line: 578, column: 33, scope: !1566)
!1570 = !DILocation(line: 581, column: 9, scope: !1566)
!1571 = !DILocation(line: 581, column: 22, scope: !1566)
!1572 = !DILocation(line: 581, column: 47, scope: !1566)
!1573 = !DILocation(line: 580, column: 35, scope: !1566)
!1574 = !DILocation(line: 580, column: 3, scope: !1566)
!1575 = !DILocation(line: 580, column: 15, scope: !1566)
!1576 = !DILocation(line: 580, column: 22, scope: !1566)
!1577 = !DILocation(line: 580, column: 33, scope: !1566)
!1578 = !DILocation(line: 582, column: 2, scope: !1566)
!1579 = !DILocation(line: 588, column: 33, scope: !1425)
!1580 = !DILocation(line: 588, column: 39, scope: !1425)
!1581 = !DILocation(line: 588, column: 11, scope: !1425)
!1582 = !DILocation(line: 588, column: 9, scope: !1425)
!1583 = !DILocation(line: 594, column: 2, scope: !1425)
!1584 = !DILocation(line: 594, column: 8, scope: !1425)
!1585 = !DILocation(line: 594, column: 14, scope: !1425)
!1586 = !DILocation(line: 598, column: 27, scope: !1425)
!1587 = !DILocation(line: 598, column: 2, scope: !1425)
!1588 = !DILocation(line: 599, column: 10, scope: !1425)
!1589 = !DILocation(line: 599, column: 2, scope: !1425)
!1590 = !DILabel(scope: !1425, name: "error_exit", file: !3, line: 601)
!1591 = !DILocation(line: 601, column: 1, scope: !1425)
!1592 = !DILocation(line: 603, column: 2, scope: !1425)
!1593 = !DILocation(line: 604, column: 2, scope: !1425)
!1594 = !DILocation(line: 605, column: 10, scope: !1425)
!1595 = !DILocation(line: 605, column: 2, scope: !1425)
!1596 = !DILocation(line: 606, column: 1, scope: !1425)
!1597 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !1353, file: !1353, line: 50, type: !1354, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !83)
!1598 = !DILocalVariable(name: "s", arg: 1, scope: !1599, file: !13, line: 445, type: !1602)
!1599 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !13, file: !13, line: 445, type: !1600, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !83)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!31, !1602, !65, !1605}
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1604, line: 117, flags: DIFlagFwdDecl)
!1604 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !66, line: 55, baseType: !1606)
!1606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1607, line: 72, baseType: !1608)
!1607 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!1608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1607, line: 16, baseType: !67)
!1609 = !DILocation(line: 445, column: 72, scope: !1599, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 552, column: 10, scope: !1611, inlinedAt: !1616)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !13, line: 540, column: 34)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !13, line: 540, column: 6)
!1613 = distinct !DISubprogram(name: "kmalloc", scope: !13, file: !13, line: 538, type: !1614, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !83)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!31, !1605, !65}
!1616 = distinct !DILocation(line: 52, column: 9, scope: !1597)
!1617 = !DILocalVariable(name: "flags", arg: 2, scope: !1599, file: !13, line: 446, type: !65)
!1618 = !DILocation(line: 446, column: 9, scope: !1599, inlinedAt: !1610)
!1619 = !DILocalVariable(name: "size", arg: 3, scope: !1599, file: !13, line: 446, type: !1605)
!1620 = !DILocation(line: 446, column: 23, scope: !1599, inlinedAt: !1610)
!1621 = !DILocalVariable(name: "ret", scope: !1599, file: !13, line: 448, type: !31)
!1622 = !DILocation(line: 448, column: 8, scope: !1599, inlinedAt: !1610)
!1623 = !DILocalVariable(name: "flags", arg: 1, scope: !1624, file: !13, line: 318, type: !65)
!1624 = distinct !DISubprogram(name: "kmalloc_type", scope: !13, file: !13, line: 318, type: !1625, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !83)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!12, !65}
!1627 = !DILocation(line: 318, column: 67, scope: !1624, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 553, column: 20, scope: !1611, inlinedAt: !1616)
!1629 = !DILocalVariable(name: "size", arg: 1, scope: !1630, file: !13, line: 346, type: !1605)
!1630 = distinct !DISubprogram(name: "kmalloc_index", scope: !13, file: !13, line: 346, type: !1631, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !83)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!7, !1605}
!1633 = !DILocation(line: 346, column: 58, scope: !1630, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 547, column: 11, scope: !1611, inlinedAt: !1616)
!1635 = !DILocalVariable(name: "size", arg: 1, scope: !1636, file: !13, line: 472, type: !1605)
!1636 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !13, file: !13, line: 472, type: !1637, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !83)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!31, !1605, !65, !7}
!1639 = !DILocation(line: 472, column: 28, scope: !1636, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 481, column: 9, scope: !1641, inlinedAt: !1642)
!1641 = distinct !DISubprogram(name: "kmalloc_large", scope: !13, file: !13, line: 478, type: !1614, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !83)
!1642 = distinct !DILocation(line: 545, column: 11, scope: !1643, inlinedAt: !1616)
!1643 = distinct !DILexicalBlock(scope: !1611, file: !13, line: 544, column: 7)
!1644 = !DILocalVariable(name: "flags", arg: 2, scope: !1636, file: !13, line: 472, type: !65)
!1645 = !DILocation(line: 472, column: 40, scope: !1636, inlinedAt: !1640)
!1646 = !DILocalVariable(name: "order", arg: 3, scope: !1636, file: !13, line: 472, type: !7)
!1647 = !DILocation(line: 472, column: 60, scope: !1636, inlinedAt: !1640)
!1648 = !DILocalVariable(name: "size", arg: 1, scope: !1641, file: !13, line: 478, type: !1605)
!1649 = !DILocation(line: 478, column: 51, scope: !1641, inlinedAt: !1642)
!1650 = !DILocalVariable(name: "flags", arg: 2, scope: !1641, file: !13, line: 478, type: !65)
!1651 = !DILocation(line: 478, column: 63, scope: !1641, inlinedAt: !1642)
!1652 = !DILocalVariable(name: "order", scope: !1641, file: !13, line: 480, type: !7)
!1653 = !DILocation(line: 480, column: 15, scope: !1641, inlinedAt: !1642)
!1654 = !DILocalVariable(name: "size", arg: 1, scope: !1613, file: !13, line: 538, type: !1605)
!1655 = !DILocation(line: 538, column: 45, scope: !1613, inlinedAt: !1616)
!1656 = !DILocalVariable(name: "flags", arg: 2, scope: !1613, file: !13, line: 538, type: !65)
!1657 = !DILocation(line: 538, column: 57, scope: !1613, inlinedAt: !1616)
!1658 = !DILocalVariable(name: "index", scope: !1611, file: !13, line: 542, type: !7)
!1659 = !DILocation(line: 542, column: 16, scope: !1611, inlinedAt: !1616)
!1660 = !DILocation(line: 162, column: 67, scope: !1357, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 52, column: 23, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !1353, line: 52, column: 23)
!1663 = distinct !DILexicalBlock(scope: !1597, file: !1353, line: 52, column: 23)
!1664 = !DILocalVariable(name: "size", arg: 1, scope: !1597, file: !1353, line: 50, type: !32)
!1665 = !DILocation(line: 50, column: 48, scope: !1597)
!1666 = !DILocation(line: 52, column: 17, scope: !1597)
!1667 = !DILocalVariable(name: "_flags", scope: !1663, file: !1353, line: 52, type: !67)
!1668 = !DILocation(line: 52, column: 23, scope: !1663)
!1669 = !DILocalVariable(name: "__dummy", scope: !1670, file: !1353, line: 52, type: !67)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !1353, line: 52, column: 23)
!1671 = distinct !DILexicalBlock(scope: !1663, file: !1353, line: 52, column: 23)
!1672 = !DILocation(line: 52, column: 23, scope: !1670)
!1673 = !DILocalVariable(name: "__dummy2", scope: !1670, file: !1353, line: 52, type: !67)
!1674 = !DILocation(line: 52, column: 23, scope: !1671)
!1675 = !DILocalVariable(name: "__dummy", scope: !1676, file: !1353, line: 52, type: !67)
!1676 = distinct !DILexicalBlock(scope: !1662, file: !1353, line: 52, column: 23)
!1677 = !DILocation(line: 52, column: 23, scope: !1676)
!1678 = !DILocalVariable(name: "__dummy2", scope: !1676, file: !1353, line: 52, type: !67)
!1679 = !DILocation(line: 52, column: 23, scope: !1662)
!1680 = !DILocation(line: 164, column: 11, scope: !1357, inlinedAt: !1661)
!1681 = !DILocation(line: 164, column: 17, scope: !1357, inlinedAt: !1661)
!1682 = !DILocation(line: 164, column: 9, scope: !1357, inlinedAt: !1661)
!1683 = !DILocation(line: 52, column: 23, scope: !1597)
!1684 = !DILocation(line: 540, column: 27, scope: !1612, inlinedAt: !1616)
!1685 = !DILocation(line: 540, column: 6, scope: !1612, inlinedAt: !1616)
!1686 = !DILocation(line: 540, column: 6, scope: !1613, inlinedAt: !1616)
!1687 = !DILocation(line: 544, column: 7, scope: !1643, inlinedAt: !1616)
!1688 = !DILocation(line: 544, column: 12, scope: !1643, inlinedAt: !1616)
!1689 = !DILocation(line: 544, column: 7, scope: !1611, inlinedAt: !1616)
!1690 = !DILocation(line: 545, column: 25, scope: !1643, inlinedAt: !1616)
!1691 = !DILocation(line: 545, column: 31, scope: !1643, inlinedAt: !1616)
!1692 = !DILocation(line: 480, column: 33, scope: !1641, inlinedAt: !1642)
!1693 = !DILocation(line: 480, column: 23, scope: !1641, inlinedAt: !1642)
!1694 = !DILocation(line: 481, column: 29, scope: !1641, inlinedAt: !1642)
!1695 = !DILocation(line: 481, column: 35, scope: !1641, inlinedAt: !1642)
!1696 = !DILocation(line: 481, column: 42, scope: !1641, inlinedAt: !1642)
!1697 = !DILocation(line: 474, column: 23, scope: !1636, inlinedAt: !1640)
!1698 = !DILocation(line: 474, column: 29, scope: !1636, inlinedAt: !1640)
!1699 = !DILocation(line: 474, column: 36, scope: !1636, inlinedAt: !1640)
!1700 = !DILocation(line: 474, column: 9, scope: !1636, inlinedAt: !1640)
!1701 = !DILocation(line: 545, column: 4, scope: !1643, inlinedAt: !1616)
!1702 = !DILocation(line: 547, column: 25, scope: !1611, inlinedAt: !1616)
!1703 = !DILocation(line: 348, column: 7, scope: !1704, inlinedAt: !1634)
!1704 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 348, column: 6)
!1705 = !DILocation(line: 348, column: 6, scope: !1630, inlinedAt: !1634)
!1706 = !DILocation(line: 349, column: 3, scope: !1704, inlinedAt: !1634)
!1707 = !DILocation(line: 351, column: 6, scope: !1708, inlinedAt: !1634)
!1708 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 351, column: 6)
!1709 = !DILocation(line: 351, column: 11, scope: !1708, inlinedAt: !1634)
!1710 = !DILocation(line: 351, column: 6, scope: !1630, inlinedAt: !1634)
!1711 = !DILocation(line: 352, column: 3, scope: !1708, inlinedAt: !1634)
!1712 = !DILocation(line: 354, column: 32, scope: !1713, inlinedAt: !1634)
!1713 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 354, column: 6)
!1714 = !DILocation(line: 354, column: 37, scope: !1713, inlinedAt: !1634)
!1715 = !DILocation(line: 354, column: 42, scope: !1713, inlinedAt: !1634)
!1716 = !DILocation(line: 354, column: 45, scope: !1713, inlinedAt: !1634)
!1717 = !DILocation(line: 354, column: 50, scope: !1713, inlinedAt: !1634)
!1718 = !DILocation(line: 354, column: 6, scope: !1630, inlinedAt: !1634)
!1719 = !DILocation(line: 355, column: 3, scope: !1713, inlinedAt: !1634)
!1720 = !DILocation(line: 356, column: 32, scope: !1721, inlinedAt: !1634)
!1721 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 356, column: 6)
!1722 = !DILocation(line: 356, column: 37, scope: !1721, inlinedAt: !1634)
!1723 = !DILocation(line: 356, column: 43, scope: !1721, inlinedAt: !1634)
!1724 = !DILocation(line: 356, column: 46, scope: !1721, inlinedAt: !1634)
!1725 = !DILocation(line: 356, column: 51, scope: !1721, inlinedAt: !1634)
!1726 = !DILocation(line: 356, column: 6, scope: !1630, inlinedAt: !1634)
!1727 = !DILocation(line: 357, column: 3, scope: !1721, inlinedAt: !1634)
!1728 = !DILocation(line: 358, column: 6, scope: !1729, inlinedAt: !1634)
!1729 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 358, column: 6)
!1730 = !DILocation(line: 358, column: 11, scope: !1729, inlinedAt: !1634)
!1731 = !DILocation(line: 358, column: 6, scope: !1630, inlinedAt: !1634)
!1732 = !DILocation(line: 358, column: 26, scope: !1729, inlinedAt: !1634)
!1733 = !DILocation(line: 359, column: 6, scope: !1734, inlinedAt: !1634)
!1734 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 359, column: 6)
!1735 = !DILocation(line: 359, column: 11, scope: !1734, inlinedAt: !1634)
!1736 = !DILocation(line: 359, column: 6, scope: !1630, inlinedAt: !1634)
!1737 = !DILocation(line: 359, column: 26, scope: !1734, inlinedAt: !1634)
!1738 = !DILocation(line: 360, column: 6, scope: !1739, inlinedAt: !1634)
!1739 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 360, column: 6)
!1740 = !DILocation(line: 360, column: 11, scope: !1739, inlinedAt: !1634)
!1741 = !DILocation(line: 360, column: 6, scope: !1630, inlinedAt: !1634)
!1742 = !DILocation(line: 360, column: 26, scope: !1739, inlinedAt: !1634)
!1743 = !DILocation(line: 361, column: 6, scope: !1744, inlinedAt: !1634)
!1744 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 361, column: 6)
!1745 = !DILocation(line: 361, column: 11, scope: !1744, inlinedAt: !1634)
!1746 = !DILocation(line: 361, column: 6, scope: !1630, inlinedAt: !1634)
!1747 = !DILocation(line: 361, column: 26, scope: !1744, inlinedAt: !1634)
!1748 = !DILocation(line: 362, column: 6, scope: !1749, inlinedAt: !1634)
!1749 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 362, column: 6)
!1750 = !DILocation(line: 362, column: 11, scope: !1749, inlinedAt: !1634)
!1751 = !DILocation(line: 362, column: 6, scope: !1630, inlinedAt: !1634)
!1752 = !DILocation(line: 362, column: 26, scope: !1749, inlinedAt: !1634)
!1753 = !DILocation(line: 363, column: 6, scope: !1754, inlinedAt: !1634)
!1754 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 363, column: 6)
!1755 = !DILocation(line: 363, column: 11, scope: !1754, inlinedAt: !1634)
!1756 = !DILocation(line: 363, column: 6, scope: !1630, inlinedAt: !1634)
!1757 = !DILocation(line: 363, column: 26, scope: !1754, inlinedAt: !1634)
!1758 = !DILocation(line: 364, column: 6, scope: !1759, inlinedAt: !1634)
!1759 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 364, column: 6)
!1760 = !DILocation(line: 364, column: 11, scope: !1759, inlinedAt: !1634)
!1761 = !DILocation(line: 364, column: 6, scope: !1630, inlinedAt: !1634)
!1762 = !DILocation(line: 364, column: 26, scope: !1759, inlinedAt: !1634)
!1763 = !DILocation(line: 365, column: 6, scope: !1764, inlinedAt: !1634)
!1764 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 365, column: 6)
!1765 = !DILocation(line: 365, column: 11, scope: !1764, inlinedAt: !1634)
!1766 = !DILocation(line: 365, column: 6, scope: !1630, inlinedAt: !1634)
!1767 = !DILocation(line: 365, column: 26, scope: !1764, inlinedAt: !1634)
!1768 = !DILocation(line: 366, column: 6, scope: !1769, inlinedAt: !1634)
!1769 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 366, column: 6)
!1770 = !DILocation(line: 366, column: 11, scope: !1769, inlinedAt: !1634)
!1771 = !DILocation(line: 366, column: 6, scope: !1630, inlinedAt: !1634)
!1772 = !DILocation(line: 366, column: 26, scope: !1769, inlinedAt: !1634)
!1773 = !DILocation(line: 367, column: 6, scope: !1774, inlinedAt: !1634)
!1774 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 367, column: 6)
!1775 = !DILocation(line: 367, column: 11, scope: !1774, inlinedAt: !1634)
!1776 = !DILocation(line: 367, column: 6, scope: !1630, inlinedAt: !1634)
!1777 = !DILocation(line: 367, column: 26, scope: !1774, inlinedAt: !1634)
!1778 = !DILocation(line: 368, column: 6, scope: !1779, inlinedAt: !1634)
!1779 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 368, column: 6)
!1780 = !DILocation(line: 368, column: 11, scope: !1779, inlinedAt: !1634)
!1781 = !DILocation(line: 368, column: 6, scope: !1630, inlinedAt: !1634)
!1782 = !DILocation(line: 368, column: 26, scope: !1779, inlinedAt: !1634)
!1783 = !DILocation(line: 369, column: 6, scope: !1784, inlinedAt: !1634)
!1784 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 369, column: 6)
!1785 = !DILocation(line: 369, column: 11, scope: !1784, inlinedAt: !1634)
!1786 = !DILocation(line: 369, column: 6, scope: !1630, inlinedAt: !1634)
!1787 = !DILocation(line: 369, column: 26, scope: !1784, inlinedAt: !1634)
!1788 = !DILocation(line: 370, column: 6, scope: !1789, inlinedAt: !1634)
!1789 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 370, column: 6)
!1790 = !DILocation(line: 370, column: 11, scope: !1789, inlinedAt: !1634)
!1791 = !DILocation(line: 370, column: 6, scope: !1630, inlinedAt: !1634)
!1792 = !DILocation(line: 370, column: 26, scope: !1789, inlinedAt: !1634)
!1793 = !DILocation(line: 371, column: 6, scope: !1794, inlinedAt: !1634)
!1794 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 371, column: 6)
!1795 = !DILocation(line: 371, column: 11, scope: !1794, inlinedAt: !1634)
!1796 = !DILocation(line: 371, column: 6, scope: !1630, inlinedAt: !1634)
!1797 = !DILocation(line: 371, column: 26, scope: !1794, inlinedAt: !1634)
!1798 = !DILocation(line: 372, column: 6, scope: !1799, inlinedAt: !1634)
!1799 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 372, column: 6)
!1800 = !DILocation(line: 372, column: 11, scope: !1799, inlinedAt: !1634)
!1801 = !DILocation(line: 372, column: 6, scope: !1630, inlinedAt: !1634)
!1802 = !DILocation(line: 372, column: 26, scope: !1799, inlinedAt: !1634)
!1803 = !DILocation(line: 373, column: 6, scope: !1804, inlinedAt: !1634)
!1804 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 373, column: 6)
!1805 = !DILocation(line: 373, column: 11, scope: !1804, inlinedAt: !1634)
!1806 = !DILocation(line: 373, column: 6, scope: !1630, inlinedAt: !1634)
!1807 = !DILocation(line: 373, column: 26, scope: !1804, inlinedAt: !1634)
!1808 = !DILocation(line: 374, column: 6, scope: !1809, inlinedAt: !1634)
!1809 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 374, column: 6)
!1810 = !DILocation(line: 374, column: 11, scope: !1809, inlinedAt: !1634)
!1811 = !DILocation(line: 374, column: 6, scope: !1630, inlinedAt: !1634)
!1812 = !DILocation(line: 374, column: 26, scope: !1809, inlinedAt: !1634)
!1813 = !DILocation(line: 375, column: 6, scope: !1814, inlinedAt: !1634)
!1814 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 375, column: 6)
!1815 = !DILocation(line: 375, column: 11, scope: !1814, inlinedAt: !1634)
!1816 = !DILocation(line: 375, column: 6, scope: !1630, inlinedAt: !1634)
!1817 = !DILocation(line: 375, column: 27, scope: !1814, inlinedAt: !1634)
!1818 = !DILocation(line: 376, column: 6, scope: !1819, inlinedAt: !1634)
!1819 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 376, column: 6)
!1820 = !DILocation(line: 376, column: 11, scope: !1819, inlinedAt: !1634)
!1821 = !DILocation(line: 376, column: 6, scope: !1630, inlinedAt: !1634)
!1822 = !DILocation(line: 376, column: 32, scope: !1819, inlinedAt: !1634)
!1823 = !DILocation(line: 377, column: 6, scope: !1824, inlinedAt: !1634)
!1824 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 377, column: 6)
!1825 = !DILocation(line: 377, column: 11, scope: !1824, inlinedAt: !1634)
!1826 = !DILocation(line: 377, column: 6, scope: !1630, inlinedAt: !1634)
!1827 = !DILocation(line: 377, column: 32, scope: !1824, inlinedAt: !1634)
!1828 = !DILocation(line: 378, column: 6, scope: !1829, inlinedAt: !1634)
!1829 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 378, column: 6)
!1830 = !DILocation(line: 378, column: 11, scope: !1829, inlinedAt: !1634)
!1831 = !DILocation(line: 378, column: 6, scope: !1630, inlinedAt: !1634)
!1832 = !DILocation(line: 378, column: 32, scope: !1829, inlinedAt: !1634)
!1833 = !DILocation(line: 379, column: 6, scope: !1834, inlinedAt: !1634)
!1834 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 379, column: 6)
!1835 = !DILocation(line: 379, column: 11, scope: !1834, inlinedAt: !1634)
!1836 = !DILocation(line: 379, column: 6, scope: !1630, inlinedAt: !1634)
!1837 = !DILocation(line: 379, column: 33, scope: !1834, inlinedAt: !1634)
!1838 = !DILocation(line: 380, column: 6, scope: !1839, inlinedAt: !1634)
!1839 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 380, column: 6)
!1840 = !DILocation(line: 380, column: 11, scope: !1839, inlinedAt: !1634)
!1841 = !DILocation(line: 380, column: 6, scope: !1630, inlinedAt: !1634)
!1842 = !DILocation(line: 380, column: 33, scope: !1839, inlinedAt: !1634)
!1843 = !DILocation(line: 381, column: 6, scope: !1844, inlinedAt: !1634)
!1844 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 381, column: 6)
!1845 = !DILocation(line: 381, column: 11, scope: !1844, inlinedAt: !1634)
!1846 = !DILocation(line: 381, column: 6, scope: !1630, inlinedAt: !1634)
!1847 = !DILocation(line: 381, column: 33, scope: !1844, inlinedAt: !1634)
!1848 = !DILocation(line: 382, column: 2, scope: !1849, inlinedAt: !1634)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !13, line: 382, column: 2)
!1850 = distinct !DILexicalBlock(scope: !1630, file: !13, line: 382, column: 2)
!1851 = !{i32 -2144103700, i32 -2144103671, i32 -2144103625, i32 -2144103567, i32 -2144103513, i32 -2144103459, i32 -2144103404, i32 -2144103373}
!1852 = !DILocation(line: 382, column: 2, scope: !1853, inlinedAt: !1634)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !13, line: 382, column: 2)
!1854 = distinct !DILexicalBlock(scope: !1850, file: !13, line: 382, column: 2)
!1855 = !{i32 -2144102930, i32 -2144102923, i32 -2144102869, i32 -2144102838, i32 -2144102808}
!1856 = !DILocation(line: 382, column: 2, scope: !1854, inlinedAt: !1634)
!1857 = !DILocation(line: 386, column: 1, scope: !1630, inlinedAt: !1634)
!1858 = !DILocation(line: 547, column: 9, scope: !1611, inlinedAt: !1616)
!1859 = !DILocation(line: 549, column: 8, scope: !1860, inlinedAt: !1616)
!1860 = distinct !DILexicalBlock(scope: !1611, file: !13, line: 549, column: 7)
!1861 = !DILocation(line: 549, column: 7, scope: !1611, inlinedAt: !1616)
!1862 = !DILocation(line: 550, column: 4, scope: !1860, inlinedAt: !1616)
!1863 = !DILocation(line: 553, column: 33, scope: !1611, inlinedAt: !1616)
!1864 = !DILocation(line: 325, column: 6, scope: !1865, inlinedAt: !1628)
!1865 = distinct !DILexicalBlock(scope: !1624, file: !13, line: 325, column: 6)
!1866 = !DILocation(line: 325, column: 6, scope: !1624, inlinedAt: !1628)
!1867 = !DILocation(line: 326, column: 3, scope: !1865, inlinedAt: !1628)
!1868 = !DILocation(line: 332, column: 9, scope: !1624, inlinedAt: !1628)
!1869 = !DILocation(line: 332, column: 15, scope: !1624, inlinedAt: !1628)
!1870 = !DILocation(line: 332, column: 2, scope: !1624, inlinedAt: !1628)
!1871 = !DILocation(line: 336, column: 1, scope: !1624, inlinedAt: !1628)
!1872 = !DILocation(line: 553, column: 5, scope: !1611, inlinedAt: !1616)
!1873 = !DILocation(line: 553, column: 41, scope: !1611, inlinedAt: !1616)
!1874 = !DILocation(line: 554, column: 5, scope: !1611, inlinedAt: !1616)
!1875 = !DILocation(line: 554, column: 12, scope: !1611, inlinedAt: !1616)
!1876 = !DILocation(line: 448, column: 31, scope: !1599, inlinedAt: !1610)
!1877 = !DILocation(line: 448, column: 34, scope: !1599, inlinedAt: !1610)
!1878 = !DILocation(line: 448, column: 14, scope: !1599, inlinedAt: !1610)
!1879 = !DILocation(line: 450, column: 22, scope: !1599, inlinedAt: !1610)
!1880 = !DILocation(line: 450, column: 25, scope: !1599, inlinedAt: !1610)
!1881 = !DILocation(line: 450, column: 30, scope: !1599, inlinedAt: !1610)
!1882 = !DILocation(line: 450, column: 36, scope: !1599, inlinedAt: !1610)
!1883 = !DILocation(line: 450, column: 8, scope: !1599, inlinedAt: !1610)
!1884 = !DILocation(line: 450, column: 6, scope: !1599, inlinedAt: !1610)
!1885 = !DILocation(line: 451, column: 9, scope: !1599, inlinedAt: !1610)
!1886 = !DILocation(line: 552, column: 3, scope: !1611, inlinedAt: !1616)
!1887 = !DILocation(line: 557, column: 19, scope: !1613, inlinedAt: !1616)
!1888 = !DILocation(line: 557, column: 25, scope: !1613, inlinedAt: !1616)
!1889 = !DILocation(line: 557, column: 9, scope: !1613, inlinedAt: !1616)
!1890 = !DILocation(line: 557, column: 2, scope: !1613, inlinedAt: !1616)
!1891 = !DILocation(line: 558, column: 1, scope: !1613, inlinedAt: !1616)
!1892 = !DILocation(line: 52, column: 2, scope: !1597)
!1893 = distinct !DISubprogram(name: "kzalloc", scope: !13, file: !13, line: 662, type: !1614, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !83)
!1894 = !DILocation(line: 445, column: 72, scope: !1599, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 552, column: 10, scope: !1611, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 664, column: 9, scope: !1893)
!1897 = !DILocation(line: 446, column: 9, scope: !1599, inlinedAt: !1895)
!1898 = !DILocation(line: 446, column: 23, scope: !1599, inlinedAt: !1895)
!1899 = !DILocation(line: 448, column: 8, scope: !1599, inlinedAt: !1895)
!1900 = !DILocation(line: 318, column: 67, scope: !1624, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 553, column: 20, scope: !1611, inlinedAt: !1896)
!1902 = !DILocation(line: 346, column: 58, scope: !1630, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 547, column: 11, scope: !1611, inlinedAt: !1896)
!1904 = !DILocation(line: 472, column: 28, scope: !1636, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 481, column: 9, scope: !1641, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 545, column: 11, scope: !1643, inlinedAt: !1896)
!1907 = !DILocation(line: 472, column: 40, scope: !1636, inlinedAt: !1905)
!1908 = !DILocation(line: 472, column: 60, scope: !1636, inlinedAt: !1905)
!1909 = !DILocation(line: 478, column: 51, scope: !1641, inlinedAt: !1906)
!1910 = !DILocation(line: 478, column: 63, scope: !1641, inlinedAt: !1906)
!1911 = !DILocation(line: 480, column: 15, scope: !1641, inlinedAt: !1906)
!1912 = !DILocation(line: 538, column: 45, scope: !1613, inlinedAt: !1896)
!1913 = !DILocation(line: 538, column: 57, scope: !1613, inlinedAt: !1896)
!1914 = !DILocation(line: 542, column: 16, scope: !1611, inlinedAt: !1896)
!1915 = !DILocalVariable(name: "size", arg: 1, scope: !1893, file: !13, line: 662, type: !1605)
!1916 = !DILocation(line: 662, column: 36, scope: !1893)
!1917 = !DILocalVariable(name: "flags", arg: 2, scope: !1893, file: !13, line: 662, type: !65)
!1918 = !DILocation(line: 662, column: 48, scope: !1893)
!1919 = !DILocation(line: 664, column: 17, scope: !1893)
!1920 = !DILocation(line: 664, column: 23, scope: !1893)
!1921 = !DILocation(line: 664, column: 29, scope: !1893)
!1922 = !DILocation(line: 540, column: 27, scope: !1612, inlinedAt: !1896)
!1923 = !DILocation(line: 540, column: 6, scope: !1612, inlinedAt: !1896)
!1924 = !DILocation(line: 540, column: 6, scope: !1613, inlinedAt: !1896)
!1925 = !DILocation(line: 544, column: 7, scope: !1643, inlinedAt: !1896)
!1926 = !DILocation(line: 544, column: 12, scope: !1643, inlinedAt: !1896)
!1927 = !DILocation(line: 544, column: 7, scope: !1611, inlinedAt: !1896)
!1928 = !DILocation(line: 545, column: 25, scope: !1643, inlinedAt: !1896)
!1929 = !DILocation(line: 545, column: 31, scope: !1643, inlinedAt: !1896)
!1930 = !DILocation(line: 480, column: 33, scope: !1641, inlinedAt: !1906)
!1931 = !DILocation(line: 480, column: 23, scope: !1641, inlinedAt: !1906)
!1932 = !DILocation(line: 481, column: 29, scope: !1641, inlinedAt: !1906)
!1933 = !DILocation(line: 481, column: 35, scope: !1641, inlinedAt: !1906)
!1934 = !DILocation(line: 481, column: 42, scope: !1641, inlinedAt: !1906)
!1935 = !DILocation(line: 474, column: 23, scope: !1636, inlinedAt: !1905)
!1936 = !DILocation(line: 474, column: 29, scope: !1636, inlinedAt: !1905)
!1937 = !DILocation(line: 474, column: 36, scope: !1636, inlinedAt: !1905)
!1938 = !DILocation(line: 474, column: 9, scope: !1636, inlinedAt: !1905)
!1939 = !DILocation(line: 545, column: 4, scope: !1643, inlinedAt: !1896)
!1940 = !DILocation(line: 547, column: 25, scope: !1611, inlinedAt: !1896)
!1941 = !DILocation(line: 348, column: 7, scope: !1704, inlinedAt: !1903)
!1942 = !DILocation(line: 348, column: 6, scope: !1630, inlinedAt: !1903)
!1943 = !DILocation(line: 349, column: 3, scope: !1704, inlinedAt: !1903)
!1944 = !DILocation(line: 351, column: 6, scope: !1708, inlinedAt: !1903)
!1945 = !DILocation(line: 351, column: 11, scope: !1708, inlinedAt: !1903)
!1946 = !DILocation(line: 351, column: 6, scope: !1630, inlinedAt: !1903)
!1947 = !DILocation(line: 352, column: 3, scope: !1708, inlinedAt: !1903)
!1948 = !DILocation(line: 354, column: 32, scope: !1713, inlinedAt: !1903)
!1949 = !DILocation(line: 354, column: 37, scope: !1713, inlinedAt: !1903)
!1950 = !DILocation(line: 354, column: 42, scope: !1713, inlinedAt: !1903)
!1951 = !DILocation(line: 354, column: 45, scope: !1713, inlinedAt: !1903)
!1952 = !DILocation(line: 354, column: 50, scope: !1713, inlinedAt: !1903)
!1953 = !DILocation(line: 354, column: 6, scope: !1630, inlinedAt: !1903)
!1954 = !DILocation(line: 355, column: 3, scope: !1713, inlinedAt: !1903)
!1955 = !DILocation(line: 356, column: 32, scope: !1721, inlinedAt: !1903)
!1956 = !DILocation(line: 356, column: 37, scope: !1721, inlinedAt: !1903)
!1957 = !DILocation(line: 356, column: 43, scope: !1721, inlinedAt: !1903)
!1958 = !DILocation(line: 356, column: 46, scope: !1721, inlinedAt: !1903)
!1959 = !DILocation(line: 356, column: 51, scope: !1721, inlinedAt: !1903)
!1960 = !DILocation(line: 356, column: 6, scope: !1630, inlinedAt: !1903)
!1961 = !DILocation(line: 357, column: 3, scope: !1721, inlinedAt: !1903)
!1962 = !DILocation(line: 358, column: 6, scope: !1729, inlinedAt: !1903)
!1963 = !DILocation(line: 358, column: 11, scope: !1729, inlinedAt: !1903)
!1964 = !DILocation(line: 358, column: 6, scope: !1630, inlinedAt: !1903)
!1965 = !DILocation(line: 358, column: 26, scope: !1729, inlinedAt: !1903)
!1966 = !DILocation(line: 359, column: 6, scope: !1734, inlinedAt: !1903)
!1967 = !DILocation(line: 359, column: 11, scope: !1734, inlinedAt: !1903)
!1968 = !DILocation(line: 359, column: 6, scope: !1630, inlinedAt: !1903)
!1969 = !DILocation(line: 359, column: 26, scope: !1734, inlinedAt: !1903)
!1970 = !DILocation(line: 360, column: 6, scope: !1739, inlinedAt: !1903)
!1971 = !DILocation(line: 360, column: 11, scope: !1739, inlinedAt: !1903)
!1972 = !DILocation(line: 360, column: 6, scope: !1630, inlinedAt: !1903)
!1973 = !DILocation(line: 360, column: 26, scope: !1739, inlinedAt: !1903)
!1974 = !DILocation(line: 361, column: 6, scope: !1744, inlinedAt: !1903)
!1975 = !DILocation(line: 361, column: 11, scope: !1744, inlinedAt: !1903)
!1976 = !DILocation(line: 361, column: 6, scope: !1630, inlinedAt: !1903)
!1977 = !DILocation(line: 361, column: 26, scope: !1744, inlinedAt: !1903)
!1978 = !DILocation(line: 362, column: 6, scope: !1749, inlinedAt: !1903)
!1979 = !DILocation(line: 362, column: 11, scope: !1749, inlinedAt: !1903)
!1980 = !DILocation(line: 362, column: 6, scope: !1630, inlinedAt: !1903)
!1981 = !DILocation(line: 362, column: 26, scope: !1749, inlinedAt: !1903)
!1982 = !DILocation(line: 363, column: 6, scope: !1754, inlinedAt: !1903)
!1983 = !DILocation(line: 363, column: 11, scope: !1754, inlinedAt: !1903)
!1984 = !DILocation(line: 363, column: 6, scope: !1630, inlinedAt: !1903)
!1985 = !DILocation(line: 363, column: 26, scope: !1754, inlinedAt: !1903)
!1986 = !DILocation(line: 364, column: 6, scope: !1759, inlinedAt: !1903)
!1987 = !DILocation(line: 364, column: 11, scope: !1759, inlinedAt: !1903)
!1988 = !DILocation(line: 364, column: 6, scope: !1630, inlinedAt: !1903)
!1989 = !DILocation(line: 364, column: 26, scope: !1759, inlinedAt: !1903)
!1990 = !DILocation(line: 365, column: 6, scope: !1764, inlinedAt: !1903)
!1991 = !DILocation(line: 365, column: 11, scope: !1764, inlinedAt: !1903)
!1992 = !DILocation(line: 365, column: 6, scope: !1630, inlinedAt: !1903)
!1993 = !DILocation(line: 365, column: 26, scope: !1764, inlinedAt: !1903)
!1994 = !DILocation(line: 366, column: 6, scope: !1769, inlinedAt: !1903)
!1995 = !DILocation(line: 366, column: 11, scope: !1769, inlinedAt: !1903)
!1996 = !DILocation(line: 366, column: 6, scope: !1630, inlinedAt: !1903)
!1997 = !DILocation(line: 366, column: 26, scope: !1769, inlinedAt: !1903)
!1998 = !DILocation(line: 367, column: 6, scope: !1774, inlinedAt: !1903)
!1999 = !DILocation(line: 367, column: 11, scope: !1774, inlinedAt: !1903)
!2000 = !DILocation(line: 367, column: 6, scope: !1630, inlinedAt: !1903)
!2001 = !DILocation(line: 367, column: 26, scope: !1774, inlinedAt: !1903)
!2002 = !DILocation(line: 368, column: 6, scope: !1779, inlinedAt: !1903)
!2003 = !DILocation(line: 368, column: 11, scope: !1779, inlinedAt: !1903)
!2004 = !DILocation(line: 368, column: 6, scope: !1630, inlinedAt: !1903)
!2005 = !DILocation(line: 368, column: 26, scope: !1779, inlinedAt: !1903)
!2006 = !DILocation(line: 369, column: 6, scope: !1784, inlinedAt: !1903)
!2007 = !DILocation(line: 369, column: 11, scope: !1784, inlinedAt: !1903)
!2008 = !DILocation(line: 369, column: 6, scope: !1630, inlinedAt: !1903)
!2009 = !DILocation(line: 369, column: 26, scope: !1784, inlinedAt: !1903)
!2010 = !DILocation(line: 370, column: 6, scope: !1789, inlinedAt: !1903)
!2011 = !DILocation(line: 370, column: 11, scope: !1789, inlinedAt: !1903)
!2012 = !DILocation(line: 370, column: 6, scope: !1630, inlinedAt: !1903)
!2013 = !DILocation(line: 370, column: 26, scope: !1789, inlinedAt: !1903)
!2014 = !DILocation(line: 371, column: 6, scope: !1794, inlinedAt: !1903)
!2015 = !DILocation(line: 371, column: 11, scope: !1794, inlinedAt: !1903)
!2016 = !DILocation(line: 371, column: 6, scope: !1630, inlinedAt: !1903)
!2017 = !DILocation(line: 371, column: 26, scope: !1794, inlinedAt: !1903)
!2018 = !DILocation(line: 372, column: 6, scope: !1799, inlinedAt: !1903)
!2019 = !DILocation(line: 372, column: 11, scope: !1799, inlinedAt: !1903)
!2020 = !DILocation(line: 372, column: 6, scope: !1630, inlinedAt: !1903)
!2021 = !DILocation(line: 372, column: 26, scope: !1799, inlinedAt: !1903)
!2022 = !DILocation(line: 373, column: 6, scope: !1804, inlinedAt: !1903)
!2023 = !DILocation(line: 373, column: 11, scope: !1804, inlinedAt: !1903)
!2024 = !DILocation(line: 373, column: 6, scope: !1630, inlinedAt: !1903)
!2025 = !DILocation(line: 373, column: 26, scope: !1804, inlinedAt: !1903)
!2026 = !DILocation(line: 374, column: 6, scope: !1809, inlinedAt: !1903)
!2027 = !DILocation(line: 374, column: 11, scope: !1809, inlinedAt: !1903)
!2028 = !DILocation(line: 374, column: 6, scope: !1630, inlinedAt: !1903)
!2029 = !DILocation(line: 374, column: 26, scope: !1809, inlinedAt: !1903)
!2030 = !DILocation(line: 375, column: 6, scope: !1814, inlinedAt: !1903)
!2031 = !DILocation(line: 375, column: 11, scope: !1814, inlinedAt: !1903)
!2032 = !DILocation(line: 375, column: 6, scope: !1630, inlinedAt: !1903)
!2033 = !DILocation(line: 375, column: 27, scope: !1814, inlinedAt: !1903)
!2034 = !DILocation(line: 376, column: 6, scope: !1819, inlinedAt: !1903)
!2035 = !DILocation(line: 376, column: 11, scope: !1819, inlinedAt: !1903)
!2036 = !DILocation(line: 376, column: 6, scope: !1630, inlinedAt: !1903)
!2037 = !DILocation(line: 376, column: 32, scope: !1819, inlinedAt: !1903)
!2038 = !DILocation(line: 377, column: 6, scope: !1824, inlinedAt: !1903)
!2039 = !DILocation(line: 377, column: 11, scope: !1824, inlinedAt: !1903)
!2040 = !DILocation(line: 377, column: 6, scope: !1630, inlinedAt: !1903)
!2041 = !DILocation(line: 377, column: 32, scope: !1824, inlinedAt: !1903)
!2042 = !DILocation(line: 378, column: 6, scope: !1829, inlinedAt: !1903)
!2043 = !DILocation(line: 378, column: 11, scope: !1829, inlinedAt: !1903)
!2044 = !DILocation(line: 378, column: 6, scope: !1630, inlinedAt: !1903)
!2045 = !DILocation(line: 378, column: 32, scope: !1829, inlinedAt: !1903)
!2046 = !DILocation(line: 379, column: 6, scope: !1834, inlinedAt: !1903)
!2047 = !DILocation(line: 379, column: 11, scope: !1834, inlinedAt: !1903)
!2048 = !DILocation(line: 379, column: 6, scope: !1630, inlinedAt: !1903)
!2049 = !DILocation(line: 379, column: 33, scope: !1834, inlinedAt: !1903)
!2050 = !DILocation(line: 380, column: 6, scope: !1839, inlinedAt: !1903)
!2051 = !DILocation(line: 380, column: 11, scope: !1839, inlinedAt: !1903)
!2052 = !DILocation(line: 380, column: 6, scope: !1630, inlinedAt: !1903)
!2053 = !DILocation(line: 380, column: 33, scope: !1839, inlinedAt: !1903)
!2054 = !DILocation(line: 381, column: 6, scope: !1844, inlinedAt: !1903)
!2055 = !DILocation(line: 381, column: 11, scope: !1844, inlinedAt: !1903)
!2056 = !DILocation(line: 381, column: 6, scope: !1630, inlinedAt: !1903)
!2057 = !DILocation(line: 381, column: 33, scope: !1844, inlinedAt: !1903)
!2058 = !DILocation(line: 382, column: 2, scope: !1849, inlinedAt: !1903)
!2059 = !DILocation(line: 382, column: 2, scope: !1853, inlinedAt: !1903)
!2060 = !DILocation(line: 382, column: 2, scope: !1854, inlinedAt: !1903)
!2061 = !DILocation(line: 386, column: 1, scope: !1630, inlinedAt: !1903)
!2062 = !DILocation(line: 547, column: 9, scope: !1611, inlinedAt: !1896)
!2063 = !DILocation(line: 549, column: 8, scope: !1860, inlinedAt: !1896)
!2064 = !DILocation(line: 549, column: 7, scope: !1611, inlinedAt: !1896)
!2065 = !DILocation(line: 550, column: 4, scope: !1860, inlinedAt: !1896)
!2066 = !DILocation(line: 553, column: 33, scope: !1611, inlinedAt: !1896)
!2067 = !DILocation(line: 325, column: 6, scope: !1865, inlinedAt: !1901)
!2068 = !DILocation(line: 325, column: 6, scope: !1624, inlinedAt: !1901)
!2069 = !DILocation(line: 326, column: 3, scope: !1865, inlinedAt: !1901)
!2070 = !DILocation(line: 332, column: 9, scope: !1624, inlinedAt: !1901)
!2071 = !DILocation(line: 332, column: 15, scope: !1624, inlinedAt: !1901)
!2072 = !DILocation(line: 332, column: 2, scope: !1624, inlinedAt: !1901)
!2073 = !DILocation(line: 336, column: 1, scope: !1624, inlinedAt: !1901)
!2074 = !DILocation(line: 553, column: 5, scope: !1611, inlinedAt: !1896)
!2075 = !DILocation(line: 553, column: 41, scope: !1611, inlinedAt: !1896)
!2076 = !DILocation(line: 554, column: 5, scope: !1611, inlinedAt: !1896)
!2077 = !DILocation(line: 554, column: 12, scope: !1611, inlinedAt: !1896)
!2078 = !DILocation(line: 448, column: 31, scope: !1599, inlinedAt: !1895)
!2079 = !DILocation(line: 448, column: 34, scope: !1599, inlinedAt: !1895)
!2080 = !DILocation(line: 448, column: 14, scope: !1599, inlinedAt: !1895)
!2081 = !DILocation(line: 450, column: 22, scope: !1599, inlinedAt: !1895)
!2082 = !DILocation(line: 450, column: 25, scope: !1599, inlinedAt: !1895)
!2083 = !DILocation(line: 450, column: 30, scope: !1599, inlinedAt: !1895)
!2084 = !DILocation(line: 450, column: 36, scope: !1599, inlinedAt: !1895)
!2085 = !DILocation(line: 450, column: 8, scope: !1599, inlinedAt: !1895)
!2086 = !DILocation(line: 450, column: 6, scope: !1599, inlinedAt: !1895)
!2087 = !DILocation(line: 451, column: 9, scope: !1599, inlinedAt: !1895)
!2088 = !DILocation(line: 552, column: 3, scope: !1611, inlinedAt: !1896)
!2089 = !DILocation(line: 557, column: 19, scope: !1613, inlinedAt: !1896)
!2090 = !DILocation(line: 557, column: 25, scope: !1613, inlinedAt: !1896)
!2091 = !DILocation(line: 557, column: 9, scope: !1613, inlinedAt: !1896)
!2092 = !DILocation(line: 557, column: 2, scope: !1613, inlinedAt: !1896)
!2093 = !DILocation(line: 558, column: 1, scope: !1613, inlinedAt: !1896)
!2094 = !DILocation(line: 664, column: 2, scope: !1893)
!2095 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2096, file: !2096, line: 646, type: !2097, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !83)
!2096 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!67}
!2099 = !DILocalVariable(name: "__ret", scope: !2100, file: !2096, line: 648, type: !67)
!2100 = distinct !DILexicalBlock(scope: !2095, file: !2096, line: 648, column: 9)
!2101 = !DILocation(line: 648, column: 9, scope: !2100)
!2102 = !DILocalVariable(name: "__edi", scope: !2100, file: !2096, line: 648, type: !67)
!2103 = !DILocalVariable(name: "__esi", scope: !2100, file: !2096, line: 648, type: !67)
!2104 = !DILocalVariable(name: "__edx", scope: !2100, file: !2096, line: 648, type: !67)
!2105 = !DILocalVariable(name: "__ecx", scope: !2100, file: !2096, line: 648, type: !67)
!2106 = !DILocalVariable(name: "__eax", scope: !2100, file: !2096, line: 648, type: !67)
!2107 = !DILocation(line: 648, column: 9, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !2096, line: 648, column: 9)
!2109 = distinct !DILexicalBlock(scope: !2100, file: !2096, line: 648, column: 9)
!2110 = !{i32 -2145777306, i32 -2145774991, i32 -2145774757, i32 -2145774706, i32 -2145774678, i32 -2145774653, i32 -2145774969, i32 -2145774956, i32 -2145774518, i32 -2145774399, i32 -2145774864, i32 -2145774837, i32 -2145774809, i32 -2145774779}
!2111 = !DILocalVariable(name: "__mask", scope: !2112, file: !2096, line: 648, type: !67)
!2112 = distinct !DILexicalBlock(scope: !2108, file: !2096, line: 648, column: 9)
!2113 = !DILocation(line: 648, column: 9, scope: !2112)
!2114 = !DILocation(line: 648, column: 9, scope: !2109)
!2115 = !DILocation(line: 648, column: 2, scope: !2095)
!2116 = distinct !DISubprogram(name: "get_order", scope: !2117, file: !2117, line: 29, type: !1359, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !83)
!2117 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2118 = !DILocalVariable(name: "x", arg: 1, scope: !2119, file: !2120, line: 366, type: !34)
!2119 = distinct !DISubprogram(name: "fls64", scope: !2120, file: !2120, line: 366, type: !2121, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !83)
!2120 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!1361, !34}
!2123 = !DILocation(line: 366, column: 40, scope: !2119, inlinedAt: !2124)
!2124 = distinct !DILocation(line: 46, column: 9, scope: !2116)
!2125 = !DILocalVariable(name: "bitpos", scope: !2119, file: !2120, line: 368, type: !1361)
!2126 = !DILocation(line: 368, column: 6, scope: !2119, inlinedAt: !2124)
!2127 = !DILocalVariable(name: "size", arg: 1, scope: !2116, file: !2117, line: 29, type: !67)
!2128 = !DILocation(line: 29, column: 63, scope: !2116)
!2129 = !DILocation(line: 31, column: 27, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2116, file: !2117, line: 31, column: 6)
!2131 = !DILocation(line: 31, column: 6, scope: !2130)
!2132 = !DILocation(line: 31, column: 6, scope: !2116)
!2133 = !DILocation(line: 32, column: 8, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !2117, line: 32, column: 7)
!2135 = distinct !DILexicalBlock(scope: !2130, file: !2117, line: 31, column: 34)
!2136 = !DILocation(line: 32, column: 7, scope: !2135)
!2137 = !DILocation(line: 33, column: 4, scope: !2134)
!2138 = !DILocation(line: 35, column: 7, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2135, file: !2117, line: 35, column: 7)
!2140 = !DILocation(line: 35, column: 12, scope: !2139)
!2141 = !DILocation(line: 35, column: 7, scope: !2135)
!2142 = !DILocation(line: 36, column: 4, scope: !2139)
!2143 = !DILocation(line: 38, column: 10, scope: !2135)
!2144 = !DILocation(line: 38, column: 28, scope: !2135)
!2145 = !DILocation(line: 38, column: 41, scope: !2135)
!2146 = !DILocation(line: 38, column: 3, scope: !2135)
!2147 = !DILocation(line: 41, column: 6, scope: !2116)
!2148 = !DILocation(line: 42, column: 7, scope: !2116)
!2149 = !DILocation(line: 46, column: 15, scope: !2116)
!2150 = !DILocation(line: 374, column: 2, scope: !2119, inlinedAt: !2124)
!2151 = !DILocation(line: 376, column: 14, scope: !2119, inlinedAt: !2124)
!2152 = !{i32 667502}
!2153 = !DILocation(line: 377, column: 9, scope: !2119, inlinedAt: !2124)
!2154 = !DILocation(line: 377, column: 16, scope: !2119, inlinedAt: !2124)
!2155 = !DILocation(line: 46, column: 2, scope: !2116)
!2156 = !DILocation(line: 48, column: 1, scope: !2116)
!2157 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2158, file: !2158, line: 30, type: !2159, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !83)
!2158 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!1361, !33}
!2161 = !DILocation(line: 366, column: 40, scope: !2119, inlinedAt: !2162)
!2162 = distinct !DILocation(line: 32, column: 9, scope: !2157)
!2163 = !DILocation(line: 368, column: 6, scope: !2119, inlinedAt: !2162)
!2164 = !DILocalVariable(name: "n", arg: 1, scope: !2157, file: !2158, line: 30, type: !33)
!2165 = !DILocation(line: 30, column: 21, scope: !2157)
!2166 = !DILocation(line: 32, column: 15, scope: !2157)
!2167 = !DILocation(line: 374, column: 2, scope: !2119, inlinedAt: !2162)
!2168 = !DILocation(line: 376, column: 14, scope: !2119, inlinedAt: !2162)
!2169 = !DILocation(line: 377, column: 9, scope: !2119, inlinedAt: !2162)
!2170 = !DILocation(line: 377, column: 16, scope: !2119, inlinedAt: !2162)
!2171 = !DILocation(line: 32, column: 18, scope: !2157)
!2172 = !DILocation(line: 32, column: 2, scope: !2157)
!2173 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2174, file: !2174, line: 137, type: !2175, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !83)
!2174 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!31, !1602, !2177, !1605, !65}
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2179 = !DILocalVariable(name: "s", arg: 1, scope: !2173, file: !2174, line: 137, type: !1602)
!2180 = !DILocation(line: 137, column: 54, scope: !2173)
!2181 = !DILocalVariable(name: "object", arg: 2, scope: !2173, file: !2174, line: 137, type: !2177)
!2182 = !DILocation(line: 137, column: 69, scope: !2173)
!2183 = !DILocalVariable(name: "size", arg: 3, scope: !2173, file: !2174, line: 138, type: !1605)
!2184 = !DILocation(line: 138, column: 12, scope: !2173)
!2185 = !DILocalVariable(name: "flags", arg: 4, scope: !2173, file: !2174, line: 138, type: !65)
!2186 = !DILocation(line: 138, column: 24, scope: !2173)
!2187 = !DILocation(line: 140, column: 17, scope: !2173)
!2188 = !DILocation(line: 140, column: 2, scope: !2173)
